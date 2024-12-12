Return-Path: <devicetree+bounces-130181-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BEDA9EE321
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 10:34:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8965D1889426
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 09:34:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7314820FAA7;
	Thu, 12 Dec 2024 09:34:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RQXHOvsN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB45820E30C
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 09:34:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733996087; cv=none; b=NfbK1Z8rgcPh9E8CwDzacdiBB2DQcUT+ab8BPEW8XkDhRA40LtMcruln8FgsA1Sgz74PaAr893Rv8lPW776RLTbaZeO6FSGJMcw2goQ/h91sC2THpkWM2UYMBxXWSsKRYjGlDn34k+TNR6nnDStT7NUB8Z7mao2/RKKCrtVseIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733996087; c=relaxed/simple;
	bh=VppiEC71iSiVaMU4csmiMBmKCcacxPVxHFurn9yQxl0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ecPc+aU5neTDSkCoT48LjVkudUBEl1wJ4ZXFKdaHoYO6oLXe2JA65C8UXMQGRbfRL46r3XSupBcV7TZEvbgJBAz0jMIV1ED84DqVz0qie2AQpO+D95aD9M+aZBXnnHWNb/O2RRfIDhPuSajLVAsJgivdUnSOJ12u4+q15UtbMBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RQXHOvsN; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-30039432861so3625921fa.2
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 01:34:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733996083; x=1734600883; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xpy/CwxbVse7VurY2aJqzrYBxP3zeCul6ZdOEgv8Rdw=;
        b=RQXHOvsNslQl1jpCD/RJH+wazhJnF9vY1KB3VfhK1xRwXp01NTj27Qgd6EDiQa0lqJ
         7YXLjSu1LX3AGUzsIsAT59rxfYBe8dkEdBlhfpRlq3YRXSlui3HXJGFa3Vco+Edu6o2o
         j4ItZeTmlaSsNmVXicNcCG7RERPFe/QXakscyUbHbXT9QhhZzSCB63t+N0cKsaFBWPit
         k1PLspP+Shc6iMZRkMNRZ/iHhrbLd18joJ1YZQEbac81ORU3bMZfw7v36XFWjalFCvRT
         T8BaXC2AuhLJeRTXMUaIlWpMtXRfmzxdHf8DRw0Xt1T9/Z3lCFYetLnrKjCIYl1oL4eU
         vEkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733996083; x=1734600883;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xpy/CwxbVse7VurY2aJqzrYBxP3zeCul6ZdOEgv8Rdw=;
        b=Nb9d2RAMMd5ggNsqRCxRVJoaW50MWyzGvs6ruTU2VAptLD8YF4FqXXGR4ECpGCqTfN
         65tWq9AYot8M11aE08MF3mAjVXRQoDLr9FATgV/1+FHP44I99OP+4Kthu1zVLrkahbF5
         7MEAO5D64YHD08vR7xTDGPg0luLQJvFBTLSdKtoHqppYtYr69AgJJrAkM9Uzon/dboJe
         9NUxF13phwWcdbIITWC2nggbOKV3GxmjMngYjw4464aLMWUGo3QNXPmEoUVPi3ChR2IF
         APfcXpNXuAcNiI1urocxw2j+wUEPNzUmIliP50dZvtB05pRWayx3Q/vv9HYhlvXoruZ8
         Jw8A==
X-Forwarded-Encrypted: i=1; AJvYcCX9/GpxjTF18qj7ZIAOQVbjsG2BVukLNMCogOU/ldYLatbmYm0A9XQlV9MbJeQZ2rf5YQ0zwyCz+kxc@vger.kernel.org
X-Gm-Message-State: AOJu0YzaZNMpIE20pNzTNJaeoek5x3snw1KXjkPGzURU1tr7Zf1e+CdR
	gpf9QpZPtq+rKxz/+SgTvA8ubCPAYm+TUvk77vIMZD54dbpHswt1auxzqJU1ReE=
