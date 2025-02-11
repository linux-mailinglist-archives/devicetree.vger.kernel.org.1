Return-Path: <devicetree+bounces-145551-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC5EA31A00
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 00:54:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EA8053A1583
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 23:53:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06DCE27181A;
	Tue, 11 Feb 2025 23:53:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="G0+tbBu0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EAAC271803
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 23:53:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739318035; cv=none; b=DIK9/TlMgy815aTrnddr5LsPbRr0cLWiwR4TTemqPfM3xm2c2TUL1EON+2nPi8WLpXlTTi43eCvXaRrCD09PHU9PW8Bs/UDJf6Lnxz63hTwPDq0JRPYwMlAC7l5EjTL9qahWnBFw5X9vxPCH0SWtemOpIpbQjIbf4GDRNZ3WnlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739318035; c=relaxed/simple;
	bh=QtuQ0Gvd9NRtNMXTwbrehViWkIAnzE0aek/gOfVZh94=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ltznUGYm5/rvOtDYYN5+jz2BpJN6+S+jGHM/buOQCu6QfpBTxW2Bro/qmPRkxFuLPeL0w4IUkE/pOrBGWfoBmmwdfdvXo03FQ6j50LbiDUpmOCwCbKGFHB9Wrq0ZTU9wLw3dm+AYWgPgEHm82USqUSCBb2yYpH9nO9EbR9kcDOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=G0+tbBu0; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-543e49a10f5so6460508e87.1
        for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 15:53:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739318031; x=1739922831; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mNB0MmfPRQPSLrWRY1SRq74tB0O/CjOAHmtycBZsfJA=;
        b=G0+tbBu0a92tDf4UlGtxMbgWu4oNGj1u/2FabctPbe2iVGn4yEo7UxMGRj9UIrpH41
         +QT+jjHyZ3O/QK2NZ+gbua8f2cC3F18Jz3crBkDmor85HXJuugb6VHh3WYlstlMPeKX8
         3n3IU1+INIfxMAghVoa0JnAj+i3O2a4WOyvZ9FebtrK86ytSnfltIQy/a0ZBP0Iop1jZ
         PSuE2u+Ag+dlidkcMwlotsczMAZCICBu9jZLRBS03HwYgpNwhQPGXOxFOOaOGpWxWM3q
         oBws23G3beGFPDv0lJjeMhrVGswAdHpILMv4xTSYTZnHTrGXbE7UhzBSQtrsp1Y5ZxjJ
         0xCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739318031; x=1739922831;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mNB0MmfPRQPSLrWRY1SRq74tB0O/CjOAHmtycBZsfJA=;
        b=Rc24VJUz+lOwabEi5jIFwHEFaotj5RMXX+tOAxK3OLD4rNvOcKpsE679B5O0i9zOOR
         E6XHARrT2c0ZP9NBm2LX79Svohu8BM7948dPuSJg1BIryJbBq/nM/w7wFtqThLK999LO
         6wohiEscjr1Uljvh3X+rkjvfz7fOkr+0h+bXvaCxDCA/F/ed8Kp4JnCSRv6logDJhRy9
         0ry5L80iy4BohFdeDNLBRdlzv3wKjp92EfWMaGqsWkvHw5mBH7oxI50gqpk9VTixGmMx
         Bo72tEEnqhuHQBvJ4odq8Yjw3GGX92CKzrNteKa8s9vtufipX56Br5ancVQdZ3lz9xj0
         5bSQ==
X-Forwarded-Encrypted: i=1; AJvYcCX2vOjHAh3u/7tJbeKPrxzWILZpRQswQgKMYQQU5nxNLslhZEFJT1JlXGeYqIZ76kzEvRsSC0PLqHSO@vger.kernel.org
X-Gm-Message-State: AOJu0YwLBHHlKWUbow0ukFYwALDh7QDYt578q2+zK3NdDgTWCgtQQwP4
	FmJhV2bi/4YANgzuzFWPy5BgIhPw/of5rSaTI9wWSOvs05wf64rQ1pRQg/LaX2s=
X-Gm-Gg: ASbGnctiibYCobZ4iM2QEO9fmez8uefuKqR4QhxgHvYdQXJm36YMy6YtYychkBfCBNs
	J0uz5WU0Q9MAsCpgMQodfz3AY8pA9/cCKxg7QHrENO+8VCnrgp7szvXOHIPNQPgUYyf/cH92i5g
	COTpq3GCo5cYuW5T/5VN1ap7sRYOw+fDdmWB0vaWiFkUALzUtmp+Ke2/SJ64CaFUd3g3TbkpX0/
	SN6nKCv7c/zl1dFjsEBDshNz72ZCdIx5pqWYb7TFnRjnxQVXUVK0UoVWPTYy7HUHrCPw8ZqQp0c
	N2FnPQNfzJPWshY6GCklcpSY6+jnvzkr5yQ6VB9CUex1oOsWmQ4CfAsZLkoyacQ8T4POAK8=
