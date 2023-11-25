Return-Path: <devicetree+bounces-18902-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DF2D47F9052
	for <lists+devicetree@lfdr.de>; Sun, 26 Nov 2023 00:32:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 897572813F2
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 23:32:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86194315A5;
	Sat, 25 Nov 2023 23:32:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ragnatech-se.20230601.gappssmtp.com header.i=@ragnatech-se.20230601.gappssmtp.com header.b="g0aEmAqD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com [IPv6:2607:f8b0:4864:20::42a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 135C112D
	for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 15:32:53 -0800 (PST)
Received: by mail-pf1-x42a.google.com with SMTP id d2e1a72fcca58-6bd32d1a040so2954634b3a.3
        for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 15:32:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech-se.20230601.gappssmtp.com; s=20230601; t=1700955172; x=1701559972; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8c3cwZVq+dZx7g2GJ9UgJ01HODn6EqIuZteyUbFAXAQ=;
        b=g0aEmAqDbTF4dJMpV7aq5wQU/Rnvcw8jXnBtXnEQvO/QKP7mPsMljeYZ6yBGAWvekz
         i3WWd2x9w7WPHDNRMzLa4QLI4yTLMtLCFMKNt7QOcbRNp4Mqirv+dWpwJrdYD9UjLGbh
         1GNZ7OWW7izcDKE82RwRas6cbCqrQ9moCFBELWc63D7elCYLVkUF/LgwFgzWvMnJ5Y5Z
         i+HXRLutMlyzzFoFzpanJ20v/OTqtMdPCLMZrlDjgX5Lnj6t/H5F+ipvvPAX7S9PNo17
         ZXtAlPHyVJkK4Nz2+e0i9q3bpeIj8NjctxmXscxAUQQOUhytwgZ2sTp55OhyiSHCAopl
         4vCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700955172; x=1701559972;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8c3cwZVq+dZx7g2GJ9UgJ01HODn6EqIuZteyUbFAXAQ=;
        b=le+T48Ra13k9rwYrM1krDWtLC8jBgrTFN3NTsr3U5JaMBOcfhJNANjsd+PnLkyiook
         WsvrSZYMCrcs8Aqw9F+RXPR4s+BLLh7UwnmoSBOCIKli3/YezIPZR9yycEs8jTUAEc4F
         THH9e6LwQq7qVtxCEbDjEFLac3FpKiuUE2Oox4D0uKmnzyJMThngf+pBuxyeJPumcmhy
         GF3M+cLT1/v8W3bKABnxMt0U4jTzWk9n8ZBCCAdkFuFkJKG1afokKdD7+IknEXHuhQYy
         23/RVhWjUh+prbf11pqSqekVUFqxmphG/L0vATyfFh6RJrQXkVogewbaSLsHv0zADDFO
         E1LQ==
X-Gm-Message-State: AOJu0YzhPWMDYPC4pQldTTmE+pn7pZPvhJbJ7yTAl8lyRtBsZ6O7qgfW
	wd0wrDQTJ3PIFuDXz12D4Yzc07jsO0gXlU0l606Udg==
X-Google-Smtp-Source: AGHT+IHcZpe10qaTpyV/XpFY+x7kWE2ecjNrtiHnZUaaO9CIQBJwBL4x88gpnoW7SjvCRrqO8YFKMg==
X-Received: by 2002:a05:6a00:1a8c:b0:6be:4e6e:2a85 with SMTP id e12-20020a056a001a8c00b006be4e6e2a85mr8553726pfv.30.1700955172536;
        Sat, 25 Nov 2023 15:32:52 -0800 (PST)
Received: from sleipner.berto.se (p4fcc8a96.dip0.t-ipconnect.de. [79.204.138.150])
        by smtp.googlemail.com with ESMTPSA id 7-20020aa79247000000b006cbaebfbd43sm4856364pfp.184.2023.11.25.15.32.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 15:32:52 -0800 (PST)
From: =?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	=?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
Subject: [PATCH] arm64: dts: renesas: r9a09g011: Add missing space in compatible
Date: Sun, 26 Nov 2023 00:32:42 +0100
Message-ID: <20231125233242.237660-1-niklas.soderlund+renesas@ragnatech.se>
X-Mailer: git-send-email 2.42.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add missing space in compatible property and align style with rest of
the file.

Signed-off-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>
---
 arch/arm64/boot/dts/renesas/r9a09g011.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g011.dtsi b/arch/arm64/boot/dts/renesas/r9a09g011.dtsi
index 33f2ecf42441..50ed66d42a24 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g011.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a09g011.dtsi
@@ -163,7 +163,7 @@ usb3peri: usb3peri@85070000 {
 		};
 
 		avb: ethernet@a3300000 {
-			compatible = "renesas,etheravb-r9a09g011","renesas,etheravb-rzv2m";
+			compatible = "renesas,etheravb-r9a09g011", "renesas,etheravb-rzv2m";
 			reg = <0 0xa3300000 0 0x800>;
 			interrupts = <GIC_SPI 251 IRQ_TYPE_LEVEL_HIGH>, /* ch0: Rx0 BE */
 				     <GIC_SPI 252 IRQ_TYPE_LEVEL_HIGH>, /* ch1: Rx1 NC */
-- 
2.42.1


