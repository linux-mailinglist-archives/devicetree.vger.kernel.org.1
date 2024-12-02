Return-Path: <devicetree+bounces-125886-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B15FB9DF9AC
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 04:41:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 76DC3281848
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 03:41:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 203361F8AD0;
	Mon,  2 Dec 2024 03:41:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="elbtE0eC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CDA82868B
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 03:41:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733110895; cv=none; b=JiCTilR4xM3edvukMYY3MljOC8re9g6fB/kU15ZGvq3B+Eqbe4fxpn0fPWjM3wh08cUsZHDc+VRfuNglko+INEF7zQ60yJna6PDvcmIOD3LdOva+awot8YB65mYTZe/USX6v3YykwXPYy/2nQJI+t7pUO0mXK2c4zSFQX7x63Ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733110895; c=relaxed/simple;
	bh=WL4yh0AElDBPFlk9xy3xVvMWfNNY0b2isFFOAhLsxUM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KpsGZWI/oVXrsAKMp2ITw/GMvWSjEKxiviT/dnqSMmuYEPAE/QloW+O48IlSwnlCRp+uxuoEDZWdkPx+9rCsemfdqGnKIjoEy2uAVgHqKawxPHkPUTt+/UcbmvNQ0Tnto03KyvrRHacw7UySy05g7OeeSjSNGu3gu3Kz8jM0sJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=elbtE0eC; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-53dd0cb9ce3so3278243e87.3
        for <devicetree@vger.kernel.org>; Sun, 01 Dec 2024 19:41:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1733110891; x=1733715691; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9bTlnjRzF2JRQH5FoLyAwJy6PscFmIMIE7nVuxtFSPk=;
        b=elbtE0eC+XNjDXAm/xsnNNpXN0XQVW/t6GdTEn2eOwR5zDvKG1UOw3SrRyuLbrNt3p
         Ejv0y7X1PwIggpiJ3zhuK4CjwRNyuDWjWuJzFIZMPHa7CxisO+xA0D2DDx5mnBQq9lYs
         9SKTnMXsk1UfLdAYa/sSpDPXfbXGVLnuy5XDE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733110891; x=1733715691;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9bTlnjRzF2JRQH5FoLyAwJy6PscFmIMIE7nVuxtFSPk=;
        b=BnvfFCcrHK4/VficAt9M5NupR/SuXOlo7T7eJa7IogtsNDb4km0G2rGOOKiSRFA0Is
         Nsp0PIgUrk9XJ2cpibn19wUCP7FJr0x+vpxL7rAB+sujsyX2EezFF3SYWUEzkpDmqsxP
         lINOSVnwopospeeUPDG1dCooE1ciV4Nletq0ed0PMxLK83O0lN68hhB7hRKbqufNoB2c
         RLYYDJCvcVCs+VQsY4unzKsX4JohkYztyQd7p6lHNt/fgd6x+wQbMh+12ebWS7iFD9KQ
         DFrTKBLWX1ubmdrw5fDuujp7zp/zwI34l2kBnWIRp7kah1D7+2dGXt6vWdE9tRkw+ihS
         qPHg==
X-Forwarded-Encrypted: i=1; AJvYcCWMeBdqnxnf5BWvTkH1L9jYA20h/+qJjGRde54tgBVLUWQ5q+kmrr2pcEJS/2w/WF+qKa+ZGROvT1ya@vger.kernel.org
X-Gm-Message-State: AOJu0Yy32Why4avrw1EDUsmQ3fNMv46wG9D7stYjzHX7U7VXYheL+48A
	I09xQVZOj1WXLXW5TVtk+Xhmy5oKlT6KosapA585xQoAvArzPl3NoFflJQkwg83TvgNOlliRGSv
	zmwISDAu5pGBN0HYYFRAY8OnZSswYuagwRnPR
X-Gm-Gg: ASbGnctZ+nmQQLuUmr2/y4jbJOgDPsBCsThXaJf5240bXA0Xn4TU0/mdPFzbhY0LR0T
	s9ER15I/eBxOmFNBCoQE8bmRNuGkaXahoZR4Xjg2SeKjIX7e0ee4wnI3QypU=
X-Google-Smtp-Source: AGHT+IFBGoFOaRz+qRuU+qOg6hWpwu/Z+nHG5cJ1fZ9YkpTnT8oQX9A4GdCR+xRN4nrprMU5eqtqFpCUbyCnVLzassA=
X-Received: by 2002:a05:6512:2356:b0:53d:ab10:c273 with SMTP id
 2adb3069b0e04-53df0104928mr6377365e87.40.1733110891515; Sun, 01 Dec 2024
 19:41:31 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241112052211.3087348-1-nico@fluxnic.net> <20d3a0be-ba5f-439f-80ff-2e2bda3bb144@linaro.org>
In-Reply-To: <20d3a0be-ba5f-439f-80ff-2e2bda3bb144@linaro.org>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 2 Dec 2024 11:41:20 +0800
Message-ID: <CAGXv+5H0ocBWxGseoRXWyBo48+5-F-FRLZZcywcM-_vwu4=jVg@mail.gmail.com>
Subject: Re: [PATCH 0/5] thermal: multi-sensor aggregation support
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Nicolas Pitre <nico@fluxnic.net>, "Rafael J . Wysocki" <rafael@kernel.org>, linux-pm@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Nicolas Pitre <npitre@baylibre.com>, 
	Alexandre Bailon <abailon@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Nov 30, 2024 at 4:00=E2=80=AFAM Daniel Lezcano
<daniel.lezcano@linaro.org> wrote:
>
> On 12/11/2024 06:19, Nicolas Pitre wrote:
> > This series provides support for thermal aggregation of multiple sensor=
s.
> > The "one sensor per zone" model is preserved for all its advantages.
> > Aggregation is performed via the creation of a special zone whose purpo=
se
> > consists in aggregating its associated primary zones using a weighted
> > average.
> >
> > Motivation for this work stems from use cases where multiple sensors ar=
e
> > contained within the same performance domain. In such case it is prefer=
able
> > to apply thermal mitigation while considering all such sensors as a who=
le.
>
> Do we have a real use case where we can compare the per sensor vs
> aggregated sensors approach ?

The MediaTek platforms have one sensor per CPU core, but the cores are
grouped into two clusters, and DVFS is tied together for all the cores
in each cluster, as is commonly seen on ARM systems.

Furthermore, there is a hardware block that does minute OPP voltage
tweaking based on thermal readings, and AFAIK that block wants the
per-cluster aggregate temperature.

ChenYu

> > Previous incarnation by Alexandre Bailon can be found here:
> > https://patchwork.kernel.org/project/linux-pm/cover/20240613132410.1616=
63-1-abailon@baylibre.com/
> >
> > diffstat:
> >   .../bindings/thermal/thermal-zones.yaml       |   5 +-
> >   arch/arm64/boot/dts/mediatek/mt8195.dtsi      | 210 +-----
> >   drivers/thermal/Kconfig                       |  27 +
> >   drivers/thermal/thermal_core.c                | 643 +++++++++++++++++=
+
> >   drivers/thermal/thermal_core.h                |  14 +
> >   drivers/thermal/thermal_of.c                  |  86 ++-
> >   6 files changed, 780 insertions(+), 205 deletions(-)
>
>
> --
> <http://www.linaro.org/> Linaro.org =E2=94=82 Open source software for AR=
M SoCs
>
> Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
> <http://twitter.com/#!/linaroorg> Twitter |
> <http://www.linaro.org/linaro-blog/> Blog
>

