Return-Path: <devicetree+bounces-36613-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 905BF841FBA
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 10:38:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4DB5F28C6F9
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 09:38:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31E0D60DF9;
	Tue, 30 Jan 2024 09:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JLz4ZCXS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215ED60895
	for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 09:38:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706607513; cv=none; b=ejpctUOyMsbGVmAc8eG5z/vWGup5Vhs/SLcT5fcE2tP0fna07E8xn4FYwbadu6Ej9DHJ6/ubdTxIfnk2ZVuDlYqFOj9cWyY0F5PFzBP4TvmPEQdlGSFOUvXfp8iMvzWhhXEwjoIgj6fvd8QiQP/hm7dXltZhw6oog5wrOOa5yFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706607513; c=relaxed/simple;
	bh=YItbowKTCSpjXbcY9OEx7S8QG6VDMLXlbbJ6Uw2+GDc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=RjFWRKJ5q6R8YAsCT0c7J1ZiMQ0Zvl7gbmmwkAne8Hp0ua51RQ4lIHGcYPLSB+I9JK3/w0O7ViMwOfj8EIqYTI5YgqW/1G/uqLQZHdbE7XDNYk+6x+rS4gfc/OF0VvnhpCj1Bo9VO3+plG5z6lN7LsXCIcPm1TGAa/kBHPmjaNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JLz4ZCXS; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-55eed368b0bso3880571a12.0
        for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 01:38:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706607508; x=1707212308; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RQzBQ4TASuzmiR4SqIUWePUdwbCtW+Gyj+OrWEuWMsY=;
        b=JLz4ZCXSPKxYF9CqY5APwJC483uDdN9VxtrggxunBRSZv040rHPpx4kyJ1g02cDlT4
         xS+InF6qncZtJFcajVYBzF//PHSta0AJKd4Zul64vgyKSlY2cbf6uh7d5ObhLTZOsmyd
         a/V3nIp1nhO+ughVs4EdzNWt+1Fa8v112KCd4EcNqqMPZXSmncFM/1lnEAYCbtVBgv1t
         rqemo+4HwJhHdVLPSWit86JzL4WRelyqFNg3PYUMGu1tignXkjGIG1wx/fh8EMmSVzs7
         NxINMBtrrCeqJTJYxZ5eVX/QgTe2tU28nGp9ksN0w2POR/+9Tykm/RCBL7zsuWXIZkk0
         K8DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706607508; x=1707212308;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RQzBQ4TASuzmiR4SqIUWePUdwbCtW+Gyj+OrWEuWMsY=;
        b=GItplAFIH2r7yjXTXFR3xx5tswNxZ6ydxj1wHYkMT/ND/hUMoJoFVLy4jcvDnCg53q
         SW5N9C0ybXr2gOmaqtwROKaX6Z3sOToPL7qzPdNOsYpPTHUDtIkDnYiaYhg+FPiQbXFI
         8b7gwJ8tWUJmxsH8F2j0LT2h0qxJqy+nxnF7FSFgLiHBdOd4JJljpvGF6q4mexH0Kth+
         MMi/OxK6+qj5XZTztkxYWQruR4T+w+f/dKWZeUPkxDsWHsUjShz8Khf1aGmAUIYi6ro3
         zt/8VVm+lxw0vbUPDXCeuvCAuPkO46UtSXGKdsLEOX3Usr+Ojzs/3Q/H0OnjUI1WMlym
         tj8Q==
X-Gm-Message-State: AOJu0YwlaAu7PM0fFe4KCSsybppebxliz8qxrmytJTk7XRzXI4I2srNL
	TOcz31QikNZeWPKU6QKKxrRLOgjC2NLXiP6Fq6brZtwBG7ZGkZh1TRZEqrgtW6s=
X-Google-Smtp-Source: AGHT+IFTTT2SbZmkNKnDsCZ1HUru53gHa0hRj5NRGgC3qt8zxFK1NYKcOop/xbSK8ch3lSKW2/Vf2g==
X-Received: by 2002:a05:6402:14d1:b0:55d:43e0:93d9 with SMTP id f17-20020a05640214d100b0055d43e093d9mr777384edx.20.1706607508436;
        Tue, 30 Jan 2024 01:38:28 -0800 (PST)
Received: from puffmais.c.googlers.com.com (94.189.141.34.bc.googleusercontent.com. [34.141.189.94])
        by smtp.gmail.com with ESMTPSA id q10-20020aa7cc0a000000b0055ef56f4575sm2281225edt.39.2024.01.30.01.38.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jan 2024 01:38:28 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>
To: peter.griffin@linaro.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
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
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	=?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>
Subject: [PATCH v2 3/6] arm64: dts: exynos: gs101: use correct clocks for usi8
Date: Tue, 30 Jan 2024 09:36:42 +0000
Message-ID: <20240130093812.1746512-4-andre.draszik@linaro.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
In-Reply-To: <20240130093812.1746512-1-andre.draszik@linaro.org>
References: <20240130093812.1746512-1-andre.draszik@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Wrong pclk clocks have been used in this usi8 instance here. For USI
and I2C, we need the ipclk and pclk, where pclk is the bus clock.
Without it, nothing can work.

It is unclear what exactly is using USI8_USI_CLK, but it is not
required for the IP to be operational at this stage, while pclk is.
This also brings the DT in line with the clock names expected by the
usi and i2c drivers.

Update the DTSI accordingly.

Fixes: 6d44d1a1fb62 ("arm64: dts: exynos: gs101: define USI8 with I2C configuration")
Signed-off-by: André Draszik <andre.draszik@linaro.org>
Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>
Reviewed-by: Tudor Ambarus <tudor.ambarus@linaro.org>
Tested-by: Tudor Ambarus <tudor.ambarus@linaro.org>

---
v2:
* add an empty line to commit message
* collect Reviewed-by: Tested-by: tags
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index bc251e565be6..e5b665be2d62 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -380,7 +380,7 @@ usi8: usi@109700c0 {
 			ranges;
 			#address-cells = <1>;
 			#size-cells = <1>;
-			clocks = <&cmu_peric0 CLK_GOUT_PERIC0_CLK_PERIC0_USI8_USI_CLK>,
+			clocks = <&cmu_peric0 CLK_GOUT_PERIC0_PERIC0_TOP0_PCLK_7>,
 				 <&cmu_peric0 CLK_GOUT_PERIC0_PERIC0_TOP0_IPCLK_7>;
 			clock-names = "pclk", "ipclk";
 			samsung,sysreg = <&sysreg_peric0 0x101c>;
@@ -397,7 +397,7 @@ hsi2c_8: i2c@10970000 {
 				pinctrl-names = "default";
 				pinctrl-0 = <&hsi2c8_bus>;
 				clocks = <&cmu_peric0 CLK_GOUT_PERIC0_PERIC0_TOP0_IPCLK_7>,
-					 <&cmu_peric0 CLK_GOUT_PERIC0_CLK_PERIC0_USI8_USI_CLK>;
+					 <&cmu_peric0 CLK_GOUT_PERIC0_PERIC0_TOP0_PCLK_7>;
 				clock-names = "hsi2c", "hsi2c_pclk";
 				status = "disabled";
 			};
-- 
2.43.0.429.g432eaa2c6b-goog


