Return-Path: <devicetree+bounces-150658-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC95A43296
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 02:47:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 36348189C609
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 01:47:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BADD842A97;
	Tue, 25 Feb 2025 01:47:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Kjs9s8tW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9814101F2
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 01:47:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740448027; cv=none; b=D1AqvDe/nHY5HbwNcRJ+0wwmwFvqtP+/94v8D81Pebxvi3Tu3LwZWQI32+ShLKejs3/OkrWO1g4jH+1v2zLWsTmp8IHCtGr1+pCnsVe3HvoT6Exvm7z4NwwqUlpkgGNIiKCZ2jxiESMzHOS5BWDXiHKIaytzH1/e4yoxGdkgbTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740448027; c=relaxed/simple;
	bh=OcbScHMevtCpUQLP39MsdU6XISC+ts9KIshL7n45BFc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=o+2IFA7qmk//EP1z0bBpIHm6F2HXyds0WJRIZS4iHCPTY5X4alVN7ompyYOAXC2gEEs5zzGKE2lznRtn98e0ZfwIbR9fTK1qj+hG7y/6nfmI9YGFhgFMxRXUcOfrB1mYXB9lXk5Zj9xzRPLcKcnetDU/2REZbXHzjf53DbgPoZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Kjs9s8tW; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-307d1ab59c6so56336171fa.1
        for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 17:47:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1740448023; x=1741052823; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i4TOCMT9A63jLoOCD33qtnm1uXyI2TNmIj6w6+0Voco=;
        b=Kjs9s8tWqI3dEoFq9WlAaNXyX2CHHwFwROsDsbbMU2Mk1FVOyxrT0Ak/LRBiI+WbJq
         yCwt11EpATr5/Ftm5Qx8GiCG6xBR4Wu1w4Xv7A3WDpr7HTuZpo2PEN0icZ/WwdFDfpdb
         xCR/qdVfZdBwjTrmnKyXEll7KX+xjex91mi4U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740448023; x=1741052823;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i4TOCMT9A63jLoOCD33qtnm1uXyI2TNmIj6w6+0Voco=;
        b=VcrtIXkBu234xhteeJK2ychVPBqNalTRiAj1Rh6OzDn0rva/vW07dtDUwGaaQCNMLN
         a5Gku/Fwzzdw1XJZx0N9HHAoBz4EmVK2/H+xWVD+wiZqeWuo5IO4EDFkSzheAmrf1MMI
         kDmp8jh+JGQxCtiENQZvmsXix82J4nGDVC4HxOWjaahmMIf97rLZRjGHiBPZFecDNe66
         UW2rUw8Iwi7rfJ6Yk1b77JadnFCaMIiJ11QjgiDw4ZnwZubMnYJoWVKRDuDhyB44JTEP
         V9Noaacu40MWijZnIJjafcTVFjIQGwieO+KBd1LHkiI3QyaQ58cuZsTwlTtXCTO10UhZ
         QAeg==
X-Forwarded-Encrypted: i=1; AJvYcCWdycEHnRyeuvoU38apprS+sXKmwuXkMOTBh3WhaiQjRMhljktL6fOeeuX4HZgmAsjGYMw6CAzjnwE3@vger.kernel.org
X-Gm-Message-State: AOJu0YyOyyavrKqw5avGjGhORN7yOvmnY9IpWM3KVSMCoPEla+xGarrs
	x0oEI3oAaHtrjpUZasJjL+qdXxCSc/uEsdj9uUWNFIQzC5BpVu+HcXkD0S6hnv2QsReaMYvVmZI
	RkI0o
X-Gm-Gg: ASbGncuyzfd6UWLuV8Z7Smdy+PwH3X4W7e8elxJjtXeRG/3XbDMNAFJxN717FWI2Nax
	cdw7WYl5ayKIpXNRozebdinx83oDqeMV2dKhySqAwIZqHnRZGhRATXRmTGOwfg2/XPosYP+st++
	HSfK2RjtUjCNPEitoX0w7FPYfU5nWjCFP93+q6yJMKLuFVbl2b7gmjq3UIKjLvT8ssP5bockNNk
	+Li6PNCbrAAMl+Yf0LPnoticpJupZtknmM9Qg1Ljl1zuXwOLx46jZZ0grUfNMcwKU2DRw0ZWsG/
	HvqfaMBntwipoJ4x31UlFIdut+I7MbjxE5X+5bmpNjycVfrI8Yi1zcGMD8kQPGy8CRxjuQ==
