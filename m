Return-Path: <devicetree+bounces-169263-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 67B93A96300
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 10:54:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 89D5D176B76
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 08:47:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68C6D25A64C;
	Tue, 22 Apr 2025 08:41:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="MbUQVUCH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDECF25A638
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 08:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745311316; cv=none; b=Tz9UfQEWw13f/upad3C9mTfbNbXmLs/4qBPw6rYbBkRAlHHY3q07MVyHXWJSip/S1pDKd2zU2iBBK1s3DkNiIKjxVJMg5qiVzmaWhyrIFEX0nwGK/GVUp1ncafMu+0DVkVM0rWqeFDjmgFXzduf1SwtP65NR95pb4ma+9w1n8XU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745311316; c=relaxed/simple;
	bh=plbpc31rVrOD0KMkWiMy9DSCysG2bPp4EWpOgbNVk+g=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=dFLVT22L61S8v3tu6P5b6wM2InbsVLFw0yv7vnyrpS4WWFRSSqE+C6nArWJ8mpsBTE4mq3CWQv/+a8dbANluw1fBG/t6DUcDs+PkKXhhrJs+X5g3uuq/FLmLoy6I3Thh0wFeUsCbNkPGtVSQ3U3wR2Bd00gBj7Q9jP2b4t/BpIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=MbUQVUCH; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-2243803b776so75063365ad.0
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 01:41:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1745311314; x=1745916114; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l3iCEA8tjYiThU7Rin4dKsTFv6XsSOzMIb0/FuGpw2E=;
        b=MbUQVUCHSysY+BlA82S9jWphlH5MgsbojF32v7wnCW9Gd9MJJDvr2pxkynY+uCRbjf
         ABIpiOJdFBZ4VUfe7mEGPEhn92yltZlFH9BRZgDrqugOyJF+uYJ2NuyFc/iWXCvxYaVQ
         HS+uGwkV12LLgV5jeBP/xYYJ1XSyvoikz9enmCaobSCryPTetMTvy8h52PmdrDGOzb1X
         vBMX4xw67rl8PfRZ7/F52V5DQNT0z9owDs1fAF0IKeuBeiX8D4i1HOziVsyQC2AiXCKg
         k9PDBnFRFuTir1wEahHE2rRvydWCAZpZavCmGOTRVCdi6Sy8AB6Ti8xiETmXIhA9u7ZN
         i7rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745311314; x=1745916114;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l3iCEA8tjYiThU7Rin4dKsTFv6XsSOzMIb0/FuGpw2E=;
        b=CQ3T+x+D34XCdiF7MtAdF2EuVI4QMZcsGHO9HR+F6tW4Y3C77THWPSXbDOzUOAKhjx
         kqFZxE32SiJTNvfCs6SN8TCida3iypO8rWOhGvmX40pRNxQPNAnIgJ8iB5Ui1dt8V40f
         W1Dk6n1NC45Vm6p9F9o3vBpkLZsAHHQfbyx5PHD9224L5aN43zsKx5l6tm3iqXjtDpEj
         Yw+pT20P/QwsYIZweuJpB5pS29k0I8WVqJLmcKEoHqa67rLRztQfLb8O1bSU2h/dlxMV
         HS5ykjNAMv8NUxSLBy/7uAEewGupqKSHY4bb8++/UFM7LXwWuUoIisSd38Iy0v4KQhQc
         fMbQ==
X-Forwarded-Encrypted: i=1; AJvYcCV0wVg+lRq434r/fV3XTJpEle0aGTaIGZZOI7beI+kERKT+UeL/QJ7Rwj3cuee5NwgFeG5C3RXjMELh@vger.kernel.org
X-Gm-Message-State: AOJu0YxZzugrx+kf4BW0Xc70hgcuPK6TLHHdlahZtGBWYH4SBFXeO02D
	WhpRNPgorLH0bY8w8ijZVPt+2Ex8MpcTN9ekGKAbJLsqlTQbSXB4sp7Mu+SQOAY=
X-Gm-Gg: ASbGncskUgBP45ipAisctjO8WGNUQ4OGSCxRZnHzAYjD08tsh78sNWTuJ150BOeUDg3
	xvAH+aGRQtTseZQ6yIWNhmDSj6SRXKASsfEMnx/GtvALEPZmZWMUtd8dKBOCiWYwwcW+o8ql3Lj
	TvyVe2b2YnKvN85yZikd7UWNyEVlzeIaxZtyKqgN3kWkcv759oFgK39Om3ixRuI+JY6giXA7n7E
	DiohK0bi9hftOVfnHui3k2M/JcsqQrodJhysNhErSrS+ZZ/1KkO9IF0bVZNrZjsDjzW5wOoNr9l
	GQxE4L81i1hP8TWHNbxM5bQ/RGcmTwOj+C2b8gGdyCh5xG1gWMCoGICCQ1mjXMHj73vIB3KtpgY
	0bz8KkpIEVcLI
X-Google-Smtp-Source: AGHT+IFp00dnBQ86k04fdmbX8xvzwFEmfdHBx64nvu1PEvdvO50/UHtsOOWSOHg/3EGakH1tIpZc6g==
X-Received: by 2002:a17:903:1249:b0:22c:336f:cb54 with SMTP id d9443c01a7336-22c535c9c28mr225400805ad.29.1745311313749;
        Tue, 22 Apr 2025 01:41:53 -0700 (PDT)
Received: from hsinchu36-syssw02.internal.sifive.com ([210.176.154.34])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73dbf90d7f7sm8038343b3a.82.2025.04.22.01.41.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Apr 2025 01:41:53 -0700 (PDT)
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
Subject: [PATCH v12 1/5] riscv: dts: sifive: unleashed/unmatched: Remove PWM controlled LED's active-low properties
Date: Tue, 22 Apr 2025 16:53:08 +0800
Message-Id: <20250422085312.812877-2-nylon.chen@sifive.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250422085312.812877-1-nylon.chen@sifive.com>
References: <20250422085312.812877-1-nylon.chen@sifive.com>
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


