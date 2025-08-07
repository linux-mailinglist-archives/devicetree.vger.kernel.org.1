Return-Path: <devicetree+bounces-202521-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D916B1DD70
	for <lists+devicetree@lfdr.de>; Thu,  7 Aug 2025 21:19:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DB9BA3BDBE7
	for <lists+devicetree@lfdr.de>; Thu,  7 Aug 2025 19:19:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4549B21E091;
	Thu,  7 Aug 2025 19:19:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=hammernet-be.20230601.gappssmtp.com header.i=@hammernet-be.20230601.gappssmtp.com header.b="V3vtkqtN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00EC821D011
	for <devicetree@vger.kernel.org>; Thu,  7 Aug 2025 19:18:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754594341; cv=none; b=ewyNcZqOGEVqj+c+36id8+4dG9/MlFagKdE88f2NsWKhNgC8FeAL2jhLIjM94XSvfeEB2iyqKhR9NVH2VzlSXGxm0kG+cxFGQyTLt9I2Ple/tnEvRdMEWO1KyrZrVNKHhZDquQogyS778RxbWI7MWyAjjrrNXiiGfPj4uCjWaNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754594341; c=relaxed/simple;
	bh=P6CYGkCBsS2/j/K0E7tBx1r/xDresPDft3Hy8CqhCSI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=giboGZ5SIKHm0/30IuBXjBDjwEYK3nEaG46J9G3DwYbnTSXCKsC8tD38s3/KyAFeMXWMKtKocgqSlzpclc9qajRLflY5CVomKdUOHPfQhQ0vdGwC5X89JvNDM7whcuvPHXaLpFZXFfC5SZZNOj4L1n1hlLnsn5jREHfehKm/xSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hammernet.be; spf=fail smtp.mailfrom=hammernet.be; dkim=pass (2048-bit key) header.d=hammernet-be.20230601.gappssmtp.com header.i=@hammernet-be.20230601.gappssmtp.com header.b=V3vtkqtN; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hammernet.be
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=hammernet.be
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3b7920354f9so1096935f8f.2
        for <devicetree@vger.kernel.org>; Thu, 07 Aug 2025 12:18:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=hammernet-be.20230601.gappssmtp.com; s=20230601; t=1754594336; x=1755199136; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TMojSpDs0TkBAWsUruscamCHlztjGhkLSL63bamzheI=;
        b=V3vtkqtNNN04JiPQ0ZJhIUhwRoB5EWtUW+BmasHBjB4U1p/NyWgpC7G/jYNZE5F/xD
         4MoBkJYvguw5u0+CwDDpvOG8V5AIfFT5hIs9ge8SKtTPU58SlZyua/kPLWwcFscRXIpp
         rX9y/yvsJgPz/vAKD/cLzGYHUmV58ZvQ3OBwc0ksvLdJefrF1RSME/bJnUXKP7/8Rso5
         p9UsF0BPtZMIV/CijsXostTaKgly2nQAl9Jrfu67QwvGN3/H2jUkPFLQgpZc9vc9+BFz
         fpoa2m/4O38aC3j+MOoVOLop/yoxbR9ppyvywkGr6fzbOFrYbLoJKrk0LdTU24lGvjk6
         uKgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754594336; x=1755199136;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TMojSpDs0TkBAWsUruscamCHlztjGhkLSL63bamzheI=;
        b=allH8UPOB4S142nrCwRQkohGK2LRjNxTe4CBYflNiqbKrBerXO+kp3tt2Pqcy66buK
         JNUPrN/acycf8whH30NQaNpkEb4s3e+2tbVxGbe0kS7IOdML5GoOa9u3IRLdBYWbKjF4
         ua+xNgrLxw1TOhR1gQEctG/BrAOuhKr/addwfw6+4dxZXn6+SaXd5AmFpqMerPVAPBMF
         E5CXUEImb6wg8WCi4Mys7GVvrB9eaGFqpWkz1gmwnbkj8vNxDKxNpoTiO6KS6iB12/1a
         yLn5UQHPez6HXwwdfEhMDvfhF+RhQdNjUJgAVsY9i1KB5k1dAXsc0DUuR/AlbWYJYq1p
         HP8g==
