Return-Path: <devicetree+bounces-163978-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AB21A7EBD3
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 21:01:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 759243BAC85
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 18:54:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6031527D78E;
	Mon,  7 Apr 2025 18:20:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b="GabRtufS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 961FC27D78D
	for <devicetree@vger.kernel.org>; Mon,  7 Apr 2025 18:20:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744050006; cv=none; b=syTfH3MgZp35Iv15CSGRhzg3ILxvtsHeUifm0Znt9wSGb7ykm8Nqwsca6ZT19yxk/mes8Jedj2dyxPhmn07ECnnFDHjLwFSbkIN1QObZiYqsWcoc4+253sEl25k3krP9OLcZRBede2f0oxPV+awijifLK+ULNSQFKmTbRuXIKas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744050006; c=relaxed/simple;
	bh=U0yc57KBFJXkKeAXGMo8OC+gxXP7nFSHqYX4UiFiRSs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ABF8hzBPd84CBrvJ8k2jUCvgYeOLbcxUOFhy2bpja50Rs0nTed11cSNaQXy/o2n/PB4lGZdIJyH7Q5KBNsM6ZJ0ifCHGWDZ6NgKQn6pl2wAbdX4jjfgNRn7QDyDMXOkjQLZwzYdhnU3Trg8+6xGXtLHbSAMVi8LsB/J+6mVo+QQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com; spf=none smtp.mailfrom=pdp7.com; dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b=GabRtufS; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=pdp7.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-736ad42dfd6so3735648b3a.3
        for <devicetree@vger.kernel.org>; Mon, 07 Apr 2025 11:20:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pdp7-com.20230601.gappssmtp.com; s=20230601; t=1744050004; x=1744654804; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=R+V2vTlPXFRoR4RnOsfulrUnfIyTIkpiYxiS7BOwBDI=;
        b=GabRtufS5NMzGAv0hDahaU4PGlaLqbnCclzJ5G3uXi+xo/457ZSlkiCxRh7aIYndTk
         ZGFfqKpuo0+iiX+sJnoXsSVSNQD2kiXk+OXjtmmhMF+zf/HK8chXPb0tA+gIOydKjCoB
         NuzkankveNZPP6GzpNiunGyLTHn25yvA8esUHUgCaCkSiUJM7dZRQL4WYUMbLjhuKAKX
         z3rPdB52YsUSckVXifM9Afb1BqAkD2yJPto8AWCYWugl4wzVGFPIMyt9FjZ9c8hGCSPa
         FZnHASeqAUuGYaF+AjnGe3TJywdY2XmeToo4XcoYcYTEI578oqanKzXdMUKuuMa2DEeK
         D0Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744050004; x=1744654804;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R+V2vTlPXFRoR4RnOsfulrUnfIyTIkpiYxiS7BOwBDI=;
        b=FYUiMT7KimS8khdW0/JU5jcromVof8e+zw/FU33eeUTIOBNAjxDS5lrD3xErye6aad
         qCMeBEdBHrXldZERsG3qlh5JtGLjQhlN2rtWOZGBStcuMyeXSReqEETxnzimpqaI29uF
         N2T8HRe5ZkEDyL0blb1RRotZYIuo4jMAW7m6keDU4bWq4NG3N56JL1V9UHXTWFIpvfyp
         8eee2MLk0FpbF2BpGVMeD2XO0ut4JPKR4IS7BxoqLXxoJmUMIup0e2Wbg6vB1K3gPtLA
         df8m/GULB2OvO1x+M+whLWPwzdnbsccoiNGuBjr7zbESJy85fur6YFr4cevzupXdTRLi
         6ZKg==
X-Forwarded-Encrypted: i=1; AJvYcCUeRMk0qQsVBrQI8Gx6QB1YQ0WygV1J/u5XM/hDB4RaTf3zPc3V8zO8KoLXe16uSQ5oJao0+uWnMBwN@vger.kernel.org
X-Gm-Message-State: AOJu0YwIbPwvfyL8iBxhVVwdEaGW/X2SgYFcRrMWG0HjUjLbl1R3biVx
	z6mY+o8hr5IiCJjlCFaXx4wec2oG6v2hmi4WIvmYaNY+AU1PobDT50Ji6TD7/4U=