X-Gm-Gg: ASbGncuGtUfk4VMjBS6n5flR7hSUUBrzSzRIzIaHMgj8jfQzaEkHEHPxb1OtkVrkYYx
	Pm5G6bWZ5JecE96HofdBnnKEqG31sIqxzXuGDKhgjDAhWOufphTroKZbt2ZXCrJwSyQY7uo2+8D
	VuKTaua72Fa1JaE10i1kiucRe5W2TzjeU7jPN/OisHHye1n2/jRAfRcR1wLAhznvLE+AskMKXLy
	te9o9t3b4lRgZdtAzLjD3dq2pVpXV2t8FSyjUcf/9g1hQH9TzLrscRbxQCHPv9XMgVkShKTnuMw
	2bCclWKLH8yrL3ioZnqQXTY+0GtgcUfz6fpj
X-Google-Smtp-Source: AGHT+IG5e9iODeyp5V5+1N/IJ6G9IYepmGYw4xB3atGT4gGgPPoEAvSwa4ZeH2rdPZSRW31u77cZEA==
X-Received: by 2002:a2e:bcc2:0:b0:302:17e7:e17e with SMTP id 38308e7fff4ca-30249d15d89mr8746231fa.0.1733996082664;
        Thu, 12 Dec 2024 01:34:42 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-302254022aasm11565491fa.109.2024.12.12.01.34.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Dec 2024 01:34:42 -0800 (PST)
Date: Thu, 12 Dec 2024 11:34:39 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Lijuan Gao <quic_lijuang@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jingyi Wang <quic_jingyw@quicinc.com>, Konrad Dybcio <konradybcio@kernel.org>, kernel@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH 0/6] Correct the number of GPIOs in gpio-ranges for
 QCS615 and QCS8300
Message-ID: <ccsuwijfrspm2a2irycsicqepjhwai5pfvgkd5dcaf3nhmqwui@hels74qjkiva>
References: <20241212-correct_gpio_ranges-v1-0-c5f20d61882f@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241212-correct_gpio_ranges-v1-0-c5f20d61882f@quicinc.com>

On Thu, Dec 12, 2024 at 05:23:59PM +0800, Lijuan Gao wrote:
> The UFS_RESET pin is expected to be wired to the reset pin of the
> primary UFS memory, it's a general purpose output pin. Reorder it and
> expose it as a gpio, so that the UFS driver can toggle it.

I don't see pins being reordered. Please correct your commit messages.

> 
> The QCS615 TLMM pin controller has GPIOs 0-122, so correct the
> gpio-rangs to 124.
> 
> The QCS8300 TLMM pin controller has GPIOs 0-132, so correct the
> gpio-rangs to 134.
> 
> Signed-off-by: Lijuan Gao <quic_lijuang@quicinc.com>
> ---
> Lijuan Gao (6):
>       dt-bindings: pinctrl: qcom: correct gpio-ranges in examples for qcs615
>       dt-bindings: pinctrl: qcom: correct gpio-ranges in examples for qcs8300
>       pinctrl: qcom: correct the number of ngpios for QCS615
>       pinctrl: qcom: correct the number of ngpios for QCS8300
>       arm64: dts: qcom: correct gpio-ranges for QCS615
>       arm64: dts: qcom: correct gpio-ranges for QCS8300
> 
>  Documentation/devicetree/bindings/pinctrl/qcom,qcs615-tlmm.yaml  | 2 +-
>  Documentation/devicetree/bindings/pinctrl/qcom,qcs8300-tlmm.yaml | 2 +-
>  arch/arm64/boot/dts/qcom/qcs615.dtsi                             | 2 +-
>  arch/arm64/boot/dts/qcom/qcs8300.dtsi                            | 2 +-
>  drivers/pinctrl/qcom/pinctrl-qcs615.c                            | 2 +-
>  drivers/pinctrl/qcom/pinctrl-qcs8300.c                           | 2 +-
>  6 files changed, 6 insertions(+), 6 deletions(-)
> ---
> base-commit: 91e71d606356e50f238d7a87aacdee4abc427f07
> change-id: 20241211-correct_gpio_ranges-ed8a25ad22e7
> 
> Best regards,
> -- 
> Lijuan Gao <quic_lijuang@quicinc.com>
> 

-- 
With best wishes
Dmitry

