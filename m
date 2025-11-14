Return-Path: <devicetree+bounces-238413-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B715C5ADEB
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 02:04:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 351FD4E7520
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 01:02:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B7B1239E97;
	Fri, 14 Nov 2025 01:02:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="UWiiHpS3"
X-Original-To: devicetree@vger.kernel.org
Received: from CH5PR02CU005.outbound.protection.outlook.com (mail-northcentralusazon11012030.outbound.protection.outlook.com [40.107.200.30])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A965D2116F4;
	Fri, 14 Nov 2025 01:02:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.200.30
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763082140; cv=fail; b=R2IM8O25QrIaQOCu/+Yo4iGstmdCBYZ/jafADMfRt4eMrSospXnn1fi9PtirrdFfz9HPAbJDuq/IGJaX7h8CI39nYoFZ/ykTrjTkRv+fTTGHZr2zgtwOLA2WLidLIa3W4SODyn5VDRZ6I/KhXmszfvtmxlq/ZuRhWi234iblJ1s=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763082140; c=relaxed/simple;
	bh=kWNx7a+0ESu4LRytP7XiIH36fy8TN2gwGrgOmq710S4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 Content-Type:MIME-Version; b=qH9Gbk7YiEtp9zisXsXIMxFg3JbibyTVbcGcXjFYACwu8ux7LmQbHfS5yLqEHlyC/7ny1msEirCzjgwILkKgsuY7N/LKl7QJyADOr8rFsSea9SbwaagobAmpoOxWpR3D5fUsk9Rj160VUfZAjeu6fJN7jwvFW5XPz9Cg88Ky9ts=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=UWiiHpS3; arc=fail smtp.client-ip=40.107.200.30
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Z/4omc+9VMRvqrI7BUPFRY4Spu+qgsu5IcSngYYWil9Wi2pZIN+emU0B/4UHe4WhoyGTAXOuBjS9+A8QZFKO2gcHEMhLlxl6lOcdF9rDJM3LA8txCNimIQ5Ee5F0ac8novmETB8k4akOiWno3YfRpl38vDMeyKfLsqr1iymM1EVBjiQ8s3O2sDxKYIf0ocoDIAPD7Y8Sr/m2+WsxckwNvviqgksJ8BHr1BKo34zipcsQUe3i/adjNaSvyK8jbRI1YCvrtqEjaJaq1tIHYSEdr4G956A7gbTkGNWh6dTnfR/Ty9bfJEPRbu6tfO2iMHGR2xQCsP+JQ2nHKZ0TzWDQ2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8JUSKU8utoHF+oKDNUFyLE0rmcjEwQnRAwBajvWfLxw=;
 b=pnYfX/LvzTbSQyKXN9sceXsO9pnmi+TGYzeolJzR4AwR99oTixj/uOz0qg4S27U4f8ck7Kq92qRF5T6L3ZCGeLmbHMhA1RATHpAK0eHnOqOL45Qu744fBWbPTzNlhQUHg+upkGmq6rDeFgfRbj/D2oelQEdxVKDg9AHMyFu0GDnTsR2eCx0BFIoN+m+23nBOE2HzX788EhBkO/llTb2PjNzT+0ArUvNvg6YrCJ9Lc13UwPxVlhPbpx7HLBgVLFQGYZoiG4EruJAG4jNRVW+2/CXZPIL8UU2VxBXvaSn2isgW4DXJbGnt+XEC/uzyNOD6X5WQmnGaR1lfU/VgX9O9kA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8JUSKU8utoHF+oKDNUFyLE0rmcjEwQnRAwBajvWfLxw=;
 b=UWiiHpS39MMWqo8RepYqrYQiY2gzCWzJ0pnk2LvB6rli7kAyDPsYRW9M2tIj80XlgHpK1c9I7OkN5XhGBqRTKqz6zg6JQfDDj1gA3WYPy6rNdxU8BTwypBqQwcmi/kL/r+zbv3ysplHvSxDU8pM97gN8GQ35KeJ3l73NSRemtsHWb/QXoPvXhBJT08qjekWoYnji55I7xusk5ODT42S1dswnlr3rEo2VKf1g0eII7JYYAzEO0SctE35pjaD9bL57PXeSU6UQ6UnL/RTNrszoLs7e4rlWVi4hTc/49/EKOBJYv/WOgl6ojUQFtgVYmxh5fjWjL+5dSf6Aj3bAdleTRQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
