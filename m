Return-Path: <devicetree+bounces-73839-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 83B3F901126
	for <lists+devicetree@lfdr.de>; Sat,  8 Jun 2024 11:36:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8F6A11C20EF8
	for <lists+devicetree@lfdr.de>; Sat,  8 Jun 2024 09:36:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB838176ABB;
	Sat,  8 Jun 2024 09:36:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hQ4jyZcY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324473D6A
	for <devicetree@vger.kernel.org>; Sat,  8 Jun 2024 09:36:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717839373; cv=none; b=fgHou9a8LFxj5w6WPCnsBK0+RA7Ohalgj4OWlfmdznY5xN19WE0Gm+oU0P7yhjVDqSR1r6tBbMubpxcCsj8kku2s3EsUYuthhn6Am+3s9ZEAEvEiEE5E0YfVSjscvnVFgEhQkLWmNs6PuACqM2EAU5WK4X7eu5znhtu4Ecjx3jY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717839373; c=relaxed/simple;
	bh=goessyviepfEIsM+UYb23K12749lSjnF+XUyQxOU2mM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=V4M6I8opCF34bi2C98ferQ2zOf9Tozx8hIoLLkRXR+eqzYU5XmEhLgaffv7eLlJqmXPw25enDCkImauRvoAaFMp9LcMVsJt4GdWjMp8aS6QK0JWQiI62HEhvSyzoC0F0Tc2A7P+nKPRCy0aWvnONQq/K+7WGmXxGGmapYCpwTXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hQ4jyZcY; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-52c82101407so225862e87.3
        for <devicetree@vger.kernel.org>; Sat, 08 Jun 2024 02:36:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717839370; x=1718444170; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5dLK4U/zsCgC7lAJ6QInCaQAz49ZR7dRJlM+3CmdQqs=;
        b=hQ4jyZcY8fjARP5fw6jtMacAdUKjVDTGRAgATnSs5UKx+kMCS7AceZNgapaDbBXKSR
         l6XRogNa+n7alk/KidcPd11dHNnP3M6Kz3EjHt4BF24Qukz2BzpDjdE07rVB2SqzX9Bw
         WH5BY4PqYtQrACA7WGcXu9apOmrGV/aySNqKMw2c5JNgFREZ6nk7AjYMervXL2y2DuZ6
         vhJG0gORp9DVpGj1Q+915KLAhSYzXth99gpe5A1UW6H7eeiviVqfCKJK0iywJ/ogWEmh
         dfUwRSdrX+alqW01lIGCaLb8F8h0PP8m6CAzw2iSlt6aRxq3DPwC9ID36Z6Foa4mKie9
         cONQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717839370; x=1718444170;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5dLK4U/zsCgC7lAJ6QInCaQAz49ZR7dRJlM+3CmdQqs=;
        b=NU0oP8p/ch3sK0MV+x5G9vrqh5N+9Dd8SRka9EXfvACj0DLTugDgigImLAFBELxvR1
         6CoqAJvYPg89CESXcU9sMM2jOtWtJW2Gq8jaTYjdV1KS6xkgw8Ri0PZrFM7rRDoQ22jG
         GfVaou+fheHDjsrLyIPYtNAq8p43OLg460YgfhZqB+S33OjG2lugILqemVA2Ox+rAfl1
         sN17lskITJ07vx65ACYIYitvy6nnGBKwurAaCi+i1zTHJ3mVTFKlcEeO2pUmNQo9IKn7
         QPyJ7TA59GyaKpRQTq7zjGK88T0Ikhd6lOJJuql21P9m5XEpGtOQDoefc+oVaWeOO+uU
         TITg==
X-Forwarded-Encrypted: i=1; AJvYcCVpCCwOys2UAPHhXHp/0IOb4Sp8rHY/caYw0RbeHrctbFYnYPlIWg/dU19O073zKQmKw7AN+SQmSszkKj4/o25s4Ac4PNHcSAdERA==
X-Gm-Message-State: AOJu0Yx36zp/1Kv7JHV6cO37LKm0uKxghZJcdl5+OGbRwXMqVDJWAWgj
	IEzF02fqzUI+nC39bz1ovNL9nxY8sU3udoNVoWZLnjAiWdfiGELCRzCaMwJnOVTZnpJmlOQ/Q4+
	j4quAgs+ImXE476LXtLRQBY/CcfdeW8TouwkOSw==
X-Google-Smtp-Source: AGHT+IHQgvOPpFVLcueg1yGWLP/6phLPjHs6Xt7bTzroWwvjjr4VCzhEG3OUd5INH7kP5xDdZm4xJs34PsQfTymwxSU=
X-Received: by 2002:a05:6512:401f:b0:522:2ada:c02e with SMTP id
 2adb3069b0e04-52bb9fc6017mr4575709e87.53.1717839370326; Sat, 08 Jun 2024
 02:36:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240521-pinctrl-scmi-imx95-v1-0-9a1175d735fd@nxp.com>
In-Reply-To: <20240521-pinctrl-scmi-imx95-v1-0-9a1175d735fd@nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 8 Jun 2024 11:35:59 +0200
Message-ID: <CACRpkdbpL=HUXj0hFAo+JNki_RA9aix2sW1cg13g9=89d93PZw@mail.gmail.com>
Subject: Re: [PATCH 0/3] pinctrl: scmi: support i.MX95 OEM extensions with
 fsl,pins property
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>, Cristian Marussi <cristian.marussi@arm.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Dong Aisheng <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, imx@lists.linux.dev, linux-gpio@vger.kernel.org, 
	Peng Fan <peng.fan@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, May 21, 2024 at 8:17=E2=80=AFAM Peng Fan (OSS) <peng.fan@oss.nxp.co=
m> wrote:

>  There was a v6 that use generic properties, but at a late stage, NXP
>  internals decides to switch to fsl,pins property to align with other
>  i.MXs. Since new properties, drivers rewrite, I start this patchset
>  from v1 with a new patch title. A RFC patch for binding was posted,
>  since Rob said he is fine, so post this patchset out.
>
>  Whether v6 or this patchset, patch 2 is a must and was not changed from
>  v6.
>
>  The pinctrl stuff has been pending for quite sometime, I would be
>  apprecaited if any quick comments.
>
> v6:
>  https://lore.kernel.org/all/20240513-pinctrl-scmi-oem-v3-v6-0-904975c99c=
c4@nxp.com/
> RFC:
>  https://lore.kernel.org/all/20240520194942.GA1374705-robh@kernel.org/

Patches applied.

Yours,
Linus Walleij

