<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\FaqImage;
use Illuminate\Http\Request;

class FaqImageController extends Controller
{
    // GET /api/faq-image - Active FAQ image lao
    public function index()
    {
        $image = FaqImage::active()->first();
        
        if (!$image) {
            return response()->json([
                'success' => true,
                'data' => [
                    'id' => 1,
                    'image_url' => 'https://images.pexels.com/photos/3183150/pexels-photo-3183150.jpeg?w=600&h=500&fit=crop',
                    'alt_text' => 'FAQ Illustration',
                    'is_active' => 1
                ]
            ]);
        }
        
        return response()->json([
            'success' => true,
            'data' => $image
        ]);
    }
    
    // GET /api/faq-image/{id}
    public function show($id)
    {
        $image = FaqImage::find($id);
        
        if(!$image) {
            return response()->json([
                'success' => false,
                'message' => 'Image not found'
            ], 404);
        }
        
        return response()->json([
            'success' => true,
            'data' => $image
        ]);
    }
    
    // POST /api/faq-image
    public function store(Request $request)
    {
        try {
            $image = FaqImage::create([
                'image_url' => $request->image_url,
                'alt_text' => $request->alt_text,
                'is_active' => $request->is_active ?? 1
            ]);
            
            return response()->json([
                'success' => true,
                'message' => 'Image added successfully',
                'data' => $image
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'error' => $e->getMessage()
            ], 500);
        }
    }
    
    // PUT /api/faq-image/{id}
    public function update(Request $request, $id)
    {
        try {
            $image = FaqImage::find($id);
            
            if(!$image) {
                return response()->json([
                    'success' => false,
                    'message' => 'Image not found'
                ], 404);
            }
            
            // Only update columns that exist in the table
            if ($request->has('image_url')) {
                $image->image_url = $request->image_url;
            }
            if ($request->has('alt_text')) {
                $image->alt_text = $request->alt_text;
            }
            if ($request->has('is_active')) {
                $image->is_active = $request->is_active;
            }
            $image->save();
            
            return response()->json([
                'success' => true,
                'message' => 'Image updated successfully',
                'data' => $image
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'error' => $e->getMessage()
            ], 500);
        }
    }
    
    // DELETE /api/faq-image/{id}
    public function destroy($id)
    {
        try {
            $image = FaqImage::find($id);
            
            if(!$image) {
                return response()->json([
                    'success' => false,
                    'message' => 'Image not found'
                ], 404);
            }
            
            $image->delete();
            
            return response()->json([
                'success' => true,
                'message' => 'Image deleted successfully'
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'error' => $e->getMessage()
            ], 500);
        }
    }
}