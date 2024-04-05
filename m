Return-Path: <devicetree+bounces-56539-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6942489996B
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 11:28:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D3214B226A9
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 09:28:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FAEB1607A1;
	Fri,  5 Apr 2024 09:28:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Kbm2uxwo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DB68160782
	for <devicetree@vger.kernel.org>; Fri,  5 Apr 2024 09:28:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712309308; cv=none; b=o68LB3w2KHB/lJRnfpfrMX0u/xsq9o2+BctAAkz2eObIOuj8JZNPfnA/wI6aX10C7kD6mjJ+4ELh64If850gye5EiNDyEC2HjJUirPTRfY46CP3nG8l/bwq+3PMNqg8z9+k3Ni/2Vh619R6aGPGbOkeiUWm+MbPCYOpu8y//zXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712309308; c=relaxed/simple;
	bh=WTJy+7FRvsutUwAUfsNeE7+OA0WIOtieEtgmSkwuNwA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=BTmckFJCSkgg0vn2pKRfzTnL0pl9uIvqZ+j0NnBHKlgi34BBQxnnBHwRNNKzNBUgoxZbffV07aBC466HVpKS7/lKHl9ZWy0bEw9nvrZ32Q6IGYg3tOHS88/y94GoGnRw7I79mEF8/z4k457XOKBX0Oocutwghz4JKRPilh0V/8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Kbm2uxwo; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-563cb3ba9daso2016330a12.3
        for <devicetree@vger.kernel.org>; Fri, 05 Apr 2024 02:28:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712309304; x=1712914104; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G3UhqttEClAp302E8PBewqsaaK/r2DdYnzrvOqVi/vc=;
        b=Kbm2uxwoHbzYXlN0BD0oW7Nya+TYLVcMfxwVPt5oZLDoeLW4qUhkOq0+CsX7/lNbwy
         KmwHghlLsQ7L+7NAVj93d1p7nfyNKoRG0XtOi71Q/cKWziODBH7pT4prLW4YoWoB3DnY
         hiOM0zvhEFjQMLx/bO4fu8SfZnSthnHxuvfIaOo18FQJSWm+F7YQoT4yNvQ/hdyObC4L
         C2n+aCtVvGlw4ylcBDOe3W+EbtJTXbfmB0F2CmMqpFtz9vgPB6b/+73UI4hc1HBj9MOj
         nOcogrz2PGtnXOdsMRFSiry5pPAx8zgIUmGH82f6cVFliiw4J22NOq2FADoxR+W7aPn8
         mDqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712309304; x=1712914104;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G3UhqttEClAp302E8PBewqsaaK/r2DdYnzrvOqVi/vc=;
        b=mfcZwoX+lL2ygBxg6HBQ9QfU9x9XWiyQpdQ+yLbcbHPvNNCsRakZj/TUXuKlIkeqA2
         jgCa0O3ldpFUHPKqouHbstUwwBUH9vPvVnAfN21VIQm71o0Toh5aVVwju+G8Nj2sseTx
         Xi1EII40TSVhy1AYsC1Ap3aXypLGqVuotVyRbW8TWGQgLZFTkzF5JBQ69m1h5VGvG43Z
         iimWWlYXbF1V5TxzF/nCqiG3BTkLcE4VAtDyUFcLPQ64Sb5K3rWH79oiKaMVjgtCFibl
         IZBdStuvTvDULz6ZCvP7Ravdsds5h58AnHjjUsCcUozRqu0flMMebCXw0V8ww9VabjNn
         CoYg==
X-Forwarded-Encrypted: i=1; AJvYcCXR9zy2wRooBmPhY9WIfZHveHr5m9REa3dDFB/FWu6wakDchD5HVdabzFmDljnXiGOhGW7OluZXyoFAkVrb8stllHBKa4Y5GxxjhQ==
X-Gm-Message-State: AOJu0YwM8IrOqozY/ukFWKmlSE870Hmh/1B3NmYD9jHuin18/p2QY+hY
	27MEAN/ppGkP2f/pmvmehoH5ouYRP0Kh2chXRrCGAbN3ySlrb562umsHYQk+E2brW7Xl/e0Ozhh
	h
X-Google-Smtp-Source: AGHT+IFf+KfG1bg7CyXkWbKGh/vtgLwxUWHUP/Muu0AkBFdAliGje48fHgb5Bsgjbbw0qTiPH+opoQ==
X-Received: by 2002:a50:9f21:0:b0:56e:2abd:9d13 with SMTP id b30-20020a509f21000000b0056e2abd9d13mr897099edf.7.1712309304235;
        Fri, 05 Apr 2024 02:28:24 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id a1-20020a508581000000b0056e2432d10bsm587750edh.70.2024.04.05.02.28.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Apr 2024 02:28:23 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] arm64: dts: imx8mn-var-som-symphony: drop redundant status from typec
Date: Fri,  5 Apr 2024 11:28:19 +0200
Message-Id: <20240405092819.40994-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240405092819.40994-1-krzysztof.kozlowski@linaro.org>
References: <20240405092819.40994-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

"okay" is the default status, so drop redundant property from the typec
node.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/freescale/imx8mn-var-som-symphony.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn-var-som-symphony.dts b/arch/arm64/boot/dts/freescale/imx8mn-var-som-symphony.dts
index a6b94d1957c9..3434b189fa58 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-var-som-symphony.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mn-var-som-symphony.dts
@@ -126,7 +126,6 @@ extcon_usbotg1: typec@3d {
 		interrupts = <11 IRQ_TYPE_EDGE_FALLING>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_ptn5150>;
-		status = "okay";
 
 		port {
 			typec1_dr_sw: endpoint {
-- 
2.34.1


