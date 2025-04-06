Return-Path: <devicetree+bounces-163472-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C98A7D006
	for <lists+devicetree@lfdr.de>; Sun,  6 Apr 2025 21:59:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 13ED31888FB9
	for <lists+devicetree@lfdr.de>; Sun,  6 Apr 2025 19:59:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86ABA1A2622;
	Sun,  6 Apr 2025 19:59:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b="r3kq5Ee+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAE6941C71
	for <devicetree@vger.kernel.org>; Sun,  6 Apr 2025 19:59:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743969546; cv=none; b=lNRzdrwTL/c2ShoGNvZRx1OYG+1uusQSTSbDpmZa9FFOsa/fnpwb26kEmCQ+2RpZdYn9/WI1Aqjp0oL3LWwUW5HaHiZDt8b3wG+/58AUWqCTcTi0L1KjYFUa90qGAByz5FLSPXfbLoDeRGjESjHZSzgcvISiVDLee8o6PRQZfKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743969546; c=relaxed/simple;
	bh=DUla9+p5r8C0yNX9gzDL4CLbxH7aHNhbKcNDbGisa+4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DTI4iNcjN3pwO2CN//iCQxBfH4FYxW4SANhrV79gwhieJAev6K18dVEvKEfsJIqHK2U/VK+6jC0cv2smi77fxT+1z7duDQ84qPnl+iubGEuRUe5fLHClpzM1XKz+ELQoCduMn48h1k8gPPRd/jR8cnriozRN6VCp/rw81NfX5a4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com; spf=none smtp.mailfrom=pdp7.com; dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b=r3kq5Ee+; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=pdp7.com
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-2ff799d99dcso3481310a91.1
        for <devicetree@vger.kernel.org>; Sun, 06 Apr 2025 12:59:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pdp7-com.20230601.gappssmtp.com; s=20230601; t=1743969544; x=1744574344; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cSV5brJCU8FRwDjADDTtVWC1mi4xZgKh3TRBBKKlcb0=;
        b=r3kq5Ee+SM40UUg1BYtsIRai96rsutbIE/EZp7Ry8PRsFoCOLiYOlZiLTv09uGlpS0
         6rlPEzCN80LwP7qqO0GWLncoe5SByqQ0XfJmFGsZCkNGidboKoeGZPxTpHYfukGJ7Bx/
         bBS39UkA1ZEnOg+8s4sJH8kUmyL52SEQCUmSKvY2a1ykFpLMa4oFd7/I8bd/1rLGp90o
         6sYEpNqhB8mk6/U4RcE/owo6GY/QbbnyDzo6XZV3pbR+RhL8yJCisQLsjgPjjW8vhTVr
         Qo7Xds3PvRIO+XYjpzLbNJyZIRoYTiZ2KwpLXDlRDQR+ZUXaAjyGyua0JL63V5CVN88J
         qvxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743969544; x=1744574344;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cSV5brJCU8FRwDjADDTtVWC1mi4xZgKh3TRBBKKlcb0=;
        b=XJ9hbwHUd99OIBuOdC8BdyctUOYk41e7eMZGyJBNzYZHRjgUqNNOJ741mebCDN/UWy
         1DwMAo1Z3Ulw2pfxk271Y2gTAOZDRhzOdeKg1yOL7KrnDOyjEUvhwWnFVp8cqEURXnFu
         /QlVripcDvIjWF8dySGYvXIumE5HaFmCiyXjyMnGHwjYr1SuAk3mdzXFeGHZ6RbiFNyu
         CG7pEoSd0M37GHIzznusJWpRBcQgu6BWy7qWq/K0dYF6xNmrXEK9rkSZ78spJ8L9Lo2o
         f9wLhvjJVJk9WG7uIqrlkFX43tW6yhDiHkppchCxksX5FsosfQ2sw13cCmMF5uXHDfQ6
         YI3A==
