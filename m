Return-Path: <devicetree+bounces-87223-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 41DC8938CF5
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 12:03:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7EAA4B220F3
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 10:03:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5812116CD39;
	Mon, 22 Jul 2024 10:01:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vlaBuujH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA6716CD1F
	for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 10:01:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721642499; cv=none; b=SEEUVJkrBJpyePn3u2kXDlPQZWASwN43qCFdB8467huBHIVuHShh7WHjDzvxaOnqWs9bhLMuFqdPtkWlgQrgxl8XsLHx6iKMbDMYjSFbJgZQe9O0jP/aJslYoXJ9rnmTwKpFMl720LizP7RBe5sC/9NxBdESz56jmhfxqyDnfSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721642499; c=relaxed/simple;
	bh=dOfNMXprxuOTJIqNXftoDjmUkGhzuU4fl4HxFVfYghE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sqDo/3IjJ/64KFrF4LrSWEdlYFS8LM4MdLaUVvK5a4DQIzs8FbPO7R3ZizBKxMfX0f0pyD77YmJxFg7WUchejUoDLkp9SIFSJ3Leq0HoOs5sYAvALFYl48mPZWXf5zzJa05okhlMEGzQbqmaBFGr2QbiXCtkxCuLJbvnAhbOYAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vlaBuujH; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4266fd39527so30751665e9.1
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 03:01:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721642495; x=1722247295; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ytO18//auMHqg43q1J+XUJwLA2IxsH8UJs5pxTf80pA=;
        b=vlaBuujHUC4xB73SYD96ftMRovToo6vduLdGzvGjX4nikJ7pyJ5YYFftT9Jy6ihlBi
         rgUt4JlT3iQgSFLdngIJsiWH0NJlocK7ZeT19olB+/KcjMKxj0u+VIn9VdJvRi5PLqY3
         ImGOJmut+ihG8M1TV4BBlg7N6TIltQQGN5jVGsZdI3q3KwPTHa08GnMwOUopW/H5Ilx2
         ojwoz2ciI0+s3rswnMEl0F9aDr5ZfMzDrwpfXZK7oCWgDeyn9EHFfPOLOSSyIPHHug+n
         IN9rD8qpy+bOgXjAh/Gaff+HiorGOrLXTEMyzF/UmAdVPC41NtoRMoEo6YhBUL8tClQp
         AQAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721642495; x=1722247295;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ytO18//auMHqg43q1J+XUJwLA2IxsH8UJs5pxTf80pA=;
        b=lF8aUsAc8NvUb3/PIWTBHdqpNamO3/A8BN6jMB0Cj3+Q46xee5pHpw0PuPyaJImFi1
         fJ+f7aVJuHV8Q36FCsPcc4yZ5Rng0hzvmNnQa5EY6W2609uMnpkVpdInrGwqVODhkU7h
         mD9SblcURCW/mXmfR/zG2gXEyMqd+nStMS7FjbPfXp16aIMEZITvcifelkwae7d5TQm1
         zAPJRaE0Kx/h2GSijTFzq0WdkZ03i/kforMryiZXwe2Ai0cAaLdQzKSk2hcgzgxydBY5
         v/3mWZywxAnMWU9oCY66nBPmwUfTLBFQHW8cM2+0KKkheOvrUHB7egJps9mjtYP1Zzcj
         7Jfw==
X-Forwarded-Encrypted: i=1; AJvYcCVqkLJnpDc9GXHSkBeG0PEkoIntaSAYx9Ai9gCXw1Vl9Lcs/Eb2ia8pL8MkfFAMOovSbNytbRkHXV2lNwfvcoMtvTdpszpad1/80w==
X-Gm-Message-State: AOJu0YzjqxCN6ACKy2ndFqDm7rTOG7FBPuDIvHbhYHv2GDjJ6+XVuuaT
	ghq/P8f4Zcgeg/VgUhxZyruvnMQoC1Uifv2aPdfaQu5tGMU13VXykLsZDAtRtCA=
X-Google-Smtp-Source: AGHT+IFDSFD4SfHMtCIYxabdHAniqs4bzDjVqHvhfrhDKSAES4pWOFGCRV6alffy8mZv8XeW3dOV/A==
X-Received: by 2002:adf:e787:0:b0:368:5a32:f5bc with SMTP id ffacd0b85a97d-369bbbe1673mr3705757f8f.38.1721642495293;
        Mon, 22 Jul 2024 03:01:35 -0700 (PDT)
Received: from linaro.org ([82.79.124.209])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-368787ecf92sm8033085f8f.101.2024.07.22.03.01.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jul 2024 03:01:34 -0700 (PDT)
Date: Mon, 22 Jul 2024 13:01:33 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sibi Sankar <quic_sibis@quicinc.com>,
	Rajendra Nayak <quic_rjendra@quicinc.com>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH v2 1/8] arm64: dts: qcom: x1e80100-crd: fix PCIe4 PHY
 supply
Message-ID: <Zp4t/YixQBRpY9F2@linaro.org>
References: <20240722094249.26471-1-johan+linaro@kernel.org>
 <20240722094249.26471-2-johan+linaro@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240722094249.26471-2-johan+linaro@kernel.org>

On 24-07-22 11:42:42, Johan Hovold wrote:
> The PCIe4 PHY is powered by vreg_l3i (not vreg_l3j).
> 
> Fixes: d7e03cce0400 ("arm64: dts: qcom: x1e80100-crd: Enable more support")
> Cc: stable@vger.kernel.org	# 6.9
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

> ---
>  arch/arm64/boot/dts/qcom/x1e80100-crd.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
> index f97c80b4077c..6aa2ec1e7919 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
> +++ b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
> @@ -788,7 +788,7 @@ &pcie4 {
>  };
>  
>  &pcie4_phy {
> -	vdda-phy-supply = <&vreg_l3j_0p8>;
> +	vdda-phy-supply = <&vreg_l3i_0p8>;
>  	vdda-pll-supply = <&vreg_l3e_1p2>;
>  
>  	status = "okay";
> -- 
> 2.44.2
> 

