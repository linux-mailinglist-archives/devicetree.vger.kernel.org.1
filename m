Return-Path: <devicetree+bounces-128393-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EBF29E89D0
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 04:41:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 59957280FE7
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 03:41:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64BA516630A;
	Mon,  9 Dec 2024 03:40:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="ed0xSFcT"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (mail-am6eur05on2046.outbound.protection.outlook.com [40.107.22.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 643CD74068;
	Mon,  9 Dec 2024 03:40:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.22.46
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733715628; cv=fail; b=UNUkkBbm1elJuqbuVX2Q0G3TQgCXgS6QBuA+D+cZRLrklCpVe77CFYMLmr80yCIO8VBgRpBDLlsQhHPr6vhZF51kfg2XHudxxgoEbnibUOLwMmuvpQoOyZyCYltbDrDU69k+IwhK2B4J2pQ/Sss5q4HKt5XDU9WxWDwWGSFDdm0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733715628; c=relaxed/simple;
	bh=mWO54Nqf+HIt/ZOMJ3RwMT4J127zXZMrxV6nxDhLv4A=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 Content-Type:MIME-Version; b=lMry60m40M1+s2mamxRs3CFu5XpTfsFoC6rNezs802KldUH2k79kku5j28AtHKdPoUmOOA1MXtX6E7zint+ZNRHgcDzNTAKkw0QiJ6ZxZf92EjBEaT8PVhCGaxaK/fS59YnocdyoI8fv4DkjeAE9w0ik/203TmoS32Zz+kJikY0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=ed0xSFcT; arc=fail smtp.client-ip=40.107.22.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AkNzsFBlgsKQqM9Z4xbuMuBohmQ6X8e6rRNBxC8fLRsUyDWfyXKzhqOQYwRe5YEaGPZKYNV+UnAGPihJZwqauSLsnQmHDoo6GpxVfEVDmHyRiikrMm2/R9dstfB1bLALaoL5xON6InNjSSzIar0/NaveEBL0gSUtIx6vIaPztu+gyj+Wl60u7XYdloFOts1I7KAUD4H6wZOzUyIJuBj01xCbWoeczlaaAlZs3YHj/U83emiRhjHk+sLqEHv5/68Vsi8MHpDkmjJ9+TyBJk4ZenNr6+jKq3WCTZYYU5Bt9N900r6jTUfjANmjwTPGLm5TL/6fGFokYvh/VIBu14RUCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XQ1hggjcv2U3T/31WtqTL1UF47x6fNmUzBN0+3pkv/c=;
 b=DDpGS8n86599vyb31p7e8aL4dKTfTCsVH5EIMFUUg34qIRG6nqQZdJzjJHLScYfySzCRRnTtMrTRjVRe39pq2A61Og98LHRGtTti23iAZ4Gs5qAtMiHwbC7l2Xeyq1PCu4otLGbW4DBP1p/P7H8bioTkbkPkm3QW7nJ3dpnNJaviTPwoHcDJuPVVeaHrkogD0ITk4W7N5lvOZxaBqHyd9qtqTguaqOyuYhRVOvOHQjSaaaYTlgNCsdll8VJBurat0JpzRrPaPCBUMhoVWZlgihlAKwR3E6p6Ey+pPb2Q+v3wV8TM6gAI4pz7svmq0SPqp30QzhbPBOoqzAAT2ZdzQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XQ1hggjcv2U3T/31WtqTL1UF47x6fNmUzBN0+3pkv/c=;
 b=ed0xSFcT+00SsvXEyDFpI4+Dm1mvC6Fk8uzlhlNUaqPoQ28zqeGN840w3jlFcYPEnh0V9rwDrV80pGL29pwgtPMmNqDIvf5y4AY7+I3sV1v//KuuzVtkmGOfcqDxBOp4Mfvfn9NucO6YW76tsHymWxuH11J40pCbmfdM2jYNPqZny/NM0dumPEZxDs8ePXy57dxtv5qMXrkEOSzzU4GM+uar4qOoAgjw6GiI76kGXOmSATt0eZM0ZaxyQDahHJxqNRMqB1WzX2PFEvRuqpsnpIKgCd3tggbQ41HsMqguPjnizF+grnqt7CyUgrjESG0nRluO1bEceq7QChiftq0WIw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by VI0PR04MB10212.eurprd04.prod.outlook.com (2603:10a6:800:243::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.18; Mon, 9 Dec
 2024 03:40:22 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::d1ce:ea15:6648:6f90]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::d1ce:ea15:6648:6f90%6]) with mapi id 15.20.8230.016; Mon, 9 Dec 2024
 03:40:22 +0000
