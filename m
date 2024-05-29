Return-Path: <devicetree+bounces-70471-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 801DF8D36AE
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 14:47:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 348D52863D2
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 12:47:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 557CF610B;
	Wed, 29 May 2024 12:47:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sg5GxleY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40BDFDDAD
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 12:47:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716986864; cv=none; b=Bk2hpcM+4DGVuhaRaGsKvKNyyxowlD0M2r8Z7QN9CgTBY6uADo5wfSRodnDYZsIljqIuekOPLRk5S65fcBY44O7KvpPPmIGUO2PaOYTBrjyhj1Dj6JThcua/L4itPqM3b7+eEQSR8cbSbyD+Cdj4pd/aLzgZSfo3HH9zoSBygAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716986864; c=relaxed/simple;
	bh=jcMBfdCk8jTQZro4OJJak9oCrCRDjhhjc86nMkCgIdk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=N3fwi4f2xmf4X9gdHDIVfHNyPOHhAbhGw2i6jTIZuzf8n+LkPo/toh3z69UuNgv8ZE/OcKEyAdT96LeiAiwQVZLXFOzDAvANhEtB1hbTBDh1jPjbjO+1iOpHbfHKZgs2bZ1n8SxHXlD5c7zEXYG8bsPptfzLn1agESJ7tOHVi7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sg5GxleY; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-52b1ba74d39so599314e87.1
        for <devicetree@vger.kernel.org>; Wed, 29 May 2024 05:47:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716986859; x=1717591659; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=QG9S5GCq0rk0/aIqTkyWvwtUd6kWwmDiBTyVJ1zhLEs=;
        b=sg5GxleYsseQ4aXjw6eXYkhPcRGESBXIhIwcO9nY+30YY0Th2++cNehQQ/Z4LCHSTb
         JWWZUN8E7vOCcS9Z7V7MN49yfn7jHHsiBmTbek801j364DWlcHm+y2eRNyPBaqDLTzWH
         xDNSapC9ieG9bC0hOqsef8JJUQtrpuQD+csLu6UGntresVLBmWTLrmIy+rw9281YcNPh
         szcj3RF+QyYrV1DA7uIEgNVWCmnophLCNqhNpl5SAGr6AN4Muicdm4BNLoUq+JFHMjDf
         IIR1nY2u5t4kNeKAYb1a5P53pvtUYr8NwjLwwZhr39b3m6t7c5q0SliXTxw333/S4EE5
         urow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716986859; x=1717591659;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QG9S5GCq0rk0/aIqTkyWvwtUd6kWwmDiBTyVJ1zhLEs=;
        b=PKvfJw9BnPoo6hdLhs0SCoTKirB4Era620QKGj23JdnUUTbRfgmCQRvtPl+Wd+mQf0
         Mc2RC4scD41saBKKSLR43t1UjloLQ7pKU3XDUSK87/K+mytlYZxq1E3Jx7+wmT25qTua
         9vBe3WSYynzvdEKxR1RUpE9oGm774Yry8aO/kT9mxUxpWKooOW/egwgDKPoAd8QH1Ieo
         32cCYL5eEPaU8NvVh2WbQd4ItFSFqPUiyH4T3/omugZ/3vq3g+70XyVBLBDKc1Xp+fgP
         /ExL1GmeKvEgZ6DLWH1pOV+qOFpzbEgjlbUeJxe2blZ1grWmd04NCp8B6OkA0eK4lVfP
         1B2A==
X-Forwarded-Encrypted: i=1; AJvYcCX5lOz7zXDYq8I5aAuPw+ZQWkj7qpo/DSuz55NXUQCtzxqN0wnkQOHathTt/0E9r7ul0tRswxyHSIUpQFwv3GMYyK5jRYPKHMnVaw==
X-Gm-Message-State: AOJu0YyUUIjx3Dzs1YPG3U3qUcnQ/Weax0r3L7B8tcOvZgWiR1xEzj4H
	t1WivbhK14CFD8akXubn+8UVaziGpqj7dNN+1KDFO6wvUE9gXeFsrJJF3V9IDi8=
