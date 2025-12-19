Return-Path: <devicetree+bounces-248094-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DC8B8CCED00
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 08:43:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5C9EC30052CC
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 07:43:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 452F62DCF72;
	Fri, 19 Dec 2025 07:42:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="F9HstaxN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5F3F2D6621
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 07:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766130175; cv=none; b=GIwC1bLCpbbLZMkik+bs6Mph2MerENfi1w+OEU8AN35jbPEukvIJsu3eRPHK9mPhLS1ea2Rfuv0gNg1UpRqAv9K4zKDgMBoR9lFAlepYgd7Ime1dNa7e6vW1ZroH2fyUqt5TqkCsa/tWYUQt+PYzloOcUMo+LWIy4Bhkzo4748g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766130175; c=relaxed/simple;
	bh=G72T+WZDY27E2UhxRAm4MPRhTxWqCOs6OHY4x2Qdsqw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mho6TOSxShTppb37l6bLlUg9SsebpCCZsPbjNtdEv7bwZo2oH1X8xjly/h9TwpmsDlaICcTKfzzGRtVjDpxQUYUCumrNasAZiSpZrKvCeQ5yrHC8+rl4QVOuY16g0QvOtgtpoYKhX2Ho/LX0crrOpqZB9uo2L69D7X4YoIf1dDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=F9HstaxN; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-7f1243792f2so1039872b3a.1
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 23:42:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766130173; x=1766734973; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GGEKEdhZlzAvNRxCMFTpppZuD5Cxzoe0sAFMX5gPBGU=;
        b=F9HstaxNsayJBFVe84kWAqJWyBRcCfMFHPwi6OLyCeWv0YICuYBuMtmmpl+6q9jY7W
         PzkO9WzJJuV9r3ctKQQfPuhQfDxiGJv3r4PWoKj/mQhbNwSbh7jG+B9Orny9EsQHqURi
         yfEXpI8R4sEQGkT0waVd4v2HpYmYoRmH6AlClxl9tgNL9YSGx00Hd8kRYaO7uotRBWjY
         0SNVNU895P13Bm1iU4XsK8PyTfMHwIWoyhx3yNowdCuyMzoSiqDEFij8atvXHl2rlPp1
         N6cExtSTdaRp24L2aF8qpqhdzmYBpsTX/Xz7HXLlY3lj6/sgGZJllx1XaswFqL2SEgdA
         oxRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766130173; x=1766734973;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GGEKEdhZlzAvNRxCMFTpppZuD5Cxzoe0sAFMX5gPBGU=;
        b=Uzib51iMueGXoi+p76k56hm4d1eZdzhNnsUeI6B4OlBuRcsKCnH78qybZMtj4/LKr6
         u1QyeNOX9PVu7bIrXSYRK/61O3lOwHNrZ3ZXoJuFS4DKuEYzZZ72MccRskR1EDSYZRal
         /sD5ACiP5agnWnkHx2/d9gByjmpIE18UDZG5nu5MpirttP1r/9+JO6xhLaeCwaVsgla2
         d2A9ADVN+ms73ZPLfqRP+M3tKwHV8A2I77T4oKrGqlaixMQoOcv8yoVyrQX+z93QmSMo
         t4Hjeu8NxrTodO/iskLOKs0tbSfWP5k/7h+N8i7UICQfDPtA3gP8XzUNHoBD2DudDg0V
         q1jA==
X-Forwarded-Encrypted: i=1; AJvYcCUXwjlvebBzXUrIDmdvJrGN/6gk/3cjzN2bl8TCeMf7I65AN9/R2TjTB3K9e8oy64EDYWQ5Q0tzsNrI@vger.kernel.org
X-Gm-Message-State: AOJu0Yxh7xqB/ow7+9K+jxfrupMlrwvFSZ7TTPmMAgt+MRkJ9a1L1kLe
	fV0cJJZIvqYlcjrhC9TWYsMcAT8wyIjlcM2lNb7mVylvKIwuS1i1W8LR
X-Gm-Gg: AY/fxX5VZwjMYYPdplof002FHVKoS96kezoVoMJiSNkgB/DyUc/6Vu0YbkvKbGu4Fd5
	T0AltYEDoRHJ9PkeR4JhuMbCS1U5sf5gY6ZD44JywDNOQgmJangGCO/PMDUkS/hR2riRBBkmxp+
	9afv4DzX3NekTSIS+VFJ7ySabYwiLRn8ml7wHb/CCSqNW0YP6OLUzYVF835UYUsMWt6zGJew2n+
	7X+iq89O1FNDyuDwsfXXIjxouB5AuF7xSEL7OxcrwXOZQekm6iaPH3VO0IF7EskenWihtFGJAPn
	15qBd5sGT7bIanxZd4Wnj+k92Latib8Tu9JZi1t8Gde/J6q/Qfg06B6dfbdrjlTpgUdmJdgoPG2
	qtj7pRmtBPMh2TDgR8Hqiiovd/gDXQJfa4MnwDuoRJe62lNJDoEox
