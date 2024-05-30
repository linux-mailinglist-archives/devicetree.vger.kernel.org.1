Return-Path: <devicetree+bounces-71021-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E0E8D569A
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 01:53:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4BCC6B26099
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 23:53:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A88D184114;
	Thu, 30 May 2024 23:52:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="O/J2OtCG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89B36183A71
	for <devicetree@vger.kernel.org>; Thu, 30 May 2024 23:52:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717113179; cv=none; b=s9iF+Tnk3WGGPTf4nRGs3PC10svroOrXrak5x4yyVz+t/oRjvHDGV7xgU+GZcTSR3CmBmHv+FELfYKawNL7ejTR9LgcFI/4v2yz4LvNqVD/nAq9YECI/IQ/qUMJ18yOEjNdF6UZbPV0jjgVyRA9jag7GiK5JS+qPOVDP8mkVaSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717113179; c=relaxed/simple;
	bh=WNi3/u+gM5pv6zM5jVlqhRZxACAWD8ZrWuKPrDlprgc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OvNQI+ixu0AapOagl9DpYY9mhsUGaRn1+G2hOSVKcnhMSJt3MqGYpexKgFeuviODiP10oCXZWicNuUIEWKFZj8+D4AnI3bAr1+fbZzj1uTRk9pZlDYFRGWaj6aj0eydKiGSlkL3S236GXXfnlxGYP1FjLvlXiLd3a1QCGwcwRhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=O/J2OtCG; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2ea24dfd508so15004951fa.1
        for <devicetree@vger.kernel.org>; Thu, 30 May 2024 16:52:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717113176; x=1717717976; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=g8Onul56fdb6n0dzoriel8Ce/xm1MXtP6/fgkQgktDA=;
        b=O/J2OtCGveo9fnzLJqr3b/FzzekNaBHLo6wwTmd9oBl/3Hgw0cze6xS3Wc04luiGIK
         +HfzsTUJ/P5oyaug3ZnQhQYgiE6awWIV6XPHlJSYUiWZShUQxXeV2GpqkIhdUA1b/OBd
         mGar0Nr6oaOq1v3ZQnqCDX0gC4/4Jbz7A9dOdjFD/BWyHLH1eMDtgliFg0JXBKxFsrwP
         G0msgI2lVXmebfuekITNGtQqjp2kZYOloZXw7+CbElajhvxdOc50eK2/FCl8DyI6pVM/
         OMYtT7EsPiy+ECQWk6pZJ7X5BkggfthXJxBsF+fPPVXewmiKvuvpuYHE/cGXeTyLKVUp
         fr/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717113176; x=1717717976;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g8Onul56fdb6n0dzoriel8Ce/xm1MXtP6/fgkQgktDA=;
        b=YQhPgyyBTvZkarOj57y2Nxs3E0RwdYnr1c36bSE5Jh1Wudic/vnPkfUgMVAnvUyCcS
         noKK6WI1ooBbioCIwmGhxXYTy/ngpZikPzXEhg+dAskvCBqvlJIf3IPsSyjouqHkgQat
         SEX+utxW2h6nJnxmlYCU9HxRCZm33uqCI+kk78gt/dpFkmCbQZpTOGj5XvT9AVUcBYkU
         JRjoAtV254Pkgg0HAxOnQEcTx5lXnyRoAVjv8f8uENLDTVueFbiX1EoA2Pye58GTEglP
         3VoDrovTYnlbsz2xqBM9Wp6cNFPp1z71aE3PWkx3A4IqO5jou/4VF6F79Xy5XABN23Gc
         HkzQ==
X-Forwarded-Encrypted: i=1; AJvYcCVwJzvUCqrI4xi/mY0T+leB8OT3QsGvnw3o5Ujoi75lcdmLoR8pNxf/iGM61kvkMZ5QDu67coPvk5WAdn/acctIuiQRt6jI1g1Vvg==
X-Gm-Message-State: AOJu0YwxEG9xJ7zC0RpRo0WeCCwD9/+qRguhp22nEnEVsbj80/QVabA9
	VJWPuBE/CDGPNkVvfy9zvxHtfE9dLRnWaHtZ92uZjJaqLRszSagAv3BrAd2KtN4=
X-Google-Smtp-Source: AGHT+IGgIbHLys+nEyhuOKfKkVv/+ts5JGNIzMvJ115J+XAc/x5LXoHO5tA6f50AF+HVPtmyaWWr2A==
X-Received: by 2002:a2e:be10:0:b0:2e2:1dd3:c521 with SMTP id 38308e7fff4ca-2ea84c0cae9mr11073341fa.1.1717113175631;
        Thu, 30 May 2024 16:52:55 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ea91bb4a82sm1202081fa.43.2024.05.30.16.52.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 May 2024 16:52:55 -0700 (PDT)
Date: Fri, 31 May 2024 02:52:53 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sibi Sankar <quic_sibis@quicinc.com>, Rajendra Nayak <quic_rjendra@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] arm64: dts: qcom: x1e80100-qcp: Fix the PHY
 regulator for PCIe 6a
Message-ID: <d3vdxydqllegve2zf46o4ubnfytgfpnkls27i7jq57vq3bxwht@luvuw3wprcie>
References: <20240530-x1e80100-dts-pcie6a-v1-0-ee17a9939ba5@linaro.org>
 <20240530-x1e80100-dts-pcie6a-v1-2-ee17a9939ba5@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240530-x1e80100-dts-pcie6a-v1-2-ee17a9939ba5@linaro.org>

On Thu, May 30, 2024 at 06:43:40PM +0300, Abel Vesa wrote:
> The actual PHY regulator is L1d instead of L3j, so fix it accordingly.
> 
> Fixes: f9a9c11471da ("arm64: dts: qcom: x1e80100-qcp: Enable more support")
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100-qcp.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

