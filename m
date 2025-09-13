Return-Path: <devicetree+bounces-216829-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AEF54B5632C
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 23:22:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 020D01B26ABC
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 21:22:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E376523A9BE;
	Sat, 13 Sep 2025 21:21:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cfHZ3JTT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E65D2857C4
	for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 21:21:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757798499; cv=none; b=NxWKVzmnU0m23/ajEyVcpruZVuedUoFV1sG5mMDrxOkbnL1mxGKR92XMsx8l8jLlzZVRg9J6AwfFcAB2IxQE9g6epnarEn9WdLnn7LakZdjGU+SmEwDZXmfGnSxTVF2C6jEMnb6RsiL18G/E6eEMFAos3+DSdBxQW212CGMX+Q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757798499; c=relaxed/simple;
	bh=uNF4o+FlWLCTLVTWRxLW7Lyuky8hKhwVnIT0SNYmZcc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dj08sp37dpgcbr+Q6OL4q+xIVw4DjGjYlzsA5nBcsGjRml/AkaR/aXPhobDzrXxd3+Hy+es4N1eJ6oQIvWWk/UMyLTM1jtCTT3jRB38fn/gsstbAPVwU0xU0oKWHf10NOqreWNZ1b3XgturNVa/xg3utLnkchrxvlT02Hikijpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cfHZ3JTT; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-45f2acb5f42so498115e9.1
        for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 14:21:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757798494; x=1758403294; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=U1pL+OZ1Boa6u+YXgScmmKOffrAx3fdC1TFoaMx+6KU=;
        b=cfHZ3JTTFt01f4ehfJRbcSS4SDj1x/bUXwbUzCW+fMrBqtUToYvizBJWw7U4lqd8J6
         4OEsYX2ApZKt0xVuRFeapCieL/IKUscpTuoiKKuN02QadLCMKE0wevSYEXfsv9iG1CxB
         reL1NjeAsijaadDF3/gK7InqIsuovf8zJsvg9aiIDUTUKhxexDgpE7B/VSKk+PCdVyi6
         MmyEPm/vMUzmQ7C2c8V+T8GJQBQRhL9quEy60I3vQx5l/QS0vxoD0WUzeC+1QM+pROr+
         vfpTlRZj1sUS/mOIirua43XUxVgD8Kjpz2VPuWkvraDBb3gNcZJYOmtUd55tvGmvj2X8
         m7/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757798494; x=1758403294;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U1pL+OZ1Boa6u+YXgScmmKOffrAx3fdC1TFoaMx+6KU=;
        b=UmBbAAUCRC2sGwv8iPiV6FsvvVhmwhMI7NnIvWiE6JqLwneu+5uVoFo7pOL3/iosC0
         gzKKvixj1jbLuKqp0yhqhqk7vqNFSso2spr4JKdmPj2mffgjp+ne+u9A5RzzE18NxZ2E
         Tspjk3cId0qTKaDFm8miGJKm0WC5WhWHUNi70JJjGihdHE5nfpI8Rxe9F7dmvBGanq1f
         2YndF2fgClJgAdJj19hE0uGUNKyiWAyKl058++rcwbJBlWUGFUmLO8W2Xc0sSOkKMAe9
         ycn1KCFNQgxxM+96CewWMo8cXvB/ec8niNxLRL1HL6MPHWbwlJRzSsAqC50hxiZJXDVF
         9WTw==
X-Forwarded-Encrypted: i=1; AJvYcCVx7tg0GKKNwXVRdG89w722DZvpLFiRHWOE5GmCZGFExrsn/5fAzwJbOfjn1AQDZwV9CnZJPolL4hYm@vger.kernel.org
X-Gm-Message-State: AOJu0YwKlDs1IwfbbDkDDxyRipYwFUJaMPB09gh+M1rW7U0oocepPziT
	cXi0JUtkoOHIDl+v5TwalgV8dry4ZThTto2Xx8PyKtG8rxu1OWYWP36h
X-Gm-Gg: ASbGncuC6l932Y88ln3kpsQK+CksMEs+HqnJwtkQUhYKQaoJ+/+lWBWmSZnavzeuunP
	lOz5VdNMsxHWwA4CYgpJuc3QP7dWig6WroA4Wr+fsyps/US/gBJ0+lK0+rlqLN7LrFYIJV20DUo
	iP62FG/5T98OJQKzMi0dANlkUtPFEXDa0+6Jnjv8hIqu47PjOp772kXAP6L//3G01tvJ7PAFW82
	+KloYGRsogZ9/Y3l9vohSlkoB9o7jNcju3wkUT0Syt7cIlqQrS3UEOZls8QHZFeQlBoLcQPJBai
	oMXVUe/HetxIcg4BDWU/RhEDFfZhWaN8NCgDxweVgi/EGVqCilR8zlMdO4Pm+DnF5jmjjr8DSEP
	jLgOXtviL8ULb5mkaDWsqkb7wR6r4UTZu0GUNpE4LDSz8dNRrHIsE