X-Forwarded-Encrypted: i=1; AJvYcCV+AsRS1ffZMCCjnfoBTWicNUo7T99/7RnmafzKkpj1UVu5wrCaCr3SBeXRCzenSfZ4DMdLw7F547Sn@vger.kernel.org
X-Gm-Message-State: AOJu0YxinAUemBQhv5X6p5k7Re+L7Uh3ghEMsiPtU1EdAdCudyb+nBLp
	nUi0Ys4yPvXgLP4AaUyR8t4ngi6SHQ+saU9xwMOKLvmkOnjH5rBPFE2GC2aAcRs=
X-Gm-Gg: ASbGncuOjSHVofr/1NlgohxIgR0Nk5kNVs1mWT0craoMbiM3cFnwECSXLzFMetU11jI
	0Tvox4mjDb8yX+LuRcofVxv9ESEFVFchWNfiBotmD5t9lE5LxXgAKEfhrJJsDy4mzuMPV9cgTfY
	/yPgP2+OTTrmoW9a8N3jsI/izyHhpGHNWRbwZsBOrOH8xc+qFpg+0+d+CgkUbT82iDWks2C571e
	4oIV3Znln4X0I0p30tl/VM4dlAV1liYwWHvzvH+hHx0T8iqgJevltQB0L9LjLEPHV00z/giLm8M
	x0y/yz0KZPcrOjivKVQEn2TK
X-Google-Smtp-Source: AGHT+IFHfOOl6mZeB5Mp3Yf4a024PZQ1azNnZAt0Xlq5r9Sp57KSEDZ9mlf7RbY8QgX4UurEi2QyFw==
X-Received: by 2002:a17:90b:274c:b0:2fe:a545:4c85 with SMTP id 98e67ed59e1d1-306a6268598mr13951024a91.27.1743969544093;
        Sun, 06 Apr 2025 12:59:04 -0700 (PDT)
Received: from x1 ([97.115.235.21])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3057ca47ec7sm8413268a91.15.2025.04.06.12.59.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Apr 2025 12:59:03 -0700 (PDT)
Date: Sun, 6 Apr 2025 12:59:01 -0700
From: Drew Fustini <drew@pdp7.com>
To: Michal Wilczynski <m.wilczynski@samsung.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, guoren@kernel.org,
	wefu@redhat.com, paul.walmsley@sifive.com, palmer@dabbelt.com,
	aou@eecs.berkeley.edu, alex@ghiti.fr, jszhang@kernel.org,
	p.zabel@pengutronix.de, m.szyprowski@samsung.com,
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v7 1/3] dt-bindings: clock: thead: Add TH1520 VO clock
 controller
Message-ID: <Z/LdBTtAj2+J5nbb@x1>
References: <20250403094425.876981-1-m.wilczynski@samsung.com>
 <CGME20250403094431eucas1p21412dff1c24aae077fdfeef08e0f802b@eucas1p2.samsung.com>
 <20250403094425.876981-2-m.wilczynski@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250403094425.876981-2-m.wilczynski@samsung.com>

