Return-Path: <devicetree+bounces-135953-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AB464A031AC
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 21:56:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D38797A2AA2
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 20:56:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B341B1E00B3;
	Mon,  6 Jan 2025 20:56:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="W+BynPLX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC0261DF996;
	Mon,  6 Jan 2025 20:56:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736196999; cv=none; b=OZcZLDJ0re0ChKeHXFziakBoA67eejCRhYkehkjn8XqWtEQONz1ouEo75Q0D3jY8hIO4cDF+sxzhMkVj5i37rv/cB1ervtf75GdouGtnWeNGY7X4Ffq1sa6j2q0TLSQBT922uFAbT9ajhB1psNFdxlPEKf+y46Zo4LkKiwOdak0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736196999; c=relaxed/simple;
	bh=4rLbWRGoKQ+aM7FERYu/s+1ZI6uxnvmrikDM9wfXWwQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=k+zgV2guYPHguKfdgI4r9sqvSJZENHfe9VNQHs/BFzEZehh1zoedJWxIIJGkdGXvhd1IUOlqOeqsVQjLM6ib0vdIA3qm6rHfVEg9wdSdCxNq+44D9qoekjZ8LeFXn3ChXPD/FDUPyqDtMi8rQKdcwusZk1RlswlXYv68EBD9wKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=W+BynPLX; arc=none smtp.client-ip=209.85.222.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-7b6f53c12adso1183165485a.1;
        Mon, 06 Jan 2025 12:56:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736196997; x=1736801797; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QGYXaVM0zRhN5LB2AqsM+NfqTKsJxQEiTbVn2J1DL3k=;
        b=W+BynPLXiA6F9cz+yKcONbrWl1/ZJFvDERCEpyQaI8lg7HJOcK17w2A3FaTOfeS24n
         Zkj1a0zhRFKdctTIr1c4JvNd1akd+axtV5E3u9/YpJKJZl5v3VjnMyS4T2etc1KPowOv
         EiF+CgKNBGnRpaVdbLTE0mn+aFMfJSLVfq0JBPbZWnQ060HWVeOy5cLHQ9Mk7VawUXHa
         bghKjQnyxKG8ZP3d7SY6L2+igE+FeJ8rcJ5TJ3S6k/eBjJr3gPe1gcrJH+3bN1PolcvJ
         U5kuNkzRqqFYg/SWWJ/g0X34BA9WONUs3syRNH255dndAyO+RAZcMM1H6ezgcu/+x2A+
         wFVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736196997; x=1736801797;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QGYXaVM0zRhN5LB2AqsM+NfqTKsJxQEiTbVn2J1DL3k=;
        b=cJPa9VQP2jSujpnJcqd3KBLlIO54szpY4RWijKVxJt+WpXRIZUeW3PCU8m4GhI1wbL
         9sYxvE7iqNG3R+ZbxqxDCu8a24zSw5tNvki+2FIOI+btv0QqKlnSRJCacMjgc/dJ3+RX
         SqegS1cp+OnZvpN4ug/FHlgZmJ+QSKJQKkpkBl83BHSYnF6EHBLVjh3tcjJsmLEyabkq
         bBuz30u8LjirvIZ5p8XDrexs85o4F48a42tZkqrYs264laRVXAwxYKT41c5JZ2Qt6CMg
         jw8zlvasGw1jy6VmYKAVqGwv3vwCkwJwPf5h8gZAXeNBVj8R2I8PuKTnyc+xoJ8sl63a
         NrKg==
X-Forwarded-Encrypted: i=1; AJvYcCWnc6fkSkEeEgKWQhCNf29LP7j7//dbY2lgZ12piUISH7JDymIl9WS5d715wHIRzwW6ylX/LyvOROzdFuo=@vger.kernel.org
X-Gm-Message-State: AOJu0Yw37CUlyIzFqmAI7FMChEYPIhcfc2D67yZP/qI9szzvjl8ZZpju
	XGPLy59533rRFoJtBcK52RwIujEvZg3VsWxqEMUs33IL9FKJ9iTgiImlyA==
X-Gm-Gg: ASbGncu08oajBIsrQEUZ1lhTOHIcTivX/P3fPZHm48e8d3Aarq8CJbFSbiu2cNUDhsI
	pDdzNWbJT2poKLZ979jRb2MNeRzafLIntasy53XU3wYfpdS6Wp6phT/Rpl/IuKTcSTA+rCXDxrS
	TIgAWqunEnutoPPnDgY6pycDrmcIsQ2b2FgxQfEkgDhhASe14k6Ruof64SWbEWuFcsg5Fe3hxhY
	jBAwUwzjtHAPFyQ1cf7+OvlI4G6lN4ynMRYwi3qm/BwFyjoK44sCjsArJ+esmS16p8rWtGXf1aV
	Famj3sU1ZOVuCgEqoCg4ZEyzZnUBurOQh9opzQ==
X-Google-Smtp-Source: AGHT+IELbgusOdDCViGqWCWb+1+z8xDfNVcf5K0XK1922cW3ojCmzZQ/KiW+9YniO+lVhx6xnwHvaw==
X-Received: by 2002:a05:620a:318c:b0:7b6:de65:9ee7 with SMTP id af79cd13be357-7b9ba7ee78dmr10289860685a.43.1736196996749;
        Mon, 06 Jan 2025 12:56:36 -0800 (PST)
Received: from jesse-desktop.. (pool-108-26-179-17.bstnma.fios.verizon.net. [108.26.179.17])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7b9ac2d15a4sm1538745785a.35.2025.01.06.12.56.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2025 12:56:36 -0800 (PST)
From: Jesse Taube <mr.bossman075@gmail.com>
X-Google-Original-From: Jesse Taube <Mr.Bossman075@gmail.com>
To: devicetree@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	linus.walleij@linaro.org,
	arnd@arndb.de,
	--cc=imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jesse Taube <Mr.Bossman075@gmail.com>
Subject: [RESEND PATCH v2] ARM: dts: imxrt1050: Fix clocks for mmc
Date: Mon,  6 Jan 2025 15:56:35 -0500
Message-ID: <20250106205635.2177321-1-Mr.Bossman075@gmail.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

One of the usdhc1 controller's clocks should be IMXRT1050_CLK_AHB_PODF not
IMXRT1050_CLK_OSC.

Fixes: 1c4f01be3490 ("ARM: dts: imx: Add i.MXRT1050-EVK support")
Signed-off-by: Jesse Taube <Mr.Bossman075@gmail.com>
---
V1 -> V2:
 - Add Fixes tag
 - Fix line wrap
V2 -> RESEND V2:
 - Add change log
---
 arch/arm/boot/dts/nxp/imx/imxrt1050.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imxrt1050.dtsi b/arch/arm/boot/dts/nxp/imx/imxrt1050.dtsi
index dd714d235d5f..b0bad0d1ba36 100644
--- a/arch/arm/boot/dts/nxp/imx/imxrt1050.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imxrt1050.dtsi
@@ -87,7 +87,7 @@ usdhc1: mmc@402c0000 {
 			reg = <0x402c0000 0x4000>;
 			interrupts = <110>;
 			clocks = <&clks IMXRT1050_CLK_IPG_PDOF>,
-				<&clks IMXRT1050_CLK_OSC>,
+				<&clks IMXRT1050_CLK_AHB_PODF>,
 				<&clks IMXRT1050_CLK_USDHC1>;
 			clock-names = "ipg", "ahb", "per";
 			bus-width = <4>;
-- 
2.45.2


