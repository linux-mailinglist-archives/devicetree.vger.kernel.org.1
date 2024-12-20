Return-Path: <devicetree+bounces-133151-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B510D9F9663
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 17:24:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F01A816C690
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 16:24:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 012A321D5AE;
	Fri, 20 Dec 2024 16:21:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="Jk/K4z8/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBE5821D00B
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 16:21:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734711704; cv=none; b=nDl57ECxz57Qp55+OklV61hwUTfTpJ7s+lFmIuOrUaOlS29nC2dXp3TchdYgU3Jq/9FK6JhP9zCVwBRh7zaS3Oy1fW/GZGpgyQwPnPMgr3svGX/XoIquPTqGDD4Qx6dcDLIS51qcaCnbaUer5CiKfPtE+6iE5Rl7c2wcYjvdfKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734711704; c=relaxed/simple;
	bh=lP5fUIxnwfA9TrVj9PxAP3nMhg0Xse1CCwTK/R9Ub5Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bJfW0RQNeAU1rnCeTRKf92quck6iSydEPhTUNug0Yh1gp2loP5LSZ6oN3U/m8e9YyKt8MeNHrTvNTde7uDEEzPdo63ERfHG9RFPqNdw82du9/2G7/j+V2dYI7KR4wqkGBhXPl8qQ6OAiasgUDL7q2MLmg2WdCe8BRdPhupf+nIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=Jk/K4z8/; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43622267b2eso21267485e9.0
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 08:21:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1734711701; x=1735316501; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=av9B4J24iSkn+3gVD9YhMsMCbMdNI6QkecYKJAVC1Bg=;
        b=Jk/K4z8/VO6btyAfWwYJhGJCeLrSB8ZzvmSYN7b8BdnaGH/lQI4LgumXcEQSjUoE1S
         gP62wQTcNrJRAV0Js3cXRAhGZgmJU6sbHsg/pNmvJfvi/3CKftvy894bIfk6BGae2r65
         jdsDp6O6DCDIq+4N9qOaOd5JkdhSyQoVbYIJY8Je2HJi+0+dFHBeGJRXagZlYe86bWrg
         9LzFCwkC+I8ZOoDCUOiVUrLrMiBsYkwPWHMUOzAFUfFH4TQjoSNlAe54AQQgyf8SreKs
         j8yEcKPXHYJ+LYAwvyw+gcisYeUMSpqr2w0kcBYgqGnO0XieCCQECQVmnWFfhBdyyKtf
         iFVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734711701; x=1735316501;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=av9B4J24iSkn+3gVD9YhMsMCbMdNI6QkecYKJAVC1Bg=;
        b=rw9nRc2UNtE7p7MH8J48osFbwrf6SMgajgxcmnrW/XKmXgmLjcT7ld+UcI9PCwXwtF
         rcWxPwOMy65yoD24IoLcNL4alvUoisUWXJoZQofnin3UnV3iDztzZ8otG7B1dBaPETG/
         G8WgpIhur/TEa2J0unkWe3ZvyfFzYXign+BCE7P9AP4MCo7a8a1GxV3vITqeIBUP79Zr
         qGvFhXrdwAgbvT2YcampFYhVM7ld2Ukg1TiExR9k7xLHYxzckpD9WLmmj6imTsi/Lgiu
         T2MSFjdRIbPPSxP510hOwKPJb64NsJYCEopzFK8Ur+Ea13fmmPZtK40EJIA40zmeJOWr
         ZjQg==
X-Forwarded-Encrypted: i=1; AJvYcCUMaEGB+FAOFfasIRvVUTjaFyrS6/ffzqNU1qW+dmRidgjnzNuG6aL5SG8m8yUyB1BCQ4s46cGXNL4s@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1JtDJsV7jAl0BMzpmUNgYU1H6HWfdAJFiDGA88mK5cB+fUfDc
	st4RjBtAt6Hnyp7NLinJxEE8Ct4pdQfNiOLFqviS1mRYb3rE2aOLqr3KZTIJuW0=
