Return-Path: <devicetree+bounces-76796-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 75D6790C074
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 02:39:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DE68D283641
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 00:39:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BA2D256D;
	Tue, 18 Jun 2024 00:37:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b="XOTbPbFQ"
X-Original-To: devicetree@vger.kernel.org
Received: from JPN01-TYC-obe.outbound.protection.outlook.com (mail-tycjpn01on2087.outbound.protection.outlook.com [40.107.114.87])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD49EEAB
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 00:36:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.114.87
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718671022; cv=fail; b=LDWZCjFr1JzOjEjYbefifvdMbq3NgnjAT2pKcISoI3hQzdD0V3Rcg7otRsJj06W7qQ3T9J9D10VyG954uMjEx2ARpZRcEowTKQbwrxxqoF/q8+X3XOY9UXpL52498YX38QspmXBkAjKly4JZPA+2Zzuo+E7EIlnJ8QW0VVYAzcg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718671022; c=relaxed/simple;
	bh=7FNL+smGuDMmDrT0OhfUI5nj6EMkecxlcJOqCHZ8nkQ=;
	h=Message-ID:From:Subject:To:Cc:In-Reply-To:References:Content-Type:
	 Date:MIME-Version; b=pQ7sUCWPjO3Cyhda80Zlkl4emcjdf3nWI5CMQwvGJJJ+wSpWzRNhUvO3vAmjyV43eBuUFd690EjF6Q1Y//ibDb32i+HE/3J/wkh6TTONK3atL4mGyFgnuq1EE+xbLJ8nSx0Wke9aLIvRxMmlACGibLamTYIOBGnVCx+taGkV+8E=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com; spf=pass smtp.mailfrom=renesas.com; dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b=XOTbPbFQ; arc=fail smtp.client-ip=40.107.114.87
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=renesas.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iYLEePDJpB2GdsAQFpqa5YF9Pa5yQ9ZCdSHrH6ag37gTo6YQ+KAx9aGMNq9E8ad7gTNbXvPqRK4tLRLsVy44kXcXFm46K6gcpbFXX1+7zKP3mzJFMNyRyCIj8p9bC3JcCaBwPIXqr/0YgnNI1aP5J+paYzj+gjr/0cwZfrtRnzSHULZ1WrMXsjgtScqnP+IyNXMsOQURJ2mizARi/yWNumpSrMjBo9R1bx4U7FEAdTLpB1V3OEc/ex13CtEw+sCF3p2O0YFXtEGpeajr64V971Mktujna1rOQnh1egYOkWHPxEpee8QcSL3tX+Tk/eg3Vo57EU7K02k988jlniM/lA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ClLvlexKMccm9SFvJptq2tNJKQ0r+LcV6O1QfIECR/Y=;
 b=dnZceXzNfjxhM8sLgmbCsjpZoUe8l1ECkMgCH8tMfD/HERVi5cQGQqLD4gbRFGh6hl0zq6ktVbUCzu0mXqoHyo0DdCOr78jEMmsvkZaZZE1ytRubppDB596gtnqlw93HNXyossKl+EEpaDFucMuiOK2hfb/rcbZUlRvQhlSR13DZGMhWH0wYdty/jVF9e0aCEq5Wn48VnTeMlOXsAamyifU/naCl9nEyFFBFd4EwpEd8Vt8MOfkUef9FD88ls/EGupuVMKpirowWm5kkIQvkZUIpUp+5xDLzdxIxDIUMCf1Hn3tYC1op2UjCsh5aEP3IPCVZDxuc3P9SAZ3cO3t2nQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ClLvlexKMccm9SFvJptq2tNJKQ0r+LcV6O1QfIECR/Y=;
 b=XOTbPbFQMrlWR3Li+AYoyFwpN+xhu2+Rc9lm/sdnCWnOP+YOSzleiJojRZHS/TQOzAps0NllFgWoEvRc/G+dOLb04kg7eBGrz1GUBaA8Lzc43uO2O8Q3+YHWWdzuBc7ges3bsECjFGDtw1ZHCmFNZul7VLilMQboqIGuzmtiNqo=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from TYCPR01MB10914.jpnprd01.prod.outlook.com
 (2603:1096:400:3a9::11) by TY3PR01MB11574.jpnprd01.prod.outlook.com
 (2603:1096:400:374::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.31; Tue, 18 Jun
 2024 00:36:57 +0000
Received: from TYCPR01MB10914.jpnprd01.prod.outlook.com
 ([fe80::c568:1028:2fd1:6e11]) by TYCPR01MB10914.jpnprd01.prod.outlook.com
 ([fe80::c568:1028:2fd1:6e11%4]) with mapi id 15.20.7677.030; Tue, 18 Jun 2024
 00:36:57 +0000
Message-ID: <87cyof3x3q.wl-kuninori.morimoto.gx@renesas.com>
From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Subject: [PATCH v2 2/2] ASoC: dt-bindings: ak4619: Add initial DT binding
User-Agent: Wanderlust/2.15.9 Emacs/29.3 Mule/6.0
To: Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Linux-ALSA <alsa-devel@alsa-project.org>,
	devicetree@vger.kernel.org,
	Khanh Le <khanh.le.xr@renesas.com>
In-Reply-To: <87frtb3x4k.wl-kuninori.morimoto.gx@renesas.com>
References: <87frtb3x4k.wl-kuninori.morimoto.gx@renesas.com>
Content-Type: text/plain; charset=US-ASCII
Date: Tue, 18 Jun 2024 00:36:57 +0000
X-ClientProxiedBy: TYCP301CA0037.JPNP301.PROD.OUTLOOK.COM
 (2603:1096:400:380::9) To TYCPR01MB10914.jpnprd01.prod.outlook.com
 (2603:1096:400:3a9::11)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB10914:EE_|TY3PR01MB11574:EE_
X-MS-Office365-Filtering-Correlation-Id: 94641095-719a-4b5e-d1c6-08dc8f2ec28b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230037|1800799021|366013|52116011|376011|38350700011;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?R1GhM+gkpRsIlVZxdX9YjvNLnqU40oLZo+VYui4msGWuTYCM2ers6Oa7z0rE?=
 =?us-ascii?Q?+cIKO938om7AUgIXMDVL8vtkngK8Ys9Mh/HVOVLGIPe++mWWnbCiNS5hH756?=
 =?us-ascii?Q?mHHWLkmdLNiCWZL1oTTxttK+LMl7cpzMbz8fjj6p0MgVWHkAlJDUU7v6wpb3?=
 =?us-ascii?Q?gbISWtt4qQ46dnnxfG+RHALwnPgEfJOYR00gINQPRlC0nty6gkI3ao0anSt+?=
 =?us-ascii?Q?9p9LSvgkG9+Sw2py1BoZaI99ntDookaTjOvfrhYkQW+la3uHWCd4j6hU8n07?=
 =?us-ascii?Q?vS0iI/e+LCzrspRGbnw5ejR7uPOJLGhreB15i8uUhMqzlampycSOJtj91B4U?=
 =?us-ascii?Q?pCwomre7OOyHLBY3GKwLO6/+v65kWJ8zEGEhHPwONAocFAqa4nYPEvVfLL3B?=
 =?us-ascii?Q?IapH67i33LHJ4UQ5WsEAnDdXOU/y7gVKEJ/4ZdZajDekyFm3f9NBXf6pBejJ?=
 =?us-ascii?Q?jaMLWeMOTyhQjgW3A1YXWbi/8e0ZsbBnLy+X30TmeNatccuLjnzmmlv87dbq?=
 =?us-ascii?Q?K/81iPvY1d60ch7uPnWXjASHbIjPAShhVH87wxtM5LoEYv0ESiX/xDIbm5Rf?=
 =?us-ascii?Q?q3ORScAcqpM1L2JaOfIBLt0b8MpBp1OKy8NQbK4G3hdLD6W7A3KTAM+ha1u0?=
 =?us-ascii?Q?OzPvosfndvDuikX/BSH8fQDk/pWK+qMK7UZrn7xiCIdvylV7ZjS+42QYepIb?=
 =?us-ascii?Q?6h/Hqf6w/S3BLRchbtMe2Ytq4glODu44SFTSJEmuu8gARtnYkWiqt+s/GXHA?=
 =?us-ascii?Q?whRJEx3XT2Mq0ChOm0VMn0ewm+6kmyXg5K/RH/vqd6ptivN+3WyxxA8iVZOb?=
 =?us-ascii?Q?Fgw511V7wWM8PGxHMYNVtHh+WsVS4QvspvKzS++Qid4Kk3fxTkt8fpnY4TLA?=
 =?us-ascii?Q?jNVzxfbJyRnE8FpRKLm4ppJ8Yi3jCdQtIvoRBx4Vt0fRtIM77CxPhp2OdAII?=
 =?us-ascii?Q?4J4MkvDtx21xMUTQMhbm2eAqXAW15SGg9gAt1aUbgsLBJ4ivTMYv3B6tFQjO?=
 =?us-ascii?Q?M64NdY/xXxc/SC9GzmP6GLNbEaUW15lpX1YMmfYSoSxlZFQoa6Hrj3KBYV9W?=
 =?us-ascii?Q?dxp5s+eWYttp8OC47FQLI02NdclbWAu3blRH19/q+NPC4eIwPu9cseAuMZj4?=
 =?us-ascii?Q?IwwUudXg2g+esC/IAMZBeGrBBwb/R74x4n+IY8p9zfu2Z/kZgAUADrnukoUy?=
 =?us-ascii?Q?hv873BpWJVsvaciaTyLW2znzLQAcEwpl+tAsHpa1yvCUU9uiKAb7bb5jXvLb?=
 =?us-ascii?Q?ruiuDA84ogKa6NzGj+r/Q5edObKH5E4LUhHfd+zpAVkrLd+zGhenvaEaqMc0?=
 =?us-ascii?Q?cTVGVWb+QOY47ij7ePIA5mxt?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB10914.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230037)(1800799021)(366013)(52116011)(376011)(38350700011);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?B4x40rirs+z4C4k/tv2iLTg/NDW4v5qinJ7VbD5SaWKFauob3Usw56Qx/8H5?=
 =?us-ascii?Q?JBvxY9494axVCkFVOUE8JnCO8khbYbq965FjQQxD9oXow14GvkZVjWdtZX+H?=
 =?us-ascii?Q?ShSM2Nz6oH1UXredTeKbXGb1kRC09otvZbhV+iA15MzgH3IDE4OzIXiqN9U9?=
 =?us-ascii?Q?SKGXWHqzVFY6E7W+fNXGhxQoDDf2UcJeZeHsUUdej5rlajVipXOmXyOE1AGI?=
 =?us-ascii?Q?+Y/trj/uHyjaoBD7Yg9uXLCBNQdAfY49ehQE1lFN6tGxWCUlONcjvkuRBmWL?=
 =?us-ascii?Q?15ughRFn/UPuwf85b6cbv8159mNfjdQj8zYmrMNLYlV7C+gBAnmQa+aOgzQi?=
 =?us-ascii?Q?C0JKN6MYDVgTtwrXfegFEJ9v37ao0OTZt6Is5nql+wI00jMT8tUla5xs4/lg?=
 =?us-ascii?Q?Sd+TVQGgrADpNxWdskQdr38mDX4JMJHSsp6a/LVJn0vjsNZhzWjXyjmNE5D2?=
 =?us-ascii?Q?vsV7mQwshJEM9XXS0jlzBPrDYWI9BcTzpRy2hrY+QcnhP7lMQVmpbDF28NId?=
 =?us-ascii?Q?2AuAzaANPnBB8Ydti9UTSZkKcsZNWn2mm0uH8U5QFEcqNWntUxLf0w+HH0rl?=
 =?us-ascii?Q?uTdE3lwqquNKxxUs3bkco9TJjobUZsGw1qrb8Sxjg6uQWz7vMNdbKfMHVbym?=
 =?us-ascii?Q?/Soy+zs2IHGTa/MzfCceADxHsr8fpkq/APA+SKKmTM5ZTzIlGdCSNJjQae4L?=
 =?us-ascii?Q?O41eIMa/uOVDZZNZELX89QRmamU8BadMY6G+8lRFvfrouSdaw/Va+ytCtDxY?=
 =?us-ascii?Q?PMY8bnlV5vtVFWsuDaICeQT0fNqUkoytPL84S7n6lIqxczNtOUgAE+VU++/z?=
 =?us-ascii?Q?OyLv64/ltn0FoeaJlgb0gro4tfoGL7/gV46g/fBFVZA23O1OJPydHhx1r9hv?=
 =?us-ascii?Q?t+0hEBKD2o/sDtb6kulqNoFx6ReaLb10CzQjivUF9zCROWfX2hFqIrJeh2EN?=
 =?us-ascii?Q?xOCEkkYZRe2K2caGjs3fwZ5GMmxmvaCbiCcZ2DGGNMQl+53t9DgRFYsKCZqU?=
 =?us-ascii?Q?kveKu654PzpbgKC0AMXp+zpqlpmixMWfZhCMyuCOvU3zgaj381jm/n1h5k3x?=
 =?us-ascii?Q?c/JyjY1aN1f2CNz2TCo8F0OujbnPN3Ct9DRU4+8AR69JlNGuH32fIJBdSBMr?=
 =?us-ascii?Q?ngjZmlvtUGvAHXvsD8ep6RThGoA0PaSgKWEujhGUKv+19L11pj/a7L0B2wYl?=
 =?us-ascii?Q?+WCZuDyZoOP82pvqJWX0aUP0cR/Q3fJX9NsO9bVEGDF4b5OoY3XvTB6F8jFj?=
 =?us-ascii?Q?bb3GvYPLKzPnLmKqFm52u8U3MwL44PH1gLX7zG5aRcgvfc0f5DEXWga66Yu1?=
 =?us-ascii?Q?b1qbS3xUupfZzh3ys+8j8cL9F1dPPZX1jtzUH5iJIWNNTgI9EsUQSzVCC8gp?=
 =?us-ascii?Q?mI1pY04ZWnlA4MFbqsgYp1T+CvmBwEkkTcokklpnHdHvIFx6zVdUr2Pvza7u?=
 =?us-ascii?Q?rhL/17GKYbarMVBF5iCfTftSx4o6fJcwKxJDVzabmwipbiV7jtKLTBnZ2zVy?=
 =?us-ascii?Q?YA3nXEx6R5aEAnqJMVQGmO1u4hKw8XOA+F1HM1qURaoGjp0DrU88GVqSJY7/?=
 =?us-ascii?Q?I8rKliuSOqfxSAXZOgs9/xnvwnqcFz2tUJjQwMgwV2shgyg2qFkfpwZrkQcW?=
 =?us-ascii?Q?zP92lwSBCN2e3hgEDm4MPHc=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 94641095-719a-4b5e-d1c6-08dc8f2ec28b
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB10914.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2024 00:36:57.6830
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vUhM0STFm5GfBlwrMmhAnyeKv0CVDM8ysVHlLDVVZAh0JDrveagUSsBr8nMFJN0/TQCPM0I+BaDkq8ygxC5k1BazZ/R9fAqfbDxiNEyHxfNvhxtBwd45TCGKOe+nqGPC
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY3PR01MB11574