On Thu, Apr 03, 2025 at 11:44:23AM +0200, Michal Wilczynski wrote:
> Add device tree bindings for the TH1520 Video Output (VO) subsystem
> clock controller. The VO sub-system manages clock gates for multimedia
> components including HDMI, MIPI, and GPU.
> 
> Document the VIDEO_PLL requirements for the VO clock controller, which
> receives its input from the AP clock controller. The VIDEO_PLL is a
> Silicon Creations Sigma-Delta (integer) PLL typically running at 792 MHz
> with maximum FOUTVCO of 2376 MHz.
> 
> This binding complements the existing AP sub-system clock controller
> which manages CPU, DPU, GMAC and TEE PLLs.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>
> ---
>  .../bindings/clock/thead,th1520-clk-ap.yaml   | 17 ++++++++--
>  .../dt-bindings/clock/thead,th1520-clk-ap.h   | 34 +++++++++++++++++++
>  2 files changed, 48 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/clock/thead,th1520-clk-ap.yaml b/Documentation/devicetree/bindings/clock/thead,th1520-clk-ap.yaml
> index 0129bd0ba4b3..9d058c00ab3d 100644
> --- a/Documentation/devicetree/bindings/clock/thead,th1520-clk-ap.yaml
> +++ b/Documentation/devicetree/bindings/clock/thead,th1520-clk-ap.yaml
> @@ -8,7 +8,8 @@ title: T-HEAD TH1520 AP sub-system clock controller
>  
>  description: |
>    The T-HEAD TH1520 AP sub-system clock controller configures the
> -  CPU, DPU, GMAC and TEE PLLs.
> +  CPU, DPU, GMAC and TEE PLLs. Additionally the VO subsystem configures
> +  the clock gates for the HDMI, MIPI and the GPU.
>  
>    SoC reference manual
>    https://openbeagle.org/beaglev-ahead/beaglev-ahead/-/blob/main/docs/TH1520%20System%20User%20Manual.pdf
> @@ -20,14 +21,24 @@ maintainers:
>  
>  properties:
>    compatible:
> -    const: thead,th1520-clk-ap
> +    enum:
> +      - thead,th1520-clk-ap
> +      - thead,th1520-clk-vo
>  
>    reg:
>      maxItems: 1
>  
>    clocks:
>      items:
> -      - description: main oscillator (24MHz)
> +      - description: |
> +          One input clock:
> +          - For "thead,th1520-clk-ap": the clock input must be the 24 MHz
> +            main oscillator.
> +          - For "thead,th1520-clk-vo": the clock input must be the VIDEO_PLL,
> +            which is configured by the AP clock controller. According to the
> +            TH1520 manual, VIDEO_PLL is a Silicon Creations Sigma-Delta PLL
> +            (integer PLL) typically running at 792 MHz (FOUTPOSTDIV), with
> +            a maximum FOUTVCO of 2376 MHz.
>  
>    "#clock-cells":
>      const: 1
> diff --git a/include/dt-bindings/clock/thead,th1520-clk-ap.h b/include/dt-bindings/clock/thead,th1520-clk-ap.h
> index a199784b3512..09a9aa7b3ab1 100644
> --- a/include/dt-bindings/clock/thead,th1520-clk-ap.h
> +++ b/include/dt-bindings/clock/thead,th1520-clk-ap.h
> @@ -93,4 +93,38 @@
>  #define CLK_SRAM3		83
>  #define CLK_PLL_GMAC_100M	84
>  #define CLK_UART_SCLK		85
> +
> +/* VO clocks */
> +#define CLK_AXI4_VO_ACLK		0
> +#define CLK_GPU_MEM			1
> +#define CLK_GPU_CORE			2
> +#define CLK_GPU_CFG_ACLK		3
> +#define CLK_DPU_PIXELCLK0		4
> +#define CLK_DPU_PIXELCLK1		5
> +#define CLK_DPU_HCLK			6
> +#define CLK_DPU_ACLK			7
> +#define CLK_DPU_CCLK			8
> +#define CLK_HDMI_SFR			9
> +#define CLK_HDMI_PCLK			10
> +#define CLK_HDMI_CEC			11
> +#define CLK_MIPI_DSI0_PCLK		12
> +#define CLK_MIPI_DSI1_PCLK		13
> +#define CLK_MIPI_DSI0_CFG		14
> +#define CLK_MIPI_DSI1_CFG		15
> +#define CLK_MIPI_DSI0_REFCLK		16
> +#define CLK_MIPI_DSI1_REFCLK		17
> +#define CLK_HDMI_I2S			18
> +#define CLK_X2H_DPU1_ACLK		19
> +#define CLK_X2H_DPU_ACLK		20
> +#define CLK_AXI4_VO_PCLK		21
> +#define CLK_IOPMP_VOSYS_DPU_PCLK	22
> +#define CLK_IOPMP_VOSYS_DPU1_PCLK	23
> +#define CLK_IOPMP_VOSYS_GPU_PCLK	24
> +#define CLK_IOPMP_DPU1_ACLK		25
> +#define CLK_IOPMP_DPU_ACLK		26
> +#define CLK_IOPMP_GPU_ACLK		27
> +#define CLK_MIPIDSI0_PIXCLK		28
> +#define CLK_MIPIDSI1_PIXCLK		29
> +#define CLK_HDMI_PIXCLK			30
> +
>  #endif
> -- 
> 2.34.1
> 

Reviewed-by: Drew Fustini <drew@pdp7.com>

I think this makes sense and dt_binding_check looks clean.

Thanks,
Drew