X-Forwarded-Encrypted: i=1; AJvYcCWDBx0q71HKICRTkpi1SqQL7CxqO1dS1/dv/6WnO/+Yo4PdoWzwsBKNzKtDKG6vhbS0BZSwZT4QtZmy@vger.kernel.org
X-Gm-Message-State: AOJu0YyURIkyNBLv92P9heleMT8hF42+QsOqe/4qWuxEtQm1YETwLvFS
	SXpKF6E2cS/pNpyZcPkE1aB6+2sSfwK3HFJBbje0flxtsnNpMhiSPCpPvBa6wR9t8X4=
X-Gm-Gg: ASbGnctlsspOgVmNXeu7uodTQG5OFBqkZPQ6tyPJJn6K6C4ZZchVzAmAYUDlqlptaCB
	ivkuSbEFyypjEe2to7VXcyOFQ7nzD4zZkN8Kn/ogGR6Fus9iR3QXxXeO5XR7X3TsU1XWG0AMjte
	Ys1pMhNnMrA/6exUbpvMxRgj/BmEz0KMNhoXic4Q4JmPRHSoK7uFBNpdG4eB7mA+9uEB6zjrPlT
	ZnNRtay7JCtCtRUNv3fpYwOlub/i+GKpeZlc5GCzHzDpHmCRX3xhcoZUl6EJt2dErmri3DtoNF9
	tShoAMI9q+tTbVU+rfXyNTWbJqh1OydbrukivcimQGJsO1i5tSe9Hw1BpGoDYAsKf+rLo2swity
	AaVwVByuiTMpC7mIydnBuLOcoahRi//54JkhlfkUtFRkzklkooA==
X-Google-Smtp-Source: AGHT+IGmsZp5QGEdNPY5skMi/ehXySxn/2GJ+zanQmX1/LX2oBeqJ3fxjEoYN3cf/lF9eTayqWyhUQ==
X-Received: by 2002:a05:6000:40ce:b0:3a3:65b5:51d7 with SMTP id ffacd0b85a97d-3b900b54b20mr297294f8f.26.1754594335784;
        Thu, 07 Aug 2025 12:18:55 -0700 (PDT)
