Return-Path: <devicetree+bounces-163709-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 89E5CA7DD22
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 14:05:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 162F13AE6A2
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 12:05:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 321862459DD;
	Mon,  7 Apr 2025 12:05:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="ewF7B6dS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A561F23C8AD
	for <devicetree@vger.kernel.org>; Mon,  7 Apr 2025 12:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744027525; cv=none; b=L3jMsCfEYaPFFiWpW+hOnvOM7dWVGxJkSYG/fQbu6+sptFCJ33dQR6R1jnNUNkDgbBTL0k6kkXMckT5whwvFWlbB+NslIFPARyt2qY3NighZKO6MhPWLmK3mgqnvtcEpT/ii4i/W5aWrf2CnEHhfiZo1cB7s+JrPSt8Jttl6o34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744027525; c=relaxed/simple;
	bh=2zAQKYKEskwwU28OH2AkW9XmWSMWx0e+7cB//mUEAUc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aO2vwP3GjNV+PsJJWQfUPbTeK0cC/1T1IFj0RUdsgR/F8qsO+bbUYsRhfVB/wogXnBZBjLlk6iZ4Gkz0zBR1WsIUH7R95By/meUg6J5QRsp2QazUETBFuj7oLTrMU6B8Qsm25STb7aZYQ1GQryWQ9kXtt4WOznSkt61EaU+uKRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=ewF7B6dS; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-549b159c84cso1860530e87.3
        for <devicetree@vger.kernel.org>; Mon, 07 Apr 2025 05:05:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1744027521; x=1744632321; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nyzXLIZQz5jByjQJS2N0CsVIfLCOdR71gsbEiiRIwmo=;
        b=ewF7B6dSA1CQJsoKrxgoM5hdWnj5v0E7VZzoF4F3WPfNp7FcFEJlFC1JKDYEUnLAUn
         P7tF/VofrWu4zQI/pUMbcGcdVm+sjc+MMarRCyhiX4dPiUbFuThLyVQBGktWlxmnXC79
         +Tt2M9cYQiFbXnVJpbm3bZIaT9w3r+pv/aXaA92ZpyS+rCo5yl/UrgyVqM/PlIip/tEj
         PLZoc7xsEKV7BCWcz9yQ1Qd85p6qIi5E6kRWTRHcWgyVKtPt3ksWcNjJE3QsbOQDF4TE
         DXOYIOcL0LEyXJtJ60Cs+bgWK0HTCD6zZzPTlBikcNmHrzGcxUWmZk8zToSOtmYsGGPb
         XdAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744027521; x=1744632321;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nyzXLIZQz5jByjQJS2N0CsVIfLCOdR71gsbEiiRIwmo=;
        b=fvVuW8221CryU7zgJzGva1/bsuVjgacXzyAlPZtSgK9Vniwfk8CB+XM94smukuV5vG
         Renxv/lo9Q7OTj0bRJX9ZLULLX5upWD/+4wH7CLyJ7cFwjBTic+gKxts6S4CmIj23dGE
         wMlH7IE6fBeV3iDLoHWIOJ2seL2nhAyu81lQ3P08CRS+aLwY+lrBV59rCe3mgC7nmBJO
         vKQ/u5jFxmtfVaWkQQzGKgLm4jXBJ+/gxhnhpObsC2zNDqsb7B7RSwe7JZFYQf9tgf6B
         Aeh6MWoiAcaJFfSdXEIy3LoPNXW+o4qCp1XnB43rBfXVcIMwieI5aKH42Av3P0vhz8MQ
         hLTg==
X-Forwarded-Encrypted: i=1; AJvYcCW8yONPyctMLtX9hf3WNqjQwJ9VRfNAQgjvWKmixyMojoz6rzCivBHSGzHLnJ5lsoRIzEqziFqkRfOc@vger.kernel.org
X-Gm-Message-State: AOJu0YyVTeouRVhVYkkcGlyrRYFXXxhdgqskuC/lH5ks2/EG1gUb7gZt
	RJQow9mXHaTgeLkM4iF2qLuMbMKBh96NnrVjA9RZ+OCoxOpIq3w8ON9sgPNkWUTQsNG2OAOB/7A
	gsxf95jzbo+/iTyLTnQPjaTPFUW6j7IMVzoX9Qw==
