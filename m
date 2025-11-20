Return-Path: <devicetree+bounces-240846-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 93908C7652A
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 22:07:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id B0F502A054
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 21:07:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D083A30DEDA;
	Thu, 20 Nov 2025 21:06:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yrkGHTJw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD3FF2F7444
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 21:06:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763672791; cv=none; b=atdV+tdoXS+J1AaWaXmC6Gbu+JV4t39m2Pd/UvTocXqXcqRoW934HGuqPHsj2Pw8cs3SmjJkjNhGV+8anI90qzWV3fBhRmei1kk1ZDSVDoxPR/QHi9a4aMHIdC6epI8iK30do04GBMnDXtNVlM9+06dFa31qjHia+xn0/y8fcpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763672791; c=relaxed/simple;
	bh=aNCzham8+aVa4ydfofiJCpY6230eXXu6sfYAAe0zyFc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QYOydC9swOrtfRlCOeybyn/Sm7BozbefARZuSuUBXBMRpRazU8lAu19jA33EdSIYJhAZt9SWdcysp4lQv/o+r16whGF8jYIUIrjnarqWPfP01S2Rrhlec3lhEWn3tif49ELWuPHIJjgxnGGHZpZZ7ebCY1c57fNVopDULmuyIO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yrkGHTJw; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-477a219dbcaso13013565e9.3
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 13:06:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763672787; x=1764277587; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qr/XskJwABWEjaSIE0O5A6j6G7kGiwuQg/lwCc3XY9w=;
        b=yrkGHTJwfyha6n9pxPdVG0RvPterHAVbnHcS9jQp6R09X2kr6b2vnhwjYNV+UPUdM0
         jIuadVa7x6u6hgPoR2+oOfHWRKCy8qAVn+vJm/+XO/fGMzryoc9HCR/58QJi4onCD0VM
         vglKXupEsWODIfIZj1GyZ0bFxpzE+09CmkxbHXxZmwsQoLJK30jHStMF/C1hrzlG802b
         y5PYOw9NyMYSNI+nVhyqs8A+LXnDHzXo6n1sAt05UalVXAL0oF+AwT89TTNp4Wzn+mgs
         cpQD0WOI58JPhfk6A4zetPbr6omxPffhqdk/GG08Fa1GR4BdhpCx2CVEYtdVG+ue1LRM
         1QZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763672787; x=1764277587;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qr/XskJwABWEjaSIE0O5A6j6G7kGiwuQg/lwCc3XY9w=;
        b=LQr3kSfSsPbCfTvdVVoVUGxJ9ioJbPgFT4sPk+rB8wWC/v4yd42OxT/lfnvbz/xD11
         oA+M358Fe/yLeDkefaCAFgDhvHTdmdCfIKfA6BKD9aDYqH4bu2IMMBgML+Xvrcd98WSY
         DFsJp64WnGmsoEjD3coNkUxjlwsz6I4mV+vvcMsy2FT435eGvMLiFJWhOLlBr3gUPtH5
         bGY6OZZEeBh2UKs11TGnkKveLiuUZkPAK4QB9PWlGyDHwuHLoy6Og2/mTpL23XwpiSDC
         nV2qbGa507qxXlOU8BMnTsLXx/FTAkcKjdMWONU2VGi2E/ShhUHPVdusxPnfjVTB2pIa
         FnSw==
X-Forwarded-Encrypted: i=1; AJvYcCX3hKHEqJG6dpN0QhnzRSIdVwoKA2A5ou8bPb528UhJmWlYGCoSTptq3fz8ZDNGSj8XQP/5KlV2CdBH@vger.kernel.org
X-Gm-Message-State: AOJu0Ywekhh3fyUc2x7UVdjhxRsb0iCW9Pc3mDUqkoqUKLLOpkksot9B
	P3POnwziAsloYLaKbjJfIJ8a6JOOCToLIFcvi4TsqEiisSGV3Kb+PLU4JctA+DYeJ2s=
X-Gm-Gg: ASbGncuY2GZqfoq2LgmIQG/PXVnBnlX5uPzPscOk5KOrXI7RymHUsdAx9NnEJlMFEae
	T1gY5/ftwErjSVDRSwTtxtpYBIwuLqEB6i7Xy+KIxdgyjlGb+jVlxga7etWoISQZZ9GrvdSzv44
	pjLjT0GXiEQJpRIButaVmi6ltanzVNQG315JvjPkiyzbMjOD/NMOpyAeM7YZcVzXGSqbTkJzG3p
	xrc+UebXF4yb6rq3gwbkTg3bTBB7RtMGdy9nMScTgxcm9xeA+ZSQ0/cK7pTVeyjSTCtJRTpOhSa
	nK2lY3FPcqU/1YcBCr5b4DrS3aGaBfliE9ONgsmug9cPa+B8rU5NIdfx/xWf3NkYu6IDCO272Et
	fy8P69zjQdST7p0l0xLytI9NFVtnmJ2OwDDFdrY+SAKI6Bx/NI5m/ixU5nYTzCX2sMmGB/dkIdf
	5tzzsNL7aRokCRQiJFos34p9dkZpB0L9DP54xuGDY=
