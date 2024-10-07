Return-Path: <devicetree+bounces-108658-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 37D089934FC
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 19:28:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F1C73282B97
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 17:28:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33AFD1DD55F;
	Mon,  7 Oct 2024 17:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jkA+jjWf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78D9918D642
	for <devicetree@vger.kernel.org>; Mon,  7 Oct 2024 17:28:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728322103; cv=none; b=kug+bluJXpwjUeaHDbzRCVHI+SmQqzaG66Wp38ymx/F4kgjM3xrGQXdSENh5x4niBhW+GBo0JVzJKexWYwkwLMzywxO8fGhuW8uBiUIlacZQVvX/2LRQy/yDzs4GmTrohTzNvUzCUm23k+PM+3HNylsWwDuEn17UD9rPRqZB598=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728322103; c=relaxed/simple;
	bh=eihS6TG9sOicZxVq7FC5zUYqLhMxZKk8b6Q/6MFIiyY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=a8hhg7sMY9fUDSXpekjNNS9vyJfIoRDf7qLUPJzI0lCDNBL1ir/O9g4uuZMYl4hltVebEPaVFZeg/WX+hDpgwc+PWybJK3ba1DzuIclx08YWov7VwnmZVYE+tg6zJetTp3ZisjEDkYDPq2cY9Z95JEDN2jE6uJK53OmhpaJLrMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jkA+jjWf; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2facf48166bso53698721fa.0
        for <devicetree@vger.kernel.org>; Mon, 07 Oct 2024 10:28:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728322100; x=1728926900; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=SXNyRDdO40KsorjoROOJqGTRnV5NG+6TplQFkMTm+P0=;
        b=jkA+jjWfd1wXEL+Ya2ppWYkq1Bn74hkGyzQ4Bi/ykA72gUfBclSD0mfXcZsj15A/3q
         M4IjHORSjdcPL0dQtzLB3YAr2WgZZHHAUd6PEY7OKrj2fUWXTKO0O6Q9ntKg5D2hiF4V
         MbKTlmuiHruFdpUIlgZE0yW6YGoPr4LI9NYFvGasouqU2Sic6iF1oESPXF783uQRh9Du
         SDwDHebDFbyvKkDZZKOR7xK8xd4M9HycLRxWdcVqf632yGEgN00cLYWMvaMlYWmwFN39
         2zgOcQs2vXGid+mHcgyw0rNZjWmtdHkM7kSjicW7f1Z8VL4DlP/8DvYeIwZpYfirmNGY
         WFnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728322100; x=1728926900;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SXNyRDdO40KsorjoROOJqGTRnV5NG+6TplQFkMTm+P0=;
        b=WV+8yUWobrtEjczfZa0hp0uWLHbqMDUlXkiGk3zdcwEANpWYWY4ng4PrSkPsVMBai0
         8wPQ5Zlwzjg2ya1f05ggG+DOqABK4iMKydBENwEVWZIQM5fo9RDF8g2DfnmCSie5PFOu
         hHjIuVA7c2K33pxRLT2qUfQTYmSiO62hLe22fXIQlj8KT9TmD/wwvhzduiY1hmlABMO/
         aF3iqs/5UY157z/Dw85+ObwViirgnNf+pef9126Ice2CZRxi63223O1cyhR5poplJiA4
         k8pMxTWe5xba0qo09J/ZVisz6zbt2xT/xu0VsMe0gdDarLtNNwvAarwrCGDsT/8i60E1
         fYKg==
X-Forwarded-Encrypted: i=1; AJvYcCWogUQTiwiGLFDIuxkCqZZLXoeWtjU1K/n3qxZ69kwu9fukMzLc3+z3RsmPsz3GeNZgrwelep2FvfYx@vger.kernel.org
X-Gm-Message-State: AOJu0YwYheu6nztqjDHpimgyRqI3BurmdWkYSAkA4ASItR6RjOBZ01QY
	ZFshMUc9esdREKpjh7G622sXBd1TeVGZgJgMwOn7QhCHJyOqF98S1pm0cqDHitZlnzsqcmIsrAg
	lbBNGkeAT
X-Google-Smtp-Source: AGHT+IFa8X2yJwUs868d9QR9d4bZPFRttVj19i+vFYbPX91oAx08bCqYkiwSIpoSe3hCZ0CmoBUzaQ==
X-Received: by 2002:a2e:b8c3:0:b0:2ec:55b5:ed45 with SMTP id 38308e7fff4ca-2faf3c420b2mr56549151fa.24.1728322099500;
        Mon, 07 Oct 2024 10:28:19 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00-89ea-67f6-92cd-b49.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:89ea:67f6:92cd:b49])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2faf9ab1690sm8765041fa.12.2024.10.07.10.28.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Oct 2024 10:28:17 -0700 (PDT)
Date: Mon, 7 Oct 2024 20:28:15 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Karl Chan <exxxxkc@getgoogleoff.me>
Cc: linux-arm-msm@vger.kernel.org, andersson@kernel.org, 
	konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	mturquette@baylibre.com, sboyd@kernel.org, linus.walleij@linaro.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-gpio@vger.kernel.org
Subject: Re: [PATCH v6 2/5] arm64: dts: qcom: add Linksys EA9350 V3
Message-ID: <2lumlvmn6244rn7imm2zeluglknnpaufjb3oqz7n672bmsivst@rn7nlv3do65z>
References: <20241007163414.32458-1-exxxxkc@getgoogleoff.me>
 <20241007163414.32458-3-exxxxkc@getgoogleoff.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241007163414.32458-3-exxxxkc@getgoogleoff.me>

On Tue, Oct 08, 2024 at 12:34:11AM GMT, Karl Chan wrote:
> Add device tree source for Linksys EA9350 V3
> which is a WiFi router based on the IPQ5018 SoC.
> As of now , only the UART,USB,USB LED,buttons is working.
> The front PWM LED require the IPQ PWM driver.
> Therefore the PWM LED isn't configed in the tree.
> 
> The original firmware of EA9350V3 from Linksys can only boot ARM32 kernels.
> However there seem to a identical device that come with 64bit firmware.
> Also There are seems to be no way to boot ARM64 kernels on EA9350.
> 
> Therefore,the only way to boot on EA9350 V3 is using this tree and a 32bit kernel.
> 
> Signed-off-by: Karl Chan <exxxxkc@getgoogleoff.me>
> ---
>  arch/arm64/boot/dts/qcom/Makefile             |   1 +
>  .../boot/dts/qcom/ipq5018-linksys-jamaica.dts | 109 ++++++++++++++++++
>  2 files changed, 110 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/ipq5018-linksys-jamaica.dts

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

