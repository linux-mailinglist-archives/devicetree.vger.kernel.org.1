Return-Path: <devicetree+bounces-113279-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 360B29A50BF
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 22:39:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 56DBC1C212F7
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 20:39:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 902701922CD;
	Sat, 19 Oct 2024 20:39:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Fdwf05r0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6935418EFD8
	for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 20:39:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729370380; cv=none; b=YveMkNRVae6MEtB/kk/j7G+M28vvhuBrkzsGog23NxKeZo3+11UQxY2pBmJ9pFwH7J1/SXmuJynGiH7J8/NnHyF4nYLvKbaTAdBqy7L0A1K8XZckGiyBETXHZ1VKGtf8a/JjecS3k2ufsGIueuv7O+9VrfinUnPG06wDk2yRG38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729370380; c=relaxed/simple;
	bh=ajsIbcMpZ62xaT/u/QBdBgJs1NaMgx0zZ8B0lnfHK+o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nRM2sYhtFTWpu9NY8DrD9nItI8WGFHMWhXGo2DXyxjbnGbJBSo9UaEtKNJVrXccafCMvV4Qa84PvdPSfW5BNSO6yXq+XwbpBxD2icBFvHNowV4uxjzZNWems5/tYh3bVj7kdJ+gLmOvQPce18TIfB2GPOmzGt9pjsL4ki8Onrgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Fdwf05r0; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-539e6c754bdso3208775e87.2
        for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 13:39:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729370376; x=1729975176; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=76iS9IrOL+avAFMLHux4lzigT6bPCj+idYdT2QESLs4=;
        b=Fdwf05r0XzSX/MLx3CY18dlAdttAIRFx7EsQuuD/HmyWMR24nngSD5ROWZ6QPZhwu9
         yDeVD3bEJ0wbLlBpKzCfRquEXYOGLo6OjbLH7ILfLPsJvteyDF+FRw1Kc+LNK1FGG+b1
         C8A9QEpmH/R6pCoCs7JlXcCjZzQ+6P7yiqw5ngvGeOvPTkHfjBYE+WaVBqUFJsUXA/0O
         Iwy3a3avkVbaA/o/d83pxgfIgya+uGUfdtqB4M5a6vHAGAxa4jOFvLdVeTmC7cc7MmT1
         Mzj4uPVkA5BSyaPtGpnKcQL6UG5/oRTbEXuMZIybDQashfFsTmZXwGkf4a/MhNuPUIqJ
         GULQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729370376; x=1729975176;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=76iS9IrOL+avAFMLHux4lzigT6bPCj+idYdT2QESLs4=;
        b=he03VBFGyjmGoIFsr7ZBLuFdW0+BalfARCvekU+mq4t4nqdBhOfvco79l8js9vx+SP
         LhHooQ8jY5L7T8kx1cwQDmVQ5Pg17QeK9ykYXGbGYB8871uhL0FijFpG1SCpk+5uqawZ
         ILWWuD5kptMLkGjJNrH/N+eGPpzAcA/t3X/XEylZpr7BwE9A0IQvIFS92qIdnSrITLcA
         o7nJpm9MRBSj+eMt2pPrth2JFEiNv46Lye+29OWzeHNqfTXjO0nDBxGh31f6TZv0dH8j
         YVU979O6Zh31BeAi3kZhxTZ9TTqYPpUuCG6UYbIrWrCPHMYOar9bq0pE4tmsTDvimkVu
         dYow==
X-Gm-Message-State: AOJu0YxvDY9vRn0mJ668YuCiN26FWmX9jUQ0c+HMo6le1bw7sfeSbzDP
	lpM9mcb9AAVHisqh0JXt5uMXZvHPK8PXNGj+lHFP87/fg74zYsBncSrIc3ORzt4=
X-Google-Smtp-Source: AGHT+IEB3/yGsKyTFxUImL1LWLXOOOvApVg1cvzkjIgd+yHxxvNS365uAL/Zw4hAqdeVv9cQlQSzNQ==
X-Received: by 2002:a05:6512:1055:b0:539:fbfa:4a9f with SMTP id 2adb3069b0e04-53a1550ca17mr3358502e87.58.1729370376472;
        Sat, 19 Oct 2024 13:39:36 -0700 (PDT)
