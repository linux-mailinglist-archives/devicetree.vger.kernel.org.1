Return-Path: <devicetree+bounces-87760-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C60F193AED4
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2024 11:22:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E994A1C232B4
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2024 09:22:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18EAB153835;
	Wed, 24 Jul 2024 09:21:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="Ha89aRMT"
X-Original-To: devicetree@vger.kernel.org
Received: from DUZPR83CU001.outbound.protection.outlook.com (mail-northeuropeazon11013065.outbound.protection.outlook.com [52.101.67.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B306C155333;
	Wed, 24 Jul 2024 09:21:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.67.65
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721812895; cv=fail; b=gLiLHlvNqBJPd/QrFgYjo18V2DTlg0Ek3cHCI5v0B1rQuJsXHu4e7WYQiXAZvRcS9QXVKZ0kyrYPjClOf0iYgHlZa/OYjEyPLMNNWZyHbZDY9mW9BwbPxma0FUEJbqnk90LSWPcVuDeNg7zzxy2VHfOQl2nCPZ0cIOwH+4kK+3Q=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721812895; c=relaxed/simple;
	bh=rvBO36KyUbQ2rrjW9L7mJcwTSnt7UscKEhEQQHDF3uA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 Content-Type:MIME-Version; b=YGsL9+25ySNfJy758tI95RajcecS7iCiSpqZjdBeCGooRCidfKb4bKObhVHEJLPpmoWOca51dEOSU5QS8w6XRF2l2jqA11RKvED9MRd6VF2/bAXALRZ42r2l45bhBKYPQx7HsjNOFmDdy1MS3ehLLaY4CkGhRf6lwoPDeaZ0fPc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=Ha89aRMT; arc=fail smtp.client-ip=52.101.67.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=u0ZdaSIYc0910/+MNnx6b/a9AVUhhoIbn2PFWNeVTLN9f8z/1AkWIf+A9iBdsRMGn236H7g23+wH3VRG904SrFd1BGHbbR5BQZMapBNQWhnmcrXGFQ6P+/uIdkUtaxbpVdB1iGVnLL2AIc4VLaNJzAuspTbZeHIJwiulBRvgcKYjozdoMlSrQwozxDcff2TUowDge4XJdCdw4b9L2gvOjtviQg0apu1j8rqEUIDsM/XaDjBtbc5cYKHfkCS4zKIOBzryrOklAbnrdV5WCNc1391zl8TKJ3xkBtN1Zgu5DjrKsFddAUgEBlesnpPio6GrFhCdsUndvl1Z7iaR/soqbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6szHHknNZnlVSF6Luci9HMpdIea/V+TdJHht25nx4W0=;
 b=HpiQKZsGXIcRif7m1u7Efxi0WTqicdXMOw62COeip2tzl1+QZ/5ImRLEOxKRTHLpknVoQpo+/Ei/mjWEbnKnbum8StR9u9C96eelgnFs4TAfX7vbqmXnNKq99HulJ730t0how8K1rwVZmzpa7woy87lLvu6Ks+D9+SO1O9Seg7DC8H/3FjLzs6Qk9+VD+krjpdDlPdVh7ucKL11armGvSthNP/5qLFvaW/v1BMBcFSQeKwlTMzgMngf8ooNdopgb+Vpgylg2cGfGbdL+t96LcdAsI9J/xU2yCXHF+2kH9BfWxQWnaCZyw/JkkWMforuz5uRjsiAkSdRYPHroSTa/7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6szHHknNZnlVSF6Luci9HMpdIea/V+TdJHht25nx4W0=;
 b=Ha89aRMTOj14RLKSbHbz646yXYc9REngYajeW2GCAkBBXG/hW+4AsLr7IbxMWjqMr/50JNdKNESm9EohWKVCWMOPHMpN+ZK9Y2A/ghEAXHCdy1/sgVokrGKRzwyY1i/JJNbe6Bk3YuXngpC5elEGeKEX2t7lx01FQkxo31DhdSZCLHYzAH1aadCSkYhx9S21pfMk69AdR2bfpP3so0CIyeWEB+eWeU6b+8h9NcZV3qqdPlYMY3hRb1RSwMvBOBaRAo5eWiIwFQ6x3P3eeEm+fWj2iMu3v5wjwW7EWprK4bKDR0vERT70rJirZhRrOAPIejZIlJnJsMYilZELq2WW+A==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by AS8PR04MB8040.eurprd04.prod.outlook.com (2603:10a6:20b:2a9::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.16; Wed, 24 Jul
 2024 09:21:29 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::d1ce:ea15:6648:6f90]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::d1ce:ea15:6648:6f90%2]) with mapi id 15.20.7784.017; Wed, 24 Jul 2024
 09:21:29 +0000
