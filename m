Return-Path: <devicetree+bounces-254993-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B7BD1E358
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 11:48:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C27013095243
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 10:44:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAC4D393DFC;
	Wed, 14 Jan 2026 10:43:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="sub4afOo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com [209.85.221.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F16263904CB
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 10:43:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768387428; cv=none; b=jSAfbE+yVBntIfCaT4yPXMBffZp2mcO+dtPP8LiViCtl2Ef1wdRRraqBdeEJ48J8+6ft5f2jVIfD3zrvO4DDs1G+JOOMGgpIq4PkqgRZyY5Jvv4epe/FMrSm0o4ZVMH6vUPcXUtUXXuF/8OexxNb1ezFK3mKoTAfR3/Mfs+sNR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768387428; c=relaxed/simple;
	bh=4okCO5nn232mOuyf3EnlQ/xwKykNnPdvcOnvM4JNIi0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aS0nRDonx0Ykk9VxSinmH+qWD7xoFlkh858uPjeVztzxIdMoRzoYzsLy9auE557Xc6resVLE6nAAcOyZI1t2uLv/jbep7+vGPiy+qKDd3WaRm/7nQkIA+gL+9h3Yk5hY9MbyqryqmYXaJxYhwvL3ScXzDNdxlUFGXMAcVWUo/SA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=sub4afOo; arc=none smtp.client-ip=209.85.221.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f67.google.com with SMTP id ffacd0b85a97d-4327555464cso5096990f8f.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 02:43:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1768387423; x=1768992223; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4so0a8WT2CR2TaRPtxXWnlX+M8XXOTE+f9HZTDZHm2s=;
        b=sub4afOoxjlExZZEGz/D9AYpG+djqRjDa6MHoJBTFBg/MJiaI84eJOOqf60fhEQwuM
         Dji2cucxLsSazIt0imf40hyArYnKI6T/RlcM+kGCgJGYF9y3Ogc4IjWvQmfRmjEZo5Ya
         PVoCuA2n9kiDNvqWyGpCLG7rTMUOS/lZx5WBxIz9vu3p9FWEltjVdgzN+Lk9X4A4owGk
         pIhsrOzup5cTNATs/Tco8L6ufC0xe6rQ08zy1tVLoqUXryTdmaDNERwLQ9c4nbc5OeFN
         FzBJN89p32yOrlNX2a3vESEyHhRGrlPw+KvHDdeo/8O0YccuExfuIHkiYM1fkkrf6u1f
         Zl5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768387423; x=1768992223;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4so0a8WT2CR2TaRPtxXWnlX+M8XXOTE+f9HZTDZHm2s=;
        b=U9fDfq3cnWkbgsWv6UVplIXmduPjq0c9yvqPckP92YJ0PcZ/BdZ4ni10eUM4rLNKLv
         oQl7CEHhgdDVR0iGzE9NwQsU+u9ktNr4XPnq5sEGF2I1Tx6PwPr6HTng6hAzyEWisM1B
         XMtPLcdzyau0JSn+o1zVJWAqM/YIKxYDSewrawMfkWnqM6a73Ujc4Y2dckv2x6HWRL/i
         vefmvXTJzGASs33Tq+rP5WW3eAkmxeZnaQ+aIdPfTkwZSLgQ2sfl9bswj8l/PvXicn8G
         +Ht32zB5D5QzYnsbBzxJbL9LcccmNx7SbfSTGdOKP3OYcvx9sxuT6vRHzzhjdbqTQnxQ
         pQlA==
X-Gm-Message-State: AOJu0YzsUAOyqrdFZ2/eCM2b+VMb7cRBMeP2XizMPYa5wO0pwdbI6ooc
	yiGmm6AoeQkS68l8oAyJJAG8c1o4/1L2GrXDCtzG77gIisUaK8qfEtBq+ZT/27JHuTw=
X-Gm-Gg: AY/fxX4nRRaAGg96q5hIPaDvSDBNf32JTVF068w68eDMTZ4aRAVVfFdyiAKkCz2DILy
	lSUzJ51I9jJmQJavQIT1JFAyXH7S9QH+w46XpX/wsHF4hvxQV10ciKgo5UU2UejPbRS0xNXv5xr
	7GsOwRYzOf7T6aItpo0mga5OfKKtqtvuhHPBXzGducSUeCxPxc2Jnk7loCOqwe+FOrB7U9j4hYC
	RecAr9of3caRZ966NvVuKcjte0KFaJJ9xI2JWreTwjOiQo1VFzebUuAR7RlhphgnJknaY8UVY7m
	jyIL+JRvi2rJJk0itX/FuKLbd4kcgJxDFOEvURTXMdsotdYsTmHRihkEoJHQl03i0wip/OHhJ4z
	FccOCMrhese7YMDzkMYALzSPgRdJFBgiXsLF4uHBfq9IWaywqhH7d6a8VhZ3nbOkUl2EIgnaWy1
	hf/eKTOIVmilXW6wLf7B60
X-Received: by 2002:a5d:588d:0:b0:432:851d:35ef with SMTP id ffacd0b85a97d-4342c547dbamr2693184f8f.42.1768387422890;
        Wed, 14 Jan 2026 02:43:42 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:f2cc:bd72:2de3:86cd])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-432d286cdecsm35818726f8f.7.2026.01.14.02.43.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 02:43:42 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