X-Gm-Gg: ASbGncvuIbH+vChd42EZNdrwughngqkyqd6PztgVmh8BOd9tZtm2FDXEInIdSCD2Rwa
	F0cRv1oLLdo1qGssqxoljFKvHyCAxfXzI5h2VaAK0HWtQl+BhvZOAq2Bav9SFu87RvmwllfFA7R
	nVfNCMkVKzowPhozgdZOK4YEbI+Kwtg9G3c7TiapaHLvyDzqqHLs5OFtUYiQ==
X-Google-Smtp-Source: AGHT+IEHw9355ezApneCF4SUVAzLY4ETP4OFd5PKxXyTOOvjdLrpav+qCe3u7bCH6diRQ2nujvbYSwfCNWcbhNX6Dk8=
X-Received: by 2002:a05:6512:3984:b0:54a:f7fb:ff82 with SMTP id
 2adb3069b0e04-54c2278b893mr3000965e87.26.1744027520594; Mon, 07 Apr 2025
 05:05:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250327-kernel-upstreaming-add_gpio_support-v2-0-bbe51f8d66da@blaize.com>
 <20250327-kernel-upstreaming-add_gpio_support-v2-1-bbe51f8d66da@blaize.com> <6b8583c9-3755-4b33-a454-261854e6cf2f@blaize.com>
In-Reply-To: <6b8583c9-3755-4b33-a454-261854e6cf2f@blaize.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 7 Apr 2025 14:05:08 +0200
X-Gm-Features: ATxdqUEsVQaphQBZzJswprLa4CXDw66XJ1bSTvKJk9OJJy8QVGv0t5yn3iIm7lM
Message-ID: <CAMRc=MetyZqOgtdPgtSVQ2BHDCOAqoE3K70eCehkOscL8kmbMw@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: Document Blaize BLZP1600 GPIO driver
To: Neil Jones <neil.jones@blaize.com>
Cc: Nikolaos Pasaloukos <nikolaos.pasaloukos@blaize.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	James Cowgill <james.cowgill@blaize.com>, Matt Redfearn <matthew.redfearn@blaize.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 28, 2025 at 11:02=E2=80=AFAM Neil Jones <neil.jones@blaize.com>=
 wrote:
>
> On 27/03/2025 11:27, Nikolaos Pasaloukos wrote:
>
> > This is a custom silicon GPIO driver provided by VeriSilicon
> > Microelectronics. It has 32 input/output ports which can be
> > configured as edge or level triggered interrupts. It also provides
> > a de-bounce feature.
> > This controller is used on the Blaize BLZP1600 SoC.
> >
> > Signed-off-by: Nikolaos Pasaloukos <nikolaos.pasaloukos@blaize.com>
> > ---
> >   .../bindings/gpio/blaize,blzp1600-gpio.yaml        | 77 +++++++++++++=
+++++++++
> >   1 file changed, 77 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/gpio/blaize,blzp1600-gpi=
o.yaml b/Documentation/devicetree/bindings/gpio/blaize,blzp1600-gpio.yaml
> > new file mode 100644
> > index 0000000000000000000000000000000000000000..8b7842331a22b7b9fbfa42b=
9c711da99227de2e4
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/gpio/blaize,blzp1600-gpio.yaml
> > @@ -0,0 +1,77 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/gpio/blaize,blzp1600-gpio.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Blaize BLZP1600 GPIO controller
> > +
> > +description:
> > +  Blaize BLZP1600 GPIO controller is a design of VeriSilicon APB GPIO =
v0.2
> > +  IP block. It has 32 ports each of which are intended to be represent=
ed
> > +  as child noeds with the generic GPIO-controller properties as descri=
bed
>
> Typo here I assume, should be nodes ?
>
> Also maybe better worded as:
>
> Blaize BLZP1600 GPIO controller is an _implementation_ of the VeriSilicon=
 APB GPIO v0.2 IP block
>

I fixed these in tree, thanks.

Bart

