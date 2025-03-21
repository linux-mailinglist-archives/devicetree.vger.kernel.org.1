Return-Path: <devicetree+bounces-159739-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BD505A6BE32
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 16:20:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8A6D77A871C
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 15:18:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B6D722D4D4;
	Fri, 21 Mar 2025 15:18:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="Gd15sIhX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com [209.85.166.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DE7222C34A
	for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 15:18:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742570326; cv=none; b=GjszC1LL0IaJJTVlQNoHhlfNPpDzL6I1SKj3Ssx8bEgitSec1U7/Xu0O/nWv6Wxohg+rZlT1E181q7nIk25VVk8YPvJS0/u4eaAxDSj2deLqAfqD/cctMeJTQt2m8zXShXHhx4ACPmERZRiQXMecrAfaSi5fZbmOYVkJOiFD/Zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742570326; c=relaxed/simple;
	bh=KwRmEv3W3EtqBDLfbMtwfsqs1joXJAuCfqCxq5Hb990=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=C1VYeW/8YY4txhu9K9vpCazJoBHdQDozkjjpu3hyrHQDMvHklbeeh1g+AFmL1bxeUvSSTYzoPx8xlaE/07KBYdzFs/c+4QFc5KY0sQagMCrhyp7n5KNAv1ca2K2zVPxnuMfSAtg8wGS6Eb7uTVaj7knovLZ/z2qqB6H93/Imwpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=Gd15sIhX; arc=none smtp.client-ip=209.85.166.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f42.google.com with SMTP id ca18e2360f4ac-85d9a87660fso194065139f.1
        for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 08:18:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1742570324; x=1743175124; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nY3+cr8LwPrnwPUbr8ZQVdT4sW06Crewhjj4AmYBWuU=;
        b=Gd15sIhX4tO0We2cOgrcjjCQILRs9oNjnwwr8VcMiPrkYPlUQudRVvzHJ+tlLx0cxh
         6w8O9fbHHMbGhofKrkj33y4bbMeSIyY+HPEKUp6QLr+QElgcFxcqRnywXxdJciMO1Lyc
         98HfIqnZ8GP+wfpMAPiwJOs+3MnmysBWGGHaYMFDijrE9FJhbb7hNTW9SfB+2TGNmIwn
         LB3k3YA2OOSqdvX+a92wPeTSCC6FMIiBkZXdmWVSyMkcqiCl5sHg/KFfKsl0PDNuAwN1
         k+xMazFE756CJ+fiC80VHYQRtHGCCQg00n75lX9zKLAPnWh7zBsQRT6OsGHnT9Fytlrk
         Z/cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742570324; x=1743175124;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nY3+cr8LwPrnwPUbr8ZQVdT4sW06Crewhjj4AmYBWuU=;
        b=JMPUiJYDRVmivJmCSLf+SwQiYVfxxzF1UwOuN83q/c/YYKkQO7oOI+fuLHo5aKCzyA
         Pj91MEI1H06gPSffWrU3/Nmm13PNxPd52/jbKnoKLH9ZniekATsXT3JSSqb+/I2qr8u7
         71PfztehHYT0f7XQChdYeRU2br7y9arp9POEnOd4Ub2mG8AcUBMI2dy+ZgDpbNwm22mQ
         tGo1grBjZ/IpT5Kn84MeoDv4mj05tOSv2cypCgVX/Xaei7A2Scz0z9/Hj3TJZTmi2SkV
         foOOEa45DbzaZHFtqTKZVZ4mX8Dm7gQdAtsqF2Ia+rUZn1qUhts/yr+aVENWN7oFbqls
         Yu9g==
X-Forwarded-Encrypted: i=1; AJvYcCWylQ+auw4YdFpqv3T9ATOGp4dT3sg7/UFUfWZk96zcXBBVbTTMqzhD+HIS2KHZzh3oEUgYDuDLf0vn@vger.kernel.org
X-Gm-Message-State: AOJu0YzGxcsl0oprtdNV7UltIPUrTPXrU5MS7nLsUwaU+5f4r8Ipruxh
	xkD3jC8CyQseEGTsaTR/eYs5eyii6onl5Q3SWsMfgU4RzQt728XDQRbUQRmD2vQ=
X-Gm-Gg: ASbGncvbrDzYVJ186SzKZIlkUAbE6/VJUjf+v3Tzu5kWGEaxy1TZ2AKOSpVyKRRr5/E
	vTODsoKyIsJDqvGVUn8oPGQh69MbwCz5HwWONfVK4dOSJlVjyk8SbLalKfv/y2qk2iEDFTaQl4m
	kS6gGA0U5OfaJ0vPF4OK7gOYTGaoAAKSc5ubAQVCyGFZFhcwidzvNHv4yr1rVYI/jsn2bLtf83Z
	QOvbUY3zkrUfbkGXEk/XCx+1a1YXa0RXczy+M634JZD+qfblSVsmC8c2x+BLHPMS1I6jB/ZQIrs
	3565qyyc340JtHkJfF9iDxlsDCJGD4yxKE2GWyAtxDh9NI8cg+hkbeRKvIjp2kMXjITdbjrXyw+
	QLQn3o6El7RhKoXGvRRLX6thc
X-Google-Smtp-Source: AGHT+IGguI55dL71gHl0tK+hT91rVomg7KnVgw+/XoVslENUEzuEPRHi4KDVzYnSZRrU4EihCkbgug==
X-Received: by 2002:a05:6602:7512:b0:85b:3c49:8825 with SMTP id ca18e2360f4ac-85e2ca62dd3mr380237239f.4.1742570324050;
        Fri, 21 Mar 2025 08:18:44 -0700 (PDT)
Received: from zoltan.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4f2cbdd0a21sm475553173.41.2025.03.21.08.18.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Mar 2025 08:18:43 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: p.zabel@pengutronix.de,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	dlan@gentoo.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
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
Subject: [PATCH RESEND 7/7] riscv: dts: spacemit: add reset support for the K1 SoC
Date: Fri, 21 Mar 2025 10:18:30 -0500
Message-ID: <20250321151831.623575-8-elder@riscstar.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250321151831.623575-1-elder@riscstar.com>
References: <20250321151831.623575-1-elder@riscstar.com>
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
index 09a9100986b19..f86d1b58c6d35 100644
--- a/arch/riscv/boot/dts/spacemit/k1.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k1.dtsi
@@ -350,6 +350,18 @@ soc {
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
@@ -518,6 +530,12 @@ clint: timer@e4000000 {
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
2.43.0


