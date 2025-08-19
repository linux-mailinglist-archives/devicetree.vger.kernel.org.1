Return-Path: <devicetree+bounces-206100-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 16654B2B89F
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 07:28:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A961918912C0
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 05:28:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A905E30FF29;
	Tue, 19 Aug 2025 05:28:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="brJ/24nR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE42130F81D
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 05:28:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755581284; cv=none; b=FQIB8hDcvR+P3WykASGoS+EfDU+oaXU50smLxtgPQEzmPrqXjuyajd9wNAxSJiNfNQmnOO0ngO+AQOAeXZ0zZaM1MgemYx0ZfxpXSSwYGj4nzR0lBeLKuWW3mnrjTC+B4hSgQiJNVDySXydONueonQJEBGG6gk98M4LZ7OYWyGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755581284; c=relaxed/simple;
	bh=/k8xE7t+OgThCjUxK+m7fbeLU/9i6tkyCwdzsAyplLE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IEXIFK5r8sCszvC+5XbcXyrdZ/HSXHAiHbOC1GasfXxDII2RbIovy/dMe9Ix2CXiPTj29o5FcLZD5s4FnDY3bHh01b7HFuR0PpeQhg4A9vRVyhd/t+gB0VjE/oHVSsCItIYGWqWIt1j13op6SsJX8LG6SqwIXgTNNXaOYyG21Y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=brJ/24nR; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-55ce5253a57so5011845e87.2
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 22:28:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1755581281; x=1756186081; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x1RoE19cvLBaBi0011V8fYVXjhA8rp/exNRIajTxVcc=;
        b=brJ/24nRZlVejUNTRe/PwpoEie6Wxys/rJ0RyZWh77GiAQZ4pxUFeVeJT8mbz065NQ
         RR8vcsvtI9gFKvGC6jkrBrUv8xZrKUn1GznapUaYn3dmRRVASJIscKFhNOZ1+8sccdbF
         +jlMqrLRKJyTMwd3g78ZTTS5b+7i7k+ngR/bA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755581281; x=1756186081;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x1RoE19cvLBaBi0011V8fYVXjhA8rp/exNRIajTxVcc=;
        b=Yn9TBoQ59FJjhj+kGqviHqixTC1AkjE7jhN7TJihmJfaXyXYHK61l/h6rk3u7pjWEt
         LSa8YFVAcQBSYm/KNeRlqgTKsQEbE88SVq1DvqRHpF67G0NG0B6HQ6STh6Xp0g9Zeivv
         nGVGG2JkXhq1KUBaxg503BpHHK3Owlkt14Ckv+bmxAGn7R1Qnv6jAZC/2JcdrcwPzDrA
         iAYuEnCx4/UHYHpikGlWHGOk7fsWNxXyDv9tb3YqyXn5ydMMzE3MkCQvVrGRWFS6wS9c
         iF43EZxsd+xrqK0+qaj0A9O0vGV0kajUkoOPeM3zWbn11cMZtoFE2gp8rxeyiKXWH1Uc
         wqTQ==
X-Forwarded-Encrypted: i=1; AJvYcCXFZqXgiHIF/p/Y9EVxi7hAVotmLWy4kS57BGt0uGR9G/0Eqj3KXxi+ImI9INGRuvcpgvWEztwNAwGs@vger.kernel.org
X-Gm-Message-State: AOJu0Yzq7aVnqa6SwK3hQrun1vHk0Xs+WoB1PHPnv691aunrdv7wkA9r
	A8G/bxSO0pgDLBC3QIpMJ/qYqdJiRozQe9bG+wDeyIg2KwB+Z6G7iq0ifg61KuUrBZBcP6vdt1c
	i7WzHqCGZhABAvRAWr2eCTFdikDTVCUGTIiweQC9+
X-Gm-Gg: ASbGncvo5b7DYcSXR1mR/GAMP3j7NTWttSInSt/4jm46Qkzl6JfRDFPLZuQPRyVADbv
	RWYHIAXyua6unR2yRj1NN9eZdg0o78xxWDMg8cwH5t7rmx+4UB9hIce/QbH7Rdh6aq+tXL51Agz
	YrZEnq2H1CtSyl9tel2DchYpv93SkhPFdQg3xoT//qa5lwg9B+IjnC99Cq7t99sxlqBLN5oTzFx
	X6XkcxIuRMsEjtcTUlfL9XdC5iTbmbM8l0=
