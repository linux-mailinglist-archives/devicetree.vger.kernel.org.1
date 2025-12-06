Return-Path: <devicetree+bounces-244886-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id DDBE6CA9FF0
	for <lists+devicetree@lfdr.de>; Sat, 06 Dec 2025 04:55:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 856653006E26
	for <lists+devicetree@lfdr.de>; Sat,  6 Dec 2025 03:55:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79E96253F13;
	Sat,  6 Dec 2025 03:54:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Fvr3tZmN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF83F2264AA
	for <devicetree@vger.kernel.org>; Sat,  6 Dec 2025 03:54:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764993299; cv=none; b=AD+HNIon2SLVy15bAg3vL0xOEJzuFr5OfJgq44zPLSIcr0eRdmHX7VPVV6HihAHzI1PireEsY5RuN3teN2hhcsQ3Ah0t5pSPbRCiGxKDMcM1ELefjGUgVgYYA2iOTNBDtkNru4BgEDmLgT8A9NL/i5MkQRZCZogtmjAsFuCjkBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764993299; c=relaxed/simple;
	bh=J8uprbH8ZrtQtllNe0ANd6MXhGs3gViM8cbLJX7l2CQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=thA/a4sIGS2TKd0UgGw3ZbOMM2qz7dffMZKf0mpv/8gmpK/kyRcQ8Ktm9IMv4n+XDCg6oIKJGnSib4xrMr1cI3sb49gKOeWOa0VgOkNX74eSrhVck2R0UQE88dCj9D83A1NcFkPCXRK2jK+LdVFccyH8v9+a1WS6jxkk+oPrKgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Fvr3tZmN; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-298250d7769so22576635ad.0
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 19:54:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764993297; x=1765598097; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ng59e0pypFuKOiBmMzueIT3kCDd4YPpY7yGIqW1d8Wo=;
        b=Fvr3tZmNcY75sCVDGmJt1MQGqjGZyverZQS+na2pljj4YMs7T+Vek+cn39H25HF8FG
         XkL6+A/yKS+r77vZLwdBT+FQ7S9FznrjJH8cAOwpxaSeR7Mv/I9i7cRXNA0u4k8IiCc2
         2NNELkAELaX3SseLC4bIoaMiiNbY6HfN1yxJwbBlkh0j4wmCKwfOa1mDiEIY9QRECOKA
         XMpyoB4Degxv8c6CuR7QcYgyWiDeTUZ3+ByyAyn7YaMHAWC7uxTnM5ELM6BjzfU5P8HR
         CK2ZtaFkHd2QjH/uFVzroHuhEQHgrG1XCalI2kRbi8EZMaM1uCF2gE7rWZOs+krKfEQN
         Ozpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764993297; x=1765598097;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ng59e0pypFuKOiBmMzueIT3kCDd4YPpY7yGIqW1d8Wo=;
        b=wCX0peigPuXWv4KMklWx8VqGVTx5JjMYv3gvHFbtUjxa5+iFeYGa3zVlpfD8VgU1VY
         k3G1YRovw2r3ft1QoPbqRC6tOS2+o2pnFWtpBEqIH2rRQKkU/iskTYQHzoC8UgpWOcTW
         CXQY3LfETtt6vrihA5N7O9Hh4UXJISH6cVG7oJ0oOLkhTeUZGrI0b4Zg8bjgebmCDrVM
         8qWU+p3FEeAFU1NUxXrsrG9s3cCyH/a7nvQ/Nq2VJAEBrQnmhpt0DC9+CGgP0l0baCtx
         S7JpPvJfJE+yjR8Pppu3NDzFcBdj+3hNwrv1RtfSE5VGbZC/1OwasS9CL4+H899iyyoL
         PIIg==
X-Forwarded-Encrypted: i=1; AJvYcCVIs939RgIDeo3iZ57D8nsO2ILfq2GygSbbMxaNaeqJB0fYbjunO6jx8S1TUUdVT8lvOnHn9befzbUC@vger.kernel.org
X-Gm-Message-State: AOJu0YwczIIKYklPxpObf4AB0ttzwaHrvyg8H7qPLUKXoz3arSLrQE6r
	Orqaqd673KcjjNW60p8y9LMlWsNuVm3/hn661KKrSdsbCmccQu6xBrfh
X-Gm-Gg: ASbGncv2B3ikwgaXPhduFRbupvFMs6UXJZ63lqEcnMHYZsIhouCEYTNjNexXJ5oR70v
	RKonH6lJz9IzjdpG3ojiGSkmAA2bNc5apMX1Ev/RymKrbQBnEcP9d5SJihfj57wczR/rIQyCDs5
	r00LMNAKKdrsLl+5U7p3Sz16H8hwsM+drgJxQ2/eREeWhpU2RpytRWc5wO+bLXQ+Xpia9iPrK4l
	ktVpQZuG4uKgOSPRCHSy5Jmg6DOidxMFpFHCLWyoVSZzI4Bcn0byd3ybCjv/HnBWItKfzPV5hBY
	oGzydCQlD1qL/01Xl8s02HruLZY+yBmg0jsQ2x6xuyWla4/RP4D81LXs+wFIdEDI7kG18vS4sSq
	a+ElVMqDZ2vgEOYWx59qxOvh8Q3PNFO89xyUAMzAUXLiMKcw3I/ftI6pl8ZEsQQIiM1P8wOhjiv
	IlfNqtQwrBwKOrsX4uVh+e4yzuyDA5h2a9zFpQPI7vqm2bFwrZRr/7wu+pZu+3PgnyAg==
