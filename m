Return-Path: <devicetree+bounces-133752-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 304D89FBB1F
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 10:28:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CD8191883FA4
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 09:28:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EBCA1AB52F;
	Tue, 24 Dec 2024 09:28:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="QiKoTtqC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1A97194A45
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 09:28:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735032490; cv=none; b=OVdbSDYQbAjt9PeMKOv41KQcOnPjZ4aEfvvMRLdmS+j5FhTtsONRNhaiLVj/mTnFEz+OL81AnWgIsLT1GcUrq58JxGupjiXn+dVOD5mCOqtv4cBW3Mg+Y9GFTMhCkRH+npXFXKhaToHdtLdOF6NKgcKBpEU/9KNiyLyEuankJo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735032490; c=relaxed/simple;
	bh=plbpc31rVrOD0KMkWiMy9DSCysG2bPp4EWpOgbNVk+g=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ZxhzdvDXwWnFXgjcFV4m91X2YnTd5dlcQoZZ91b2nUtvqN5UdOD1E9aA2Zg/LpunOlc/ByiL5jbRwEGoQxVT+wiIDpeowzYcNlCKQ834e0z+N9xbEzSU34RgkiqF4YKTlbTdOYoN/fQ69k3JGmybuVLRBARQ/jkGWHxD+K116HU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=QiKoTtqC; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-2164b1f05caso49139865ad.3
        for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 01:28:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1735032488; x=1735637288; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l3iCEA8tjYiThU7Rin4dKsTFv6XsSOzMIb0/FuGpw2E=;
        b=QiKoTtqC9kMqg3tB3bIGrAoICqNG+kJmYEbY4Mn7IHSnt+2A/g0KiFfPaE8m6qr/yR
         54qvanbB8k1zd23kGfe4x4fgQB5fmM2c1ARtHzrJGkg203nXV4J7wir3YVMcL9rmkfEg
         U8fTw2s5pMhWM81bT67nRdIJZ9vvRqQ3QMhBbIGjG4eu4OoxnMP+KCzP+Odz/IqGuekm
         I0JsfXErH0rIPymgrVIcJyHcDml1jptwWvxfxyTIX3haY5gaKRxP1cQOihRSlTRz3QtL
         qrMWGjTl0kGB7ulPtpiQcqW5gTX0aYy3FizrNjVVoA4lawTGxZrBPt1KR3el2BBc8xnq
         whsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735032488; x=1735637288;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l3iCEA8tjYiThU7Rin4dKsTFv6XsSOzMIb0/FuGpw2E=;
        b=CC+CpMDj2w348cMlKX0EszvFoiqiL5dIu+5iysgBZ+rTroan37JvVgYXCaINRQnRoY
         /TdduBJ/lXgLXfvPtr+tBlHzK6A/AUSNGl3Ph4IOtfxComezWPd3ci2x55pCLH1fJpeA
         z/VXupVR7cOXBhnwBybyLiFClxWZMC0Th9x0pC7wiNYD+GX6IKiA3kNGtiCzLw98PISv
         2tRY0to27msyG7gDIXwV1u1gAT6hNT1zSVlt5/jm+qFpiD7T+X2jaikZsqktk1mIV7K8
         9vEwHTqaE4hj6mtpBbHhYKkfR5JcSbtr6Xq6Q7kfx3bmYzfVpB4jtJquS3cCzi1ahJb4
         /beA==
X-Forwarded-Encrypted: i=1; AJvYcCUwm33M6fIajK4M4UChQhGdjHd622Cnm1YwrnQcdD0Oo8cpZrFJqG+uDX86xt6TI/DNAmsVzpLHcRjt@vger.kernel.org
X-Gm-Message-State: AOJu0YyuY1MdZmOENMm3EYWruHJdkkL9vjiRQ1aus2H5yjSfkZOEbKa/
	Pibd8RlZ6hhNQel+vY4hK1t8cdfpqR5oADbO3e0yn+HZKUAjgd+GkHGgJ1ha4s8=
X-Gm-Gg: ASbGnctQfPub1hr8MHeaBOxzYGH3GL2TWQOVv39ajthZG21J6oMwtsjZOK8gC2BzJ6N
	4LlvQzPRnD8CEK+Jvr1Vquselb4ojhndvmhwNWdsJmveJXOP+BfgXJ3h/tj2Nr6bCzbrlcXr7D3
	32gNwgp3WrDPfc5igyFqjzajiu5f100clcyLzsM8HY2VZjIE2zpvzRNH6Q9yBAoaGxjVAUsIl/m
	DgxoEf2TAZBnV2Slt3OEf+TwkC5G1Uev3GbdG5aJYRU017GCOXW51MnEwAjqZQWkaw95H77jANj
	WJumPaqRo0FTBS0L8g==
X-Google-Smtp-Source: AGHT+IF0zLvXg0En0J308WC3QLi6iR0zwk8h6v6PO7AKPZZqdQ2DFuER2UQDgneMceWfSmVNHYy5yA==
X-Received: by 2002:a05:6a00:4485:b0:725:c8ea:b320 with SMTP id d2e1a72fcca58-72abde0f951mr22397563b3a.14.1735032488180;
        Tue, 24 Dec 2024 01:28:08 -0800 (PST)
Received: from hsinchu36-syssw02.internal.sifive.com ([210.176.154.34])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72af8dcff60sm516341b3a.152.2024.12.24.01.28.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Dec 2024 01:28:07 -0800 (PST)
From: Nylon Chen <nylon.chen@sifive.com>
To: linux-kernel@vger.kernel.org,
	linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Nylon Chen <nylon.chen@sifive.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Vincent Chen <vincent.chen@sifive.com>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Samuel Holland <samuel.holland@sifive.com>,
	linux-riscv@lists.infradead.org
Subject: [PATCH v10 1/3] riscv: dts: sifive: unleashed/unmatched: Remove PWM controlled LED's active-low properties
Date: Tue, 24 Dec 2024 17:38:59 +0800
Message-Id: <20241224093902.1632627-2-nylon.chen@sifive.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241224093902.1632627-1-nylon.chen@sifive.com>
References: <20241224093902.1632627-1-nylon.chen@sifive.com>
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


