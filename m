Return-Path: <devicetree+bounces-219469-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A10DB8BCF1
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 03:47:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1DC261C0576C
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 01:47:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A43E1FBEB9;
	Sat, 20 Sep 2025 01:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JhMm8xki"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86E7B1F78E6
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 01:47:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758332828; cv=none; b=IXRQrUM1VpaJEHocKIO+5MlveuU2rvTc1/wIVRxPx3aYzwpTlClE5Ctu3gLCyrCmsqx3RSwPAXLgtfHWOBvZH+T7ybUkAAj0IUrnzMy5Qu5LSiGJD9CuyrUms+A+l5prethn2RllPhvYS183y1gEebFVGMdhxDbpW6iRpF8VgOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758332828; c=relaxed/simple;
	bh=wttyNu3FB0JHzpeprhteba5sV89v7tUiRECg5BE75Mw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=n3noiKGoXuTZJ9pId+LadMDZ7PUDZ+SvESZhQ6+Jf3Cmgz8H9CBeqMd3tuHfytxSQ1/QG+HudYt4nl+9uMS+6+VA5SpOhM1HljqEOrLMpqIo5ZaJFPMDbY8iuoztAIZlLrM3w8XhPguJf/ZS5WGGEkxCRVfo9bAbj0x8hFaE3sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JhMm8xki; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-271d1305ad7so410255ad.2
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 18:47:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758332827; x=1758937627; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PcxgtjVmCUZxaigJVlvyZe7TDMmHkjmyWKCsB43+itQ=;
        b=JhMm8xkiucygClKtWcJDQyATzF+yhqdWj//AfVdMkCqpkbgpI0eH7GMyae9ib4PCh1
         daHwE9qtgdQSETWBHsouSU2qrU9qlaAKINjy/j9LUcUG7/xderIWV6y4kuNzYNiKL+jn
         GJv9Srs4QMdzfK2rv+bR0p8MKS1umbyPMk8umk1dkR4XBeUrjpURtMyJ13Sv/I2w7I/2
         /6RsoTLbVUZfvQdMJUlLbojytZVf/Kyh1jEVxL139ZKs8Gea2bBCAN8/RkjuJosOn1v+
         gkiWSUoUmL3Mi7/Wf6TJ9k2y7zQmtG5vE7gHpA1MTELa+w+lvJs/hjA2AmHcwmDpZWxR
         b9wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758332827; x=1758937627;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PcxgtjVmCUZxaigJVlvyZe7TDMmHkjmyWKCsB43+itQ=;
        b=uMfvSYdm+9mzPUvz0sMZmOIakpsL6vTySpWZL1+abxT6AY+beU0kvL1+IkuoBY9Jz8
         9cN6r5ZnFoPGI6S1v07Iy8POAT6v1iqvxzyBuyjowXqxWDr5xxGXi+D0y2R5Ifko6SQH
         0GhWw7BaLC6OptfpEjcylsyiPWy4S60nlvt3vDzPdQWaCBR/uJ12zdW3Z+oAtG7h6fMS
         8IWgpfrXLUIUQPSo6NQXu2Zih6sVpFydzQmpP/U8oMCONwzFqZ5FWBWcRgc28MKJmBjG
         s5wxYPgKIOgXo7tYG1c53ob53g4aPBd3EK0QaPsI5qS7eU7/uE4EBEVZyWCjfDhr8UmI
         4QAw==
X-Gm-Message-State: AOJu0YzziEVPWavHg4fpCwqVUupgHUdRokcbM2qeuGmTVifdxgpPsH8S
	uTVFmqG8bM4iCg05orl49ewPkAlnNZgJHk44PZHvo6kh2AEWD3UgXwkc
X-Gm-Gg: ASbGnct4iATxHXSDzbz0fXTOJeKmPwiDU7Um5uXlONwUvUHV2e7sWH31c8567CAapVu
	IqCaa3QiLeS2YsyH6N5THhEQ0DN765KxzMQRLlD0YdmDXoGTAharfgQAshrA/nInv3Az/44XtAY
	dKv1foUpwltZM2BNkWqWzI44IkTCB6qvYWxCgrvxws6x3EEsfDkAvwj7mPQQabZJdOqUKs0dV+b
	Gel92l0jHsDf/KevEi6cHiv4/wFb714sfu1Uq6Bej43dbuQ5t248X3oKCq76aO3cba6bePFh+2q
	e9Ig3HcKXW56WPdxtkFhUysgyM5wSp+JCabl3qqP6TW9PKWtIOykDZbHu6QqHUr4gTmsiXILPX3
	YPEjgTQqqCqGNXOMb13Ui
