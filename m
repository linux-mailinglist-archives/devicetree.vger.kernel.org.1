Return-Path: <devicetree+bounces-276200-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iBroKRgPuGmZYgEAu9opvQ
	(envelope-from <devicetree+bounces-276200-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 15:09:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2255029B0F2
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 15:09:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1AE903066CD7
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 14:04:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3086339C63C;
	Mon, 16 Mar 2026 14:04:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="k2+5KxeT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C987B39C65E
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 14:04:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773669885; cv=none; b=ldRd7whjTcvcK1vPmx38T05eEGlCPIlmAKqCq8WZC8qIFTYt/GlITdL/0Qc1grKiSa9/CKdzaK774Zd+GLjSlDMocq+lE3Uh813ie3zUmtBoMF7COsRaa+1ivtuaROaaeiUrnR0XiAIDKVBvzz6Ohxrqvu4H8eNp8TzIdh6451s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773669885; c=relaxed/simple;
	bh=fx2qLZcY5f16CxHdcoO1htYJobmi8onTWzwMAk9DhnY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QCMDdxQ+AgoLCSuxGQCKFv3b+Y/bTgfKEXldJnAUST9FPNb4c2akZJ90tI3mgi43ZuFjOa96lUaSCiAOjXhqMMskr1v9cmCam0fXhwtS/zWGpn136tUMbvHr3eiLKHdVmyTDpEgtmG2+ak3u7emTwuiPzjR69Tt2+PUlDhYaHMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=k2+5KxeT; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-439c5b40f60so3607822f8f.0
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 07:04:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773669881; x=1774274681; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TGku/l9FNPrwiqABN5hj0gv51qaKMC4DWzEN52XfCG0=;
        b=k2+5KxeT5DmooyN4GmYiPjtdRtxC5ZfRHpJIdl/sAo9ksryCsDTVEyaZttF53OgOCX
         jDNWjQVf4jAYzC2iEZABAvxo4PrkgLwvc0q/SBeX5mZ6VxJj2WpccgRtooc7W8jqQO14
         AWT5Zy1CJgvJAornghvIxwkhUOeSQZY+AoJH2ueQuiT7mJtJHoUdhQvk2Ktp/h1IdfVv
         ovFPV1OdTafe/qYpBJ1gwKKXVwIBtO2OolBZcjJn9IIIdZjWuFwnDCwAP/QzkzCwr/iH
         8wuFv1esBkAGafkspkqvpj+bk1Tl2pYcSEL7y/+dF96wMMNHLbQPliqSzU+3UkdEIZ4U
         x9YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773669881; x=1774274681;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=TGku/l9FNPrwiqABN5hj0gv51qaKMC4DWzEN52XfCG0=;
        b=gUl7FiJKiSpgtr1x3/T6SgqejkPThA8h4CKYI50OQ8jPPort0mAAHRAsgSg/Rjt1FH
         5NFcXmYD5OL5q5RcgLfWHeRK/Ekk1q7xGixrLOz7A6MArylYl+jGDbHikkuAN0THAGRT
         1dOVloJv5Z2oH4lSMFJSvTWVc3sh6kH/Njae5WVXZAi9+GDy0Vt0YdUzO0OCNnZoZ0Rc
         dGykiGEH/Fxhe5niMDv2+/JzrB5LNzPTgWtnH06XP9Rq4N9qx6RRBcneB5m1Inikkf/9
         MI8pEGfnlXiToLEoW97rnHeYg79r03rTbxxuVV8KBlc6XvFI2V91ke7EZmmg1bftt767
         ZoSQ==
X-Forwarded-Encrypted: i=1; AJvYcCUFl4D6k2HceViHUUfA/l6m7uzd0MK7licDrQn8sU/cgKR1RJ5Fcj250S5dH48mcCAHKHa5+P7Hqqux@vger.kernel.org
X-Gm-Message-State: AOJu0YyfnoRzMUnlQ7uVmCND4cLfBhHcezlkkTEAWDmHtb7HvMi7Ok/Z
	QOVOr7790wMECJZGVMutc2QnJ3BBmlZyoFPE75np9/U7/xHE/vg8CimGStgiXGet
X-Gm-Gg: ATEYQzypZsh8pj2KG7RK8r4zVAfQkUvpJE9z3W4u48b8xtFu+f72aZCGpLrhi8dH8ba
	njv7HovmnO7FOq+tXCQle1QFZkh6s1Umj/GgtUOneUjweum7t4hiax02/J1HrPKEBBCoWR55JHC
	i1b+CaQMlVPSLUwEjSxldWfh7JUZziOOJLRCDdjm3ItGYniS0Xu1szaE9TgPhhissjm+SWji3mN
	EkbOfvkD6vyK2ZkcSwcQaolpbePJhllHOkN1IALlsOLA9ET3Lw1Emy0g3/uIt3V960a7CEQZCjM
	YN7h73M6OdBSdtEItFLmbn2xm0aPb0SOnpav4YMZsK20CQDD9ylkN17UbtGgj1ZrGcVBqfR5yLK
	7QcGHuNJxdhOpsKTayNss7ryiTkmIVy827Y1VrHv+Hj6Ya3Z9fSkToMSHMJ/2tSX7Hq7Mhux2Xy
	v+MIAU1V1ndkl5AyjX4WvGincIOaP3G/Brx+v5vW/K/0uUwKDKSF1XJXOqaxmTwIJ6
X-Received: by 2002:a05:6000:2889:b0:43b:4153:c2a6 with SMTP id ffacd0b85a97d-43b4153c45fmr7601207f8f.36.1773669880512;
        Mon, 16 Mar 2026 07:04:40 -0700 (PDT)
Received: from ipedrosa-thinkpadx1carbongen12.rmtes.csb ([67.218.234.31])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b3a09e453sm20698725f8f.0.2026.03.16.07.04.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2026 07:04:39 -0700 (PDT)
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Date: Mon, 16 Mar 2026 15:03:35 +0100
Subject: [PATCH v3 7/7] riscv: dts: spacemit: k1-bananapi-f3: add SD card
 support with UHS modes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260316-orangepi-sd-card-uhs-v3-7-aefd3b7832df@gmail.com>
References: <20260316-orangepi-sd-card-uhs-v3-0-aefd3b7832df@gmail.com>
In-Reply-To: <20260316-orangepi-sd-card-uhs-v3-0-aefd3b7832df@gmail.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Adrian Hunter <adrian.hunter@intel.com>, 
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
 Yixun Lan <dlan@kernel.org>, Yixun Lan <dlan@kernel.org>
Cc: Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
 Javier Martinez Canillas <javierm@redhat.com>, linux-mmc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Iker Pedrosa <ikerpedrosam@gmail.com>, Anand Moon <linux.amoon@gmail.com>
X-Mailer: b4 0.14.2
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[rootcommit.com,redhat.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,gmail.com];
	TAGGED_FROM(0.00)[bounces-276200-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ikerpedrosam@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.2:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2255029B0F2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add complete SD card controller support with UHS high-speed modes.

- Enable sdhci0 controller with 4-bit bus width
- Configure card detect GPIO with inversion
- Connect vmmc-supply to buck4 for 3.3V card power
- Connect vqmmc-supply to aldo1 for 1.8V/3.3V I/O switching
- Add dual pinctrl states for voltage-dependent pin configuration
- Support UHS-I SDR25, SDR50, and SDR104 modes

This enables full SD card functionality including high-speed UHS modes
for improved performance.

Suggested-by: Anand Moon <linux.amoon@gmail.com>
Signed-off-by: Iker Pedrosa <ikerpedrosam@gmail.com>
---
 arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts | 23 +++++++++++++++++++++--
 1 file changed, 21 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
index 404b69c47b91f8c37d74a3031dbad0d94a28d1b4..a7d480d01ccc0439dbf456ed5a81f467af68056a 100644
--- a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
@@ -222,7 +222,7 @@ buck3_1v8: buck3 {
 				regulator-always-on;
 			};
 
-			buck4 {
+			buck4: buck4 {
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <3300000>;
 				regulator-ramp-delay = <5000>;
@@ -243,7 +243,7 @@ buck6 {
 				regulator-always-on;
 			};
 
-			aldo1 {
+			aldo1: aldo1 {
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <3400000>;
 				regulator-boot-on;
@@ -369,3 +369,22 @@ hub_3_0: hub@2 {
 		reset-gpios = <&gpio K1_GPIO(124) GPIO_ACTIVE_LOW>;
 	};
 };
+
+&sdhci0 {
+	pinctrl-names = "default", "state_uhs";
+	pinctrl-0 = <&mmc1_cfg>;
+	pinctrl-1 = <&mmc1_uhs_cfg>;
+	bus-width = <4>;
+	cd-gpios = <&gpio K1_GPIO(80) GPIO_ACTIVE_HIGH>;
+	cd-inverted;
+	no-mmc;
+	no-sdio;
+	disable-wp;
+	cap-sd-highspeed;
+	vmmc-supply = <&buck4>;
+	vqmmc-supply = <&aldo1>;
+	sd-uhs-sdr25;
+	sd-uhs-sdr50;
+	sd-uhs-sdr104;
+	status = "okay";
+};

-- 
2.53.0


