Return-Path: <devicetree+bounces-272872-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6K/pBXWyrmkSHwIAu9opvQ
	(envelope-from <devicetree+bounces-272872-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 12:43:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8455A238196
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 12:43:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 703E9305C3F0
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 11:41:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9AEF3A8756;
	Mon,  9 Mar 2026 11:40:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AAVWuHyL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF3D93A6419
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 11:40:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773056442; cv=none; b=XulH5R3sS1sx5trUAalPOaIF1JmPJ6xtnV4effFAYIlgoVMrTvDjgqfeL4teB5KzkURSOd8pSHJalPaWYkBgF/Nqi+ho9aUwMoxyvNzmb+L+OXG6pDaj/z5ZN54UFC5id4ZT2oAG4ipxZLu8mSjGp8ymtkoNCQ3bdZTx/lRquqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773056442; c=relaxed/simple;
	bh=70rfTlR2IAWuKF6gWYOHTAy0yzzcBoXO6BwKFGm1+do=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=o8vejVF16i6DQOWCTYJ4AUpDTXcteVG5uwPLqlb9ceM5udHupLILn26KwNRXiMgS7RnPtG+mt6JbiysOvIK0CG2n9Vu3Z6d1BGOGQVX9J1Ah0XNLVBRnVLrOxhNdP2JMcADWb6sJZRBZaeiEOj5b281fY2nEJdZ4pa5qwH++0js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AAVWuHyL; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-439ac15f35fso8135697f8f.0
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 04:40:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773056439; x=1773661239; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fiI3b1wOWntFX27ERmDlj5qmTKTz44jgUTrCNSLGaQE=;
        b=AAVWuHyLLmfrtEVjOCtkclg1QcokC9MoiaMcoW1ZxweqX3Q1pxgdc6H4dTVS39yj07
         TBuv+0an4vN1oYej1j6ofNlG8HeAzzGJ2PIp3kRkTBQZ0bdtMaJ1mzHZOGV442KjvKZ7
         cORcOI9W5Chpj3undbDQwNmpNkhWEfRplJ3a2O2GG+iEKFhgrvv7GE+IQlz6qWVDZGH3
         WybKzXzL/NMcoemX9zWD8QYgHCg8wGM6H5BJKCd1q/b7YIAQDTxlP2iw9A6lk9A2ur5q
         5WcI9iyt2Cyt7jXwM5+t+mPQWOURxHY24bWb3oCif3M/wr2Qz6YLGopAnmTWnTZVrqkJ
         jTAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773056439; x=1773661239;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fiI3b1wOWntFX27ERmDlj5qmTKTz44jgUTrCNSLGaQE=;
        b=ofSymR638AMPTJzShCDGKdf8T1WTLeghGnpbIURFWYSTnPHjlmEJEoS1zjFFW8EdAI
         DmYjx14pvaTxBoi0rCPNyBkXkllzHJgWhYcCGbm+TwDQEdxywaTwVZHif3KGBi8OmV4L
         lLEjHISrNt1Q+5jDY9E9zGUhg9jZFjpn00KBJshp3UYy8V6wH/nvsf0BbE0Qy2rILOPo
         9towf21X9xFzToG2AJa8ynoKngYdjByuc2S86omjTWjXJ5rE9xDVzrOR1UyLi+FUvjA6
         YCWJOOkwaMXGTmN1uGblxQoCUHp9+kCjXXcBiJyniIoxBZrdg+bzeelX0vQd2gARNgjG
         /rcw==
X-Forwarded-Encrypted: i=1; AJvYcCWO2Fz4TiSsME8sF8jYdYadkQ3XpZ9zyow6tzxoupr8rkIjBw6SyaoDU9Q2p1qRedJl3jRmOLqSxgn4@vger.kernel.org
X-Gm-Message-State: AOJu0YxPM2BeMe8QOniM36nVkNSJlpTGtWP30y90KOPjCR3+LTzT/84G
	eg+HOePcoGfmPsQ6v2jGqp2mEeH8+J2fQPBZEhZhvnIpCujGlI0UMFVZ
X-Gm-Gg: ATEYQzzv+/UPaAuu3T3FERImJshXn0ZJFN7H69TNWeQtF5TV0V+CGIQ7Jdu6WshzcdK
	pPL671o+Ilf0jBVdGeFRmmuzOum8d3fmbY38m+4XeJlFdRokKAFcAI7iWqZrKtUDHbxmuYObIVj
	HGuMSLtAOWQrVEQaKaOS9JXrMXnHEooXDVfxJ8UOBm5Wg8o7r1/H566niv0ICfb7GZMZLJfExek
	sAhrcln/eHoyZ6fdt2UA5DULBQVxrzrL4NGSIuu3KrmImgLbvJa9t2uGeQHnl/XiKdi3wHijoQK
	dKoigvfaHUMZKom5LO0lMOtX9ga9nAsJWD/utBDXrKQ47gV2qWHumcSTWM2ENoWM6j+4sWvhDc+
	8xw4nRg1bfLC6SiscJsJpucESCJ0sbEizioEYpjyOrtsF/gp2np9SFOKN2r1J1uQDq91qnOtA5h
	ygsjfE/wCqwE+Roe3RrETBiMIATXG/Lbf6NyyyO2uM/m6FXf8GSqn9e58Jv2JkQW2p
X-Received: by 2002:a5d:5d84:0:b0:439:bc0a:4164 with SMTP id ffacd0b85a97d-439da330b92mr19644526f8f.19.1773056439050;
        Mon, 09 Mar 2026 04:40:39 -0700 (PDT)
Received: from ipedrosa-thinkpadx1carbongen12.rmtes.csb ([67.218.236.52])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dad8ec97sm28471699f8f.5.2026.03.09.04.40.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 04:40:38 -0700 (PDT)
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Date: Mon, 09 Mar 2026 12:40:16 +0100
Subject: [PATCH v2 6/7] riscv: dts: spacemit: k1-orangepi-rv2: add PMIC and
 power infrastructure
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260309-orangepi-sd-card-uhs-v2-6-5bb2b574df5d@gmail.com>
References: <20260309-orangepi-sd-card-uhs-v2-0-5bb2b574df5d@gmail.com>
In-Reply-To: <20260309-orangepi-sd-card-uhs-v2-0-5bb2b574df5d@gmail.com>
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
 Iker Pedrosa <ikerpedrosam@gmail.com>
X-Mailer: b4 0.14.2
X-Rspamd-Queue-Id: 8455A238196
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272872-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[rootcommit.com,redhat.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ikerpedrosam@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.965];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.41:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

Add Spacemit P1 PMIC configuration and board power infrastructure for
voltage regulation support.

- Add board power regulators (12V input, 4V rail)
- Enable I2C8 for PMIC communication
- Configure PMIC with buck4 (vmmc) and aldo1 (vqmmc) regulators
- Set up regulator constraints for SD card operation

Signed-off-by: Iker Pedrosa <ikerpedrosam@gmail.com>
---
 arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts | 48 ++++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts b/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
index 7b7331cb3c726f11d597f81917f3a3f5fc21e1b9..414b03f5e6480f05f5d7eeaaa0afb4e86425ae36 100644
--- a/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
@@ -19,6 +19,25 @@ aliases {
 		ethernet1 = &eth1;
 	};
 
+	reg_dc_in: dc-in-12v {
+		compatible = "regulator-fixed";
+		regulator-name = "dc_in_12v";
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+		regulator-boot-on;
+		regulator-always-on;
+	};
+
+	reg_vcc_4v: vcc-4v {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_4v";
+		regulator-min-microvolt = <4000000>;
+		regulator-max-microvolt = <4000000>;
+		regulator-boot-on;
+		regulator-always-on;
+		vin-supply = <&reg_dc_in>;
+	};
+
 	chosen {
 		stdout-path = "serial0";
 	};
@@ -92,3 +111,32 @@ &uart0 {
 	pinctrl-0 = <&uart0_2_cfg>;
 	status = "okay";
 };
+
+&i2c8 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c8_cfg>;
+	status = "okay";
+
+	pmic@41 {
+		compatible = "spacemit,p1";
+		reg = <0x41>;
+		interrupts = <64>;
+		vin-supply = <&reg_vcc_4v>;
+
+		regulators {
+			sd_vmmc: buck4 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-ramp-delay = <5000>;
+				regulator-always-on;
+			};
+
+			sd_vqmmc: aldo1 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3400000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+		};
+	};
+};

-- 
2.53.0


