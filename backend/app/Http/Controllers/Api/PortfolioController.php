<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Portfolio;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PortfolioController extends Controller
{
    // GET /api/portfolio - Saare portfolio items lao
    public function index(Request $request)
    {
        try {
            $query = Portfolio::with('technologies')->where('is_active', true);
            
            // Filter by category
            if ($request->has('category') && $request->category != 'all') {
                $query->where('category', $request->category);
            }
            
            // Filter by featured
            if ($request->has('featured')) {
                $query->where('is_featured', $request->featured);
            }
            
            $portfolio = $query->orderBy('order_number')->get();
            
            return response()->json([
                'success' => true,
                'data' => $portfolio
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'error' => $e->getMessage()
            ], 500);
        }
    }
    
    // GET /api/portfolio/{id} - Ek specific portfolio item
    public function show($id)
    {
        try {
            $portfolio = Portfolio::with('technologies')->find($id);
            
            if (!$portfolio) {
                return response()->json([
                    'success' => false,
                    'message' => 'Portfolio item not found'
                ], 404);
            }
            
            return response()->json([
                'success' => true,
                'data' => $portfolio
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'error' => $e->getMessage()
            ], 500);
        }
    }

    // POST /api/portfolio - Naya portfolio item create karo
    public function store(Request $request)
    {
        try {
            // Remove unwanted fields
            $data = $request->all();
            unset($data['id']);
            unset($data['created_at']);
            unset($data['updated_at']);
            unset($data['technologies']);
            
            $portfolio = Portfolio::create($data);
            
            // Handle technologies relationship if needed
            if ($request->has('technologies') && is_array($request->technologies)) {
                $portfolio->technologies()->sync($request->technologies);
            }
            
            return response()->json([
                'success' => true,
                'message' => 'Portfolio item created successfully',
                'data' => $portfolio->load('technologies')
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'error' => $e->getMessage()
            ], 500);
        }
    }

    // PUT /api/portfolio/{id} - Portfolio item update karo
    public function update(Request $request, $id)
    {
        try {
            $portfolio = Portfolio::find($id);
            
            if(!$portfolio) {
                return response()->json([
                    'success' => false,
                    'message' => 'Portfolio item not found'
                ], 404);
            }
            
            // Remove unwanted fields
            $data = $request->all();
            unset($data['id']);
            unset($data['created_at']);
            unset($data['updated_at']);
            unset($data['technologies']);
            
            $portfolio->update($data);
            
            // Update technologies relationship if needed
            if ($request->has('technologies') && is_array($request->technologies)) {
                $portfolio->technologies()->sync($request->technologies);
            }
            
            return response()->json([
                'success' => true,
                'message' => 'Portfolio item updated successfully',
                'data' => $portfolio->load('technologies')
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'error' => $e->getMessage()
            ], 500);
        }
    }

    // DELETE /api/portfolio/{id} - Portfolio item delete karo
    public function destroy($id)
    {
        try {
            $portfolio = Portfolio::find($id);
            
            if(!$portfolio) {
                return response()->json([
                    'success' => false,
                    'message' => 'Portfolio item not found'
                ], 404);
            }
            
            // Detach technologies first
            $portfolio->technologies()->detach();
            
            // Delete the portfolio
            $portfolio->delete();
            
            return response()->json([
                'success' => true,
                'message' => 'Portfolio item deleted successfully'
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'error' => $e->getMessage()
            ], 500);
        }
    }
    
    // Image upload function specifically for portfolio
    public function uploadImage(Request $request)
    {
        try {
            if ($request->hasFile('image')) {
                $file = $request->file('image');
                $filename = time() . '_' . preg_replace('/[^a-zA-Z0-9._-]/', '', $file->getClientOriginalName());
                $path = $file->storeAs('uploads/portfolio', $filename, 'public');
                
                return response()->json([
                    'success' => true,
                    'url' => '/storage/' . $path
                ]);
            }
            
            return response()->json([
                'success' => false,
                'error' => 'No image file'
            ], 400);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'error' => $e->getMessage()
            ], 500);
        }
    }
}