Return-Path: <devicetree+bounces-166892-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B65ECA88C1C
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 21:18:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BDC36164FDD
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 19:18:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2B8B2918D4;
	Mon, 14 Apr 2025 19:17:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="XGvpJDGl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f181.google.com (mail-il1-f181.google.com [209.85.166.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E790C28B518
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 19:17:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744658252; cv=none; b=W70Beon3g+ukmK4FH/RpGO+j9GPcPiLwMT5ir6o02tr/AMqVDtFCe4UYcY3lEbWaczj0CtUiJxfkOVOvvwBUq44CN5+oTnMx46EMnChP5b6CSm3gFKSeDaaHMIck6y4VgLdS0BwKGMO4AQg3LeA/rpSCxTA8x5RMgy7ntVapesU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744658252; c=relaxed/simple;
	bh=2wkF3pIspsBICKC2HLHsuT/AUDwllqmRkvg4pojS36g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qLrXD3dpRw2W3yGdpF7wUeKUcLJ2VbKOFPVQvKcLH2EDKsLJ2YwPweIa4yEKWhrTVpoGtRQ3A9SRgXJJ7wOUY9UF/Q2tJ2ntaHbCMX/U/x/nS3Jn7vA9IVhsewkjhP8DxuU6M2g2QX66nAhAAgKq1WKZPob6ncQHLnlt074Nm0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=XGvpJDGl; arc=none smtp.client-ip=209.85.166.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f181.google.com with SMTP id e9e14a558f8ab-3d45503af24so44077655ab.2
        for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 12:17:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744658250; x=1745263050; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eoPF+bCrpMBavT+34w02cPZ0ktfHw7A1w/wlErW18/c=;
        b=XGvpJDGlUOuOcwFU6L0ajuTRJz3pbX13JRfyZgt5xQiPGERRE2dO2mldeUGmP1h8H/
         HEP/fSUu562TBf/gqJN21KMBKREzeVDozKgJNGbAd+rEaiVd02/Qg93HpcH8T7pP9dQs
         fq3jkEwAh7p93NPkyhTp58fxk+lm7XYp3uKZB25f8AYltN55X4qY76hhrm2xgXmDU6gE
         VuxapUg86L+VDodfqz+YLEw+3oUTci5dK7wM/CCFf/LCxSfeq7pFu+lmgXbRiDjBE5++
         xOreBNP1YHQ05Gao8wBt6ga1LcZoHq9hh8MMyvnAGZjYZC4eQn5OUFjqUFxZl3AmIVXA
         16/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744658250; x=1745263050;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eoPF+bCrpMBavT+34w02cPZ0ktfHw7A1w/wlErW18/c=;
        b=SQ0kAeCNwO5UUKb/7Zk5xalb4zwlEoe5+qxCYGYInb/okximtwCXhxO+4G5OVW0/o3
         pdyL6dWGktUaQ36fuP21XUhYh0vsk+UQnr26p3DvYa1gp87H5pvSq0E4ltnqgjKUkgXc
         zGk5ycv32K6uD0w51vtvbObAITcNvLdLu3X+QX4xtzDQtwlG3BHuHlAv/4PzFoFU6IoY
         6f02tL+5YycN0Xu3gWDs46Sn5D6QaTW7KrhSJg3KNrF/SL0UuLzx9o0wyOj/wRBbQukB
         GsPLYmp0Dpj+7/uMjUO7Gne7C4n8/LiUjZhlRS2oA+vOraa7/0p1fbz8Ue3om4L1eszf
         i9mQ==
X-Forwarded-Encrypted: i=1; AJvYcCViPcgtzLJNhtqTnBitE7562Tai0bY1ajnCmnvZUqiwCtm5CgGHL3CgkiomAS900KRORMHRTZVBPBkO@vger.kernel.org
X-Gm-Message-State: AOJu0Ywgj3/PYvUXandZ7xs6mrZPH2zRsfk2Q0jOvz4n+NS5tjbnNKrW
	DR8AHKhkCCoeI447ydk6oI+qSAY4vKNY6MPCPtPB9cbT/7wYM/BKpEEiwN5DeLw=
