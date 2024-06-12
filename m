Return-Path: <devicetree+bounces-74862-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A93904D32
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 09:55:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3F2B3283BEC
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 07:55:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA54A16C69A;
	Wed, 12 Jun 2024 07:55:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=timesys-com.20230601.gappssmtp.com header.i=@timesys-com.20230601.gappssmtp.com header.b="Af/GNqtC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F305D16B736
	for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 07:55:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718178910; cv=none; b=nR5YQMkenxzo+OZX344j8JdvFSfo/lVJYGojOMl6RP431Ul88XbrbNgqN/Nr6li/GzUyABPyFDlSQWUdHKsACiB8lWTrCJsoW9/SorGWtcI2fV6fTKxVXiailZDEN8CK0yd4W99lPW8AHZoyYZV9dvVy+OXILUab3sxQrD1GNTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718178910; c=relaxed/simple;
	bh=/jcoXUR9wDP6KAAPbxMnAdcj2368TaJUtRP9CxBQamU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=p+NZsbgyRbuaqDR3bS/aLwM7sB39AIckkNL2lMwquFwZfQAtMYro7Xkycz+sFZ6a7/aqTWc1h8Vk0j60lWYyOrgkp5QpEt0+KS3betaUnGnfMHGMx4UOO3zyOthU6qq+j4dL3pdz/QHAuBQyKmWhIk/Jd0SV8x4dJl9X2fwMXrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=timesys.com; spf=pass smtp.mailfrom=timesys.com; dkim=pass (2048-bit key) header.d=timesys-com.20230601.gappssmtp.com header.i=@timesys-com.20230601.gappssmtp.com header.b=Af/GNqtC; arc=none smtp.client-ip=209.85.219.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=timesys.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=timesys.com
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-dfa6e0add60so6486459276.3
        for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 00:55:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=timesys-com.20230601.gappssmtp.com; s=20230601; t=1718178908; x=1718783708; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s8zvLumEmzHSVfDBX+K3KODMcTb3eNmXQ7W6gFdSMig=;
        b=Af/GNqtCTkyI2n74kjCoTQa2O4IpWQO7pwNbUD4DMkqFjuLpI9PNJx/iQvPMBYlSfH
         fnmXHerNMpYuCmU2a2vAg8e+dDTHIaPf81ZBb02eOEUGLcJU6kYNJH+fKK0yDAtozCsK
         FIXehBzv509pz24GxQ+DbAw1GRwL1WIqb1Xe2oKZIAsnSQwKKwZh42j1EV1024pSfc5E
         0RdzQJViPhK4kIOqV1ELzknGGc7ZQaPoK+iXouEdU3ay5FD+N/xg7+Y5Fg7W4ARQdZ4L
         ayeaq9+kxnbIganHelSaDuund1F8A9NjBbNar7UmCT/GblIPv2eFJPAtiJu5CUafKHRa
         9XPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718178908; x=1718783708;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s8zvLumEmzHSVfDBX+K3KODMcTb3eNmXQ7W6gFdSMig=;
        b=si2GL2ws7AWd2roh6+794kkGCSq+Ov5THCdpdgRnp3aL+DvsUcILdTMUadEGFgat+I
         NiFKOV7CPC0/UWsEHNoR9B7VwP9j3dxWmSeAnoSAAGRDQV+VAvKN9WwrAGzsBABQmvWF
         lMVywayI0nb30Jjxup9mu5WEc22NCTqXN8MQ2JhBCcWGWMY/d5FJw8SA1hDU00GROa19
         R/gAELKsup9fjIOJ2hZ7bvEgW2ZQBqU+lw+tL2oQuKjaWU29n1H8Kv7MT6han7EwslhH
         Rxb3ngNxtGPwH/xsUBC8SstgW6KitgTEyhACWEghTQksRlyoISlVkkTFxzDXoC9osS0L
         c2Ug==
X-Forwarded-Encrypted: i=1; AJvYcCXjhNhQ8iqrmVrHWTQlEnDr17im/AzRmwcyCWGIk/T/ZlmdAszCEv2zqqz222RL8boJ6E591IRRzqFe7YCYj0AebBPd2W8q5LIxsw==
X-Gm-Message-State: AOJu0YxBKQquacbE+hFvS79strzOmdkVpcCCXPXOxr7kv3DibxT3tf6l
	SGbhiimAGUFaFxV4bzZaRne/m4oNAOSBx+5gy/hCaNRIU7h4F9vyKyI0/32CtrxCPGThJI5J/eh
	FrhablLIYzrfJ0cih9qAJSSTypBs6hA0erVq1nw==
X-Google-Smtp-Source: AGHT+IFPLy4bDjB26DeJ3OyETqud+YR8g7kmBRh3/NifyRwyRcvSuS2NJ859y2s2TX4hnMNdepvtl112sIycLjmhYjk=
X-Received: by 2002:a25:918a:0:b0:dfe:ed7:84be with SMTP id
 3f1490d57ef6-dfe67064dedmr951615276.25.1718178907988; Wed, 12 Jun 2024
 00:55:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240611094810.27475-1-piotr.wojtaszczyk@timesys.com> <Zmgor8accyAiUkUO@finisterre.sirena.org.uk>
In-Reply-To: <Zmgor8accyAiUkUO@finisterre.sirena.org.uk>
From: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>
Date: Wed, 12 Jun 2024 09:54:57 +0200
Message-ID: <CAG+cZ05=w5KbxOOtpo99B=OHBaLNRKKJVrFT67CH1-6z1gP7ZA@mail.gmail.com>
Subject: Re: [Patch v2 1/2] ASoC: fsl: Add i2s and pcm drivers for LPC32xx CPUs
To: Mark Brown <broonie@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vladimir Zapolskiy <vz@mleia.com>, Russell King <linux@armlinux.org.uk>, Jaroslav Kysela <perex@perex.cz>, 
	Takashi Iwai <tiwai@suse.com>, Chancel Liu <chancel.liu@nxp.com>, Arnd Bergmann <arnd@arndb.de>, 
	Michael Ellerman <mpe@ellerman.id.au>, linux-sound@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, alsa-devel@alsa-project.org, 
	linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 11, 2024 at 12:36=E2=80=AFPM Mark Brown <broonie@kernel.org> wr=
ote:
> > +FREESCALE SOC LPC32XX SOUND DRIVERS
> > +M:   Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>
> > +L:   alsa-devel@alsa-project.org (moderated for non-subscribers)
> > +L:   linuxppc-dev@lists.ozlabs.org
> > +S:   Orphan
> > +F:   sound/soc/fsl/lpc3xxx-*
> > +
>
> It seems a bit odd to add yourself as a maintainer while also marking
> the driver as orphan?
Nautel Ltd agreed to maintain this driver, I will add them.

> > +     i2s_info_p->clk =3D devm_clk_get(dev, "i2s_clk");
> > +     if (IS_ERR(i2s_info_p->clk))
> > +             return dev_err_probe(dev, PTR_ERR(i2s_info_p->clk), "Can'=
t get clock\n");
> > +
> > +     i2s_info_p->clkrate =3D clk_get_rate(i2s_info_p->clk);
> > +     if (i2s_info_p->clkrate =3D=3D 0)
> > +             return dev_err_probe(dev, -EINVAL, "Invalid returned cloc=
k rate\n");
>
> Nothing ever enables this clock.
It's enabled in lpc3xxx_i2s_startup() and disabled in lpc3xxx_i2s_shutdown(=
).
When the clock is enabled the bit clock on I2S interface always runs.
So this is to avoid active clock when the interface isn't used.

--=20
Piotr Wojtaszczyk
Timesys