X-Google-Smtp-Source: AGHT+IGQHTGEbyr4SR72kvidWQutZvf7AK9o9RoOcU43ggNdNpSPatYscdMG6FtrXgyqF7WItvuWeeeG17g3X0SMn88=
X-Received: by 2002:a05:6512:1585:b0:553:2f40:3705 with SMTP id
 2adb3069b0e04-55e007aeccamr350494e87.15.1755581280895; Mon, 18 Aug 2025
 22:28:00 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250801-mtk-dtb-warnings-v1-0-6ba4e432427b@collabora.com>
 <20250801-mtk-dtb-warnings-v1-8-6ba4e432427b@collabora.com>
 <CAGXv+5EHk=f62+KiLo-aWMcd0-q+_59kno+uOW5rdYaq5q+5tQ@mail.gmail.com> <CACRpkdbWctNH0XJfcHfVJM9Etp0WCXpdyhhyaQemH-Xc0LDr0A@mail.gmail.com>
In-Reply-To: <CACRpkdbWctNH0XJfcHfVJM9Etp0WCXpdyhhyaQemH-Xc0LDr0A@mail.gmail.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Tue, 19 Aug 2025 13:27:50 +0800
X-Gm-Features: Ac12FXyZj9pu4uTVlJ9GtMYFjXUlZm3D496E2G53MlvCfEEQUDKze_RDvsyqUZk
Message-ID: <CAGXv+5ECsP7_wbdcaAkWuD=RyJiJpPe4r60bhD5U8xUvEBzmXw@mail.gmail.com>
Subject: Re: [PATCH 8/9] arm64: dts: mediatek: mt8183-kukui: Fix
 pull-down/up-adv values
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Julien Massot <julien.massot@collabora.com>, kernel@collabora.com, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Ikjoon Jang <ikjn@chromium.org>, 
	Enric Balletbo i Serra <eballetbo@kernel.org>, Weiyi Lu <weiyi.lu@mediatek.com>, 
	Eugen Hristev <eugen.hristev@linaro.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Julien Massot <jmassot@collabora.com>, 
	Sean Wang <sean.wang@kernel.org>, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-sound@vger.kernel.org, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 18, 2025 at 11:22=E2=80=AFPM Linus Walleij <linus.walleij@linar=
o.org> wrote:
>
> On Wed, Aug 6, 2025 at 8:38=E2=80=AFAM Chen-Yu Tsai <wenst@chromium.org> =
wrote:
> > On Fri, Aug 1, 2025 at 7:18=E2=80=AFPM Julien Massot wrote
>
> > >                 pins-clk {
> > >                         pinmux =3D <PINMUX_GPIO124__FUNC_MSDC0_CLK>;
> > >                         drive-strength =3D <MTK_DRIVE_14mA>;
> > > -                       mediatek,pull-down-adv =3D <10>;
> > > +                       mediatek,pull-down-adv =3D <2>;
> >
> >         bias-pull-down =3D <MTK_PUPD_SET_R1R0_10>;
> >
> > and so on.
> >
> > ChenYu
>
> I agree with ChenYu, the more standardized properties are the better it i=
s.
>
> All the custom properties makes sense for an engineer working with just
> that one SoC (like the SoC vendor...) but for field engineers who have
> to use different SoCs every day this is just a big mess for the mind.
>
> The standard properties are clear, concise and tell you exactly what
> they are about.
>
> The argument should be in Ohms though, according to the standard
> bindings, but maybe the value of MTK_PUPD_SET_R1R0_10 is
> something like that?

For reasons I can't recall clearly these are just placeholder values
that the driver then maps to the R1 and R0 settings. But at least they
use the standard properties.

The reason was either one of the following or both:

  a. not every group of pins had the same resistance values for R1 & R0
  b. there are no known precise values; the values depend on the process
     and batch


ChenYu

