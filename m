Return-Path: <devicetree+bounces-163360-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B737AA7C724
	for <lists+devicetree@lfdr.de>; Sat,  5 Apr 2025 02:40:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2C2921B6079B
	for <lists+devicetree@lfdr.de>; Sat,  5 Apr 2025 00:40:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 441A1D528;
	Sat,  5 Apr 2025 00:40:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b="bF4SgT/r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8292E7483
	for <devicetree@vger.kernel.org>; Sat,  5 Apr 2025 00:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743813625; cv=none; b=twjlq3kpA8J1+t3+5vrzW5FB0FXOVPNst8qDg6jE240gXdVIJ/EGQ+0i7RTyrlrmg0mJO4vSI+MDzCdCtK8N9lv3I4WiROApm9Bwe+iMRhQhYoMOj0uCHitBjdSYzUDgzr+jXmyWI34xk/3+Hmwp82JLG1/p1Kgrs9BOcyL8E7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743813625; c=relaxed/simple;
	bh=/lGBp+3mCzEF7qqdWVEX5aRaz0EpMI4Rhto4vesOeU8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uJp7f8hWmYYmcGdeqipe20RF0UUMv+Q0Ko8rfRAXGssSuR9F8DMiZebHan0PTf7YsTBHi6GF9+ZIX5Zkaf5BfNDDMl00uefCz6MJ22LpV87n22lFbuw6VnHHKm48Gc3POluo+6P/RFP385+BYMKZMoA09xpjyzNikxajjRHaxas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com; spf=none smtp.mailfrom=pdp7.com; dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b=bF4SgT/r; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=pdp7.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-2279915e06eso26146775ad.1
        for <devicetree@vger.kernel.org>; Fri, 04 Apr 2025 17:40:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pdp7-com.20230601.gappssmtp.com; s=20230601; t=1743813622; x=1744418422; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=KfoL6a33lyE8RWsO9SgyVcz36aO/OVd9DKI3BuJvE6Q=;
        b=bF4SgT/rIEBNtwS0ilXlYlvl82geoLSngL/K/CcPJSuvndLVLTi56k52ujynWkTECi
         p1mA6m0wBkwGAdonrZLrVAqYM/u442muPDj4fOn9kgWK9uLBmZwVYs3K56VYB/MpRXyp
         b5SXGVE+WDxIbP7zO2ES835aOMJxE6dNABXG2IW9QDgl+jG+cNAkFomkpOj8NXeqxUDn
         hRGDJl+eXmpEqlY/NTbov+WdwnhA5p3ll5PYAZfxhOfyT+9crrAKR7kRJ+Ap40YDTFKw
         nwQ3usUMI3T7JfH+hTabNMLp6COgHaoe+qIb14ZGbv7eQRpYIRl4BgrysBTbvPuVvxrj
         QHHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743813622; x=1744418422;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KfoL6a33lyE8RWsO9SgyVcz36aO/OVd9DKI3BuJvE6Q=;
        b=QkWXD4BCxBH6DRd4ctdY0dJcFzUhc1sSIqjhKAs8HWE07hKfJyc142DzLtuUWGskJB
         b1IFiFw0v7CDivKS21TRWxFQabu6vzQyxgKysYEylOLGHlh3sFqJZ+RXA+iJEJhOZ4yu
         TsoY3noLxGXMUQGNJ9bCmxYWfaSfUfL6AEMvZwlWTFPFIld6mBDMbNX5bpj8MMD0+km4
         ZAh/sjY4fkNBlGLA4NMptJpt/lcR2cOk2xHdZXef4QxaroN1QSqJJ4eEh9iN5E85+HFg
         ZVy4TflgISQASQJWJFpOWSyC39cr/3QozIH9WV4YRVcEfxeEvM48rPTqP1kb21rGaUzb
         zLLg==
X-Forwarded-Encrypted: i=1; AJvYcCUg1LoRvv3MGNpW/KGpSBz6nwTlClRE2/FsHChaDL0c9+y4JHqC/k+6D+X/IT2xrvoUdnVYlnJDkL4t@vger.kernel.org
X-Gm-Message-State: AOJu0YzZzq+MoGEZCDfkebp1bolv5I8X5bbSna1NGBVxpqzdGkynC8ss
	3rICzxU4fdBCAzxEgFIvFEjgaLwfIzsbACocY+jj+31h82RTyQZ+dyayTDrOx6M=
X-Gm-Gg: ASbGncsrjY8On6R0m0mfCAt2Lt9A5Q4thEChTQ8ymks0X5ooPadu7RtXVf0VC4wCX44
	z67lHF4/IQR+jQ93vxbAr7xUpTLhyBC3HKQ3smWemiITJhvHb9nilBCD8xilHXLD9+cd6QyySSW
	VPWsUwNm0cSoM1zD6bCyJeuVhVm7qXZX1ySk5w85VF4l0O8briSO+86/Mf+qjTGVQBpo3IQJUqG
	d/6CO9IiJzb1n0jCpyn6XJjwhbFSit4EZujOhiWwxhcG30YBLKUtSqQ5TS1O8KQljSt3PDFfhWd
	E/Iwab2vUdwLsWmb+J+XyyZN
