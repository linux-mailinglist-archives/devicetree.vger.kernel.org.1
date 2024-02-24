Return-Path: <devicetree+bounces-45603-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 48DD0862786
	for <lists+devicetree@lfdr.de>; Sat, 24 Feb 2024 21:24:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 01E552827C6
	for <lists+devicetree@lfdr.de>; Sat, 24 Feb 2024 20:24:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D25FE5380D;
	Sat, 24 Feb 2024 20:21:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MJIcIsEU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com [209.85.161.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 179164CDEB
	for <devicetree@vger.kernel.org>; Sat, 24 Feb 2024 20:21:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708806069; cv=none; b=nWCDUIG1bmOEJgl/6Gl1shTQp8UqHQZX8o4GDWBw0gokmnnxd0ktbknrsq12RRTxA976UrQ7xmymTiCoGEnjxv7I0y0633AUcOlo+lPr9wW0E9Ch7BxVy8ZkQMOIFOQNnG0lzh3YlGg58McrFcV8aJwKetbzRIJowYJM3isW+dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708806069; c=relaxed/simple;
	bh=Mv0a3gOoxI7PWU3YTmYf9kqa0HHrZlHBLeIQmvrLoHo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Qyr0qIkUl/WybjLjjmz1Udp6GrdGS1Nvy4OLdVK9JLiqNBOYIwbtYOTA5/d7r6BLL9B9+jeeLOZrsRGJ8EO6sTdYfCb7ASTp4pS5i42dKe51LuYupIkC0KjhBheZS+oMgY5xHFgk8qDyZyEIJsxVNVIWYWuH60FTlwRJxK7n2gI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MJIcIsEU; arc=none smtp.client-ip=209.85.161.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f53.google.com with SMTP id 006d021491bc7-59ffbff2841so882006eaf.2
        for <devicetree@vger.kernel.org>; Sat, 24 Feb 2024 12:21:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708806066; x=1709410866; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qMCmyVuJ+YwjHrCIo4ko9XwoXKrRHcalREosYeHxNXc=;
        b=MJIcIsEU8pZIjGcDojuGsJDb19QAYEoqwOCm/zlvHWn34Sq5tJShnDw1XD6k0HRdfV
         t5JAOVwgF9q8QbqeW+ViJgAb4+T/J28bMV5ka0yi/WWA/t29jjKlRwx5kODfjDuRx5w5
         Q1prXntbMBP05I5vh1gGFP9nwL+X2E1dTDsDwyzn7Hi7Ol7OyNJ6XFOwVpw65uzL9nQq
         eemm4JWb8Py3dTDAsamGveNsJ3Tz9cy47GBnY86mAnHHjQtngqT5wUh7m9OA4KHVIiOK
         aPItbrpoqfZqGOHz4ZpYzS/Z84fbpNt6gfTM0P76QIhEaAXhm1zS1VhmMAso2qt/dseY
         ySbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708806066; x=1709410866;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qMCmyVuJ+YwjHrCIo4ko9XwoXKrRHcalREosYeHxNXc=;
        b=XT/KeKWwKtZVEu20bqnVv8R4HcU2RYiCfurjB/Mcr+XIx+7BiZychZchr+3qiFpKCl
         Lf3gIHCF1rEEXCZVcD4ku5/dCU4oaHyICN96Zxvqs62lPGAIE7njyXjMONXVMGY2Koey
         lU0DYi0REW75cyU+mOWcrddGBPwFMAUO/H3U4/QYooC1gI3v6SkmJlzEioucbG1Z0+8X
         jEPoxO1CFvvDWKqWgqfyv72jWLSWmcHc6t6eGHVgfLYwcQeC8MoMzVE3Qsk7hBu0nfIs
         Eo7LDiV6r0ZwuVyzLyiIYw6MSF3NftuER3qXHHuspm8vU6MGg5cK09HJAtJPTWL5cZ+X
         L9OQ==
X-Forwarded-Encrypted: i=1; AJvYcCWZ19SIwgbjMd4I0h04//G7ZZ81VRtOj6cmxzwfXtoabWPbLhrKxVeGv5MqnKn3bcR67JDtLt1LfWs6eU8PZi17sDAIMziinXf21w==
X-Gm-Message-State: AOJu0Yy1Xc4pe4/SSsip6pfcy/XkFcUOEOZZ2ivQzfdLQHbQWDuenaAr
	ysdI5ayuhbOuHE8UmAOz5nO/V5GYTPbiOHQRD20YaRbsZTW5aZpMdxnKWxtqjtk=
X-Google-Smtp-Source: AGHT+IHFNAI0Xv1tyiOZGKweUmEOjy5ItYWEMGeKD0/G3QST9r+0j6ysSLDAuOz/E3BwJwri2VJemA==
X-Received: by 2002:a05:6820:296:b0:5a0:4598:7a90 with SMTP id q22-20020a056820029600b005a045987a90mr583929ood.5.1708806066047;
        Sat, 24 Feb 2024 12:21:06 -0800 (PST)
Received: from localhost ([136.62.192.75])
        by smtp.gmail.com with ESMTPSA id e30-20020a4a91de000000b005a04afb627fsm450503ooh.24.2024.02.24.12.21.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Feb 2024 12:21:05 -0800 (PST)
From: Sam Protsenko <semen.protsenko@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>
Cc: Alim Akhtar <alim.akhtar@samsung.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Tomasz Figa <tomasz.figa@gmail.com>,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 15/15] arm64: dts: exynos: Add CPU clocks for Exynos850
Date: Sat, 24 Feb 2024 14:20:53 -0600
Message-Id: <20240224202053.25313-16-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240224202053.25313-1-semen.protsenko@linaro.org>
References: <20240224202053.25313-1-semen.protsenko@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Define CPU cluster 0 and CPU cluster 1 CMUs, which generate CPU clocks,
and add corresponding CPU clocks to CPU nodes.

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
Changes in v3:
  - none

