Return-Path: <devicetree+bounces-41400-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C8538536F3
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 18:14:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1E7611C23165
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 17:14:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 225C35FB94;
	Tue, 13 Feb 2024 17:14:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HiYNNylG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 751BE5FF00
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 17:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707844465; cv=none; b=EGtapGdq61dT5ZBu+pddtXg22HyBzclq+KEtdq83CMRjooWugNvNHvU0gSEbVhxLan7O9DKOlwr7mD7f1+tJ2x8YD6IsrqlmY57vl/AdO0zsRkCV6RKOeqEdE4VvOeAheaSSoZQ85Xx/+owxiviEO/oorVVYXTXxYzZJVUXuFnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707844465; c=relaxed/simple;
	bh=tcxnntMDjTGlm2TP7peUr1fDpFlSE77ShltMlTMyXiI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AMvomLasDLa8Ld/bMNEnGve2JbvbEoZDeUwOpIFmbsgoNJPq9vLmZjbbT8nViMSL89kyDZ6J7bonN+nCs8mllgSlJ0/LiZfxxgTOlBfaO/Z3wG2MTcFqxqADTuM4ujaJOizG/6fVMrnG7V975gG6PD2ygkWlGdnmrF25IiIomjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HiYNNylG; arc=none smtp.client-ip=209.85.210.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-6e12d0af927so2996479a34.0
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 09:14:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707844462; x=1708449262; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wWYkFPfiCpaWEvWgISX+b5xO2e9ZobwEg3qfP5joRSo=;
        b=HiYNNylG+RRAT2fGdy72pPtEyHPBotR8t1/69viOKDmqvuu+Z8o1vRHqrFGKQpVr8a
         PvmFOLWeozDe9/vHDYwFEH1lcE5yDn5HStf54xcCx/sTivVj23gJCUacNHfFv6hrrPD/
         nCYu8qWa0zik9aRZ58Qf1/LJyRTT03k9es5gUaRTX4mfNcjR75q/wD2+fZHwZmxonSHW
         YxiPOA6J+wH4XAY3PbLm/LxBPmFqhpsU728BGO1QfxJDGhThc6z5lWIMrt79fXApzOdp
         6cOhdgujkdoTSfWsnlJlbcNXE7W9E6SYSpEVQGPSHOWdAcqP+t+r0i8Uu29iQtyIQ+8j
         tvqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707844462; x=1708449262;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wWYkFPfiCpaWEvWgISX+b5xO2e9ZobwEg3qfP5joRSo=;
        b=cQetdpsaS38eLeIffT4Bvk22ZGj8r+uoi5nHQrwKXRLssI4UK5PIxuIdSdQl7hNivH
         n2DfD+THgoZY98zFrtvga9oerTcBBlHj33sfX4VZh9qiEIBbFW3JvdRPBuOFM26W8lfa
         gndymA2r5Viud9iIpPGqoqA1cEOKSQn+9c9KPoHTGpdnymbB1e8gPscdceZPOwPVqjJz
         Dr8P/0qlU1RmdSfJn09dx5xNRVoNpNpKakxXSg6SN2EGfl22P+klTvhfoeNpsPhroFyY
         AQTi6wSx/jugGX0r/aGqejUI8XhHXz/0aJRRtRkarxlSYBh2Z+8uFf7kmSXDMbQz0Gcb
         Ur2g==
X-Forwarded-Encrypted: i=1; AJvYcCWYIvHiTVlq5a+et+ztSelDAUwsAC9BOSx/iP0T7I3bTVenOcBSbmAuV1F+dYvt85YeF6VTn6meq466s7rYqxyptImli4H49tUTDw==
X-Gm-Message-State: AOJu0YxRhPWoFkWIm0uzIt/B8OlXuNPGAIGnD9HjkK2GsvWrBsqxC37I
	5ks17Djk+i8t9bjP+TIs/xNViMoqsVRERPieTvgIlzGBEX/b92/aHRfODrDGfg==
X-Google-Smtp-Source: AGHT+IEOxWREUBGC0f7j04zpR6Kvian2c+B0Gtj/AEmJlX+piv4UW9N3HlTOkwOh7O/jFM0uKb3VXg==
X-Received: by 2002:a05:6358:7e81:b0:17a:f91c:825b with SMTP id o1-20020a0563587e8100b0017af91c825bmr1386833rwn.5.1707844462506;
        Tue, 13 Feb 2024 09:14:22 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVTTgBUbmGTHDb4FXx248cvObvI7tZiwQlGpHHld8LDVzYO0A6bzBrbXY7aB/TCOYqiejrdehcIGzPl0LXiSw3+2M+8wY+txYKFiWGQRtz+NpuYPssTeVaNTKgKmMfNIoYYZVpCDq9DAdhZjqm8ssH+Yr2NrvAcfbPZox7yQ3T9CT2joEIM1Ycslj7tko93MRssT+7TJC+ZYXpPD8Q8ZYprEXVlzNeT/NcGEmBKa3hkXihCDYiIyq/fEMeSBREgjqOhxdL3Wz5YIxYi6ziPkrM4Lt4OZOuQV9109eOfh836hsBqAAPNU2NRKn/Uf/Y=
Received: from thinkpad ([103.246.195.75])
        by smtp.gmail.com with ESMTPSA id fa12-20020a056a002d0c00b006e0f6e6c014sm1826010pfb.84.2024.02.13.09.14.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Feb 2024 09:14:21 -0800 (PST)
Date: Tue, 13 Feb 2024 22:44:16 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Anton Bambura <jenneron@postmarketos.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/6] arm64: dts: qcom: sc8180x-lenovo-flex-5g: fix GPU
 firmware path
Message-ID: <20240213171416.GB30092@thinkpad>
References: <20240203191200.99185-1-jenneron@postmarketos.org>
 <20240203191200.99185-2-jenneron@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240203191200.99185-2-jenneron@postmarketos.org>

On Sat, Feb 03, 2024 at 09:11:55PM +0200, Anton Bambura wrote:
> Fix GPU firmware path so it uses model-specific directory.
> 
> Signed-off-by: Anton Bambura <jenneron@postmarketos.org>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts b/arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts
> index 0c22f3efec20..49b740c54674 100644
> --- a/arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts
> +++ b/arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts
> @@ -350,7 +350,7 @@ &gpu {
>  
>  	zap-shader {
>  		memory-region = <&gpu_mem>;
> -		firmware-name = "qcom/sc8180x/qcdxkmsuc8180.mbn";
> +		firmware-name = "qcom/sc8180x/LENOVO/82AK/qcdxkmsuc8180.mbn";

Where is the firmware located for this device? I couldn't find it in
linux-firmware [1].

- Mani

[1] https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/tree/qcom

>  	};
>  };
>  
> -- 
> 2.42.0
> 
> 

-- 
மணிவண்ணன் சதாசிவம்

