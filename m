Return-Path: <devicetree+bounces-175462-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 491E7AB0F59
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 11:41:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AB2EE4E76A8
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 09:41:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD5E528C868;
	Fri,  9 May 2025 09:41:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="P3b6Lxal"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0A428D8D1
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 09:41:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746783697; cv=none; b=BUmpAmVb7W4HBLp+B1jEO7hR9wDjnG9Nu0u6VbflqWPRaQQGmibmBMeqnDIlVyMcjlILvFJu/3rWdfJe8+rId1CA0aefz0mk33gSEviBKh2H+xJuxiVWSqGP41s8Lj0IF0PV4a5afhQQaZXs/Iq8qz4MqXFEg7z6/e9MG54h1pU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746783697; c=relaxed/simple;
	bh=plbpc31rVrOD0KMkWiMy9DSCysG2bPp4EWpOgbNVk+g=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=bMupkwtSyY1uLqdJPvaQ4gx3ZTh4udXEzktWz9ee28HutzfuQtMUlq45EwDORRM199vQm0WCSEj4hxaKG7l6vmm7lCUdTAsKFT3Gu+28qAzvoOt16HgruJ8x6ZldHUHF+L3GzAzhocG9KJJfT9K5H3ZdtZrDNeYiBNZqqBmO4NY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=P3b6Lxal; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-b24f986674fso116654a12.0
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 02:41:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1746783695; x=1747388495; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l3iCEA8tjYiThU7Rin4dKsTFv6XsSOzMIb0/FuGpw2E=;
        b=P3b6Lxal12gJVlPgV30LrHtHHKxGSI2qlZmaCjf7FwEHT1OMF5rXySPhf6j4flADkE
         7R9X2gWmOWN2OwNXTuErJWMFenx1BpukNZH3vfkxikf1T6s8/UpaQgddI45UQlyTAhJv
         ZOeMfaodPWyxcrvcSornFVqQoYvWIY3xwSpkWTB28zPRG5PQLjJRm7Fzgl894IhlEBbd
         AxoNX62oECDFtzrLUJUKnHtSx06ezCLANDq+SSN/Tg2XHhzdN+gaIARgSmY3UF3DfnIN
         +rMs5QyKvdYP1JrxZBbK7MsjmKGfzds2xRpJoXVr6jblAA5589wCsnivXNAe5jHtNU3C
         uJxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746783695; x=1747388495;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l3iCEA8tjYiThU7Rin4dKsTFv6XsSOzMIb0/FuGpw2E=;
        b=e4JQSfvw7+75rXdqGoG1MLwzTOTQr3jqez3UaHsJ/3gRUeMqJXKEcK7Dqm03CMTm40
         Fxp7T4ic2wmCh17ilP4X3JZEaqojTg5CtqMTlyW8ctz1KpoiF/l5RQGeD+eL0x8bSeWF
         hXmTnHn4+MKrK074cJSM4IVAqPFxS3I/2L8z2s9g4tUeZrtddbLnfig/2Vacqeczwj90
         KHjyLq/blVMu6OSVECj36oOIwCG7pt47RPSJ2aRKjtIkI5M5uq/1k67d5b2LuK5a2kQh
         Fd+1rfPX2SwpnAmPzSJCHcMD1TrnFiACrshQAD+ZVu4dXsZlG9DibXFzARLbYoOJIrhd
         8vmg==
X-Forwarded-Encrypted: i=1; AJvYcCXpohsvJDQTFj3kt3iL4D9z3tC1iwvoy6eiIuvezqKZhslmIo/IVrKoGdH4JZZY97fNRXzD1NsjFiuQ@vger.kernel.org
X-Gm-Message-State: AOJu0YwQXQe4Bjh4kdT7vd22mhp7wvf6BH0Aj7YxMgW4kIi/GjlE4Osy
	tUU0rkoEe+gNZ/Mx7JTrSD7S8CyKU/FN3/ngnjcUzwWjvhM25THmDBs5sGBFu/c=
X-Gm-Gg: ASbGncvt28NxUhvKRPQG5H8C9G1lh8zFFZXtusrki7kxHM59rl0aFKp3rT2NUFproMz
	jt4ZL3KUXM6QSUM8f5naTKPJdEApyMgF3+bdcfUNQwHjwyiiUUe0/zKQl/MBoLCeRl2aknz9u2X
	77+mV2yFlz5xiToubAIiOLv7UnYZ5UnGNFQ6LlcSFvTnFye9T67DCqU+x9cETlOHBKsnN8PlwCE
	bbkWHOdMqqqkoBdfgTo5uOd/xU2ykczDj7b5cmcfnJlcIe1qvfzPSRDlYpsgkyMm2huoJYEtp/s
	KoqkwKXlFP4EWCBDTvWKkZEnFswLxW6SZ/KBZY3lho0AeyrhL+sS9BTG4aV0DhOMtYWtpTtiwP7
	xpA==