From: Liu Ying <victor.liu@nxp.com>
To: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: p.zabel@pengutronix.de,
	airlied@gmail.com,
	daniel@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	tglx@linutronix.de,
	vkoul@kernel.org,
	kishon@kernel.org,
	aisheng.dong@nxp.com,
	agx@sigxcpu.org,
	francesco@dolcini.it,
	frank.li@nxp.com
Subject: [PATCH v3 04/19] dt-bindings: display: imx: Add i.MX8qxp Display Controller pixel engine
Date: Wed, 24 Jul 2024 17:29:35 +0800
Message-Id: <20240724092950.752536-5-victor.liu@nxp.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20240724092950.752536-1-victor.liu@nxp.com>
References: <20240724092950.752536-1-victor.liu@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR01CA0193.apcprd01.prod.exchangelabs.com
 (2603:1096:4:189::18) To AM7PR04MB7046.eurprd04.prod.outlook.com
 (2603:10a6:20b:113::22)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM7PR04MB7046:EE_|AS8PR04MB8040:EE_
X-MS-Office365-Filtering-Correlation-Id: c40a0edd-d077-45a3-cc72-08dcabc1ffd8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|366016|376014|7416014|52116014|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?1TxCsFsK7NzZeLAV2ZEtR/kq4nlrSdcf0QMgdxOsZ/qtPNyjL/MMniSkbU10?=
 =?us-ascii?Q?NS8INW57voEYZ9Zn0pSpNP7YCz7QznfpIujg8K6rF4pCGqWRv13mdZ9sfATq?=
 =?us-ascii?Q?jH/I5/hK0VZW/zCjQx8409FfWjra+9mrAmb7eiNh5axTFvvDxmYca86GXLT6?=
 =?us-ascii?Q?WT7ZrEMyVQ11+KL6oY46Wsp53uIdxyhbn1yhO9lUtbrpr5BQUSEUyeUQvp0k?=
 =?us-ascii?Q?UsASpxk4HvSqkrXqBHIeyy8mAMn/MSLuKkYul65uGeW4TqX0+sWo2pZZqUI+?=
 =?us-ascii?Q?DZfgTc9b7dGriUvdCXrlk2prU38+nLorO4rBjRQWcxRamQn1+UpDQ4WzYfRh?=
 =?us-ascii?Q?oR9g+SNYKtlxYz+p1UDciLG+w8FjknLcgso3Po/WbELGpROJFfkycuYvDWc9?=
 =?us-ascii?Q?CamCiX5EGTZ2s9zVGMtyEDp+2u+Ofb34fWcjIC5ykV14PaTHpG8wmKkK9D2y?=
 =?us-ascii?Q?0q/WrWMlDR+wK5w6L1rD5eQQFdQarCv5w4gkFoKa+dG/IC3g/IcYFCw5iLjd?=
 =?us-ascii?Q?W19BqygzP01Btp1SyojxP654o4VRV7bqR5OLGEjT5mJmt/6MblbTVI3HsObh?=
 =?us-ascii?Q?lEZWsm/yLyZDg/HAH0ZOAWxhT67BSgleUHzFeITvPql9y6y/HlbXWbZ48J8o?=
 =?us-ascii?Q?pscNrfszxtzpFbAsePUHqActHyKA8aAJ6yID7L0+VVxliiGtAO7YoCQM2m+Z?=
 =?us-ascii?Q?SVK5ipPcID97iXV/stUlGD+owC69H8eOpN+wbZFU4AbbEgrJa56q8INSEAbf?=
 =?us-ascii?Q?4mvynJWf/0D2vWB3WqLAI7Mj+5b96e8olG/lsx9BAX+S+RT/YCDspPwZ0ToH?=
 =?us-ascii?Q?abUMOwC3Coe/oVHi97s380JvByx3154J/CbIb/CfJp39jjKaEBHYr391kNIA?=
 =?us-ascii?Q?5v6Icryiv7o/Sw8qfgzZNGhxXUu06pf02a+3efiz9a27Z/oRfUv3SohsmW+H?=
 =?us-ascii?Q?t+H8HFhJ7EN22KFadYunyHvPe4tGT/DodEVtTVKsxBuurr9WRNS/Kxp4uhP3?=
 =?us-ascii?Q?mPD8G4SQ8+2dCKIjrlHrzgFw8SVC9iAevOBoCxFKUO7iMWu0pCfKdcJ6eJur?=
 =?us-ascii?Q?j8Yn495kzcRDgMYbgDEphzYnTIvwbU3/WqEiJQb3ggIrPE/Misei0tBu/Vrx?=
 =?us-ascii?Q?Umqci1ym/VZl2DvdJQG0iS7tjkCJBniDp58GMk0wO7j3iqOzawI4XYl004XH?=
 =?us-ascii?Q?OmUBNIfbHHl4AcQfbUbLzeLu4aQV0V9/3vF6Pr6KbSCLGA90oTgSqEax8qMR?=
 =?us-ascii?Q?mNb70sCI+RU1IUfTdxvhuVPMZwfNJikR8HrnP8nEgYLyJJh1zwjwZXuKKNV+?=
 =?us-ascii?Q?TSUFWJQmqyCRc/aorY+fSR40vtSgMFJEwzJkhzymDiksiQ=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR04MB7046.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(7416014)(52116014)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?pvqhD+tk/VptEZRdYEiA6zRwNuo6LK0jb5AA8lkQXFaMmIzUlu+RwdkT1V+V?=
 =?us-ascii?Q?ZNFb9MXUGdPUdt4dWU2DoRp94qu71BDXB1Nexv8EuELpkv4sEgpNYhnUFCix?=
 =?us-ascii?Q?JjGlvXEYWZr0WELCx/Sr3ZJ9WW3Xmyvb2r7UYADWnQssMz+/bNaE5sN6oyBo?=
 =?us-ascii?Q?aYMUADLDcRcT0o/fMsXO3ZTfzv8puL9LSPqairfk+qcF2ZntsKfI1p9R0gfo?=
 =?us-ascii?Q?Bn4/iuj7xrD+zpqyKDwq4suAb9HWUQlPm/O9Cv7T4QyVF8rPY3sloPf0GuMJ?=
 =?us-ascii?Q?XL4CHJvWvZTWyOKhaTv6ZTc9/jmsX2yMv3hIxJACH8i/sOXWF09BpICB5PnE?=
 =?us-ascii?Q?V575vDYtr6fMnDFxW+dXxAfg++ec2gsfDDDNoMIIxXNOWYoQs2+JM0XKc/9L?=
 =?us-ascii?Q?OmiFhOjgpwZi3J1kHT830lfr3b7Y8nRKBP8VaJ6/aPHMA49V8lxIunkmtFYB?=
 =?us-ascii?Q?qMHFUl3jDs/WgMeajMonp2k4PsEt0xAEIGC3uH4xqy0RMTEUiklaIK9wLcVf?=
 =?us-ascii?Q?u2oogtlbKz4vNomAEnYxCOCSBRt7ZXNJbdCqfCZzw1+gDWJ9Kne6LcDiqNec?=
 =?us-ascii?Q?9y/a2Zw4FBAN4TJ5DHhDE23+r7kOWiFdkZqSOn0EjrVpqyDE7i4kFONFA6Mo?=
 =?us-ascii?Q?wzouS7WOhRsyiqIocp+1CJcbe1XByBwF8H8PXNql7dz6J2Vw4QfAxO5Vlqc4?=
 =?us-ascii?Q?BQRTe31Auk6PAUbtpWos3STk9kmt8E1xDmtEqvr/TSFwBk9P7hqnyhuS1ncA?=
 =?us-ascii?Q?/J3Mh2x8RE2brMMFi6VZk8nc0UYzJVsDhC+cMIMlhIjQgXTNCLgWDNvSvEnG?=
 =?us-ascii?Q?1Vzi0ow20WmvRnOcNPtxplyALoJ+N/KFukStaMN4Kc9xyzpUnOh/SRDwbTiz?=
 =?us-ascii?Q?eT6KW4EA8NAPVZvBxZTFbcOJTZ0ivqAwN73eR8TvBB/A0A/WKq1IrnQcNLf6?=
 =?us-ascii?Q?qQ3ku937TRBXtIZ7HdxKKY04d1IYDyXcAcHBgn7AYYLjXE4XnemmuxGE0Yob?=
 =?us-ascii?Q?VOvFUFca02evcYcIqMq33Rj5FpR/pjRL7vCKbZdYDpnXbTK4CXvOqTSo+dDE?=
 =?us-ascii?Q?+WjhCPjCMLtMd/FYcxVTttELN7ZsX9xOTBqk9hoZanfXdzZQ83+0uriZNERf?=
 =?us-ascii?Q?kQXp7fIUAqDKJgCNT3rYS6rpZSqXScfWHNPlrqvV5w4Pdqrk+dC6532+pSr9?=
 =?us-ascii?Q?NFQB6ATUqv+UXveWFV6CmwMZUrHvn5jEMIrvCrWJL1+xCe+G2nTbC3s/YZCX?=
 =?us-ascii?Q?DahzqVKW7lf/gOryV57qTnkwaNNJwI1Hh4W57FpQiI3292KbVXh14VBp5uti?=
 =?us-ascii?Q?J/G+GI3w/Fsy0YrUupyy6VNi/ucuRc6ds8tmZgSFWsTkzgzNMftGUHWQhoWn?=
 =?us-ascii?Q?chTBl3ZLJSx6x//k0QkGaJyoH+H+IFX2xuuDj7AYOsfKupA0vLAFOoMtKcTM?=
 =?us-ascii?Q?KS0qNsiAq+GEOzVbRHLUCNzT8Ue9yllfGRQn6MQDc32lzshJvrgFkJvvM0op?=
 =?us-ascii?Q?FdlbSmMbZudjjV+TdNtJd4Y6/7rqmBZkEcI41cb2sL7+1T7EjTCPcUkvtYYC?=
 =?us-ascii?Q?35nPUlj4OGVl5eLluGZID9CXipbbzsH00XN9PXbs?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c40a0edd-d077-45a3-cc72-08dcabc1ffd8
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jul 2024 09:21:29.1205
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vaP87UcHyGx9pBOeokYBj5VEIn6MaWSrb2rlj3bMHkZHARlmRSf8edZZmxkdpkD48h+Xoc9F1c+JSJFjp9hXbw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8040

