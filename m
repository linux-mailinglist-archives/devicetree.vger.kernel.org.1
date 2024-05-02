Return-Path: <devicetree+bounces-64486-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BDE8C8B97D6
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 11:34:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 84455285656
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 09:34:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DCDC55C08;
	Thu,  2 May 2024 09:34:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="oG5pnS/g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF8103399F
	for <devicetree@vger.kernel.org>; Thu,  2 May 2024 09:33:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714642440; cv=none; b=AdfSvvj4rqBWyS4xaLk/w0DlfSFr8KAlbikSrMgbHtRie5VqcPTrRfabbhsPdhpMapX/3Kpn/QWTg0bpzeGIryBj+k+qCNOOWFwAHW2bhbsx6trGGNlomSl8t5A276daztQsKdpPFKkKU2p96g2s4HaSpnYkhch5RuGjBGdjKH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714642440; c=relaxed/simple;
	bh=nkEb1cGpxGhnxIo11VL8ruy9enHJYVmsxY5j3gtXE/Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=koblcxPAxfVR3gJyIFAEqdw3XkJvskma8LwNfLNqKFovzOcvRGoWg5RhDRG0/HWXv2v4KE+C+skq2N4K+0inhddeWqMBTPFQrUE7JmpimXQEVp/ynSNJDRPoKKNMJhz1Mr7vc0+YKPWgR9Uk7aW0IfPPoyG9G10rU3hcIojEnBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=oG5pnS/g; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2db101c11beso91415211fa.0
        for <devicetree@vger.kernel.org>; Thu, 02 May 2024 02:33:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1714642436; x=1715247236; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FUPIZkrFl6BEjtW1yyE61WicVfg6hOSYbd+LAsiXxyM=;
        b=oG5pnS/gE7OtIXwozrCCBErGDyeCovH0iy2Ld/keNJvPpOwSfe0k4rzt3UvjWGSxvt
         g2gCaID4xXaqM64okiTwi8n5w31N46EKd02+1OgoD4ZcVYejmmfIqk6S7nlYzeH/6vhW
         bCMUnslX3QBc3uk1lGG5sW9s5Em4sFAL20H0I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714642436; x=1715247236;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FUPIZkrFl6BEjtW1yyE61WicVfg6hOSYbd+LAsiXxyM=;
        b=U9s+9SZ5FsziFu/PgOfwmUeLMVPwNTsXnOMdK/Xn/9oOzrQ0FKFK0zLnQ0EdVWxSD8
         OLj9DwoIVUAfbQhD8BpSHYLiw7dObq7bJaMmMPaQG0NgCGyf3F+9OhoQcC3LL5uhB30N
         e0EjmExeK9PPk0zpOZsS9atHSQcxMmR919BgE2Y2Bt2eVImNu8zDa1Yy4jjYOCrcWFRV
         cLDkkRbtXcN2yMxppgmyj+VHWqsKK5sId0Bpk0zGdjXefDpYBmdK6FvsCP36Pvwe2oxw
         ZGnbAQHozX17K6slcgpgOxbUCqqXkD++vKVRFs5pYPN/41fB6RkX+k+0XM9QSA8nZtr5
         qjVQ==
X-Forwarded-Encrypted: i=1; AJvYcCUoKHIZZ32g7QEQB0DT5oVBuGaRJf8R6mWMzJY++bfnVsOypKf2A37DONBObWaMmchHi4Gp1YUtRZj74DStOZZRqInMq3TDaq3e2w==
X-Gm-Message-State: AOJu0Yy7lbr1AsBxG50zS2YSOW8KJBhvK5ly7B5urEgezscSNB9fZ7Pe
	arVkxdsF0jR2gYib5M4X6DmvAvgtN7nku+6XI2U+FtkzbxuP1Tnc+MxPpEkQ/7gYUz8JLSfvipQ
	ga+gdhQU+P/Zs9Jzjdl84OxqukxkFUjWytuH7
X-Google-Smtp-Source: AGHT+IGq4dmzHxgktFLM5a2WhXUqq3A67gAwjMdqjX26QYOxX34ttC61CkVRyaFFQXyx2u2V5502HE2Ng9PF3eBB1oM=
X-Received: by 2002:a2e:994e:0:b0:2e1:fa3f:6165 with SMTP id
 r14-20020a2e994e000000b002e1fa3f6165mr481449ljj.8.1714642436155; Thu, 02 May
 2024 02:33:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240502-anx-tdm-v1-0-894a9f634f44@chromium.org>
In-Reply-To: <20240502-anx-tdm-v1-0-894a9f634f44@chromium.org>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Thu, 2 May 2024 17:33:45 +0800
Message-ID: <CAGXv+5FS1UwFiGYh-qZDau0yok3Gwf7g7GdRi=qJAG51ZDXD1Q@mail.gmail.com>
Subject: Re: [PATCH 0/2] Add TDM setting support
To: Hsin-Te Yuan <yuanhsinte@chromium.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Xin Ji <xji@analogixsemi.com>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, May 2, 2024 at 5:03=E2=80=AFPM Hsin-Te Yuan <yuanhsinte@chromium.or=
g> wrote:
>
> The anx7625 supports two different TDM settings, which determine whether
> or not the first audio data bit should be shifted. This series adds the
> support for configuring TDM setting through a property in the device
> tree.

As mentioned offline, this shouldn't need a DT property. Instead the
machine driver dictates which format is used to the DAIs, and the
DAIs set their respective settings accordingly. It would seem that
one of the drivers is misbehaving.

ChenYu

> Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
> ---
> Hsin-Te Yuan (2):
>       dt-bindings: drm/bridge: anx7625: Add a perporty to change TDM sett=
ing
>       drm/bridge: anx7625: Change TDM setting accroding to dt property
>
>  .../devicetree/bindings/display/bridge/analogix,anx7625.yaml      | 4 ++=
++
>  drivers/gpu/drm/bridge/analogix/anx7625.c                         | 8 ++=
++++++
>  drivers/gpu/drm/bridge/analogix/anx7625.h                         | 1 +
>  3 files changed, 13 insertions(+)
> ---
> base-commit: 90d35da658da8cff0d4ecbb5113f5fac9d00eb72
> change-id: 20240430-anx-tdm-7ce41a0a901d
>
> Best regards,
> --
> Hsin-Te Yuan <yuanhsinte@chromium.org>
>

