Return-Path: <devicetree+bounces-99180-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DEE8E9692B9
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 06:09:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0FC101C22485
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 04:09:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C1B41CEACE;
	Tue,  3 Sep 2024 04:08:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="AOh/KCAg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE0F51CE70C
	for <devicetree@vger.kernel.org>; Tue,  3 Sep 2024 04:08:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725336538; cv=none; b=DzkYzjt+nnlzqUo/jD7hhOGLBFnmgVWCorrEdEcj613VP3RYM+2xc9q1ipzz+9DgDUPZTPTsgXmcZhFiRN/emKyZEPaY2tBmL8d4BEF0uIV7tnzhv9yIaWRvmwAbW4DPKwZH0hI0MmEX9OraWLpSquIX3zKd0RbXThVRYAY9IF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725336538; c=relaxed/simple;
	bh=TmLPgmMuQA5WHRw4DbLGENXxsmigBRHBovUbmz2xWfc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eTdCtGXcgGJ/nBoBhgz9bjY/tBrfsXTqxDYv0w+Yq7TbPWC/hqpdm5S3lW0CmKD6slzYMSYw/BRS0YMdRhwKkMnqGZ33Nm/s5vHYONJ1U5pK7BatQKcjwnNsJU01garFcEQuds7Kx2evRuSS8jejmAfYIlHj2m4t9tWYOvoS7VI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=AOh/KCAg; arc=none smtp.client-ip=209.85.160.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-2704d461058so2532798fac.0
        for <devicetree@vger.kernel.org>; Mon, 02 Sep 2024 21:08:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1725336536; x=1725941336; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kZ4BL5w+jZbnBcrACJr3d5UErDD67jcver4i8Xfl9kU=;
        b=AOh/KCAg/2WIWnBfkuuarMIWpSSyRkWHP7n8qKiPoXTJpluQqdI1D7w0MzDPwwLVSd
         AZbDYPgDK42w29bIqz9XRnVfeweLozdUC+alQ0FTJge8j6rmqSDZz6yTPnjXSErrVh0N
         tKe1kT81ryVZpPJqN5IaQu9BbBANJ8nGyTI8zuYAqbwqDy9bkSjVHJVABi5w1VbDwn3U
         rnAwTI+w2LzFugbMPjWro08wyPpQk5ybQXf+Qmj1dAiN40y7+q7gLuIBnkj/lDIkiTcG
         o+VNoK9ibo9zMCP7PtTbwTnU2vZSfupzx4xm/fJ5xUT5jJXm8R02F7J5OuhJX6LMtaL5
         PoBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725336536; x=1725941336;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kZ4BL5w+jZbnBcrACJr3d5UErDD67jcver4i8Xfl9kU=;
        b=TohFzxDMX7TBTNmi/ux/cLvWY+raf1EU0pKiqKjJpMlOAcACKsUlLHox+5OSVFOaF0
         uW1CFH0l9HyRTbXq3YYsqLFym/U2aYd2xyKd0LTgcc1e2mCxej7UqtwoRr0/Cp8llTpI
         me67d2UxV61/HEWd+4Mb1GJbFQsTNUqkVxoYbvshIjNbJgmHoGVxpI09Vg5eASn69pie
         QrkAE1D//2n7S0moGStDHKWRMOskR6+qnHAp8jG+z81ezxVEIsU48e7isKmNa2Ep77uQ
         N2BM1Bsdiiz6GmSaU6y2Nmbe7K7UImAMT2QXpIoWoYNJ5CXJ8tzRUR8hq7z65Zkxkqgz
         jrVw==
X-Forwarded-Encrypted: i=1; AJvYcCWNeHwppzB2AF0dw78vPFwRcI292IdRm4ruvOBnz4qt+eRmOmMRooE2vsfJYzAE4Zv7fHGMsXlw6SRr@vger.kernel.org
X-Gm-Message-State: AOJu0YzrjkUV+TAS1GMtpGMy+rl1zpSldhFIgPRcRHiX8/MZBicof2tW
	Zj5o+0XWYQXRhX5LdiSg+edVB1U7xYXl8HqvC/CgNBW3C8GRVsPj4YfC1ud/PNKZcAe2ujxfwUP
	W
X-Google-Smtp-Source: AGHT+IF4pX9A1K6vCNuazJY8FE8Q32M3mUa+nGa1uX74lj9BVRLLaU+asl6F6Kfv3PXZHMCKYZWoVQ==
X-Received: by 2002:a05:6871:1c2:b0:270:1850:f898 with SMTP id 586e51a60fabf-2781a7aa5c2mr1087930fac.12.1725336535908;
        Mon, 02 Sep 2024 21:08:55 -0700 (PDT)
