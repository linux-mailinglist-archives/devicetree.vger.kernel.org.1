Return-Path: <devicetree+bounces-237120-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A099C4D200
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 11:42:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C505F427BD8
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 10:36:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E5E634EF04;
	Tue, 11 Nov 2025 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="A5K3Vj1c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FA0F34EF07
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 10:35:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762857353; cv=none; b=MmzEnNKboCLxBF6vdvVt00VSm7yqxm9fAmWmJD1GRn5gyKz7thWa3FEpV3gblVLDEtDMuu4uysC3wbHIFHw2t6a2Iu4R/iRqXzbVtgOQ3kJQFbdL9vpqSiUKhbHBrwZPcGvPmxmG1b2TR1SYVNaKYVQ3Sdboif3XAAQWb2zZDGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762857353; c=relaxed/simple;
	bh=b5cTARWnCH0O+wzlNreNZEZCG3YtR/z+aB364cLgDRc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nXpSN1BccXnNugPZxQutCevDQwv5lgW9ZTnCtz0IaL7bmUxVjvKkM9mS3oR3QiiDVjmU/yIS3FJHdvEYd4D+aOdHgBR5NMf0la9ZjSeJn/McuQD1Q7yFxkwqd8Z/NlI4tELSpMCWqbknnEujCD/yZJ9fJsWgSaLpf4WRofP6aDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=A5K3Vj1c; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-37a33b06028so35208941fa.2
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 02:35:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762857349; x=1763462149; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b5cTARWnCH0O+wzlNreNZEZCG3YtR/z+aB364cLgDRc=;
        b=A5K3Vj1cV3ibGiIR+o5kYeDkP1LkFeJkJQ2AYzJ7Ueyiwmtcr2ywQVaykLSnAeMCgj
         EPqy2hQoLPARSunxPZsKJUddW/N/u34Y+LUskmmXxR/pr+8BN/MVMBB79PzKlZGgIsBF
         qAz20kgVN/CARA1DsNTJQzLAv6Mj1oepbEhxcK03bRTInIYMy05xLTiHsuTOCFSm5So2
         0xwf6tCRutJ8t289wOT9kF/akxV3GfJcPvtvY3qJUoEA0TgFNE0ZcM8Vhqfy3zaXX+pN
         eF8Lk9aHYKL9aXRObdVCeBBNDJEwVilstRk2D7oSVt8Oyd0PSIj750vIt30jb6UL/gKZ
         ClWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762857349; x=1763462149;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=b5cTARWnCH0O+wzlNreNZEZCG3YtR/z+aB364cLgDRc=;
        b=jioTK2zJn4zcrqcNl98CEWzLfRXgPhWoFlIZWuGtpHI3u2HUksCg7R2j9Fg8mTZCYj
         b/rWx4LgeB+1GHlaOyj7xFSsTIrEQDDzmC5I0CIO06M5oEDOhXBHpuKu3RMeDvH6sOAl
         qpFFlNVAAm15K1juENEDg+HwDVEoNirE9T5f0Yh8tpj2E+scsnC6unY1LGV1Vi9qafkk
         S8CRLSgX3yvF1AqqlQeiBG2AGE00ZQS+bRGzimb80OR+QueWC9WTKd7/Pl6dSFohT0Mt
         gwV2cxR7/Ep+7ElZXykNF1aNjuXEo4Eqfm9LoEq3l/YnYi63d1UtM5RTtAwuO8AWPCOe
         +ZTA==
X-Forwarded-Encrypted: i=1; AJvYcCWZOUEm9LVN1o21tgWC1Bc5gGVbxqrMXQZhWtRtrqxYxfFznwD6WEj9yTiBAoXKg9YFpYJhAF/Ff/CH@vger.kernel.org
X-Gm-Message-State: AOJu0YzHVuW/vgSYBWOafk7/iz6hyzerw/hF+Gsod1aR0gwbsHE4NlGm
	cycDN2TNCJAOsY77yelUO2o0PmsPVCQacCSMzMxEzvbJ95EIvIcPK6PX8uew0CyBDmjhNDAz+zM
	UCN6wTkjeXMKdDwVwlcw/cuYicurWkP+zW3MM7lths9kyGyvaZycA
X-Gm-Gg: ASbGnct8s784ura62BFhpA60nJ+pjyNw1v7KpwPT2nBqdhDRQpbuEhBR2kMAlTyYUi5
	X8RnohOaALki6gIo8hcM9P3DN71mzGFIxQqSX52zge9Xp1WI1tBSJLmvEvCl4uhxOlpg55xkHvy
	NMnvgFmiABaUGKzRVP1IhIORHXFcq4ffQ5Xv+EoFlHHnAusN9wvlIKPRO+c4RQeZcIwFOu3c6QV
	mk5vzB/O3CApPfgywtRle7yiV/0glrXb4eXsRmszEXqlP/owrNdMqMtVJAlXsrYyaUWu10=
X-Google-Smtp-Source: AGHT+IHiG+EjsNieo0IH9vKGvPYVnnnJhmFUXHoDPqz54BHP96ylxBdjlT/JInKjKxLz/khK4ncylVpRxXU4D16MeYo=
X-Received: by 2002:a2e:95d2:0:b0:37a:2f0b:ef24 with SMTP id
 38308e7fff4ca-37a7b1995e0mr22288641fa.16.1762857349004; Tue, 11 Nov 2025
 02:35:49 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251104203315.85706-1-shenwei.wang@nxp.com> <20251104203315.85706-4-shenwei.wang@nxp.com>
In-Reply-To: <20251104203315.85706-4-shenwei.wang@nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 11 Nov 2025 11:35:37 +0100
X-Gm-Features: AWmQ_bnM-SUasW3cn2Gm4EW3aePYZpGnjIZZVnW89VcDCfJSgNXVTHUcuXdKqUo
Message-ID: <CACRpkdZR2C=+ssYOKnF=hyOqTakGjVxzp5_qz=3-uYRpzaZgNQ@mail.gmail.com>
Subject: Re: [PATCH v5 3/5] docs: staging: gpio-rpmsg: gpio over rpmsg bus
To: Shenwei Wang <shenwei.wang@nxp.com>, Bjorn Andersson <andersson@kernel.org>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Jonathan Corbet <corbet@lwn.net>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, Peng Fan <peng.fan@nxp.com>, 
	linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, linux-imx@nxp.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Shenwei,

thanks for your patch!

Also, a big thanks for working on improving the standardization of rpmsg
so we can get some order here. This is very important work.

On Tue, Nov 4, 2025 at 9:34=E2=80=AFPM Shenwei Wang <shenwei.wang@nxp.com> =
wrote:

> +- **Major**: Major version number.
> +
> +- **Minor**: Minor version number.

I'm not contesting these if they come from similar fields in other rpmsg
devices.

What I'm thinking is that the driver will eventually have to quirk around
bugs in the responding rpmsg CPU, and there will be bugs. This can end
up with this situation:

major,minor =3D (1,2) NXP implementation, no bug
major,minor =3D (1,2) Sharp implementation, no bug
major,minor =3D (1,2) Sony implementation, ooops this has a bug

What is the driver going to do here to work around that bug?

The scheme kind of suppose that all vendors use the same codebase
and they don't.

I would rather have:

**Vendor**: Vendor ID number (such as the PCI or USB ID)

**Version**: Vendor-specific version number (such as SW release)

This will make it possible to identify buggy firmware and apply
quirks.

My apologies if the rpmsg community has already thought about
this.

Bjorns input would be appreciated!

Yours,
Linus Walleij