X-Google-Smtp-Source: AGHT+IFG/hzUjar5fFu8j9ERHWWpR9Pv5VwyPV0sXgp2FH3uasyw4TvbU/VvQYbRn3w2rYfGGhYing==
X-Received: by 2002:a05:7022:a93:b0:119:e569:f277 with SMTP id a92af1059eb24-11e032b330emr1036342c88.32.1764993296945;
        Fri, 05 Dec 2025 19:54:56 -0800 (PST)
Received: from [192.168.68.63] (104-12-136-65.lightspeed.irvnca.sbcglobal.net. [104.12.136.65])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11df76e2eefsm24165193c88.6.2025.12.05.19.54.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Dec 2025 19:54:56 -0800 (PST)
Message-ID: <7c54fd46-d17a-4ee8-ad9f-e98546958dd5@gmail.com>
Date: Fri, 5 Dec 2025 19:54:55 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: qcom: msm8960: expressatt: Add
 coreriver,tc360-touchkey
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251205-expressatt-touchkey-v1-1-1444b927c9f3@gmail.com>
 <arocrbzcwvyb2te3gcujeo7jaiaisgh3wuketqkif7xvkvmbct@r26gqpw6gb43>
Content-Language: en-US
From: Rudraksha Gupta <guptarud@gmail.com>
In-Reply-To: <arocrbzcwvyb2te3gcujeo7jaiaisgh3wuketqkif7xvkvmbct@r26gqpw6gb43>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

>> +		sda-gpios = <&tlmm 71 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
>> +		scl-gpios = <&tlmm 72 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> I don't have docs at hand, but it looks like these pins belong to
> GSBI10. Have you tried using it directly?

This is the log when I use GSBI10:

samsung-expressatt:~$ dmesg | grep tm2
[   79.555802] input: tm2-touchkey as 
/devices/platform/soc/1a200000.gsbi/1a280000.i2c/i2c-4/4-0020/input/input3
[  110.242881] leds tm2-touchkey: Setting an LED's brightness failed (-110)
[  167.074920] tm2-touchkey 4-0020: failed to read i2c data: -110
[  182.435009] tm2-touchkey 4-0020: failed to read i2c data: -110

I could be doing something wrong, so here are the changes I made on top 
of this diff

diff --git a/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts 
b/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts
index c4b98af6955d..fde5f739a314 100644
--- a/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts
+++ b/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts
@@ -60,33 +60,6 @@ touchkey_enable: touchkey-enable {
          enable-active-high;
          regulator-boot-on;
      };
-
-    i2c-gpio-touchkey {
-        compatible = "i2c-gpio";
-        #address-cells = <1>;
-        #size-cells = <0>;
-        sda-gpios = <&tlmm 71 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
-        scl-gpios = <&tlmm 72 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
-        pinctrl-names = "default";
-        pinctrl-0 = <&touchkey_i2c_pins>;
-        status = "okay";
-        i2c-gpio,delay-us = <2>;
-
-        touchkey@20 {
-            compatible = "coreriver,tc360-touchkey";
-            reg = <0x20>;
-
-            interrupts-extended = <&tlmm 52 IRQ_TYPE_EDGE_FALLING>;
-            pinctrl-names = "default";
-            pinctrl-0 = <&touchkey_irq_pin>;
-
-            vddio-supply = <&touchkey_enable>;
-            vdd-supply = <&pm8921_l29>;
-            vcc-supply = <&pm8921_l29>;
-
-            linux,keycodes = <KEY_MENU KEY_BACK>;
-        };
-    };
  };

  &gsbi2 {
@@ -572,3 +545,28 @@ magnetometer@2e {
          /* TODO: Figure out Mount Matrix */
      };
  };
+
+&gsbi10 {
+    qcom,mode = <GSBI_PROT_I2C>;
+
+    status = "okay";
+};
+
+&gsbi10_i2c {
+    status = "okay";
+
+    touchkey@20 {
+        compatible = "coreriver,tc360-touchkey";
+        reg = <0x20>;
+
+        interrupts-extended = <&tlmm 52 IRQ_TYPE_EDGE_FALLING>;
+        pinctrl-names = "default";
+        pinctrl-0 = <&touchkey_irq_pin>;
+
+        vddio-supply = <&touchkey_enable>;
+        vdd-supply = <&pm8921_l29>;
+        vcc-supply = <&pm8921_l29>;
+
+        linux,keycodes = <KEY_MENU KEY_BACK>;
+    };
+};
diff --git a/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi 
b/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi
index fd28401cebb5..c598fb324e7d 100644
--- a/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi
@@ -223,7 +223,7 @@ i2c8-pins {

              i2c10_default_state: i2c10-default-state {
                  i2c10-pins {
-                    pins = "gpio73", "gpio74";
+                    pins = "gpio71", "gpio72";
                      function = "gsbi10";
                      drive-strength = <8>;
                      bias-disable;
@@ -232,7 +232,7 @@ i2c10-pins {

              i2c10_sleep_state: i2c10-sleep-state {
                  i2c10-pins {
-                    pins = "gpio73", "gpio74";
+                    pins = "gpio71", "gpio72";
                      function = "gpio";
                      drive-strength = <2>;
                      bias-bus-hold;
diff --git a/arch/arm/configs/qcom_defconfig 
b/arch/arm/configs/qcom_defconfig
index 29a1dea500f0..49baa91937ca 100644
--- a/arch/arm/configs/qcom_defconfig
+++ b/arch/arm/configs/qcom_defconfig
@@ -321,3 +321,4 @@ CONFIG_MAGIC_SYSRQ=y
  CONFIG_DEBUG_FS=y
  # CONFIG_SLUB_DEBUG is not set
  # CONFIG_SCHED_DEBUG is not set
+CONFIG_KEYBOARD_TM2_TOUCHKEY=m
\ No newline at end of file


