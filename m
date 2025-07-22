Return-Path: <devicetree+bounces-198508-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 382A2B0D3AA
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 09:45:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 559FF7AA150
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 07:43:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA4532DFA4D;
	Tue, 22 Jul 2025 07:40:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="LcJS1hv7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2B432DF3CC
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 07:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753170036; cv=none; b=XFKQ93/QH8QKiXm8lwN1PDwrlS3lIFFWnGHZ41/YJzq/Ntp/6oiQhVO6nwoCxD/282ioepqcJFuiVfV3a/wHmjJ17bVD9G5n4P7YNg9rHKsaOGRtMj92LZwlNbQYVx3Fa0MfKFH3/UV3A+akn6fJb8rdP1FkdLAz7qtnz5v9fSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753170036; c=relaxed/simple;
	bh=PMCF5ES/3ZTia8Zi2R1TmRc2+w6IRtpnMyRVCb/pk3Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CkkNGO3wz9PzpPSk6edCtFuVLz6Yf+srQflYZNUSNP2FLhuaNBJ4MUbqBbXj8eBFSnsIgtYEo/1zdkESRG6dLrlWkCFRKpBMgfGGvFd5Nk+gYsh+GcwXqQxrWDI2rL1Xm1QwvzSOQq9Mb4K39ULD6g8i8t5ckNrqmagEXuEMmkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=LcJS1hv7; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-32b43846e8cso38299411fa.0
        for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 00:40:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753170032; x=1753774832; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=41B/ekEx4m/gKNRr2HYhyza2JcZwd1YnIux2XMK+KqY=;
        b=LcJS1hv7Dnvkmpmd3enHoh0/aBteDEftmoXfwpD6OxOmIvHyq5E69z7T7eWISBXLXe
         6n2dVeHuqHbJWgqsD11EYSbpw54u6d69PospkeBWMDOYmLKdD1dRXpBUv3CQcIVSRbbg
         X/JLOTQaLaWj4pbzvUdqAUG9SonpBa5MGGRuU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753170032; x=1753774832;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=41B/ekEx4m/gKNRr2HYhyza2JcZwd1YnIux2XMK+KqY=;
        b=umZMpSLKefRdIbBYmTJH4fArtlJEPD6NZBurzLgGhHtStJxlkuO1Eh0QVc7YQT8fWi
         71bK7K4oriG5r0EH3tBH9YoP3rB2utU+y/qqoy8wZdnHpN6qMg7d7GOVkANiSdZpEOJw
         n5pHS3PL6+QAkad9jrtULbI+gzJnrgCxWA8D96NTPykIzCcDcxhMkHny2x+oKjNsMvf8
         lLwElMnUh2U9q0SGFBPGIf9e15QPo0di5OP+AKkV04bdojlS+Y2yPfA+AVrnehDBq6St
         T6kQCkmWu7N83XmuZBzwXDAolQr8opCZDB2eudNBDE28Ts0f3y8xXsab24QKbTRAZD3m
         DHKg==
X-Forwarded-Encrypted: i=1; AJvYcCUiaSYCWlPHD42bOmAiY3+b94j4laSrJe1BEAShjeFxkqfKRdNXC4CwdnoYmZkBOqfNvxsm1t0VsfHW@vger.kernel.org
X-Gm-Message-State: AOJu0YxHeGiVM9o3Cf8rx5efIYXPGKrcFoXKd7bKhMosBzOg4y7LRnIB
	zf8gSDbqyYxC1GJLagTF0PywZiCbxfKWPy8PHBjOpuZRd+cy/NSXOwjIkwZrzb3XTyq6tCmuh1Z
	sNe7if4HccMIa5NhX0I1HG12xWODtp8q5ty+IvPGL
X-Gm-Gg: ASbGncu7m7rcamUqsG/0IsqeV2uVqz/QHbFdNYxWv5A2nchqjxnj7B3+VyZB4Cza83K
	shyDLQZi2tQSAi4KWBcX3zrfjCpadr7AL0hdeP/hh09VD4PrkYDfh+Z+aqQoUi2zGRBtpgxEd/f
	+ihKhNju5Z7smTAwNuP0SVkU2riWM3/qA89WBI0+tJJWM0v2Y00XjFnvT/3u3Og9Bxxxy4ixhDs
	0jCie/5oHLEHbYZZxq1w0pMfaM3ZtS4AXs=
