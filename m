Return-Path: <devicetree+bounces-151837-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A5022A4745D
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 05:24:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A44093A7996
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 04:24:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B5871D90B1;
	Thu, 27 Feb 2025 04:24:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DMzwtVa2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 917FA1A38E3
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 04:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740630264; cv=none; b=Y1oxo0+c3YdBEVfZBDhqBfGPcmO6gCfSzcvHpgPcvg5HQQ5jtQIsqme3zGkepge32Nc36VlsUnPu13L99SU1leVj0ulBezn4f0aROLWRu548oDE0d2k24YC12B9oCFRjEa/8YfuXqjm7sNGIIG752++5Qd3zy81okH+XLKkXhK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740630264; c=relaxed/simple;
	bh=GQrep6THGEFfEeZwaQe//qMyhuL44R85HqtTXacsQwQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=E0p04Mqww+Q9Ac6G36Defi5R1uSIRsLhrCNJQOFupzNSbLlnzCpB5DAgQm9pZSB75QgZkKcQatKXeoQFHCixM9/HzF1rCMARh77aRMXHcx4TNMuphsSoZ3gMK1kkVScqohh2G4DNLBIdhNu0N5JTmYjrXI4bwpBrvrOlixU5Wxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DMzwtVa2; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-54943bb8006so469232e87.0
        for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 20:24:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740630261; x=1741235061; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1BIKB82LpdlnmqrEnsr6U/nF5X3U1VHYp+Ab/GWMNqM=;
        b=DMzwtVa22NxQO9YGI0xsgmr0rkFQ+vrlYMyhRUxPmK5I4J0F3T7OGj3jIRozkW6gm7
         ZeHa+TSyKfqZf0KsOnnCW3nRi5742vhrclyx7sUvs8RvMgn2YNG6sEScfq4WDhHPzbax
         6iyWxNuWAwxWZEJtj1JSznhRJiw3+ANQOALH2nLbYLmc8s0wsg2YYGpEUOVmyZCedAtA
         4Hrf43IOt+23HXs3HgCuUeE6jEcPIN4juMjJtPiCI/9kDx1cGVrtTCP7mV7mni+bAN/R
         vkXQvwhoGDCe38G3wYOmysP8HYDm3fxFiJaFyb+glFZ61N2OT4kZ4CzD9HhLBBgsJaaa
         wsnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740630261; x=1741235061;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1BIKB82LpdlnmqrEnsr6U/nF5X3U1VHYp+Ab/GWMNqM=;
        b=FGvcnkYFkHpNBm3YhK5iT/+7gGPu2ZqzLXRocBggB552Uljq1jKOYjUvzaq4PO3zCS
         WsfXXkq32oAsUvo4YMxB+6B7VM3+uLXjZ05/2Zlm/SQXNKfSNfoNRnBh+U/XFbDi5s87
         BPlyRpqQwZuyNj49jrCZJHmn7Huvv12vQF8amlkDAWjMwI0ZUBReHWyZtAE0W2/Seq62
         mSJsWxWL70ld/EMmWrFI3rM+5hZfL8Kww1GFCp1D0im8HeVCsGi0CrXAq+TZfrFX6DTU
         +Bn/rH3sBSdhrhsK9HTpZbU2lFmB9rvfIMf6n2+O+RWTznYSER9w0yJTRw6zvlcNgdd0
         5n2w==
X-Forwarded-Encrypted: i=1; AJvYcCXEn0Itd7phTGA20hr04/Mvf5iARvuERyOHR/P9+d7JaXLJJi2AkN29qSrKTSpiAfKf8Bu0yim9PUdw@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8qmg11/AffBCMHkQlhKvbB/10fXDPN8bLCxmuTUi+ufXHHBsR
	65L+TktURdvhd7c8zM/LOP1O5s5DpBkVeQF6SCLDBscpZMLHssnmDeeSSFbDZP0=
