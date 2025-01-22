Return-Path: <devicetree+bounces-140236-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D7D0A18F0E
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 11:00:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 521EF162B52
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 10:00:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89599210F49;
	Wed, 22 Jan 2025 10:00:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="luOw1zXT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87E2A210F5B
	for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 10:00:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737540011; cv=none; b=IpjimKg4k5zgKUhGDjB7v9bCqSO/usYMjNUqfQ3YA5wp82Yd8UnBWCU8Vcr417pmM3IUHNQBQ2OA1sXFRHsnUTyprsZSF+xFPLof8vUMtDN2ZojWpwPMrdsouWybjuT74mbX/9iedTs63qs8mBumUgtb7DCd3dt4jzdU+qSFKVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737540011; c=relaxed/simple;
	bh=+wsrOd0qHRtyMX2kOTNMRykr4F2eirOjoPKRdQiARJE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ieCBHi4hZ/tD6qjyYGcIlbo2oMTBynCjh41264e38ow8WZNC4dthYKJwvrwsQeVWlFfWdo6CKpL1GoRX9R1oJjbkd1KllFoR4Eq/B/7fQSu66XN8rsDMOnIDZ6BZKcgm1ClEz6br8WVtAEGGMucd2YEu9oklD3hMGruV7utGCm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=luOw1zXT; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-53ff1f7caaeso7174733e87.0
        for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 02:00:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737540007; x=1738144807; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zEFQawktjxbGhtjeAIH260ijjFGtUtPD1lmxQwfvD70=;
        b=luOw1zXT1F7KxHO1ToC0yFFPbSMR8TVXnyiywiUeZwQtKkdsxF/ZrcEltd/La8pxxX
         q5MxMYDPJy2WAHmVrO0Yj0kvddomuP7WngshQTzXgcGkvsrN5ck4PjODH8cm+9krO4FQ
         r/SGKjttQf777mZhDLN2M1NIwOT+ySExWttO6wsy0G3HrsHbd0Zc4d9AIKPE3En7CVeT
         VZapBnH/tUzTweswJxXpPlTYZ8r3SA5d/yWdf6Y67RAuBXJiZeXBW+LYEAXylbYtk7py
         /psgwPVxb7u3TK4sxBhmOBjD3MmBfNQ9+PXKD2af2Ll7JbmXEkQ+ar/CFeEiHDAMEunp
         xomQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737540008; x=1738144808;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zEFQawktjxbGhtjeAIH260ijjFGtUtPD1lmxQwfvD70=;
        b=ec/xXi4ftJ0uusg4xfekfHFxZdzf1wa5fbI8XK+l+yJu+i/Ymj+YsfhUatMCHgEFK7
         PF9VF3bJCLroc4xklYTQ6rFcUfI+KVOxFOxcloelRg6M0uxRy1Uwu5ws2jtRI5vZ2f6U
         g4zNXdi7bkXU/SUjbZ+vb4zIYbjIW+M+UKyj1HfZ49DLTiSXHSDtfIa3kUPYONIRnahK
         pe8WVKXgDR1i8rCMM8eV4f7s7POK5k4ch9TnDdt/86mk2hWxYp8Xl+9tyIo252Il7jfk
         1FhHzXlAnYi6DLCmhxHU06QtrdQhEEWEd5SzlHR+3+zZE6LDqVspoW/gq/SKgl/1h2PD
         G+DA==
X-Forwarded-Encrypted: i=1; AJvYcCXRxJWgYrA7AZ5yLBhwSOsWr6GhlMqbQIVupZus0KRqyUM66QlUbkcda9JkcTWMZcSS3rCFpwegVWBh@vger.kernel.org
X-Gm-Message-State: AOJu0YzxosOyN7KcTzx/J8WsyFNuh03+B+qhKZyNCu02swXFiJzDx9I3
	0woMZQk8s+hFWrOFZM/UoaKjYj/5M54Qq6FYqT97g5iJxB+ZOdydAFYPWWBDIfQ=
X-Gm-Gg: ASbGncsmsL7E21ob5I1QTQWTSLCC10xlQddPgktILLqpo57Mjj2EH8N3YWjHM6Hz3nR
	1RvyTxGnGKFWGY2X+92WDThw5/fhTJxEOGFESbBKyUaAs4CpL1zNW3THrXDNGA/jOw4kDJfVwsS
	0CFCb7FUQN/EiA5wzp7EFCWa8vWsh2fGtP7RXK0FJcRCb25/VL0eUSIggedzlVKBxhdumLsT950
	fPexWdFJffow1p31/WQ4XVJTYs+TDExr0Tqrh4tjQKYwlMqb1xHBFuCoeq9z8bP07u/i+vbUodN
	LoYDDDCjh1buyey18l/K0txGXevh8sGP3hZbmADWctwYneZexw==
