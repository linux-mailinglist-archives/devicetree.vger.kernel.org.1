Return-Path: <devicetree+bounces-104717-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C0E5983F5F
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 09:40:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ED85E28225B
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 07:40:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40E55153BC7;
	Tue, 24 Sep 2024 07:39:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="A9vzJnzn"
X-Original-To: devicetree@vger.kernel.org
Received: from DU2PR03CU002.outbound.protection.outlook.com (mail-northeuropeazon11012041.outbound.protection.outlook.com [52.101.66.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 623631537DA;
	Tue, 24 Sep 2024 07:39:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.66.41
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727163545; cv=fail; b=jc1lSCJ4O/ZgMaXax6g6FFvnaFAQ9NxiPEaSvHeeiHCahm9jrfnrydwDs5E2tk2+Ve5NB1HF93WaVxpJfzH1YMrV4jW1CHohLGfrN2af31fczhdxBAYdn2dbJs44KoQHg0NlmuRwj+BAIrCUoQQjWIsGNjI+McsYnH3WwlljRVw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727163545; c=relaxed/simple;
	bh=K0oFAFJoA6kq28q0S1FMnOrvnxqiybp1UTdYQyGyxcE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 Content-Type:MIME-Version; b=P8Nq7XiOeB867iTW7X9fZWlgWvi9ejEnDdUkGZxTxjPkmSbyim2XLQ/gzLMg/DRUdHVZFFdQ+hsD2ZxiCdfuHVDtIjowAug3aw7mCUFWnxcbhKCC/uXnlYnaPP3iZ3weSLd7qNj9nteaDj+uivTNtMOWQ++noeTf0XuAG1IN8ZU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=A9vzJnzn; arc=fail smtp.client-ip=52.101.66.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LWWeTIyIl1IvGmyi9Y1/izil1D+7+88lAHWkTDoguae3ORsDa9aVdvvKr51tQ2Do/6/ZgXAetSa9ardp1JQTlvhX6E8U4O2kRLJ84rhfJdpcyFkmFUqkW2BMm68ky41L2dwENY4RmhYa8PczYNvHEg5M01RVNxMYC2UGIDlA00uDJi98TXg1j0an/fE5ytc7LMIKB7TEaHZ23dPbH1/JVdmzh6RhlEv8/gEzZFddLodqZQIrUe4kqx0N4VDWAmq9DurUl6reScZkB3X1lk9pAnEOO78/tCrsGfProp0VQdRTHBYJAtOOkNk8zgey+QxokgJCY06sDiQzYEvTOUdMXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WQaBheNRc9gXyNygtEKcXbBjuytYcouHQeDhG4+jbF4=;
 b=S03k/bmJeI3E9AJ6a0sy2jdsXXjRcOp4PWRhpCkBuA/6K7gBCLjpePWIE0iZ9bKCimRctZ06hK5hBIbp2sTXZqJx5+LgOL4lfF4sH/Z2PR3E8xJN5M3jlZEnGJNepsGERyjSvisUY9cZ4kWVa/HmQ9Gmsg7p60+fMLNKi5XS/2+3FfhPhavyr+CaPTGyhLvl/t9C12oieCjs9muJzVtBMQgZNduN+7XLeQwaF25l9003yX8K+8WMQL1ZngF9dLL3NzZSxRoxGtdyaU1P/fW9oBE16yLtNMiYoXl4WZcFD3y6bqOgULhPRGnpOOudQpQl8OKmi94/QcIby2QARrS+qQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WQaBheNRc9gXyNygtEKcXbBjuytYcouHQeDhG4+jbF4=;
 b=A9vzJnzn0WP7doudEOrXas204tqHP/HAKaruminRFPZ2iMo68O8nRcmKwQ2Exfvfto47i2kYxxmws4aCsI4CApbACv0ZwI0JsYqOccKCEGl1YlnZxcAf4GW17pUJYi23j8+NgmX5ww4DpF1VJ2IZ2XFgxsaQzxOuTOr7cGp5CMdcUI7clbBDlQo2kUQ0upbONAKxRRSBWopGyuvLaYnwvllZQ4H9EUSYNzp0Mj8aY6urbsY1G/QYBC9Uiji9CTKLrkwRoY26Bo+cOKR5aWjBZyDm+c0ONwx6ZBGx3hbAyduNSdP1FJCtqMGmtL8tP2EcF6MqHJUNIUr4973CWaD/pA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PAXPR04MB9448.eurprd04.prod.outlook.com (2603:10a6:102:2b1::21)
 by AM0PR04MB6881.eurprd04.prod.outlook.com (2603:10a6:208:18b::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.27; Tue, 24 Sep
 2024 07:38:55 +0000
Received: from PAXPR04MB9448.eurprd04.prod.outlook.com
 ([fe80::51ae:5f12:9744:1abc]) by PAXPR04MB9448.eurprd04.prod.outlook.com
 ([fe80::51ae:5f12:9744:1abc%6]) with mapi id 15.20.7982.022; Tue, 24 Sep 2024
 07:38:55 +0000
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
	sam@ravnborg.org
Subject: [PATCH v17 8/8] arm64: dts: imx8mq: tqma8mq-mba8mx: Enable HDMI support
Date: Tue, 24 Sep 2024 15:36:53 +0800
Message-Id: <8a0b928a420f86537b7eed9c708a3808992c9724.1727159906.git.Sandor.yu@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1727159906.git.Sandor.yu@nxp.com>
References: <cover.1727159906.git.Sandor.yu@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SGBP274CA0008.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b0::20)
 To PAXPR04MB9448.eurprd04.prod.outlook.com (2603:10a6:102:2b1::21)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR04MB9448:EE_|AM0PR04MB6881:EE_
X-MS-Office365-Filtering-Correlation-Id: d3de1d7f-ec66-460e-6228-08dcdc6bf150
X-LD-Processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
 BCL:0;ARA:13230040|1800799024|366016|376014|52116014|7416014|921020|38350700014;
X-Microsoft-Antispam-Message-Info:
 =?us-ascii?Q?l7eFBsLP87BHDrDDqNtcDPystl+kjzfVhnCHF9yep5gs2DM+pY8FdRedhMsu?=
 =?us-ascii?Q?RpEX2e4e9ZuS/1wKJPsACXRz1ekwIjAvXLQSXKv5zcHLH+UBvkz9hyMBldcD?=
 =?us-ascii?Q?Bdggyj8c/xQqcrJekhdoTt/XuuufZLb+2ociE6XhfKWKV06EElawU0tfGRPY?=
 =?us-ascii?Q?PT4zFuxhOYmhGGGquVsE+N659T8SaC5lH9pq06o7gCzkWQclZa052jkNFfkL?=
 =?us-ascii?Q?HEXK9oC/LvGv5OhnY8rGfVD4y5srbkTfSXiJF5HOfUPMy6FetfbdyfRfJQUv?=
 =?us-ascii?Q?fe70uV2gyezgGR3zONTXp+1iwoHoSKHcyXoDfLIuCBgElBimn1qF3p7CS6ly?=
 =?us-ascii?Q?P0LANFy+fHpbJsbN3k1hKAMVNL0Q84y8kue+3gG5r+LP+Elrhh7d9F7R0CAP?=
 =?us-ascii?Q?wRugzYa3o+Q2kvytZ5SaiA4NYEGjGcAqHmXvIyq95fQ5XtgiC6FRHePZhkTE?=
 =?us-ascii?Q?86U6EiqR2EMPGs+pht0X5bZw3oe2tWtnixUOjsapuqI5kJgFPKRZllQXsOj3?=
 =?us-ascii?Q?x9gkExAqSw32AyRGY+ME5Cef0YeUKBV47i8jAajBnfl47RBkXHwio+A1lvwT?=
 =?us-ascii?Q?cwVnLpb+/Oi4JaiCBvcgx+cBvHezTF+v7sGtFFhDxs8QGF1gUI0QAkyzIZe1?=
 =?us-ascii?Q?37VMyqajLwoKU3n2EU48zBl0DtB6pRL/JJ4GWg1ry/sSkenqyVgwDDXx0DEx?=
 =?us-ascii?Q?8rDWL+7yKylwnrhT1FPnts2s70RF1xTImFWnP+uceLHbryUgUNHrQln5j/d1?=
 =?us-ascii?Q?D5KhNpwCLOoif5PQfMuZtYLEG9JQVjaWoVE85yOLQGYLDfuCHl1JPGj8zNt/?=
 =?us-ascii?Q?ILdqY94aN8LT7vGPQJRmE5NsKiTDHEJfnN8EeH50jzZv+Dr6tbVBaZvja7jz?=
 =?us-ascii?Q?xdqpDbpN+6GX2JZ2oyhO41wNY80UVhSYKkfsKrW+x/j5tIjoXheNLBWcaxkF?=
 =?us-ascii?Q?svylM4OFfBaUWFWT66cPdGlNDXNqunVesC7N1aF9PvWqYD6JbZUmlF1HhTDY?=
 =?us-ascii?Q?4V5aMj9d46hQVicItlMEwVlFN7LhgMSpXBn7ulrFjTTRg/9ZFu5rdUyb+j1E?=
 =?us-ascii?Q?ANc86/eYCX1HRIL5E3Rp9DTcEu+CkMQ1LeCojG/hG+4ZhenY+vuKKXZkDaVI?=
 =?us-ascii?Q?E6QDYe0rMmgCJEKmM5uaB0voaN6oSeOnD27TUGudGzU8RUFSiA2t/91AAw6R?=
 =?us-ascii?Q?Jng2utCj+rpUyrKa8gDTANC2Lqwd+O1Oc5JBlwjrd5z0b7u8CaEGiJI5JSsl?=
 =?us-ascii?Q?gTIKhyPJku+WlPG3ujAzkKCy06oGKrrTjCbLwuPHRKA8OGOBMPT7i1I819B2?=
 =?us-ascii?Q?x9jf6/GXUBUuGVFkYpW/HvSuld9Te3BU6fp/+dkopmSGaXURVRteta9vRHCP?=
 =?us-ascii?Q?9ICA/hqM0i6vQBFLGvIVMwLYTyJV0qYtaqEiTo+IYYyt6uXwHxF8e7cihw0M?=
 =?us-ascii?Q?K57t+sxKuKs=3D?=
X-Forefront-Antispam-Report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB9448.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(52116014)(7416014)(921020)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
 =?us-ascii?Q?xN+lhHn6NAr9faRCJvUuv+BrF+7hjU0bpaUeB+61x5T5i6xMsebNvHBN4C0G?=
 =?us-ascii?Q?QXKtltHGxuhGwkjasX6VRDXXRBi1GpsY0aHy62ABJlNHq23z5ftYktHPAU7D?=
 =?us-ascii?Q?vgHLM4YeFh5jW1VpajKW/0Oa85chqJodeMRR5kjCYLt9mdVEHtXamz06KJIP?=
 =?us-ascii?Q?ElXLnTn8cepErpHX9/ry8TblKxpcCiR8MAjOrAbmOu1TcyUdXjr/OM/3g0nA?=
 =?us-ascii?Q?prGG555dEIxI3syxBceqQQxsSGDH9BeU+7WHSlkWmO32eZUn02F5rqwmwWoZ?=
 =?us-ascii?Q?ASw7HwXcjnNJsaI/1dqXpWEihbkZMFcWsRkbC48bwc3D54+TfCYDNpfYX2a8?=
 =?us-ascii?Q?O/vdrrSRD7JwjDYNvimIefgxVL9M+8GsqCGfvZDuFZQMyKxac/d9s/FurRk0?=
 =?us-ascii?Q?tLx70NjMzDysyJjq4x5f7PxErQZFh8kWzXnkQQRWYcV3QThAyAPPi8dpawRU?=
 =?us-ascii?Q?bkmrvqecoKLC4LVoAHHNEu1nZpRTiftkCX9HFZpiyhQRw8GqgGBMVov8sTSZ?=
 =?us-ascii?Q?rlydIhMB5S0GstxjD1I+VnuTW9GDjO9sjH+j3uhmFByXJDQ9KMRSg0IUPyGu?=
 =?us-ascii?Q?j+1AjjMWjR1ahPtgoBfzbLRJdryd8JvCvZqkgpe7Ijd8vCQnrUdwv+oiyspd?=
 =?us-ascii?Q?KDisH7FNMn/tyOOnFcjG4b6D8OQuy61B9dDEHbelxYyFJy7AusUyuK5mb7oR?=
 =?us-ascii?Q?LNnlMzZYGq1DVHwrNi3mQLwGxybp8acobeBZWNf13e50tFk/g9952fh1LCjH?=
 =?us-ascii?Q?5U6iZPvWYZ0F9buf/irQVFF6upWXjhsgIjiavqXRoy6Un0ypyesrKt45g3zc?=
 =?us-ascii?Q?3Cl5Etma+jJjIdlFXq8QOFnVs+jjv/4vnS8itAN/39q2Dovwpv8iy34f0hIe?=
 =?us-ascii?Q?7rZsZkrYY5fLQPCK2DORn5loU2HTidqmKkxXY1eOZZw0WS2LjxvtpYbTYwpE?=
 =?us-ascii?Q?1+l1yuOdyNWCq1FbRV16GpHqTRlVim+lLScoNdAwZnZxCdBCP7YFrLCQQm/A?=
 =?us-ascii?Q?vPVt7rWeNQ1a8YrjwsQNPuXnV3W/6TiZmov8WLNpg77WpTU6vUI4ECNzItTl?=
 =?us-ascii?Q?r9BzaBKuXCrhL2R53nep8HLfY+TMN60i88Fie1fBh91jDqWcmLznllCcAWQK?=
 =?us-ascii?Q?BXXXBhoNB6LSuQ+lFi23TUZzuwE0ckhg4JiV7FPeyu0Znu9izm45HNnaDU6b?=
 =?us-ascii?Q?UvtGMbpOfPu/Ja96c7CBpcPH1m1a8gh/Muj8sVZINYqgGI6Jds74W9mWxIyj?=
 =?us-ascii?Q?Ue+fwJXV4DPsYojOWbCvdUHhVCQFqyNEjViuVwuSpL9E4wruKaVtyTz3kR+n?=
 =?us-ascii?Q?TBaDAtgmwFn0DZPRsECGXqqS5xWfKxOs76bdplZJDRw7k6rNt/3DhhoyegHl?=
 =?us-ascii?Q?resjNiVQhdoTAbCgIzhSyCT4IU5q1rRmtYggnGP7HSSqFmvdpXTCaUj3Pyn9?=
 =?us-ascii?Q?7R/Qe2OwwJfqSFEgROjD/BGnVMEUrkDDkXV92ELsSxxf8zVmOyb/ymBzMeX1?=
 =?us-ascii?Q?JsND5bS/fcE35of+1O1nwXqiUCYnm/K+fjZtFHerXRb5en886xjXU+xi7G9A?=
 =?us-ascii?Q?0JieSBWbvYRqkXBL5PclRuniIGdtb/TpDwdsQNnw?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d3de1d7f-ec66-460e-6228-08dcdc6bf150
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB9448.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2024 07:38:54.9841
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ROoPy6XI+jTIHqMU6GQZNlLDzmvKig2XEVuB8vaYtAm65sF7Z+5+x8ViYI9fPxqs5gnklrATj9Is1I8/HXY3Wg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6881

From: Alexander Stein <alexander.stein@ew.tq-group.com>

Add HDMI connector and connect it to MHDP output. Enable peripherals
for HDMI output.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../dts/freescale/imx8mq-tqma8mq-mba8mx.dts   | 20 +++++++++++++++++++
 arch/arm64/boot/dts/freescale/mba8mx.dtsi     | 11 ++++++++++
 2 files changed, 31 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dts b/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dts
index 0165f3a259853..406c8229097cb 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dts
@@ -53,6 +53,10 @@ &btn2 {
 	gpios = <&gpio3 17 GPIO_ACTIVE_LOW>;
 };
 
+&dcss {
+	status = "okay";
+};
+
 &gpio_leds {
 	led3 {
 		label = "led3";
@@ -60,6 +64,14 @@ led3 {
 	};
 };
 
+&hdmi_connector {
+	port {
+		hdmi_connector_in: endpoint {
+			remote-endpoint = <&mhdp_out>;
+		};
+	};
+};
+
 &i2c1 {
 	expander2: gpio@25 {
 		compatible = "nxp,pca9555";
@@ -91,6 +103,14 @@ &led2 {
 	gpios = <&gpio3 16 GPIO_ACTIVE_HIGH>;
 };
 
+&mhdp {
+	status = "okay";
+};
+
+&mhdp_out {
+	remote-endpoint = <&hdmi_connector_in>;
+};
+
 /* PCIe slot on X36 */
 &pcie0 {
 	reset-gpio = <&expander0 14 GPIO_ACTIVE_LOW>;
diff --git a/arch/arm64/boot/dts/freescale/mba8mx.dtsi b/arch/arm64/boot/dts/freescale/mba8mx.dtsi
index c60c7a9e54aff..fedc284ebb506 100644
--- a/arch/arm64/boot/dts/freescale/mba8mx.dtsi
+++ b/arch/arm64/boot/dts/freescale/mba8mx.dtsi
@@ -89,6 +89,17 @@ gpio_delays: gpio-delays {
 		gpio-line-names = "LVDS_BRIDGE_EN_1V8";
 	};
 
+	hdmi_connector: connector {
+		compatible = "hdmi-connector";
+		label = "X11";
+		type = "a";
+
+		port {
+			hdmi_connector_in: endpoint {
+			};
+		};
+	};
+
 	panel: panel-lvds {
 		/*
 		 * Display is not fixed, so compatible has to be added from
-- 
2.34.1


