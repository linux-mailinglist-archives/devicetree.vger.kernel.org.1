Return-Path: <devicetree+bounces-19289-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B32857FA532
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 16:51:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 43460B212B8
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 15:51:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13B3634578;
	Mon, 27 Nov 2023 15:51:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tIK/yoyo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 834B519A
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 07:51:07 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-50ba73196b1so3436983e87.0
        for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 07:51:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701100265; x=1701705065; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XzpjgIoTApBpg6RH8jtn7hI12q8Te+BGFiuT3n+0Mpg=;
        b=tIK/yoyou8KmiLSwbL9kYEdCOguvaxB+RFVzAWgf/3FkA1R65Hwmrsk4uAFx2ljmar
         DjZWlZSFIWwicsSlBLxqSskNtUXhEkbPMnGOnlKuG/yPdXX+vZDfp422moGJFkFuGez/
         fBq4th8Yok1yPaEju2ZDHLxpUrHZB2mlVoK9GDETEwYq3n0oIwsJ+edPpZ6+r4WVunnU
         Opyh5pUMrob/2+IVXfXk1yBsQRZL7XCJuoMYURzp+ABW8lUZRj5svMSsEcUks2i3XpLz
         EKBh7xmeHgT/+doV0lIHdLhK7k5SEUS6TflYefckHe15dYAje0jJxDyBsY2NaXqGBizO
         HhyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701100265; x=1701705065;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XzpjgIoTApBpg6RH8jtn7hI12q8Te+BGFiuT3n+0Mpg=;
        b=sJ4n/BAjFfi8tl3Scp6pnv8RW6XTHO8JsjKqf2+NOr2WmuXdRB5i5uTyJdFdY8Anxk
         r2MKGIkq0nHEeSJrky9HWi/bIaaz6Hd7gzbe0c3QLaprbNE9GjYvz4sLu4nTReaGZzsS
         UMlk1Pd6Lc/CHrRa6NTuGT680nY55qIXh+kQrxFJADO8k1G6nwHoHCEWaRNSalFC2tM2
         RK4lv0lTiuTjX6EGCU+KrDYHI+8r14k/e0aL2FGPH4YhkcaUu9pbLTkEvKFTLhfa87Tn
         O3KragoBd5uWy6yPbT5JIX5tqAnhLVMDs3f1WEibs38WtgOjpHyIci98oJzZtS662xtK
         fz1Q==
X-Gm-Message-State: AOJu0Yw2Lf20AC9LHcuWynet2oqaCQIRfSmNhPLh13p5YgIgkrXNRMYN
	h3k+KADdcXUMmwdImh/FILDp0+UyFYIIH1kCX5M=
X-Google-Smtp-Source: AGHT+IEcRyqGS1E5o70eVg5WuvtHz4bhKKK0XH43+n99TPn2zH3JDSkGEl2M5AjX/RTSFxRvZItv+Q==
X-Received: by 2002:a05:6512:31c3:b0:509:377a:26d9 with SMTP id j3-20020a05651231c300b00509377a26d9mr10226865lfe.8.1701100265505;
        Mon, 27 Nov 2023 07:51:05 -0800 (PST)
Received: from [127.0.1.1] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id b16-20020ac25e90000000b0050a71df5d39sm1515787lfq.300.2023.11.27.07.51.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Nov 2023 07:51:04 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 27 Nov 2023 16:51:02 +0100
Subject: [PATCH v9 3/3] ARM64: dts: Add special compatibles for the Turris
 Mox
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231127-mv88e6xxx-mvebu-fixes-v9-3-d19b963e81fb@linaro.org>
References: <20231127-mv88e6xxx-mvebu-fixes-v9-0-d19b963e81fb@linaro.org>
In-Reply-To: <20231127-mv88e6xxx-mvebu-fixes-v9-0-d19b963e81fb@linaro.org>
To: Andrew Lunn <andrew@lunn.ch>, 
 Gregory Clement <gregory.clement@bootlin.com>, 
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Russell King <linux@armlinux.org.uk>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.12.4

These special compatibles are added to the Marvell Armada 3720
Turris Mox in order to be able to special-case and avoid
warnings on the non-standard nodenames that are ABI on this
one board due to being used in deployed versions of U-Boot.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts b/arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts
index 66cd98b67744..a89747d2a600 100644
--- a/arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts
+++ b/arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts
@@ -312,7 +312,7 @@ phy1: ethernet-phy@1 {
 	 * Also do not touch the "ports" or "port@n" nodes. These are also ABI.
 	 */
 	switch0@10 {
-		compatible = "marvell,mv88e6190";
+		compatible = "marvell,turris-mox-mv88e6190", "marvell,mv88e6190";
 		reg = <0x10>;
 		dsa,member = <0 0>;
 		interrupt-parent = <&moxtet>;
@@ -438,7 +438,7 @@ port-sfp@a {
 
 	/* NOTE: this node name is ABI, don't change it! */
 	switch0@2 {
-		compatible = "marvell,mv88e6085";
+		compatible = "marvell,turris-mox-mv88e6085", "marvell,mv88e6085";
 		reg = <0x2>;
 		dsa,member = <0 0>;
 		interrupt-parent = <&moxtet>;
@@ -506,7 +506,7 @@ port@5 {
 
 	/* NOTE: this node name is ABI, don't change it! */
 	switch1@11 {
-		compatible = "marvell,mv88e6190";
+		compatible = "marvell,turris-mox-mv88e6190", "marvell,mv88e6190";
 		reg = <0x11>;
 		dsa,member = <0 1>;
 		interrupt-parent = <&moxtet>;
@@ -632,7 +632,7 @@ port-sfp@a {
 
 	/* NOTE: this node name is ABI, don't change it! */
 	switch1@2 {
-		compatible = "marvell,mv88e6085";
+		compatible = "marvell,turris-mox-mv88e6085", "marvell,mv88e6085";
 		reg = <0x2>;
 		dsa,member = <0 1>;
 		interrupt-parent = <&moxtet>;
@@ -700,7 +700,7 @@ port@5 {
 
 	/* NOTE: this node name is ABI, don't change it! */
 	switch2@12 {
-		compatible = "marvell,mv88e6190";
+		compatible = "marvell,turris-mox-mv88e6190", "marvell,mv88e6190";
 		reg = <0x12>;
 		dsa,member = <0 2>;
 		interrupt-parent = <&moxtet>;
@@ -817,7 +817,7 @@ port-sfp@a {
 
 	/* NOTE: this node name is ABI, don't change it! */
 	switch2@2 {
-		compatible = "marvell,mv88e6085";
+		compatible = "marvell,turris-mox-mv88e6085", "marvell,mv88e6085";
 		reg = <0x2>;
 		dsa,member = <0 2>;
 		interrupt-parent = <&moxtet>;

-- 
2.34.1


