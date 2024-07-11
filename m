Return-Path: <devicetree+bounces-85070-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 756B892EC55
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 18:10:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BC53D2850CF
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 16:10:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76E8416CD09;
	Thu, 11 Jul 2024 16:09:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dkyHmIxo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E3DE16C87B
	for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 16:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720714196; cv=none; b=Jeqhwzh5KLwbQDucr3aTgAH1b50E17hl/wLdVgLYRCiIXT/LgKBVFakQQ4RcqnY7vDAZstTf0H5sx+ywyNHoMoiuz8ZWayw3Yv+gHvs+IQco97AcjwdiAkNsHwZNMjjO1xfgNSRTWhia1N/OGkDhR1zguzvngxnqzQiLU29xUMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720714196; c=relaxed/simple;
	bh=zM+Ke5l9OEdCHJOW1/P1QdkqIu1vBISkcX6wpQaLk+g=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=WVMH3VRRsGfua2MEEFdIIuxK1NTqkchCHKgaKU/Tnwa5KWqSGp5R5RcE72/1fwdhh7+d20g2FOJm6w1r9jOgVombihopazeFyGCer5aPADnNouOdlCejs3EqUy7zMy8W3Y0eL2FQqUIHm22bCdc5KDgyQ6Ob+U9t+UN8c59cHww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dkyHmIxo; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-52e99060b41so1101704e87.2
        for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 09:09:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720714193; x=1721318993; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=V+gnxXD5w0/TDuHUdJYoIQAjZ8cTVQOFx7Ip+6Nfwlc=;
        b=dkyHmIxojND3erjajZ1XArsImOs3WJPd4Q+4PYzojvlszaTdzbV63SAZjAsbt8Odxb
         GjwPoFiPRWEFCvLGHAnVWtM/GOBrWKBMpVxN3Q9Dy8Kv3xVn1f0gFV2sKo54Drx4Vl3z
         fKI6tOqI7GAvox8Afx+Wnh00AOPE0znwBK+hfOn2+/OKOIah2Hw7XWsatAHq2K5bziZa
         dfTLJzQj0C8opjx0Vv1sV7aOfrm5HIWfPLL+OuTawA2/L0Cl4CIpYfnaLHuWY6Y3AORi
         0VF5JlEAQJReHynthHySHPXdFAhwTZfyRikIjSzZcZDRmC53x9jtMGnBtCNkChOyhXJF
         xatg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720714193; x=1721318993;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=V+gnxXD5w0/TDuHUdJYoIQAjZ8cTVQOFx7Ip+6Nfwlc=;
        b=gM1tkcHMNqZU+VOfGci4V0jM7rC0AChkLymCCmeThe2w8KnEoQNWTs12rYBgVa1ERd
         5uoNRevttuwDk+Fmt0BjxZQyV2qt6finS+K/nybMfBFTWGIKXQmsRFuk6qW8vripVbn3
         ja7Li/NyCbym3jdpoz3Td6r2oAfcOTeEHxF75bdUqJJDwpbM44z+YXUZkvtDXTNbcUey
         LxHPhPYGNvM4YeEqwbGYunWLOLoo3Mr8ib5SKQoII5ShI9l3irg+WeHoJdBsH23zZx16
         eTzMbHoufpAi6h1vy1Xctt3NG1XC0mrYIMmqio8lx+NCAVrUXE4lcKTyNagu9eqa0zj7
         6+lQ==
X-Forwarded-Encrypted: i=1; AJvYcCVq1iMLGiwrxYrZpEIm9UqyF1yCqkGQf9AO4OLI0B5I3TPZwfP0AiEN/ghTYns3aSw0TFK05jwP8uyozMzT5JtiA0pFrRmsOsC5xA==
X-Gm-Message-State: AOJu0YwQt59zLwFvVhr75ggcdBlMYAOPvBNEExAVWuIbnHdQIuX8joGq
	6R+KkCk4rlp+1iE+OuZkaaKohxopxwvCnzOtTcO7Ir7w4D1SLvdnAmPWoimbUL4=
X-Google-Smtp-Source: AGHT+IEwHiyuX6inUi7hCZdVqelFPlqHibZJk0LuS0PKqcwVMYQzzwnNEb7uK5wA3NOBuGsylOhz6Q==
X-Received: by 2002:a05:6512:2109:b0:52c:e28f:4da6 with SMTP id 2adb3069b0e04-52eb99d1688mr4722454e87.51.1720714192520;
        Thu, 11 Jul 2024 09:09:52 -0700 (PDT)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4266f741624sm119316495e9.41.2024.07.11.09.09.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jul 2024 09:09:52 -0700 (PDT)