X-Google-Smtp-Source: AGHT+IEOHBbwLfzOsV5D+3VGSzAKq+pDw6xwaXIZis6jWHwmpPR8IDpm4tyhNORstF0bxJlGHlff0w==
X-Received: by 2002:a05:6a00:600e:b0:7e8:43f5:bd39 with SMTP id d2e1a72fcca58-7ff66d5fca3mr1889071b3a.37.1766130172539;
        Thu, 18 Dec 2025 23:42:52 -0800 (PST)
Received: from localhost ([221.192.179.86])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7e493123sm1490499b3a.50.2025.12.18.23.42.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 23:42:52 -0800 (PST)
From: Encrow Thorne <jyc0019@gmail.com>
Date: Fri, 19 Dec 2025 15:42:22 +0800
Subject: [PATCH v2 3/3] riscv: dts: spacemit: add reset property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251219-i2c-reset-v2-3-ad201a602e74@gmail.com>
References: <20251219-i2c-reset-v2-0-ad201a602e74@gmail.com>
In-Reply-To: <20251219-i2c-reset-v2-0-ad201a602e74@gmail.com>
To: Troy Mitchell <troy.mitchell@linux.spacemit.com>, 
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>
Cc: Troy Mitchell <troymitchell988@gmail.com>, 
 Guodong Xu <guodong@riscstar.com>, linux-i2c@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Encrow Thorne <jyc0019@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766130147; l=2324;
 i=jyc0019@gmail.com; s=20251009; h=from:subject:message-id;
 bh=G72T+WZDY27E2UhxRAm4MPRhTxWqCOs6OHY4x2Qdsqw=;
 b=HD0df5Haj/AFbxGbKco41n1PvKa6CLMqswLAGzmIzGdRjAEs0GfnJLJj92IFCCKm3Vernga+E
 iBGpVisLTtKBV2nM7Bgx3FZe9xadiIx0GzOForjakC0eN69GVHirVw5
X-Developer-Key: i=jyc0019@gmail.com; a=ed25519;
 pk=nnjLv04DUE0FXih6IcJUOjWFTEoo4xYQOu7m5RRHvZ4=

Add resets property to K1 I2C node.
---
 arch/riscv/boot/dts/spacemit/k1.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1.dtsi b/arch/riscv/boot/dts/spacemit/k1.dtsi
index 7818ca4979b6..085987643638 100644
--- a/arch/riscv/boot/dts/spacemit/k1.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k1.dtsi
@@ -367,6 +367,7 @@ i2c0: i2c@d4010800 {
 				 <&syscon_apbc CLK_TWSI0_BUS>;
 			clock-names = "func", "bus";
 			clock-frequency = <400000>;
+			resets = <&syscon_apbc RESET_TWSI0>;
 			interrupts = <36>;
 			status = "disabled";
 		};
@@ -380,6 +381,7 @@ i2c1: i2c@d4011000 {
 				 <&syscon_apbc CLK_TWSI1_BUS>;
 			clock-names = "func", "bus";
 			clock-frequency = <400000>;
+			resets = <&syscon_apbc RESET_TWSI1>;
 			interrupts = <37>;
 			status = "disabled";
 		};
@@ -393,6 +395,7 @@ i2c2: i2c@d4012000 {
 				 <&syscon_apbc CLK_TWSI2_BUS>;
 			clock-names = "func", "bus";
 			clock-frequency = <400000>;
+			resets = <&syscon_apbc RESET_TWSI2>;
 			interrupts = <38>;
 			status = "disabled";
 		};
@@ -406,6 +409,7 @@ i2c4: i2c@d4012800 {
 				 <&syscon_apbc CLK_TWSI4_BUS>;
 			clock-names = "func", "bus";
 			clock-frequency = <400000>;
+			resets = <&syscon_apbc RESET_TWSI4>;
 			interrupts = <40>;
 			status = "disabled";
 		};
@@ -419,6 +423,7 @@ i2c5: i2c@d4013800 {
 				 <&syscon_apbc CLK_TWSI5_BUS>;
 			clock-names = "func", "bus";
 			clock-frequency = <400000>;
+			resets = <&syscon_apbc RESET_TWSI5>;
 			interrupts = <41>;
 			status = "disabled";
 		};
@@ -443,6 +448,7 @@ i2c6: i2c@d4018800 {
 				 <&syscon_apbc CLK_TWSI6_BUS>;
 			clock-names = "func", "bus";
 			clock-frequency = <400000>;
+			resets = <&syscon_apbc RESET_TWSI6>;
 			interrupts = <70>;
 			status = "disabled";
 		};
@@ -546,6 +552,7 @@ i2c7: i2c@d401d000 {
 				 <&syscon_apbc CLK_TWSI7_BUS>;
 			clock-names = "func", "bus";
 			clock-frequency = <400000>;
+			resets = <&syscon_apbc RESET_TWSI7>;
 			interrupts = <18>;
 			status = "disabled";
 		};
@@ -559,6 +566,7 @@ i2c8: i2c@d401d800 {
 				 <&syscon_apbc CLK_TWSI8_BUS>;
 			clock-names = "func", "bus";
 			clock-frequency = <400000>;
+			resets = <&syscon_apbc RESET_TWSI8>;
 			interrupts = <19>;
 			status = "disabled";
 		};

-- 
2.25.1


