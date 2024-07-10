Return-Path: <devicetree+bounces-84704-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A849292D418
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 16:20:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2C82DB22437
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 14:20:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BE89193461;
	Wed, 10 Jul 2024 14:20:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XOHPgj37"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476E3193455
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 14:20:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720621218; cv=none; b=vD3EBNWc8mLvgt+SyqVN8Tt13y+uVHeYiL4Y2Ng7rxJoRr9AFeHDwFXpwygWJtjJq2H0ocEiEGGIE4kT9HCN4Rq/n+yxzYGLlZTvTlttsZGzs55aC7jGz538mSHMGouRt5t4yfrF5x9aBBzgravTX/CeeiIgYVzS5XJJAtqpCwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720621218; c=relaxed/simple;
	bh=ve7x1Dbv42XAuoZEa9Qrx/JMTNm+HI0XOImGmGmFa5g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=H6hVXzY+Rc/ft9gVo8tsgHVuZpjmUIeJ9Rlsi2wuyILZoq57yt5NWpGfOIm8OwPh4hUfDjhygU+3WPM3p6DZovJvbrocn8gkL0Dq7ub++S2jbjUqgU3LSZB/XYrSJ5e57wXM5392CzRKkaffwQA/db39Bi0icW7iobdFv7NdL70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XOHPgj37; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2ee910d6aaeso71571521fa.1
        for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 07:20:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720621214; x=1721226014; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=XpeXb3pbHZE8iFdvcMTCxnrODafkuyDSXSsC2wHbrso=;
        b=XOHPgj37w7qRtiiGunJEQEFBeqj+zvLJ0FH8sTaH7mVBEmx6IpY9irZ0YSmHc+IA3S
         MzHdBsyaaRjRcVqQEjCt/meefLFuCq1tsudSNZgOVn+21jSQMLzBKDr1mzSyzy1KQDMr
         Kado8vCSefxk/3pXTQ+HW0V/zJlzuU0vPzW1ml/f0nguk9TeNTFDnSVXanFZ3NbJn4Nk
         FW403KqGTVuj1qpnfv9ZGzRDHyGmmMIreO7ZKc0eoaGpIWPkHepAuIZHLiXOFtnf46Il
         782r4V9joWxkeA/qDmns7eT+zrThNDughfXYsU/0ZnLyDA8GGKzeiT/OOPKjtTXSzs53
         i88w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720621214; x=1721226014;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XpeXb3pbHZE8iFdvcMTCxnrODafkuyDSXSsC2wHbrso=;
        b=mrgrcjQbj0y6M92P8XGhEzykXdUnOS7TD5jQTxJK40qh2cLkbLabE42BSHQpMbFvJQ
         vSIxoFQlQEdbu9DBBxc09b2ri6JL1Lv8EIIfLVQSM5mLY53KARFKIM3ygbort0XN9Lsc
         vAouxcOve65LPE1r+XxJgZqRKg7JpPw7v+8ZLURXH3hBYf0W9Cv9JpkR/ED+saEYoHIt
         nbqOw0+wG6lU/2pIpOSTkxO+s46UoO1Nyu56q/wbIxfzwXcsiGN/zoq+WlrHxyoPpPd4
         yQjrV0wjHs5EFcwd3wZ8h0I+N2+sU2gL4wHBdz0rtAAnzkZrKND581oWTUW7lSuzSa04
         TKAg==
X-Forwarded-Encrypted: i=1; AJvYcCWCxqTVTfpgtOBbYh7DdGyFSCkxRDYca51ral/HhhNOeUf5vM1GvImLL4Gi8X8mlALsVGu5ulYtjNiIbWb5Cj2P9hT67o3WUgoArg==
X-Gm-Message-State: AOJu0YwAN34KOGgs2Ww+Qc4snFA908JrBZtIkZ8YXiqCWLv9rIxQwdOC
	FkaZfWaeFWf/pnX9+TW4EBMK+IfDoXzf7YcJUFnhBaYeUk95aGVAFOJ3Hgfzt5A=
X-Google-Smtp-Source: AGHT+IHv518AJrnD6yFHzNQhjkiCjkN0ct7XJ+ZrjdCwY06UfQUDBwQbvFbm/FRdyJskVGfv2NTuhQ==
X-Received: by 2002:a2e:9b0f:0:b0:2ec:3e02:972a with SMTP id 38308e7fff4ca-2eeb30bba8bmr35455641fa.11.1720621214310;
        Wed, 10 Jul 2024 07:20:14 -0700 (PDT)
Received: from linaro.org ([82.79.124.209])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4266f6f1182sm82083095e9.14.2024.07.10.07.20.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jul 2024 07:20:13 -0700 (PDT)
Date: Wed, 10 Jul 2024 17:20:12 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sibi Sankar <quic_sibis@quicinc.com>,
	Rajendra Nayak <quic_rjendra@quicinc.com>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: x1e80100: Fix up BAR spaces
Message-ID: <Zo6YnCVj/8/KLrC1@linaro.org>
References: <20240710-topic-barman-v1-1-5f63fca8d0fc@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240710-topic-barman-v1-1-5f63fca8d0fc@linaro.org>

On 24-07-10 16:07:23, Konrad Dybcio wrote:
> The 32-bit BAR spaces are reaching outside their assigned register
> regions. Shrink them to match their actual sizes.
> While at it, unify the style.
> 
> Fixes: 5eb83fc10289 ("arm64: dts: qcom: x1e80100: Add PCIe nodes")
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

> ---
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> index 7bca5fcd7d52..bc5b4f5ea127 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> @@ -2895,9 +2895,9 @@ pcie6a: pci@1bf8000 {
>  				    "mhi";
>  			#address-cells = <3>;
>  			#size-cells = <2>;
> -			ranges = <0x01000000 0 0x00000000 0 0x70200000 0 0x100000>,
> -				 <0x02000000 0 0x70300000 0 0x70300000 0 0x3d00000>;
> -			bus-range = <0 0xff>;
> +			ranges = <0x01000000 0x0 0x00000000 0x0 0x70200000 0x0 0x100000>,
> +				 <0x02000000 0x0 0x70300000 0x0 0x70300000 0x0 0x1d00000>;
> +			bus-range = <0x00 0xff>;
>  
>  			dma-coherent;
>  
> @@ -3016,8 +3016,8 @@ pcie4: pci@1c08000 {
>  				    "mhi";
>  			#address-cells = <3>;
>  			#size-cells = <2>;
> -			ranges = <0x01000000 0 0x00000000 0 0x7c200000 0 0x100000>,
> -				 <0x02000000 0 0x7c300000 0 0x7c300000 0 0x3d00000>;
> +			ranges = <0x01000000 0x0 0x00000000 0x0 0x7c200000 0x0 0x100000>,
> +				 <0x02000000 0x0 0x7c300000 0x0 0x7c300000 0x0 0x1d00000>;
>  			bus-range = <0x00 0xff>;
>  
>  			dma-coherent;
> 
> ---
> base-commit: 0b58e108042b0ed28a71cd7edf5175999955b233
> change-id: 20240710-topic-barman-57a52f7de103
> 
> Best regards,
> -- 
> Konrad Dybcio <konrad.dybcio@linaro.org>
> 

