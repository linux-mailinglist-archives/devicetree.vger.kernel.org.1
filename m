Return-Path: <devicetree+bounces-243183-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D153C94B62
	for <lists+devicetree@lfdr.de>; Sun, 30 Nov 2025 05:19:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 84D394E1D00
	for <lists+devicetree@lfdr.de>; Sun, 30 Nov 2025 04:19:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BFE3234984;
	Sun, 30 Nov 2025 04:19:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=iopsys.eu header.i=@iopsys.eu header.b="n3qYHEGw"
X-Original-To: devicetree@vger.kernel.org
Received: from AM0PR02CU008.outbound.protection.outlook.com (mail-westeuropeazon11023136.outbound.protection.outlook.com [52.101.72.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC41314AD0D;
	Sun, 30 Nov 2025 04:19:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.72.136
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764476353; cv=fail; b=RNPHW4/r78GfgXXs6j9n5xmf8lVL34cL4EqzgBIYUEZpV36BfZNRvbjxZ+fyUyW79IsLbDp+gjS4g8zUSULxxUy5320OB+RMYgQlNiwp1EbNOAi4bzeCiiquBbo5YPRKOM5KXTH9relU0/U5KzPIOmXpPK7ghitaNFvAlKreDBg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764476353; c=relaxed/simple;
	bh=nUB4bvJpvUiBGFHmdSkVfuUCru7TZvZ/ogpOd4BP/rc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=KlzCBMb6WbgX3CMUOtRxoXbTIirMNa1AC9ecSuMyIhrpHSTjXG6TZGtaD/EU9K4++ZCArKb8YRcGdu2+4n22rX25BPaOLCXTl2u2duG6c8iT0xvWW6STvm645+JsfQYwdZeT9kzPNHeu7TVP/SKjwLfPqoZECE8qQHF5pqxY1Ww=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=iopsys.eu; spf=pass smtp.mailfrom=genexis.eu; dkim=pass (2048-bit key) header.d=iopsys.eu header.i=@iopsys.eu header.b=n3qYHEGw; arc=fail smtp.client-ip=52.101.72.136
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=iopsys.eu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=genexis.eu
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=a03qBPukNlzTV0fjEV4PywCYpZHRpr1O1RTaFMrU0szlQew85ldPLWl13g0Gc6ezaCCTcMqvH8END6TWa7IdxbAFIa6COdWp8xHzs+8MTETOaf8et6tQU4s3xvzQU+/e1xSyV6uKyxrm9acC7BlG0HOimhmQhxKLcFxAJ8DWah+MZOzz0/wRwEPuIP04BsNljd2Px2OGGQCwj9cNeue2r0w9nmPX2btXEVayHyor0kWMhdSFms1rSVUP3yRFrpib/1tKEmVAYMFw8Oc3SIVc2oPyc4guMkM1En30QXCefkiHzKSRxIDyfKCKYt1Cd5swD03hNJopCbnnXMco4M2TvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mWSaJ/J7/NhXRxmf6iuMtujSLfqOvakh+QOEwHSOP4A=;
 b=LRzFuHAQs0M/EHI0pzWAoU9pwSc7diqrWoou6x0TJcQRSnwRwy7k3LtLQzX1qgPMu89dYMIINjJHa/P3PjwDXdpkxL4kpzZwLOji58N0cGgQ/WNfJKKX67JBuC6OB0gEhfYAHG22A1kmpfVoGTQKBkS0Md2xGVrSqNHsHip2VSiUWa/7g+ll8TBrCcq15GxMu7mnekWIBpUtevHZkDZjdv3rm4KmcxSqgMM+9qW1wciwWakEpHjmZ8uRj25n0ul8MKQXatV1N306Y+6C57aawxc3YA8zSPVoD+IJ5K8bQj10SJez7Aig70m0pvJvW4HJhHOJmiqKPf2a2AMY6i1HDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=genexis.eu; dmarc=pass action=none header.from=iopsys.eu;
 dkim=pass header.d=iopsys.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iopsys.eu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mWSaJ/J7/NhXRxmf6iuMtujSLfqOvakh+QOEwHSOP4A=;
 b=n3qYHEGwuH/NqZ5zmxTBHBcZrkStPBA3IAwihoKwlyRyqmykJko/VwMnSXY2jocSvze2rucA7gaQKtS0AU/MFtWjeDYPMAEZOu6uT8wRXsGQ3dzrpP+jcrCjaENqhuGTSUzT/7Qqhd+ne9B6BvM3EXVukiwUJ/TfshJi5HDfyi4Fpyc0t9b8q+ef33cb2B978BLSc38CYohvmBnyDnMAqt9qjdQkofB0Oz1ndc413GvbjRSYSMNqAjHoAsUVcidjC4jO3WvsMv3HjsVrsAnhkPcKF6+Xt9qlb0zVpPVKdPmXguPRRTr2lfWUIoUjT39vYhtIrtQh0Fqz85uQ+XGzAQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=iopsys.eu;
Received: from GV2PR08MB8121.eurprd08.prod.outlook.com (2603:10a6:150:7d::22)
 by DU0PR08MB9049.eurprd08.prod.outlook.com (2603:10a6:10:471::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Sun, 30 Nov
 2025 04:19:03 +0000
Received: from GV2PR08MB8121.eurprd08.prod.outlook.com
 ([fe80::4cd3:da80:2532:daa0]) by GV2PR08MB8121.eurprd08.prod.outlook.com
 ([fe80::4cd3:da80:2532:daa0%3]) with mapi id 15.20.9366.012; Sun, 30 Nov 2025
 04:19:03 +0000
From: Mikhail Kshevetskiy <mikhail.kshevetskiy@iopsys.eu>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Mikhail Kshevetskiy <mikhail.kshevetskiy@iopsys.eu>,
	Andreas Gnau <andreas.gnau@iopsys.eu>
Subject: [PATCH 1/2] arm: dts: airoha: en7523: add reset-controller support
Date: Sun, 30 Nov 2025 07:18:53 +0300
Message-ID: <20251130041854.2909001-2-mikhail.kshevetskiy@iopsys.eu>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251130041854.2909001-1-mikhail.kshevetskiy@iopsys.eu>
References: <20251130041854.2909001-1-mikhail.kshevetskiy@iopsys.eu>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: FR2P281CA0088.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9b::13) To GV2PR08MB8121.eurprd08.prod.outlook.com
 (2603:10a6:150:7d::22)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GV2PR08MB8121:EE_|DU0PR08MB9049:EE_
X-MS-Office365-Filtering-Correlation-Id: 89aac5f5-c908-4d8a-594e-08de2fc79853
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|52116014|1800799024|366016|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?bJj+ZR7LQWOKG/0rOG2idA/8xVFOizVUd4utdatXhXTJtgCQWG3qejnE9iM7?=
 =?us-ascii?Q?EjwDYquCX8nTNPo+JMw/qrXbYGstx7fS1i8uHV3/6mX6BthBfB3RM1p3lhSf?=
 =?us-ascii?Q?uy2DfauAqvLWhQ8BkeOgpHJ0J8k9yBUcTaqKZKHgn6j2LglmW/wEn3XKTZvt?=
 =?us-ascii?Q?yAg1lNbo52mHng4+5qyM1JX5G+w2JSLn0LQgnTdZFH61DJocyUjEYAhLYrpw?=
 =?us-ascii?Q?96piVMPL00tT8yqlDAAEEgqKSA13sM0YZY6wAf4PHxBLV2pX+AQsF15whtQI?=
 =?us-ascii?Q?cpjO5QNFbnfZTIEeEtCflCM7wGUSjjLL5fsAPUd4i3nD4SOx8igvnxalgIAA?=
 =?us-ascii?Q?vJJAer2oILMkGOjNYi7DTYJU+m+dnhMff+iiy9TcpfUHPlW4qug2gUdMafzX?=
 =?us-ascii?Q?pTRbB22DRdCTIp3YlCjHeWuP6Hn+Ph6LfC/rIX5XaW7hcWpKGfpk0NwTytNl?=
 =?us-ascii?Q?Gkh0L4gGKnHLvOpz2/NY95jvuJdgo8u83QSNmH+LOR00uywZZSZHhhcjZcBQ?=
 =?us-ascii?Q?VSJj9cSwvyTiHBO3e7Zi+Lmycuhz2HAe98vekp9KYcY5nHbJwPYy4+Yctyf1?=
 =?us-ascii?Q?ObgWoEp53x/t280x4pWR7Eux78Bcxnh3AblROIc52bAdOF9ueO00nmfXjeEb?=
 =?us-ascii?Q?JXQPM6IEA+z9QO/exGtunlee8scHxU/OFDIJadfm8XYklmXuYCx4Bvy3PMHP?=
 =?us-ascii?Q?qfczo+f2fUqTOkJ7a+E6cgY62QkRMw/L5/SD6P39cwP8lEgab1AfsCr4iWQF?=
 =?us-ascii?Q?jWgOHiBXuWWYMa65OzqyLb/vDJ1raLAAoUu1vqwAOdOiy3LQH08STOG0nhIZ?=
 =?us-ascii?Q?0jSxFT1COoT7ywlepsxe+jkOFr4Aj3ERGNzU6I2HlN5GO4syLAmy6sHJISsM?=
 =?us-ascii?Q?wfVGA2XpdgYi7BcaCBQciB/LBNESQrPr8V7aXypqyhGtciIjOlAhvHTzXVMo?=
 =?us-ascii?Q?KIgbQm3ouRDMyoxItl6mBWzRtriKdQrIeMvxDI+rJGKNUwbt2Qp+DxOiWh0V?=
 =?us-ascii?Q?5wWH5RJIFRQ7u1j7A6CH3Ac/wKuMGVt6dA4Q3wlQ4fEO2wfGACBG9K7c3AFx?=
 =?us-ascii?Q?RV8/gYcqhtml9JZKohcidFgQMiA7pYUCbB0WK2UTdWsN7RzNgW27PIm5/7ZC?=
 =?us-ascii?Q?pmRyYwkUNtbdzWXx33ghKyySmqpQFF70KZOXI8ncCjO/FkB73p6uPcsCpqTi?=
 =?us-ascii?Q?/bUcopO/7pwr6aajQbric4M+rl3uKS4C0TMZWbTWQfdYGgMI8bwbEUuU8daL?=
 =?us-ascii?Q?rPXlCaJpZ+c1YQSmWEROKwbr7K8WOGbG+FVyBUOQYtkX2CXaWPElCU6Ctxn+?=
 =?us-ascii?Q?wCRFGQ+Y1nGSfCEQaKbcX7OPv3Tcr7tpB1zWdovma+wd8ksPFI44CCr2DLH1?=
 =?us-ascii?Q?4IbRvT9OR485NYzGSUIfBvVlc7962+LRJqHjbDG3WTWMfWge6om/TVDF+9kr?=
 =?us-ascii?Q?7LXO0QCpeI7TVTKNVY/NoWWLRY6l4ge9Lx3iPdmRb+d8L/3BkTi73y5glVae?=
 =?us-ascii?Q?PlP3KdbtzeEJ0I/z5r29kDEZnj3MHwcvN3u2?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GV2PR08MB8121.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(52116014)(1800799024)(366016)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?7YMYXe3rfZEwXHT9leNfzRZJoQi8Duo+sL1ef06oruXRiAboGllOVE20VQo6?=
 =?us-ascii?Q?RAOsshmJaDVADI5uscSujoYVmH0BfFMmTeFyFkQafu/s9sFLOlDIWX6AfRjo?=
 =?us-ascii?Q?lLMVmCIQi1u07qXbwpKywDpDBPMbSIIUjDItDeURsB1xTI6HfXYoQRKeWXc1?=
 =?us-ascii?Q?L4W/I8t+kBvY48i07F6FzI3PcOr14fi+VVmgcr7WhMsJvdH0AqkELfyIrFCU?=
 =?us-ascii?Q?0AQyKDTw/nUjWRx6Gt1D/D0WpXy2N5frTFKVzShXzbfbvX2Gw9uLOjq/S+0n?=
 =?us-ascii?Q?sGpsURUd7eVOQbUgJabH6aCdlhRGGbig90sg6QX4aaybygLcx18U/09R4KCj?=
 =?us-ascii?Q?uB/ee63NyOq1QCFFoYGHG7GwXtb654imPU+P+TgzvII3TjDTRhjmlCqaPfc6?=
 =?us-ascii?Q?0U2ObJlvW6014AKQSYpmQplOjimVw8J5JMCYRKOu9k8OounvI86OPSD0mmub?=
 =?us-ascii?Q?90pRWTW56aFYIv+BDzWYbGKyXfnvAjB6DCOi9zDVJImLcnQN2Nh+TQRAtG51?=
 =?us-ascii?Q?BYffjYd1oCg/lvc8jeve0jDveyI6xvLSYpCrmcYpJey9qOAahnr8TwPIUzK8?=
 =?us-ascii?Q?AOpYUDY5Qd8EQKAjkWSJ42ph6tMGpYdxCR7DSP84UoXsnQTZVIcMYpxBLdcU?=
 =?us-ascii?Q?uli/HxEaE9eroU57lpkqM8Zso80iCpKw7HW7NxTkVEvKqqZtlyqhFbzLvvJN?=
 =?us-ascii?Q?U1+D5kTyImZtzhhUatHMOp2hzDqhAVr41VeWQ3ngzTuKBcZmBth8WWM+otbA?=
 =?us-ascii?Q?r1Ec1wPjjemjErZs2D1fFMzlMaj2bkvH9bkzf6ZUdfXTDUdZ8I+LxZgWQVD2?=
 =?us-ascii?Q?VX3vtMjHu1HdcvNq1VmaQ6krysA/pZR4KSVKzl0xZMezuAAIzvAxA6XpKG6R?=
 =?us-ascii?Q?JVX0XsAZQsAYkHALlHJIBsndt1X2LpXYX/1EmP3/+tIgv3fEC/2xZOf4guHT?=
 =?us-ascii?Q?0z2yMsJJuDYIjdO8leIO6APkzsgKriOfz1tV1uzyMAYYXwDKD5/y1NYpfvSN?=
 =?us-ascii?Q?7mUyhbOZ/iXO86QTm9kSsBwwp/xd4RQrZrqn0C5KIVb9UQ5/3lsGIsKuKbxc?=
 =?us-ascii?Q?PPpEwX8KN8RGQ2mMaZ9aUPutNYq8vqkMiChPz7ljI+hPi/t0y6C9IWgzvco4?=
 =?us-ascii?Q?T/ngHASTiQmUE/9tbwcBZQ5mGDBlXguIMGhUj0yFhepkvaZFB1Da4ZU3YorF?=
 =?us-ascii?Q?UWu3pjC0EtQFsRsSRJzzkNpfMwKWyhVfOurPn1HdD1WNgC3a2HzPWoY1fYUP?=
 =?us-ascii?Q?KcSOGJb7dWca+yGK2y6UOqvnOx0qJ3stfopmCMTokp1qrgjKkaOhlTvyBAGL?=
 =?us-ascii?Q?8k3DB2LxIPMi3muf6Ch4bxxAKSkbgwEdBWAWsW5CX1cxX2SXKXIZG3mJUkwl?=
 =?us-ascii?Q?4rYwH6WCNYriqA2xkFo4iTv+1mBscmwdAL9+RegEdKjNthB6UVkEqZouuhdQ?=
 =?us-ascii?Q?5VHdWL/+61WHiiCyEu2N3P5rQHoOwmGSTA0E25lcA+o2W36T0SisNuvJgN8K?=
 =?us-ascii?Q?9K864O7lZPzc3LsSeozek9kCewR4CwK++QCauj2mYFG6cV4inu2n00nwlbjB?=
 =?us-ascii?Q?MV/H053eYvf9W9TyKCWnZcA136P85ET5MIeb1i3osgYz479CDWksA+zRiVCI?=
 =?us-ascii?Q?F948jyy/uro7GTt1EkRQuZE=3D?=
X-OriginatorOrg: iopsys.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: 89aac5f5-c908-4d8a-594e-08de2fc79853
X-MS-Exchange-CrossTenant-AuthSource: GV2PR08MB8121.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Nov 2025 04:19:03.7556
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8d891be1-7bce-4216-9a99-bee9de02ba58
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yUGX1yhZyY0k8F6CiHuzUt6K6Vq6Te4865PVuB791eTzYF2dKHrOH6iAmZ0748v2fshZ3nAj5qbWMESyOH0hgSZ3iSfx1DPwLFtzJkGPovs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR08MB9049

This patch updates EN7523 dtsi to reflect the reset-controller
support for EN7523 SoC.

Signed-off-by: Mikhail Kshevetskiy <mikhail.kshevetskiy@iopsys.eu>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm/boot/dts/airoha/en7523.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/airoha/en7523.dtsi b/arch/arm/boot/dts/airoha/en7523.dtsi
index b523a868c4ad..231638b25c5b 100644
--- a/arch/arm/boot/dts/airoha/en7523.dtsi
+++ b/arch/arm/boot/dts/airoha/en7523.dtsi
@@ -4,6 +4,7 @@
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/clock/en7523-clk.h>
+#include <dt-bindings/reset/airoha,en7523-reset.h>
 
 / {
 	interrupt-parent = <&gic>;
@@ -91,6 +92,7 @@ scu: system-controller@1fa20000 {
 		reg = <0x1fa20000 0x400>,
 		      <0x1fb00000 0x1000>;
 		#clock-cells = <1>;
+		#reset-cells = <1>;
 	};
 
 	gic: interrupt-controller@9000000 {
-- 
2.51.0