X-Google-Smtp-Source: AGHT+IEgalPQ22cx7DiKoLmOGrrO9ni0jyC4XIPIwGEyDn4n6J78lWHZEvPtJShZItbWPQLmYJ0Xvg==
X-Received: by 2002:a17:902:f602:b0:220:fe36:650c with SMTP id d9443c01a7336-22fc93e3d82mr42864265ad.23.1746783695428;
        Fri, 09 May 2025 02:41:35 -0700 (PDT)
Received: from hsinchu36-syssw02.internal.sifive.com ([210.176.154.34])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22fc8271c38sm13271035ad.119.2025.05.09.02.41.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 May 2025 02:41:35 -0700 (PDT)
From: Nylon Chen <nylon.chen@sifive.com>
To: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@kernel.org>,
	devicetree@vger.kernel.org,
	linux-pwm@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: conor@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	samuel.holland@sifive.com,
	Nylon Chen <nylon.chen@sifive.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Vincent Chen <vincent.chen@sifive.com>
Subject: [PATCH v14 1/5] riscv: dts: sifive: unleashed/unmatched: Remove PWM controlled LED's active-low properties
Date: Fri,  9 May 2025 17:52:30 +0800
Message-Id: <20250509095234.643890-2-nylon.chen@sifive.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250509095234.643890-1-nylon.chen@sifive.com>
References: <20250509095234.643890-1-nylon.chen@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This removes the active-low properties of the PWM-controlled LEDs in
the HiFive Unmatched device tree.

The reference is hifive-unleashed-a00.pdf[0] and hifive-unmatched-schematics-v3.pdf[1].

Link: https://sifive.cdn.prismic.io/sifive/c52a8e32-05ce-4aaf-95c8-7bf8453f8698_hifive-unleashed-a00-schematics-1.pdf [0]
Link: https://sifive.cdn.prismic.io/sifive/6a06d6c0-6e66-49b5-8e9e-e68ce76f4192_hifive-unmatched-schematics-v3.pdf [1]

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
Signed-off-by: Nylon Chen <nylon.chen@sifive.com>
---
 arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts | 12 ++++--------
 arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts | 12 ++++--------
 2 files changed, 8 insertions(+), 16 deletions(-)

diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
index 900a50526d77..06731b8c7bc3 100644
--- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
+++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
@@ -49,32 +49,28 @@ led-controller {
 		compatible = "pwm-leds";
 
 		led-d1 {
-			pwms = <&pwm0 0 7812500 PWM_POLARITY_INVERTED>;
-			active-low;
+			pwms = <&pwm0 0 7812500 0>;
 			color = <LED_COLOR_ID_GREEN>;
 			max-brightness = <255>;
 			label = "d1";
 		};
 
 		led-d2 {
-			pwms = <&pwm0 1 7812500 PWM_POLARITY_INVERTED>;
-			active-low;
+			pwms = <&pwm0 1 7812500 0>;
 			color = <LED_COLOR_ID_GREEN>;
 			max-brightness = <255>;
 			label = "d2";
 		};
 
 		led-d3 {
-			pwms = <&pwm0 2 7812500 PWM_POLARITY_INVERTED>;
-			active-low;
+			pwms = <&pwm0 2 7812500 0>;
 			color = <LED_COLOR_ID_GREEN>;
 			max-brightness = <255>;
 			label = "d3";
 		};
 
 		led-d4 {
-			pwms = <&pwm0 3 7812500 PWM_POLARITY_INVERTED>;
-			active-low;
+			pwms = <&pwm0 3 7812500 0>;
 			color = <LED_COLOR_ID_GREEN>;
 			max-brightness = <255>;
 			label = "d4";
diff --git a/arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts b/arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts
index 72b87b08ab44..03ce2cee4e97 100644
--- a/arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts
+++ b/arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts
@@ -51,8 +51,7 @@ led-controller-1 {
 		compatible = "pwm-leds";
 
 		led-d12 {
-			pwms = <&pwm0 0 7812500 PWM_POLARITY_INVERTED>;
-			active-low;
+			pwms = <&pwm0 0 7812500 0>;
 			color = <LED_COLOR_ID_GREEN>;
 			max-brightness = <255>;
 			label = "d12";
@@ -68,20 +67,17 @@ multi-led {
 			label = "d2";
 
 			led-red {
-				pwms = <&pwm0 2 7812500 PWM_POLARITY_INVERTED>;
-				active-low;
+				pwms = <&pwm0 2 7812500 0>;
 				color = <LED_COLOR_ID_RED>;
 			};
 
 			led-green {
-				pwms = <&pwm0 1 7812500 PWM_POLARITY_INVERTED>;
-				active-low;
+				pwms = <&pwm0 1 7812500 0>;
 				color = <LED_COLOR_ID_GREEN>;
 			};
 
 			led-blue {
-				pwms = <&pwm0 3 7812500 PWM_POLARITY_INVERTED>;
-				active-low;
+				pwms = <&pwm0 3 7812500 0>;
 				color = <LED_COLOR_ID_BLUE>;
 			};
 		};
-- 
2.34.1


