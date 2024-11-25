Return-Path: <devicetree+bounces-124423-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BFC559D8BAC
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 18:54:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 54AAD16386B
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 17:53:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D6861B4F02;
	Mon, 25 Nov 2024 17:53:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="JifcHzyr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA3A641C92
	for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 17:53:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732557238; cv=none; b=hHmEb7KpT2e+kv8BEHvYttrKfKGaIUVgQJU337SCdzYGb4pd+oVj/50hk+6lXFFOiefs1+WVBLZsDD1dICVUrL/fAONtXEr+BB7/ZaZXktilGjMunbLj1z4gxyLLyDLEsc8vk5C8RtTRZnLcjkevayB2CPfi7OoN+ltDJdYTc5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732557238; c=relaxed/simple;
	bh=+aKBNdyqoPPoH7YFlDbUCvXZ6sn8H8tO0XYdJpv9c8M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eJQ9HdxOtBTmuFs5itXpgbFKi7mYr04tBGV0oenOQ0QdU2RQDYUSrZwR7lX1PgeIN3SbOV0PU9dyPaQzQLhVoW7GNTPkd5F1oXqbRJ4e+NGrN5UMV62oOSzBKnviT7zaP7yqcjZ56ECW8XZO4BT0fjM716HhvtzrqmbLGf/Nwbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=JifcHzyr; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-53de8ecafeeso778e87.1
        for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 09:53:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1732557235; x=1733162035; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bAoWd6DpzeBICi4AhBURcNm7laPx9KjIN0TBKhbYcUY=;
        b=JifcHzyrpA83IybBgVuyMiiJFfmVevRVWEdtH2KZF2e4jnNKPdBQXF9WTvv4gT//hf
         aAP/gkX+eEMiT6DiMYO0qku7RwGrgXOvNo6RhW9ds5fSn+MfS8PesRAk+0PNP7lVVwV2
         VXZGHXmPdGxuZ3aN1xqjZRsXIihtO9gbZxt+o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732557235; x=1733162035;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bAoWd6DpzeBICi4AhBURcNm7laPx9KjIN0TBKhbYcUY=;
        b=sLPWxkzPeYhd3DEi6fUY6tvs72YsAKk0pxawX9rTStlH82NN7Voxd6XTEazDm7cRcF
         utPGq6O5c8aI4hon4OIQnDwpe4dBQVnnjZAZPXe3Ziq3NMp0GuGGwurb6rtQpB4OBGvS
         Yhch9tL2yov9OgJZpsM0ZZi6uSI5N8vNk438E7r3C2EWp23vIn+5xmZKYghzGGNBVvxx
         j1Ibk3xoVdDX5jzEJOGHmtwDL77WMQtVXrHDPYC6u/W8sGIwVeiD1Trf4ktjEr771bo6
         euU4sENoO9sx6MZpzOLQ3ujp1djxHh/Pz29K9yjpsuvRl0UpB6jahMwgH7ZTrxOk2hpL
         6RPA==
X-Forwarded-Encrypted: i=1; AJvYcCXrsj5EtCECQcHpXdxfeRhAnwbWxWYre4ZBX/w2ctsSslQqg0LN8s9qnRDttVoZiRtE5Oq/fIjD6mBT@vger.kernel.org
X-Gm-Message-State: AOJu0Yxvu+G4AFnkdmc2GeCXBbqedIj4x/tDvdnz6sYq+G7Fln8/Txzx
	MDgvclfPVi5dazm3B/xTDQ7m6WzQXr/xfBsAnp5XPYxt18s7PSCPcm/lNiCkA0Tb6vcge6G/m3r
	hxw==
X-Gm-Gg: ASbGnctmeTdI+CLwbB3mFBB0vfEtKeZnc/s7VKVDxIEddExvfA3Pq1VB5smhqNJP+GK
	AVvTPFwGYEted5gZF0dC9BXE5jbfIwT9QRKatdYDayi1eOOk3Tz6mJUY4G/DgzJekwgTyUaf/I1
	/5ZQNaqzLd69LtUh5bNBrnIPvHydbHEI3OaBivM+MHi9fTgC7VJL22BhuFXctmdOXibmzB95lRi
	sQjX1uTj+sesM4t2AQHxbbiccLr7+iymUNNn5zivZgOZDo2OScTFp61Wa07rGurJX0u5ipnlh7N
	gWSyZZA7dKW8LR50Fg==