X-Google-Smtp-Source: AGHT+IGwbos3L4kCpFWC/3x4CQJNOXWn8dkB7g07DoRvEsQZTy9Yn8XdtO0fzsZPGB34qsvjoWUsPw==
X-Received: by 2002:a05:6512:39cf:b0:545:17d:f96b with SMTP id 2adb3069b0e04-545180eb5f9mr237415e87.14.1739318031273;
        Tue, 11 Feb 2025 15:53:51 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5441060424asm1681677e87.254.2025.02.11.15.53.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Feb 2025 15:53:49 -0800 (PST)
Date: Wed, 12 Feb 2025 01:53:47 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Danila Tikhonov <danila@jiaxyga.com>, neil.armstrong@linaro.org, 
	quic_jesszhan@quicinc.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org, 
	konradybcio@kernel.org, robdclark@gmail.com, quic_abhinavk@quicinc.com, sean@poorly.run, 
	marijn.suijten@somainline.org, jonathan@marek.ca, jun.nie@linaro.org, fekz115@gmail.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org, linux@mainlining.org, 
	~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH 4/4] arm64: dts: qcom: sm7325-nothing-spacewar: Enable
 panel and GPU
Message-ID: <no4yqmep3b6k2s4cnucbujso67iavv57d7vrlnq3qn4vfexfka@secyoh4eqjk4>
References: <20250203181436.87785-1-danila@jiaxyga.com>
 <20250203181436.87785-5-danila@jiaxyga.com>
 <4a232b8e-f63e-4f89-aa4e-257165150549@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4a232b8e-f63e-4f89-aa4e-257165150549@oss.qualcomm.com>

On Tue, Feb 11, 2025 at 02:31:14PM +0100, Konrad Dybcio wrote:
> On 3.02.2025 7:14 PM, Danila Tikhonov wrote:
> > From: Eugene Lepshy <fekz115@gmail.com>
> > 
> > Enable the Adreno GPU and configure the Visionox RM692E5 panel.
> > 
> > Signed-off-by: Eugene Lepshy <fekz115@gmail.com>
> > Co-developed-by: Danila Tikhonov <danila@jiaxyga.com>
> > Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>
> > ---
> > Note:
> > Depends on https://lore.kernel.org/linux-arm-msm/20250122-dpu-111-topology-v2-1-505e95964af9@somainline.org/
> > ---
> >  .../boot/dts/qcom/sm7325-nothing-spacewar.dts | 53 ++++++++++++++++++-
> >  1 file changed, 51 insertions(+), 2 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/sm7325-nothing-spacewar.dts b/arch/arm64/boot/dts/qcom/sm7325-nothing-spacewar.dts
> > index a5cda478bd78..cda317b49d5c 100644
> > --- a/arch/arm64/boot/dts/qcom/sm7325-nothing-spacewar.dts
> > +++ b/arch/arm64/boot/dts/qcom/sm7325-nothing-spacewar.dts
> > @@ -52,6 +52,8 @@ framebuffer0: framebuffer@e1000000 {
> >  			stride = <(1080 * 4)>;
> >  			format = "a8r8g8b8";
> >  
> > +			display = <&panel0>;
> 
> This is allowed by bindings but doesn't seem to do anything
> 
> > +
> >  			clocks = <&gcc GCC_DISP_HF_AXI_CLK>,
> >  				 <&dispcc DISP_CC_MDSS_MDP_CLK>,
> >  				 <&dispcc DISP_CC_MDSS_BYTE0_CLK>,
> > @@ -757,6 +759,10 @@ &gpi_dma1 {
> >  	status = "okay";
> >  };
> >  
> > +&gpu {
> > +	status = "okay";
> > +};
> > +
> >  &gpu_zap_shader {
> >  	firmware-name = "qcom/sm7325/nothing/spacewar/a660_zap.mbn";
> >  };
> > @@ -823,15 +829,44 @@ &ipa {
> >  	status = "okay";
> >  };
> >  
> > -/* MDSS remains disabled until the panel driver is present. */
> > +&mdss {
> > +	status = "okay";
> > +};
> > +
> >  &mdss_dsi {
> >  	vdda-supply = <&vdd_a_dsi_0_1p2>;
> > +	status = "okay";
> >  
> > -	/* Visionox RM692E5 panel */
> > +	panel0: panel@0 {
> 
> Is there going to be a panel1, too? ;)
> 
> Please drop the 0

No, dsi-controller.yaml requires panel@[0-3] and a reg entry.

> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Konrad

-- 
With best wishes
Dmitry

