Return-Path: <devicetree+bounces-196338-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A515B05054
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 06:37:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 644CC188E174
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 04:37:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA3BC2D23B9;
	Tue, 15 Jul 2025 04:37:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="A43henmj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E458946A
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 04:37:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752554228; cv=none; b=glA5wi3ehceEnOHdnUabNu1ORqcnnHI0m/hga8Iq4VHhs6jAs8XNNHd9NBgJRW720G1vnNgZcbgVqaMxzGQOOvSyNDXSSs1UGqyWczxRx0/u2p+RwtiXbYSdj2J5jAXBsl35gWFLV+8HIfnOpFFkWgYAog8Xnn3hjf4ZBxiXJAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752554228; c=relaxed/simple;
	bh=HEym2MfRYDRe1WStyHMOT8vdThlsV2VAJ0myxALEAgk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kI0fB/3kMGgdE/XEMQfDtbb9Gv+hjl4uFd9TEzKgAs95h8mdzad7QbZj1QrB8jyzvAi9jJA2riiAgYsv/gBybfoiyYhOXjdchXtVhh5w1euCf0vBIYTMznQcU5dn/g9ADf4bYhBhLb8U4a1BK7exUAu+XK1FOVAqqID73nrFHLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=A43henmj; arc=none smtp.client-ip=209.85.215.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-b31d578e774so5061142a12.1
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 21:37:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1752554226; x=1753159026; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gqg4UcH4HOCD8WdGE4+ik0rgx/yjtc/u1ELlwLDaNkk=;
        b=A43henmj4KmroWVbHwKFQPtrnX1jzu3bqWZrGcEcn43gimxYAkUn3PRoJ30w9fVUBQ
         0HYPp4Ti/KOmPGMhBaqOsQ5R7qRKn3IxWkeMxxoAp9qwQb3xwAMy9nJYouryCge+thrA
         5GkzURi4DmrwjmLYQ3JDfXVRm36S1Fs7MGY3Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752554226; x=1753159026;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Gqg4UcH4HOCD8WdGE4+ik0rgx/yjtc/u1ELlwLDaNkk=;
        b=HrWX2U1eMFTx6jP7naAyPnwc+1AmppXzy8QJ8oCnE+6/mDk2P1CTU3fuH75b6Ih0ZN
         zgltP/trQI1HjgK9F6YQ3TcVVs6H0cwXI7YcDywaopeL8ObO+Vp4ZMfWGRaP/KOfktat
         J47p8cMmXMnN/fF9qFuF6Ehh7K4SE5lPzlZAMTuBjZmmtofNQmgKhb3c9/VQ0Y7hskNk
         NICH5BiVQuEIU+HfRwBuXt9o9VxvYDoSDjf4A561PHgm/nRFm/2IpmZKG5QQeCj+627r
         HYmu8bBgx9VPk+8CfxfTQDsqwZOEogAwTPC9D6X+REEZ7lPVgI+oQQQbmty+Ic1kGqif
         Ck9g==
X-Forwarded-Encrypted: i=1; AJvYcCX5quOw45WqS1s2Dugq89zg0/99Bmx6XNIx9ohc7H9nOpMLib9e1Vs9Y1zoyJ2cPp8D6NlX6dnnW327@vger.kernel.org
X-Gm-Message-State: AOJu0YyjwrYz79wdYfIpD3AddYR3HUIMxBgd0jYdJvQvE9sU2P+WbsWF
	DK1rW+X4K5cbveFCspIL8vy1A7jFu6Gxtwn/YVSvz6+AxaeFtBFZUXyNlOcijN8xrlkF7vWfm5L
	DH9ECvmaXQAwypjgJRWBCP+c6s+MU/1u4oeQB7Lz9
X-Gm-Gg: ASbGncuHz42gd2JIm5VSMIPO7YNck8Rn+xhgAhlHGUTHyyqBAB7E5QHCrya/15U3NAc
	u3EKIZw2djzDocb78/S06AQX2P2Cta2vHMHeIIy7AnF4zsBh31pQ/1jLYwY0i1UJdahlQ/xr0JQ
	p2HKUkS+wuJzKXcDTJUHYv31b/BCPES/j4JS7H1Rrn7qjU+pkd9t4Gf2g5jY5DJevH8PAnLNNmH
	OG2g0sLC5pJA7XkwIRoufBHANM/VP6HwHRonkgszDNSpw==
X-Google-Smtp-Source: AGHT+IHf1xc3dLDnNYF/fDC0d2YbPGxvPK9FwAjwgXDKEU1kkJL2K+WT5K+79jl9PQ6eV0yj7I0MMHxdLoUbmyObj2Y=
X-Received: by 2002:a17:90b:57ef:b0:30e:6a9d:d78b with SMTP id
 98e67ed59e1d1-31c8f88d387mr3132859a91.12.1752554225889; Mon, 14 Jul 2025
 21:37:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250624143220.244549-1-laura.nao@collabora.com> <20250624143220.244549-19-laura.nao@collabora.com>
In-Reply-To: <20250624143220.244549-19-laura.nao@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Tue, 15 Jul 2025 12:36:52 +0800
X-Gm-Features: Ac12FXyo_hm6-LevP76Ht3AHw10mSGdmwELcsNXs6PZZNLb0jYOFlkoLp35KGco
Message-ID: <CAGXv+5ERCTTJVfgfY=LLTKasz7RpTdpPfHJDKtKiUfcYyrS8uQ@mail.gmail.com>
Subject: Re: [PATCH v2 18/29] clk: mediatek: Add MT8196 adsp clock support
To: Laura Nao <laura.nao@collabora.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com, 
	angelogioacchino.delregno@collabora.com, p.zabel@pengutronix.de, 
	richardcochran@gmail.com, guangjie.song@mediatek.com, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, netdev@vger.kernel.org, 
	kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Jun 24, 2025 at 10:33=E2=80=AFPM Laura Nao <laura.nao@collabora.com=
> wrote:
>
> Add support for the MT8196 adsp clock controller, which provides clock
> gate control for Audio DSP.
>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collab=
ora.com>
> Signed-off-by: Laura Nao <laura.nao@collabora.com>
> ---
>  drivers/clk/mediatek/Kconfig           |   7 +
>  drivers/clk/mediatek/Makefile          |   1 +
>  drivers/clk/mediatek/clk-mt8196-adsp.c | 193 +++++++++++++++++++++++++
>  3 files changed, 201 insertions(+)
>  create mode 100644 drivers/clk/mediatek/clk-mt8196-adsp.c
>
> diff --git a/drivers/clk/mediatek/Kconfig b/drivers/clk/mediatek/Kconfig
> index cd12e7ff3e12..d4c97f64b42a 100644
> --- a/drivers/clk/mediatek/Kconfig
> +++ b/drivers/clk/mediatek/Kconfig
> @@ -1068,6 +1068,13 @@ config COMMON_CLK_MT8196
>         help
>           This driver supports MediaTek MT8196 basic clocks.
>
> +config COMMON_CLK_MT8196_ADSP
> +       tristate "Clock driver for MediaTek MT8196 adsp"
> +       depends on COMMON_CLK_MT8196
> +       default m
> +       help
> +         This driver supports MediaTek MT8196 adsp clocks
> +

This is part of the AFE block, and really should not be a separate
device node nor driver. The AFE driver should internalize all these
controls and ideally model some of them as ASoC widgets so that DAPM
can handle sequencing altogether.

So please drop this patch, and also drop the entry from the binding.

I've mentioned this to MediaTek's audio and clock owners, though I
assume this request was somehow lost in the process.

ChenYu

