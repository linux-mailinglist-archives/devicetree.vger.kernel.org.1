Return-Path: <devicetree+bounces-250881-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B150CECC8D
	for <lists+devicetree@lfdr.de>; Thu, 01 Jan 2026 04:44:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CE579301AD2B
	for <lists+devicetree@lfdr.de>; Thu,  1 Jan 2026 03:43:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D04A252292;
	Thu,  1 Jan 2026 03:43:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=0x0f.com header.i=@0x0f.com header.b="c8q+WXtx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF76B254B1F
	for <devicetree@vger.kernel.org>; Thu,  1 Jan 2026 03:43:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767239014; cv=none; b=BQV4HZInJ2C16nu0+IdT+u1yePfnNatjhYTM3mYia4vdxiLYRvuQoNM/V5TxHRSm5t7gHQuysd+Kd8w4NBlbFdSJRkXeayAuHoSN+trisUXY4XUa9iF6F0U05dsJj4s+/FetQWnBou5l5v62Fzpwha3C+ffF3HTpJWMt9+aVvI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767239014; c=relaxed/simple;
	bh=SdSfcP2h8fckoZsVUDqp2I3DDQBDfFcEeio7w6w7FPM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=EmUUOJT8jKwMnbqhAqI052qWz3DY6HiLxnb0jpoi4q4aDnWlkHpbo7a+MxJpwljNhe5tiHgaVV5QGd9cb+gasgHL7/mifq29OHxQYZnppml7Vu1GBH929pd5xI0alX//R4kUpyc9EI0vRV17j5r/ynKnRXqMXSGp548XSJPW8SQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0x0f.com; spf=pass smtp.mailfrom=0x0f.com; dkim=pass (1024-bit key) header.d=0x0f.com header.i=@0x0f.com header.b=c8q+WXtx; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0x0f.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0x0f.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2a0c20ee83dso143599435ad.2
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 19:43:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google; t=1767239012; x=1767843812; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3R7Le6o7LyefQQtq81DgJOKcydK8/GDjnFJ/VQXismo=;
        b=c8q+WXtx+0/qz812xIDCzNHzu9fkn+GUjEK+I2f9JySgzocKsdGsF3fCJkIHas6kXT
         q47SftLv321R7Z1pKmLq2SvUNZQHPRk/p59AscGtWZ/VMENatVkfjN4VOls+GJmQbkBy
         B3eIyI85FZQ+hSa7l4kfFTqhmFsB5duxBYOFw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767239012; x=1767843812;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3R7Le6o7LyefQQtq81DgJOKcydK8/GDjnFJ/VQXismo=;
        b=MPnl2ib3y04KGGpyFJ9X8rRVI0dsvqle/JISME1tZErduTavKKC4IUxtcmPn7AUAQJ
         +/FryvbiOkoM99CFvlHqnpEpLv287Hf0j9QNj7GgN+QuZt/Sjo814WXF32615BSU+A7M
         eiBqXbOUJpoklnGiWTWnUxHP3eg0cK8+1cZ30OnymVvp855RLNpyenEnUKIm+qgsTuUw
         vizVa1KAfI2ttVYgYU6FXDPJKVKM5kPrXoF8Iop8POzoiHzuIkqKryjDsB4RxLGwK3fj
         2/ZeqFHOnqA4E1X6Z5HkaRl+4bxMPQ5kUsC79kQKSSofO9vOBawNzIy6WgxYR9stlhY/
         lwbQ==
X-Gm-Message-State: AOJu0YwnEj2Q2Rdi77UjB3pTbXQrns3X9X9Kd4JH6WzhrevMUUbqcU6Q
	eia02ZE5X1t/J5ZIZdswS137cDj/kwEIv/DzYr6a8mbsM23Bfoiih8kaHN3aUqSzuYQ=