X-Google-Smtp-Source: AGHT+IEQ22SyB/ySXRKt1KC3gl7QbzYcQMLoMwBK32ZhmBBhXQtJp8OUPSRF0MOxntL5QFsaUhmhC/a9dY2DEPGCwaM=
X-Received: by 2002:a2e:a58f:0:b0:32b:34c5:225d with SMTP id
 38308e7fff4ca-330a7ae1057mr36760231fa.1.1753170031911; Tue, 22 Jul 2025
 00:40:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250721081459.16278-1-laura.nao@collabora.com>
In-Reply-To: <20250721081459.16278-1-laura.nao@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Tue, 22 Jul 2025 15:40:21 +0800
X-Gm-Features: Ac12FXwHVu2xheACj_ug47v0VGmRzFUiGV73WGs8r_Guigs_NEMfWXqCZqRQckQ
Message-ID: <CAGXv+5EmigF=m1zDZ71AMv02XwyYWQxpiRpiwc7YMg=8vc2FZA@mail.gmail.com>
Subject: Re: [PATCH 0/9] Add thermal sensor driver support for Mediatek MT8196
To: Laura Nao <laura.nao@collabora.com>
Cc: srini@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	rafael@kernel.org, daniel.lezcano@linaro.org, rui.zhang@intel.com, 
	lukasz.luba@arm.com, matthias.bgg@gmail.com, 
	angelogioacchino.delregno@collabora.com, andrew-ct.chen@mediatek.com, 
	lala.lin@mediatek.com, arnd@arndb.de, linux-pm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, nfraprado@collabora.com, 
	devicetree@vger.kernel.org, u.kleine-koenig@baylibre.com, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	kernel@collabora.com, colin.i.king@gmail.com, bchihi@baylibre.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Jul 21, 2025 at 4:18=E2=80=AFPM Laura Nao <laura.nao@collabora.com>=
 wrote:
>
> This patch series extends the MediaTek LVTS thermal driver to support the
> MT8196 SoC.
>
> MT8196 uses a positive temp_factor for temperature conversion, requiring
> slight adjustments in the conversion logic.
>
> To support this, the series introduces:
>
> - A new struct lvts_platform_ops to allow platform-specific
>   conversion logic between raw sensor values and temperature
> - A variant of the lvts_temp_to_raw() implementation for SoCs with positi=
ve
>   temp_factor values
> - Platform data and controller definitions for MT8196

I see the GPU and APU thermal sensors were left out. Was there a reason
for this?

Thanks
ChenYu

> Laura Nao (9):
>   dt-bindings: thermal: mediatek: Add LVTS thermal controller support
>     for MT8196
>   thermal/drivers/mediatek/lvts: Make number of calibration offsets
>     configurable
>   thermal/drivers/mediatek/lvts: Guard against zero temp_factor in
>     lvts_raw_to_temp
>   thermal: mediatek: lvts: Add platform ops to support alternative
>     conversion logic
>   thermal/drivers/mediatek/lvts: Add lvts_temp_to_raw variant for
>     positive temp_factor
>   thermal/drivers/mediatek/lvts: Add support for ATP mode
>   thermal/drivers/mediatek/lvts: Support MSR offset for 16-bit
>     calibration data
>   thermal/drivers/mediatek/lvts_thermal: Add MT8196 support
>   dt-bindings: nvmem: mediatek: efuse: Add support for MT8196
>
>  .../bindings/nvmem/mediatek,efuse.yaml        |   1 +
>  .../thermal/mediatek,lvts-thermal.yaml        |   2 +
>  drivers/thermal/mediatek/lvts_thermal.c       | 315 ++++++++++++++++--
>  .../thermal/mediatek,lvts-thermal.h           |  26 ++
>  4 files changed, 325 insertions(+), 19 deletions(-)
>
> --
> 2.39.5
>
>