X-Google-Smtp-Source: AGHT+IEz77AFQRfOz9D9vMUdFJ4yGf63OlGCx9aS4W+OUx3VSIJC3ZvMc8VWi7zfzOHOEQpRahi04w==
X-Received: by 2002:a05:600c:4e8e:b0:477:5aaa:57a3 with SMTP id 5b1f17b1804b1-477c017512dmr1362985e9.2.1763672787259;
        Thu, 20 Nov 2025 13:06:27 -0800 (PST)
Received: from gpeter-l.roam.corp.google.com ([150.228.9.80])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7f2e5b6sm7321287f8f.1.2025.11.20.13.06.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Nov 2025 13:06:26 -0800 (PST)
From: Peter Griffin <peter.griffin@linaro.org>
Date: Thu, 20 Nov 2025 21:06:13 +0000
Subject: [PATCH 3/4] arm64: dts: exynos: gs101: add cmu_dpu and sysreg_dpu
 dt nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251120-dpu-clocks-v1-3-11508054eab8@linaro.org>
References: <20251120-dpu-clocks-v1-0-11508054eab8@linaro.org>
In-Reply-To: <20251120-dpu-clocks-v1-0-11508054eab8@linaro.org>
To: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>, 
 kernel-team@android.com, Will McVicker <willmcvicker@google.com>, 
 Juan Yescas <jyescas@google.com>, Doug Anderson <dianders@google.com>, 
 Peter Griffin <peter.griffin@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1465;
 i=peter.griffin@linaro.org; h=from:subject:message-id;
 bh=aNCzham8+aVa4ydfofiJCpY6230eXXu6sfYAAe0zyFc=;
 b=owEBbQKS/ZANAwAKAc7ouNYCNHK6AcsmYgBpH4LLBaSMM+CzWBnI+jbY8yriXjZIgzTuqgBbt
 XOueJtJHVmJAjMEAAEKAB0WIQQO/I5vVXh1DVa1SfzO6LjWAjRyugUCaR+CywAKCRDO6LjWAjRy
 uultD/9/WEZe1LMumFGfEPAYEzFSldfvB0k+LVj0rv0zPwwvTx9bWMSMphDpfG/vtDnRjDlqHq0
 lVjj0ycrXuuHr8qSj+CfpWyJGAgMOX5Q6zyVPqRIZSFZZ6GKXhhlOpJFMiX/EefDQ3R3MRHTqtm
 gBN2qVq62RHuC9N6ML/tpDy8FFyZowi079wwudvgH3vMIxzofB8uDOco2ZmtLvuB3ljgsvxqjre
 S32IFyuScIqC7eGNn6cZSOO6wkNBMQ+8jE8JLcUyCEcfQt/MSSG8AJtzVRPHm3H9frQJ9kxvt9u
 pPtPiTzDev4YVKvj3JuP92W2fIBDa+w76LS2/qXOtfeVMLYzxauowIOoiuIT7pdX3KBcw//+G4F
 wZlpQQHKfQ0emHnE9uy317YaAp/8Bn4tNq5VvJnIy4MqUnhE+3+W3O9gAziK4CM7ls4KrkyaNIz
 yty3Erw/zBNTmXn+XThp2u3tMi+uyKczmtBJVAVJI202nz4CihHA2N2DUscKw54L4ev8isGmM/+
 4ZrOzOQGkcbk6daBOTfGxx8xe/6mQEvjVp0eFnIpSxYz1fgl7zi5iGcA7cjdGGjJhdJYtxbC3RA
 tWH3oYeUKBM/Tym1qSnnfWUt8f8NXpVuUJSgyp/M7h69CXLd+qezf2g+Vaj9rLeyW64suoUKNBH
 GIJKENkgYHs92ag==
X-Developer-Key: i=peter.griffin@linaro.org; a=openpgp;
 fpr=0EFC8E6F5578750D56B549FCCEE8B8D6023472BA

Enable the cmu_dpu clock management unit. It feeds some of the display
IPs. Additionally add the sysreg_dpu node which contains the
BUSCOMPONENT_DRCG_EN and MEMCLK registers required by cmu_dpu to enable
dynamic root clock gating of bus components.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index c39ca4c4508f046ca16ae86be42468c7245561b8..ac326db437fa8fe437cf11167bd8c1ce5c2ec186 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -1798,6 +1798,23 @@ pinctrl_gsacore: pinctrl@17a80000 {
 			status = "disabled";
 		};
 
+		cmu_dpu: clock-controller@1c000000 {
+			compatible = "google,gs101-cmu-dpu";
+			reg = <0x1c000000 0x10000>;
+			#clock-cells = <1>;
+
+			clocks = <&ext_24_5m>,
+				 <&cmu_top CLK_DOUT_CMU_DPU_BUS>;
+			clock-names = "oscclk", "bus";
+			samsung,sysreg = <&sysreg_dpu>;
+		};
+
+		sysreg_dpu: syscon@1c020000 {
+			compatible = "google,gs101-dpu-sysreg", "syscon";
+			reg = <0x1c020000 0x10000>;
+			clocks = <&cmu_dpu CLK_GOUT_DPU_SYSREG_DPU_PCLK>;
+		};
+
 		cmu_top: clock-controller@1e080000 {
 			compatible = "google,gs101-cmu-top";
 			reg = <0x1e080000 0x10000>;

-- 
2.52.0.rc2.455.g230fcf2819-goog