X-Google-Smtp-Source: AGHT+IFLlRqb+B8Il0xSrLbIQ8LNYlVWESSp8k1D2Bpzp3CZ/lAiYjSrvaoBZJx+MHW3Im1cvg/mxw==
X-Received: by 2002:a17:902:ec86:b0:21f:5cd8:c67 with SMTP id d9443c01a7336-22a8a080701mr71816545ad.31.1743813621742;
        Fri, 04 Apr 2025 17:40:21 -0700 (PDT)
Received: from x1 ([97.115.235.21])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-739d97d1be1sm4092468b3a.8.2025.04.04.17.40.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Apr 2025 17:40:21 -0700 (PDT)
Date: Fri, 4 Apr 2025 17:40:19 -0700
From: Drew Fustini <drew@pdp7.com>
To: Michal Wilczynski <m.wilczynski@samsung.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, guoren@kernel.org,
	wefu@redhat.com, paul.walmsley@sifive.com, palmer@dabbelt.com,
	aou@eecs.berkeley.edu, alex@ghiti.fr, jszhang@kernel.org,
	p.zabel@pengutronix.de, m.szyprowski@samsung.com,
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH v7 2/3] clk: thead: Add clock support for VO subsystem in
 T-HEAD TH1520 SoC
Message-ID: <Z/B78yemvvSS1oLe@x1>
References: <20250403094425.876981-1-m.wilczynski@samsung.com>
 <CGME20250403094432eucas1p112aada697802092266bc36ef863f4299@eucas1p1.samsung.com>
 <20250403094425.876981-3-m.wilczynski@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250403094425.876981-3-m.wilczynski@samsung.com>

On Thu, Apr 03, 2025 at 11:44:24AM +0200, Michal Wilczynski wrote:
> The T-Head TH1520 SoC integrates a variety of clocks for its subsystems,
> including the Application Processor (AP) and the Video Output (VO) [1].
> Up until now, the T-Head clock driver only supported AP clocks.
> 
> Extend the driver to provide clock functionality for the VO subsystem.
> At this stage, the focus is on implementing the VO clock gates, as these
> are currently the most relevant and required components for enabling and
> disabling the VO subsystem functionality.  Future enhancements may
> introduce additional VO-related clocks as necessary.
> 
> Link: https://openbeagle.org/beaglev-ahead/beaglev-ahead/-/blob/main/docs/TH1520%20System%20User%20Manual.pdf [1]
> 
> Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>
> ---
>  drivers/clk/thead/clk-th1520-ap.c | 196 +++++++++++++++++++++++++-----
>  1 file changed, 168 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/clk/thead/clk-th1520-ap.c b/drivers/clk/thead/clk-th1520-ap.c
> index 4c9555fc6184..ebfb1d59401d 100644
> --- a/drivers/clk/thead/clk-th1520-ap.c
> +++ b/drivers/clk/thead/clk-th1520-ap.c
> @@ -847,6 +847,67 @@ static CCU_GATE(CLK_SRAM1, sram1_clk, "sram1", axi_aclk_pd, 0x20c, BIT(3), 0);
>  static CCU_GATE(CLK_SRAM2, sram2_clk, "sram2", axi_aclk_pd, 0x20c, BIT(2), 0);
>  static CCU_GATE(CLK_SRAM3, sram3_clk, "sram3", axi_aclk_pd, 0x20c, BIT(1), 0);
>  
> +static CCU_GATE(CLK_AXI4_VO_ACLK, axi4_vo_aclk, "axi4-vo-aclk",
> +		video_pll_clk_pd, 0x0, BIT(0), 0);

Is CLKCTRL_GPU_MEM_CLK_EN (bit 2) skipped on purpose?