X-Google-Smtp-Source: AGHT+IFOvcFG2IpcN5FkXkeblC00CX7mtmpUhCGx4FqQ2lqXdEeJUhWkBDtvPChytDhSZLYCExLSMg==
X-Received: by 2002:a2e:9688:0:b0:309:1d7b:f00f with SMTP id 38308e7fff4ca-30a598f3d9cmr49037351fa.18.1740448022956;
        Mon, 24 Feb 2025 17:47:02 -0800 (PST)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com. [209.85.208.169])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30a819ebd95sm906161fa.33.2025.02.24.17.47.00
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2025 17:47:01 -0800 (PST)
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-30761be8fa7so47216901fa.2
        for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 17:47:00 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVCg1PKSLB0f4X9gNQcvaSQOkIZ48IyhmHvxe7oB2I0x+pbBotElzBsTX8/rrmCnd4SxLh6RICKH7SA@vger.kernel.org
X-Received: by 2002:a05:6512:ac3:b0:545:f69:1d10 with SMTP id
 2adb3069b0e04-54838ee1c94mr5432801e87.8.1740447662279; Mon, 24 Feb 2025
 17:41:02 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250224081325.96724-1-damon.ding@rock-chips.com> <20250224081325.96724-5-damon.ding@rock-chips.com>
In-Reply-To: <20250224081325.96724-5-damon.ding@rock-chips.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 24 Feb 2025 17:40:49 -0800
X-Gmail-Original-Message-ID: <CAD=FV=X7iWOyAvdfRDyFA9kdr+utU_aAaJ5F7nAsaHp2fMQgVw@mail.gmail.com>
X-Gm-Features: AWEUYZlbdiIhJLMaGbE9FR34Ygo4r4AydhTgMaLe8qb8EcM7igmYbqK2w54Qn0U
Message-ID: <CAD=FV=X7iWOyAvdfRDyFA9kdr+utU_aAaJ5F7nAsaHp2fMQgVw@mail.gmail.com>
Subject: Re: [PATCH v7 04/15] drm/bridge: analogix_dp: Remove the unnecessary
 calls to clk_disable_unprepare() during probing
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, andy.yan@rock-chips.com, hjc@rock-chips.com, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org, 
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, 
	dmitry.baryshkov@linaro.org, sebastian.reichel@collabora.com, 
	cristian.ciocaltea@collabora.com, boris.brezillon@collabora.com, 
	l.stach@pengutronix.de, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Feb 24, 2025 at 12:14=E2=80=AFAM Damon Ding <damon.ding@rock-chips.=
com> wrote:
>
> With the commit f37952339cc2 ("drm/bridge: analogix_dp: handle clock via
> runtime PM"), the PM operations can help enable/disable the clock. The
> err_disable_clk label and clk_disable_unprepare() operations are no
> longer necessary because the analogix_dp_resume() will not be called
> during probing.
>
> Fixes: f37952339cc2 ("drm/bridge: analogix_dp: handle clock via runtime P=
M")

When possible "Fixes" should be pushed to the start of your series so
it's obvious they have no dependencies when being picked to stable
kernels. That should be possible here.

> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  .../gpu/drm/bridge/analogix/analogix_dp_core.c | 18 +++++-------------
>  1 file changed, 5 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers=
/gpu/drm/bridge/analogix/analogix_dp_core.c
> index e23af674d91c..d9dafb038e7a 100644
> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> @@ -1608,10 +1608,8 @@ analogix_dp_probe(struct device *dev, struct analo=
gix_dp_plat_data *plat_data)
>         res =3D platform_get_resource(pdev, IORESOURCE_MEM, 0);
>
>         dp->reg_base =3D devm_ioremap_resource(&pdev->dev, res);

There is a context conflict when I apply to drm-misc-next because of
commit 43c00fb1a518 ("drm/bridge: analogix_dp: Use
devm_platform_ioremap_resource()"). You probably should rebase and
re-apply.

Aside from the context conflict, this looks great to me:

Suggested-by: Douglas Anderson <dianders@chromium.org>
Reviewed-by: Douglas Anderson <dianders@chromium.org>