X-Gm-Gg: AY/fxX7wYbn5azSM63byfj4xOhc0wr2ub2fbQaeFeGAggr1be3TRzMPC8qT2XHI1Z3t
	/Q/XwYeIqteD3NPk+wvuN8ORIhTARTSbYPqL3MPaa0l5lDoMLj36468k4FywtWWYnQ9Vd4xwrk6
	zniCbfaNOCCaxaYkJqXCjdzf1MygTQXDpF93aqVgpbH+U864EzdcI0c+JbI2IW7TAzbefGyjUkT
	QBxSldULf7ss2Bk9kTn4F98ADhorqgSzOUyz8qjOEw4qx633CI17nA0NmLj4bffzTaXnZcJTk6Q
	umKDPv2bkw+S4pbkvVeT7xzPNONS0k1FlYyrb6291lD6sRSyKkFO7LiubMBTKD5lJqAtOJ1n9iO
	5yuAwokY509aXVfZvpbhGUMIiVh2LBwk03KNtkG66z7TVftdbozB8eZ7VZbxqXt2ZyAsXLAnggh
	PCnbyhyb2ifna5ufVYEMVYaocXMlTBP+TLzh8S+qOFIBw60yZhKG5D
X-Google-Smtp-Source: AGHT+IFTcMjqbQo6r79oHp3sjUI0kyb5M5mVknZJSBm6b6l4a5CPZBWI/hK37CSIEBUg2VwCq7BKNQ==
X-Received: by 2002:a17:903:4b27:b0:2a0:c1be:f436 with SMTP id d9443c01a7336-2a2f2c5eacdmr379675025ad.59.1767239012235;
        Wed, 31 Dec 2025 19:43:32 -0800 (PST)
Received: from shiro (p1536247-ipxg00c01sizuokaden.shizuoka.ocn.ne.jp. [122.26.212.247])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a2f3c8286esm340437965ad.33.2025.12.31.19.43.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Dec 2025 19:43:31 -0800 (PST)
From: Daniel Palmer <daniel@0x0f.com>
To: krzk+dt@kernel.org,
	romain.perier@gmail.com,
	robh@kernel.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH v2 2/8] arm: dts: mstar: breadbee: Correct regulator names
Date: Thu,  1 Jan 2026 12:43:00 +0900
Message-ID: <20260101034306.1233091-3-daniel@0x0f.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260101034306.1233091-1-daniel@0x0f.com>
References: <20260101034306.1233091-1-daniel@0x0f.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The regulator names had a "@<n>" in them so the dt validation
stuff wanted a reg property. Fix the names to match what the regulator
is for and remove the "@<n>" bit.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 .../boot/dts/sigmastar/mstar-infinity-breadbee-common.dtsi  | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/sigmastar/mstar-infinity-breadbee-common.dtsi b/arch/arm/boot/dts/sigmastar/mstar-infinity-breadbee-common.dtsi
index 507ff2fba837..99f5a5603dc7 100644
--- a/arch/arm/boot/dts/sigmastar/mstar-infinity-breadbee-common.dtsi
+++ b/arch/arm/boot/dts/sigmastar/mstar-infinity-breadbee-common.dtsi
@@ -7,7 +7,7 @@
 #include <dt-bindings/gpio/gpio.h>
 
 / {
-	vcc_core: fixedregulator@0 {
+	vcc_core: regulator-core {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc_core";
 		regulator-min-microvolt = <1000000>;
@@ -15,7 +15,7 @@ vcc_core: fixedregulator@0 {
 		regulator-boot-on;
 	};
 
-	vcc_dram: fixedregulator@1 {
+	vcc_dram: regulator-dram {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc_dram";
 		regulator-min-microvolt = <1800000>;
@@ -23,7 +23,7 @@ vcc_dram: fixedregulator@1 {
 		regulator-boot-on;
 	};
 
-	vcc_io: fixedregulator@2 {
+	vcc_io: regulator-io {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc_io";
 		regulator-min-microvolt = <3300000>;
-- 
2.51.0


