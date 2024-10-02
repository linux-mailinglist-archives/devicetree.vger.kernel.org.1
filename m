Return-Path: <devicetree+bounces-107272-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D458298D9B6
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 16:14:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9E85D28994B
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 14:14:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 594AF1D0B90;
	Wed,  2 Oct 2024 14:09:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qWF21527"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C255D1D049F
	for <devicetree@vger.kernel.org>; Wed,  2 Oct 2024 14:09:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727878186; cv=none; b=u/XTEUle4GZVjby9vIzM5j/yzrHEyLYcutmvC62MNTZzO5hK0kXOON+iKOTfsLfDsB87hhXxcTjijTy+DV6IU/gzybvgxcaL8WaJzQr8ZR0pMSTvzkGvzD3vSSUCkuUYH3CVRld1kkjvsE25oMY3vrUGvfG69uMTsIHgJ3BEyI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727878186; c=relaxed/simple;
	bh=XxAnTzs5cKyExN6wKTYod5KKrU6K07qTFg4am3PSgIg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OZ6g8vmrderwPbvXMmNkMz8JucMos+NPCdQSWNj5T7I0ClPokwpoTbhgNTF3WJsix/TOyQYM4bhx2ih+cKdR8Yil7SLMWc6pDHrJUqlILwGSUlsGG5EUGBsg6Qm42dSaiw/TCFZJARVLzaAeK78zL7wfR1LQ9qidOXNnDoEnZeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qWF21527; arc=none smtp.client-ip=209.85.128.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-6dbb24ee2ebso61662347b3.1
        for <devicetree@vger.kernel.org>; Wed, 02 Oct 2024 07:09:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727878184; x=1728482984; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+9deScsFcnbC4fuc+LGVot/4FLd70kFAjJdafTcezkA=;
        b=qWF21527XdL5nKHnKQ/cstJ9ajqX1gCrjoxw3J1o4ZN8tbFx6AgqOsHMs+zrwTsjLz
         uK8ppa2jJtDD6WPN1GExQIsLuUF4bhPqpiqPNNLipbB50bJ1M273S5oZ1T0qORexSTNc
         JZHXra/ewdNFbXVkoElKpRqYzM/Rkaq5EJ3ZuI4MFxjxAqCsgZyHg+gIRwjbrtDf+uQY
         S8Q/bF/wHBIv58+4MLVcMpMln/4diqBJRSQXzhj4udlWblOVy+qULc13DSgu+zGhNOPt
         5hozeXZVfH130C1OsQynv4I6kRCB3a+PBKa4iRNbaW7sYt2bCxuNeEcbRy5E9rkMbiAG
         VU0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727878184; x=1728482984;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+9deScsFcnbC4fuc+LGVot/4FLd70kFAjJdafTcezkA=;
        b=Z3Ztik9pWkPTDuQ8mJx9gQXIm+3EFcjv7RFueB2F4gGrqNFqZq6TusuVGbsF34eeqH
         4vbSAjDpIHg4ZlvobuBsnZlJ/eGVYtO8i8H5JzRG22Pm6TNovG7rsYOG0J13B2qlBs4J
         AqA0HM5K2R6XkRrvffxkmNas982sDbYvTlAwa/OFgxgb2J4vAihKtMm6s8NJBXd3WJgz
         yM5nks6Ot+PDejxr2JcRy4y2as9ZFHXLc6+wd5S6m3IfADob9CA6h290XwcOmmIlT+Ej
         nZ2GsnupoUCgQRoPR45tn40mCfGjX2/zot6xiuRtQKlGzUbV2i57jFBLuV7Rj5g5NlIw
         +4tA==
X-Forwarded-Encrypted: i=1; AJvYcCURIf12eej+2RyeM7UFtwVe1eqf7rlh+g/KSgSvgwKEQZVzABqhJUX1jsUPnCZ2QpBqASVB2XLBR/bf@vger.kernel.org
X-Gm-Message-State: AOJu0YzI8+MoxeiM50w00eraOZaDY8pvoIO2dlfHTz5HhcHpcTRGVoZa
	PMdJmeR/b9zk5TvWwuq81pJ1FTgowovZDVgAQ71WrfOeszv7QHvwJYq8sxGtDVOGWwKnrwObLhQ
	zgUw5k+Z0TpPefE6Q6oLNYrd7Dy2fy7zjp42S2w==
X-Google-Smtp-Source: AGHT+IEQTkYMlTpw2yltaKnc3/nxS9LT1w1jIHxYeiUGQSx1oU3oi/cC/18gKj94qSSqMWVgDBJTMZe3sDgL58/NvhU=
X-Received: by 2002:a05:690c:fc5:b0:6e2:b263:1045 with SMTP id
 00721157ae682-6e2b2636654mr4258817b3.6.1727878183561; Wed, 02 Oct 2024
 07:09:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1727853953.git.geert+renesas@glider.be> <e9cf476ffac794bad7b0860dc89afd62a9ebc812.1727853953.git.geert+renesas@glider.be>
 <Zvz8yA4sIKpKP8eD@ninjato> <CAMuHMdXGZPa8R78YjCd5izycug_t3o5wF0Kk_SpAw=k6uxpeZQ@mail.gmail.com>
In-Reply-To: <CAMuHMdXGZPa8R78YjCd5izycug_t3o5wF0Kk_SpAw=k6uxpeZQ@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 2 Oct 2024 16:09:28 +0200
Message-ID: <CACRpkdYrkR4tLyri_n56_Spuj9t0L9h4wRnBCeXR6quxCQdebQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: usb: renesas,usbhs: Deprecate renesas,enable-gpio
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, 
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, linux-usb@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	Bartosz Golaszewski <brgl@bgdev.pl>, "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 2, 2024 at 2:10=E2=80=AFPM Geert Uytterhoeven <geert@linux-m68k=
.org> wrote:

> Option B: Switch usbhs_probe() from "renesas,enable" to "enable"
> and add quirks to of_find_gpio_rename():
>
>     #if IS_ENABLED(CONFIG_USB_RENESAS_USBHS)
>                    /*
>                     * The Renesas HS-USB DT bindings happened before
> enable-gpios
>                     * was established as a generic property
>                     */
>                    { "enable",     "renesas,enable-gpio",
> "renesas,rza1-usbhs" },
(...)

I would actually prefer this.

> Option C: Add a generic "strip vendor prefix" fallback to
> of_find_gpio():

I understand the appeal, but the idea is for the quirks to be
very specific (hence they are enabled only if specific
drivers are compiled in) and not start to be helpful. Doing
this would make any vendor,foo start to work and I don't like that
at all: any such mechanism will invariably be abused.

Yours,
Linus Walleij

