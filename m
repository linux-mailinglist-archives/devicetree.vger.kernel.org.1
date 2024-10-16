Return-Path: <devicetree+bounces-111811-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3814E9A018F
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 08:41:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 969EAB25002
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 06:41:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DFFA18E37D;
	Wed, 16 Oct 2024 06:41:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Z+X3uPGS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2CE218E057
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 06:41:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729060873; cv=none; b=dKP11cxWe/kpvwSa9wRCWP1zyrfIWKsuuBqENpClA5dosH6nhh2NPFL4JSOrogZgrlajHYBmKEGVNEuM4XF8hX11QfK8OhtDMkSfybSBpzvncOuDsQMz2rff3Z6idPAkPkHMYczwrXlOzhqybi7jbqI9aBuSWNHmz5afwPOorLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729060873; c=relaxed/simple;
	bh=ajsIbcMpZ62xaT/u/QBdBgJs1NaMgx0zZ8B0lnfHK+o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JJnRgZuyCorELVJfXQRJzT1n5bzSDrgX/tOXBDFbIVXFaDPjVUWFlXQiEYb8Dqu+19zYEhpFW179yxJ3r9QYscux1PaAJYkqr4o0EPSwrcE3zMdh60x1inMGMlUQg2+2uKpmXWbDKsRArsRvYA6vxejpJkVhMSrAGcqfP30SdNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Z+X3uPGS; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-539e59dadebso4996568e87.0
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 23:41:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729060869; x=1729665669; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=76iS9IrOL+avAFMLHux4lzigT6bPCj+idYdT2QESLs4=;
        b=Z+X3uPGSkdwbuUidFhtGLiYlKJZL8VlEM9zKxQcKbNNfzH/T3GmDRkccw23oErkmSj
         96amE4Penrh8x+zT+34bPZUmxi7cmB99iGLtB2QbDmJ9VpytPnZYrbMt/y0M14Jmvl2r
         7wYaJwDYNInC7ktumOI9FiaU2mdcCVNrABWDGqoWujFUEbvFPXyoFZV0CvnzT9oqTVn0
         gfOtcrfsLPqSn6uqTVcMVA9tV6J8yxUd79TCTRp5xNfSrMoZUbK5ddWDUibNv/TDuUue
         MYL+dUFqW3HgheqTfv2UWvbcZ+Q0zVm+LEBXMtDGmu3vKj/xuUvf0BURA7kYPZRVwHdR
         OOGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729060869; x=1729665669;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=76iS9IrOL+avAFMLHux4lzigT6bPCj+idYdT2QESLs4=;
        b=jlWjnXqAOUCMgWm2Wk1tbtfHT0ap0Yi63ZGJu0VDhsp7yXnlojfRvxTdF51vrvz447
         GAgMZezj4zc0PY8MXkMG9ETXUaphlL96Y6D4q911qhFHkK4S36LYnWQWwJs+XQ1kxL7m
         Ztu6hfJmMnbfyyAJmk6rISQ5Bceyxr4LsPW58VBogTRdgbJJRQIQHJ5BUpFnUeQlA4TN
         htCCLmtu9rgoXpFQUfMZiPRSABvI2HON7uCI64cfw9PBtkQOh2o9z2YuCyDESc8NIOER
         MlPE11ki4Ho6KSbWx3kn012x+tCVnxzaB5T8WQ+xy+VeBM82j1D6NH38nYJUoNgjh3Cy
         +IvA==
X-Gm-Message-State: AOJu0Yx6HaJHSImzVJqOLImW3D6Rytp1ZNysPl1O2niDhSrQK98uEckX
	fEUujGdVJRH/WK/QpdG1SJiGWk4WZE77mpMrAebf7pi43utZ4dxFpvosTDLocesT1NUgsPds1Gq
	h
X-Google-Smtp-Source: AGHT+IEJOVgamV8wficgril0A/XHS66F8ZBL3GF0JLpQ5IcOYUi0lgofBGAxFDrEK6VhHiBb/zrjOg==
X-Received: by 2002:a05:6512:1051:b0:539:ed5e:e226 with SMTP id 2adb3069b0e04-53a03f2d493mr1980868e87.26.1729060869502;
        Tue, 15 Oct 2024 23:41:09 -0700 (PDT)
Received: from lino.lan ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539ffff3a50sm357455e87.144.2024.10.15.23.41.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2024 23:41:08 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 16 Oct 2024 08:41:03 +0200
Subject: [PATCH v2 3/9] ARM: dts: bcm6846: Add GPIO blocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241016-genexis-xg6846b-base-v2-3-6a7cc2ee57eb@linaro.org>
References: <20241016-genexis-xg6846b-base-v2-0-6a7cc2ee57eb@linaro.org>
In-Reply-To: <20241016-genexis-xg6846b-base-v2-0-6a7cc2ee57eb@linaro.org>
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


