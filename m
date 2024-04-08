Return-Path: <devicetree+bounces-57246-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A45589CBB3
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 20:29:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 556D6B21080
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 18:29:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63EEA1448E0;
	Mon,  8 Apr 2024 18:29:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="svxuIUFm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C126D1448DD
	for <devicetree@vger.kernel.org>; Mon,  8 Apr 2024 18:29:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712600986; cv=none; b=pmgjYZRJI5MJbfwNnm0hWTFSASs5jPU6fGvWUOrNvg+t99vDXl2+WLU3jE5GDcyI4UttFt15fUgkzZC00OlV2ss9xqKCgByIg7i5bbuuCn7A9W7B6dW/fo42rvv8Eoe5263k9sWkuYQspJ//ll9o5MPPaX/rY5zjgLJcO6YB+sU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712600986; c=relaxed/simple;
	bh=nzM23wh9zowee65GrxL/O51+DWEPGKQ69scyyxUr8JM=;
	h=References:From:To:Cc:Subject:Date:In-reply-to:Message-ID:
	 MIME-Version:Content-Type; b=Q5qy+q8hCrRdQzejP/bSAMuGV1me0r/fJEPmYSG38UaZgxyOUEQfKoUidW99vt5WBB9Vyet/gA0qZUuwJ0BPDlIjAHDXp9RNhsTHW8k6fXQFHgbSORIx99J1SzAZT1UmEjkSbnh+eQ3lLusSJdoLA5XH4myC+e9esIiQKliFL7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=svxuIUFm; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4165805e158so12305315e9.1
        for <devicetree@vger.kernel.org>; Mon, 08 Apr 2024 11:29:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1712600982; x=1713205782; darn=vger.kernel.org;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=3y8+lTNdEv9p3qVZZSAL5TYeLEpaLOV40uPPZs1+/rA=;
        b=svxuIUFmxQUD7Y8no4O0aXQR3adHWCMS/2P8PAiWSkJQXlibjSKXtLUr7xrG+VnP9J
         Ky9aitI2dI15g9B1ANsqK+pz5nbvEoZdfAMHklHA2RiLt5tVZJezdUnQSTcDsnCO0dVT
         8APpMQPbeMzPeWAerDLobM4R29IejAjnZoH/mT/NEV2JolgnPn4qS4eumJGlZ0NucWcP
         JT59WFaKQq8hFJi1Pmwl0EpzUwahO3h43wbVRafWHyYt5mlj8PFUEjnN57KFU4AepIE8
         BwmddGBA+8Cc1NwPwwKYKGqXoqLQevudAOt4i3kp2fMXIO0x/g8jzL+J2d5Fu+Wu6N/t
         /Z2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712600982; x=1713205782;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3y8+lTNdEv9p3qVZZSAL5TYeLEpaLOV40uPPZs1+/rA=;
        b=O7v6uT8z0uBm0oC2o5cgDg7eCpaZk7cPqCLALsSyVslvDBrImUTxjZopnG8E01jJf1
         Et0YegUBwnPl5dRgzmSbPnsU81bwo0dpffxNDsCZemHLFAUWgQbaLACDqXJ5pPEB0OM7
         3i0aMv5etiCrBA+dXRQ36T0r5rpbfcu6TnGvHscRiBQfsTt7F1xLYHHQXP30NTBdLWWz
         HF+oVMMK3hYJYvLiRlhHxPwFo7L6MyHa9z0JAISTyGFem0Dm++/Iur+VZo132IdnrKej
         mDNtMgotuHucE4ecAq2GVgRdQk66faHMNo/fnv9csAfo9e3h3nddzbkF3afnJeO7IXZ6
         68Sg==
X-Forwarded-Encrypted: i=1; AJvYcCXVYE/mYc9I7AKzsRO7C3tQwjeEkI2A5PNBX5TwEfg5R5bpalCXQvZdwHeE7npcr611F40OVZSBHVKNCScGpTdLJADtWZ8SbQ/a0g==
X-Gm-Message-State: AOJu0Yz2rRp9clV/D2NnRqIwrn9Ks7umG51ahZDFB23GlmoXS41JDrt2
	22dX1rA0hbxoaOP66QcCmA0z3SBaj9Sbzp0lEEFmEL3LvS9XkAX/GJ0helEep3A=