Add Asahi Kasei ak4619 audio codec bindings.

Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
---
 .../bindings/sound/asahi-kasei,ak4619.yaml    | 62 +++++++++++++++++++
 1 file changed, 62 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/asahi-kasei,ak4619.yaml

diff --git a/Documentation/devicetree/bindings/sound/asahi-kasei,ak4619.yaml b/Documentation/devicetree/bindings/sound/asahi-kasei,ak4619.yaml
new file mode 100644
index 000000000000..d412531ef9a2
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/asahi-kasei,ak4619.yaml
@@ -0,0 +1,62 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/asahi-kasei,ak4619.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: AK4619 I2C transmitter
+
+maintainers:
+  - Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
+  - Khanh Le <khanh.le.xr@renesas.com>
+
+allOf:
+  - $ref: dai-common.yaml#
+
+properties:
+  compatible:
+    const: asahi-kasei,ak4619
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: mclk
+
+  "#sound-dai-cells":
+    const: 0
+
+  port:
+    $ref: audio-graph-port.yaml#
+    unevaluatedProperties: false
+
+required:
+  - compatible
+  - reg
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        codec@10 {
+            compatible = "asahi-kasei,ak4619";
+            reg = <0x10>;
+
+            clocks = <&rcar_sound>;
+            clock-names = "mclk";
+
+            #sound-dai-cells = <0>;
+            port {
+                 ak4619_endpoint: endpoint {
+                       remote-endpoint = <&rsnd_endpoint>;
+                  };
+            };
+        };
+    };
-- 
2.43.0


