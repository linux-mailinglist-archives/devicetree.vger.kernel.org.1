Return-Path: <devicetree+bounces-138954-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 39AD5A135EF
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 10:00:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 733A33A4F74
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 08:59:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B6401D6DDA;
	Thu, 16 Jan 2025 08:59:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sc4LdxeB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372D41D86F1
	for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737017995; cv=none; b=JFcBylwr6iqGeO/Osw8i7u7qktAqD8Gl66abqPPuqZx52qYSZKorTfc3ehEDF1cmf927WF9ZIgct8gldXUzUgwnao25ApG7iNwBALPR2tGSQ2kiQ40XXGAf+yiuDlKOHNzw5a1Fx0jq6ReTY6xiSb8dk9DgboE8UIf5Z9eSB7BI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737017995; c=relaxed/simple;
	bh=RfMuUoXeJl/FEyLheCqx61LU5UQ5YT9Fqhag252tm9E=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=C2P8YtSfyyGmKaVrBw8Agbo2flkGKJ5CDWPuIslVqeFwvc/+Q7u/BWLZLLH0GUGalXp2pNUkFCEccuCbfgmY9m688exrq9HId45trxDjAuEQv6VkuF6kbQsRI3TL0nqSabwyzZZr+f1qBg+aEHs6b/wZqljYQ3hjwLV4SssHCPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sc4LdxeB; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4361e82e3c3so978235e9.0
        for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 00:59:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737017991; x=1737622791; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UZ/rmGzncsFVOVpELvTtqMQDv8MILpBfFA/LpGTbzeo=;
        b=sc4LdxeBK/YF1svngiywJavzsi5g7Ig73K4OwvVNu1kiNJ95S6l6FtdkgFUCNZpMC2
         vS0q5iXRTKwAqkDoD1oA1YfOnKZW9863SHW3lObLOKIYGzgWdySEGUJYIDR7+ch+IKTb
         5XWo5unjrT+LPufRmVfSNqhiBLb7h81gC4eZfK2B40A+BLayS8R4JVts9IBmuMHeWZIH
         vIU3WKKxX2dTn3LvxSlW4GuI9bgfiO9l0K1VZY1SsH7Jyrj9iHkv6tp7uHaGhZzCddoR
         up+cfr6bGULX2bUdCGNQ/4/8O2CvXf3Sj+IwVCCBs1Vd6NPBlDNVjgzoEWcu+ovYSFXa
         wAZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737017991; x=1737622791;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UZ/rmGzncsFVOVpELvTtqMQDv8MILpBfFA/LpGTbzeo=;
        b=v2JJ2IT4sZBxKVWOy+xBZO0k9kZqEm2ps45SV+f+S/OQYHn9j2ohBX9MkjD4cTzjLy
         mCa3fypnYeckW+ymYaZ7CSPKz8B/bUMbopcjoyqDln4weP6N918wUech99JSmuC4lqmR
         cn4WQ/wjXBKn32VIWv8kQIBIp5XlnWsn6zshzP4j+ZbrZeaLFmVL3ADvCLYrE6eoDmQw
         BIJG6X2HMr0eOYSIWi/y8QWPz4LWjtMyjtapyXL8Uc1bOZ+LgypV3z4eJEKh1NsuTQrn
         +DMMkxdelB8jYtMOS1ZWOIb3Zag09VDyWnkFlk0DFD9bQieY4JMYv6zMEu8l6dCTyjKJ
         pm5g==
X-Forwarded-Encrypted: i=1; AJvYcCXwcHZyI0iOPBkNEUkYI5TCCzD/kF7YCitGolhOoXpETer6caeEZK0F4UZEULc+rmz9z8aOMWCHeU6E@vger.kernel.org
X-Gm-Message-State: AOJu0YyHWTKnZ/q8+PPStXl2XZnG6z3g9nxv65HzzWO+WrT9U0dp9YkO
	3rky01SUQJFIBNR096+fDBcBjKsLt1gHFT3AICjSSrqNBKQL0kfpI4BTRa61xOk=
