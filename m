Return-Path: <devicetree+bounces-231016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D24BC08AD8
	for <lists+devicetree@lfdr.de>; Sat, 25 Oct 2025 06:32:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 023C53ACBEF
	for <lists+devicetree@lfdr.de>; Sat, 25 Oct 2025 04:32:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 073972727F5;
	Sat, 25 Oct 2025 04:32:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="d3EnSCCW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256C83BB4A
	for <devicetree@vger.kernel.org>; Sat, 25 Oct 2025 04:31:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761366719; cv=none; b=IcU7MtpRGrvnQ0izdCVHYRi8/2RXya/gzR9NjsX2y8hscqUvDiCPQL+CaGlFXuP6lshJCCyLWf4pHqy6wJB/p38yDh9mDMasHf/2gF2TJahhNnQZv116i+BeB5SS+FbCaZT+I0dzCngSlaQrGeVm08CtCjOgn/62j0fQBBXmhtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761366719; c=relaxed/simple;
	bh=TyC97LahORynCpDNYYasLXMe/KE5E24maIVQwa1LxhE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=BsRwJGevXr3aFdMbHEfWowahHFs7axthqCNzZJme6ONirc45qO6emKTwzW8lFKbJ7ir+7hOaSjphHVVGQwnZ2rOh0tEynR3+ox+iKSgLjmarjL01gq5VQgKa7TpzZTDVYbBntJ3HNARw3eNeJIwVhqTVeBPXsklI66/8HRrdUqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=d3EnSCCW; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-378d65d8184so37576311fa.0
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 21:31:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761366715; x=1761971515; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OEVFVM/l2psTi4+scJeyVhhgmazdGrNFi6gMHZXJLQg=;
        b=d3EnSCCWd3gHiqluJx1/VKamPZRSQXHgglAIrf4U/gQcEJi1OZuz73eQ92o3Vhbmxy
         bOcgr5ur8b+ze4S2AJOi2cwKDxunPzVMjvGmQyHohqwoBwqZV5sG+QXPQZ0eFu3d1O6s
         RPNMks8FOuklQBTCnH5My3d3rHwfKWIByxV9qW75BHzS7XlurTzwrPTblC/PkKwyC6UU
         zsmO7q4z/c3QUTgCe9EU2JJ3K/pbcEtSCYzH85aSessxOjyESD9+WIv+QJ2arfuKFcz/
         kye0kepU+mnQoO52qrcdjycodcdD0JVaZL1VEuUTmOYPpEZRmlZU7bXmuLH+KDKhgUpB
         /d8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761366715; x=1761971515;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OEVFVM/l2psTi4+scJeyVhhgmazdGrNFi6gMHZXJLQg=;
        b=eiQ/IpgehvNM07bCr6VcS0WnRiP3zCJlTKVfouHtIliSVD+HIvb+QMhriL1zhzJESq
         5bgyI5fHpPAlvZk5/omnb73nJboyCoasy57zuE09SSoY+SHLJJvcmJHXieZyJcg3+2Ep
         c01W0TT2XKlNzGiWApOL0BD6n4QxmmLF5c+vRA2xMi4XSn83TyBSGsizJHDFS22K+qjC
         IKUH40XCoKdyrdL+IC2iXOviLGPXf87xlWQDYHVMv8+NrOdItqNU8AQCV/1q01J0e18O
         LRO6AS23dFvjbd2mxkcUNJLMJc4Vs5MraBCrgkGT0KiACVAB91B+U8VyvX62ykgyoVFY
         fU+Q==
X-Forwarded-Encrypted: i=1; AJvYcCVzDSDp7r4ln7GlGUMcZBvL+a3w8If9aAehIF9DHJ1dq5U84zaWoDSSN3qqjJrhx+IEvHw8adO+ykSY@vger.kernel.org
X-Gm-Message-State: AOJu0YyQZ7s5lqQIYkXTB1F1Js/rRPDlPR4p4opDmQxFzEo9i1dNcpDy
	VHnUz8EdAhNYeAQ7h7aUA7DZwrZfD2HV300t1/FYJeIzoLTEOGhOJe/0
X-Gm-Gg: ASbGncsvU0D9YphhS9dr37khBdkXpxcF5x9GCAm/d3bDU9iYZ0EVDblnQzOi2wwZlBm
	l9O/XutIgTvWtGVj0UCEJiT/00uiylpqy60DErafUNyvy2wHIm7y/DEpjKUhx8zmzCnC6p612PD
	2Cuj56+rhKh4zGS5zM9iM3zF9L+32NdYyINPENiWvBpas0+URsVyJI8LdCyjEQYy5y9FTvOHJ/Q
	YBknJQ7CwoMvQkWtoKsu0TCxyCO+OyT5tqn3oDdpZc9uIDsHyd4WNFKvLKSWzFAaxm7ttk+qG8C
	jr9zMLeVbFym8LnN2Dp2zeUpXidbor/swZDX0syQwwaAwfRyqNMik+7Frhk3haCGTEwgKdDz1PB
	JzSLXvgSRa5Io3GLiUOm3smWTneHde6VnARLbbqY1m+FhB9GF5e+yiHs3nflzfmPKgHBMVgnBv3
	ef