Received: from [127.0.1.1] (75-164-215-68.ptld.qwest.net. [75.164.215.68])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-715e569ef39sm7532701b3a.122.2024.09.02.21.08.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Sep 2024 21:08:55 -0700 (PDT)
From: Drew Fustini <dfustini@tenstorrent.com>
Date: Mon, 02 Sep 2024 21:06:57 -0700
Subject: [PATCH 4/8] riscv: dts: thead: Add TH1520 GPIO ranges
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240902-th1520-pinctrl-v1-4-639bf83ef50a@tenstorrent.com>
References: <20240902-th1520-pinctrl-v1-0-639bf83ef50a@tenstorrent.com>
In-Reply-To: <20240902-th1520-pinctrl-v1-0-639bf83ef50a@tenstorrent.com>
To: Drew Fustini <drew@pdp7.com>, Guo Ren <guoren@kernel.org>, 
 Fu Wei <wefu@redhat.com>, Linus Walleij <linus.walleij@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Emil Renner Berthing <emil.renner.berthing@canonical.com>, 
 Thomas Bonnefille <thomas.bonnefille@bootlin.com>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-riscv@lists.infradead.org, linux-gpio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Drew Fustini <dfustini@tenstorrent.com>
X-Mailer: b4 0.14.1

From: Emil Renner Berthing <emil.renner.berthing@canonical.com>

Add gpio-ranges properties to the TH1520 device tree, so user space can
change basic pinconf settings for GPIOs and are not allowed to use pads
already used by other functions.

Adjust number of GPIOs available for the different controllers.

Acked-by: Rob Herring <robh@kernel.org>
Tested-by: Thomas Bonnefille <thomas.bonnefille@bootlin.com>
Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
Signed-off-by: Drew Fustini <dfustini@tenstorrent.com>
---
 arch/riscv/boot/dts/thead/th1520.dtsi | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
index 834dcd1fe7d8..9889b557c494 100644
--- a/arch/riscv/boot/dts/thead/th1520.dtsi
+++ b/arch/riscv/boot/dts/thead/th1520.dtsi
@@ -338,6 +338,7 @@ portc: gpio-controller@0 {
 				gpio-controller;
 				#gpio-cells = <2>;
 				ngpios = <32>;
+				gpio-ranges = <&padctrl0_apsys 0 0 32>;
 				reg = <0>;
 				interrupt-controller;
 				#interrupt-cells = <2>;
@@ -355,7 +356,8 @@ portd: gpio-controller@0 {
 				compatible = "snps,dw-apb-gpio-port";
 				gpio-controller;
 				#gpio-cells = <2>;
-				ngpios = <32>;
+				ngpios = <23>;
+				gpio-ranges = <&padctrl0_apsys 0 32 23>;
 				reg = <0>;
 				interrupt-controller;
 				#interrupt-cells = <2>;
@@ -380,6 +382,7 @@ porta: gpio-controller@0 {
 				gpio-controller;
 				#gpio-cells = <2>;
 				ngpios = <32>;
+				gpio-ranges = <&padctrl1_apsys 0 0 32>;
 				reg = <0>;
 				interrupt-controller;
 				#interrupt-cells = <2>;
@@ -397,7 +400,8 @@ portb: gpio-controller@0 {
 				compatible = "snps,dw-apb-gpio-port";
 				gpio-controller;
 				#gpio-cells = <2>;
-				ngpios = <32>;
+				ngpios = <31>;
+				gpio-ranges = <&padctrl1_apsys 0 32 31>;
 				reg = <0>;
 				interrupt-controller;
 				#interrupt-cells = <2>;
@@ -539,7 +543,8 @@ porte: gpio-controller@0 {
 				compatible = "snps,dw-apb-gpio-port";
 				gpio-controller;
 				#gpio-cells = <2>;
-				ngpios = <32>;
+				ngpios = <16>;
+				gpio-ranges = <&padctrl_aosys 0 9 16>;
 				reg = <0>;
 				interrupt-controller;
 				#interrupt-cells = <2>;
@@ -563,7 +568,8 @@ portf: gpio-controller@0 {
 				compatible = "snps,dw-apb-gpio-port";
 				gpio-controller;
 				#gpio-cells = <2>;
-				ngpios = <32>;
+				ngpios = <23>;
+				gpio-ranges = <&padctrl_aosys 0 25 22>, <&padctrl_aosys 22 7 1>;
 				reg = <0>;
 				interrupt-controller;
 				#interrupt-cells = <2>;

-- 
2.34.1