X-Google-Smtp-Source: AGHT+IFh8WHFAL+5KwNrKiDCA+QmN0hRuRdo0rWFUNNknNOcm/Yw6c64MqzQj6hHHotqbMcZSl4VIw==
X-Received: by 2002:a05:600c:4683:b0:415:8651:9b8e with SMTP id p3-20020a05600c468300b0041586519b8emr8571532wmo.39.1712600981964;
        Mon, 08 Apr 2024 11:29:41 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:90bc:1f0d:aae2:3c66])
        by smtp.gmail.com with ESMTPSA id bg8-20020a05600c3c8800b00414807ef8dfsm14255016wmb.5.2024.04.08.11.29.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Apr 2024 11:29:41 -0700 (PDT)
References: <20240408164947.30717-1-ddrokosov@salutedevices.com>
 <20240408164947.30717-3-ddrokosov@salutedevices.com>
User-agent: mu4e 1.10.8; emacs 29.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: Dmitry Rokosov <ddrokosov@salutedevices.com>
Cc: neil.armstrong@linaro.org, lgirdwood@gmail.com, jbrunet@baylibre.com,
 broonie@kernel.org, conor+dt@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, perex@perex.cz, tiwai@suse.com,
 khilman@baylibre.com, martin.blumenstingl@googlemail.com,
 kernel@salutedevices.com, rockosov@gmail.com,
 linux-amlogic@lists.infradead.org, alsa-devel@alsa-project.org,
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v1 2/2] ASoC: meson: implement link-name optional
 property in meson card utils
Date: Mon, 08 Apr 2024 20:15:54 +0200
In-reply-to: <20240408164947.30717-3-ddrokosov@salutedevices.com>
Message-ID: <1j1q7fpv1n.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain


On Mon 08 Apr 2024 at 19:49, Dmitry Rokosov <ddrokosov@salutedevices.com> wrote:

> The 'link-name' property presents an optional DT feature that empowers
> users to customize the name associated with the DAI link and PCM stream.
> This functionality reflects the approach often employed in Qualcomm
> audio cards, providing enhanced flexibility in DAI naming conventions
> for improved system integration and userspace experience.
>
> It allows userspace program to easy determine PCM stream purpose, e.g.:
>     ~ # cat /proc/asound/pcm
>     00-00: speaker (*) :  : playback 1
>     00-01: mics (*) :  : capture 1
>     00-02: loopback (*) :  : capture 1

The example above is exactly what you should not do with link names, at
least with the amlogic audio system.

Userspace pcm, otherwise known as DPCM frontend, are merely that:
frontends. What they do is entirely defined by the routing defined by
the userspace (amixer and friends)

So naming the interface in DT (the FW describing the HW) after what the
the userspace SW could possibly set later on is wrong.

Bottom line: I have mixed feeling about this change. It could allow all
sort of bad names to be set.

The only way it could make sense HW wise is if the only allowed names
where (fr|to)ddr_[abcd], which could help maps the interface and the
kcontrol.

Such restriction should be documented in the binding doc.

>
> The previous naming approach using auto-generated fe or be strings
> continues to be utilized as a fallback.
>
> Signed-off-by: Dmitry Rokosov <ddrokosov@salutedevices.com>
> ---
>  sound/soc/meson/meson-card-utils.c | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
>
> diff --git a/sound/soc/meson/meson-card-utils.c b/sound/soc/meson/meson-card-utils.c
> index ed6c7e2f609c..7bae72905a9b 100644
> --- a/sound/soc/meson/meson-card-utils.c
> +++ b/sound/soc/meson/meson-card-utils.c
> @@ -94,10 +94,14 @@ static int meson_card_set_link_name(struct snd_soc_card *card,
>  				    struct device_node *node,
>  				    const char *prefix)
>  {
> -	char *name = devm_kasprintf(card->dev, GFP_KERNEL, "%s.%s",
> -				    prefix, node->full_name);
> -	if (!name)
> -		return -ENOMEM;
> +	const char *name;
> +
> +	if (of_property_read_string(node, "link-name", &name)) {
> +		name = devm_kasprintf(card->dev, GFP_KERNEL, "%s.%s",
> +				      prefix, node->full_name);
> +		if (!name)
> +			return -ENOMEM;
> +	}
>  
>  	link->name = name;
>  	link->stream_name = name;


-- 
Jerome

