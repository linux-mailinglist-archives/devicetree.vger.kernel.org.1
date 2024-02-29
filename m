Return-Path: <devicetree+bounces-47157-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E63A86C536
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 10:30:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D1107B221C7
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 09:30:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 737B15D750;
	Thu, 29 Feb 2024 09:30:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="F9/LAApI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD1C25D739
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 09:30:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709199049; cv=none; b=fEFaCDuNi79ulsLWUhNJkwvUZYKLeru5LYdHFNUIQa9Qy7UaZKuhTXZjgZf7uxtyE5cBKxrtiFQ5p1iHPW37K2ZR2dDCxehAF91SObdWwR4RTtbIjR5ks8tLFaBOeREMiDmKy+BFW3hZ8+QsvTIAAv+MURE/EiMqx/ED+BpGwLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709199049; c=relaxed/simple;
	bh=31chdHlOIqy4WCMDjv7GZKxMkfPu9JZLtk09++EW130=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=l3GkXR2YTHw+xtst9K6uJ/PahRiAu++HxkmgzSfEkNc94QANP1UJWQ8rdxD0grUD+p4VK90GxWfSZbFoezilaP2AvVWIFmBxhafDA0CswEDrFqVCHDdkpPdsKpySOGQCNwl9DNEzX5F9iAYlClnUBFWcLHj6ttFdwmmdn7KLNwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=F9/LAApI; arc=none smtp.client-ip=209.85.219.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-dcc4de7d901so714871276.0
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 01:30:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709199046; x=1709803846; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=31chdHlOIqy4WCMDjv7GZKxMkfPu9JZLtk09++EW130=;
        b=F9/LAApIsHY429+cdXGQchpL4KoOf5QrS8Yb+dXjyclik0vicnut+U+NP2c3iRyPBR
         t6yFM3DaOtkQsi5qcgFOzp+9bX1MUbXPyAddqSjeOmAOwaZhe2hyWQIAin/wn74LDPwq
         I0e2c6lrHx2IzDf6jmUphVrte5OWNmQtNg/KjvvGGpYAY3T4TPKTtCYrx3eFNudnI6AV
         Yi7opuP3nXvlLv8OwE9K3PKRyBRHqG8t7H7HGLqXfjhrruod7caV8Kn2whRjSrV/l++8
         +0kXdoYujbLWvQXZGCy/4p53bY8Ro+RUUEqXhYh+28qSMLionK28a7qKbEXWpTisGVEd
         i/Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709199046; x=1709803846;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=31chdHlOIqy4WCMDjv7GZKxMkfPu9JZLtk09++EW130=;
        b=R0+0IGL1NwtMR/hXLIwepc8uvJZTwo6TN04qd6fxoZfJ+gqBKGzSBM1wn5/mLUs4+Z
         CRwTBdlUuzq/fdk3SYrFRm/d1YYPkZvw4j5BZBTEylpA/vd1qycY1lkW7pXZcoJmiowj
         Q80gh8jZyhpJmlGfabu4u31COIOOtvGPiYsXbDdvx5MYGtl3X41D0nOABEs+vbMk4fj8
         m0EDeEQ5Y/wRul1772iBCnSa4NJ/VTrs+c1/G8chVehMJ4w1XDsq7//Tsk8QBhI0eVkY
         ZobFhvWbLbEpiTcD8Qxd2wf1Nx0KlnkyYmWUVnRYivQ+LwzC4IOxs3G/YSz5gKCHUmAS
         b7vA==
X-Forwarded-Encrypted: i=1; AJvYcCWKalzYuIR4xYMpwf2UmgV2aerTfJGztmCF2mNg1pr/9s8C7V0Has/kWOqi1aw/dCLisUSNFLjxmK1bSSE7wOejctPCS1Wuj3hksA==
X-Gm-Message-State: AOJu0YzspLggFP6VIji6BttTxv5Jp/0/zsR/sVGfminlBUzpxHfo175t
	Wa8MwrUPM987grQuTQ9GeGxqiaXpZQJD96W28hMAekWzMgHwj0LTEYpzBxTFvbTCoNYG0M16MJo
	RhcUakisffEl/Kj9VS9PlEnS3vd3Iu/QsH5z0bTIeHg6w89q/
X-Google-Smtp-Source: AGHT+IEmhOIkoqQABgOgh2spi9fO0NuLliWyGBbtbQP2Y3j61zegZ8lSPYJAXlb0pVJPAWRTtqtOPDmNbSb0YROYMtQ=
X-Received: by 2002:a25:d30d:0:b0:dc6:da83:88e6 with SMTP id
 e13-20020a25d30d000000b00dc6da8388e6mr1480292ybf.32.1709199046701; Thu, 29
 Feb 2024 01:30:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240228-mbly-gpio-v2-0-3ba757474006@bootlin.com> <20240228-mbly-gpio-v2-16-3ba757474006@bootlin.com>
In-Reply-To: <20240228-mbly-gpio-v2-16-3ba757474006@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 29 Feb 2024 10:30:35 +0100
Message-ID: <CACRpkdaR4fLef24SMFj=_C=o=dqWvKemVJPKcx1jjwjrvVnRPg@mail.gmail.com>
Subject: Re: [PATCH v2 16/30] gpio: nomadik: replace of_property_read_*() by device_property_read_*()
To: =?UTF-8?B?VGjDqW8gTGVicnVu?= <theo.lebrun@bootlin.com>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mips@vger.kernel.org, Gregory CLEMENT <gregory.clement@bootlin.com>, 
	Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Tawfik Bayouk <tawfik.bayouk@mobileye.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 28, 2024 at 12:28=E2=80=AFPM Th=C3=A9o Lebrun <theo.lebrun@boot=
lin.com> wrote:

> Avoid OF APIs in the GPIO subsystem. Here, replace
> of_property_read_{u32,bool}() call by device_property_read_{u32,bool}().
>
> Signed-off-by: Th=C3=A9o Lebrun <theo.lebrun@bootlin.com>

Patch applied!

Yours,
Linus Walleij