X-Google-Smtp-Source: AGHT+IFXzz4JrbCccLfkZ2ZXGDknqpjtngSJ7wok4+tdSDfFKxhBjVek1aHX+t+1GLDollUvLiPj9g==
X-Received: by 2002:a2e:bc25:0:b0:378:dd60:38c9 with SMTP id 38308e7fff4ca-378dd60520emr22966101fa.38.1761366715050;
        Fri, 24 Oct 2025 21:31:55 -0700 (PDT)
Received: from junAIR ([176.106.241.81])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-378ee0ca7a0sm3409241fa.33.2025.10.24.21.31.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Oct 2025 21:31:54 -0700 (PDT)
From: iuncuim <iuncuim@gmail.com>
To: Vasily Khoruzhick <anarsoul@gmail.com>,
	Yangtao Li <tiny.windzz@gmail.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Lukasz Luba <lukasz.luba@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: Andre Przywara <andre.przywara@arm.com>,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/6] Allwinner: A523: add support for A523 THS0/1 controllers
Date: Sat, 25 Oct 2025 12:31:23 +0800
Message-ID: <20251025043129.160454-1-iuncuim@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Mikhail Kalashnikov <iuncuim@gmail.com>

This patch series adds temperature sensor support for the Allwinner A523
family of processors (same die with H728/A527/T527)

Based on 6.18-rc1.

Changes v3~v2:
x) dt-bindings: nvmem: SID: Add binding for A523 SID controller
 - previously accepted, therefore removed from this version

1) dt-bindings: thermal: sun8i: Add A523 THS0/1 controllers
 - added changes as requested by Rob

2) thermal/drivers/sun8i: add gpadc clock
 - removed undescribed changes spaces to tabs

3) thermal/drivers/sun8i: replace devm_reset_control_get to
 - changed the commit description to the version suggested by wens
 - added reviewed-by tag

4) thermal/drivers/sun8i: get calibration data from two nvmem cells
 - added spaces in the description block before "*"

5) thermal/drivers/sun8i: Add support for A523 THS0/1 controllers
 - added alignment of functions in compliance with open parenthesis

x) arm64: dts: allwinner: A523: Add SID controller node
 - previously accepted, therefore removed from this version

6) arm64: dts: allwinner: A523: Add thermal sensors and zones
 - no functional changes

Changes v2~v1:
1) dt-bindings: nvmem: SID: Add binding for A523 SID controller
 - added new patch

2) dt-bindings: thermal: sun8i: Add A523 THS0/1 controllers
 - changed clock order
 - added additional nvmem cell with calibration data
 - added requirements for new controllers
 - added description

3) thermal/drivers/sun8i: add gpadc clock
 - removed unnecessary call to clk_prepare_enable() since
 devm_clk_get_enabled()includes this

4) thermal/drivers/sun8i: replace devm_reset_control_get to
 - original function replaced with devm_reset_control_get_shared_deasserted()
 - removed some of the repetitive code executed by 
 devm_reset_control_get_shared_deasserted()

5) thermal/drivers/sun8i: get calibration data from two nvmem cells
 - added possibility to get calibration data from two independent cells

6) thermal/drivers/sun8i: Add support for A523 THS0/1 controllers
 - removed magic digits
 - changed description of calibration data procedure for A523
 - changed numbers of array elements with calibration data

7) arm64: dts: allwinner: A523: Add SID controller node
 - fix typo (sun50i->sun55i)

8) arm64: dts: allwinner: A523: Add thermal sensors and zones
 - cell with calibration data divided into two
 - added passive trips for gpu
 - added information that information obtained from BSP

v1: https://lore.kernel.org/linux-sunxi/20250411003827.782544-1-iuncuim@gmail.com

Mikhail Kalashnikov (6):
  dt-bindings: thermal: sun8i: Add A523 THS0/1 controllers
  thermal/drivers/sun8i: add gpadc clock
  thermal/drivers/sun8i: replace devm_reset_control_get  to
    devm_reset_control_get_shared_deasserted
  thermal/drivers/sun8i: get calibration data from two nvmem cells
  thermal/drivers/sun8i: Add support for A523 THS0/1 controllers
  Allwinner: A523: add support for A523 THS0/1 controllers

 .../thermal/allwinner,sun8i-a83t-ths.yaml     |  56 ++++-
 .../arm64/boot/dts/allwinner/sun55i-a523.dtsi | 154 ++++++++++++
 drivers/thermal/sun8i_thermal.c               | 234 +++++++++++++++---
 3 files changed, 401 insertions(+), 43 deletions(-)

-- 
2.51.0


