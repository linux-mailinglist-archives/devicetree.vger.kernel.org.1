Return-Path: <devicetree+bounces-176460-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 85AC5AB438E
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 20:36:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D4D087A480B
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 18:34:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3E1E2980B3;
	Mon, 12 May 2025 18:32:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="oDT9UmQX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com [209.85.166.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79F31297B76
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 18:32:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747074747; cv=none; b=X5JmV1X7sbYS4FLSSDJc6Y52OquvdxtpM3wuBe8+cvIdHCEQPFR+Yb+S7YsOq02GKr1a++dtYt2M9WqZIfhkyZNCFhJoHbpQR7JVaqqLORilXqk8PwF2pVdDPZIPyVccPqVNVSFz8KpPu93w8UkAAnF3NQHFqK1E902I+djm1/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747074747; c=relaxed/simple;
	bh=KZJEwnPF2oP9YPtwzisRM5EnPhICPVWmlwFr/un/FRc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=brvd15IhP9NX6l3pvZ/i3f1MHn5Eq0TbeyfID8tRs5w7RLEQ61h0PqSblQcjJdg9eaf5C5oxDz9EuxFocTVSP0hE+kBdOyQX0z7rPczO24Y9fHdv8CoCinGnlMGDTc8TDdhRiutUw0TXgAs8gUScSpZjrixVHwk5SQr07O/KTAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=oDT9UmQX; arc=none smtp.client-ip=209.85.166.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f47.google.com with SMTP id ca18e2360f4ac-85e15dc801aso475201539f.2
        for <devicetree@vger.kernel.org>; Mon, 12 May 2025 11:32:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1747074744; x=1747679544; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EyAsDOHX0TzSNx8TRSfIb8QCj6vETa2EWwj7A6u+8bU=;
        b=oDT9UmQXV8dBmXK5S+NLUe6HI2cW15SYDuOUdyf7xEiSQrqM5aV5Z6+to25+RUHFjf
         j14aNFd64PHAYjzBfVLIF/MBOkWTFguQhgf4cnKF7cyX7CN58AwGkVpVcmYhSgmhmp1z
         UGnSNaZgyvWz5V1ItUyK7wsNhcu3RwVRxU9AyEl0nCUutftlxoZBtsBr12OjTOThtZyv
         n7c8XU3Ph3aPWVTh2XAgG+rexeF+TU1mBAkUCygYdOJX3z3oE9F/vbzNNM2C13oqT01h
         Co/HYWhVggZ/Uh6BjDjNrVbjxW5ln0kZaNisdNJyAvBYBKXswqM5Oi+br3a8/JZGJWPY
         1GdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747074744; x=1747679544;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EyAsDOHX0TzSNx8TRSfIb8QCj6vETa2EWwj7A6u+8bU=;
        b=JDDr41O32B2bmmAUxuy9iVf81JI+nK/pDjhCHQmq4w6G3h/PKtFMzlYbK+1btSv7Nd
         42sEDmH0wS92/2rt018S6UJQX0McTTHEKGwHPA6CiYykVBgCcMzKwa865aeUfQtvwS0/
         CbW3U36BQfsCIUd13DcYqTlXLzMMAEd9cKntxbMH27nsMJWc/gCpsggdtrzC3JnSwL7M
         Wcn4PgIO1V9ONs6T+YZnQJnwrEwF+lLSSuellvHO8Cyt1CosU5dceeC+JHnft4+v+4DJ
         Jz2vq7nmb7D+5joCOpyZpgzM65Obys4lEI8k0fiO/Toa8yVzvpec1IK6cV8HQanttgih
         46xg==
X-Forwarded-Encrypted: i=1; AJvYcCXHSXE7uo8YH4fBRR+Wl4izxSiUi1Ps82yaJxmbwPR3po62SSaJUGggbfNDf/qoGzUbGxKZiPJw8KpA@vger.kernel.org
X-Gm-Message-State: AOJu0YwFxV8D9IZ658WGbpPbdlkKN5uwzO+/BiOhyaddPPhA5n3AQ4Ca
	QcACudZkKfuMH/4na+bh64uN7NIrl2aD5oFon+xP02lMrC0FDUq98WxR+pR4LMI=
X-Gm-Gg: ASbGncsM85UfWHysxOizRBqPTTYpbnqnRrLxMlLpXM4/ADo/88rZ04flQcNzYakfPpr
	voMHrZtZLULWgdzAY8nbRD3Y/z5FN3qHaifh4DRFrPWg//1fu9M3jvxC3P8qSmxRMidZEN5c97w
	BMs+Ms99WBNl4PqvuffjUAmKdUgDc+iVYGbaFBHwUgVppVvYTMDqWBBqsUIYUl8mqN2mP7fDy2r
	zoHYK/rnXsdOJrZVaZqe8+xFe5+N7yhh8GlaJLGg62Dg1M+2ghA9D/7Z+bSZBlj71pEHmL4/KXl
	JVwSXMDS/emZHliJUQ7P5U8v1L/Eoh9DIt3NppQFS372xEHJ5SCs9YuUsRzJ4v8mH2tfXEw+hsx
	N+O5JkI4mAu5U+tOxWcOn9Vmm
X-Google-Smtp-Source: AGHT+IFp8y0gq7FRiygtuXYQxumD0qfklzDcQqew2MqXSZ32JaN7tFBN5F+L1BBzUbVI3IjffHBXLA==
X-Received: by 2002:a05:6e02:3784:b0:3d8:1dc7:ca7a with SMTP id e9e14a558f8ab-3da7e1e1acbmr157948855ab.5.1747074744563;
        Mon, 12 May 2025 11:32:24 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4fa22496e9fsm1740333173.11.2025.05.12.11.32.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 May 2025 11:32:24 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	p.zabel@pengutronix.de,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	dlan@gentoo.org
Cc: heylenay@4d2.org,
	inochiama@outlook.com,
	guodong@riscstar.com,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v9 6/6] riscv: dts: spacemit: add reset support for the K1 SoC
Date: Mon, 12 May 2025 13:32:11 -0500
Message-ID: <20250512183212.3465963-7-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250512183212.3465963-1-elder@riscstar.com>
References: <20250512183212.3465963-1-elder@riscstar.com>
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
index c0f8c5fca975d..de403bda2b878 100644
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
 		syscon_apbc: system-controller@d4015000 {
 			compatible = "spacemit,k1-syscon-apbc";
 			reg = <0x0 0xd4015000 0x0 0x1000>;
@@ -553,6 +565,12 @@ clint: timer@e4000000 {
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