X-Gm-Gg: ASbGnctyI3TtpaEVCGSas6pm2Zd385eEsY8oYmVksU5wkPXJE1dQn18oiFBOD42T7hx
	sv3pjLHHa2DpMPsmKs2qhvYxEyomZCT+6illQhL/BdBfO9yHzP/fM4SFt+3sDIPu6VabO1vElnO
	X8bHT2iH1nFTO81e/Jhw5bOPKVfVI6CRcmJzqSTNFd2+I77Y2/xxxuXNkU7tMvl2alXwNJ9/7gR
	blhPkhFzEAkI2apUZvUsh+rK858AtrYZW3W4qLt8ySQZzgZxAmDq9qDD6cC/0sXf4E1mvE=
X-Google-Smtp-Source: AGHT+IFvKV9ktUcjUU8r4rO66150f+sIDyBQzz/zVuwn9bnjqAFlGMUF/fApYPt/cqqbettN3ylbwA==
X-Received: by 2002:a05:600c:1c1a:b0:42c:bfd6:9d2f with SMTP id 5b1f17b1804b1-436e26867ebmr123456115e9.1.1737017991550;
        Thu, 16 Jan 2025 00:59:51 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-437c7540ae7sm51144085e9.33.2025.01.16.00.59.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jan 2025 00:59:50 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andrew Lunn <andrew@lunn.ch>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Russell King <linux@armlinux.org.uk>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: marvell: armada: Align GPIO hog name with bindings
Date: Thu, 16 Jan 2025 09:59:47 +0100
Message-ID: <20250116085947.87241-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Bindings expect GPIO hog names to end with 'hog' suffix, so correct it
to fix dtbs_check warnings like:

  armada-385-clearfog-gtr-s4.dtb: wifi-disable: $nodename:0: 'wifi-disable' does not match '^.+-hog(-[0-9]+)?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/marvell/armada-385-clearfog-gtr.dtsi | 8 ++++----
 arch/arm/boot/dts/marvell/armada-388-clearfog-base.dts | 2 +-
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/marvell/armada-385-clearfog-gtr.dtsi b/arch/arm/boot/dts/marvell/armada-385-clearfog-gtr.dtsi
index 8208c6a9627a..7aa71a9aa1bb 100644
--- a/arch/arm/boot/dts/marvell/armada-385-clearfog-gtr.dtsi
+++ b/arch/arm/boot/dts/marvell/armada-385-clearfog-gtr.dtsi
@@ -453,7 +453,7 @@ &gpio0 {
 	pinctrl-0 = <&cf_gtr_fan_pwm &cf_gtr_wifi_disable_pins>;
 	pinctrl-names = "default";
 
-	wifi-disable {
+	wifi-disable-hog {
 		gpio-hog;
 		gpios = <30 GPIO_ACTIVE_LOW>, <31 GPIO_ACTIVE_LOW>;
 		output-low;
@@ -465,7 +465,7 @@ &gpio1 {
 	pinctrl-0 = <&cf_gtr_isolation_pins &cf_gtr_poe_reset_pins &cf_gtr_lte_disable_pins>;
 	pinctrl-names = "default";
 
-	lte-disable {
+	lte-disable-hog {
 		gpio-hog;
 		gpios = <2 GPIO_ACTIVE_LOW>;
 		output-low;
@@ -476,14 +476,14 @@ lte-disable {
 	 * This signal, when asserted, isolates Armada 38x sample at reset pins
 	 * from control of external devices. Should be de-asserted after reset.
 	 */
-	sar-isolation {
+	sar-isolation-hog {
 		gpio-hog;
 		gpios = <15 GPIO_ACTIVE_LOW>;
 		output-low;
 		line-name = "sar-isolation";
 	};
 
-	poe-reset {
+	poe-reset-hog {
 		gpio-hog;
 		gpios = <16 GPIO_ACTIVE_LOW>;
 		output-low;
diff --git a/arch/arm/boot/dts/marvell/armada-388-clearfog-base.dts b/arch/arm/boot/dts/marvell/armada-388-clearfog-base.dts
index f7daa3bc707e..cf32ba9b4e8e 100644
--- a/arch/arm/boot/dts/marvell/armada-388-clearfog-base.dts
+++ b/arch/arm/boot/dts/marvell/armada-388-clearfog-base.dts
@@ -34,7 +34,7 @@ &eth1 {
 };
 
 &gpio0 {
-	phy1_reset {
+	phy1-reset-hog {
 		gpio-hog;
 		gpios = <19 GPIO_ACTIVE_LOW>;
 		output-low;
-- 
2.43.0


