Return-Path: <devicetree+bounces-276555-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id akNQJNwauWm+qwEAu9opvQ
	(envelope-from <devicetree+bounces-276555-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 10:11:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EDC212A6487
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 10:11:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1C3A530C78D8
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 09:08:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A121535C1A0;
	Tue, 17 Mar 2026 09:08:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TYDPR03CU002.outbound.protection.outlook.com (mail-japaneastazon11023128.outbound.protection.outlook.com [52.101.127.128])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3559B358394;
	Tue, 17 Mar 2026 09:08:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.127.128
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773738486; cv=fail; b=XQr7oapXoCHoH7mus2CNMQXwGhuQmBfCebD+YDPk1oIYplwro30NrxbMy/HuQCUz1nXAwZExMB4WxRFUK1O3MHdC1gRe94j9reXYgsVRzUDB8QFFONUXUpOIHcD6fDoFlgJ4z709eYzBGVXKyNR72n//nIkE6CN6THS+fhE+urI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773738486; c=relaxed/simple;
	bh=4bwoKzEUsyhCyeqNma1/KjJIjvgJ8Bxr0/RgEBbgtfY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 Content-Type:MIME-Version; b=FfeY+vzELMKuS49jb4hScPnZhojPBhOJ5XEk5uLH87xOGBXBuGZrKuv6febaToAS/fEJhdDcelTx1YmOg6IUe+kINL3K6kqi4XrPrbfJcphdkfAZzkxGl7VOPklPfeMfe1sBCuICwSI+rDUgSTgVoP3f+U/gAVTmkUAdt9Xv+OE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=wesion.com; spf=pass smtp.mailfrom=wesion.com; arc=fail smtp.client-ip=52.101.127.128
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=wesion.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=wesion.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Vyf78FqbHmajU8Wat4XOPH8GbNI9s+TOgWZE1wTiQ8UpgVu5cGKfZvi6v9GsETfSNvLPVMAIYKq0OO8KA01WeNaZx8U+ZCmt1CT9zrDT1CVeIcDl6fsmN2wQIAIGW7Kujb9suL2BRKCffx+0GgBZiTT1unvPx4I3gvDJU0xpgB1ynjJsMdUuWuWrVarCL1vGqPHrs3kGu6iwCTGeUmO9yPkjVOmA/ezjnpu84mDOSIUfLGRUJaxSPpMfkys4yExnUi2oycVDqfBbCl62CTViiYE0J16nS8h5jqwTk6/UezMjdvTGP5265FgzocfPfVzfKuy+5FLam7sdPbduINLEMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XtDRvroIGM5tXJpwLBGAUUa+V3qm0j4XhEGsyCPQJQg=;
 b=lXLqCh3IoKzdskzLFFzYHwH+iHiw4DvrU9QFHrwygEypYM2jYZh/kLIudVD1D43H1AH17EfCwtUXCUj8uW8Wajxi2QabZd7Z7EobkPXytEbXvWE7aI6FgQAPIBtYf2OcnKjVvbU7MtUIqS72CD0OPljB1B00kAIV9S5/BQOeEHadTHdlFC3uV/4reer5DROylIAFMNNI4WePgZbxobUXABnQiq3EEJ1GuhdxjG1W1+a3ArRAciZh1pdKLHjpykJVxAY7Lem1p/185XFRc7+20XngFnXX7Prbe4JnB/IB3FoYy2H/DOjRmEOsDdx6agAdpsiaNjEidXXubKLJgWjFig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wesion.com; dmarc=pass action=none header.from=wesion.com;
 dkim=pass header.d=wesion.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wesion.com;
Received: from JH0PR03MB8617.apcprd03.prod.outlook.com (2603:1096:990:91::14)
 by SEZPR03MB8663.apcprd03.prod.outlook.com (2603:1096:101:22a::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.22; Tue, 17 Mar
 2026 09:08:03 +0000
Received: from JH0PR03MB8617.apcprd03.prod.outlook.com
 ([fe80::28d:6503:f51c:11b7]) by JH0PR03MB8617.apcprd03.prod.outlook.com
 ([fe80::28d:6503:f51c:11b7%4]) with mapi id 15.20.9700.022; Tue, 17 Mar 2026
 09:08:03 +0000
From: Gray Huang <gray.huang@wesion.com>
To: heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	naoki@radxa.com,
	jonas@kwiboo.se,
	chaoyi.chen@rock-chips.com,
	i@chainsx.cn,
	michael.opdenacker@rootcommit.com,
	inindev@gmail.com,
	quentin.schulz@cherry.de,
	andrew@lunn.ch,
	alchark@gmail.com,
	pbrobinson@gmail.com,
	nick@khadas.com,
	Gray Huang <gray.huang@wesion.com>
Subject: [PATCH v2 2/2] arm64: dts: rockchip: Add Khadas Edge 2L board
Date: Tue, 17 Mar 2026 17:07:31 +0800
Message-Id: <20260317090731.600787-3-gray.huang@wesion.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260317090731.600787-1-gray.huang@wesion.com>
References: <20260317090731.600787-1-gray.huang@wesion.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR06CA0222.apcprd06.prod.outlook.com
 (2603:1096:4:68::30) To JH0PR03MB8617.apcprd03.prod.outlook.com
 (2603:1096:990:91::14)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: JH0PR03MB8617:EE_|SEZPR03MB8663:EE_
X-MS-Office365-Filtering-Correlation-Id: 1cc312fc-2197-46a6-e5bc-08de8404b1fa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|52116014|7416014|376014|366016|38350700014|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info:
	JZeVLMUwJMgdYnCpeDLXWdVKVesxQphlGVlC0+/OlhOeTlrh31qGkchoZ2qgebjn/7qQvNAIwtQTFvPPMxNtJNOHMTAO6rofBlra3gLRZTvcW9wtcqFPFpW1fUS8Su+Y+HMQrmEq+JAGAAlT5mIijc5W5nEy5OGsAt0qXTzb6+DJo/jaAoDsw/F6FWoQ3FM6zdt8zRR5P6tOr9/fbkm+cnWZfXqv2UB+rxZRAJAzZEDJgKz3UxGzBj4iyku+3WOBbFLntiIz5j4T3ilvOLBrXKUVCWBVBZSOavwapv/8mZU7xrdr/1kkDwB4n8XFGhgnEMlWh7srb7Kdswn30uGBWDfAYLxdMHMi+uDKNGSbzfkX4aCr9eRdLpTsx0at2VmmREvkGfmwNpS55/qdsU/VN1QL8UvA/6vzeJAAX2cDDBi402XA78gcYFzQ60+VcrvVeCZelB3pfik6a5TuqlNBYrelTS6y4t9QKHLvKEcr7PiF1tavgUYOxPMlwYp5NniFWym1c+f9Vl0gXgxlWuirZPgLSUro0SLa5jKDc0vW29oI7hVVwr16hgW2mDKGy1Kv14c971ZFqnHtKeSzqt7oUvwd/ElHWTz7SL7UzT5x9m7V82xHeXAIBoigkGEr8+QPwv4mDwFCw+sZ0nXHjQJz2UWMBhC1DtS66SaBNpMN7hnto7oQQXpnFEcH4IZcC6YVJyZ0uKYk1EERBYT0TokL0oPv0OLwFi9mOAnf+LLcw0UchJ+HtNkdXm5SblVjrXs2x7FMFRRsYPTwGXr3q8A7MAzTl438ilFeJiTg7+/hJaI=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:JH0PR03MB8617.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(52116014)(7416014)(376014)(366016)(38350700014)(56012099003)(18002099003)(22082099003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?EkXJzQk6qTZiV0b+af70qf1yVIedhw+Ut6fj8kkwWzL45/77Z+U/ycsu1mMb?=
 =?us-ascii?Q?FQnnsvU3TSX8biVV4Qinr0brMwOHLVxvy78GqRObs66So8v0LBZuwsByM1VH?=
 =?us-ascii?Q?KIA7i4ecMwYgboSwKHl/aft84lxa6wKMlm+fq3DvpW4NyGLBZuauDX5c6GUK?=
 =?us-ascii?Q?H8iQ1Tf4X1W7mNHa6zEnxnLl8eJHNGBdh4vAfqAlP4r9fFoHwU+yS/dlJbH9?=
 =?us-ascii?Q?8KqSw22YrXlClwFjSq1YHaykivShvln7f78y6Oqw+CzswcOYL8s8sitbC9dn?=
 =?us-ascii?Q?FDosJvadz6I9fEEz1KJe9rzJEugwxURvoBIxBh7VYxDR3XuMd64LLdlRrLgK?=
 =?us-ascii?Q?UeeqqRsmOdb7EzLfFkZqYkGaggp+QNzb0ST5pdBElvWPtsyB+HRKUjDseGIX?=
 =?us-ascii?Q?Ze6PcwLhVwji72cJLtlc3Q00jYVu66Zm3YfKgd/3uTIQgL358wfgiv2fowsV?=
 =?us-ascii?Q?XA8iBVlrZf9SB+9SfOKpknw9WHNlDrHwuUTVKgf6b40nHHIasAGrsYqh32lC?=
 =?us-ascii?Q?/xKVxn6GxIRJ7tAlbqxVUEl8tfLEk8mGpkFTOYjjvd7MD9W3KwhaCpoExudU?=
 =?us-ascii?Q?7W2GY6OgOfA5peJ7inTgUr06is/Jkyis704vHCl46ukPFo3tymAuLX+cFmOB?=
 =?us-ascii?Q?9Nvhxglua/+46JqP4vF86POSLeDtjgOnPUn/f2WoWYgBGElefEtq1Xh7dqhs?=
 =?us-ascii?Q?EsIr/UjHXyx1Pv5W9Q7FdlbBfBiKvIRFJWKB/5eGY+kJh53r39cyUx9LNzbr?=
 =?us-ascii?Q?RqzkW9L1CSjCZ7ZfzyJfPHAY/JQUSAFrbO7D0VR90+aoVhdhmjHvBvIhP/gK?=
 =?us-ascii?Q?A9JYV/Bo1gjyvGPEwHNBPtRw93I2+rQ8yX5HkHW73wRl8HQbmWlWJXJvmYN5?=
 =?us-ascii?Q?edyhbMaiZ7RqYfdBzu0W9lLJGNf/hMIUdt7jmkNclL/ogqeU809NaXPL8RmZ?=
 =?us-ascii?Q?LtiEyVVOMHhw0ngL1EjyjHwUJNSmkGzNK9DoXqRs0/M/ZdrkdJJb8dPkImfb?=
 =?us-ascii?Q?ylby5DiPVVCLmQASXGI3OGF6LW5pRp4i5ZQzn5yoomHcS0F4yr0zuCYhodLd?=
 =?us-ascii?Q?J0c+3bVjdqOIDnu59vFYA53+SCRq/LNEAzZpn079bgijlZIK3iboC5IqpU+w?=
 =?us-ascii?Q?4qLQgohIEaBim3g6uZEx7R+VFWRdsUvFlpz5rbiV7OzSNzP0cNcm2VeSCLT7?=
 =?us-ascii?Q?MeniN1pVQnMAIu3vMwVnPB/1z+lDj6Bi082NeB7Ps75tPrw4lhf7C6Bp9wZK?=
 =?us-ascii?Q?XQ40vE3Iv3s8vDtJnMd22rSp4EwnpiYb+joxOJv6XqiDz2HJyG8gZbUa+QqC?=
 =?us-ascii?Q?52DFLfLc+3aONJR1zJfq7SHFGWTRSmBOtnvrvJclUPCxRyicvOJ4F6qrlmcv?=
 =?us-ascii?Q?TYn8BHh2IhncT2YbjG2JRCwuujzSr9WBTTVmJWQxtNgfcsxpPzItK1smh+Kk?=
 =?us-ascii?Q?Ua8GMAWptRHP2TKR1+Hzseb2iE+eFznx2skHuPvE7o/4SH9s/TyKPvFlyRQv?=
 =?us-ascii?Q?kDp4feaJOMQIGjYN8W6/HojacwtriQ2tQ06O4mlaO/swi9jCH85My295zwoV?=
 =?us-ascii?Q?BzhqQ5XKqNkdlSAZ+gPWdaeA7VBipVKMWkVS6+AOs/QJ3YM8e5JEEbG3xiqZ?=
 =?us-ascii?Q?FgWo+YUiU2FxeCirp7wESE3ktkZaHwGz1Xo4GM49wsiQ98rGRauYlCk75qQt?=
 =?us-ascii?Q?Gf+xqVWkDezBReskHKUsJEOtLfKb3LAwyVRC6Tt1XKPe+ABiVNMpjpa8MGgC?=
 =?us-ascii?Q?snQX4rXgkQ=3D=3D?=
X-OriginatorOrg: wesion.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1cc312fc-2197-46a6-e5bc-08de8404b1fa
X-MS-Exchange-CrossTenant-AuthSource: JH0PR03MB8617.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2026 09:08:03.5867
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2dc3bd76-7ac2-4780-a5b7-6c6cc6b5af9b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CeLaQ1DdHYgYX2sRu/FosaqBAi4wgI5xs2VS2OOEz5JKrGbSnBdl1GftT0RtSkURrkeVMPFL5lZWVV/Pc2DlJA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEZPR03MB8663
X-Spamd-Result: default: False [3.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-276555-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,radxa.com,kwiboo.se,rock-chips.com,chainsx.cn,rootcommit.com,gmail.com,cherry.de,lunn.ch,khadas.com,wesion.com];
	DMARC_NA(0.00)[wesion.com];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gray.huang@wesion.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.654];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,wesion.com:email,wesion.com:mid]
X-Rspamd-Queue-Id: EDC212A6487
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The Khadas Edge 2L is a single board computer based on the Rockchip
RK3576 SoC.

Add basic device tree support for this board. Currently, only eMMC
and UART are enabled, allowing the board to boot into a basic Linux
system via the serial console.

Signed-off-by: Gray Huang <gray.huang@wesion.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../dts/rockchip/rk3576-khadas-edge-2l.dts    | 34 +++++++++++++++++++
 2 files changed, 35 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-khadas-edge-2l.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 4d384f153c13..127403666332 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -164,6 +164,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-armsom-sige5.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-armsom-sige5-v1.2-wifibt.dtbo
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-evb1-v10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-evb1-v10-pcie1.dtbo
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-khadas-edge-2l.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-luckfox-omni3576.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-nanopi-m5.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-nanopi-r76s.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3576-khadas-edge-2l.dts b/arch/arm64/boot/dts/rockchip/rk3576-khadas-edge-2l.dts
new file mode 100644
index 000000000000..68630379af63
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3576-khadas-edge-2l.dts
@@ -0,0 +1,34 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include "rk3576.dtsi"
+
+/ {
+	model = "Khadas Edge-2L";
+	compatible = "khadas,edge-2l", "rockchip,rk3576";
+
+	aliases {
+		mmc0 = &sdhci;
+	};
+
+	chosen {
+		stdout-path = "serial0:1500000n8";
+	};
+};
+
+&sdhci {
+	bus-width = <8>;
+	no-sdio;
+	no-sd;
+	non-removable;
+	mmc-hs400-1_8v;
+	mmc-hs400-enhanced-strobe;
+	status = "okay";
+};
+
+&uart0 {
+	status = "okay";
+};
-- 
2.34.1


