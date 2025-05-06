Return-Path: <devicetree+bounces-174344-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B46DDAACE76
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 21:57:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BD80B189C567
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 19:57:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8F7F20E703;
	Tue,  6 May 2025 19:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZtT10z7I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00A2420F081
	for <devicetree@vger.kernel.org>; Tue,  6 May 2025 19:57:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746561428; cv=none; b=p0NlUM1BOBcQuvRjguqYX65klDr7bfZNEashbnYqlDOBXsVI5J6N1J64JO6y5ibABa5i2mnLmgzA4vd5uPf12vIzoLUgaH23BLwz66NhinTJe3fxke2LEEkBxOrlM04Gwb23aJqA+/lb7KjGKgSMEytcziDB+36LfgByiA9n1mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746561428; c=relaxed/simple;
	bh=vUvfTx3x+1eAiM3gKEP9sFrTmU/Xt0RZ0aFkMTXhiGg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Amt7P6UXGv9RDZW4PYmzGgnDQfgGB8v5m06M3vj0D5X6M3ieRm7XLgaOedqMNAvtYbyiUF8wg4bPQQBf3Aw5TXK+t9eEe4iDb3HPeM406yYx+GYRRNzpcmnojpjPRBfrBcYGTw9uMEdTA14vHiR8XugtGVf+Sk7XZSJoQIKQ4UI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZtT10z7I; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-39c0dfba946so5066757f8f.3
        for <devicetree@vger.kernel.org>; Tue, 06 May 2025 12:57:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746561425; x=1747166225; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=y3vbxhBSLqLe3XjcC4EERoFFbogworhDxS7+05BBfYk=;
        b=ZtT10z7Irlmb1Ciy3pHZXWiwE85zlSRqVNEsR9i5C+w0YtG0DgtxhaM65PUe6vc6sB
         6S8TOz0mHWtMTxxaPlx3vHJ4ygfxct4A5ObL/M+weuLtLhjApi6fMnEvFb9D9hUyZ64d
         hMn/BGCyilqYujlczAZ6IxByVTpW4SSSMGfBizrl4P00x9rkFSxCpJW5cwCN6+lJWZVi
         YXId4RuEzw+6erwX/5EyQ/3fnoVZwcs23wIKDuZdn/DRXjCqS7AQPqfvKw5B7l7RIOTq
         Er5BkJf3YmIFz5S2r+3hpz9cNUlnHLBFGgJhs2qXz/DpR5lgw/96392d93/xf9RWcPmT
         JJZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746561425; x=1747166225;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y3vbxhBSLqLe3XjcC4EERoFFbogworhDxS7+05BBfYk=;
        b=meYqhj56PSgh4gHYqMu0+pOS6+xhBU1V5+lFF7yQ6PuY9r2FsJztrc4sk2We0M1k64
         zaG6vJLI0U2ZDm7bVjWgt8D/2yjeJMaIwLqxv5dEYjwdLUmxihzNtSqI3F0mzvzrkSIJ
         7qAZ4K4O5nXgQZomr+SPjVlQX5bUeTIYh4N/s9Cb4GozXsyN182gtg6Xlmp39laJWn4l
         o9KSpBrnojshcPr1P2Pq47nH8DVDsfO/oNEc/jZRT2B50ZNzrJg3neTUZ3230fcEVl73
         3KZdywR6+FBoyud63vyJAg2YE4enn77qOWAK2V4F9aVAV2AilWGKLZ1YvuBe42ngWZAj
         HCJw==
X-Forwarded-Encrypted: i=1; AJvYcCU9iv/DwiwrgmUHpW1B3AWcfDWR7u3bwoalxrdjBEvlP/4oqXcR7psq9D43WogiiFe7pKiQYc/KkVWf@vger.kernel.org
X-Gm-Message-State: AOJu0YyeSDHCYoF7pGlzJ/o47cMz7xXCGipMXiC52NWYl0EITQhMZm2r
	Ay7+KavyT0cWShAeLiPKgclrorGWk0EadhjtbaxmlqZVuQx4PiPt
X-Gm-Gg: ASbGncudqn5Ogi5SjM9Mea9zclzqmiFqHlbH67pdRmItC6gJhfmtorp0wiGMWkqEt0o
	o/cwQG1/+luk64TU2UuLBR5TC0mqzUBSvAcLRzfw7KDLWdYh5Wxb/eI/ttKqIVBBLtKeHalOan5
	bSL16iycflKx4vYHk/F4DLUNYirhhN6stEKncjaB4IJwFIzI1RF02SdPSH/Ii1Ic3q1aLjwXDZF
	sIPXjsNZ9GSK5UKd643JqBwiR2GhYxGJjcNTLMJVNR7vRrr9/iIHZklFMYD6M21mH0kQn86mH/n
	qaDl75XjtWYquAEZmzpI9MXpOVVHhB0NbKTmMZja7WnMZ0+gShV5MR8ZVE1O0zDFshPOHJlUFPh
	16Iwy6yevMdLQ8ucumfABx7/pHdj2ggJxm1R2XvuEcSrNdk5g424S5sCpKHKjenHFK6TisXx1oS
	c=
X-Google-Smtp-Source: AGHT+IG1PEHQDubohmsoatevOOLhijpxe1NphokuiP/Nu7Ncl0qkD97C4xKqr2gLqznzH6itSftAng==
X-Received: by 2002:a05:6000:2dc3:b0:3a0:7a5d:bc02 with SMTP id ffacd0b85a97d-3a0b49ea159mr641969f8f.7.1746561424910;
        Tue, 06 May 2025 12:57:04 -0700 (PDT)
Received: from cypher.home.roving-it.com (2.c.4.1.7.3.6.4.2.a.a.3.0.f.c.2.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681:2cf0:3aa2:4637:14c2])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3a0b3d0a77asm885636f8f.56.2025.05.06.12.57.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 May 2025 12:57:04 -0700 (PDT)
From: Peter Robinson <pbrobinson@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: Add vcc-supply to SPI flash on rk3566-rock3c
Date: Tue,  6 May 2025 20:56:55 +0100
Message-ID: <20250506195702.593044-1-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

As described in the radxa_rock_3c_v1400_schematic.pdf, the SPI Flash's
VCC connector is connected to VCCIO_FLASH and according to the
that same schematic, that belongs to the VCC_1V8 power source.

This fixes the following warning:

  spi-nor spi4.0: supply vcc not found, using dummy regulator

Fixes: ee219017ddb5 ("arm64: dts: rockchip: Add Radxa ROCK 3C")
Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts b/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
index 53e71528e4c4c..6224d72813e59 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
@@ -636,6 +636,7 @@ flash@0 {
 		spi-max-frequency = <104000000>;
 		spi-rx-bus-width = <4>;
 		spi-tx-bus-width = <1>;
+		vcc-supply = <&vcc_1v8>;
 	};
 };
 
-- 
2.49.0