X-Google-Smtp-Source: AGHT+IGcFy8DgILcW8xySXQK3QNxIgBYPmChx3euQozpcU7zjgglIp7NeuGud0Eb/PVywykvpcCKBQ==
X-Received: by 2002:a05:6512:3b0a:b0:53d:d68b:501e with SMTP id 2adb3069b0e04-53dd68b5041mr5963863e87.15.1732557234823;
        Mon, 25 Nov 2024 09:53:54 -0800 (PST)
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com. [209.85.208.176])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53ddf27b852sm872752e87.221.2024.11.25.09.53.54
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Nov 2024 09:53:54 -0800 (PST)
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2ffa97d99d6so36030061fa.1
        for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 09:53:54 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVU5ou1S4beiwi7OKVAMZD2wcm/kL3bceT5hp+/UaujCiAwPShxTZ53qHUhrr31imuWEZH4zzpzsWkJ@vger.kernel.org
X-Received: by 2002:a05:6512:1247:b0:536:56d8:24b4 with SMTP id
 2adb3069b0e04-53dd35a4f22mr6019059e87.5.1732557234037; Mon, 25 Nov 2024
 09:53:54 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241124-hp-omnibook-x14-v1-0-e4262f0254fa@oldschoolsolutions.biz>
 <20241124-hp-omnibook-x14-v1-3-e4262f0254fa@oldschoolsolutions.biz>
In-Reply-To: <20241124-hp-omnibook-x14-v1-3-e4262f0254fa@oldschoolsolutions.biz>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 25 Nov 2024 09:53:42 -0800
X-Gmail-Original-Message-ID: <CAD=FV=V2JhWsK4-gHL72ttXdNA0U2p6YojN+DXtWxNSOjD-ZSw@mail.gmail.com>
Message-ID: <CAD=FV=V2JhWsK4-gHL72ttXdNA0U2p6YojN+DXtWxNSOjD-ZSw@mail.gmail.com>
Subject: Re: [PATCH 3/4] drm/panel-edp: Add unknown BOE panel for HP Omnibook X14
To: jens.glathe@oldschoolsolutions.biz
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Kalle Valo <kvalo@kernel.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Sun, Nov 24, 2024 at 5:20=E2=80=AFAM Jens Glathe via B4 Relay
<devnull+jens.glathe.oldschoolsolutions.biz@kernel.org> wrote:
>
> From: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
>
> Seems to be like NV140DRM-N61 but with touch. Haven't disassembled
> the lid to look.
>
> Due to lack of information, use the delay_200_500_e200 timings like
> many other BOE panels do for now.
>
> The raw EDID of the panel is:
>
> 00 ff ff ff ff ff ff 00 09 e5 93 0c 00 00 00 00
> 25 21 01 04 a5 1e 13 78 03 ee 95 a3 54 4c 99 26
> 0f 50 54 00 00 00 01 01 01 01 01 01 01 01 01 01
> 01 01 01 01 01 01 a4 57 c0 dc 80 78 78 50 30 20
> f6 0c 2e bc 10 00 00 1a 6d 3a c0 dc 80 78 78 50
> 30 20 f6 0c 2e bc 10 00 00 1a 00 00 00 00 00 00
> 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 02
> 00 0d 36 ff 0a 3c 96 0f 09 15 96 00 00 00 01 8b
>
> There are no timings in it, sadly.

Yeah, and like other BOE panels also no model info in the EDID. Sigh.
I guess "Unknown" it is until someone can officially add it.


> Signed-off-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> ---
>  drivers/gpu/drm/panel/panel-edp.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/panel/panel-edp.c b/drivers/gpu/drm/panel/pa=
nel-edp.c
> index 8566e9cf2f82a..403679e506fa4 100644
> --- a/drivers/gpu/drm/panel/panel-edp.c
> +++ b/drivers/gpu/drm/panel/panel-edp.c
> @@ -1915,6 +1915,7 @@ static const struct edp_panel_entry edp_panels[] =
=3D {
>         EDP_PANEL_ENTRY('B', 'O', 'E', 0x0c20, &delay_200_500_e80, "NT140=
FHM-N47"),
>         EDP_PANEL_ENTRY('B', 'O', 'E', 0x0cb6, &delay_200_500_e200, "NT11=
6WHM-N44"),
>         EDP_PANEL_ENTRY('B', 'O', 'E', 0x0cfa, &delay_200_500_e50, "NV116=
WHM-A4D"),
> +       EDP_PANEL_ENTRY('B', 'O', 'E', 0x0c93, &delay_200_500_e200, "Unkn=
own"),

This is sorted incorrectly. I'll fix it for you this time while
applying, but in the future make sure you sort numerically. 0x0c93
should be before 0x0cb6.

Reviewed-by: Douglas Anderson <dianders@chromium.org>

Pushed to drm-misc-next:

[3/4] drm/panel-edp: Add unknown BOE panel for HP Omnibook X14
      commit: c1bae6802ee9c8ad8e3c1df7ca3174d6b4b260e5

