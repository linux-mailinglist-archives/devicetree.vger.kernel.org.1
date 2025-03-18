Return-Path: <devicetree+bounces-158606-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4594AA67709
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 15:58:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5C9AB170A57
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 14:57:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A89F220E01E;
	Tue, 18 Mar 2025 14:57:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wbxAswXQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9DBB20D4E7
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 14:57:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742309827; cv=none; b=CPsaCAK+RvVJ4I58NBnnVOjYMMuzpATKMyOBc54X3TPAo/wGn2MXNbUl9TlfCiGkyfbLC3WTkUa69r44yRObfKK5b+lPPqYXdTkcqxrvz1RY+0hJ8ScXgAhnINuHpMpwhx9q+QBXj2cl/oDER0+Aj64hqlSG5aw0XbZ1YhNslz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742309827; c=relaxed/simple;
	bh=N+sFJXUfBMA0CoJhUPLBMoIsImXXvb0Qq+jGqBryElU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FDw1UP/37T5G6X2ksH0UvTe/K66zsTcem+AXQwSQ18N6CJiIVxTEGPQgVeMm98GIxPiZqIoO/o3oxQ9qE4tP9UrNjA6TsQzMCSRgMoPd2pClQ7dpQLSMKsvUi3D2CdJXKI2POa0euCREVWDD+PCa2sOgKQL5Yk/RhhTVtyPH8xU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wbxAswXQ; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-abbb12bea54so1184337666b.0
        for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 07:57:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742309824; x=1742914624; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1VVVI1GriwyXPsCwD+FNmlh5SAMatdc1NEjAoi7sx58=;
        b=wbxAswXQ6h9hvVyqLzZGZhMpub+q7TrY5QLHz2CEyeAxIkiuC6eAN6HIKqth4g/gpZ
         Xfh9Z1WDhZd0PDV2knkgsYN9LPIyZ06/dRBtUmG9YjRbjXS7NI+1IITkdTJH65/gKNr6
         Tk5SzVktBHM3hlIuCEfSjkweQlEzWzAQYSR/SBfuVKT/bn4jsRKJ+xfIRExrdqGu6RBv
         PbEKJ3ClFTQcCn+xUi5PrGPRleRy1VsxZ3CbtEsivxd9r3PhZes1+N/no0JztgR94sfc
         Yh7vBRB908pmXIdte3gyeK4OsLu7FcBvsexIJhOcuKDxKyB1B9LTqjPKSdyMFpgDzfe4
         FsGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742309824; x=1742914624;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1VVVI1GriwyXPsCwD+FNmlh5SAMatdc1NEjAoi7sx58=;
        b=s1pz0eG9erO1LzcBQAzxv6Zu3oucz6RarjJ05U9B/g8b4M1meyqdnIq7wvPuYVWn7Z
         2PSKmPChWvh5KeAdqu+WxmRQwVws09uS6n0y+gCkIGv4gcTjc3Wg1494tEIFGpqYeCSG
         ZMe8bKtjCDtzlV+sGxHXDoUcmgQpm3+ZHYBOPWrGpKad9wYceEk2XTAZhOPNz80rXWDe
         bEoACECigEvWR9AFpfG/ZPUx/D6U3q4DTBLpwT2ZshMefpdB0YJSHsLQb/Iaa/pLA71o
         DlPKwmiIaFyTI54kAGUhKh5vgCPr7B9IBW3kfpgMmTam4+4+oTik1n1KXYU5qTsgVWhM
         EvOQ==
X-Forwarded-Encrypted: i=1; AJvYcCUBYZUsyv6Q37fKAznYD1MDXvS9dWULpesbADa7Grdh3jwO5t/spwDpBqbrBY3yon6/wsOKQXtgir0n@vger.kernel.org
X-Gm-Message-State: AOJu0YxaPyTKbPYkCbzKaEQW/3V0qPkEp0MIa5r4+jUFhisE77zZLlZl
	NKh50aANgxBVx7Yd91qywhWNDiWKrAlE6ai14taW39hEWHG8T91WUK55LdiIkoI=
