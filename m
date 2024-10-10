Return-Path: <devicetree+bounces-110008-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 073DC998CBF
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 18:05:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9A9531F25065
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 16:05:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02C5B1CCB2D;
	Thu, 10 Oct 2024 16:05:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OAQDjIcZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7A86FE16
	for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 16:05:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728576305; cv=none; b=Tp05riQ3ttLxlIcgIMktlVNFGWlBk19LtqDZOB1vMjEAX3v7r3Xa+cVlQ+nXL8erHvW3DWEeepYpDWHlwzDYe92+LH2JEdmV57jtSU64wx2NTGpZpDncjk5qssRVd59rWl1u0g4qLhKglrJ2zYTg55Pt1p1y9yiro4syIc4jXmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728576305; c=relaxed/simple;
	bh=H8EpiGxb7MZdfh1rqjoDtl0yYqhzVDv6ArYatW1EBZQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Zav9QoMKnpStrZC8C10NONGgdGN1Yq1t55Oj0icXLN0MEB/Ygyd5W2FRDVfzvpezGU4Cq8tMzkIvl4YESqgSuuLtXS4fAzUbZEpdm29xN6UNj2bPzG9z87qdzpIqWt5Uei3PHf/rAcIxhPTRDCLEU1/1M+UDN6nJxfFojgdPvyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OAQDjIcZ; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2fadc95ccfcso11846391fa.1
        for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 09:05:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728576302; x=1729181102; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZO/1w/YU0WxgA0J9udv1RC8JJ0WK5YUdEtFL+ZE7B7Y=;
        b=OAQDjIcZ1A8yvKDpXpwV2GvkIM9nM7muE/Qua7+OaLAMgeD569eJAhGFuHiyUqHw02
         AXdFEJhvQDrwLpQT3cT8Q/TpbInr2x1ixblpPa5pW/jVtH2bLegp6Dj1XPgZ1MBlNADv
         XH+7gGCRo+/OHYmbpigTFB/pJIO2Mb0gz8wgRxcpSGe4J35puXtCkvSSxLr3b7QBzeOC
         NGOUe9d2DguXNlwc7cpDZLvXEDtpQ2eFTPbwJMyOeQ3YjwEhAxthdJTUr3uzdQAeQb3p
         93xnd8j3Z/LXCOYQenBa4hGWo+8QcKjg3tGR/YTr5k4UmUxjyRpUlrEY1o6C3408/97c
         3W4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728576302; x=1729181102;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZO/1w/YU0WxgA0J9udv1RC8JJ0WK5YUdEtFL+ZE7B7Y=;
        b=HM/eS/tTQHSSbJFx8Yj84AW48yYwzSorDzwiFAreI4kd616askB6xTI663v415lR//
         FMOoV8I/3CjRTVy1dm8G4sUNqbe+bXUlmM2nMDGKcHhjJ2qlf0dCphp2OTndkrz3cCOu
         cNtQk8sPAmvI3GkY2Mrjgkq5OP3mtHO+kfrdm5gLiQRoWYEB9Mt2suAD+3wpJ+6HhA+t
         LKp899LZFeZFDw5HxWn2iB+MDaHBOytvEfM6/1dFKwWNMGf52k/WH7OG04gDymcGO8S0
         hNsi0bZM4qZO6RLVHefm7rYqQldqv6IYwJzj8Jd4EZISBNf0u/RVpL9tsTHjSYjlspFC
         p0mA==
X-Forwarded-Encrypted: i=1; AJvYcCWxSD/bNEzKaWf1SkgIRpFnK91BNX7dhkl3Ls/o0dFrRXrZBMh0dCtytQzgk5Pv93CXcx3P6HAKGHxm@vger.kernel.org
X-Gm-Message-State: AOJu0YwukRdPJqE70XrLikNlM7p/unNWc7i642Xg5rGPrZfg77jfQlYY
	Y2YnIIQvAoZaWFZ0gtRmzOE5bZb2IK1a7tjMRA9HV17KIlKfFd3aatQC4pwvNtY=
X-Google-Smtp-Source: AGHT+IHiF+d8UCbWAR4TFTEqWftSjyGbqLiIXHFzDdSvOTJM1rDmOqUUmm8GW6gTZjuOMRJVmU+6WA==
X-Received: by 2002:a05:651c:b0f:b0:2fa:d58d:dcf3 with SMTP id 38308e7fff4ca-2fb187cd62fmr47166951fa.33.1728576302168;
        Thu, 10 Oct 2024 09:05:02 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2fb245ab69dsm2488111fa.57.2024.10.10.09.04.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 09:04:59 -0700 (PDT)
Date: Thu, 10 Oct 2024 19:04:57 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krishna Kurapati <quic_kriskura@quicinc.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Rob Herring <robh@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, quic_ppratap@quicinc.com, 
	quic_jackp@quicinc.com
Subject: Re: [PATCH 2/2] arm64: dts: qcom: Enable USB controllers for QCS8300
Message-ID: <iycqvw5ztqufcu3hgtpvrrir2anurjeckgmj6ll6twwsmotxhf@v72pwnmvq6yx>
References: <20241009195636.2649952-1-quic_kriskura@quicinc.com>
 <20241009195636.2649952-3-quic_kriskura@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241009195636.2649952-3-quic_kriskura@quicinc.com>

On Thu, Oct 10, 2024 at 01:26:36AM GMT, Krishna Kurapati wrote:
> Enable primary USB controller on QCS8300 Ride platform and
> set the dr mode to peripheral mode.
> 
> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 23 +++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> index 7eed19a694c3..3e925228379c 100644
> --- a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> @@ -265,3 +265,26 @@ &ufs_mem_phy {
>  	vdda-pll-supply = <&vreg_l5a>;
>  	status = "okay";
>  };
> +
> +&usb_1_hsphy {
> +	vdda-pll-supply = <&vreg_l7a>;
> +	vdda18-supply = <&vreg_l7c>;
> +	vdda33-supply = <&vreg_l9a>;
> +
> +	status = "okay";
> +};
> +
> +&usb_qmpphy {
> +	vdda-phy-supply = <&vreg_l7a>;
> +	vdda-pll-supply = <&vreg_l5a>;
> +
> +	status = "okay";
> +};
> +
> +&usb_1 {
> +	status = "okay";
> +};
> +
> +&usb_1_dwc3 {
> +	dr_mode = "peripheral";

Is it actually USB peripheral only? Or USB-C which isn't handled yet?

> +};
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

