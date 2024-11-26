Return-Path: <devicetree+bounces-124629-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 190FD9D96B5
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 12:55:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D302828A582
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 11:55:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52A931CEE96;
	Tue, 26 Nov 2024 11:54:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BzTTd4ZU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6616D1CEE8D
	for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 11:54:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732622099; cv=none; b=BrKKtsTqB6z4eRwBzLWuHIPsYcfN0eEdb341AbrYzXYNqOxvx5JZjV12HmVQY15cprbd1NQooV0QtrNZ+ZKzbpvhg3BhTdvtpM32Y2RwYdZoYpzZBDf9Lr5Hxy89BDvsiWo4exsXbxilHzN8URcDU5H5XsAL+VLykXUi+yUBZy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732622099; c=relaxed/simple;
	bh=OyR1cjFe4D0ygF2xs39ZVl8/TK35NmG554zz2iOHzYI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ll6j9ThM1NcICO5FcGgn8VRcMZ0S3UAl4Tzz6VjUR+MhzdzKJwH3qJ56RHXx+mTtgZ6N38mz5SEmfgfV+upHd7JHn4jUkW6QwvGI+q1gRsKIH2ig6Pgp76lNqv+qUcZwwFjZkm8QvrPw2ygzrOHJ7zTBXtBCp5HuYeV+7hLWyXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BzTTd4ZU; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-53de101525eso2246754e87.0
        for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 03:54:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732622095; x=1733226895; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=U9neqLISga2bW2owg+smL65QWoZZ/0O0GLrxXWRBoLY=;
        b=BzTTd4ZUAH3QY4Z0YzF1EQVQ4yZkwB4jaY50mQpNZbhIfMonPlyLBTcv2Pt3E8kWkt
         a38Sk55xwjViG2nZwXEk5oRM5JqhrD+ETYD5OEVUAP3npbKWOedETaV/n+QqQWioM8tu
         1CT8ph6s4y1/pjUdDiE9NVhzoF8gETPjBLUrlYy1dSMzJUJmvKWpfCsTfnDfGfPCQBLy
         7TNZNHEsjOJNl6phUMpEmNvx9Vg0WtwH8Jo8K1xBaghc0S8Sg7G5yWkVnApZgBPmteYc
         quenRXw+vj14zk3A7BQbd8W2j/K9ImmcHLYhFjCOMwWoteknojUHDxWLhuUWgT8/hLzc
         URsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732622095; x=1733226895;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U9neqLISga2bW2owg+smL65QWoZZ/0O0GLrxXWRBoLY=;
        b=FmbZmElo85TVyyFf8nuYayhz0OmmN0osl4jg12mtLxoznWfIff+QzQiT5SCKLbHQVV
         T+pcNSXUMKfSYjp5PoO8CDFno5kAIJRyoxOt5vWZnlwz2SjTmVmw4aV76TzaeXSqWv3N
         gzQczfI+Np8cfZCoAan6mKrBsYtQEC1JPkAjyxIiYqxPwuEN2WbbF8/s6a1CsQQ3GNkw
         8jklnlQCHUd0njndFcTz6G2c7rVI21CpQrBgarUWBLAuEdwy2e9K351FfIednSRwsmSV
         f27UNUIbenMXrjsi8i8ldJkA84lGLyX9pSzqVU/wzuFTd5DFBjM9srQIeFZ+2hSrvoKb
         FANQ==
X-Forwarded-Encrypted: i=1; AJvYcCVC891kUwVwqtcmWvDq+kkog5GdXwM865t3JLAwXd+1s76UnqO+YlHglvwbQtKrOTTjKgJtv5SjX5Co@vger.kernel.org
X-Gm-Message-State: AOJu0Ywx8H4WHS+q6HkzsoFdT8FdzfZJ8+hqDNUsbvF3qfEW+Ypqbe5H
	+pt2rI7JeBaMXMB0NwFxeLGdAgQ9ZPPIhShJF6phoQBus2VRQu3rmIroU5SZLEk=
