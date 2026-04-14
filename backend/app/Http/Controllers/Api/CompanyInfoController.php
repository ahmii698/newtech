<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\CompanyInfo;
use Illuminate\Http\Request;

class CompanyInfoController extends Controller
{
    // GET /api/company-info - Company info lao
    public function index()
    {
        $info = CompanyInfo::first();
        
        return response()->json([
            'success' => true,
            'data' => $info
        ]);
    }
    
    // GET /api/company-info/{id} - Specific company info
    public function show($id)
    {
        $info = CompanyInfo::find($id);
        
        if(!$info) {
            return response()->json([
                'success' => false,
                'message' => 'Company info not found'
            ], 404);
        }
        
        return response()->json([
            'success' => true,
            'data' => $info
        ]);
    }

    // POST /api/company-info - Naya company info create karo
    public function store(Request $request)
    {
        try {
            $info = CompanyInfo::create($request->all());
            
            return response()->json([
                'success' => true,
                'message' => 'Company info created successfully',
                'data' => $info
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'error' => $e->getMessage()
            ], 500);
        }
    }

    // PUT /api/company-info/{id} - Company info update karo
    public function update(Request $request, $id)
    {
        try {
            $info = CompanyInfo::find($id);
            
            if(!$info) {
                return response()->json([
                    'success' => false,
                    'message' => 'Company info not found'
                ], 404);
            }
            
            $info->update($request->all());
            
            return response()->json([
                'success' => true,
                'message' => 'Company info updated successfully',
                'data' => $info
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'error' => $e->getMessage()
            ], 500);
        }
    }

    // DELETE /api/company-info/{id} - Company info delete karo
    public function destroy($id)
    {
        try {
            $info = CompanyInfo::find($id);
            
            if(!$info) {
                return response()->json([
                    'success' => false,
                    'message' => 'Company info not found'
                ], 404);
            }
            
            $info->delete();
            
            return response()->json([
                'success' => true,
                'message' => 'Company info deleted successfully'
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'error' => $e->getMessage()
            ], 500);
        }
    }
}