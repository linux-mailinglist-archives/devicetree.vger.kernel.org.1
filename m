Return-Path: <devicetree+bounces-131661-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 58A4B9F44A1
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 07:59:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A123916E83C
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 06:59:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FC991DFE29;
	Tue, 17 Dec 2024 06:54:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="FconiAna"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2052.outbound.protection.outlook.com [40.107.20.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FA04189521;
	Tue, 17 Dec 2024 06:54:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.20.52
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734418442; cv=fail; b=BJ0KkQdotuZABnWPG0RvZqhiKa5RS0uc4T85v5WbymvT6Ghx1Beb/keCAc8x18bgfs6YMVRY2eJrGnMd5Ibvb9VFlmULGkJwmR1sO6grPQW252G4wG3Hx16jQ0JBV16FEKxpnsJz5Y7whdRHR/iC5Pg3L9ATx6L/CZjBfW09qYw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734418442; c=relaxed/simple;
	bh=doGy/D+8znqBxVpB0j8XnLhiEwC3xMpx3edU4eRfKzw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 Content-Type:MIME-Version; b=FOjyw/rXzg8R3AUjwGKN4t08YXdtMIoPvuy5+6Szc6l04HxPF3jhMgAhQwFiB5VV4G6wRXSRtTq+HtfkJzWU6s6ITqA/W4QoKW8S5cqmdMDLSeO9N1NILePymi1SLbnQ74xqRcfMuJJswiMkzBVDxu+s4BNmSd84SPKt/DA2czQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=FconiAna; arc=fail smtp.client-ip=40.107.20.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lrfYD2ieJyaDwr8at2NkLQNuLq3WOWC0ECrYQTyR+JFwvmo8agWmvPXso0uWVuUBQxxna4nsJTbEObVj2XJxbRj/qtUwMwPdEXQbjT2YfF42YT6KYcg84bNabiAgMxa0xYHWviRVvtzeL/V3y/9YNzCZXEmLSfCXlrc+8G6Fn0PdRdYOr/JSi+o4uxe/x/t6aJeVPEBgx73lORoO2yJRSFtPPuZwULF1wbflAKAIrOTisMZ2DBPCyqSDwNIxYYrP90iGSAswnVB0rfQCWMYfB3LktdJ8e28b+qwlctgg52lx3CyP5RxFzC6hYAvs2mXvU5vVR1/eZ3x3zs2SxCxGUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GN+T6Tj+35TBsXZnRZ+WWRTJmJgrzB+4NdM2apX6ZNo=;
 b=Fns/iWLZ0s/MKPI2kdUlVj2W80fU0/iGzJqBRN5uHrbPW+cnpjcnp7gnNIkjzAYd970sIIV9u3Djwg/vKEu3WEWZHS4JxTCoQNgRT3ilp7sPpUDGE8XFIXht9yoLQT24XxI25FS8zDCq12fqKdSEcAWCnuoY+0MscyOrvzyEYK2rVzckeqWpOcof8ItceuBawIyk0tlvN7X+1AdTa5c83s1eP7BQJjAugtp5hYYagl9R/cp5dCy/pVSmRdaIdFnGR4r8B2YC51b3RGKGVDnq4Nw0RheqvZC9ippmOVXVIgknED6o/LtGQVr4jva6tcQkLwFNndcGuGCD9boEGxG5MQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GN+T6Tj+35TBsXZnRZ+WWRTJmJgrzB+4NdM2apX6ZNo=;
 b=FconiAnausLC5kwTUDCNuctdQc4M+ScAZyqL9nwgt+e+tJ/Js53mLhZzKgsd9jURtQVoUbgF1M55Di2TIjjeZ14rI445DJDQJpB7uMvc2+ZozEB+ArNZ72U7juVU2FmrHCCMtvo9tvVKagAKkWT1a86HZuHZiePsr0aqeNeHgtkEMomGJj8uer3gYoHfq+YDPNT48c/Qa3Iam/cUz+RMyzXRVuFDVWx4zc/4apqSPX7D3LyRPB1Fjq2xQu0qnOFerNWOhqBfiByrANpX6PZ6hgnh3Bb/iP7dbRTtttOPVOpN4hlA4igW1QOJDZLSj1DgSN6CzYVVeAVc6Cdn+3GqiQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PAXPR04MB9448.eurprd04.prod.outlook.com (2603:10a6:102:2b1::21)
 by AS8PR04MB9009.eurprd04.prod.outlook.com (2603:10a6:20b:42d::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.21; Tue, 17 Dec
 2024 06:53:59 +0000
Received: from PAXPR04MB9448.eurprd04.prod.outlook.com
 ([fe80::51ae:5f12:9744:1abc]) by PAXPR04MB9448.eurprd04.prod.outlook.com
 ([fe80::51ae:5f12:9744:1abc%2]) with mapi id 15.20.8251.015; Tue, 17 Dec 2024
 06:53:59 +0000
From: Sandor Yu <Sandor.yu@nxp.com>
To: dmitry.baryshkov@linaro.org,
	andrzej.hajda@intel.com,
	neil.armstrong@linaro.org,
	Laurent.pinchart@ideasonboard.com,
	jonas@kwiboo.se,
	jernej.skrabec@gmail.com,
	airlied@gmail.com,
	daniel@ffwll.ch,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	festevam@gmail.com,
	vkoul@kernel.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	mripard@kernel.org
Cc: kernel@pengutronix.de,
	linux-imx@nxp.com,
	Sandor.yu@nxp.com,
	oliver.brown@nxp.com,
	alexander.stein@ew.tq-group.com,
	sam@ravnborg.org,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v20 6/9] dt-bindings: phy: Add Freescale iMX8MQ DP and HDMI PHY
Date: Tue, 17 Dec 2024 14:51:48 +0800
Message-Id: <1f01892a4e462d451a21ddcb4b114283d998cd1b.1734340233.git.Sandor.yu@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1734340233.git.Sandor.yu@nxp.com>
References: <cover.1734340233.git.Sandor.yu@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR04CA0214.apcprd04.prod.outlook.com
 (2603:1096:4:187::17) To PAXPR04MB9448.eurprd04.prod.outlook.com
 (2603:10a6:102:2b1::21)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR04MB9448:EE_|AS8PR04MB9009:EE_
X-MS-Office365-Filtering-Correlation-Id: 7819dfd6-f9ba-470e-c8b4-08dd1e679561
X-LD-Processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
 BCL:0;ARA:13230040|52116014|366016|7416014|376014|1800799024|38350700014|921020;
X-Microsoft-Antispam-Message-Info:
 =?us-ascii?Q?QtsoP0dnGVyrEjvMyXkfiG1vyEXvl4Y2y9jZIiQegZajTIpeZahW5lPtKRKL?=
 =?us-ascii?Q?yTbhRTrdKYNke8ZOzemKUdcIZI6BqM18qnPdTxOw/xWlOySZfmQC8QDY0LAE?=
 =?us-ascii?Q?2L1H1LB66efaAlM5BLL2Jat92mnCkzOEFoRiUUnl/uyk8vHOU1lEyGtfTsmr?=
 =?us-ascii?Q?jCt8ORwm2bPWnwf2UeWX9PZyH1hHV3nq0V4khHWf4fZ0Cp5/exy9o47rCL4o?=
 =?us-ascii?Q?cG+xi/Ub7rvT//oOLlQqghFAV/FINEWuqxpUsYDYj6GSleEFhYc8V87LAegn?=
 =?us-ascii?Q?LcA1YlhycXs4DqA4sCXTVLHukQ38T4kacA5bWqT5pyruuxhMHfAKHBLu9AQG?=
 =?us-ascii?Q?KdaUB4evhbDhj3lYYdjfOP+a8NAj9d2/1+BFTKRp7HOVXeEVte/DwW8bDvQr?=
 =?us-ascii?Q?ys4YffzP8DVlEztsPtsKUu3//R+JGjX6jCnhGzKVtbPhVvMJ7AbDzFuFs/Lg?=
 =?us-ascii?Q?nSi32BdGvXpvNe8xss0nidYHqDNunmeUYN12Fjj+xS6sn2J2HAzJnvPNvLGR?=
 =?us-ascii?Q?fGWlqPLZN3R0oU79P96SEyJDFoSKJ0hYtez98aa670dQ2Pd6DFy5ktlrfuJE?=
 =?us-ascii?Q?9G7LUHeR0sourrCeb6XUDwUTmFP/gg4Ct0U3olfVNamoDTGzYEw25rr438wQ?=
 =?us-ascii?Q?rgxhPkctJtrzLJv4NMXDJgHgxmYA/D5KuN6UonIh0x+mNYWD63cJdyOtATPf?=
 =?us-ascii?Q?DB0anzeEn4G8kVGg4xkc19wUx2VMXjmQINiD3sjTdK1WluOoUt4EOtH9qSlU?=
 =?us-ascii?Q?f+6u0zPejf1AkdquY1uSk5uxH2mjJhUMzP69CiDUD1MLqQS/2zhW9A8JLDIT?=
 =?us-ascii?Q?QR+21dRixYd9GgUSZb7jtuCjo/cyB3APeNj6PIN+VKAtvTT/6fn1eHSmNvaA?=
 =?us-ascii?Q?u5lkwO7EqTzzKejYyKxopxsghAXj3c5USj9UBJNb4S8kJ0quZDBkzZgCvMra?=
 =?us-ascii?Q?poZGy8qOAoXamy+M8Zw7zNhXyyU0ey2z3+r9G4LaEqLfgnnHPYMUE+Re1Zmp?=
 =?us-ascii?Q?o1vIIMywaHcYBgW+vaxdo9eyG80/7afVStCkavhmp1DFRlddpLyLgpmQZ2ry?=
 =?us-ascii?Q?SQ1Kti6ffPD1KqDe4OLDImIWpC/1ypgwDgqPgBGolMp3g/UIqzHIeZbNMamL?=
 =?us-ascii?Q?7aBQBI2m5mGb7/5T9iPcJSBQxLnRxICvjhEptrShFFTQhXKEDOviekkeM1tB?=
 =?us-ascii?Q?7y9X6sqkxZk3uSxpWPBtfIcRTjUYlcEKKTGl5+KwbOp4/O3vX28Cz5HBlfkh?=
 =?us-ascii?Q?nbL1eA4MVMCpN/PpBcn560nYRNXV0hoPl61nyfW21O/alNU+2pDpx7iJLpsw?=
 =?us-ascii?Q?BS7lVSWuwYub69oIhqG5QEVJVkEjdsfu+t+7TKbaRuDv1sVBqmpfTjipPjw2?=
 =?us-ascii?Q?Iu3JnqjpINbiYwVPCamIcUzIT4w7EODlSJuh2m9xpA/sJUV25Q=3D=3D?=
X-Forefront-Antispam-Report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB9448.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(52116014)(366016)(7416014)(376014)(1800799024)(38350700014)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
 =?us-ascii?Q?aOxyVudy/kjUAx3Nldi/mAl1KrjjbyXXDZ88VvngfrEvionuGabF5miDQcTa?=
 =?us-ascii?Q?dgm4cUkCa8DzvU+CTg/bweWNk3bYkHJoTqBDtQ/PbSHG25l4IihIqeqWx8rs?=
 =?us-ascii?Q?aPt9N1THwGEixPlu52y8SMMQ3HILxP2mRFHLXsunWGwVJJ28X20JbZP/M/Ry?=
 =?us-ascii?Q?nNtg/+fJ+fQxzMKgEDRSAyXuOlFRjrsfkzH/7hi/gIpegWdVFwrGU2hZF0o5?=
 =?us-ascii?Q?iu9IuptwFhvqUSY7ThvJmI+2MQ6HNq/cp60BAGUoTFOF2vJO0r/6Bde7mT4A?=
 =?us-ascii?Q?boW9S+VGtyvTkYSvWmZUZHPTB97FpxP+mrC73bSxJpX84TjHzto1nbgl2WHA?=
 =?us-ascii?Q?2G/PGFl6jn3ghUwBqyQLROU7E5OGptDVGR6OqOYsAy+sWWv5kQXVg7UXHv4D?=
 =?us-ascii?Q?cdX+4SKXaafL6zUFl/emmlglFuap0bw8rvg1xgbX2g+QRvyA1y1QcGUkXudR?=
 =?us-ascii?Q?NeovoX+v90JtfkftZkMdFLen3XPJKvxbDfTif/d79pvRm4XiQQCqY4wDnsNZ?=
 =?us-ascii?Q?oLH3AQA342K+3Cdwa13ypcBQ+ssBOc7EQf6/apRnWRKlFmGdj+TecobD3reQ?=
 =?us-ascii?Q?u9/sivjenafS/mF7XapB+NOPNUHz+FTAv4oxCGs0lsjV3SLs0mmKIrsrtZ+u?=
 =?us-ascii?Q?iT6PKIY8o972r8MLsYDY6skU/KRXzAF/evmqa0M51BM9i7SlYRIvCNYyAc5n?=
 =?us-ascii?Q?Wn4Iierp/VgHm4vhJszAx7N/wOWVpp2JK1kuCpoqzkgX4Rn2xF6UI++PDymP?=
 =?us-ascii?Q?Y/a9NqLpIbM/rEatKRxnIYIFMxMlZYSXio2eB2ZQGL/83rDfCBX3kziSx3Sp?=
 =?us-ascii?Q?mgRU88PX4Q9r4hi/RYfbKeL1iuDdisH5kfsaOLVNMutYdydru1ghOGOfaWR4?=
 =?us-ascii?Q?To5HzG9XvdWrVlaJEIgV3/7PfA1HUQyMKOqG+ujyPWD36UgQa0UDdQePwZuM?=
 =?us-ascii?Q?WI2vobz6cPqJ7ppyJo+tuXxZ7lKawr00mH7iOj/qt5uMMsAj7Bj3dPgDaFgN?=
 =?us-ascii?Q?af0TfDcORf4Vg39gSsqc32aqYx9o50UT1KsfsR5z4CfgVOvZn4n62TS/9I8B?=
 =?us-ascii?Q?btahaPUkd6QOT9w6EL1qMz1IzEowUGDgdGD+/mbNMHdO0B7FujYg9Ihw9Jwp?=
 =?us-ascii?Q?s1EyDGjngzhZ3ePKRsagb2yZ0RBM+/BJAuzPEB3zaEbWuXAzefC6T5NUBpaZ?=
 =?us-ascii?Q?Vd/BSlKHswAzMOLHIGBlns06ZMxRyr3P5o2plhNPQt8nd3+THhPzpPj4NEWE?=
 =?us-ascii?Q?Bg7DnagJNjoCK0F+G6PPl3OTigR7lcnqbRyugAmXiB88hcFFj+f9Z/TOBRbb?=
 =?us-ascii?Q?8kRonbCt1TNV3ERm1CkdmTjEuTluXjr+2pALuRNKVQDp+eVQBn4WJYOIp45q?=
 =?us-ascii?Q?FItsbQO3OtB1ddgX1kCyarI9rKJfCnCSVVI0Grik95KJ67xRNBAJsdZZXzSf?=
 =?us-ascii?Q?9HL65/tl8uidD0eiO5+qPRcj3j3J+2pLNO+FDvKr024bUGYnxNbamcYZrMmp?=
 =?us-ascii?Q?NogYJ6k+RPeZLN+WrPLohr3bCz/nWCN2t6Wuo3sQ4UslC7ELly1SiYNr+VIB?=
 =?us-ascii?Q?3j1alfAwK85Zacl2ktiv5mkzi4eIY2XczsSxYuyo?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7819dfd6-f9ba-470e-c8b4-08dd1e679561
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB9448.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Dec 2024 06:53:59.5819
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vVVfAWM7slIwGAWbeI6zwF4s4LBSLTJV/q2712qm71r+sNH4j/plMKnGYMrU/iE1nYLtfb/M4dNRBrNmjQmJtw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB9009

Add bindings for Freescale iMX8MQ DP and HDMI PHY.

Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
v9->v20:
 *No change.

 .../bindings/phy/fsl,imx8mq-dp-hdmi-phy.yaml  | 51 +++++++++++++++++++
 1 file changed, 51 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8mq-dp-hdmi-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8mq-dp-hdmi-phy.yaml b/Documentation/devicetree/bindings/phy/fsl,imx8mq-dp-hdmi-phy.yaml
new file mode 100644
index 0000000000000..c17a645e71bad
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/fsl,imx8mq-dp-hdmi-phy.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/fsl,imx8mq-dp-hdmi-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Cadence HDP-TX DP/HDMI PHY for Freescale i.MX8MQ SoC
+
+maintainers:
+  - Sandor Yu <sandor.yu@nxp.com>
+
+properties:
+  compatible:
+    const: fsl,imx8mq-hdptx-phy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: PHY reference clock.
+      - description: APB clock.
+
+  clock-names:
+    items:
+      - const: ref
+      - const: apb
+
+  "#phy-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx8mq-clock.h>
+    #include <dt-bindings/phy/phy.h>
+    dp_phy: phy@32c00000 {
+        compatible = "fsl,imx8mq-hdptx-phy";
+        reg = <0x32c00000 0x100000>;
+        #phy-cells = <0>;
+        clocks = <&hdmi_phy_27m>, <&clk IMX8MQ_CLK_DISP_APB_ROOT>;
+        clock-names = "ref", "apb";
+    };
-- 
2.34.1