Date: Wed, 14 Jan 2026 11:43:12 +0100
Subject: [PATCH v3 2/2] arm64: dts: amlogic: s4: fix mmc clock assignment
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260114-amlogic-s4-mmc-fixup-v3-2-a4d3e136b3f2@baylibre.com>
References: <20260114-amlogic-s4-mmc-fixup-v3-0-a4d3e136b3f2@baylibre.com>
In-Reply-To: <20260114-amlogic-s4-mmc-fixup-v3-0-a4d3e136b3f2@baylibre.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Xianwei Zhao <xianwei.zhao@amlogic.com>, Nick Xie <nick@khadas.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Jerome Brunet <jbrunet@baylibre.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1920; i=jbrunet@baylibre.com;
 h=from:subject:message-id; bh=4okCO5nn232mOuyf3EnlQ/xwKykNnPdvcOnvM4JNIi0=;
 b=owEBbQKS/ZANAwAKAeb8Dxw38tqFAcsmYgBpZ3NYatEmmShZe3hPb4vYNDwK6REixcdUgkwbM
 7DeSvwXB76JAjMEAAEKAB0WIQT04VmuGPP1bV8btxvm/A8cN/LahQUCaWdzWAAKCRDm/A8cN/La
 heV3D/4kz6OAG4nqNZrPcYi/eDYNZS74ELTkhDDo4ERom0PQCUECsVyo5vn7l8IBKFvvqqsWQk+
 M5NzJb01Nz7F6xPZZYX/kfAEW/Ck8M5dnYntGlDw4Ql/wAYOvvXKH3VN8oyQhM85pyK4VNAYyGN
 /fQ9UjWakylCiuu8MFMpw9HT1NS8ZIiKPDEA/OKskz7BxDAz3B3IDW8Yqy8c0GVU9qJNaEflgSh
 uVjPN0P8Xfw7SYgs0oonjvPqIzI5GLPW22tVYGyPQ9alKBs/W1tJopHGRPGF0oYGKadvYm3IEJm
 1ahCcoqEQprH+jIH5/0nyWLz55KwfZAgz9+0bD0OLmIkmKyFfC1mS9TCdHqokQTTJkzkPt3d7xX
 xgkArQtY626XXF7dw5GFHmNM0Mk+PWWsC0X1r1oHTexWL8xC8Peb0ZEvVXmIIq5evyDJsjdXWsG
 0xyezinOjekluDa8T6AX2g6UvBcKz0YtPTcw9q2je9e2uQ4TinMGdMtwcSzRYxIZcT5R0l6lFSC
 vbXXBzqlh+sLWfWgHU31GERsUI+XGwC4IesAHUa3PuBtP78rjRc911BpPGB1mTB6Q9he0ktwgUA
 vckGo1SoVivU0dqGjprYsv0zOhdjwE5LvKgY0d7q0t1WOIFTVU2QaMz3py22fL4sC3NV2OObaV6
 boYyUgagUYVU18w==
X-Developer-Key: i=jbrunet@baylibre.com; a=openpgp;
 fpr=F29F26CF27BAE1A9719AE6BDC3C92AAF3E60AED9

MMC A and C are mis-represented as having their "clkin0" input connected to
xtal while it is actually connected to the MMC clock, probably in an
attempt to provide 24MHz to the device on this input.

Fix this and assign the clock to 24MHz to actually provide the required
rate.

Fixes: 3ab9d54b5d84 ("arm64: dts: amlogic: enable some device nodes for S4")
Tested-by: Nick Xie <nick@khadas.com>
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-s4.dtsi | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-s4.dtsi b/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
index f314f07062ab..dfc0a30a6e61 100644
--- a/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
@@ -819,13 +819,16 @@ sdio: mmc@fe088000 {
 			reg = <0x0 0xfe088000 0x0 0x800>;
 			interrupts = <GIC_SPI 176 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&clkc_periphs CLKID_SDEMMC_A>,
-				 <&xtal>,
+				 <&clkc_periphs CLKID_SD_EMMC_A>,
 				 <&clkc_pll CLKID_FCLK_DIV2>;
 			clock-names = "core", "clkin0", "clkin1";
 			resets = <&reset RESET_SD_EMMC_A>;
 			cap-sdio-irq;
 			keep-power-in-suspend;
 			status = "disabled";
+
+			assigned-clocks = <&clkc_periphs CLKID_SD_EMMC_A>;
+			assigned-clock-rates = <24000000>;
 		};
 
 		sd: mmc@fe08a000 {
@@ -848,13 +851,16 @@ emmc: mmc@fe08c000 {
 			reg = <0x0 0xfe08c000 0x0 0x800>;
 			interrupts = <GIC_SPI 178 IRQ_TYPE_EDGE_RISING>;
 			clocks = <&clkc_periphs CLKID_NAND>,
-				 <&xtal>,
+				 <&clkc_periphs CLKID_SD_EMMC_C>,
 				 <&clkc_pll CLKID_FCLK_DIV2>;
 			clock-names = "core", "clkin0", "clkin1";
 			resets = <&reset RESET_NAND_EMMC>;
 			no-sdio;
 			no-sd;
 			status = "disabled";
+
+			assigned-clocks = <&clkc_periphs CLKID_SD_EMMC_C>;
+			assigned-clock-rates = <24000000>;
 		};
 	};
 };

-- 
2.47.3