X-Gm-Gg: ASbGnctSAwYoFjAlNdxTdyVflg2ROqLgRtpV2rPrl4BG5vrJd4rRd9FRx1ERXBkHQxB
	B/XycnD085hl6DeFMMg25WCPtiHUrOyiPnXDwy7HVOlpHGulvFhmBn9mnUVjWEa2Jb7vhqfk09L
	snJM1GgXFzBlozBdWx55pr6UBu15bysgEtVP0gXABw11j5i6hbidE5LZq3zsWewbqxfWH0Rfcj1
	W1AoKuV/eRehYdfkO2SzvQ1dJdZBawzZICMR5Bmz9f9MKSh3Pgs1n7j3BvHRxpNmM64+IIwpC6a
	fVkvM3dXzXJb+FvEo0epUt6H
X-Google-Smtp-Source: AGHT+IEl1YxVJk4wofWvZdOA4V1bIqKO6UF883BN6rvABi3IMXJHGdv+VxDSAdya02SSa2rBro1iGw==
X-Received: by 2002:a05:6a00:3c8f:b0:730:9801:d3e2 with SMTP id d2e1a72fcca58-73b6aa401a6mr12709766b3a.8.1744050003612;
        Mon, 07 Apr 2025 11:20:03 -0700 (PDT)
Received: from x1 ([97.115.235.21])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-739da0deddfsm8878564b3a.162.2025.04.07.11.20.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Apr 2025 11:20:03 -0700 (PDT)
Date: Mon, 7 Apr 2025 11:20:00 -0700
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
Message-ID: <Z/QXUEFLGwb48eKK@x1>
References: <20250403094425.876981-1-m.wilczynski@samsung.com>
 <CGME20250403094432eucas1p112aada697802092266bc36ef863f4299@eucas1p1.samsung.com>
 <20250403094425.876981-3-m.wilczynski@samsung.com>
 <Z/B78yemvvSS1oLe@x1>
 <955e01e2-cfd4-4ac1-9e7b-d624d7d6a2d7@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <955e01e2-cfd4-4ac1-9e7b-d624d7d6a2d7@samsung.com>