X-Gm-Gg: ASbGncsecL3/JyoCZ9TQyXf30evjr+VALnjTNCtaJBUQKKcNPrt9A+sSfKE0zbXI/wP
	HDLXWy3l+5fl1iYUKQ8hR89/gSrwB69hnxByNbUHlxEfAdRqizK3/MsfCnxDPyQMJNaxwZ9CaYw
	lPY+THthfdeIpuSDvXxJP09XI4JeH4am9XFMy173Yhkr9yaLgbizhSVMvc1crmVn07m+nkhvNPB
	eIhpKuYMX8O+RLweSdGjJJqMX5QK02Sm/eONZ/U2odjAAM94vZWhbuU+WyNQnLse24s5McquSAz
	58m0C0c7fgLTNj2v26UDxlmYnSoQg0mcJ/jiuxfmYYVi9HbaoDcUS6FiiFUmvPqqwpjsgEDQZWW
	S/srZhA==
X-Google-Smtp-Source: AGHT+IGIniJ2q9dLlxOMrazyqcBa1KLqAlXIytyXZvZz/PtReLoH+1OdzX8tTefQVa3tCb4ZcXGA1w==
X-Received: by 2002:a05:6512:33cc:b0:545:1ce0:6407 with SMTP id 2adb3069b0e04-548510dd946mr5844511e87.27.1740630260622;
        Wed, 26 Feb 2025 20:24:20 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5494417b7b3sm61383e87.100.2025.02.26.20.24.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Feb 2025 20:24:19 -0800 (PST)
Date: Thu, 27 Feb 2025 06:24:17 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Felipe Balbi <balbi@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Saravana Kannan <saravanak@google.com>, 
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Frank Li <Frank.li@nxp.com>, linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 3/7] usb: dwc3: core: Don't touch resets and clocks
Message-ID: <w72zvfh3uf7crbkmuenxcjnu6moircjdy6rnbzszl4tjlm2jks@4z2k3iqt2ohi>
References: <20250226-dwc3-refactor-v4-0-4415e7111e49@oss.qualcomm.com>
 <20250226-dwc3-refactor-v4-3-4415e7111e49@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250226-dwc3-refactor-v4-3-4415e7111e49@oss.qualcomm.com>

On Wed, Feb 26, 2025 at 04:17:50PM -0800, Bjorn Andersson wrote:
> When the core is integrated with glue, it's reasonable to assume that
> the glue driver will have to touch the IP before/after the core takes
> the hardware out and into reset. As such the glue must own these
> resources and be allowed to turn them on/off outside the core's
> handling.
> 
> Allow the platform or glue layer to indicate if the core logic for
> clocks and resets should be skipped to deal with this.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
> ---
>  drivers/usb/dwc3/core.c | 19 +++++++++++--------
>  drivers/usb/dwc3/glue.h |  1 +
>  2 files changed, 12 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
> index d9f0a6782d36..aecdde8dc999 100644
> --- a/drivers/usb/dwc3/core.c
> +++ b/drivers/usb/dwc3/core.c
> @@ -2328,6 +2330,7 @@ static int dwc3_probe(struct platform_device *pdev)
>  
>  	probe_data.dwc = dwc;
>  	probe_data.res = res;
> +	probe_data.ignore_clocks_and_resets = false;

Isn't it a default value?

>  
>  	return dwc3_core_probe(&probe_data);
>  }
> diff --git a/drivers/usb/dwc3/glue.h b/drivers/usb/dwc3/glue.h
> index e73cfc466012..1ddb451bdbd0 100644
> --- a/drivers/usb/dwc3/glue.h
> +++ b/drivers/usb/dwc3/glue.h
> @@ -17,6 +17,7 @@
>  struct dwc3_probe_data {
>  	struct dwc3 *dwc;
>  	struct resource *res;
> +	bool ignore_clocks_and_resets;
>  };
>  
>  int dwc3_core_probe(const struct dwc3_probe_data *data);
> 
> -- 
> 2.45.2
> 

-- 
With best wishes
Dmitry