Received: from BL1PR03MB6037.namprd03.prod.outlook.com (2603:10b6:208:309::10)
 by CH0PR03MB6033.namprd03.prod.outlook.com (2603:10b6:610:bc::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.17; Fri, 14 Nov
 2025 01:02:15 +0000
Received: from BL1PR03MB6037.namprd03.prod.outlook.com
 ([fe80::9413:f1a2:1d92:93f1]) by BL1PR03MB6037.namprd03.prod.outlook.com
 ([fe80::9413:f1a2:1d92:93f1%3]) with mapi id 15.20.9320.013; Fri, 14 Nov 2025
 01:02:15 +0000
From: niravkumarlaxmidas.rabara@altera.com
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Niravkumar L Rabara <niravkumarlaxmidas.rabara@altera.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 1/2] dt-bindings: intel: Add Agilex3 SoCFPGA board
Date: Fri, 14 Nov 2025 08:59:52 +0800
Message-Id: <20251114005953.1333288-2-niravkumarlaxmidas.rabara@altera.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251114005953.1333288-1-niravkumarlaxmidas.rabara@altera.com>
References: <20251114005953.1333288-1-niravkumarlaxmidas.rabara@altera.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BYAPR11CA0038.namprd11.prod.outlook.com
 (2603:10b6:a03:80::15) To BL1PR03MB6037.namprd03.prod.outlook.com
 (2603:10b6:208:309::10)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL1PR03MB6037:EE_|CH0PR03MB6033:EE_
