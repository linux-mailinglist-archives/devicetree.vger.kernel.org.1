Return-Path: <devicetree+bounces-113278-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F92D9A50BE
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 22:39:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F17441F22FFE
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 20:39:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 068EE191F97;
	Sat, 19 Oct 2024 20:39:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YKegku+4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC9A8645
	for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 20:39:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729370378; cv=none; b=TspmXaJKAFQFdrOltbzL72e2BGcX32+b1r6XwzyjC2uD8HuV2B2nZZpzcx/Qax2oox022Np1fgxip0uzvHG52IGUrkhJeaOS0mzzoEcdm2cig3q5jHEUjv7gcXd3Kwx/tyLUjotPtmOlfasBFQwp7vtOpEbzUC6gqAViJo0nmyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729370378; c=relaxed/simple;
	bh=Fp3s2B9Ke0PwCMYzhqqqilMUc8skEHfVgnxn/bnpI5Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ci33lfhjO9XyAFZ7grJpB69Gv5qAID6ceH+pVGk2jYH0jPjIn6HupSyISW50DY/AKnl6EE3RjXCtnmXtdMzTwKIqOvg531510oIau+65ft+S4tXW7h5wez6cwkv0nADoSBzzilVunF1nRfCI7YAb0R27g2wB3itnwUWEwJsSR0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YKegku+4; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-539f1292a9bso3990638e87.2
        for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 13:39:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729370375; x=1729975175; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N2IIwOb0WS5MjzwX7Ar4Tf0ByMMbQC+8VyK5ncs/WZ4=;
        b=YKegku+4wm/QXSxt+++W87fv4MlaAqxe5LpyB003GoO/A0glvAuU9VfzwJvpBlCNWZ
         cnA4sLgKajxXu0rUGc/+GmIqHZb63IkZwo/Jn8JuStxom/55DKpeZrtCKouPrB7ynoAR
         LKstmdY5VLb1+got9XqU98QsElgrMYH7OO2PSr+25ecXWjxkoY+aGQ550jzG4B3grSYC
         /kUtHAAUk/a+9xKhuKRHNbH9Ws8ITxXJRk7/+t+7bWxO2QMCvjSX9kRn3SW4mkHU1Y/P
         HMp6kv06uTENtLGVcMwy39ePn2a3yxd1pS52rrcQZvHMLig5pf80XhGDdqowSSWb6LZi
         kQuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729370375; x=1729975175;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N2IIwOb0WS5MjzwX7Ar4Tf0ByMMbQC+8VyK5ncs/WZ4=;
        b=Lar7OxE5Q/bg8bhb+eq8+EwF7QEw8CWcWLwfTrRwGmnzUcRDGkkV0AipgaCLhFoiBF
         YG/2XmizgvWzGjT8WLTvKRt9wvPz2J6M/89Gj2vao/sEbJnqJX/1oHvg5ZlYgI8Pk42x
         rp2VhB1LEeTulNk697VhC6eNBmVm1hUNtvBmBSSu2DuRxNHOt826idF2ihsqae1OzIO+
         0q4/GGPxLfHgpVZcNQVwPDdcjVjXC2w0F8zkJ5zpzB2kfb5rYSwhjASdT1VtURvlx4s7
         gcclNLCkfInZYBEFPx/3kydZM0BcNL1w6lSr5BMB4DgM3g5v9iNur+Rsbm4EqjfjEdfH
         ALCA==
X-Gm-Message-State: AOJu0YxzzOCfxNSwjD7WU1aqqPGhNmegfuJ5vwcfmlGpDjiYdobHzhmj
	SCPoDiCxP0GVFiNyH0WPbLWb6fXp7sUnHAoWaR7lADJgOKE1JMWQTeqetEwHreg=
X-Google-Smtp-Source: AGHT+IFJmaONnNzDS1StT7soHVcNHTxkZt6WL0X20rcIVtffIIlnvCMeyQCm2Dr417AOF9ld+H4WCw==
X-Received: by 2002:a05:6512:6ca:b0:53a:38:7b8c with SMTP id 2adb3069b0e04-53a154950dfmr3232155e87.34.1729370374911;
        Sat, 19 Oct 2024 13:39:34 -0700 (PDT)
Received: from lino.lan ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a224202d5sm37564e87.136.2024.10.19.13.39.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Oct 2024 13:39:32 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 19 Oct 2024 22:39:31 +0200
Subject: [PATCH v3 2/9] ARM: dts: bcm6846: Enable watchdog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241019-genexis-xg6846b-base-v3-2-8375a0e1f89f@linaro.org>
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

The BCM6846 has a BCM7038-compatible watchdog timer, just
add it to the device tree.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/broadcom/bcm6846.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm6846.dtsi b/arch/arm/boot/dts/broadcom/bcm6846.dtsi
index c2a8deef150a..f4f1f3a06eac 100644
--- a/arch/arm/boot/dts/broadcom/bcm6846.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm6846.dtsi
@@ -99,6 +99,11 @@ bus@ff800000 {
 		#size-cells = <1>;
 		ranges = <0 0xff800000 0x800000>;
 
+		watchdog@480 {
+			compatible = "brcm,bcm6345-wdt";
+			reg = <0x480 0x10>;
+		};
+
 		uart0: serial@640 {
 			compatible = "brcm,bcm6345-uart";
 			reg = <0x640 0x1b>;

-- 
2.46.2