Received: from lino.lan ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a224202d5sm37564e87.136.2024.10.19.13.39.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Oct 2024 13:39:35 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 19 Oct 2024 22:39:32 +0200
Subject: [PATCH v3 3/9] ARM: dts: bcm6846: Add GPIO blocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241019-genexis-xg6846b-base-v3-3-8375a0e1f89f@linaro.org>
References: <20241019-genexis-xg6846b-base-v3-0-8375a0e1f89f@linaro.org>
In-Reply-To: <20241019-genexis-xg6846b-base-v3-0-8375a0e1f89f@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 William Zhang <william.zhang@broadcom.com>, 
 Anand Gore <anand.gore@broadcom.com>, 
 Kursad Oney <kursad.oney@broadcom.com>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
 Benjamin Larsson <benjamin.larsson@genexis.eu>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.0

The BCM6846 has the same simplistic GPIOs as some other
Broadcom SoCs: plain memory-mapped registers with up to
8 blocks of 32 GPIOs each totalling 256 GPIOs.

Users of the SoC can selectively enable the GPIO blocks
actually used with a certain design.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/broadcom/bcm6846.dtsi | 80 +++++++++++++++++++++++++++++++++
 1 file changed, 80 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm6846.dtsi b/arch/arm/boot/dts/broadcom/bcm6846.dtsi
index f4f1f3a06eac..dc0c87c79569 100644
--- a/arch/arm/boot/dts/broadcom/bcm6846.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm6846.dtsi
@@ -104,6 +104,86 @@ watchdog@480 {
 			reg = <0x480 0x10>;
 		};
 
+		/* GPIOs 0 .. 31 */
+		gpio0: gpio@500 {
+			compatible = "brcm,bcm6345-gpio";
+			reg = <0x500 0x04>, <0x520 0x04>;
+			reg-names = "dirout", "dat";
+			gpio-controller;
+			#gpio-cells = <2>;
+			status = "disabled";
+		};
+
+		/* GPIOs 32 .. 63 */
+		gpio1: gpio@504 {
+			compatible = "brcm,bcm6345-gpio";
+			reg = <0x504 0x04>, <0x524 0x04>;
+			reg-names = "dirout", "dat";
+			gpio-controller;
+			#gpio-cells = <2>;
+			status = "disabled";
+		};
+
+		/* GPIOs 64 .. 95 */
+		gpio2: gpio@508 {
+			compatible = "brcm,bcm6345-gpio";
+			reg = <0x508 0x04>, <0x528 0x04>;
+			reg-names = "dirout", "dat";
+			gpio-controller;
+			#gpio-cells = <2>;
+			status = "disabled";
+		};
+
+		/* GPIOs 96 .. 127 */
+		gpio3: gpio@50c {
+			compatible = "brcm,bcm6345-gpio";
+			reg = <0x50c 0x04>, <0x52c 0x04>;
+			reg-names = "dirout", "dat";
+			gpio-controller;
+			#gpio-cells = <2>;
+			status = "disabled";
+		};
+
+		/* GPIOs 128 .. 159 */
+		gpio4: gpio@510 {
+			compatible = "brcm,bcm6345-gpio";
+			reg = <0x510 0x04>, <0x530 0x04>;
+			reg-names = "dirout", "dat";
+			gpio-controller;
+			#gpio-cells = <2>;
+			status = "disabled";
+		};
+
+		/* GPIOs 160 .. 191 */
+		gpio5: gpio@514 {
+			compatible = "brcm,bcm6345-gpio";
+			reg = <0x514 0x04>, <0x534 0x04>;
+			reg-names = "dirout", "dat";
+			gpio-controller;
+			#gpio-cells = <2>;
+			status = "disabled";
+		};
+
+		/* GPIOs 192 .. 223 */
+		gpio6: gpio@518 {
+			compatible = "brcm,bcm6345-gpio";
+			reg = <0x518 0x04>, <0x538 0x04>;
+			reg-names = "dirout", "dat";
+			gpio-controller;
+			#gpio-cells = <2>;
+			status = "disabled";
+		};
+
+		/* GPIOs 224 .. 255 */
+		gpio7: gpio@51c {
+			compatible = "brcm,bcm6345-gpio";
+			reg = <0x51c 0x04>, <0x53c 0x04>;
+			reg-names = "dirout", "dat";
+			gpio-controller;
+			#gpio-cells = <2>;
+			status = "disabled";
+		};
+
 		uart0: serial@640 {
 			compatible = "brcm,bcm6345-uart";
 			reg = <0x640 0x1b>;

-- 
2.46.2


