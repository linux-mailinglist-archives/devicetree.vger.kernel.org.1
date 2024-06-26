Return-Path: <devicetree+bounces-80420-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 461AC918E0D
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 20:14:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 65AF6B21149
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 18:14:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 599F0190494;
	Wed, 26 Jun 2024 18:14:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Hr9JF10R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9246C19048A
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 18:14:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719425648; cv=none; b=j79nV+jBdxZ2XwERmcQPI46Omd2DVk7SPBYWeOA14ZxCm9hVPtVM9nJZTsURlsuXvy/0qFx6xZX97jLsDKXYYXFqNIHOw8/DeBTx+OGxQeWOdY2NH4Ukh1Y0ADM+fWn7BSXN2y7TDUnPLT7AWfRK/gkuE2vj8tnBdZg1ZX8PzeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719425648; c=relaxed/simple;
	bh=1zfWFg0hGp1JNJUfoZR3fDuVYNICs/moqP1qpkRSTWQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=N4UlhE3Z37sLe3C9pf2iCne1Q22wetUaBkBc0zZKaSFkzs6hnMBoXjAyCALuw+AZMQLXb9sc+dWs52VwzThJvgzeSr91Yg6sGB8glCYY/fjbSEDR3hPimQUHTUfmgnBa8P2R1sjSo1oLxQTwc3/pTdL2oILe3fJI5k9h625z6hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Hr9JF10R; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2ec1620a956so84343751fa.1
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 11:14:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719425645; x=1720030445; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4Rw5DgJfkqmChrhZK+6AbToGg1Sd58IidOonSm8zsNc=;
        b=Hr9JF10Rj2neZ06N0A91z4wBtfAfu7Nit9bg+5dDZI8jDkCxoceE3baZDVdn0rdUKe
         GkFVkRekFaNyWiZN/nnM4YrPYeVASQRWLa0MOv4T699mh29fE9Ep2hT/rCJ9H4Gezi2S
         S884pdn4tmB9T6jl8V3mHRVsaupe0aFjEj6YoVGqRbf3s+0KHYOwymw6BD/ni1y1c5fO
         +JbZcxUfwQaD9QNrEuMGdO6YGNn042CwUiWrj05qWgEaZYYtgSZxdQLB6fpH8H7XmQzD
         T1RRi3pPY3aD18Zr/szpd2PIXpVHKR2fBV41NhxhTyIETxSo9CWC0RPc1jmtMrBJVr9I
         jEMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719425645; x=1720030445;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4Rw5DgJfkqmChrhZK+6AbToGg1Sd58IidOonSm8zsNc=;
        b=nv7zCeRNHUBJilAOxmhW9ocSXQ9Vm8sKTOlNUe+CAYeree/v8s4LG6+MqdeKTYKaCa
         8EOOwJBMpaonKxKUnkbFW/tJkqUGXfT0Ab/jAYOYJfdpobInb82mrQavYXG52Jp/svIb
         OSX98oZwUyQl002sC6XD+bVc39omAtKd9Zr6+83DQPfeoBv751rGk5CODkDAE2mvxW1X
         t3cW2z7f22uWl/dbO0eOUIWHFOFWmpsjC7rBe3pvfn7sfdGbl8rIUw+X8sMP853YlvMT
         LnkhHKo1iUBvPWlN4q/3jLEyDjPThOF6oB7b67Q1N57ZCFwnXu1omcl73auB9CigqXoz
         z7RA==
X-Forwarded-Encrypted: i=1; AJvYcCVlBe3IqjYGB5dnhNE1UqqFCr4S9ILTyCWmbNda98qhc5/0SbqctsFqitSENfewlDpUA5p8lxiQEeglHEvrcpt+aJmE8iJQ4y7p3w==
X-Gm-Message-State: AOJu0YxxWSm31MAZhEKZwkixFZSm2UE1LiAA62UoJsAb1xFT1QaBhoIf
	c8vLj35zvofiWcB2nYfMpSJ5TN6mHuQ+MST68FxBHnTuww1Ua+EhEzH/2h95A5Q=
X-Google-Smtp-Source: AGHT+IGRCK5IvIO9TLvRDM3DJP8mNy0jqc/vn+cLpORxslN2+hI26X0IxtdAO2AtmtUStvp0K/2qgg==
X-Received: by 2002:a05:6512:ba1:b0:52c:88d7:ae31 with SMTP id 2adb3069b0e04-52ce185f67emr8532539e87.48.1719425644796;
        Wed, 26 Jun 2024 11:14:04 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52cec15c9f2sm695437e87.276.2024.06.26.11.14.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jun 2024 11:14:03 -0700 (PDT)
Date: Wed, 26 Jun 2024 21:14:02 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Devi Priya <quic_devipriy@quicinc.com>
Cc: andersson@kernel.org, mturquette@baylibre.com, sboyd@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	konrad.dybcio@linaro.org, catalin.marinas@arm.com, will@kernel.org, p.zabel@pengutronix.de, 
	richardcochran@gmail.com, geert+renesas@glider.be, neil.armstrong@linaro.org, 
	arnd@arndb.de, m.szyprowski@samsung.com, nfraprado@collabora.com, 
	u-kumar1@ti.com, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org
Subject: Re: [PATCH V5 7/7] arm64: defconfig: Build NSS Clock Controller
 driver for IPQ9574
Message-ID: <rlqrgopsormclb7indayxgv54cnb3ukitfoed62rep3r6dn6qh@cllnbscbcidx>
References: <20240626143302.810632-1-quic_devipriy@quicinc.com>
 <20240626143302.810632-8-quic_devipriy@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240626143302.810632-8-quic_devipriy@quicinc.com>

On Wed, Jun 26, 2024 at 08:03:02PM GMT, Devi Priya wrote:
> NSSCC driver is needed to enable the ethernet interfaces and not
> necessary for the bootup of the SoC, hence build it as a module.

It is used on this-and-that device.

> 
> Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
> ---
>  Changes in V5:
> 	- No change
> 
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index dfaec2d4052c..40a5ea212518 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -1300,6 +1300,7 @@ CONFIG_IPQ_GCC_5332=y
>  CONFIG_IPQ_GCC_6018=y
>  CONFIG_IPQ_GCC_8074=y
>  CONFIG_IPQ_GCC_9574=y
> +CONFIG_IPQ_NSSCC_9574=m
>  CONFIG_MSM_GCC_8916=y
>  CONFIG_MSM_MMCC_8994=m
>  CONFIG_MSM_GCC_8994=y
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

