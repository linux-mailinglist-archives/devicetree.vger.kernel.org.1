Return-Path: <devicetree+bounces-269487-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +JWtN+uOomlU4AQAu9opvQ
	(envelope-from <devicetree+bounces-269487-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 07:44:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A2B191C09F9
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 07:44:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 855D530B40AF
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 06:38:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EEB034E779;
	Sat, 28 Feb 2026 06:38:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from SEYPR02CU001.outbound.protection.outlook.com (mail-koreacentralazon11023122.outbound.protection.outlook.com [40.107.44.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343E4349B16;
	Sat, 28 Feb 2026 06:38:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.44.122
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772260713; cv=fail; b=aWu7W3dwCCLAYjjQvVhS7NzxYQyj3ngwsipIZKx5A5GfYrXUzbm6rPNCh2sYOkYRNoxaJ4lBaONPLwBJV5B/WpOjQ88aL8H72Z8/T73DBlGrZCNkJrGacxg4ql2GxDBLbs/rcGM9EWSP/b/OR9NmDmwFhhhaShXZEY0d5s2KCGY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772260713; c=relaxed/simple;
	bh=8/Kt4anEqii2FATzddm9OVEXeJssEnqQM+cGlgkV/uU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 Content-Type:MIME-Version; b=S7gCivNA9kWotd+y3PS8NGVApJndsaddXYe49MfMza7cnDGo91oM0z5eqh34ELx2gPY7oC7DM+J4/Y7w90Eo23efdqP6U5dwE/6hyLbpSDlQx2HePd9g22MChZ5N/zhrI16+AHQNFhWpY/s/phKM44yC4rrlQ9rZQR3t/iYGrxU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=khadas.com; spf=pass smtp.mailfrom=khadas.com; arc=fail smtp.client-ip=40.107.44.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=khadas.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=khadas.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zKnxeTPHneFH/wMh2uQDTX3jTtZEH6qPWo1HsGZriG4Qq1q80dlCgFUo6a/KfG5mo+bP96Z0zq+oQphgb/R/pdJOpbvJpG+zpmu8pHfH+j3EYDDv1CeTyhQHY5qlYtDeRvPbq+egjzTglEUkwlVhdJXa0wzMfJcoW6DqBFGGSPxcbpTXeCpwnZ7iHASHw0QzhDUpYXY9CCfHBWwRbh4mIe/IeRyuZAdZJ+11CgZ1zbpOQUivON4QTAaEMMdCnkw/ED4lNxjQgoQ0K3Zd6Qnu9SxEYIvEDhEda7GhHoQ0LUZZbiQjURGsaxQUhhBv2d+kPfemtSJUZKt1gS+i7XU77Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XOlXQ7QnTo7fBDv9NGy+dUuAo7Uf6sLhSaMUOEiwaY0=;
 b=cOi7iPl0rwr21BGDvokJuzygcJ0Aov4hZks2DLnABXJk2irxSjSSlvnvWG6rDSYqGJLMWxJ3PIhyx4TkEpAKdfbR6kRpc4K0QeGj3CdG8KWZoCqtYMOSwr3Xb5aCDg0BR00Mu2eixzrEjE8LUNz9eXosL14IwajyCbXQpMUxZsRukhgNi6HB6QH2EgqgNzYp+jcj7E4PSU22l7/JF+GgRvMSZX3bc1keNd235aEEXVRCniSAcerON6SLFR3n9iGLzolVkHvPne3aNLFjPWzBuCGMT6+fEobk6RvStg5QjWPKy4CEDAgdTm8XTmcuS7RyHIZQfoTpKfODH/pOGB9vPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=khadas.com; dmarc=pass action=none header.from=khadas.com;
 dkim=pass header.d=khadas.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=khadas.com;
Received: from PS1PPF62EEA9B1D.apcprd03.prod.outlook.com (2603:1096:308::2da)
 by SI4PR03MB9867.apcprd03.prod.outlook.com (2603:1096:4:298::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.16; Sat, 28 Feb
 2026 06:38:30 +0000
Received: from PS1PPF62EEA9B1D.apcprd03.prod.outlook.com
 ([fe80::20a2:a696:ac88:2549]) by PS1PPF62EEA9B1D.apcprd03.prod.outlook.com
 ([fe80::20a2:a696:ac88:2549%4]) with mapi id 15.20.9654.014; Sat, 28 Feb 2026
 06:38:30 +0000
From: Nick Xie <nick@khadas.com>
To: neil.armstrong@linaro.org,
	khilman@baylibre.com,
	martin.blumenstingl@googlemail.com,
	jbrunet@baylibre.com,
	krzk+dt@kernel.org
Cc: robh@kernel.org,
	conor+dt@kernel.org,
	linux-amlogic@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Nick Xie <nick@khadas.com>
Subject: [PATCH v2 3/4] arm64: dts: amlogic: meson-s4-s905y4-khadas-vim1s: add PWM LED support
Date: Sat, 28 Feb 2026 14:37:49 +0800
Message-Id: <20260228063750.701887-4-nick@khadas.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260228063750.701887-1-nick@khadas.com>
References: <20260228063750.701887-1-nick@khadas.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: TYCP286CA0001.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:26c::7) To PS1PPF62EEA9B1D.apcprd03.prod.outlook.com
 (2603:1096:308::2da)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PS1PPF62EEA9B1D:EE_|SI4PR03MB9867:EE_
X-MS-Office365-Filtering-Correlation-Id: d34f0e7a-5838-4f29-dfc3-08de7693fc99
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|7416014|52116014|366016|1800799024|38350700014;
X-Microsoft-Antispam-Message-Info:
	NdUAEe+LRvv25zDYbbORUdavZPV6eETY05+ckanBiFnzqzAC83pirebulW5l4JUN+3aCkfWfQLTbohf5EfLAqg7bpzmvuOqFRx7No+4OkQyoirImDU03Y5J44vPsJdqlL0ppRoQhRqimhJX7cZfTb98GIzoxhzbCeXa89OWlz5py2jwE8/zpQLMRmd9jbzL1N+UxpK8w9JgBTHyeH4PD7dW1A4gw4eOsT02BZ1/KKeieM9gDKr5qaDaZl1peyJF7akYyV7ZYblVJuGuSfTB2eMqZSOTBcuVDTSGeJC3YFI/ldNY32YeBIcpiZjy2bLZKhyAOvt4CYynQWLRoJvFc2f5OMQynOeTZhlJUNPMEegMMm9jS9f3iH3kdhXCP84Wl31cNqRJUungdekul7CSyH31Af1qPQ/Uve72MELgKZcA+3iVzb7bl2hlAFLUArHJbLuGCNJikv2kHK5ZuOJL+oIvG4p7H55AMeJJgMCuqNqsW2n7D9IpvEhN0OeqFKYu6XJBUwLDfbraaSiooiURBuLqfZhwsTv8giHPUaR3CtPwsojwIusAEr+uGhc8Ur41WxWkCkZPOKvz6SWbGjtu5Rq6id/8R4VQtM28FAWtSYyBrmFNuGafc0D6ty+LFRPaiHQnjPOjZYbbE3L6+PoQ79ZPVWjwoSbHdi3l+/fBjFeil6uMb1xG29LPzRB5/UZPKREhMCj78pPu2AUjPXXAzqtY3aY40ueiFialDdFN5MXB0tS9flTp/XiZZUJPswfHxB+93jwDO9agiYFIAHHu8jMoufLj6dGS4dSqg/ovXRjo=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PS1PPF62EEA9B1D.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(52116014)(366016)(1800799024)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?Y/e/TpCEbMXiSAgtc5uqCSDU19tmd/bo+w8dLrjvvIfkHypEAxQZSaoDZImk?=
 =?us-ascii?Q?zAeij7fA4hFMANuP3CV04sU8qiTDqZltf3C/I9+P2e7xtl2VRJqJEfiDb6+i?=
 =?us-ascii?Q?B31ROcXQ7RqbY2r9pjbTaT70o3V2/mYp4axtYKX/xbShjG9uhs4btJHZfnNc?=
 =?us-ascii?Q?K29VZebZiTAbulLsBtX1UiwwTI9+f0hX1VT5f+rMCNxcSJimIxwxWYJT2+ee?=
 =?us-ascii?Q?vAVpdO8o1aiPP50lFit7zQyvfywe2kbuvKJ/xivinvW4hA4ahzIQczLFxOUp?=
 =?us-ascii?Q?qmKMPKZ2gsevE9o1rDI2X3gRhm3O1Cy6vZCldc+elZkRarY4hQoqjAFXw8dT?=
 =?us-ascii?Q?bm2vtqyiletMT2GWfrOSBXq5E0psz0uE+WNd5RpwZp0BHfT4+Xn8CQlV5v9z?=
 =?us-ascii?Q?GCjATAKFRETQ0jzysIBrjKWlZueylHc84w15XRZsGE5b548kA2k+pM+nrDJc?=
 =?us-ascii?Q?2RakT7iMpYUdC6CLHNOX7bi4pRODUj5NR9qUh1Bp+fmQMIH6XDb8ieWj1jv1?=
 =?us-ascii?Q?XblWWPV50gbxDhC2iYbCZHx/rNdTsddc0IKI2x41GySLBXrxPmSxkmEVgEEJ?=
 =?us-ascii?Q?0FFapNG3UduJx0J+CI+5mIrRjyurqLAwCETok3ijV1RGTtum2eNveeF/8c5H?=
 =?us-ascii?Q?sjsWnjeYRRbDcWXBa1IJ2wwgJTHMwgPu6comJYaY8KdgZyNwAsD4BYxCjHcc?=
 =?us-ascii?Q?/DiuyYvW7XwoF7l25rqUNr7BNUZHEwgYDsYO8XusQffe08bcRo2Rh+Bc6ZTi?=
 =?us-ascii?Q?M+cXTpsntCFwwkpDKbnZLdSTR+Q/QIQoJq2lXjlKakd33GIXaPpFuSuXYqRk?=
 =?us-ascii?Q?6EbeJLHhSRaunCETm6hgQkegbnCv2MFH6lahJmUPT9NHaMbKuL108EGnRrmj?=
 =?us-ascii?Q?yjRkKDVVpoWcoDav5++vT0T9Gb+bFCDAXMLBRL1HuQMv8dVkyUrwEbSDHlyE?=
 =?us-ascii?Q?+yZZzvRYpBch1/LXULc3FNkPBoFBxYLFOgrjwsBA8FLjAzJNYxEQCyYgzpPe?=
 =?us-ascii?Q?NIlJciG3SOdxEhuwLBeBy85lBls/ziKM7+3RQvx5E8fAFJRDSZFE9oni0MU+?=
 =?us-ascii?Q?EV2zHV/5q0INF1I8xer9MrqYTu0bpm13NiCAe4PSdwNM5lZwpUnRIfWewLON?=
 =?us-ascii?Q?Pez2iJNVh6xNsQQAsKK3MJsKofQr/92xnJTeCzmmAaBq6X86UFRyZUy8XXDA?=
 =?us-ascii?Q?rPezm2BZkftO246t66EAFvRvjXh0osQKg1qPTEnAj9GbIUxQS8K2g0O64JxV?=
 =?us-ascii?Q?wXag+1R6AXTp0YyJe3EAm8wWo2qgmIeJiMJH27Z/2sWlM89Qm1iorlM46BsS?=
 =?us-ascii?Q?O49vLvMZ1QjlKmZav7Z5QFJxaJ3eceqHRRFOxFgzIkXs/kODfcDyUhptYV/b?=
 =?us-ascii?Q?zoL812D8AGKvKg1GgFalFA2KJCqPTzuaGC36hk+ZTBJLCs3XIcgqO4qjBGaU?=
 =?us-ascii?Q?btrnpTiEeHNRQ9UdBIeoC3vjo92QSvPMlTxw0aLm1PN7rzIBRDXANQy/8Yyx?=
 =?us-ascii?Q?7UAY0Yf4GSDGI+tRniJ6Ow9fEgWE0IWZicFQxshzjKOSwdOA8F/gJBdRaSq6?=
 =?us-ascii?Q?nJsvz5XrBRFiGMjnHvMASjwQop5m1R3S5FTLCdu0cKcwh7fiwISWrBg4MtBi?=
 =?us-ascii?Q?hubrnIeHbuk9GJcmBva0abQ74Hh/4hpAA2CO4zYAvljrUOBQPvLkf1Di1FfX?=
 =?us-ascii?Q?SCCPT53lKOQXqSr9pkBt7KOe0HA89E1oepDB4cvUVxZu8PY5?=
X-OriginatorOrg: khadas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d34f0e7a-5838-4f29-dfc3-08de7693fc99
X-MS-Exchange-CrossTenant-AuthSource: PS1PPF62EEA9B1D.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2026 06:38:30.5501
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2dc3bd76-7ac2-4780-a5b7-6c6cc6b5af9b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xq3wyTqF9dXaveg5hSETw6DTt1FZcEQjXlcR/MQJVJWqeX1jJed5aKoX2I5tZUo2
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SI4PR03MB9867
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [5.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[khadas.com : SPF not aligned (relaxed), No valid DKIM,quarantine];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-269487-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	GREYLIST(0.00)[pass,body];
	FREEMAIL_TO(0.00)[linaro.org,baylibre.com,googlemail.com,kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.666];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nick@khadas.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[khadas.com:mid,khadas.com:email]
X-Rspamd-Queue-Id: A2B191C09F9
X-Rspamd-Action: no action

The Khadas VIM1S board features a white LED connected to the PWM_G
controller (PWM channel 0).

Enable the PWM_G controller and add the pwm-leds node to support
using this LED as a heartbeat indicator.

Signed-off-by: Nick Xie <nick@khadas.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 .../amlogic/meson-s4-s905y4-khadas-vim1s.dts  | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-s4-s905y4-khadas-vim1s.dts b/arch/arm64/boot/dts/amlogic/meson-s4-s905y4-khadas-vim1s.dts
index d36533f5559a8..0bd738c1e7862 100644
--- a/arch/arm64/boot/dts/amlogic/meson-s4-s905y4-khadas-vim1s.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-s4-s905y4-khadas-vim1s.dts
@@ -6,6 +6,7 @@
 /dts-v1/;
 
 #include "meson-s4.dtsi"
+#include <dt-bindings/leds/common.h>
 
 / {
 	model = "Khadas VIM1S";
@@ -43,6 +44,18 @@ emmc_pwrseq: emmc-pwrseq {
 		reset-gpios = <&gpio GPIOB_9 GPIO_ACTIVE_LOW>;
 	};
 
+	pwm-leds {
+		compatible = "pwm-leds";
+
+		led-1 {
+			color = <LED_COLOR_ID_WHITE>;
+			function = LED_FUNCTION_STATUS;
+			linux,default-trigger = "heartbeat";
+			max-brightness = <255>;
+			pwms = <&pwm_gh 0 30040 0>;
+		};
+	};
+
 	sdio_32k: sdio-32k {
 		compatible = "pwm-clock";
 		#clock-cells = <0>;
@@ -196,6 +209,12 @@ &pwm_ef {
 	pinctrl-names = "default";
 };
 
+&pwm_gh {
+	status = "okay";
+	pinctrl-0 = <&pwm_g_pins1>;
+	pinctrl-names = "default";
+};
+
 &pwm_ij {
 	status = "okay";
 };
-- 
2.34.1