i.MX8qxp Display Controller pixel engine consists of all processing units
that operate in the AXI bus clock domain.  Command sequencer and interrupt
controller of the Display Controller work with AXI bus clock, but they are
not in pixel engine.

Signed-off-by: Liu Ying <victor.liu@nxp.com>
---
v3:
* No change.

v2:
* Drop fsl,dc-*-id DT properties from example. (Krzysztof)
* Fix register range sizes in example.

 .../imx/fsl,imx8qxp-dc-pixel-engine.yaml      | 250 ++++++++++++++++++
 1 file changed, 250 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc-pixel-engine.yaml

diff --git a/Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc-pixel-engine.yaml b/Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc-pixel-engine.yaml
new file mode 100644
index 000000000000..633443a6cc38
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc-pixel-engine.yaml
@@ -0,0 +1,250 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/imx/fsl,imx8qxp-dc-pixel-engine.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale i.MX8qxp Display Controller Pixel Engine
+
+description:
+  All Processing Units that operate in the AXI bus clock domain. Pixel
+  pipelines have the ability to stall when a destination is busy. Implements
+  all communication to memory resources and most of the image processing
+  functions. Interconnection of Processing Units is re-configurable.
+
+maintainers:
+  - Liu Ying <victor.liu@nxp.com>
+
+properties:
+  compatible:
+    const: fsl,imx8qxp-dc-pixel-engine
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 1
+
+  ranges: true
+
+patternProperties:
+  "^blit-engine@[0-9a-f]+$":
+    type: object
+    additionalProperties: true
+
+    properties:
+      compatible:
+        const: fsl,imx8qxp-dc-blit-engine
+
+  "^constframe@[0-9a-f]+$":
+    type: object
+    additionalProperties: true
+
+    properties:
+      compatible:
+        const: fsl,imx8qxp-dc-constframe
+
+  "^extdst@[0-9a-f]+$":
+    type: object
+    additionalProperties: true
+
+    properties:
+      compatible:
+        const: fsl,imx8qxp-dc-extdst
+
+  "^fetchdecode@[0-9a-f]+$":
+    type: object
+    additionalProperties: true
+
+    properties:
+      compatible:
+        const: fsl,imx8qxp-dc-fetchdecode
+
+  "^fetcheco@[0-9a-f]+$":
+    type: object
+    additionalProperties: true
+
+    properties:
+      compatible:
+        const: fsl,imx8qxp-dc-fetcheco
+
+  "^fetchlayer@[0-9a-f]+$":
+    type: object
+    additionalProperties: true
+
+    properties:
+      compatible:
+        const: fsl,imx8qxp-dc-fetchlayer
+
+  "^fetchwarp@[0-9a-f]+$":
+    type: object
+    additionalProperties: true
+
+    properties:
+      compatible:
+        const: fsl,imx8qxp-dc-fetchwarp
+
+  "^hscaler@[0-9a-f]+$":
+    type: object
+    additionalProperties: true
+
+    properties:
+      compatible:
+        const: fsl,imx8qxp-dc-hscaler
+
+  "^layerblend@[0-9a-f]+$":
+    type: object
+    additionalProperties: true
+
+    properties:
+      compatible:
+        const: fsl,imx8qxp-dc-layerblend
+
+  "^matrix@[0-9a-f]+$":
+    type: object
+    additionalProperties: true
+
+    properties:
+      compatible:
+        const: fsl,imx8qxp-dc-matrix
+
+  "^safety@[0-9a-f]+$":
+    type: object
+    additionalProperties: true
+
+    properties:
+      compatible:
+        const: fsl,imx8qxp-dc-safety
+
+  "^vscaler@[0-9a-f]+$":
+    type: object
+    additionalProperties: true
+
+    properties:
+      compatible:
+        const: fsl,imx8qxp-dc-vscaler
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - "#address-cells"
+  - "#size-cells"
+  - ranges
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx8-lpcg.h>
+
+    pixel-engine@56180800 {
+        compatible = "fsl,imx8qxp-dc-pixel-engine";
+        reg = <0x56180800 0xac00>;
+        clocks = <&dc0_lpcg IMX_LPCG_CLK_5>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+        ranges;
+
+        constframe@56180960 {
+            compatible = "fsl,imx8qxp-dc-constframe";
+            reg = <0x56180960 0xc>, <0x56184400 0x20>;
+            reg-names = "pec", "cfg";
+        };
+
+        extdst@56180980 {
+            compatible = "fsl,imx8qxp-dc-extdst";
+            reg = <0x56180980 0x1c>, <0x56184800 0x28>;
+            reg-names = "pec", "cfg";
+            interrupt-parent = <&dc0_intc>;
+            interrupts = <3>, <4>, <5>;
+            interrupt-names = "shdload", "framecomplete", "seqcomplete";
+        };
+
+        constframe@561809a0 {
+            compatible = "fsl,imx8qxp-dc-constframe";
+            reg = <0x561809a0 0xc>, <0x56184c00 0x20>;
+            reg-names = "pec", "cfg";
+        };
+
+        extdst@561809c0 {
+            compatible = "fsl,imx8qxp-dc-extdst";
+            reg = <0x561809c0 0x1c>, <0x56185000 0x28>;
+            reg-names = "pec", "cfg";
+            interrupt-parent = <&dc0_intc>;
+            interrupts = <6>, <7>, <8>;
+            interrupt-names = "shdload", "framecomplete", "seqcomplete";
+        };
+
+        constframe@561809e0 {
+            compatible = "fsl,imx8qxp-dc-constframe";
+            reg = <0x561809e0 0xc>, <0x56185400 0x20>;
+            reg-names = "pec", "cfg";
+        };
+
+        extdst@56180a00 {
+            compatible = "fsl,imx8qxp-dc-extdst";
+            reg = <0x56180a00 0x1c>, <0x56185800 0x28>;
+            reg-names = "pec", "cfg";
+            interrupt-parent = <&dc0_intc>;
+            interrupts = <9>, <10>, <11>;
+            interrupt-names = "shdload", "framecomplete", "seqcomplete";
+        };
+
+        constframe@56180a20 {
+            compatible = "fsl,imx8qxp-dc-constframe";
+            reg = <0x56180a20 0xc>, <0x56185c00 0x20>;
+            reg-names = "pec", "cfg";
+        };
+
+        extdst@56180a40 {
+            compatible = "fsl,imx8qxp-dc-extdst";
+            reg = <0x56180a40 0x1c>, <0x56186000 0x28>;
+            reg-names = "pec", "cfg";
+            interrupt-parent = <&dc0_intc>;
+            interrupts = <12>, <13>, <14>;
+            interrupt-names = "shdload", "framecomplete", "seqcomplete";
+        };
+
+        fetchwarp@56180a60 {
+            compatible = "fsl,imx8qxp-dc-fetchwarp";
+            reg = <0x56180a60 0x10>, <0x56186400 0x190>;
+            reg-names = "pec", "cfg";
+        };
+
+        fetchlayer@56180ac0 {
+            compatible = "fsl,imx8qxp-dc-fetchlayer";
+            reg = <0x56180ac0 0xc>, <0x56188400 0x404>;
+            reg-names = "pec", "cfg";
+        };
+
+        layerblend@56180ba0 {
+            compatible = "fsl,imx8qxp-dc-layerblend";
+            reg = <0x56180ba0 0x10>, <0x5618a400 0x20>;
+            reg-names = "pec", "cfg";
+        };
+
+        layerblend@56180bc0 {
+            compatible = "fsl,imx8qxp-dc-layerblend";
+            reg = <0x56180bc0 0x10>, <0x5618a800 0x20>;
+            reg-names = "pec", "cfg";
+        };
+
+        layerblend@56180be0 {
+            compatible = "fsl,imx8qxp-dc-layerblend";
+            reg = <0x56180be0 0x10>, <0x5618ac00 0x20>;
+            reg-names = "pec", "cfg";
+        };
+
+        layerblend@56180c00 {
+            compatible = "fsl,imx8qxp-dc-layerblend";
+            reg = <0x56180c00 0x10>, <0x5618b000 0x20>;
+            reg-names = "pec", "cfg";
+        };
+    };
-- 
2.34.1


