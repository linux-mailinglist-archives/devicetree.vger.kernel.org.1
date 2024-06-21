Return-Path: <devicetree+bounces-78635-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B9C912F69
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 23:22:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D471FB20A89
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 21:22:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F2F417C20E;
	Fri, 21 Jun 2024 21:22:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UTKP7OhZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 884BC16D4CE
	for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 21:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719004955; cv=none; b=GgBOHIzsxiExdrWzhBN6GuIvDJ5Y+gJUKGnq/1SzLih3NdA3gCZSptdorALGcINB0orV0oVnBsdLkJuClIkeKHwabyVxB6Pb+12gRzByXvR46Z+qGHJhjVYTufZG+cwZfkowVo/YkMX0UJpeUCPVaE7SpGsmPEA95TVsluICgkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719004955; c=relaxed/simple;
	bh=ZBvcr7+Gwxbqe0da41kn+7SiVw4SO+t8RwQK3zGaPcA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=u0yOV3GjCoQ2goLfMLjglaiiuj1BvEHKOqh2N+b/cmrNt7sgf/GiQr5aJ9qCXZ4c/bn3p46+A2UIpUUFMpyIpGcbsBCZh3/rKz7smN3s0pLNUsXWSC1ydJybaQRehFOWfOeIftAYmlD85KnvawjWZ4lNPq824UBFYU/E7YLB/Kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UTKP7OhZ; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2ec408c6d94so29257411fa.3
        for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 14:22:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719004952; x=1719609752; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xAdB563R8XYmyXoP8NFXvauaXnziMOv9/xConCBo8TA=;
        b=UTKP7OhZ8PVh0j5NyUAOxUTvkOBebR0aeeNN5WQu6sdT3xs9Sy8oQmXjnQdCAKwY77
         3PmVW8LXfsXdasGn7e9QM7y0FuOVyQa3siV38sT0ulfDflKZQ9cCQY1cOCFugnxq4Dei
         N9sVDlPztrc81ZzltlAQ9pAdNcGplzERXMVz4JoTtiX1Dc/JPjv+roKEpqftFIc0qZVj
         oJWqbMTzFt3yrO1JjSqATYNNqnmfjRgySZl3iKPcvqJxPVDZImo0pWdcU1oPSZd63lsZ
         nsSWYbdXAzmFfgUy42WRUi4wK3GtZ9P9mDHaPfsiaDQnM7dlDP1eQ/UVOzUM06N2AiLU
         S8YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719004952; x=1719609752;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xAdB563R8XYmyXoP8NFXvauaXnziMOv9/xConCBo8TA=;
        b=NNGL1abfMDU6RdkBCMD0GV/M1gC8JEIFUVqb0SYyO8ScQBdj+B5HwBbJRiP0pfqCWD
         mC6NRD8Mn+idjBj64WSRdQr8NYJqU2EnlA1vyyhctvPDAe5byBm2QbCaW1u18jfeQBqZ
         NgUvJewPkjhGmOUw2XRjIDue8Uj/eNunikfK2HgUTOlMdpwxBDlg3ndixhOfM/tqQQ8h
         YqOssSP//5r8fmb2dt3lRvDRoVBPglw+bUXzfKunQsdbj3Lo/AYmoPIZh7C23Xk+zB6+
         RzJvz6XmVufRKMrVLs6GBAvY2foJSVAVdMLOgqwn1vSg9U+Hy2zN41ujvn52vGquRidx
         8cCA==
X-Forwarded-Encrypted: i=1; AJvYcCUUJArFNSJGluahyPaeQQUvzIRBiZuY6G2ChtuqR7FSl/GhyWjYE2NkLZic4hDwmtMc2+XvzjUvCrrzykMsmADSez77u8UXD3GKXQ==
X-Gm-Message-State: AOJu0YwdDKV6FmrRBvS9YkYOYDWcQ9DrLXPlb7ZDuPSm0TRs9A/hZ4gU
	HDkvYUKyouQYL8fmyQFe5Ipw+xD4+pAfVzCr3HK+XPv8LlPyZHKHQLOdC9SxRcA=
X-Google-Smtp-Source: AGHT+IGfaOTGT+6o67ivDYPs7VfP98am4DOphN8WQafMAF7sGYpWN2LWS4wRAQkJx7QKaIe8VP/Jcw==
X-Received: by 2002:a2e:7d0b:0:b0:2ec:140c:8985 with SMTP id 38308e7fff4ca-2ec3cfe99dfmr68489491fa.36.1719004951726;
        Fri, 21 Jun 2024 14:22:31 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ec4d6012d9sm2931571fa.10.2024.06.21.14.22.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jun 2024 14:22:31 -0700 (PDT)
Date: Sat, 22 Jun 2024 00:22:29 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Gokul Sriram Palanisamy <quic_gokulsri@quicinc.com>
Cc: sboyd@kernel.org, andersson@kernel.org, bjorn.andersson@linaro.org, 
	david.brown@linaro.org, devicetree@vger.kernel.org, jassisinghbrar@gmail.com, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-remoteproc@vger.kernel.org, mark.rutland@arm.com, mturquette@baylibre.com, ohad@wizery.com, 
	robh@kernel.org, sricharan@codeaurora.org, gokulsri@codeaurora.org
Subject: Re: [PATCH v9 0/8] remoteproc: qcom: q6v5-wcss: Add support for
 secure pil
Message-ID: <75hecf5rsekiq6vlnzx4zn3out2emdiwevhclt55espyzcenxc@fs5dljukafdb>
References: <20240621114659.2958170-1-quic_gokulsri@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240621114659.2958170-1-quic_gokulsri@quicinc.com>

On Fri, Jun 21, 2024 at 05:16:51PM GMT, Gokul Sriram Palanisamy wrote:
> IPQ8074 needs support for secure pil as well.

Could you please settle on 'pil' or 'PIL'. Just use one of them.
Explain, what is secure PIL.

> Also, currently only unified firmware is supported.

What is unified firmware? What is split firmware? Why do I have so many
questions after reading the cover letter for what claims to be v9?

> IPQ8074 supports split firmware for q6 and m3, so
> adding support for that.

Ok. After reading through the first few patches. Is WCSS support on
IPQ8074 broken?

> 
> changes since v8:
>  - Rebased on top of Linux 6.10-rc4

Previous changelog has wanished?

> 
> Gokul Sriram Palanisamy (8):
>   remoteproc: qcom: Add PRNG proxy clock
>   remoteproc: qcom: Add secure PIL support
>   remoteproc: qcom: Add support for split q6 + m3 wlan firmware
>   remoteproc: qcom: Add ssr subdevice identifier
>   remoteproc: qcom: Update regmap offsets for halt register
>   dt-bindings: clock: qcom: Add reset for WCSSAON
>   clk: qcom: Add WCSSAON reset
>   arm64: dts: qcom: Enable Q6v5 WCSS for ipq8074 SoC
> 
>  arch/arm64/boot/dts/qcom/ipq8074.dtsi        |  80 +++++++++
>  drivers/clk/qcom/gcc-ipq8074.c               |   1 +
>  drivers/remoteproc/qcom_q6v5_wcss.c          | 162 +++++++++++++++----
>  include/dt-bindings/clock/qcom,gcc-ipq8074.h |   1 +
>  4 files changed, 212 insertions(+), 32 deletions(-)
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