X-MS-Office365-Filtering-Correlation-Id: 357539a7-46ea-425a-355d-08de2319736a
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?1NjNL+pU7SbT6x8bdR3f2ykIoMavy1C82tgL2LeMbvZPd9d6aT6rgMgXGONV?=
 =?us-ascii?Q?5ZuFx/74iLrEy8ceglROHOrp7IEmyU2U4UfGlkr45+N+dS+n2c7MfcUtwpSx?=
 =?us-ascii?Q?PowICqvXXUPaWkWzvVFZlLWuKOVKShifXsncvjADYNGh9LbVR6tSxgpZQ9Ii?=
 =?us-ascii?Q?oZ+0joZ+wXLEdHrzskZXWNQdTyjkjT9nIaNJyRxFhnVpueYQ5bh6bs7L4phW?=
 =?us-ascii?Q?e7Eiry8y0YIsg6uFqk3lWqdaHsIaq2kwFcn4c3W9c2XaSIaUDhbr+FzznDYV?=
 =?us-ascii?Q?WDwkLw5Gzg2oOAhOTA9LTuhhli/My6h1akv0vh/6PrdUDZhEotM8Lcs6Jblb?=
 =?us-ascii?Q?kiFIrFFAQYxfLiuruhHQm1q6we2WMMNIblnCrzEPLKc8aQ8rtooa9B5dYBzn?=
 =?us-ascii?Q?J5yegmaB7XafXAcP2D23yBBamySup9dCR4m/pCFRc13jHF15jMLEoCscKt9+?=
 =?us-ascii?Q?KZRGAtzgHmvtVODhpu3esUKEEBTtDcPU5ELutFTZJ13t/BQOlfKyx1oiYCDY?=
 =?us-ascii?Q?TKYuz18f0G699C+lu12ehEPYSBJm2nnU1mHkQvRUAe4VoINBX/3x2Yj8aLJq?=
 =?us-ascii?Q?uyCJ+Y0IikQ165B7JijJVPntM8OqX2A9ygLp1cmuR407EgpZAYE1W/pKjeui?=
 =?us-ascii?Q?by1MlvDRV0CSZIFlGLO8V5TZsboyBPuWrFa9g2rvm/5+m5QRq3YHwj+hcX6l?=
 =?us-ascii?Q?wXRkdJQHqZ8yGW5VRVSkjgo3V4WM+vHAD+BLuDPvKrQ4VlzUDyX5iz5/rF/k?=
 =?us-ascii?Q?deaAW4+oKuKFmWKBd1hsCpqdQKHWAF+kPrdpPU5bDdSJTTNmJKbgcoe/QTl4?=
 =?us-ascii?Q?LC4Nx53f91Vsl7bP+egZW8OiafDMqgA/4UAkWGB6vGI80i14tkevzjUu0hOf?=
 =?us-ascii?Q?3sDvwQvfqIvbZ427bA9EOp7g24sb/RbpOTzm2ScN99Vve/26n7+jIN7RavWu?=
 =?us-ascii?Q?l2M0SR6EomPAtoD1jjKVW/H59rwUF2busP5v5/Bp7g0tR62X82yfI9coeury?=
 =?us-ascii?Q?+WLp2ufX+zRrlRy9CP5RgdtAqccZqPjGMAGm5AEpeCIMg/GdIapVvZOT/dgS?=
 =?us-ascii?Q?4ViY0rdbRAGLd6aiJAzvPph4bcDc4739ts2+5/JwUcdr/1eE4Mvcmr4aMHUI?=
 =?us-ascii?Q?Txxp2wTL+YLXIEDa5shrU473xsFsd410a/gIfa3TRhjTZepUWKocV+1ieiI2?=
 =?us-ascii?Q?LFGiXXPzbOQT8QGWS85NGxLkyOO4Ob/Udm5uqu/D+raWwSef8Cfjqihl83/7?=
 =?us-ascii?Q?inkoJR5gS8lCvlVl6yWuceC2LAzxlTJhJUwcyF7SY20KAK/Q8QZs1C4vV7Hj?=
 =?us-ascii?Q?nc4bVnTLFE5PTjxViOvcgX6uzr/xzwZT4AxhUKQPlzdje2CC0o//2BSBX82f?=
 =?us-ascii?Q?UFMCLtE7hwQJqYLw2z5h22vLExIhBRfLiBOPdCNYRhPuWooz4RZ3Cz/Nvekh?=
 =?us-ascii?Q?xaaA85j6aE1WXiXtf/qzi6gp6hbOiP44/7yYCyeBMJsUhjllIyW5nQ=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL1PR03MB6037.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?UdkWKGC++fbKAgyCqPnqVn1w8UVjbbwH2Hq9Dxsi1cAChZqqggE4iBSLQT+2?=
 =?us-ascii?Q?l5opoZQ3JLySTT8apOqlFjpvzUP05gMAHi5p7PMz6W7uRnnadLAuczDti86o?=
 =?us-ascii?Q?M2QUtKzjxyF2m4dapOJHdOgi/YFZG57Lfzvht++Jp0PrKmNbcnkDvkRHqpPK?=
 =?us-ascii?Q?oAp1rhLGGk+W0LmFL55+OaL0nwzelstnSdKs0M2TuUzdk8x6VhXYG3wHDbf+?=
 =?us-ascii?Q?jgKciYZUoWNuxLwbRdllLwoASob3G0J5DjYq34YtypJc4akfk9eqw4PcJTxL?=
 =?us-ascii?Q?3KuTISWr5UTA1ZBO9zs0BiAwiX1hb9srEVZioOBkctC6Ta+Gb2q2j86Y/IBu?=
 =?us-ascii?Q?j/jB6BkaqhnbDH7GmpENw4kJ3qZ3Oqt1pGNaXYOG+YNrvyVJRlBamVhfJn14?=
 =?us-ascii?Q?mQpfKuOclFgnXfqFcSe7h8orgl90q9wQI3tvf2bfRb8gNJQ5hz1KZvNr3BFD?=
 =?us-ascii?Q?ECdxsOfcQY6dCI8lZ8WNDCzonnuRJRHYsTdIG/jM6Xe69cFFeoIOiGgeRx34?=
 =?us-ascii?Q?GkhCX6EfbL3MUzneln6+Jd38fa7bdLdG52zuvMY+LGYvJH79LV/M7aWB4IYH?=
 =?us-ascii?Q?iR/QUXjhNia9Gk3rcR9ny0k+q+hIWvDgWL7yJHZVfcOhEbVxNnDXMUNMetm9?=
 =?us-ascii?Q?S2E7uNA3TgdBk+JTQBPR8ef3AdtvDsuHydHTBTeFrziARuEeKRHLCU878qsv?=
 =?us-ascii?Q?zwFTyqy2LYz1OK4K6LsJKOsQ9/EiFRkJ4ZNDLXooQLVpKPXThZNp5znZNsaT?=
 =?us-ascii?Q?uKmX/m1j2hYa6wjEegiY5ksdaRcbS0dr/HWdWWc7M1wmegTSDnANgCrDWXL7?=
 =?us-ascii?Q?jQIdHOyu2LplHFb6klZKRZk1ksKGuYpkUMrKBUVJH/GBfgFraysy8KZDw/Pg?=
 =?us-ascii?Q?xxU3ASuik0+1YPlcnFlDE5Qs6djkAzp2b5k23JOkLpJ42PYjLolDiqFQWU9k?=
 =?us-ascii?Q?k4YktgTf9wqhlFNpTNw/rmxvQp7kmkTrISIjhbKKdbV38/dxmxdMJ9sFN9Sy?=
 =?us-ascii?Q?l80QU0UCZaYqocpdhZXtq7JtY0ne3sWzkDOyv5/2DJ2O7QZqWJy96nhdeauM?=
 =?us-ascii?Q?Lp8Y4+BaYniR37Sg72PC/IebReMG5+I1rvRvmJm/w3HHAvifnGDedjCyhzrj?=
 =?us-ascii?Q?Uxl9pCQH67PGqTkxyHyIYgSwe30D6qRvhNi6i2qsOPXOSNhLY+mdKWNwaDmm?=
 =?us-ascii?Q?JS6SENcY69iJ2fBAoODwfta297V2ZOIKzEVmxhQMqe6CdDe7y4V3PhKDFVNF?=
 =?us-ascii?Q?JhEo/nZO5axq1+KeOERjTpwnp0lra6b7lQWih/Z7c37bZswWDLB9BBBM9zYT?=
 =?us-ascii?Q?vbLLnFV9xk7Apb7eHBb0GcUlH//kN7LFPb3FHNprTk5dc7WoVuUbDH80xQtH?=
 =?us-ascii?Q?pq2fbYzzzh4nl+XJOB6Y7mtTCroIp6CKz8Om80vcBJ0QMcpsk/ibuRr9Xbpo?=
 =?us-ascii?Q?mlKjkqESDqHIBXZZ3d40IP33Ut11518EKtbgDF+bLbWjxSbHHWCm+8OESPvs?=
 =?us-ascii?Q?C2IbSunzijMiwMA/rxNOaGS/SeYnwHKHLd3Y+zz9WXd56opIc4pzsHQR9Gl4?=
 =?us-ascii?Q?N+/GJAXSsJe3vLJZo56/hA421pqiKpS/+fIaeY4X8Kq9+nGvE2g11pLKIGjU?=
 =?us-ascii?Q?crgHTCqLTEcACbc+XxZ6ArVIQ5bknL1YhS4+jQGpEJqI?=
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 357539a7-46ea-425a-355d-08de2319736a
X-MS-Exchange-CrossTenant-AuthSource: BL1PR03MB6037.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2025 01:02:15.3650
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4NdJW9F6ujJVdDxTXKTkQF7BatcjX42wwg2f8RXntRnOmJJkDf3a3Fd9ilPsgy/izx2FblwTg5hNh4ZypCfxGCyc87rIsR1NjJT0KSqin4CvSb+pSjWIDdsKDUgwjFUR
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR03MB6033