Received: from pop-os.telenet.be ([2a02:1807:2a00:3400:3bcd:db43:406c:324d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b79c3c4d02sm26988589f8f.33.2025.08.07.12.18.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Aug 2025 12:18:54 -0700 (PDT)
From: Hendrik Hamerlinck <hendrik.hamerlinck@hammernet.be>
To: dlan@gentoo.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr
Cc: skhan@linuxfoundation.org,
	linux-kernel-mentees@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Hendrik Hamerlinck <hendrik.hamerlinck@hammernet.be>
Subject: [PATCH] riscv: dts: spacemit: add UART resets for Soc K1
Date: Thu,  7 Aug 2025 21:18:17 +0200
Message-ID: <20250807191817.157494-1-hendrik.hamerlinck@hammernet.be>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add reset control entries for all UARTs in the SpaceMIT K1 SoC Device Tree.
UART0 was functional as it did not need a reset. But the other UARTs were
unable to access their registers without the reset being applied.

Although perhaps not needed I did add the reset for UART0 as well,
to ensure consistency across all UARTs. With the current-speed set to
112500 baud rate, it matches the factory U-Boot settings.
This should not give issues with early console usage. But perhaps it could
be a good idea to let somebody else confirm this as well.

Tested this locally on both Orange Pi RV2 and Banana Pi BPI-F3 boards. 
I enabled the UART9 and was able to use it successfully.

Signed-off-by: Hendrik Hamerlinck <hendrik.hamerlinck@hammernet.be>
---
 arch/riscv/boot/dts/spacemit/k1.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1.dtsi b/arch/riscv/boot/dts/spacemit/k1.dtsi
index abde8bb07c95..7a5196a98085 100644
--- a/arch/riscv/boot/dts/spacemit/k1.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k1.dtsi
@@ -667,6 +667,8 @@ uart0: serial@d4017000 {
 				clocks = <&syscon_apbc CLK_UART0>,
 					 <&syscon_apbc CLK_UART0_BUS>;
 				clock-names = "core", "bus";
+				current-speed = <115200>;
+				resets = <&syscon_apbc RESET_UART0>;
 				interrupts = <42>;
 				reg-shift = <2>;
 				reg-io-width = <4>;
@@ -680,6 +682,7 @@ uart2: serial@d4017100 {
 				clocks = <&syscon_apbc CLK_UART2>,
 					 <&syscon_apbc CLK_UART2_BUS>;
 				clock-names = "core", "bus";
+				resets = <&syscon_apbc RESET_UART2>;
 				interrupts = <44>;
 				reg-shift = <2>;
 				reg-io-width = <4>;
@@ -693,6 +696,7 @@ uart3: serial@d4017200 {
 				clocks = <&syscon_apbc CLK_UART3>,
 					 <&syscon_apbc CLK_UART3_BUS>;
 				clock-names = "core", "bus";
+				resets = <&syscon_apbc RESET_UART3>;
 				interrupts = <45>;
 				reg-shift = <2>;
 				reg-io-width = <4>;
@@ -706,6 +710,7 @@ uart4: serial@d4017300 {
 				clocks = <&syscon_apbc CLK_UART4>,
 					 <&syscon_apbc CLK_UART4_BUS>;
 				clock-names = "core", "bus";
+				resets = <&syscon_apbc RESET_UART4>;
 				interrupts = <46>;
 				reg-shift = <2>;
 				reg-io-width = <4>;
@@ -719,6 +724,7 @@ uart5: serial@d4017400 {
 				clocks = <&syscon_apbc CLK_UART5>,
 					 <&syscon_apbc CLK_UART5_BUS>;
 				clock-names = "core", "bus";
+				resets = <&syscon_apbc RESET_UART5>;
 				interrupts = <47>;
 				reg-shift = <2>;
 				reg-io-width = <4>;
@@ -732,6 +738,7 @@ uart6: serial@d4017500 {
 				clocks = <&syscon_apbc CLK_UART6>,
 					 <&syscon_apbc CLK_UART6_BUS>;
 				clock-names = "core", "bus";
+				resets = <&syscon_apbc RESET_UART6>;
 				interrupts = <48>;
 				reg-shift = <2>;
 				reg-io-width = <4>;
@@ -745,6 +752,7 @@ uart7: serial@d4017600 {
 				clocks = <&syscon_apbc CLK_UART7>,
 					 <&syscon_apbc CLK_UART7_BUS>;
 				clock-names = "core", "bus";
+				resets = <&syscon_apbc RESET_UART7>;
 				interrupts = <49>;
 				reg-shift = <2>;
 				reg-io-width = <4>;
@@ -758,6 +766,7 @@ uart8: serial@d4017700 {
 				clocks = <&syscon_apbc CLK_UART8>,
 					 <&syscon_apbc CLK_UART8_BUS>;
 				clock-names = "core", "bus";
+				resets = <&syscon_apbc RESET_UART8>;
 				interrupts = <50>;
 				reg-shift = <2>;
 				reg-io-width = <4>;
@@ -771,6 +780,7 @@ uart9: serial@d4017800 {
 				clocks = <&syscon_apbc CLK_UART9>,
 					 <&syscon_apbc CLK_UART9_BUS>;
 				clock-names = "core", "bus";
+				resets = <&syscon_apbc RESET_UART9>;
 				interrupts = <51>;
 				reg-shift = <2>;
 				reg-io-width = <4>;
-- 
2.43.0