X-Gm-Gg: ASbGncuyDvaw8/0Xxd8reeeF+Skl5ruHf9L9OduwEfz6NFWR9btW9NH8nFLciHMy6bv
	vgg/+yR49/uQ9SOKxZOKahOvEqOc/H2uh7sZsPPXrLJChaWFx4aRMvCvfgcF/6Kz5LGOquAHkiK
	iGibhPFUqfhtykfMGzZCRJw8K8YVQMvT9HNxGSYMvnLP9qYtkrnR4lL2XA5ZqUdYNIQrwGO8zdN
	0CpFrSRUiT8ExepnT6jK8s0PkTftHL1u5U5xk7+OkCQQX7HyAyqSmGwNO+B2heSQKu5VtS2ETA+
	4QIXsaftuugBHJCTmI8wOwuooK6Yswd5oq2Fo48EpF9nifvBmjlZ
X-Google-Smtp-Source: AGHT+IFPBNRVXxeGQms9vMv75e9tPnzez+MLNXkizMdoSmRWOjlnAFWQdlrvFmC3VIruWWq7ehbuMQ==
X-Received: by 2002:a17:907:3d8d:b0:abf:614a:3e48 with SMTP id a640c23a62f3a-ac3304042e6mr2319157866b.50.1742309823976;
        Tue, 18 Mar 2025 07:57:03 -0700 (PDT)
Received: from linaro.org ([62.231.96.41])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3149cfbfasm867829366b.104.2025.03.18.07.57.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Mar 2025 07:57:03 -0700 (PDT)
Date: Tue, 18 Mar 2025 16:57:02 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sibi Sankar <quic_sibis@quicinc.com>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: x1e001de-devkit: fix USB retimer reset
 polarity
Message-ID: <Z9mJvh2KGwhOJ6I9@linaro.org>
References: <20250318074907.13903-1-johan+linaro@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250318074907.13903-1-johan+linaro@kernel.org>

On 25-03-18 08:49:07, Johan Hovold wrote:
> The ps8830 retimer reset is active low.
> 
> Fix up the retimer nodes which were based on an early version of the
> driver which inverted the polarity.
> 
> Fixes: 019e1ee32fec ("arm64: dts: qcom: x1e001de-devkit: Enable external DP support")
> Cc: Sibi Sankar <quic_sibis@quicinc.com>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

> ---
>  arch/arm64/boot/dts/qcom/x1e001de-devkit.dts | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e001de-devkit.dts b/arch/arm64/boot/dts/qcom/x1e001de-devkit.dts
> index f92bda2d34f2..dc1a8f5d485a 100644
> --- a/arch/arm64/boot/dts/qcom/x1e001de-devkit.dts
> +++ b/arch/arm64/boot/dts/qcom/x1e001de-devkit.dts
> @@ -788,7 +788,7 @@ typec-mux@8 {
>  		vddat-supply = <&vreg_rtmr2_1p15>;
>  		vddio-supply = <&vreg_rtmr2_1p8>;
>  
> -		reset-gpios = <&tlmm 185 GPIO_ACTIVE_HIGH>;
> +		reset-gpios = <&tlmm 185 GPIO_ACTIVE_LOW>;
>  
>  		orientation-switch;
>  		retimer-switch;
> @@ -843,7 +843,7 @@ typec-mux@8 {
>  		vddat-supply = <&vreg_rtmr0_1p15>;
>  		vddio-supply = <&vreg_rtmr0_1p8>;
>  
> -		reset-gpios = <&pm8550_gpios 10 GPIO_ACTIVE_HIGH>;
> +		reset-gpios = <&pm8550_gpios 10 GPIO_ACTIVE_LOW>;
>  
>  		retimer-switch;
>  		orientation-switch;
> @@ -898,7 +898,7 @@ typec-mux@8 {
>  		vddat-supply = <&vreg_rtmr1_1p15>;
>  		vddio-supply = <&vreg_rtmr1_1p8>;
>  
> -		reset-gpios = <&tlmm 176 GPIO_ACTIVE_HIGH>;
> +		reset-gpios = <&tlmm 176 GPIO_ACTIVE_LOW>;
>  
>  		retimer-switch;
>  		orientation-switch;
> -- 
> 2.48.1
> 