From: Liu Ying <victor.liu@nxp.com>
To: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: p.zabel@pengutronix.de,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
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
	frank.li@nxp.com,
	dmitry.baryshkov@linaro.org,
	u.kleine-koenig@baylibre.com
Subject: [PATCH v6 06/19] dt-bindings: display: imx: Add i.MX8qxp Display Controller command sequencer
Date: Mon,  9 Dec 2024 11:39:10 +0800
Message-Id: <20241209033923.3009629-7-victor.liu@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241209033923.3009629-1-victor.liu@nxp.com>
References: <20241209033923.3009629-1-victor.liu@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SGXP274CA0006.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b8::18)
 To AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM7PR04MB7046:EE_|VI0PR04MB10212:EE_
X-MS-Office365-Filtering-Correlation-Id: 7e10a7b9-eb15-4332-cf27-08dd180335ba
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|1800799024|7416014|376014|52116014|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?HyxeL7pNqXycHdaN8Fc7MZgkToGARqwfe0eJUgVH+FUBoDAx4amXinRoEpX0?=
 =?us-ascii?Q?5Rom4RvxzvrBnErpF4IvmQo2oFiFfE3TmUc/Ny/fRy30JFTk3/CmC/6Y+tZD?=
 =?us-ascii?Q?QH7WN/O6TdG7w0XJeMObN9GoeY8RWTDvhl0JqsDKGu+ngNC7u+KesaoOyWrv?=
 =?us-ascii?Q?uh2wcE7i1z5evO2sXLs+4fLbt7139elk5noumJtWA0UOfksMwbO4pArrCq6Q?=
 =?us-ascii?Q?Xmxql50pIYblfq8m8yXkuarFd7J9mcjXd+SAvVZh5T1Sxb0vpmbeJrNftdJd?=
 =?us-ascii?Q?k1l/jfXFvxLtyb6se44wsHjfJp4Md7it9qa+FFwaalabx9HzYgT7HuOWILhB?=
 =?us-ascii?Q?97+RBn0cA2rvLANgWFqXymu6YQyjPqbvIIuVN3ybLMT+A5RXkKDWmT2RkBLA?=
 =?us-ascii?Q?dNJM+unaEUtkrSKVmhUIfQiFPxq38mUm9PkrLXo0XqFhmV4uZvgOLn3+MF5g?=
 =?us-ascii?Q?mxyk67KJY4Ub2JBOxJCfYfHzOblVJU97a6BAgL0zR9TH9MHRhsvrFjler2aK?=
 =?us-ascii?Q?gRIUoU7ScecTpa7dID3riXN5ClN501LKe1+bh4P0WNEjDeK4jV1SJL9xZOY7?=
 =?us-ascii?Q?1PH/64BJZSDZV1tX4wO201HNFPXmOShxhqXMPVPHTohGcyRAj2nwU4m+bTtO?=
 =?us-ascii?Q?/PzLHkr0lBRr6OJlJY/nZo6hStOQ3z/6jnyl2iBn09+2uvtvmm1RNZ5rK8Gk?=
 =?us-ascii?Q?D64fMQ0V3l3vidBvbJLaVtEM0yR/PBoJDkop9caUTZ0vRzKujssY+BW4RwDY?=
 =?us-ascii?Q?GG0coBsHHebSf8O2FL0MP44bIhzo5urnFpHYC/EiG7R2vGagfgp9q+F3TWr7?=
 =?us-ascii?Q?cQZ/fNglPn1kgffqMDTkQVkGeu57gUqrUlSlc/LI42+ugCV8OXajnCSw1gWq?=
 =?us-ascii?Q?wqk/Bqpluv6LcJiTIUKKR/u+voU/cz5y4mTtlZLLh/lT0mbXF7qox6ZczUo+?=
 =?us-ascii?Q?XLAUdVtx3fgh1SRF7Ir9wO23/V5ehQQLXGRwLlLq9qN8IoRw9G4Fc6rXZ6zK?=
 =?us-ascii?Q?XXdP6k2XbVZGKhYFkdhnI6kHTe9Djks8Zt0rqpgXPgheY6mTyPZ7fCJpZK03?=
 =?us-ascii?Q?slTobbDgrj9mklSFwPgEQZgDRlVKVOAMjfgmpbj9i4EPToKKr6v+5n6eMzUb?=
 =?us-ascii?Q?FjdEDDMnp9kaWJ+mXUzCRJceh1HSIyH0C9bATTeL9jKmzEoXkJSA62URSLMT?=
 =?us-ascii?Q?qsJbYUyEo50KwcCvmzSeN1MZAXWNP3UAtxBwTmZfPfI0GbYapS73Ply5WnWI?=
 =?us-ascii?Q?JbIrP+6S3D+8lqs3VDfDkB3eSo3I5vQ+jBnqoiADsptIyHaMsXsI6l0uTXlS?=
 =?us-ascii?Q?cd1Qf0X4wzkyWaJ5LhcHPBJ0SQ7rm62rpjLyRx7tXSWnHA=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR04MB7046.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(7416014)(376014)(52116014)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?FYDAvcEz8fSiTjJfLSmtPIjmW7rBlSwraTO+6F/tR+RJi9bIHjjitCjJwgXY?=
 =?us-ascii?Q?lbrUwqCYglELZ1n0tndH0IR667JGlLbTOKEceT1s3YzOxomX2niaiiPweFhK?=
 =?us-ascii?Q?quuw8ag9keZBKjW9VKC14BmQfikJFbn0sk07EUGW8mGqE09AZYe17RkpXWTy?=
 =?us-ascii?Q?PM8p6uHJOdqhbeRJKjZmF46+UwGpYzQnlGqjxbGkONoLfBBvbfGM8RMlkxxb?=
 =?us-ascii?Q?wIYUEgvlW0EamDCgL7c+GrtDx9utOolGkQKBIOUCGKQ/SpDbybWkzHMYhmiL?=
 =?us-ascii?Q?fBaYInIIWVv86mK/B3dnn1x1/ftzViH9wj3g9GCmrRbz0lpEkZvHn6t/ZRSI?=
 =?us-ascii?Q?Ui87wl9ihl+wQyRaDf3N7WQ8onY5IRsnOtLgjPE/yH4O0lYm8pt6MlezEhcp?=
 =?us-ascii?Q?Z6OscK5lLxFZihCEkEsUcPO4wxRyfFG2PRCzNPN8yTO//n70r8o1HCcH63M2?=
 =?us-ascii?Q?rm/j0+mrQxugiBFlw1J4/lYyuVLbYWjh6cF5PALGKHPtl+jmomWuJCiDU/CB?=
 =?us-ascii?Q?NyxDCfhJovd3t9lJYQilV7a4yMIRCgUD7eS8Yd+Ev68QzGDZMYNnQqci+yWu?=
 =?us-ascii?Q?caorBwx+slqJQsOqSMeafot/eKIUy6z37NNCnKsNz8qHmQcJzs7Y29JmpjlQ?=
 =?us-ascii?Q?vL6oYCGEJrKkUqIlyfR8/BGhn8EwYz7lFNdSEtZZvAI8hj0THBS6pkMCsYYb?=
 =?us-ascii?Q?K5CIISiSuY/VDlPUBoS83ODeiALq4i7X6EByZYwdokC+v3w6v/2UpeiUxGAE?=
 =?us-ascii?Q?TGqSrsYoficZPAFKxQAOQ6aDORRgk+t/Hlx5ceRqzh6S2FMSvbKIPteJDr+/?=
 =?us-ascii?Q?3Aua+lBTL9goaPl9j6fLW5CL2PLEk9IAOK3EmZteR7IS7VM4xHz7ZxfBsC4L?=
 =?us-ascii?Q?GTb9FbXTCrbgbvGaeS5T13CLoj2fTF+Pd3SBOH30gf0x4jyIYfJmc0UpiT5D?=
 =?us-ascii?Q?OX29Wba+H/iF1tLFntiM8gF5tmoU+5CBmGlCq4dpDmrydeqzy6PZEphUxvJ0?=
 =?us-ascii?Q?+MHp2Wx2kP5TNoYx3GwXhdyWgAAWdFeEnYBIk4CcTsKHX8vb6wmrlNq+blLA?=
 =?us-ascii?Q?bIXQY0fEv0cW0xoj7CYCMldWFW8Na8b0q4Wi/JpASgoMZDLACKiEhTMUOhuL?=
 =?us-ascii?Q?rHyZB8r/kMb0GWje/vyJR85MoXKrEL49WixbwOex8FWjSnOKFBBZ1+psCz/Z?=
 =?us-ascii?Q?TFIIMwLcFyn9QMgXigVSQbY7W7Jzj41Pzz7s/CDPv092Gd2U5JmUjrvrv25z?=
 =?us-ascii?Q?IOXG+Zcd3czb5dmiG5pFWyri3nyEqkM5WpZZ3/4jYDx2LZjPsXy+8Y/M4VPa?=
 =?us-ascii?Q?Kr5zI3dx/h67/qW9JkFwj1e8/neYWnN63KGfCtfmQ1bxN/BUwhaXvuBvV+pk?=
 =?us-ascii?Q?2rrHpddOdfLzFraCAH+IH/2Md4lZDWN/Omdmj6nz33ghxslsi0HUMO3OvFjJ?=
 =?us-ascii?Q?28NcgwQAv1Cofn5iSwXbY//yiwF7fXMRx28LPWrX3P0YdwIPs7Hy5Gn2SSRS?=
 =?us-ascii?Q?F9uI55BJMprpoD+kJs3AQA8z2XoI45m8aQJ/WeZ0yyb1eS4+M39Y82JBDxi1?=
 =?us-ascii?Q?HomsdBrjqboAkinh9/L6ZqfdEsn64zJr6u5dxPE1?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e10a7b9-eb15-4332-cf27-08dd180335ba
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Dec 2024 03:40:22.4521
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: P/84o4Sh1jvQLq8/tu7JGS/bK7tOnuFO+d1692O0ocBt9SkjLQtSJnN6tSRE3Ca59hxV5Ghzaq3xlxxO0Te4zg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR04MB10212

