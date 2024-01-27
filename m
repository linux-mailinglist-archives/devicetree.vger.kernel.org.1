Return-Path: <devicetree+bounces-35735-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BDE9583E896
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 01:38:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2C97CB24BA4
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 00:38:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22676B652;
	Sat, 27 Jan 2024 00:37:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="C+FtbD1r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4357217C7
	for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 00:37:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706315832; cv=none; b=A8XN+sVwuzYflfGPoi9LuHofbmYqQWoT9E3gW/8JfB6MuH6GwgRNce66EZQwcr9AUGmibMzi6x9hDpkrmmthhrU9OnfzZvTyhBJbw1FYLtbBX4VP4VUXyQRF0sEp+vwjAyd4eqH9GGciyVulzDtYSPeCWsTDp6k1YT/b/b8q2fY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706315832; c=relaxed/simple;
	bh=6vWY/fqEbxu5raMhZbkehuR0JCHTq/UAt99T8/e22jU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=XlyA/6YhKYPoUf1ZYGu2g5AODNuZSfWIVM0/69gZzfW9cvHTRpoKMJQKmvY7wcBpLoNsFCobhfYsiyD/a+SWwOQXDStaPGCcmz/1ym2kDYGSSzlDKfrCgSbl1yvD66txPbQXq2HcDAXVDhtjzKfnPbhATz78VK4nss2/Us5MxyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=C+FtbD1r; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-40eacb6067dso20100855e9.1
        for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 16:37:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706315826; x=1706920626; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SHiTLNqXAy/ffui/0jj45ErOQ8cZX/p93S1sxrZ6DNI=;
        b=C+FtbD1rR0iJ20cdDwkXKfWW0E03Sdrn+9ZMlDolngQvUnXEZVZJwZZZsQ04UriKx7
         8rkyXhuUykCeSWSYqZv/NM5VdS8rv7BY566u1Qq/uOV85pZxmQwILCDetvgvAYArt9Ke
         VCbsHGFURfGlWC4updUNsvsbdHDcb6MKLh5crST/IAFvPqO3wD1olPx9BAzK0Fu7+5K6
         ZdNVYlpJzr5loHp2BrHZGlKn/aatqEFVe/IvKiCcu4uz1sZ0WIPrgBWu07Nxk9ALkCrr
         kY8FQTe793baqhKPPC899S+yUfll/bau/bAkKBinwfqBdZN3fkTIXtOBOZLmZqUr2mCu
         BHXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706315826; x=1706920626;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SHiTLNqXAy/ffui/0jj45ErOQ8cZX/p93S1sxrZ6DNI=;
        b=bWFRmWjPu0KO7o5AjUzf8Nv6Rh1BYSilEdnN6+HlfrTuQN8dlI/slQiDicTlxWJBw2
         hmLnWeNGkKg3bvlVh93bP282PbzebPh6PbLIyMcET6zkqihZM95OdVwJ0jG7scnjerOH
         0n4YreKhSWVQ/XXTA4a3WXxRNr1qNoqs1CysuSCwuJE04bg1JR+OuQsoPzO6+cyMstqA
         aqfLiAbzMPzUg/Fk8iQKr8UvFen9NhrQo1AOgt+Tl1xPjcUc+UY6vKJc22WKH4D8pREC
         iAj4quTe2d3Rhwpr9whV6g1rtZZfUuo+eefwaFP6q7ONapw4ia+lwlkmdP9dOoKGXy56
         mNBQ==
X-Gm-Message-State: AOJu0Yylkhnrjk/NOx2kRO2YqLGSwt7xzfRUVGR29CrO8G5I7w/XGVv5
	H/j4xrYzWlFpViAXxQgUtHcZ88G9HyTW3cqwR42yDJPg7lWQlO0MbGuGquqSLVA=
X-Google-Smtp-Source: AGHT+IGorEDbWQE6VfxFvlvSCPqIp6nl1sPSWqI+VAkqF7VgEu3yF8ZBjC3O57a4HzCVQzahFOXsXA==
X-Received: by 2002:a05:6000:1370:b0:337:bb78:8b3e with SMTP id q16-20020a056000137000b00337bb788b3emr210753wrz.197.1706315826560;
        Fri, 26 Jan 2024 16:37:06 -0800 (PST)
Received: from puffmais.c.googlers.com.com (229.112.91.34.bc.googleusercontent.com. [34.91.112.229])
        by smtp.gmail.com with ESMTPSA id vi1-20020a170907d40100b00a2f48a43c3esm1152235ejc.7.2024.01.26.16.37.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jan 2024 16:37:06 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>
To: peter.griffin@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org,
	kernel-team@android.com,
	tudor.ambarus@linaro.org,
	willmcvicker@google.com,
	semen.protsenko@linaro.org,
	alim.akhtar@samsung.com,
	s.nawrocki@samsung.com,
	tomasz.figa@gmail.com,
	cw00.choi@samsung.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 4/5] arm64: dts: exynos: gs101: use correct clocks for usi_uart
Date: Sat, 27 Jan 2024 00:35:53 +0000
Message-ID: <20240127003607.501086-5-andre.draszik@linaro.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
In-Reply-To: <20240127003607.501086-1-andre.draszik@linaro.org>
References: <20240127003607.501086-1-andre.draszik@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Wrong pclk clocks have been used in this usi8 instance here. For USI
and UART, we need the ipclk and pclk, where pclk is the bus clock.
Without it, nothing can work.
It is unclear what exactly is using USI0_UART_CLK, but it is not
required for the IP to be operational at this stage, while pclk is.
This also brings the DT in line with the clock names expected by the
usi and uart drivers.

Update the DTSI accordingly.

Fixes: d97b6c902a40 ("arm64: dts: exynos: gs101: update USI UART to use peric0 clocks")
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index e5b665be2d62..f93e937d2726 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -410,7 +410,7 @@ usi_uart: usi@10a000c0 {
 			ranges;
 			#address-cells = <1>;
 			#size-cells = <1>;
-			clocks = <&cmu_peric0 CLK_GOUT_PERIC0_CLK_PERIC0_USI0_UART_CLK>,
+			clocks = <&cmu_peric0 CLK_GOUT_PERIC0_PERIC0_TOP1_PCLK_0>,
 				 <&cmu_peric0 CLK_GOUT_PERIC0_PERIC0_TOP1_IPCLK_0>;
 			clock-names = "pclk", "ipclk";
 			samsung,sysreg = <&sysreg_peric0 0x1020>;
@@ -422,7 +422,7 @@ serial_0: serial@10a00000 {
 				reg = <0x10a00000 0xc0>;
 				interrupts = <GIC_SPI 634
 					      IRQ_TYPE_LEVEL_HIGH 0>;
-				clocks = <&cmu_peric0 CLK_GOUT_PERIC0_CLK_PERIC0_USI0_UART_CLK>,
+				clocks = <&cmu_peric0 CLK_GOUT_PERIC0_PERIC0_TOP1_PCLK_0>,
 					 <&cmu_peric0 CLK_GOUT_PERIC0_PERIC0_TOP1_IPCLK_0>;
 				clock-names = "uart", "clk_uart_baud0";
 				samsung,uart-fifosize = <256>;
-- 
2.43.0.429.g432eaa2c6b-goog