X-Google-Smtp-Source: AGHT+IHu1VNSw+3ZcwebyxobluQNwXjhZ7r3UWUU730aQvye7TB/kSMESaaIT14huvuykOXkg+coQw==
X-Received: by 2002:a17:903:90b:b0:263:b8f:77dd with SMTP id d9443c01a7336-269ba568cd3mr78159545ad.57.1758332826778;
        Fri, 19 Sep 2025 18:47:06 -0700 (PDT)
Received: from archlinux ([191.193.70.152])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2698033c922sm65709455ad.131.2025.09.19.18.47.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 18:47:06 -0700 (PDT)
From: =?UTF-8?q?Eric=20Gon=C3=A7alves?= <ghatto404@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/5] arm64: dts: qcom: r0q: add gpio keys
Date: Sat, 20 Sep 2025 01:46:33 +0000
Message-ID: <20250920014637.38175-2-ghatto404@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250920014637.38175-1-ghatto404@gmail.com>
References: <20250920014637.38175-1-ghatto404@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add GPIO keys support to Samsung Galaxy S22 (r0q).

Signed-off-by: Eric Gonçalves <ghatto404@gmail.com>
---
 .../boot/dts/qcom/sm8450-samsung-r0q.dts      | 53 +++++++++++++++----
 1 file changed, 44 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts b/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
index 880d74ae6032..70e953824996 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
+++ b/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
@@ -2,11 +2,12 @@
 
 /dts-v1/;
 
+#include <dt-bindings/input/linux-event-codes.h>
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
-
 #include "sm8450.dtsi"
 #include "pm8350.dtsi"
 #include "pm8350c.dtsi"
+#include "pmk8350.dtsi"
 
 / {
 	model = "Samsung Galaxy S22 5G";
@@ -28,13 +29,19 @@ framebuffer: framebuffer@b8000000 {
 		};
 	};
 
-	vph_pwr: regulator-vph-pwr {
-		compatible = "regulator-fixed";
-		regulator-name = "vph_pwr";
-		regulator-min-microvolt = <3700000>;
-		regulator-max-microvolt = <3700000>;
-		regulator-always-on;
-		regulator-boot-on;
+	gpio-keys {
+		compatible = "gpio-keys";
+		autorepeat;
+
+		pinctrl-0 = <&vol_up_n>;
+		pinctrl-names = "default";
+
+		key-vol-up {
+			label = "Volume Up";
+			linux,code = <KEY_VOLUMEUP>;
+			gpios = <&pm8350_gpios 6 GPIO_ACTIVE_LOW>;
+			debounce-interval = <15>;
+		};
 	};
 
 	reserved-memory {
@@ -47,6 +54,15 @@ splash-region@b8000000 {
 			no-map;
 		};
 	};
+
+	vph_pwr: regulator-vph-pwr {
+		compatible = "regulator-fixed";
+		regulator-name = "vph_pwr";
+		regulator-min-microvolt = <3700000>;
+		regulator-max-microvolt = <3700000>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
 };
 
 &apps_rsc {
@@ -119,8 +135,27 @@ vreg_l1c_1p8: ldo1 {
 	};
 };
 
+&pm8350_gpios {
+	vol_up_n: vol-up-n-state {
+		pins = "gpio6";
+		function = "normal";
+		power-source = <1>;
+		input-enable;
+	};
+};
+
+&pon_pwrkey {
+	status = "okay";
+};
+
+&pon_resin {
+	linux,code = <KEY_VOLUMEDOWN>;
+
+	status = "okay";
+};
+
 &tlmm {
-	gpio-reserved-ranges = <36 4>; /* SPI (not linked to anything) */
+	gpio-reserved-ranges = <36 4>; /* SPI (Unused) */
 };
 
 &usb_1 {
-- 
2.51.0