Message-ID: <e2f4a37e7c31d26449125a6265239c88162a1085.camel@linaro.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: serial: samsung: fix maxItems for
 gs101 & document earlycon requirements
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Rob Herring <robh@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby
 <jirislaby@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Peter Griffin <peter.griffin@linaro.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>, Chanwoo Choi
 <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, Michael
 Turquette <mturquette@baylibre.com>,  Stephen Boyd <sboyd@kernel.org>, Sam
 Protsenko <semen.protsenko@linaro.org>, Tudor Ambarus
 <tudor.ambarus@linaro.org>, Will McVicker <willmcvicker@google.com>, 
 kernel-team@android.com, linux-kernel@vger.kernel.org, 
 linux-serial@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-clk@vger.kernel.org
Date: Thu, 11 Jul 2024 17:09:50 +0100
In-Reply-To: <CAL_JsqLsZAEx-c_12RPcR+HCjPcA_d12oKgZ7frX2Wo47sGTnA@mail.gmail.com>
References: 
	<20240710-gs101-non-essential-clocks-2-v3-0-5dcb8d040d1c@linaro.org>
	 <20240710-gs101-non-essential-clocks-2-v3-1-5dcb8d040d1c@linaro.org>
	 <CAL_JsqLsZAEx-c_12RPcR+HCjPcA_d12oKgZ7frX2Wo47sGTnA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.50.3-1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Rob,

On Thu, 2024-07-11 at 09:51 -0600, Rob Herring wrote:
> On Wed, Jul 10, 2024 at 7:29=E2=80=AFAM Andr=C3=A9 Draszik <andre.draszik=
@linaro.org> wrote:
> > --- a/Documentation/devicetree/bindings/serial/samsung_uart.yaml
> > +++ b/Documentation/devicetree/bindings/serial/samsung_uart.yaml
> > @@ -145,6 +145,20 @@ allOf:
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - samsung,uart-fifosiz=
e
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 properties:
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 reg-io-width: false
>=20
> blank line between properties

Do mean before clocks: below and before clock-names: below? We don't do tha=
t normally,
at least none of the bindings I looked at do that. Or did I misunderstand?

> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 clocks:
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 description: |
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Not=
e that for earlycon to work, the respective ipclk and pclk need
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 to =
be running! The bootloader normally leaves them enabled, but the
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ser=
ial driver will start handling those clocks before the console
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dri=
ver takes over from earlycon, breaking earlycon. If earlycon is
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 req=
uired, please revert the patch "clk: samsung: gs101: don't mark
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 non=
-essential (UART) clocks critical" locally first to mark them
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 CLK=
_IS_CRITICAL and avoid this problem.
>=20
> That's a whole bunch of details that are Linux specific which have
> little to do with the binding.

You're right - I had been asked to add this to the binding and didn't consi=
der
that. I think I found a much better alternative in the meantime and this
description can go away.

> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 maxItems: 2
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 clock-names:
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 items:
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - c=
onst: uart
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - c=
onst: clk_uart_baud0
>=20
> Which clock is pclk and ipclk?

uart is pclk, clk_uart_baud0 is ipclk.

> 'baud' would be sufficient for the
> name. 'clk_' and 'uart' are redundant because it's all clocks and they
> are all for the uart.

TBH, this patch is just following the existing style & names as already exi=
st for
various other SoCs in this same file. Furthermore, up until this patch the =
default
from this file applies, which is:

  clock-names:
    description: N =3D 0 is allowed for SoCs without internal baud clock mu=
x.
    minItems: 2
    items:
      - const: uart
      - pattern: '^clk_uart_baud[0-3]$'
      - pattern: '^clk_uart_baud[0-3]$'
      - pattern: '^clk_uart_baud[0-3]$'
      - pattern: '^clk_uart_baud[0-3]$'

so of course the existing gs101 DTs had followed this scheme. Other SoCs th=
at are
described in this same binding also keep the name as per the default in cas=
e
they limit the maximum number like this patch does.

Changing the name now would be a bit disruptive and make gs101 differ from =
other
Exynos SoCs in this respect, I'd rather not :-)


Cheers,
Andre'