X-Google-Smtp-Source: AGHT+IEzUj8d1CjaJ2+hjasjv+g9ctm8BlZOjITBAX5i3FJQn+c/3JTOFqKIBY7RUuTDcdqTjs92zg==
X-Received: by 2002:ac2:5497:0:b0:542:2a20:e699 with SMTP id 2adb3069b0e04-5439c21f31fmr5489633e87.9.1737540007532;
        Wed, 22 Jan 2025 02:00:07 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5439af0e8ffsm2174384e87.59.2025.01.22.02.00.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jan 2025 02:00:06 -0800 (PST)
Date: Wed, 22 Jan 2025 12:00:03 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Sachin Gupta <quic_sachgupt@quicinc.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Adrian Hunter <adrian.hunter@intel.com>, Bhupesh Sharma <bhupesh.sharma@linaro.org>, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, quic_cang@quicinc.com, quic_nguyenb@quicinc.com, 
	quic_bhaskarv@quicinc.com, quic_mapa@quicinc.com, quic_narepall@quicinc.com, 
	quic_nitirawa@quicinc.com, quic_rampraka@quicinc.com, quic_sartgarg@quicinc.com
Subject: Re: [PATCH V3 4/4] mmc: sdhci-msm: Rectify DLL programming sequence
 for SDCC
Message-ID: <nmsm6bb5biptmzruggs4f3mweq7d7hcmwqjdidf6bi7gyoliw2@x4yitguzz6zx>
References: <20250122094707.24859-1-quic_sachgupt@quicinc.com>
 <20250122094707.24859-5-quic_sachgupt@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250122094707.24859-5-quic_sachgupt@quicinc.com>

On Wed, Jan 22, 2025 at 03:17:07PM +0530, Sachin Gupta wrote:
> With the current DLL sequence stability issues for data
> transfer seen in HS400 and HS200 modes.
> 
> "mmc0: cqhci: error IRQ status: 0x00000000 cmd error -84
> data error 0"
> 
> Rectify the DLL programming sequence as per latest hardware
> programming guide
> 
> Signed-off-by: Sachin Gupta <quic_sachgupt@quicinc.com>
> ---
>  drivers/mmc/host/sdhci-msm.c | 270 ++++++++++++++++++++++++++++++++---
>  1 file changed, 252 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/mmc/host/sdhci-msm.c b/drivers/mmc/host/sdhci-msm.c
> index cc7756a59c55..17f17a635d83 100644
> --- a/drivers/mmc/host/sdhci-msm.c
> +++ b/drivers/mmc/host/sdhci-msm.c
> @@ -28,6 +28,7 @@
>  #define CORE_VERSION_MAJOR_SHIFT	28
>  #define CORE_VERSION_MAJOR_MASK		(0xf << CORE_VERSION_MAJOR_SHIFT)
>  #define CORE_VERSION_MINOR_MASK		0xff
> +#define SDHCI_MSM_MIN_V_7FF		0x6e
>  
>  #define CORE_MCI_GENERICS		0x70
>  #define SWITCHABLE_SIGNALING_VOLTAGE	BIT(29)
> @@ -118,7 +119,8 @@
>  #define CORE_PWRSAVE_DLL	BIT(3)
>  
>  #define DDR_CONFIG_POR_VAL	0x80040873
> -
> +#define DLL_CONFIG_3_POR_VAL	0x10
> +#define TCXO_FREQ               19200000
>  
>  #define INVALID_TUNING_PHASE	-1
>  #define SDHCI_MSM_MIN_CLOCK	400000
> @@ -309,6 +311,16 @@ struct sdhci_msm_host {
>  	bool artanis_dll;
>  };
>  
> +enum dll_init_context {
> +	DLL_INIT_NORMAL,
> +	DLL_INIT_FROM_CX_COLLAPSE_EXIT,
> +};
> +
> +enum mode {
> +	HS400, // equivalent to SDR104 mode for DLL.
> +	HS200, // equivalent to SDR50 mode for DLL.
> +};
> +
>  static const struct sdhci_msm_offset *sdhci_priv_msm_offset(struct sdhci_host *host)
>  {
>  	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
> @@ -793,6 +805,211 @@ static int msm_init_cm_dll(struct sdhci_host *host)
>  	return 0;
>  }
>  
> +static unsigned int sdhci_msm_get_min_clock(struct sdhci_host *host)
> +{
> +	return SDHCI_MSM_MIN_CLOCK;
> +}
> +
> +static unsigned int sdhci_msm_get_clk_rate(struct sdhci_host *host, u32 req_clk)
> +{
> +	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
> +	struct sdhci_msm_host *msm_host = sdhci_pltfm_priv(pltfm_host);
> +	struct clk *core_clk = msm_host->bulk_clks[0].clk;
> +	unsigned int sup_clk;
> +
> +	if (req_clk < sdhci_msm_get_min_clock(host))
> +		return sdhci_msm_get_min_clock(host);
> +
> +	sup_clk = clk_get_rate(core_clk);
> +
> +	if (host->clock != msm_host->clk_rate)
> +		sup_clk = sup_clk / 2;

Please resolve previous discussions before sending new versions. Just
sending a response and then sending next iteration of the patchset is
not a proper way to communicate.

NAK until the discussion is resolved in the previous thread.

> +
> +	return sup_clk;
> +}
> +

-- 
With best wishes
Dmitry

