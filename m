Return-Path: <devicetree+bounces-70473-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B5B08D36B4
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 14:49:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1D9071F288C6
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 12:49:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 701374431;
	Wed, 29 May 2024 12:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="epMsBE1J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F5A22581
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 12:49:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716986974; cv=none; b=eONZQ3nl0cS3Z6JgTvACAqCfLzbHbaG5AVH2SUJGnZMPb5FgMWoIu/+W6pnyLr1nC4Z2adYFhSeDgmXS41eD3euGDTunzj4Dw6CXelfE3L0MxS3qnEhK7tQp6Fu0KIJkZm+e4QMoubO0KdUpSTIFXqtkPRGb2To8KOTUFBJJiz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716986974; c=relaxed/simple;
	bh=r0Pq5fP5ChGD0VXrx6H9K4l6usFaKHdaNPsWxRJGArY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UEtM2uwOCL/zy+xUmSEpAozSzjTE2E73cGcDqQ1iFlmaxcoPUJ2AhOFNnJaJBio1eTvwKSE6sPMmeLclKB7o/9pqxCtp6iAAxCdg5NFm+Ob3A4rsEsw68tZyXCnUdUhtLZfZ6rYWG9eUf/l2t2sPJsfzpUQ/KevEw27BqINDp70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=epMsBE1J; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-52aea6067c8so740297e87.0
        for <devicetree@vger.kernel.org>; Wed, 29 May 2024 05:49:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716986971; x=1717591771; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JcBNNw6YVMaeyzAYrpq687yoU+RCT5XmtSS3cqzJJe8=;
        b=epMsBE1JboccxuWsLtnzE0+KKkH1gkz/ebMKzWEYVW0ro+eSNWKCNGlQ1pLS4rVScD
         7OSd+xK9yYglDm+2cC8XrRDD58DO56VZCA63Rgq9JthdG2Pa/GGLYFRiNjQQUSozUKhG
         iZGp9vBlBdg5CQVOjV8IZGJKTM4RIC8/HWPZnQYlAdd9c0Z2LiI+EJQ5p6N4l2CsybUc
         3j2nQl+6TCJ2ymQq4ZHSi+HDPggxlwZGI8b7zTJB/AYTxwb9eIVic2p3UNfx/EkTA/wk
         32kom1uZYMMD3JlC1Ah/l/282PiMkNwX7RKmExEv1bnShRpLZkhA4ap2mTh+MzNLgqxr
         Ni1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716986971; x=1717591771;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JcBNNw6YVMaeyzAYrpq687yoU+RCT5XmtSS3cqzJJe8=;
        b=cUSePlxZCrG/FZjMlBvloGhTmNwH9NUTLnaq1QemyHpMu2zGp5f4q7c8Q04lZr4Ztv
         wM1+QcElasAQS7SpojLz38zD6conhU7J26MxjiJjj2CzyFZ4izJId9W1B2mJoBNOhctQ
         AbETGxWA1+XuoQT4xKzVW0mYM1Md8HxHWfat14uXIrWtT7KKQDymkLqNqUprvtWPKKSw
         klhamTv5CPQl7vi/RHRS8ur8kJHOoe7JajU36pENQNJXC86I3seOSiyycY2GU1I6Nzl6
         NjO20/PX/3syIf38VM+T1wc/AF9LZE7p4EcCoiKz07/eJmXZ5sT44s+LZVZmk0Sw5OL4
         5izw==
X-Forwarded-Encrypted: i=1; AJvYcCUfivzLRsu6MCfv1WZUSjpM/bSt0jYBxnWNef/wT1GeSZFiImKRxZivo+b8rmeCFOoBXLYSl6Exi770oqi5OV6gtuyoDWkaXeBmww==
X-Gm-Message-State: AOJu0Yw4HM/CzQy5Byo91wH95cNkwpZcnk8rrZRbTdSUmSRsEhwrgjVE
	BbiE24M20I668CVe6pDmULP+2O5uQbE5JzChKvFwdPNn8eAGRPIjTH1GYEJKlmI=
