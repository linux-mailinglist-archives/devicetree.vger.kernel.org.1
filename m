Return-Path: <devicetree+bounces-65150-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F48F8BCD8D
	for <lists+devicetree@lfdr.de>; Mon,  6 May 2024 14:13:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 40EDB1C220B0
	for <lists+devicetree@lfdr.de>; Mon,  6 May 2024 12:13:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1271143899;
	Mon,  6 May 2024 12:13:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MP2ZTid+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CD68143C65
	for <devicetree@vger.kernel.org>; Mon,  6 May 2024 12:13:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714997588; cv=none; b=B3EMZS/bW2G8VWO7zVVJck6OhVBF3ybSMzRSHzGYBFSpRdO8++Eb/anPGilv4Ynj7x7ht5jLsVjyR6TD33BQRy+F42ZM154mxqa9LJA/0YzF8ZPl7XhHdytEnLCHZhJ8v/iqwN8vM5ClUhRfyA63co/vI8gj/SW+NR7z9L5SOtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714997588; c=relaxed/simple;
	bh=SJorlvBhI60itC7iiQx26RslvUGaX59HbR2ZqMGANGk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FHcfme9mPMGmY+0wnlSMgSkdSgLwvc1gpFdSfN/gCZcQ/0tW1EWLg3Oo0sb2eszKVU5r/54VrHNqxKmSR6UmYRmTgK4yO21vtJtbW6jZkrN5xwzKgI4X+KYwjfKTtLdOlHLh/YmLhvUbpnBFXwa8rE4UKwXSDqfPakLHqZj1btU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MP2ZTid+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 24661C4DDED
	for <devicetree@vger.kernel.org>; Mon,  6 May 2024 12:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714997588;
	bh=SJorlvBhI60itC7iiQx26RslvUGaX59HbR2ZqMGANGk=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=MP2ZTid+1eKvTIvN/QPEkk4TUPg6SCDssM/QtEgT/VJn+yG+JY3RXN4QqPC2RE8OQ
	 0yXzc8Wu3ZbdOvf/WPuf7/BK3l/62MuP2GHMmDi95xSk7E1J7QEnAfpkPmbfr9P1Xo
	 5W5KzuO7FOBAQEDYRCQCR7g6ZXf+xgj7NLwWzmycE58js6wrjUo2IDwat/4pvY9Tbq
	 +hSbcNFJuGsT00CAnLzKj7Fa3ey5If1aNDmvjy34BpMOLWO2gU2bdDfzama4F8LYBa
	 uOVuWZ37lesdJ+zzD4r346wqHohkv0HJDQvOwy/LXUIZUG6NjnTo45/NU9au9fG+SF
	 lV5TKpCSTjWWg==
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-deb65b541faso1552623276.0
        for <devicetree@vger.kernel.org>; Mon, 06 May 2024 05:13:08 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUmIZxQV54oki9OGmQrYhPnGvWK4WjmEyQTHA28jVysBW201AtXBQRoN+hIafFl6A8qnlyOCEch5ObXT5ueey40Ey7hnZm505FYJQ==
X-Gm-Message-State: AOJu0YzSTZuO9t1ERAOfy+/cJCgrBhNn/vbp223wgGux5Uk2TI6FTpGM
	2w9+S5c4oX6YloCDV7B0BRO98YiSIkOR+uDesb1zv9d30xMXwRamG7rTuTp04zxicbtoCnS/fwU
	wSNed74kLEEB8HZg+z4aKhpFayDT8RRSYw6Qybg==
X-Google-Smtp-Source: AGHT+IEdvvzDKPPs35mauLYBPaP2BlZLW/tD4jzIuzbyL2tiOrWFfQ0DbgvnC6EA7OV6cZIuLrHmcp8oSAKySJVe49A=
X-Received: by 2002:a05:6902:1b01:b0:ddd:7456:d203 with SMTP id
 eh1-20020a0569021b0100b00ddd7456d203mr11606197ybb.41.1714997586640; Mon, 06
 May 2024 05:13:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240502-anx-tdm-v1-0-894a9f634f44@chromium.org> <20240502-anx-tdm-v1-2-894a9f634f44@chromium.org>