Changes in v2:
  - Added "for Exynos850" part to the commit title

 arch/arm64/boot/dts/exynos/exynos850.dtsi | 26 +++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/exynos850.dtsi b/arch/arm64/boot/dts/exynos/exynos850.dtsi
index 2ba67c3d0681..0706c8534ceb 100644
--- a/arch/arm64/boot/dts/exynos/exynos850.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos850.dtsi
@@ -93,6 +93,8 @@ cpu0: cpu@0 {
 			compatible = "arm,cortex-a55";
 			reg = <0x0>;
 			enable-method = "psci";
+			clocks = <&cmu_cpucl0 CLK_CLUSTER0_SCLK>;
+			clock-names = "cluster0_clk";
 		};
 		cpu1: cpu@1 {
 			device_type = "cpu";
@@ -117,6 +119,8 @@ cpu4: cpu@100 {
 			compatible = "arm,cortex-a55";
 			reg = <0x100>;
 			enable-method = "psci";
+			clocks = <&cmu_cpucl1 CLK_CLUSTER1_SCLK>;
+			clock-names = "cluster1_clk";
 		};
 		cpu5: cpu@101 {
 			device_type = "cpu";
@@ -254,6 +258,28 @@ cmu_peri: clock-controller@10030000 {
 				      "dout_peri_uart", "dout_peri_ip";
 		};
 
+		cmu_cpucl1: clock-controller@10800000 {
+			compatible = "samsung,exynos850-cmu-cpucl1";
+			reg = <0x10800000 0x8000>;
+			#clock-cells = <1>;
+
+			clocks = <&oscclk>, <&cmu_top CLK_DOUT_CPUCL1_SWITCH>,
+				 <&cmu_top CLK_DOUT_CPUCL1_DBG>;
+			clock-names = "oscclk", "dout_cpucl1_switch",
+				      "dout_cpucl1_dbg";
+		};
+
+		cmu_cpucl0: clock-controller@10900000 {
+			compatible = "samsung,exynos850-cmu-cpucl0";
+			reg = <0x10900000 0x8000>;
+			#clock-cells = <1>;
+
+			clocks = <&oscclk>, <&cmu_top CLK_DOUT_CPUCL0_SWITCH>,
+				 <&cmu_top CLK_DOUT_CPUCL0_DBG>;
+			clock-names = "oscclk", "dout_cpucl0_switch",
+				      "dout_cpucl0_dbg";
+		};
+
 		cmu_g3d: clock-controller@11400000 {
 			compatible = "samsung,exynos850-cmu-g3d";
 			reg = <0x11400000 0x8000>;
-- 
2.39.2


