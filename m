Return-Path: <devicetree+bounces-270094-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uDDHBIKspWmpDgAAu9opvQ
	(envelope-from <devicetree+bounces-270094-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 16:28:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 1435D1DBD28
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 16:28:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E300B307D715
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 15:15:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 415E141C0A8;
	Mon,  2 Mar 2026 15:14:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TV3h1mBD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AD7341323D
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 15:14:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772464452; cv=none; b=XSZMgfUBeRtvI5D7JeConO02XSkZNMSBUuGMZUXE/aXUP7AHpz/pycnLTqax9jzZoF4YbGK3E8qWlBzDwnNlCS6jx1pW0PpNJiRS/Bymaiz4D3gZu6AiNdW2eYa2e3w+hKsoEwI8vu9QS2lD84E6oIicQwCz/o1kkXDaTcWR1uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772464452; c=relaxed/simple;
	bh=70rfTlR2IAWuKF6gWYOHTAy0yzzcBoXO6BwKFGm1+do=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hhu7l9w5ABcBYyCF54cmsAU/ygoJB3Dwv4GAwUJ5nnjjXDlDP36NUbCrZNOTcKLnUxPKYCszD5Nz6y/cUE6YEQfDF1DyyL+fbNr79T7dUI0rRzxBefo0vy2X4xKBYlMaA3upOyXAlj+UzvDr1hNtYJc2AP+nVxtScze+9HDIJjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TV3h1mBD; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-48373a4bca3so27579585e9.0
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 07:14:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772464445; x=1773069245; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fiI3b1wOWntFX27ERmDlj5qmTKTz44jgUTrCNSLGaQE=;
        b=TV3h1mBD/9PJeyH6glKCbC7JSf9l/+gI49GDAZzHTR242hp1AaO235XLy/tCNqDi+s
         YzNZgnArkLPLLShyK9hL0VIzgXn5ZflHQDu6wON7fGmgoyRbV/xxS0Ui2j/fQKUHALmM
         wpwIePtanVt//lbTl8vDf1pMQH5EMRJI7ANRFLLi8Tv9EKfXHyGTbngiR4Sq6sqKE5hv
         2JiznmWfbRhuBSnhg3OEnSA4gtfCvLDEdvZUv3J9zqjDwx2h1mIocGP6eRzMAJ9DkHh+
         H05ST3zUtJyR7xdvgV9iufFz4XN1QWWsqH/phDFLDai4ZQ7LsgZ5cXckZ5b6l9w6bxQG
         lrjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772464445; x=1773069245;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fiI3b1wOWntFX27ERmDlj5qmTKTz44jgUTrCNSLGaQE=;
        b=VJ81KQDkOaP0SiO3btBJhypLcTp+Z48x/WgUsg2fDOvLmmDpolq7/K0IYFHUO7aQ9C
         bNezhCWCsBP6Q+Pcbrh8TIG+I/BhgoSz91VdwBFMNcRw4qXDc3Y25ztEPP1cTWfUHptr
         QYa9C+2AA5EO2KsDF9N12ML2WI2cMjMMwLHNkzc8QFLZLfFfuRngnP8DiWnDpe6Hh+oX
         b3pw5gkXz5fFoZif4tT15ktce1r6WogquvQsq4dZB2E1uy4XouO51UA89UT/N4Y9mRPr
         cX5ODksZWodPYSUi4najYeeGcVz80C2T0FI0AxLTzyip1uq16mvorKKvDdZDUznPZoLt
         NwAg==
X-Forwarded-Encrypted: i=1; AJvYcCUDmF3GWw+lfboD5ediCss/1Mg5vGzJszu132CNyFCDlIpc+ptUl25Tobaw7MUbJHQrINco+7cn2rzv@vger.kernel.org
X-Gm-Message-State: AOJu0Ywwf8vc9go2nozbtVGlPdBjGY3t64MW6xmsTlaX8TwRFUXQWrmb
	lIWgkygTIX8GB9rDK2bxZz/MMEYYWnCh0hSToXNdtkgz6L8/EgctyQuR
X-Gm-Gg: ATEYQzzKONA1XEWTrGROrC8l0HDFVP/pDQ11yOdl0KiGJSkk4e/YUxRE3fJZQoOdaeY
	W2IzcA5vQd93+EioP4svYHmR/De+Qrtyt6zD/lb4mkA1BM6eoPeE1AenPKV35nrlPlQumLj7K95
	XFh0yASRtjFE/tSH0Mk8ByrQX2iWo5h8jBjrfX4ZXUB/oX6ufJ8pmcCnhzC7N8ZBxGrFh7ewTlS
	s6jYEyf2hv+18FNkrZafvdpyAPyb1g7oWqoKwajFAaNFL91PbmRmnwjnsNP2HZ46BM5fhplbAYg
	BOFqy4Eda8cGTOt5auSKOxQa2HjQl5UcmHUNI0qROwQOEx6kH8Mk0gOrMhUIIuJAcYTuH5QBUgL
	gLMOVcZATWmvGUUpHjhPJ+ctpgRhfybM/S/9yFxAc4A1IOO1T7z/FOTHxBlP6MHMT3CLFJTldbH
	L2xj0FF3bU6arJe6O7n65ZOUlQ2dqo590QMzWlz8wjn7QOlKzSduxWQnmqQ9M3Dn2xSQ==
X-Received: by 2002:a05:600c:a085:b0:483:badb:618f with SMTP id 5b1f17b1804b1-483c9bc5b7dmr211763895e9.25.1772464444896;
        Mon, 02 Mar 2026 07:14:04 -0800 (PST)
Received: from ipedrosa-thinkpadx1carbongen12.rmtes.csb ([67.218.235.131])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bd70e692sm437240265e9.7.2026.03.02.07.14.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 07:14:04 -0800 (PST)
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Date: Mon, 02 Mar 2026 16:13:30 +0100
Subject: [PATCH 09/10] riscv: dts: spacemit: k1-orangepi-rv2: add PMIC and
 power infrastructure
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260302-orangepi-sd-card-uhs-v1-9-89c219973c0c@gmail.com>
References: <20260302-orangepi-sd-card-uhs-v1-0-89c219973c0c@gmail.com>
In-Reply-To: <20260302-orangepi-sd-card-uhs-v1-0-89c219973c0c@gmail.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
 Adrian Hunter <adrian.hunter@intel.com>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>
Cc: Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
 Javier Martinez Canillas <javierm@redhat.com>, linux-mmc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Iker Pedrosa <ikerpedrosam@gmail.com>
X-Mailer: b4 0.14.2
X-Rspamd-Queue-Id: 1435D1DBD28
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270094-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[rootcommit.com,redhat.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ikerpedrosam@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,0.0.0.41:email]
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


