Return-Path: <devicetree+bounces-238797-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id F3DB9C5E15D
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 17:07:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 489C04FAA49
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 15:54:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 560F2334C31;
	Fri, 14 Nov 2025 15:42:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="ZqpzFg0p"
X-Original-To: devicetree@vger.kernel.org
Received: from BN1PR04CU002.outbound.protection.outlook.com (mail-eastus2azon11010044.outbound.protection.outlook.com [52.101.56.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B813330313;
	Fri, 14 Nov 2025 15:42:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.56.44
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763134960; cv=fail; b=BxLlIY7Hy8Aj45TlRpC5HR1QtNe1TmKTGQuCaK9Vy8iVafWaOrRZTYosKwl09GZ+G9pBlZAOHqJEYblsBG56UKQKjmZZZzAEQpTLdyPP13h8HDe5sNDnohoz7y50/KsqFbNEqmxKwGTDz0R2PhvtQNO4jEK2100enlNniMVgLc4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763134960; c=relaxed/simple;
	bh=Ozl8eUgH8NYvocmHNDpB11UYFNEyUGCS7nK9gLljNfU=;
	h=From:To:Cc:Subject:Date:Message-Id:Content-Type:MIME-Version; b=MMKuO+vm5xmsOWvDPUD7ieyHn801XinF1eSQ/6X7TA16XUEAJIoLOLZePbcQoIMIwQDvCF4Gu3NiJBS+G9YjHXv54d22DltH1Zc5sBGXV0LLOeKtLAHEwvcdX1OwDKQRF8EWY4+3k0J3b068mHWXrExNGUTkI2F9c7n6+uSgCjA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=ZqpzFg0p; arc=fail smtp.client-ip=52.101.56.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=krjO7PgpLhF8jSBhMfWEP20qvak1JtPo7ckdiFcRSOsVGHf+CSWSLs9fikGDzdvg9MA431VNv2q0GrThxqZN3W7kvwvuH/JddEXaprVkyc/3qsCncn393vmcErP23K0kWo5gVxRslup/MhfxKfAI6L0UvjYmj8tnC5eA8/il3It7Jvi12iCWFNqScCUvfMsMB3iiCgSLp7xhSAoA0iCcAtnE4ZbIvb4GAgLcz1IjEFYqsh7bALqNCg8vA6vOLuCoLHJgwL5Qzxsspa/s+sq00x9dKgbibWv1EHju32utVsnbXXsEEMnGtpqCmdnoDWXbaxvRTcilOiC0RgzS/1358g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=89VeCiiVy3qaaIplsyxCAJ68OK+6ze99FH4MLcuHskI=;
 b=Ngu1r+A0T6UgpjAXgb2JxggsoE7AkmwCib0w62Z93SGlGwPMMYA2thJQopLoU0UR2yKvn+0j0VAHBLL+2pqIvfC+z5BDM1F4pfM3RLqlkNzTGkRo2sMYEgWEBylNvaobnzC8VINsK+vKdvgufZbqX1h4vBl6vSwcN0jcI9lNJLH2O8j1KsQbkZ1It2wQf5q7hg8BucLIVl3FZiSOrBUeDswu9g39z3NSkM2ll8WTXy9GALSZkMszZx45opKjN/zVBVPTFPavW/gxpm/0zogo8wq87DwhL8qjgpV9biWQzuvpQUapgjco19dIxd4z/3dcHuh4UYKrifqfRCru9lfNWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=89VeCiiVy3qaaIplsyxCAJ68OK+6ze99FH4MLcuHskI=;
 b=ZqpzFg0pcXcHpr+w2k5k5Fe2M9z/PRDfNbxHupzh7v50yII250xiKySLctJ6icd9nOTX/zaeCYPuDx+TPNmrkpsy+2oXJ1ClIX+5OQIgNMPWTgClA1QjKSTGt16iR6YHrKy0cTLNgdT5BGWIcSnZtwN+tnlbX5saXPLXNrkTveF7JMg3QKTaAMgFhkd0g77utRxxLnkGzGIZMPPd6Pdsy5mmUQXfYGGkxmtnla93HTu9P3Js7VuqmjDDLPyJ/QISQKbrBrG0VzyfdhfB+D+129EI+bN+thnDpkecMSBuSgbcASdMquH6sOZrHSsQ58kzPEgmbKwkyQJP2DAM0uucFg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
Received: from BL1PR03MB6037.namprd03.prod.outlook.com (2603:10b6:208:309::10)
 by SA6PR03MB7925.namprd03.prod.outlook.com (2603:10b6:806:42f::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.17; Fri, 14 Nov
 2025 15:42:35 +0000
Received: from BL1PR03MB6037.namprd03.prod.outlook.com
 ([fe80::9413:f1a2:1d92:93f1]) by BL1PR03MB6037.namprd03.prod.outlook.com
 ([fe80::9413:f1a2:1d92:93f1%3]) with mapi id 15.20.9320.013; Fri, 14 Nov 2025
 15:42:35 +0000
From: niravkumarlaxmidas.rabara@altera.com
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Niravkumar L Rabara <niravkumarlaxmidas.rabara@altera.com>
Subject: [PATCH] arm64: dts: socfpga: agilex5: update qspi partitions for 013b board
Date: Fri, 14 Nov 2025 23:40:17 +0800
Message-Id: <20251114154017.1523720-1-niravkumarlaxmidas.rabara@altera.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BY1P220CA0023.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:5c3::11) To BL1PR03MB6037.namprd03.prod.outlook.com
 (2603:10b6:208:309::10)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL1PR03MB6037:EE_|SA6PR03MB7925:EE_
X-MS-Office365-Filtering-Correlation-Id: 20029485-5f08-4bed-a165-08de23946ead
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?j8yfVPiw82c145cgok7eAlgrSe5A74BJttaWG/wCm0g7RqA5Q16Q46AtAFdG?=
 =?us-ascii?Q?06teBVP6JbQY7FdCldR9OdFDSszF1RUdGgW7JHBYRghcjN+uTUXOzb0gSH3u?=
 =?us-ascii?Q?s+XM7r0ruTn0qaEvDYnBmTDy41erB5tNPqc8XdDIerSDn0Lkhw6gHPbCfhHP?=
 =?us-ascii?Q?kyOPwZhwQhJoyPXRF+SYBLDPy9mlGRqZvFWxkouk2Z3vtiBcKfSLSFEjwalc?=
 =?us-ascii?Q?T+zttct2KK9yVziyigegjhk63UbQvbMy24PU/KjUE+ggKf9gpmT9HdqjOKCX?=
 =?us-ascii?Q?NBn73KmRIT0+ftNFlht3uOZTfpJgD0piyde1SHsk0JGNQ/FIjK7d/V4ZDu3O?=
 =?us-ascii?Q?2oI+uJq+sWYZWkBnfO0vtrfArAVjD1cYkYX4ilNbqgmFfVLUmx1GD+5HhC1f?=
 =?us-ascii?Q?f2s5Ju1r1xN2G4yz3xAWOBBv0keHln1MGmYDyfTwjfkGw0JRUm/5fgMeUM5V?=
 =?us-ascii?Q?eg/IOY+/6oSI+0WyEYEXfUYSW1A9vOf70jafl+G8HeqrqAmAS/XkIZZpRNfR?=
 =?us-ascii?Q?8tDnfuib76jprzj9W3T6PK2QczpL6FXGC5r4Q9AWvCL2K55b6GdHpEv+qyIE?=
 =?us-ascii?Q?sczJnrcPIrhXweXrNSvMXdKnTLpS6h22Sy8IleZmZD942/S7EMS74HaeZSZr?=
 =?us-ascii?Q?V0f3qk+5RYMfLCiogllMvLyxYazBx3ILD27fh0Zs3CdbqdcY8ha0OoNMWDF+?=
 =?us-ascii?Q?KaAS3NrAqqdGRPLCtJf1r3nOcDuOxcK9XccpP4V1vgAp1MWmZaiX6MwQNVUY?=
 =?us-ascii?Q?gOWCpdrlENJtewLMuWFxKrKwttNS8gYKW+ZkRFXmWX/Bpt/Jgvk4vG7Km3z7?=
 =?us-ascii?Q?P9DhvsYjvoxqqufiYsKRV4di9Ge10vlnA5X0hqwtpwb0WtLVq0TDFJ/SKXmi?=
 =?us-ascii?Q?+XyOtwzGV3EHqpLvdFhN4WY+RiyFOsuGb2Ce4/9T3formZWxIh2QULHiO+BI?=
 =?us-ascii?Q?nn+eKkV1ZLVGAYvO19YgkLEejJ6l0krDDlUK7F5xI2UyP6TOF3Zrpe19gY9a?=
 =?us-ascii?Q?R/J29SPG1TR5xar2HiVum0UNtvrk3SCqadEV/3yVC8i6EYHXX+OWblv7IH8C?=
 =?us-ascii?Q?Z4al/Y1+Yu7hq8T6Tg3SjhMxm1iN/ZYxlY++7TuQF/ZOgj8dMxAvQl8zcLCJ?=
 =?us-ascii?Q?ZzLr3zBKHQgW27bqHGgrJBWUruCWm//T6mV/nt72EKU0umf28t7tuvufnHSB?=
 =?us-ascii?Q?22WhAHnavpcPvtcHm2QD3UWrVL+g4T74QHkWgLHgsuibdZ1XarxfPI6npAwQ?=
 =?us-ascii?Q?v/uLsZLXozTJQepfWv6ediH/3Z8nd1HdLcAWqIYHED7lMwc5rqLSU24q1rmQ?=
 =?us-ascii?Q?Tti0NW54MKlaB5cvQCZvOed2PUxJQBVzF7E567zWUJPkw09hivm+dADAYday?=
 =?us-ascii?Q?ZIzqvBO7GZhsbSQEM+TpXajuVZRGnPIchf2qvevyaf8/ukqml0Wlk4wwlsSy?=
 =?us-ascii?Q?kJgP4u1itJ9jhlecT0t14X9V3VipvFC66nYV3RZJwcKIiJ7kvR4VMA=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL1PR03MB6037.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?oPoP4azUPVy3YDQ3AZYuyE2YOqh24w4na/XU7pDJIusPrexsTpK+YVSQRF35?=
 =?us-ascii?Q?+ynEkUsUG7ItXQH0/fgYSc67EYF1WyRJXg3l2rXl0Kb4IFXYILgDoBDmOwhx?=
 =?us-ascii?Q?OLqLjjPnNRTgofXys02StL6AOSKR3K9tLwcUnc/16Ernpg+4q10FwO19k8uN?=
 =?us-ascii?Q?tDCvNd1R8uNlEX2ABKUq9dj6+cOYYmSXOJeMvABXXuDRZKQmc9uHC2W7WhNG?=
 =?us-ascii?Q?JnCdf056WppMJ9vuiI7FXyrRKnFCTEDvE4T0sP6j1EeytRjbmEMzQ4LnhpYM?=
 =?us-ascii?Q?wqf7ho3YHET7AUNoyeavIj2v+dXi+05sbeY6p+189V31FYaE4T8hbGaOaGzz?=
 =?us-ascii?Q?t6S1kK5pxjE0rThEKw+6A/aXpe2eHEJNJuJ0HsfonbfvkKoaOA9SO3oeVgxk?=
 =?us-ascii?Q?QZVVJ1fF63Ht74dLQecJD8osfkDibV2NzhqJuZ30DAhvkY6lT+xBIvWOYgRJ?=
 =?us-ascii?Q?cM9njsSrxC+oIhyuXV4YIKZGAIP2TZuDMlupqqlXr0JZ9SXpKOFfB3M0EtN9?=
 =?us-ascii?Q?7xQLi9yHzS8o9o5P2aGdnxpVNYJB9kcZzvm4Wt73SY8C6cC9jMlVG9wGcSAI?=
 =?us-ascii?Q?oGDXtx8Q6pveA1u0v//cro4KAgNOZvyjtVAcEtPONA/qh8PRJgcgmZqaKwNq?=
 =?us-ascii?Q?VknowA52HRkPCK+Nm3ARGcWQahwj+qRsz7oHDxle8NydCTtrOv60itCcemwt?=
 =?us-ascii?Q?h8YiVQny6UzxTV3F/KxktY4Q7ApCVZB5Ipn+gxxPUVDO7UFibFD2xaIcCFvX?=
 =?us-ascii?Q?Bg7V1+TAolRNC8p+7xyXyUyLPxg90zNNnghhSgFHuwRjBvUH6/NZf12Efz0t?=
 =?us-ascii?Q?OjBx6YzYxfO2ysRdnxRaMDc2ltRA5V78M/zyx9wnGkeimcnQ5+p0CWrDV5Os?=
 =?us-ascii?Q?BjDMI5Tsgdlh8/bBrp446IZON00Rbxbvq0502/zHmWUePMnDmQ0RbXsL2ng7?=
 =?us-ascii?Q?sb1txM4272L5vlmLnGuCM0NVF1ASaYeOUa8Ef5b/7Vm1hS6jjvjbB3e7bFs/?=
 =?us-ascii?Q?lKfSRubDMDd1khkhNtQ4+a0ifyoyqX6upsEazZi4viHwLUBI3Imjl1GHqsF0?=
 =?us-ascii?Q?hp+r0PB2INSAQCSCb3vsgJc3unx5p132SbwliyjprfhQc5wPDM5b4VBRRCVz?=
 =?us-ascii?Q?MbYFoG3b06+4LOyNPbDfzZGiyDELa7Vp7gBICerBDYS7HqLpMVWmhxP+nt/x?=
 =?us-ascii?Q?Kz3GlXv14/A3xYe3dBqDTMEkkDlePW/J56Rg7slO/MMiwDevgSa+TsxGEQcq?=
 =?us-ascii?Q?OmI4cBGdyXaItDYlAsqcyLJZlPl6ncI5G2taFGS7rgLnF83dXBnaPVW8M+NK?=
 =?us-ascii?Q?J+snCUB0+x6pl+LiP6IeOdqN+EAfaT1YF45//E9Zv5TszOTtcPwyu7MYedJt?=
 =?us-ascii?Q?b6sF/F0liODYxkPpRZkkdi6uiyO1ethuVqXF4ajYTunicjPKEmUUmZmsg/SJ?=
 =?us-ascii?Q?ASEhTxkbn+i47+Nvxr9RJo7hBULaBQmiBdeShUxvikPRH6SZW2z2C/W5H5zW?=
 =?us-ascii?Q?fQcsh0lQ+ZnadPsU7TVmfikqUXNfKxcI/Vv7xosSOyhA6+GSphl+bzfBV37N?=
 =?us-ascii?Q?IPae76kKAGHyHtTM4fKl5Xb/xpydzzTykPbLMoKn6gpoY4YAL2v4Zm8Z5ROI?=
 =?us-ascii?Q?NmZ+UBitL5rtTnG/4/Fln4A=3D?=
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20029485-5f08-4bed-a165-08de23946ead
X-MS-Exchange-CrossTenant-AuthSource: BL1PR03MB6037.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2025 15:42:35.6767
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4v9WFX1OcuBJyBtlAazG5pZT/ixng4Sz7ffbx6KXv9YXIB2Ph0YDe5wHcfJksVTChkWeWxwu9Nb7KGDsbBel2hUBPolAD47+6xNGPS8ojmlLp0TtMKrKsMKVSbqdpwUJ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA6PR03MB7925

From: Niravkumar L Rabara <niravkumarlaxmidas.rabara@altera.com>

Update qspi flash partitions to support Remote System Update (RSU).

Signed-off-by: Niravkumar L Rabara <niravkumarlaxmidas.rabara@altera.com>
---

This patch is based on socfpga maintainer's tree
https://git.kernel.org/pub/scm/linux/kernel/git/dinguyen/linux.git/log/?h=socfpga_dts_for_v6.19
 
 arch/arm64/boot/dts/intel/socfpga_agilex5_socdk_013b.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex5_socdk_013b.dts b/arch/arm64/boot/dts/intel/socfpga_agilex5_socdk_013b.dts
index 37ff715b7928..f71e1280c778 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex5_socdk_013b.dts
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex5_socdk_013b.dts
@@ -102,12 +102,12 @@ partitions {
 
 			qspi_boot: partition@0 {
 				label = "u-boot";
-				reg = <0x0 0x00600000>;
+				reg = <0x0 0x00c00000>;
 			};
 
-			root: partition@4200000 {
+			root: partition@c00000  {
 				label = "root";
-				reg = <0x00600000 0x03a00000>;
+				reg = <0x00c00000 0x03400000>;
 			};
 		};
 	};
-- 
2.25.1


