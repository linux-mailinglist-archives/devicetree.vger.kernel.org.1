Return-Path: <devicetree+bounces-57577-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2015489DED5
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 17:21:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 42F0B1C20F7B
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 15:21:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92A7B136E1C;
	Tue,  9 Apr 2024 15:20:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eFoNqvqS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6FFE135411
	for <devicetree@vger.kernel.org>; Tue,  9 Apr 2024 15:20:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712676016; cv=none; b=KwDPbPoXGXQ97z65L9PawwkyBUvkfzHSWjYW8XL00er7jgYK/07yWlm2vCLvFlDhjZ/qkUSBTeYslKP9mJSHvtHCLg4k+Jg57kT7bRzlsRV4rEePGbq6hbBqGY2jv5vAUbVh3dOf+AKD/mnJjMDVUwz6iunn/oLu59kK2lSkbnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712676016; c=relaxed/simple;
	bh=LqKkb1utOjLZhC4alhKZWg38iwuOQgG70I2Czp/PPN4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jtS8mGoX8M5FURBBhALNoij8LDJA53fkFj/Wugiuz5oRIKWPizcArenBsoGg0XnzGbrROvhOoOolH/zTkYGtw97M5fC8ws5nFHHcUOgC69JPgdk14lUE1xZuAQbFeGoZcvXfzr1KX+BMSbSfd2cBk3UuD7b9TrPUNIPiV5gEMcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eFoNqvqS; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-516dc51bb72so3952707e87.1
        for <devicetree@vger.kernel.org>; Tue, 09 Apr 2024 08:20:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712676013; x=1713280813; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wtt9U27FyEOGR2UTmgVGfK4xgQEk5CAqsjVixP3DF/w=;
        b=eFoNqvqSkTF0YEOOF2C46A70CmTm4i+1lWNwqCxR1vAoxtV71oXtX6/vu96bcPiBKI
         KlF3SUJCj+E3j/Br9lK31DrHlSCpulaX6dY2vwBg6iKPb4p8CYoQZtfiu4yrnFWHW5f9
         fWvxbs7lOh5dq3GgLzsUT/ucgPGXq6WYqoSXLk0V5Gxo/XXYkao3RnTEmGCl/6lbPHt/
         Tuqj2nX8+agsCAdFyM6s4V7dI7zSXsoeZpuv8MISZJytgmfMNknIDUo+hBMUO/uvmXuz
         HHlcRL02a+QmU83hcvkzxGQfQ11XTmTf2k4Rmd9B1mj/zo5PFyhjaeQ1F5Iwq9zHoFNG
         OXRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712676013; x=1713280813;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wtt9U27FyEOGR2UTmgVGfK4xgQEk5CAqsjVixP3DF/w=;
        b=Tqh6KvCZdiYXgINv4IYe+ea42Z11d0Tvz2HJxRsB98xbSUDaZ+udJu6g4CmLK3vj/+
         bKRvf+zQ04PKqUrbItiPpJ41IUoqRU3Kv1ac1Mw/Jz0Dp5b40jPQsxEqllC2nuiLdaSt
         X+FKwEMtxtzdvrCKcCO4iWBWU92IZXr3aXrPe6sAGHgbhEIaA2KCEI474XI5XcaBmLLn
         QhmTGC9NG5qtmVIaqxJkq6NyMHEoCLTdyhF6q4fChxPSzPPCu02A2f3ie1usAL4AGG7X
         raVvoa6t2DSbrBMu+pdAa/Zm8l9mzkxlOND+WA/Y4YwBJsRbsE5DGy/cp3G57uREzLVB
         WTvw==
X-Forwarded-Encrypted: i=1; AJvYcCUB3dUcb79pIZEgbttuGZIm9Az2wSfm4EKztIvuttShTFnlsTIYtnk0PjiL0JIunAp91J4lincSAVLQ3cC0s2Sn04TqJxxzqmo6QA==
X-Gm-Message-State: AOJu0Yy1UFdRN/I3n9J/9zfZP90FJH8bJ5HM+VpPMXX9EMdLvFasE/in
	rY1GoVuI04PuvqnvDhCsmz5ZDhtQTpY6dUOag5z/1FoeaHFhCYey+U55aaLIi2Y=
X-Google-Smtp-Source: AGHT+IEbgIn2OIRwkwITVjmw6EZrqXvH3olaMg8+cdnia4vD5koE/fQGisCSUgSYQbVCEURGO7OVmQ==
X-Received: by 2002:a05:6512:459:b0:513:c60a:5fc0 with SMTP id y25-20020a056512045900b00513c60a5fc0mr7405646lfk.0.1712676012907;
        Tue, 09 Apr 2024 08:20:12 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzyjmhyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a00e:a300::227])
        by smtp.gmail.com with ESMTPSA id d4-20020a196b04000000b00516c247fc40sm1560288lfa.222.2024.04.09.08.20.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Apr 2024 08:20:12 -0700 (PDT)
Date: Tue, 9 Apr 2024 18:20:10 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: chunkuang.hu@kernel.org, robh@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, p.zabel@pengutronix.de, airlied@gmail.com, 
	daniel@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	tzimmermann@suse.de, matthias.bgg@gmail.com, shawn.sung@mediatek.com, 
	yu-chang.lee@mediatek.com, ck.hu@mediatek.com, jitao.shi@mediatek.com, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, wenst@chromium.org, 
	kernel@collabora.com
Subject: Re: [PATCH v2 1/3] dt-bindings: display: mediatek: Add OF graph
 support for board path
Message-ID: <oe75tx35rd27r2a24ofdxfaqwr53tylfp5fwz3nrwc2uz6nmrs@vwc2krbpy3fh>
References: <20240409120211.321153-1-angelogioacchino.delregno@collabora.com>
 <20240409120211.321153-2-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240409120211.321153-2-angelogioacchino.delregno@collabora.com>

On Tue, Apr 09, 2024 at 02:02:09PM +0200, AngeloGioacchino Del Regno wrote:
> The display IPs in MediaTek SoCs support being interconnected with
> different instances of DDP IPs (for example, merge0 or merge1) and/or
> with different DDP IPs (for example, rdma can be connected with either
> color, dpi, dsi, merge, etc), forming a full Display Data Path that
> ends with an actual display.
> 
> The final display pipeline is effectively board specific, as it does
> depend on the display that is attached to it, and eventually on the
> sensors supported by the board (for example, Adaptive Ambient Light
> would need an Ambient Light Sensor, otherwise it's pointless!), other
> than the output type.

With the color and gamma being in play, should the configuration be
board-driver or rather use-case driven with the driver being able to
reroute some of the blocks at runtime?

> 
> Add support for OF graphs to most of the MediaTek DDP (display) bindings
> to add flexibility to build custom hardware paths, hence enabling board
> specific configuration of the display pipeline and allowing to finally
> migrate away from using hardcoded paths.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

-- 
With best wishes
Dmitry