i.MX8qxp Display Controller contains a command sequencer is designed to
autonomously process command lists.

Signed-off-by: Liu Ying <victor.liu@nxp.com>
---
v6:
* No change.

v5:
* No change.

v4:
* Replace "fsl,iram" property with standard "sram" property. (Rob)

v3:
* New patch. (Rob)

 .../imx/fsl,imx8qxp-dc-command-sequencer.yaml | 67 +++++++++++++++++++
 1 file changed, 67 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc-command-sequencer.yaml

diff --git a/Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc-command-sequencer.yaml b/Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc-command-sequencer.yaml
new file mode 100644
index 000000000000..27118f4c0d28
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc-command-sequencer.yaml
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/imx/fsl,imx8qxp-dc-command-sequencer.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale i.MX8qxp Display Controller Command Sequencer
+
+description: |
+  The Command Sequencer is designed to autonomously process command lists.
+  By that it can load setups into the DC configuration and synchronize to
+  hardware events.  This releases a system's CPU from workload, because it
+  does not need to wait for certain events.  Also it simplifies SW architecture,
+  because no interrupt handlers are required.  Setups are read via AXI bus,
+  while write access to configuration registers occurs directly via an internal
+  bus.  This saves bandwidth for the AXI interconnect and improves the system
+  architecture in terms of safety aspects.
+
+maintainers:
+  - Liu Ying <victor.liu@nxp.com>
+
+properties:
+  compatible:
+    const: fsl,imx8qxp-dc-command-sequencer
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 5
+
+  interrupt-names:
+    items:
+      - const: error
+      - const: sw0
+      - const: sw1
+      - const: sw2
+      - const: sw3
+
+  sram:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: phandle pointing to the mmio-sram device node
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - interrupts
+  - interrupt-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx8-lpcg.h>
+
+    command-sequencer@56180400 {
+        compatible = "fsl,imx8qxp-dc-command-sequencer";
+        reg = <0x56180400 0x1a4>;
+        clocks = <&dc0_lpcg IMX_LPCG_CLK_5>;
+        interrupt-parent = <&dc0_intc>;
+        interrupts = <36>, <37>, <38>, <39>, <40>;
+        interrupt-names = "error", "sw0", "sw1", "sw2", "sw3";
+    };
-- 
2.34.1