> +static CCU_GATE(CLK_GPU_CORE, gpu_core_clk, "gpu-core-clk", video_pll_clk_pd,
> +		0x0, BIT(3), 0);
> +static CCU_GATE(CLK_GPU_CFG_ACLK, gpu_cfg_aclk, "gpu-cfg-aclk",
> +		video_pll_clk_pd, 0x0, BIT(4), 0);
> +static CCU_GATE(CLK_DPU_PIXELCLK0, dpu0_pixelclk, "dpu0-pixelclk",
> +		video_pll_clk_pd, 0x0, BIT(5), 0);
> +static CCU_GATE(CLK_DPU_PIXELCLK1, dpu1_pixelclk, "dpu1-pixelclk",
> +		video_pll_clk_pd, 0x0, BIT(6), 0);
> +static CCU_GATE(CLK_DPU_HCLK, dpu_hclk, "dpu-hclk", video_pll_clk_pd, 0x0,
> +		BIT(7), 0);
> +static CCU_GATE(CLK_DPU_ACLK, dpu_aclk, "dpu-aclk", video_pll_clk_pd, 0x0,
> +		BIT(8), 0);
> +static CCU_GATE(CLK_DPU_CCLK, dpu_cclk, "dpu-cclk", video_pll_clk_pd, 0x0,
> +		BIT(9), 0);
> +static CCU_GATE(CLK_HDMI_SFR, hdmi_sfr_clk, "hdmi-sfr-clk", video_pll_clk_pd,
> +		0x0, BIT(10), 0);
> +static CCU_GATE(CLK_HDMI_PCLK, hdmi_pclk, "hdmi-pclk", video_pll_clk_pd, 0x0,
> +		BIT(11), 0);
> +static CCU_GATE(CLK_HDMI_CEC, hdmi_cec_clk, "hdmi-cec-clk", video_pll_clk_pd,
> +		0x0, BIT(12), 0);
> +static CCU_GATE(CLK_MIPI_DSI0_PCLK, mipi_dsi0_pclk, "mipi-dsi0-pclk",
> +		video_pll_clk_pd, 0x0, BIT(13), 0);
> +static CCU_GATE(CLK_MIPI_DSI1_PCLK, mipi_dsi1_pclk, "mipi-dsi1-pclk",
> +		video_pll_clk_pd, 0x0, BIT(14), 0);
> +static CCU_GATE(CLK_MIPI_DSI0_CFG, mipi_dsi0_cfg_clk, "mipi-dsi0-cfg-clk",
> +		video_pll_clk_pd, 0x0, BIT(15), 0);
> +static CCU_GATE(CLK_MIPI_DSI1_CFG, mipi_dsi1_cfg_clk, "mipi-dsi1-cfg-clk",
> +		video_pll_clk_pd, 0x0, BIT(16), 0);
> +static CCU_GATE(CLK_MIPI_DSI0_REFCLK, mipi_dsi0_refclk, "mipi-dsi0-refclk",
> +		video_pll_clk_pd, 0x0, BIT(17), 0);
> +static CCU_GATE(CLK_MIPI_DSI1_REFCLK, mipi_dsi1_refclk, "mipi-dsi1-refclk",
> +		video_pll_clk_pd, 0x0, BIT(18), 0);
> +static CCU_GATE(CLK_HDMI_I2S, hdmi_i2s_clk, "hdmi-i2s-clk", video_pll_clk_pd,
> +		0x0, BIT(19), 0);
> +static CCU_GATE(CLK_X2H_DPU1_ACLK, x2h_dpu1_aclk, "x2h-dpu1-aclk",
> +		video_pll_clk_pd, 0x0, BIT(20), 0);
> +static CCU_GATE(CLK_X2H_DPU_ACLK, x2h_dpu_aclk, "x2h-dpu-aclk",
> +		video_pll_clk_pd, 0x0, BIT(21), 0);
> +static CCU_GATE(CLK_AXI4_VO_PCLK, axi4_vo_pclk, "axi4-vo-pclk",
> +		video_pll_clk_pd, 0x0, BIT(22), 0);
> +static CCU_GATE(CLK_IOPMP_VOSYS_DPU_PCLK, iopmp_vosys_dpu_pclk,
> +		"iopmp-vosys-dpu-pclk", video_pll_clk_pd, 0x0, BIT(23), 0);
> +static CCU_GATE(CLK_IOPMP_VOSYS_DPU1_PCLK, iopmp_vosys_dpu1_pclk,
> +		"iopmp-vosys-dpu1-pclk", video_pll_clk_pd, 0x0, BIT(24), 0);
> +static CCU_GATE(CLK_IOPMP_VOSYS_GPU_PCLK, iopmp_vosys_gpu_pclk,
> +		"iopmp-vosys-gpu-pclk", video_pll_clk_pd, 0x0, BIT(25), 0);
> +static CCU_GATE(CLK_IOPMP_DPU1_ACLK, iopmp_dpu1_aclk, "iopmp-dpu1-aclk",
> +		video_pll_clk_pd, 0x0, BIT(27), 0);
> +static CCU_GATE(CLK_IOPMP_DPU_ACLK, iopmp_dpu_aclk, "iopmp-dpu-aclk",
> +		video_pll_clk_pd, 0x0, BIT(28), 0);
> +static CCU_GATE(CLK_IOPMP_GPU_ACLK, iopmp_gpu_aclk, "iopmp-gpu-aclk",
> +		video_pll_clk_pd, 0x0, BIT(29), 0);
> +static CCU_GATE(CLK_MIPIDSI0_PIXCLK, mipi_dsi0_pixclk, "mipi-dsi0-pixclk",
> +		video_pll_clk_pd, 0x0, BIT(30), 0);
> +static CCU_GATE(CLK_MIPIDSI1_PIXCLK, mipi_dsi1_pixclk, "mipi-dsi1-pixclk",
> +		video_pll_clk_pd, 0x0, BIT(31), 0);
> +static CCU_GATE(CLK_HDMI_PIXCLK, hdmi_pixclk, "hdmi-pixclk", video_pll_clk_pd,
> +		0x4, BIT(0), 0);

Did you intentionally skip VOSYS_DPU_CCLK_CFG.VOSYS_DPU_CCLK_CFG and
TEST_CLK_CFG.TEST_CLK_CFG as they aren't needed?


Thanks,
Drew