X-Gm-Gg: ASbGncuP17Qk5t0af4SueFvKNIL4JzzIx96YhBK8uu9U61zysSdK855XLdH+E2FRj3o
	aHUhh+XDKdHu/ikxhMveFuvdbVZ5n9lp5UksWHdfBMhuija3u7iRHyDlM4+5SllC6037PvmZ1k9
	/Tdg2j/4ibDr9gi0i8GJRrHsdOflwJ+93W/4E5jGuOXC5uSLADlMmVV1M5BWUfD8vJ7U4LuVeBX
	fyCY/RyRnEwAjOhdiFgCdTVBON+cXd8Xi5MVDgDbHIUMk/vzoL+AT1Od4SFEG4xDMi/Jx70Cs7f
	C0ifFXwdQfJSuEI5b/p0r1eAu9pOAA==
X-Google-Smtp-Source: AGHT+IG0V26vk89CsLjvavbiVM/v4vuiVcKzCLGpdwHvHq4r4wUzQXrx6I1/iI0TyUMnNp6k2v8UMQ==
X-Received: by 2002:a05:6512:3ba5:b0:53d:e840:5b61 with SMTP id 2adb3069b0e04-53de8800237mr829915e87.3.1732622095492;
        Tue, 26 Nov 2024 03:54:55 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53de7e0a20esm307231e87.280.2024.11.26.03.54.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Nov 2024 03:54:55 -0800 (PST)
Date: Tue, 26 Nov 2024 13:54:53 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Tingguo Cheng <quic_tingguoc@quicinc.com>
Cc: quic_fenglinw@quicinc.com, quic_tingweiz@quicinc.com, 
	kernel@quicinc.com, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: qcs8300-ride: Enable PMIC
 peripherals
Message-ID: <hk3tkj3nka4kslq5nwvu4xj7yzydgdtz3fru2cazy67z3qortb@4c3uxktl36jo>
References: <20241126-adds-spmi-pmic-peripherals-for-qcs8300-v1-0-28af84cb86f8@quicinc.com>
 <20241126-adds-spmi-pmic-peripherals-for-qcs8300-v1-2-28af84cb86f8@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241126-adds-spmi-pmic-peripherals-for-qcs8300-v1-2-28af84cb86f8@quicinc.com>

On Tue, Nov 26, 2024 at 05:35:06PM +0800, Tingguo Cheng wrote:
> Enable PMIC and PMIC peripherals for qcs8300-ride board. The qcs8
> 300-ride uses 2 pmics(pmm8620au:0,pmm8650au:1) on the board, which
> are variants of pmm8654au used on sa8775p/qcs9100 -ride(4x pmics).
> 
> Signed-off-by: Tingguo Cheng <quic_tingguoc@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 23 +++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> index 7eed19a694c39dbe791afb6a991db65acb37e597..9447efb9cd01654b74ec4c18dec58b1956ffe710 100644
> --- a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> @@ -9,6 +9,7 @@
>  #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>  
>  #include "qcs8300.dtsi"
> +#include "sa8775p-pmics.dtsi"
>  / {
>  	model = "Qualcomm Technologies, Inc. QCS8300 Ride";
>  	compatible = "qcom,qcs8300-ride", "qcom,qcs8300";
> @@ -223,6 +224,28 @@ &gcc {
>  		 <0>;
>  };
>  
> +&pmm8654au_0_pon_resin{

Missing space between the curve bracket (here and in all other entries).

> +	linux,code = <KEY_VOLUMEDOWN>;
> +
> +	status = "okay";
> +};
> +
> +&pmm8654au_2{
> +	status = "disabled";
> +};
> +
> +&pmm8654au_2_thermal{
> +	status = "disabled";

Does it work this way?

> +};
> +
> +&pmm8654au_3{
> +	status = "disabled";
> +};
> +
> +&pmm8654au_3_thermal{
> +	status = "disabled";
> +};
> +
>  &qupv3_id_0 {
>  	status = "okay";
>  };
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

