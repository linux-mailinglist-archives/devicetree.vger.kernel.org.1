Return-Path: <devicetree+bounces-146033-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 37EC6A330E7
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 21:42:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BE3273A88DC
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 20:41:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C121F201018;
	Wed, 12 Feb 2025 20:42:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RzUk/Gxc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC40C1FF7C8
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 20:42:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739392924; cv=none; b=SbsKLPe4CovaA7Oev9zixfQwC7kd61VskGXpU4RaseN25+OTgypi0VKvnZDlz62nUFIE/wi0BlMh/SygLxZShEVkOqoAwRS/pYvjsC5vhMHTopuWuD3LWGxaHk/BgE1cDTZd3WDaIdVKS6JMsrm/FaiBEWZDamjMnHvywj4okMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739392924; c=relaxed/simple;
	bh=RfMuUoXeJl/FEyLheCqx61LU5UQ5YT9Fqhag252tm9E=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=IkkFbc1MyLxkHrvdmR4zz9dFqJB7+1n9WmJxI38t8DzBIETt5fea7jZ8nK0a1bUb93rog3ko/h7XapAwzJmCl/XLdJovnOTBXAnkkXjS3pHqpvaZYqEi90kVN8aNwyZgF36ENT03+46iPwbVZDkjvJtTqC8jff8aUccNmPTdgSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RzUk/Gxc; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-43938828d02so195765e9.1
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 12:42:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739392921; x=1739997721; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UZ/rmGzncsFVOVpELvTtqMQDv8MILpBfFA/LpGTbzeo=;
        b=RzUk/GxcCqcMgEzcs+H17FHYSh5t3TYJngxcI5mU+NfHimDpT+rd7to/iclLm2AoLV
         fMJMfBrksVVNxVHDE0qNo6rKUVBzZzUt7N2W27Yzx0i2/+boerVRaKtwbAPrs0I1M7DJ
         fQZ+m2s05KZXv6FhKHXhAKVhc2RYDEhirBxd/1KS8pELW0CCDhBKNUEP9BchEOXe81AP
         iczil9W61P2uRebifN7qK568U+wQGI7VnT+fErJ9zTJfOSfCbZ8JGscdqXrqyiou+WEC
         RN0rT/a8ORUWI8m8wdkOFbs2y30ygeWPuIb2s+HwLxRUJw7tIUeKfLwY538iqnY40nak
         oC5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739392921; x=1739997721;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UZ/rmGzncsFVOVpELvTtqMQDv8MILpBfFA/LpGTbzeo=;
        b=FZNvGYj2Hv4swgHHtp6bF3D9MrPDUo8t/fSHM7TUM1ItkBMpgfFrT0iMQwOZOnnuUy
         WKIkCstlGb5BG3vKNy/2sBke4XQP5RDtvHUXtWkOev6WV2HiVwbBhn+5XrLdAVOhj8rq
         iBc3jFHuCu3uTh73rMG7eMzMSvmpB6VzH1c7w4lFTYTOUo5hqQuXRjNB7HjWgD2yKtRZ
         qsV+mHICCdEUrn+FAzW6Q+kUVj+cM5KWI06H+jjO+jFkkAhptQ/vUEtBU9uLJeRb9P4U
         9wqNE3Xg/L4W8zn4mGMgfD3Y41WBs0op8XC2VM4lkS5H0pn5Tlpr6hkLM/FJkNVo2k6e
         la3w==
X-Forwarded-Encrypted: i=1; AJvYcCWd9bTGVSFg51ClSe/bWzyEunjfIRHj2Ry9i/Lrlfo4o5SCuh2+4NeeZ1RCx20KpnQDSxuViU6PdiGY@vger.kernel.org
X-Gm-Message-State: AOJu0YysPjAOrYSn3lP3wJTjCAVQuUkMSAyGlbINSn0hSyTokJ39WLB0
	RTqkjFJd7JC4h1E0N+3J1KStUJfdjMHhcb8YUpbIAuyJGpikeI91ZySQZN0leZw=
X-Gm-Gg: ASbGncvjzAN2tMYfPhGlA6IZ01adySQoTcO4n+XAZQxTHtfLnLHeEtAT6FN+jxvbOoX
	aye1CT3OuTjx2a8mD9+Eoxr6d08zUs/yq/CZxi1/8TSyyu2P9Qg92O7Tj0j0K8ARhLeeXHX7sta
	bvEF5gtWtCyAHiGw0dvJJKuzPwUtyfmyR+l7e8GQUIZ9ZtrFfkwU6LyO5hQN/52wQ/2f971on/2
	7gqkURdeUV6oNdLcdLuOlos+ewHwYFnrIhB4jd2Ee/SA1fjXAWC9pHjLmMyE1rEzcaJuZN9O5fw
	JyMV0FfhOPVqzY0oWB0oCFmJbgq6Jw==
X-Google-Smtp-Source: AGHT+IGoPR2Drpc4wRwddj+6Un33qP+pZ07paA98x1dyqW0bfxx+Hf1EVCbq5JjVdt7OJuqOXUx5Nw==
X-Received: by 2002:a5d:6d0b:0:b0:38d:c2f8:d945 with SMTP id ffacd0b85a97d-38dea2fa9b7mr1563975f8f.13.1739392919603;
        Wed, 12 Feb 2025 12:41:59 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.144])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4395a070ea7sm29818865e9.25.2025.02.12.12.41.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Feb 2025 12:41:58 -0800 (PST)
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
Subject: [PATCH RESEND] ARM: dts: marvell: armada: Align GPIO hog name with bindings
Date: Wed, 12 Feb 2025 21:41:56 +0100
Message-ID: <20250212204156.57261-1-krzysztof.kozlowski@linaro.org>
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