X-Google-Smtp-Source: AGHT+IEmSJ95XNsWxEpcuhqQdRHnYkYrE51oI2Yl5qvse/oihOaPj+r6nYwjde2Tje0gdpwrZKiInA==
X-Received: by 2002:a05:6512:4010:b0:52a:d38f:b4f0 with SMTP id 2adb3069b0e04-52ad38fb583mr1355311e87.62.1716986970701;
        Wed, 29 May 2024 05:49:30 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-529712f1f6esm1264939e87.277.2024.05.29.05.49.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 May 2024 05:49:30 -0700 (PDT)
Date: Wed, 29 May 2024 15:49:28 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Tengfei Fan <quic_tengfan@quicinc.com>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, kernel@quicinc.com
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: sm8550: Remove usb default
 dr_mode
Message-ID: <ugrhu62zhh5u6bdhnik3sphwvnwrttyin3kd2ae7i7g5mahcsj@hiimi2uorauh>
References: <20240529100256.3158447-1-quic_tengfan@quicinc.com>
 <20240529100256.3158447-3-quic_tengfan@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240529100256.3158447-3-quic_tengfan@quicinc.com>

On Wed, May 29, 2024 at 06:02:56PM +0800, Tengfei Fan wrote:
> Otg is default usb dr_mode, so this property can be removed.

OTG, not Otg.

With that fixed:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> 
> Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8550-hdk.dts                     | 4 ----
>  arch/arm64/boot/dts/qcom/sm8550-mtp.dts                     | 4 ----
>  arch/arm64/boot/dts/qcom/sm8550-qrd.dts                     | 4 ----
>  arch/arm64/boot/dts/qcom/sm8550-sony-xperia-yodo-pdx234.dts | 4 ----
>  4 files changed, 16 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8550-hdk.dts b/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
> index 411de3451db8..e0dc03a97771 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
> @@ -1253,10 +1253,6 @@ &usb_1 {
>  	status = "okay";
>  };
>  
> -&usb_1_dwc3 {
> -	dr_mode = "otg";
> -};
> -
>  &usb_1_dwc3_hs {
>  	remote-endpoint = <&pmic_glink_hs_in>;
>  };
> diff --git a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
> index 84d16227ef80..26dfca0c3e05 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
> @@ -946,10 +946,6 @@ &usb_1 {
>  	status = "okay";
>  };
>  
> -&usb_1_dwc3 {
> -	dr_mode = "otg";
> -};
> -
>  &usb_1_dwc3_hs {
>  	remote-endpoint = <&pmic_glink_hs_in>;
>  };
> diff --git a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
> index e20c6240f76d..d27820fb5fc0 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
> @@ -1115,10 +1115,6 @@ &usb_1 {
>  	status = "okay";
>  };
>  
> -&usb_1_dwc3 {
> -	dr_mode = "otg";
> -};
> -
>  &usb_1_dwc3_hs {
>  	remote-endpoint = <&pmic_glink_hs_in>;
>  };
> diff --git a/arch/arm64/boot/dts/qcom/sm8550-sony-xperia-yodo-pdx234.dts b/arch/arm64/boot/dts/qcom/sm8550-sony-xperia-yodo-pdx234.dts
> index 6dd5232da9f9..85d487ef80a0 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550-sony-xperia-yodo-pdx234.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8550-sony-xperia-yodo-pdx234.dts
> @@ -737,10 +737,6 @@ &usb_1 {
>  	status = "okay";
>  };
>  
> -&usb_1_dwc3 {
> -	dr_mode = "otg";
> -};
> -
>  &usb_1_dwc3_hs {
>  	remote-endpoint = <&pmic_glink_hs_in>;
>  };
> -- 
> 2.25.1
> 

-- 
With best wishes
Dmitry

