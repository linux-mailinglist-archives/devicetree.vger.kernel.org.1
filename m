Return-Path: <devicetree+bounces-175547-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C40BAAB121B
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 13:22:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 40D931C237B7
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 11:22:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49A3028FABC;
	Fri,  9 May 2025 11:21:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="qr9zk9Tm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8845828FAA8
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 11:20:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746789660; cv=none; b=V/i24KckhauHsfC68gLA1cDRatJgEckh3idze/20s4nYEb/CN5HOiCaQFCNr1TLdhOLDQ4b9htvpmAmpMqaGRKo+KQzQ+NlWftEm+YN6xIsY4/QNsmh7rKUN8r+vCSmh9CQjTGLS2tZmtlDTyFgquLvzon/7RFE2gFeKcnVeZWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746789660; c=relaxed/simple;
	bh=o+DTlUShzMqTWdpVptHXPZF7T6Hpe95l3FZm/2enEAw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jSoh5kQFiv4+bn/Njr9x8+hWPu8R6GnASVuC0QmmJbPM8YttpcKa+SvWAZKk4C8/92r5DTO2CkHrVmc96mj1+gK24e0yHMVxfikDZdVRuifZtCmV0eyG7gOUKC0mJQaxDuRSHeCGUXcJasMLscbml6pLYdDIX/+fuqXXDpFpK4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=qr9zk9Tm; arc=none smtp.client-ip=209.85.167.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-oi1-f170.google.com with SMTP id 5614622812f47-3f6a92f234dso1589657b6e.3
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 04:20:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1746789657; x=1747394457; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f4O20IXLpg8jEm9xUHHnlctypzKfsB1ZRP9Xc0/of3c=;
        b=qr9zk9TmzFk8u5MrPNvNPZzy3U+PAr26qcHdBeV9ev3ayi5VBpR24n1oO2oUYpWFii
         iyRtw2IOGA1GE4h2XyKASz/PFMqDDKwGhkLrecOmPBRqePnwb2bH1sTj0oEfLyjkghOj
         WjoPI51jH2V09069nGrpOiImLsMmKOwdBnSt9QKBpqkCeIB9UfE7iL5e76Qjw1hIBOqL
         g8VWDORsilCuUnMo4PYhv0x0qUu76nUGr4+Z9Gfc38+YnEffAnK0pOjnrU9WjU0JTJrh
         p0iUhiK5RZwwAe9LuHBaNGU3SaJGGBGZOd3S5PphSP5t/L4koTDx8z8gZpkzoiWR/LOR
         z3lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746789657; x=1747394457;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f4O20IXLpg8jEm9xUHHnlctypzKfsB1ZRP9Xc0/of3c=;
        b=PzqDNYt4jMj0ZQ49xayv8E84xpetGjMMg41FcXOrldvpt/ViNfXA140Sb8w/5RHvB/
         pBGtfXh6wBzgmlEPk7PI/uJT/usLip52c4FUkUaicVdSFNB/6mZVc+kpIuY/3qLFzOfZ
         MuRvuTrPnV4sQKpTfbhS0u26VykQe8C6VcAe19+0r7/JSVUqdCxVmODchJT8/fYVDxxh
         03i6zmNN2Ietafv5XmhZDmCMM0t3xGUN1HALUnsO71Grcv869BqrMKqpMqSDOGLvwYDJ
         lsXw0db8RdeMCf6WVDyrOw7zYBmEiz7lzK16Aoc/6PiDYaI6ooXrYUqp7khs9Puo0LSZ
         j7EA==
X-Forwarded-Encrypted: i=1; AJvYcCVrcsSbGDS/FirbndQvdrEkfeGXhClSJzNQJw5ENjh0hE8w4dMKNaxv1yTKCyNJnb09tVFGRn1acnYh@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8ycws0ABE3t5dw79DOdJAbAeeBUws6zDywzPi32gCDA5zGnOg
	geYGHPtHMp+8QzTkQiIZQ7HPyu/HCt5GjYfa+ezG/ad9NbduJgMyP/jmefb0jtWXLwja84rGjPe
	v
X-Gm-Gg: ASbGncsjA3QhOGfYybvyxkBVShtByeSUfvvWYvVi5jhwJn1Tx8eU7mebqzQ6Ott8xMH
	QKgMlOJDU3zKslT3hhyjEqNvaiR9miUo+TzDRNRxi/pfEYhX/XhCeUx4NOV6HqzrC80gfJVPykA
	RAWq/9oJKUP7AzEgEsNCiRuPZRO0c1V3AB2QMaJ7OzC3KEt1rZGsugh1sOiPeD0qh9vZo9/VbJe
	kXWAVjkBzkHO86twoWuC+WLOEUkVnJa47p8KQpe2ge4BMOXZ+l8yhV0vp8bkiUSiLeJggc6gLCi
	P3veqJdzeFnFltICXC4VyGdJhU/3xf/CPCkA7sdLoXrbEshuZmvJGk6czw/ICr/G2qTIaq/yAxC
	zQwGDZNG/+2K2cw==
X-Google-Smtp-Source: AGHT+IHhcPDh8pSsBNqyKD2nWRDYn4h+n+ZvD9Pi5ASi8e+tMvfh3KEcYvhc33cDnA1c1ksabwra3A==
X-Received: by 2002:a05:6e02:198e:b0:3d3:f4fc:a291 with SMTP id e9e14a558f8ab-3da7e21748bmr40779945ab.19.1746789647038;
        Fri, 09 May 2025 04:20:47 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-3da7e10549fsm5136325ab.23.2025.05.09.04.20.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 May 2025 04:20:46 -0700 (PDT)
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
Subject: [PATCH v8 6/6] riscv: dts: spacemit: add reset support for the K1 SoC
Date: Fri,  9 May 2025 06:20:31 -0500
Message-ID: <20250509112032.2980811-7-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250509112032.2980811-1-elder@riscstar.com>
References: <20250509112032.2980811-1-elder@riscstar.com>
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
index 6eec6328c26fe..f4afb35dc6bc9 100644
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