X-Gm-Gg: ASbGncvcaojpAczeB9J6YWK1AMxeCM60i2laQ8t7PTK2VhDsN/Quw4TS+y190Yyi38Q
	2ps8vqbBlvmVHdgNdx43fis5hqFwP2UKtdfqIkh2FSKNenFZV0YGlLbTlIPnLyDujgn3wK8f2sT
	u9FLxQvqQgNp4DwcIRHeDUM97EV/fgyy/52j6d9qNDWLkYIABrc+Ri3xCuYjlXRBLXRrMiIRPiC
	71eC46bKkjIK06ckr1Buwytci2pQYsDCtBqjeedMyX5ZeXM
X-Google-Smtp-Source: AGHT+IHg6VTmT54UYl9JM2Jsfkok9cq3oZeEbcD5pJ5HR0oeS3QenygH1VZpwXBGmdab27CtHTitYQ==
X-Received: by 2002:a05:600c:35c1:b0:434:a94f:f8a9 with SMTP id 5b1f17b1804b1-43668b7873emr26854825e9.28.1734711700897;
        Fri, 20 Dec 2024 08:21:40 -0800 (PST)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-43656b013e1sm82824045e9.12.2024.12.20.08.21.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Dec 2024 08:21:40 -0800 (PST)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Fri, 20 Dec 2024 16:21:18 +0000
Subject: [PATCH 7/7] arm: dts: bcm2711-rpi: Add HEVC decoder node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241220-media-rpi-hevc-dec-v1-7-0ebcc04ed42e@raspberrypi.com>
References: <20241220-media-rpi-hevc-dec-v1-0-0ebcc04ed42e@raspberrypi.com>
In-Reply-To: <20241220-media-rpi-hevc-dec-v1-0-0ebcc04ed42e@raspberrypi.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 John Cox <john.cox@raspberrypi.com>, Dom Cobley <dom@raspberrypi.com>, 
 review list <kernel-list@raspberrypi.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: John Cox <jc@kynesim.co.uk>, linux-media@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailer: b4 0.14.1

Add the configuration information for the HEVC decoder.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 arch/arm/boot/dts/broadcom/bcm2711-rpi.dtsi | 5 +++++
 arch/arm/boot/dts/broadcom/bcm2711.dtsi     | 9 +++++++++
 2 files changed, 14 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm2711-rpi.dtsi b/arch/arm/boot/dts/broadcom/bcm2711-rpi.dtsi
index 6bf4241fe3b7..43fa2d82cedc 100644
--- a/arch/arm/boot/dts/broadcom/bcm2711-rpi.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm2711-rpi.dtsi
@@ -105,3 +105,8 @@ &vchiq {
 &xhci {
 	power-domains = <&power RPI_POWER_DOMAIN_USB>;
 };
+
+&hevc_dec {
+	clocks = <&firmware_clocks 11>;
+	clock-names = "hevc";
+};
diff --git a/arch/arm/boot/dts/broadcom/bcm2711.dtsi b/arch/arm/boot/dts/broadcom/bcm2711.dtsi
index e4e42af21ef3..0a1f05a26a6a 100644
--- a/arch/arm/boot/dts/broadcom/bcm2711.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm2711.dtsi
@@ -628,6 +628,15 @@ v3d: gpu@7ec00000 {
 			resets = <&pm BCM2835_RESET_V3D>;
 			interrupts = <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>;
 		};
+
+		hevc_dec: codec@7eb10000 {
+			compatible = "raspberrypi,hevc-dec";
+			reg = <0x0 0x7eb10000  0x1000>,  /* INTC */
+			      <0x0 0x7eb00000  0x10000>; /* HEVC */
+			reg-names = "intc",
+				    "hevc";
+			interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
+		};
 	};
 };
 

-- 
2.34.1