On Mon, Apr 07, 2025 at 06:16:52PM +0200, Michal Wilczynski wrote:
> 
> 
> On 4/5/25 02:40, Drew Fustini wrote:
> > On Thu, Apr 03, 2025 at 11:44:24AM +0200, Michal Wilczynski wrote:
> >> The T-Head TH1520 SoC integrates a variety of clocks for its subsystems,
> >> including the Application Processor (AP) and the Video Output (VO) [1].
> >> Up until now, the T-Head clock driver only supported AP clocks.
> >>
> >> Extend the driver to provide clock functionality for the VO subsystem.
> >> At this stage, the focus is on implementing the VO clock gates, as these
> >> are currently the most relevant and required components for enabling and
> >> disabling the VO subsystem functionality.  Future enhancements may
> >> introduce additional VO-related clocks as necessary.
> >>
> >> Link: https://protect2.fireeye.com/v1/url?k=36dff7e6-5754e2d0-36de7ca9-74fe485cbff1-cfd601a10959d91c&q=1&e=fa692882-d05b-4276-bff3-01f7a237dd97&u=https%3A%2F%2Fopenbeagle.org%2Fbeaglev-ahead%2Fbeaglev-ahead%2F-%2Fblob%2Fmain%2Fdocs%2FTH1520%2520System%2520User%2520Manual.pdf [1]
> >>
> >> Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>
> >> ---
> >>  drivers/clk/thead/clk-th1520-ap.c | 196 +++++++++++++++++++++++++-----
> >>  1 file changed, 168 insertions(+), 28 deletions(-)
> >>
> >> diff --git a/drivers/clk/thead/clk-th1520-ap.c b/drivers/clk/thead/clk-th1520-ap.c
> >> index 4c9555fc6184..ebfb1d59401d 100644
> >> --- a/drivers/clk/thead/clk-th1520-ap.c
> >> +++ b/drivers/clk/thead/clk-th1520-ap.c
> >> @@ -847,6 +847,67 @@ static CCU_GATE(CLK_SRAM1, sram1_clk, "sram1", axi_aclk_pd, 0x20c, BIT(3), 0);
> >>  static CCU_GATE(CLK_SRAM2, sram2_clk, "sram2", axi_aclk_pd, 0x20c, BIT(2), 0);
> >>  static CCU_GATE(CLK_SRAM3, sram3_clk, "sram3", axi_aclk_pd, 0x20c, BIT(1), 0);
> >>  
> >> +static CCU_GATE(CLK_AXI4_VO_ACLK, axi4_vo_aclk, "axi4-vo-aclk",
> >> +		video_pll_clk_pd, 0x0, BIT(0), 0);
> > 
> > Is CLKCTRL_GPU_MEM_CLK_EN (bit 2) skipped on purpose?
> 
> Hi,
> This one is marked as "Reserved" in the manual, so yeah it's on purpose.
> 
> > 
> >> +static CCU_GATE(CLK_GPU_CORE, gpu_core_clk, "gpu-core-clk", video_pll_clk_pd,
> >> +		0x0, BIT(3), 0);
> >> +static CCU_GATE(CLK_GPU_CFG_ACLK, gpu_cfg_aclk, "gpu-cfg-aclk",
> >> +		video_pll_clk_pd, 0x0, BIT(4), 0);
> >> +static CCU_GATE(CLK_DPU_PIXELCLK0, dpu0_pixelclk, "dpu0-pixelclk",
> >> +		video_pll_clk_pd, 0x0, BIT(5), 0);
> >> +static CCU_GATE(CLK_DPU_PIXELCLK1, dpu1_pixelclk, "dpu1-pixelclk",
> >> +		video_pll_clk_pd, 0x0, BIT(6), 0);
> >> +static CCU_GATE(CLK_DPU_HCLK, dpu_hclk, "dpu-hclk", video_pll_clk_pd, 0x0,
> >> +		BIT(7), 0);
> >> +static CCU_GATE(CLK_DPU_ACLK, dpu_aclk, "dpu-aclk", video_pll_clk_pd, 0x0,
> >> +		BIT(8), 0);
> >> +static CCU_GATE(CLK_DPU_CCLK, dpu_cclk, "dpu-cclk", video_pll_clk_pd, 0x0,
> >> +		BIT(9), 0);
> >> +static CCU_GATE(CLK_HDMI_SFR, hdmi_sfr_clk, "hdmi-sfr-clk", video_pll_clk_pd,
> >> +		0x0, BIT(10), 0);
> >> +static CCU_GATE(CLK_HDMI_PCLK, hdmi_pclk, "hdmi-pclk", video_pll_clk_pd, 0x0,
> >> +		BIT(11), 0);
> >> +static CCU_GATE(CLK_HDMI_CEC, hdmi_cec_clk, "hdmi-cec-clk", video_pll_clk_pd,
> >> +		0x0, BIT(12), 0);
> >> +static CCU_GATE(CLK_MIPI_DSI0_PCLK, mipi_dsi0_pclk, "mipi-dsi0-pclk",
> >> +		video_pll_clk_pd, 0x0, BIT(13), 0);
> >> +static CCU_GATE(CLK_MIPI_DSI1_PCLK, mipi_dsi1_pclk, "mipi-dsi1-pclk",
> >> +		video_pll_clk_pd, 0x0, BIT(14), 0);
> >> +static CCU_GATE(CLK_MIPI_DSI0_CFG, mipi_dsi0_cfg_clk, "mipi-dsi0-cfg-clk",
> >> +		video_pll_clk_pd, 0x0, BIT(15), 0);
> >> +static CCU_GATE(CLK_MIPI_DSI1_CFG, mipi_dsi1_cfg_clk, "mipi-dsi1-cfg-clk",
> >> +		video_pll_clk_pd, 0x0, BIT(16), 0);
> >> +static CCU_GATE(CLK_MIPI_DSI0_REFCLK, mipi_dsi0_refclk, "mipi-dsi0-refclk",
> >> +		video_pll_clk_pd, 0x0, BIT(17), 0);
> >> +static CCU_GATE(CLK_MIPI_DSI1_REFCLK, mipi_dsi1_refclk, "mipi-dsi1-refclk",
> >> +		video_pll_clk_pd, 0x0, BIT(18), 0);
> >> +static CCU_GATE(CLK_HDMI_I2S, hdmi_i2s_clk, "hdmi-i2s-clk", video_pll_clk_pd,
> >> +		0x0, BIT(19), 0);
> >> +static CCU_GATE(CLK_X2H_DPU1_ACLK, x2h_dpu1_aclk, "x2h-dpu1-aclk",
> >> +		video_pll_clk_pd, 0x0, BIT(20), 0);
> >> +static CCU_GATE(CLK_X2H_DPU_ACLK, x2h_dpu_aclk, "x2h-dpu-aclk",
> >> +		video_pll_clk_pd, 0x0, BIT(21), 0);
> >> +static CCU_GATE(CLK_AXI4_VO_PCLK, axi4_vo_pclk, "axi4-vo-pclk",
> >> +		video_pll_clk_pd, 0x0, BIT(22), 0);
> >> +static CCU_GATE(CLK_IOPMP_VOSYS_DPU_PCLK, iopmp_vosys_dpu_pclk,
> >> +		"iopmp-vosys-dpu-pclk", video_pll_clk_pd, 0x0, BIT(23), 0);
> >> +static CCU_GATE(CLK_IOPMP_VOSYS_DPU1_PCLK, iopmp_vosys_dpu1_pclk,
> >> +		"iopmp-vosys-dpu1-pclk", video_pll_clk_pd, 0x0, BIT(24), 0);
> >> +static CCU_GATE(CLK_IOPMP_VOSYS_GPU_PCLK, iopmp_vosys_gpu_pclk,
> >> +		"iopmp-vosys-gpu-pclk", video_pll_clk_pd, 0x0, BIT(25), 0);
> >> +static CCU_GATE(CLK_IOPMP_DPU1_ACLK, iopmp_dpu1_aclk, "iopmp-dpu1-aclk",
> >> +		video_pll_clk_pd, 0x0, BIT(27), 0);
> >> +static CCU_GATE(CLK_IOPMP_DPU_ACLK, iopmp_dpu_aclk, "iopmp-dpu-aclk",
> >> +		video_pll_clk_pd, 0x0, BIT(28), 0);
> >> +static CCU_GATE(CLK_IOPMP_GPU_ACLK, iopmp_gpu_aclk, "iopmp-gpu-aclk",
> >> +		video_pll_clk_pd, 0x0, BIT(29), 0);
> >> +static CCU_GATE(CLK_MIPIDSI0_PIXCLK, mipi_dsi0_pixclk, "mipi-dsi0-pixclk",
> >> +		video_pll_clk_pd, 0x0, BIT(30), 0);
> >> +static CCU_GATE(CLK_MIPIDSI1_PIXCLK, mipi_dsi1_pixclk, "mipi-dsi1-pixclk",
> >> +		video_pll_clk_pd, 0x0, BIT(31), 0);
> >> +static CCU_GATE(CLK_HDMI_PIXCLK, hdmi_pixclk, "hdmi-pixclk", video_pll_clk_pd,
> >> +		0x4, BIT(0), 0);
> > 
> > Did you intentionally skip VOSYS_DPU_CCLK_CFG.VOSYS_DPU_CCLK_CFG and
> > TEST_CLK_CFG.TEST_CLK_CFG as they aren't needed?
> 
> Yeah I couldn't see a use for them even in the vendor kernel so skipped
> them. I guess they could be added when we figure some way to use them.

Thanks, for the explanations. This looks good to me.

Reviewed-by: Drew Fustini <drew@pdp7.com>