X-Gm-Gg: ASbGnctGPRQh4WezRsUcBrwQQWLXSz5aH8wP+rAjXJr0TSiFjIwC+NeIKG0ybI243Jg
	j1lxWXdJOFiGceQDyMhA1Ya1mTOq0cfoUEQRIA1jBG0foRFs0hp208MjzZqxR4qfOwPXf9ucWZ8
	5Ju4k23hIef5TRRL7OTwQi0W1Reb8WjtfRFt0RXTcw1dCaW+0Khwm1UGxgL2SuSofZVnA38z9yc
	ha0pENa5u61g0UgZZF1v0+awMsCmTwZ/OhzxCLJH7t5Jfe7BV5Ml+Z2UFVfizMH7NuC2gIe76T2
	MZQQ+5xUq3x3TgLlphJdaT0oj3e7GjtosL++SNvKHcGqf5XttCu4UK5CBwq5F6kcmMbKbpXydgZ
	ar1cs4dDl2HlUsQ==
X-Google-Smtp-Source: AGHT+IEU6Rd4B2MJE8zIB8lmAeawMSoY6sk0rn3tiUuI43W7gRnclnskoSuyT6dVIrc85c9v5hVyDg==
X-Received: by 2002:a05:6e02:304a:b0:3d4:70ab:f96f with SMTP id e9e14a558f8ab-3d7ec20237fmr158153915ab.8.1744658249848;
        Mon, 14 Apr 2025 12:17:29 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4f505e026d1sm2715662173.94.2025.04.14.12.17.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Apr 2025 12:17:29 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org
Cc: p.zabel@pengutronix.de,
	dlan@gentoo.org,
	heylenay@4d2.org,
	guodong@riscstar.com,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	spacemit@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 7/7] riscv: dts: spacemit: add reset support for the K1 SoC
Date: Mon, 14 Apr 2025 14:17:14 -0500
Message-ID: <20250414191715.2264758-8-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250414191715.2264758-1-elder@riscstar.com>
References: <20250414191715.2264758-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Define syscon nodes for the RCPU, RCPU2, and APBC2 SpacemiT CCUS, which
currently support resets but not clocks in the SpacemiT K1.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
 arch/riscv/boot/dts/spacemit/k1.dtsi | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1.dtsi b/arch/riscv/boot/dts/spacemit/k1.dtsi
index 584f0dbc60f5b..491ab891788b8 100644
--- a/arch/riscv/boot/dts/spacemit/k1.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k1.dtsi
@@ -346,6 +346,18 @@ soc {
 		dma-noncoherent;
 		ranges;
 
+		syscon_rcpu: system-controller@c0880000 {
+			compatible = "spacemit,k1-syscon-rcpu";
+			reg = <0x0 0xc0880000 0x0 0x2048>;
+			#reset-cells = <1>;
+		};
+
+		syscon_rcpu2: system-controller@c0888000 {
+			compatible = "spacemit,k1-syscon-rcpu2";
+			reg = <0x0 0xc0888000 0x0 0x28>;
+			#reset-cells = <1>;
+		};
+
 		syscon_apbc: system-control@d4015000 {
 			compatible = "spacemit,k1-syscon-apbc";
 			reg = <0x0 0xd4015000 0x0 0x1000>;
@@ -514,6 +526,12 @@ clint: timer@e4000000 {
 					      <&cpu7_intc 3>, <&cpu7_intc 7>;
 		};
 
+		syscon_apbc2: system-controller@f0610000 {
+			compatible = "spacemit,k1-syscon-apbc2";
+			reg = <0x0 0xf0610000 0x0 0x20>;
+			#reset-cells = <1>;
+		};
+
 		sec_uart1: serial@f0612000 {
 			compatible = "spacemit,k1-uart", "intel,xscale-uart";
 			reg = <0x0 0xf0612000 0x0 0x100>;
-- 
2.45.2


