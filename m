Return-Path: <devicetree+bounces-253662-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 224DBD103D3
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 02:15:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7C1793001BEF
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 01:15:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7582E1A3165;
	Mon, 12 Jan 2026 01:15:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TYDPR03CU002.outbound.protection.outlook.com (mail-japaneastazon11023093.outbound.protection.outlook.com [52.101.127.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4706B672;
	Mon, 12 Jan 2026 01:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.127.93
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768180536; cv=fail; b=kFGBb3IkGUnwGm3FMN7qoFu916PTKpjUc5iVZ0yj42GLA2EVcH5v73nOVgLnLBny09oowb6L+THTVlLVItYKp5itqUqMDXESVHLh3wXrCxSgjiGlNx+qZKqN92TA9MGi0hLtI0FdV+IVsDfdEP13tzcgYQtYKkGPuVgVSx4Kt8E=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768180536; c=relaxed/simple;
	bh=llxK4AG/Dl8J7EMZiI22DrkGlUKofXz0Fc4xi3v+448=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=S7C0W6KgvXxd97EZx1oCddLUGwWC0xHKoUBQTQbKUu3CkyjygkswyZz9nh7/JIpfZyYIkoCYeYh4pek06Hwp+nYQX+OIzSVUtHi9yrg5GEpn1UWPap+hhI7QsXdYx+MDMI82VgB0+6zJpi50VhNCarHeIOLKbE4aaqy5Di/+Yn8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com; spf=pass smtp.mailfrom=cixtech.com; arc=fail smtp.client-ip=52.101.127.93
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cixtech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Sck7uvE1OEWdGzrF8FY5Bhvr7+7CPRx817GkHY6gGBtdbMOFk3+vLNOXLMttbLAR+iY9TJ1B9kxMGBOHdCW2NP7RGvc4VaYQjZDzIu6fLO8SNmFknZKBioed+DxVtkqY9Eb5aPxnvP6Q73VQy8B1X8+s67ChbOrT89YsH3JwodTrE9UMp9c1vmgiifw4BcOzwwphiTyl26IKJf9//K25TLD4f8F+uKl768q2yoO/o8XBZRqDLpEndD+dcLQRa6+O1GWZes6jlBo3U5BA6TyN0eiRveFij2C8jg75cYG4ublpcDNeE2uai9knx0qt4e5jiKWf2F+FrCXF+OMoZCAFRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+m4t+f9+I1SFzFbBRF+enypifBc9hZPBoYq6Bz/VuBc=;
 b=KFxLuK6RYfER4VDQZZRtOj1NgWDrZLLAA5VG4NKt5vikOvXcWC9lUwf3zL28v0R2PtHWG3lhbKUI5tgRXF6nFWIEVB951j3Q5QMReIpI99Xh+Sbv946qPnUcRuywq6rrJALctRwkzODmmHJIHHcOhpHLPVe3oRna15p9d7CjafCwEz/eZN24MxBdkLPTGcHw5C62eK+PL0kLEHaC/Z9G+XSLKNDVOITdr0D6Z838ViOp5tfXOAb/DCE/00dOOu0TmkrLz452no++jhRcUzcvzzs8cHyagizleasxIwJhBrxdFnFUcZO/t4r/IWR/iSRuosQTFCdd7v8Z66fXiBT2NA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 222.71.101.198) smtp.rcpttodomain=cixtech.com smtp.mailfrom=cixtech.com;
 dmarc=bestguesspass action=none header.from=cixtech.com; dkim=none (message
 not signed); arc=none (0)
Received: from SI2PR02CA0010.apcprd02.prod.outlook.com (2603:1096:4:194::15)
 by SI2PR06MB5017.apcprd06.prod.outlook.com (2603:1096:4:1a1::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Mon, 12 Jan
 2026 01:15:30 +0000
Received: from SG2PEPF000B66CD.apcprd03.prod.outlook.com
 (2603:1096:4:194:cafe::de) by SI2PR02CA0010.outlook.office365.com
 (2603:1096:4:194::15) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9499.7 via Frontend Transport; Mon,
 12 Jan 2026 01:15:24 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 222.71.101.198)
 smtp.mailfrom=cixtech.com; dkim=none (message not signed)
 header.d=none;dmarc=bestguesspass action=none header.from=cixtech.com;
Received-SPF: Pass (protection.outlook.com: domain of cixtech.com designates
 222.71.101.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=222.71.101.198; helo=smtprelay.cixcomputing.com; pr=C
Received: from smtprelay.cixcomputing.com (222.71.101.198) by
 SG2PEPF000B66CD.mail.protection.outlook.com (10.167.240.27) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9520.1 via Frontend Transport; Mon, 12 Jan 2026 01:15:30 +0000
Received: from nchen-desktop (unknown [172.16.64.25])
	by smtprelay.cixcomputing.com (Postfix) with ESMTPSA id 960AA40A5A1E;
	Mon, 12 Jan 2026 09:15:29 +0800 (CST)
Date: Mon, 12 Jan 2026 09:15:24 +0800
From: Peter Chen <peter.chen@cixtech.com>
To: Gary Yang <gary.yang@cixtech.com>
Cc: <fugang.duan@cixtech.com>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <cix-kernel-upstream@cixtech.com>,
	<linux-arm-kernel@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v4 1/2] dt-bindings: arm: cix: add OrangePi 6 Plus board
Message-ID: <aWRLLIPNHE23ihfS@nchen-desktop>
References: <20260110093406.2700505-1-gary.yang@cixtech.com>
 <20260110093406.2700505-2-gary.yang@cixtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260110093406.2700505-2-gary.yang@cixtech.com>
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SG2PEPF000B66CD:EE_|SI2PR06MB5017:EE_
X-MS-Office365-Filtering-Correlation-Id: 129fd106-a773-45df-f9a6-08de517813de
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|376014|1800799024|36860700013;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?ctBvSo5zVmGai7ae/6EO/UHtoebcIq188Bm3SBi2ZTu2z70SQt66xEy5S118?=
 =?us-ascii?Q?ES/g+FkbGsSJp95jM+C6nol0T9wpxmaL/F14GmkPuIoxjmTKXe47KqeO/Hpp?=
 =?us-ascii?Q?t2+LwsCLd/JUCStuQgmsrNZKRCJ+OdLUxzVQ/tQp1G9WyI+TdqbCG/5EYYjT?=
 =?us-ascii?Q?sOpUbvg7PNa6sBJlVgCdlOXaERFZaUg6pbwub6SMksSqD1ZV4fya90pO6ivF?=
 =?us-ascii?Q?yRTSwcwl8KB3YDe61/z9ENtOxxCgeUaSxI0VA9qD150EnjV/9bDjd3gRC9Ru?=
 =?us-ascii?Q?YXj42YkDkv8N4IPLJUxH5osujzjjogTPbOyzEZVKOjmqtIu3kUGBOLppr7g8?=
 =?us-ascii?Q?flwTePw6U/kglmUAG9a+GSTGD5dLYM4p0tpxJAWDlDJy3FL3kZHgN0mTyL0I?=
 =?us-ascii?Q?GfySv962LZYdieoanlUTOMQzcBOTqq1mzKHwSa0EO7jrYUfo8uwFifrNMKOT?=
 =?us-ascii?Q?SgQ/r0DUj24VzjtrftdWqFVc0fOl42LbUl/2QOc3ll3q+QdB+jRj4acwlzBu?=
 =?us-ascii?Q?4o1felhnHkhVJzkFCpV6b5OgmNc5tfjB0MWMFkr6ixv5T/hk9ry7a/MbCnn7?=
 =?us-ascii?Q?WU4rWusKVpLJQtV5c4C5RT5NrFMY7GcYmC7AmDpoJNHwRw85PETtcCgmui7s?=
 =?us-ascii?Q?NE/1sEzY7BiJwuLX8Ca9AUZavWpJgKUY6Leza6lZzcb0Ck1b6TmdjeJQnW7B?=
 =?us-ascii?Q?GTobHZnU4BiLq3bH+VHtGgfE7ID3groj9NuzL8mn72CIgV7FjvPnuHgFg3tD?=
 =?us-ascii?Q?jW3fjvQ2Byek708aVwDV9wjw5lHejTnYb4RDx0a4DPZWqFjjWG36y3Gy6sBS?=
 =?us-ascii?Q?QXi//6+KyT69lRKpmOf2mqlnVeF8BnZpTPLcZi8NinVaswRRLG+CjI+1tG4u?=
 =?us-ascii?Q?5kcRKvW33aSiMkOiijKi/LgchffsWjnw5kjUfuF4q2ayld2ubtAiECnVkJzE?=
 =?us-ascii?Q?qS99jcfBaDFQXXmzp9dYuCaW96YQZgYSkgB0S27jHfkycR4wg8RFUJ+JtXW1?=
 =?us-ascii?Q?fu20WOc40UVuaGKrGN1FFph9Hgc7gN+wldqngIUcVOBLY0/kR1dkn2J63SHC?=
 =?us-ascii?Q?yJrVm64LiRtpz5c5JpDGS8aNV5pA1A37SGxGU70KfCGzJxrmSlek+R1DpH3v?=
 =?us-ascii?Q?bxEFTNs7izSCooJaVHKVi9jTRXv+b2IyTMxprX9UuFD1Wr+LoumZkyqYWD7n?=
 =?us-ascii?Q?mtFy1+DEVrYbPSlx7RQZ65J51KU9dhPJ4NU21aim0bTHhMUThO3vDgweb9FR?=
 =?us-ascii?Q?Rs0Cs8DabS7u0onORTwauHnCP8YRYIVT1omYGv8U5inc2Wq0Jb0zqZjXCqFk?=
 =?us-ascii?Q?Lze37SkuWxXf7zLzEAW/w/x3lrtOvxV4ock28ELSNw9Lq6gnioFVtQcZp5fW?=
 =?us-ascii?Q?J84kIRva0QP+sX1SAAK5Kwwt1cIDI7qKGn0XR7MW2h/famHegqVYjDl9A3pl?=
 =?us-ascii?Q?FLEHjikcQHQ7ez9uprpYuKamQH3JEUzjpnjwypzlZZgPuOMqLd9J0M6dgNNp?=
 =?us-ascii?Q?pYpQyF7+KufGn8boSoIT//g6E8umIQiJ3sQ8KkUBGSe5nC/N242gVRtHDm69?=
 =?us-ascii?Q?G/fKkUdWfYG4Vg/GWe4=3D?=
X-Forefront-Antispam-Report:
	CIP:222.71.101.198;CTRY:CN;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtprelay.cixcomputing.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(376014)(1800799024)(36860700013);DIR:OUT;SFP:1102;
X-OriginatorOrg: cixtech.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jan 2026 01:15:30.2617
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 129fd106-a773-45df-f9a6-08de517813de
X-MS-Exchange-CrossTenant-Id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=0409f77a-e53d-4d23-943e-ccade7cb4811;Ip=[222.71.101.198];Helo=[smtprelay.cixcomputing.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SG2PEPF000B66CD.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SI2PR06MB5017

On 26-01-10 17:34:05, Gary Yang wrote:
> OrangePi 6 Plus adopts CIX CD8180/CD8160 SoC, built-in 12-core 64-bit
> processor + NPU processor,integrated graphics processor, equipped with
> 16GB/32GB/64GB LPDDR5, and provides two M.2 KEY-M interfaces 2280 for NVMe
> SSD,as well as SPI FLASH and TF slots to meet the needs of fast read/write
> and high-capacity storage
> 
> Signed-off-by: Gary Yang <gary.yang@cixtech.com>
> ---
>  Documentation/devicetree/bindings/arm/cix.yaml | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/cix.yaml b/Documentation/devicetree/bindings/arm/cix.yaml
> index 114dab4bc4d2..21e66df7f696 100644
> --- a/Documentation/devicetree/bindings/arm/cix.yaml
> +++ b/Documentation/devicetree/bindings/arm/cix.yaml
> @@ -16,9 +16,11 @@ properties:
>    compatible:
>      oneOf:
>  
> -      - description: Radxa Orion O6
> +      - description: Sky1 based boards
>          items:
> -          - const: radxa,orion-o6
> +          - enum:
> +              - radxa,orion-o6 # Radxa Orion O6 board
> +              - xunlong,orangepi-6-plus # Xunlong orangepi 6 plus board
>            - const: cix,sky1
>  
>  additionalProperties: true
> -- 
> 2.49.0
> 

Applied, Thanks.

-- 

Best regards,
Peter