X-Google-Smtp-Source: AGHT+IE82XWdPiGv9vygcZmvhos4VtSHC4qhhCVstpP+iimngdvKDpuoCuYWp8vrcqOHOldc3cHYEg==
X-Received: by 2002:a05:6512:32c9:b0:523:9747:4920 with SMTP id 2adb3069b0e04-52964bb1750mr11083799e87.36.1716986859316;
        Wed, 29 May 2024 05:47:39 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52970c332c5sm1264770e87.189.2024.05.29.05.47.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 May 2024 05:47:38 -0700 (PDT)
Date: Wed, 29 May 2024 15:47:37 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Tengfei Fan <quic_tengfan@quicinc.com>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, kernel@quicinc.com
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: sm8550: Move usb-role-switch to
 SoC dtsi
Message-ID: <ljwkn7ilsixrww4vt7cmnmtot6qgihqglasoaftuil6i37qsxi@ia4bpqhkulwo>
References: <20240529100256.3158447-1-quic_tengfan@quicinc.com>
 <20240529100256.3158447-2-quic_tengfan@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240529100256.3158447-2-quic_tengfan@quicinc.com>

On Wed, May 29, 2024 at 06:02:55PM +0800, Tengfei Fan wrote:
> The usb-role-switch is SA8775p SoC property, so move it from board dts
> to SA8775p SoC dtsi.

The commit message doesn't match patch contents. Other than that LGTM

> 
> Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8550-hdk.dts                     | 1 -
>  arch/arm64/boot/dts/qcom/sm8550-mtp.dts                     | 1 -
>  arch/arm64/boot/dts/qcom/sm8550-qrd.dts                     | 1 -
>  arch/arm64/boot/dts/qcom/sm8550-sony-xperia-yodo-pdx234.dts | 1 -
>  arch/arm64/boot/dts/qcom/sm8550.dtsi                        | 1 +
>  5 files changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8550-hdk.dts b/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
> index 31f52df6b67e..411de3451db8 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
> @@ -1255,7 +1255,6 @@ &usb_1 {
>  
>  &usb_1_dwc3 {
>  	dr_mode = "otg";
> -	usb-role-switch;
>  };
>  
>  &usb_1_dwc3_hs {
> diff --git a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
> index 42d4d558b7aa..84d16227ef80 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
> @@ -948,7 +948,6 @@ &usb_1 {
>  
>  &usb_1_dwc3 {
>  	dr_mode = "otg";
> -	usb-role-switch;
>  };
>  
>  &usb_1_dwc3_hs {
> diff --git a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
> index 2ed1715000c9..e20c6240f76d 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
> @@ -1117,7 +1117,6 @@ &usb_1 {
>  
>  &usb_1_dwc3 {
>  	dr_mode = "otg";
> -	usb-role-switch;
>  };
>  
>  &usb_1_dwc3_hs {
> diff --git a/arch/arm64/boot/dts/qcom/sm8550-sony-xperia-yodo-pdx234.dts b/arch/arm64/boot/dts/qcom/sm8550-sony-xperia-yodo-pdx234.dts
> index 92a88fb05609..6dd5232da9f9 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550-sony-xperia-yodo-pdx234.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8550-sony-xperia-yodo-pdx234.dts
> @@ -739,7 +739,6 @@ &usb_1 {
>  
>  &usb_1_dwc3 {
>  	dr_mode = "otg";
> -	usb-role-switch;
>  };
>  
>  &usb_1_dwc3_hs {
> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> index 79311a6bd1ad..8e3ce1152211 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> @@ -3264,6 +3264,7 @@ usb_1_dwc3: usb@a600000 {
>  				snps,has-lpm-erratum;
>  				tx-fifo-resize;
>  				dma-coherent;
> +				usb-role-switch;
>  
>  				ports {
>  					#address-cells = <1>;
> -- 
> 2.25.1
> 

-- 
With best wishes
Dmitry