X-Google-Smtp-Source: AGHT+IEUygTfQFxD0Xjd1YPk8jG2g29zmtJi+7jJLe6De4WxzayNW1WWv1CJtbsKPSYW8CMC/jCaBg==
X-Received: by 2002:a05:600d:f:b0:45d:e531:99df with SMTP id 5b1f17b1804b1-45dfd5ab3bamr97128825e9.3.1757798494216;
        Sat, 13 Sep 2025 14:21:34 -0700 (PDT)
Received: from Radijator.localdomain ([93.140.65.23])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7607cd6absm11576842f8f.34.2025.09.13.14.21.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Sep 2025 14:21:33 -0700 (PDT)
From: =?utf-8?q?Duje_Mihanovi=C4=87?= <dujemihanovic32@gmail.com>
Date: Sat, 13 Sep 2025 23:21:07 +0200
Subject: [PATCH RESEND 5/9] arm64: dts: marvell: samsung,coreprimevelte:
 Add vibrator
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250913-pxa1908-dts-v1-5-8120cdc969b8@dujemihanovic.xyz>
References: <20250913-pxa1908-dts-v1-0-8120cdc969b8@dujemihanovic.xyz>
In-Reply-To: <20250913-pxa1908-dts-v1-0-8120cdc969b8@dujemihanovic.xyz>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kees Cook <kees@kernel.org>, 
 Tony Luck <tony.luck@intel.com>, 
 "Guilherme G. Piccoli" <gpiccoli@igalia.com>
Cc: Karel Balej <balejk@matfyz.cz>, David Wronek <david@mainlining.org>, 
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org, 
 =?utf-8?q?Duje_Mihanovi=C4=87?= <duje@dujemihanovic.xyz>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1770;
 i=duje@dujemihanovic.xyz; s=20240706; h=from:subject:message-id;
 bh=jyb7dMVKfzm+pC9ukuRfnyNGN4DBhDuznQcq0ZsICNA=;
 b=owGbwMvMwCW21nBykGv/WmbG02pJDBlHH/j37juY9Cokv79Ivex67/u52+yiz786v2NtQu+Kn
 W9sVvlId5SyMIhxMciKKbLk/ne8xvtZZOv27GUGMHNYmUCGMHBxCsBE+lMZ/se8UnkwxUnpNgP7
 C83rcy38H4a8W2+xQN79ernL5Qu6boqMDKt1+L48Ov2+rGaZ52PZPb8kBU7dail6FLLr4sG8yZz
 LLzMCAA==
X-Developer-Key: i=duje@dujemihanovic.xyz; a=openpgp;
 fpr=6DFF41D60DF314B5B76BA630AD319352458FAD03

From: Duje Mihanović <duje@dujemihanovic.xyz>

The board has a vibrator hooked up to PWM3. Add a node for it and its
associated pinctrl configuration.

Signed-off-by: Duje Mihanović <duje@dujemihanovic.xyz>
---
 .../marvell/mmp/pxa1908-samsung-coreprimevelte.dts | 23 ++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/marvell/mmp/pxa1908-samsung-coreprimevelte.dts b/arch/arm64/boot/dts/marvell/mmp/pxa1908-samsung-coreprimevelte.dts
index 78b7bccfc5f299889d1b9a8fd2c08554f17eb147..c28c2eadc42cc538fc5491ecdfcfbe0191004794 100644
--- a/arch/arm64/boot/dts/marvell/mmp/pxa1908-samsung-coreprimevelte.dts
+++ b/arch/arm64/boot/dts/marvell/mmp/pxa1908-samsung-coreprimevelte.dts
@@ -121,6 +121,15 @@ backlight {
 		ctrl-gpios = <&gpio 97 GPIO_ACTIVE_HIGH>;
 		max-brightness = <210>;
 	};
+
+	vibrator {
+		compatible = "pwm-vibrator";
+		pwm-names = "enable";
+		pwms = <&pwm3 100000>;
+		enable-gpios = <&gpio 20 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vibrator_pin>;
+	};
 };
 
 &smmu {
@@ -365,6 +374,16 @@ sdh2_fast_pins_2: sdh2-fast-pins-2 {
 		pinctrl-single,bias-pulldown = <0x8000 0xa000 0x8000 0xa000>;
 		pinctrl-single,low-power-mode = <0x288 0x388>;
 	};
+
+	vibrator_pin: vibrator-pin {
+		pinctrl-single,pins = <0x12c 0>;
+		pinctrl-single,drive-strength = <0x1000 0x1800>;
+		pinctrl-single,bias-pullup = <0x8000 0xc000 0x8000 0xc000>;
+		pinctrl-single,bias-pulldown = <0xa000 0xa000 0 0xa000>;
+		pinctrl-single,input-schmitt = <0 0x30>;
+		pinctrl-single,input-schmitt-enable = <0x40 0 0x40 0x40>;
+		pinctrl-single,low-power-mode = <0 0x388>;
+	};
 };
 
 &uart0 {
@@ -409,3 +428,7 @@ &sdh0 {
 	bus-width = <4>;
 	wp-inverted;
 };
+
+&pwm3 {
+	status = "okay";
+};

-- 
2.51.0