In-Reply-To: <20240502-anx-tdm-v1-2-894a9f634f44@chromium.org>
From: Robert Foss <rfoss@kernel.org>
Date: Mon, 6 May 2024 14:12:55 +0200
X-Gmail-Original-Message-ID: <CAN6tsi79jNhCybjyX3aQjXAP_J6MpjuCBL5q2aFrgjENPt60kA@mail.gmail.com>
Message-ID: <CAN6tsi79jNhCybjyX3aQjXAP_J6MpjuCBL5q2aFrgjENPt60kA@mail.gmail.com>
Subject: Re: [PATCH 2/2] drm/bridge: anx7625: Change TDM setting accroding to
 dt property
To: Hsin-Te Yuan <yuanhsinte@chromium.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Xin Ji <xji@analogixsemi.com>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, May 2, 2024 at 11:03=E2=80=AFAM Hsin-Te Yuan <yuanhsinte@chromium.o=
rg> wrote:
>
> For some SoCs, the TDM setting is not to shift the first audio data bit,
> which is not the default setting of anx7625. In such cases, the TDM
> setting should be changed according to the device tree property.
>
> Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
> ---
>  drivers/gpu/drm/bridge/analogix/anx7625.c | 8 ++++++++
>  drivers/gpu/drm/bridge/analogix/anx7625.h | 1 +
>  2 files changed, 9 insertions(+)
>
> diff --git a/drivers/gpu/drm/bridge/analogix/anx7625.c b/drivers/gpu/drm/=
bridge/analogix/anx7625.c
> index 29d91493b101a..538edddf313c9 100644
> --- a/drivers/gpu/drm/bridge/analogix/anx7625.c
> +++ b/drivers/gpu/drm/bridge/analogix/anx7625.c
> @@ -1709,6 +1709,9 @@ static int anx7625_parse_dt(struct device *dev,
>         if (of_property_read_bool(np, "analogix,audio-enable"))
>                 pdata->audio_en =3D 1;
>
> +       if(!of_property_read_bool(np, "no-shift-audio-data"))
> +               pdata->shift_audio_data =3D 1;

checkpatch --strict reports this:

ERROR: space required before the open parenthesis '('
#27: FILE: drivers/gpu/drm/bridge/analogix/anx7625.c:1712:
+    if(!of_property_read_bool(np, "no-shift-audio-data"))


> +
>         return 0;
>  }
>
> @@ -1866,6 +1869,11 @@ static int anx7625_audio_hw_params(struct device *=
dev, void *data,
>                                            ~TDM_SLAVE_MODE,
>                                            I2S_SLAVE_MODE);
>
> +       if (!ctx->pdata.shift_audio_data)
> +               ret |=3D anx7625_write_or(ctx, ctx->i2c.tx_p2_client,
> +                                      AUDIO_CONTROL_REGISTER,
> +                                      TDM_TIMING_MODE);
> +
>         /* Word length */
>         switch (params->sample_width) {
>         case 16:
> diff --git a/drivers/gpu/drm/bridge/analogix/anx7625.h b/drivers/gpu/drm/=
bridge/analogix/anx7625.h
> index 39ed35d338363..41b395725913a 100644
> --- a/drivers/gpu/drm/bridge/analogix/anx7625.h
> +++ b/drivers/gpu/drm/bridge/analogix/anx7625.h
> @@ -441,6 +441,7 @@ struct anx7625_platform_data {
>         u8 lane1_reg_data[DP_TX_SWING_REG_CNT];
>         u32 low_power_mode;
>         struct device_node *mipi_host_node;
> +       int shift_audio_data;
>  };
>
>  struct anx7625_i2c_client {
>
> --
> 2.45.0.rc1.225.g2a3ae87e7f-goog
>
>

