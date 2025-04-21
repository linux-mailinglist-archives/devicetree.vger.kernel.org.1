Return-Path: <devicetree+bounces-168929-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D7955A94EE4
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 11:44:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 82FB83B23C2
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 09:44:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D203C25A2AB;
	Mon, 21 Apr 2025 09:44:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="QpTS3Jx0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C38AF259CB6
	for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 09:44:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745228643; cv=none; b=NxN1bJrN1+hWz5kedDl3y9eIm15Vw2/KhTGnSezBEHQeGbjAso25CeFq5nyXPeTTw9z4VOKEAG3fBQO8SX8sNOIxJ8cWchPlxLQeoWtRafBE3H2mInsjwInM3UqYZ2ieGTGISZSvd7NfvCh7qTTLNu34i/0GaQgHfQ0oHRkcAgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745228643; c=relaxed/simple;
	bh=plbpc31rVrOD0KMkWiMy9DSCysG2bPp4EWpOgbNVk+g=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ix+U2mOtiOPdrMD8KMLY8wh94eTsaN93UJbOA2ERWUNDdWyzGtKjeNMsE4+ADdd3rrIIjOygnEay1j8+X816cFTINqbZ4Sed+R91/9o8/lsgxgliZfql1iW3Ig8JYgLPA1JIZmqkPl/3Hi7qYfTrBFAhkJR2UTe941Hvwfl30fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=QpTS3Jx0; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-7390d21bb1cso3312577b3a.2
        for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 02:44:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1745228640; x=1745833440; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l3iCEA8tjYiThU7Rin4dKsTFv6XsSOzMIb0/FuGpw2E=;
        b=QpTS3Jx0AQQtvw0bUms0dxP5nQxsRQKGIU9irI+BeDdQvsuv0t8ePG+62pwA2v0iAd
         mbJKOWdFkzNHw2akVdROo0XNxCvINnTEXP29aXJUsnP6yE5Jnd4bcitmOAq2/HXBgNph
         Jkfx7kWsvfvIM+CnyUSzST/EOiwSo+pKvIEkco7OWadpiEEI0p/86DbTUCNeg4LldiX/
         3WHTZVBx1Am6tfA3iVpyuO+QctECz3cv+SfwnMl4/li4YliPvWX43ZkXcLEkiAX+rdd4
         u9FK2AfCwN6I0q51QMJbPEbplwmDiUN/d+mxOs0heCuXC7B1Gh6awcFHv6N2WiKhVAUP
         6kBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745228640; x=1745833440;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l3iCEA8tjYiThU7Rin4dKsTFv6XsSOzMIb0/FuGpw2E=;
        b=ELsQppW68SWT/kxsTleASna1AXjcF54lNamY/GJaOLeJck9rggEXkYagKHui8m3ptR
         yLPRKs3uPAw4g8oFnB0ExYmGkOVcgwWUX0KPliWMnnDv3CSfTyBWInrcGhKAk+EOnPpa
         Je2F7O7EYUJBjoUlRKW/pCrl8ooIaC75DP8ra1oBDIFCHG0NZ+/sXqF5zTl0YAn8SUR6
         oBUiQ1LlDlsHCtlkAA0KYMkjz3h8Ow/qRmWGIqlBtZuC0ZAAGjtBjwhI9Mdxhqu8DVw2
         +CjiOODTE1AMNAduZUacQnOGlGLBrOwSz2Qw7B2AjzZVY9EybR9sZ+F7VKrgeFQHroaw
         STEA==
X-Forwarded-Encrypted: i=1; AJvYcCW3V1L4cMZK6fnOszEGghVG+A9IipSLUGkVKiWs72tjd+uPQTzqYGzM66HpHZo9BpacmVIvzE68cqnB@vger.kernel.org
X-Gm-Message-State: AOJu0Yz84YBag41CAknvL+uoD7xE6RcpTw/S0g+/J6dxBsGzeHGom6T+
	L0mwo3qbH07wj35S6t5B/YRdvTgNTdZPJsD6hRXZ5WGlqPrUl03STNDyf00A5WI=
X-Gm-Gg: ASbGncvw/JqCfsUFz4dN9K4tfkMVmhn8PxPc3+uxdCmWP69oJUSE50O+0Dwo5cLV+n3
	nQJ0Exn3GkkhsuSqD59P2+c2oiIv/PYAWB/aJtF+Z5lQsRK5RPlB2DqkuGfYK9JF0u1IoJd5vxd
	voVno5fqgit0jjM/XMf8UjMC0kGWjSp1+InZGkTpisYngVKw9KgB6C1fQgbyICE7dTPAMcbwMq/
	8Z0DvDojkoe0GUMcuflZN4ocGDfqblQWKWMZtYQ3TlUHb/MIAjjJIm22yZLnEHCuL1/usPu53uR
	aA5lkNnfzo+TbhSW1W2GSv37oenSS+rqy7l+ghrWmaBUJ4Nhj9Etnx7rtjdbZb12R1+oFCcm/KX
	oK3fXPCC5aMwt
X-Google-Smtp-Source: AGHT+IGhAPqW9k+zFC8QWowxPP2G8A2KzR14N1unikrdNvLboUqrU7XV7viGFBw04x6asP4GUxLZ8g==
X-Received: by 2002:a05:6a20:158c:b0:1ee:c8e7:203c with SMTP id adf61e73a8af0-203cbc74cdbmr17237282637.24.1745228640076;
        Mon, 21 Apr 2025 02:44:00 -0700 (PDT)
Received: from hsinchu36-syssw02.internal.sifive.com ([210.176.154.34])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73dbfaacf32sm6371965b3a.142.2025.04.21.02.43.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Apr 2025 02:43:59 -0700 (PDT)
From: Nylon Chen <nylon.chen@sifive.com>
To: Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Samuel Holland <samuel.holland@sifive.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@kernel.org>
Cc: linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pwm@vger.kernel.org,
	Nylon Chen <nylon.chen@sifive.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Vincent Chen <vincent.chen@sifive.com>
Subject: [PATCH v11 1/5] riscv: dts: sifive: unleashed/unmatched: Remove PWM controlled LED's active-low properties
Date: Mon, 21 Apr 2025 17:55:17 +0800
Message-Id: <20250421095521.1500427-2-nylon.chen@sifive.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250421095521.1500427-1-nylon.chen@sifive.com>
References: <20250421095521.1500427-1-nylon.chen@sifive.com>
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


