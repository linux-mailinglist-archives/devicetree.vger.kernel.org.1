Return-Path: <devicetree+bounces-89131-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 11C9D940074
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 23:30:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B90BA1F225B4
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 21:30:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BA3218E741;
	Mon, 29 Jul 2024 21:30:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iUaDFskl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51E2D18786C
	for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 21:30:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722288630; cv=none; b=fdZ+NHONOyhPPEQoRrs7NGtaVp3wCaS1uHEO3QkzFQaBCrE8C69GAH3l0oA+4SOhh2ZtAXBLFZ96UUD9C0Z2VfrfeqNk08VgKjnASY6PqmNjaeNylJ+DM8Cdrmw8KJmUSRIIpESE/C4Z2gZu444Y0DuQJsaL2Z6WH+LfKXoS1Is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722288630; c=relaxed/simple;
	bh=nkh3RY87LSj7T5WSe1L7vT9axB9xoj0Dh0BC+iFxZ1g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aHaLopzRLbLf3RrsFYA/P7Kid/t+ZNEXehBvsSqE8dBeNVqS8QGBLBXi6QCYKoGp5D9Nb0vaGKFPLSCX0CxEsH4kwd6rO6vi+LYZfUl2N2JwcOLM0wkEfMiDVtCUgLoDmZleahkXLxZXEyPEVEwCOIW37jH1Fcbx0bQBWOH9gw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iUaDFskl; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2ef2c56da6cso46123731fa.1
        for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 14:30:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722288626; x=1722893426; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=w+XeGVGpXC/9raSm+hbwTOeiVV3/eRdhAJVqlpmquSE=;
        b=iUaDFsklFwK2/PiEXk2a4wFP+8Z0VcQ1C66GPfpSKxykbpuyIzvqCFTSdvICEbuRBj
         hacpHDLqplm2s3g3MJb3yW/ZpbeJ25cYwcEhGT2oOUG2jEm2NMGm7FrlMNmlSXpeKXjy
         3uk41R9/kcSreBW865yhiaMf9lXiZL7x42GTnGuM1w5S3wYj0yaQAy4I6GZICdt94p6e
         JjMp8020WC+8854OMo05xgm5uzg54VmOmD6RFH5ms0rt7UcmIdMLAz6bu/xv/lowfBuw
         81x3t0HIUdlD7crcLlwU7Dv8pL3dPBPqVmQcFoWlaZ/OnADnIEkFOm4sZYreoJXx25t/
         pr/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722288626; x=1722893426;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w+XeGVGpXC/9raSm+hbwTOeiVV3/eRdhAJVqlpmquSE=;
        b=DeyIEVu1O3VCPZKaI/Q6fpBIan/4hsgsaqINNz3xtncNAoy89G3gc0E1JmN1+ENNX+
         RMuXSvxO8K9CrFs0NM8cW1uPloaL+FuDpW3jj94sdneTk/Fdg4gOTZHiIIfxf47aKgJB
         51ClWqYUw3aGW3IPsoQOZkBhas9d2ozEMhwxolLRy/V1FTfXJjkY8n7ftPUe4aUUCmUw
         L8jvabnnnJtYVjg03IlvBnU0Pk/BONRtqfnwD/R6NA/5quWnXRhgdmxDL4xvBJbDfZm+
         /76MHIp+MA0XHYwcPvFPAgMr8nkipIFXiyw6RUe9xkdtdRPwGeUbKEIb8flU+R4v2U2F
         okkw==
X-Forwarded-Encrypted: i=1; AJvYcCWjOiz6z+0Y/mR/VbLVla3McZxFXzbxLW9RKVQLleOCVomZ0V5GE2rTRsJS0BsqRa7q935g/VIXPTqA82jzvtnm0/mRl9Dn/1Qw8A==
X-Gm-Message-State: AOJu0YxW53cLVT5jmitLI+qYnWb997Si/mviVLZxxW7WMDs27Owdejhl
	HtG/Y8O+YEiOKdeYD728Y9BfwihKvfglXfypeYWNMEXPjzwETXJt7BPxXKD6t+w=
X-Google-Smtp-Source: AGHT+IHkuA/ybS+vTEmAhWPiJMmSXwxniP06izUiJNBrRHRDIu1+0MlWYxSP7AAgk4esgMEHJO2Ehw==
X-Received: by 2002:a2e:7c01:0:b0:2ef:2c86:4d47 with SMTP id 38308e7fff4ca-2f12ecd2cb8mr59018661fa.15.1722288626513;
        Mon, 29 Jul 2024 14:30:26 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f03d09574dsm14265531fa.140.2024.07.29.14.30.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jul 2024 14:30:26 -0700 (PDT)
Date: Tue, 30 Jul 2024 00:30:24 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Danila Tikhonov <danila@jiaxyga.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	andersson@kernel.org, konrad.dybcio@linaro.org, rafael@kernel.org, 
	viresh.kumar@linaro.org, heikki.krogerus@linux.intel.com, gregkh@linuxfoundation.org, 
	kees@kernel.org, tony.luck@intel.com, gpiccoli@igalia.com, sudeep.holla@arm.com, 
	quic_rjendra@quicinc.com, andre.przywara@arm.com, ulf.hansson@linaro.org, 
	davidwronek@gmail.com, neil.armstrong@linaro.org, heiko.stuebner@cherry.de, 
	rafal@milecki.pl, macromorgan@hotmail.com, linus.walleij@linaro.org, 
	johan+linaro@kernel.org, javier.carrasco.cruz@gmail.com, quic_kriskura@quicinc.com, 
	lpieralisi@kernel.org, fekz115@gmail.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-hardening@vger.kernel.org, linux@mainlining.org
Subject: Re: [PATCH 08/11] arm64: dts: qcom: Add SM7325 device tree
Message-ID: <g6w2z2apwu5ng2jolpnddduqqpxp27by7e2xshqpxrzkutyuhc@gyprjccngtya>
References: <20240729201843.142918-1-danila@jiaxyga.com>
 <20240729201843.142918-9-danila@jiaxyga.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240729201843.142918-9-danila@jiaxyga.com>

On Mon, Jul 29, 2024 at 11:18:15PM GMT, Danila Tikhonov wrote:
> From: Eugene Lepshy <fekz115@gmail.com>
> 
> The Snapdragon 778G (SM7325) / 778G+ (SM7325-AE) / 782G (SM7325-AF)
> is software-wise very similar to the Snapdragon 7c+ Gen 3 (SC7280).
> 
> It uses the Kryo670.
> 
> Signed-off-by: Eugene Lepshy <fekz115@gmail.com>
> Co-developed-by: Danila Tikhonov <danila@jiaxyga.com>
> Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>
> ---
>  arch/arm64/boot/dts/qcom/sm7325.dtsi | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/sm7325.dtsi
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

