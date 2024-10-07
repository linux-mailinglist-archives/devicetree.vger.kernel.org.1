Return-Path: <devicetree+bounces-108657-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 283529934FA
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 19:27:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 97BBBB20C58
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 17:26:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BCBA1DD876;
	Mon,  7 Oct 2024 17:26:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EBEiJ0OC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A10B21DCB30
	for <devicetree@vger.kernel.org>; Mon,  7 Oct 2024 17:26:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728322007; cv=none; b=T3pFhwahTyMPtlKHQy5AXe69Z+zyoxKecKnko/71ETlFnddQR81SelQGC3DI9FN6EsLzLdtYx1UOsaXfXkLm2JvTjMSWSHTRgWNRbPXVom2yJDzenPP82ZPXisMiESAjvG/JjY3R1zNMrgutH3bF1Zhdn4lW+OS0BZvtS+p5Xdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728322007; c=relaxed/simple;
	bh=f8J/xaTUSlbns5xMC+QDIDb/0E6cU5zNaymgX/wflrk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ElfkAP6Nyq64/l4PEHr+z3JtM0uKZ4I+0uuR0VCUNMzhguDOMtGlFp3Mi5q8RHQ0J5brfzqaeJRIqgNWrJEw4MdXlHkxpbkBD52S1ccYND95Be9WdhPpEho76xzikdF6r/6/3aiwHQdgJOjbecjeOSLT5sLzWgHxheFmqGw2UT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EBEiJ0OC; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-53994aadb66so4228236e87.2
        for <devicetree@vger.kernel.org>; Mon, 07 Oct 2024 10:26:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728322003; x=1728926803; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=iaLyid4v6v3RyKRHRBjHKUsBfRZPQ6szoceuABDIEJE=;
        b=EBEiJ0OCgKyMHuBk8fLBm8PZxOVD0QKMM77zc3Hwo4bLZvDJ4qDctkUnZgtTvIHeyw
         aNZqU2vycAD9EAdQ/hc1o45VIaJItMOCLW8fkhLgy9EyiOGmY0NmyHpUCPomoeCc+f7E
         TedDa443U+jasCf63gLU9bZ4d6gLsx1qS340apZXmmeown6WdKnJzri+8tpSYJz8MXgP
         pQ0K0Po5dfStt9NiQV6pOKma6siN3QT6BUL23olnqngmJcpTcWu+JAYWpkOF/lPKinw5
         OiPEfHEUVizclSMWgm8QnQUW33tH6NGjNUSoJ0Kzrk2QbmoEQnl0VldaQILrweAyuHUB
         uPiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728322003; x=1728926803;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iaLyid4v6v3RyKRHRBjHKUsBfRZPQ6szoceuABDIEJE=;
        b=u0b/QMVxgkKr6dzwG35Rz2+1yw4CfA7eutuGlvMaUX64knkceMxtqJtXzx+rFsrzTi
         IUEFY8AiViR7EzuOIxV6L/51a01F52B77dPm4CbW9M+KmdgrTba0Fjz+KD9+1BJZUehl
         Gr0WZKmuplDUBMpDxCiyZE5s+9O7cUJBDlKVgV7VtE6ENskRQ1dErdJjnXZyVDtsD/Aw
         Yt15CDDHadtWV74Xrd+9//8lhPrL8ZI4wnkU/psHhOZcu1lTdzcK9ME/o/0F7JRSccvx
         KrtaJA5skuipb/gAddCZpj1yIe1yk5YWCE5opg7EczL4QaBmINXNcs+aG5MtvhYGL9i4
         eHpQ==
X-Forwarded-Encrypted: i=1; AJvYcCWM1Wx5MHUqcf9J6GUm6HD6vphFVQSEtvzRcv4JrxjwPJKDQ4PlFDfG8CsGMTItgFLbJLlfdDdVhOAi@vger.kernel.org
X-Gm-Message-State: AOJu0YyGuZdHbtagqlQc3RK6pbhhdvpRgUsnkbOEfbqLSXWLvt5ptj6K
	0LFD4RuUw+7GDRRwaBWK39F+N3cRC8LIi46ergUIVor+dIr0NbssbZ8rUcQjlu8=
X-Google-Smtp-Source: AGHT+IGjPpE8nKiCzJOR5Dnc2BUe3ootx/puEHX0zXwHC7dqHj9NiHU4iWABJ8pLEYm3+gLDnTIG1w==
X-Received: by 2002:a05:6512:3050:b0:52c:cc2e:1c45 with SMTP id 2adb3069b0e04-539ab858895mr5903268e87.15.1728322002731;
        Mon, 07 Oct 2024 10:26:42 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00-89ea-67f6-92cd-b49.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:89ea:67f6:92cd:b49])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539aff283b1sm892951e87.280.2024.10.07.10.26.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Oct 2024 10:26:41 -0700 (PDT)
Date: Mon, 7 Oct 2024 20:26:39 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Karl Chan <exxxxkc@getgoogleoff.me>
Cc: linux-arm-msm@vger.kernel.org, andersson@kernel.org, 
	konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	mturquette@baylibre.com, sboyd@kernel.org, linus.walleij@linaro.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-gpio@vger.kernel.org
Subject: Re: [PATCH v6 5/5] arm: dts: qcom-ipq5018-linksys-jamaica: Include
 dts from arm64
Message-ID: <wpyw77zolcojvqonwhwsgkyw5xshipdmuk7sr4rn5accx5urzg@6tno6i6iuztw>
References: <20241007163414.32458-1-exxxxkc@getgoogleoff.me>
 <20241007163414.32458-6-exxxxkc@getgoogleoff.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241007163414.32458-6-exxxxkc@getgoogleoff.me>

On Tue, Oct 08, 2024 at 12:34:14AM GMT, Karl Chan wrote:
> The original firmware of EA9350V3 from Linksys can only boot ARM32 kernels
> and there are seems to be no way to boot ARM64 kernels on EA9350.
> It is possible to use this device tree by compiling an ARM32 kernel
> for getting the kernel to boot on EA9350 V3 firmware however.
> 
> Building the Linksys EA9350 V3 device trees from the arm64 tree together
> with the ARM32 include to allow booting this device on ARM32.
> 
> The approach to include device tree files from other architectures is
> inspired from e.g. the Raspberry Pi (bcm2711-rpi-4-b.dts) where this is
> used to build the device tree for both ARM32 and ARM64.
> 
> Signed-off-by: Karl Chan <exxxxkc@getgoogleoff.me>
> ---
>  arch/arm/boot/dts/qcom/Makefile                         | 1 +
>  arch/arm/boot/dts/qcom/qcom-ipq5018-linksys-jamaica.dts | 2 ++
>  2 files changed, 3 insertions(+)
>  create mode 100644 arch/arm/boot/dts/qcom/qcom-ipq5018-linksys-jamaica.dts
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