From: Niravkumar L Rabara <niravkumarlaxmidas.rabara@altera.com>

Add compatible string for Agilex3 SoCFPGA board, which shares the same
architecture as Agilex5 but with two fewer CPU cores.

Signed-off-by: Niravkumar L Rabara <niravkumarlaxmidas.rabara@altera.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---

v4 changes:
 - No change, retained Reviewed-by from v3.
v3 link:
https://lore.kernel.org/all/20251112105657.1291563-2-niravkumarlaxmidas.rabara@altera.com/

v3 changes:
 - Add missing agilex5 fallback.

v2 link:
https://lore.kernel.org/all/e9d398bacb299c996f14c9993bf041a9a6740cbf.1762840092.git.niravkumarlaxmidas.rabara@altera.com/

v2 changes:
 - Add separate agilex3 compatible instead of using agilex5 context.

v1 link:
https://lore.kernel.org/all/51ecc7f4eb7e419c00ee51fc26156e25686dfece.1762756191.git.niravkumarlaxmidas.rabara@altera.com/

 Documentation/devicetree/bindings/arm/intel,socfpga.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/intel,socfpga.yaml b/Documentation/devicetree/bindings/arm/intel,socfpga.yaml
index cf7a91dfec8a..c918837bd41c 100644
--- a/Documentation/devicetree/bindings/arm/intel,socfpga.yaml
+++ b/Documentation/devicetree/bindings/arm/intel,socfpga.yaml
@@ -21,6 +21,12 @@ properties:
               - intel,socfpga-agilex-n6000
               - intel,socfpga-agilex-socdk
           - const: intel,socfpga-agilex
+      - description: Agilex3 boards
+        items:
+          - enum:
+              - intel,socfpga-agilex3-socdk
+          - const: intel,socfpga-agilex3
+          - const: intel,socfpga-agilex5
       - description: Agilex5 boards
         items:
           - enum:
-- 
2.25.1


