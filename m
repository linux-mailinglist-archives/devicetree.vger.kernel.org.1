Return-Path: <devicetree+bounces-237257-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CCD01C4EE8D
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 17:01:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2E11E4E4ECD
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 16:01:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 690BD36B07B;
	Tue, 11 Nov 2025 16:01:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="P+d9MG4n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D6D1171CD
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 16:01:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762876865; cv=none; b=huuDDgjcdCQzOke7RfjZbb51N/uiedu7nd1kBqDzYDuQMig5158bMmm+Fqr6gtS+IpaMA9No1CbWExg086KURxfk0FN4XSDVBi9tpSg8ssMW7TpsxKh0eUuJbCpZb1bXdhgZXE/zynW2LO6etmOfV90xzO6+e9y3i48gs1ACJ3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762876865; c=relaxed/simple;
	bh=77IDsQYmahI9ijT7fLxWT1kp1PvqrF+ymBNFDP6vCX4=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=juj2//l3A2j4kXNH7WELGd6/0FahNB4gWXT7AY9ygzBAlizC9n6LSIgP5bzAOU6jG0SUyV1pL2u6UDUKOG2IBfkRoZoGFq57bi3ml5o5x8J3enHsdvm8yhv1e4ZSIMIABqhStR1bNkp7F/d+lqKM6QsAhA/jPUdmH6G5+p/WE0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=P+d9MG4n; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-42b2a0c18caso3277115f8f.1
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 08:01:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762876861; x=1763481661; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=77IDsQYmahI9ijT7fLxWT1kp1PvqrF+ymBNFDP6vCX4=;
        b=P+d9MG4nBoyxWhDPDQJA0O1mVI8+YM4UsEM8CRYYIJHS4Bq4CvDLIDWcq8Pe77AxW3
         w0jrcrYi9lhXjhTQQQs7+WOrSLWoJICeMeQPv/uAgQB+wPcFyF+0d/qYgo7QHF5DMwui
         ajMjeH6QppL5KhnIHO71JqVB/6iod6WONzONszJZtWeJqMzHk7GSjnwYuyN6N0o+UcSr
         PmGc6iNfPEiFq5N2sWCXWtDHG/6E9xRGDDELea2S6ROK3B7p91oT4WR6gK5I9ETzl9rx
         NdRQpD8T9WIWJjOL1LSSJ94cwpAtH2PMD2Ed2F6CYjxRWcfLxHdfAdmuRhm3TfWq1D3g
         tS9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762876861; x=1763481661;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=77IDsQYmahI9ijT7fLxWT1kp1PvqrF+ymBNFDP6vCX4=;
        b=vW6W9kM/U31R/NhAw761D8MpzGII2Z7WAjKNo+XWL4xrgF7Cf9c4qR58NPDFomHcKx
         Oqqz8GBEpKtqS39Mxt64nmcbaMLqi06qmIfEb58zabAJQf2QvS18j28Dhhfl/e4boPTZ
         axgJzzmmc2mi4jRrmSSWTX74+9xN5CTuqvW6SIUVl/p3Ow7cxOiJOD0sgqxU+gu3bqBf
         zwe/4NqWzB+vd1b9g3x7S52HgjRBWaEmeWhvF+VEYJ9eO2Q7/ob5SIa6dVSAdx6M1GIh
         Ab/sEIKe+rTSSMEmT8LgMXqdfAx9OhOwUaBKxfNMbr2TqdAFgYNPYBYNJ+BmByw+uXak
         hfyA==
X-Forwarded-Encrypted: i=1; AJvYcCVK7NbwA/XDhKyWCx79GH3rCa+7vIgZuMeYMnjH6gw70eCsB9YJeF+Gk9PXXRmMyX0cbqY6u+VeO7E0@vger.kernel.org
X-Gm-Message-State: AOJu0YwwJd8EOwvwByJ2XKkC9+x9f0aPz0DnbUa5vLojCdn1ZGxeOY5b
	GU7qPooIvy+FeHHAbUN5fdnUvWnH91TXvT7TcHdvu3ummRbM1bfaPy07738nzsuY
X-Gm-Gg: ASbGncumUcNN5uV2d8hnlZOBaEb50oRJyHNBvN4xcrX2jWWnpjGbnCy2+18N2Fxz5TI
	ojRtjZMepcfWFonD8XKLMmK+dGhc7a1Fxc3JcEB3RuXVlsnBgYitBRp3MtuwOGvx3XDInQkaJrM
	g5OPUGOjZoUI+7Hv/llOYndNlPoIPiOXc9+nT0IfOAQ6T1bULR4J+T/BjbOGTi0uzf1AD9QNqUa
	+0w1BWpztHDdZJYuQ3l4C/2DVCC5FAmxbcETcFiNvwSqeqckRrTk0vCm6x34EiQCN9vChJx/I+W
	osg2pfPHD4fyS8LJKwFs72H3Ac/k7QLN2zrNi/qoIU01rgcgngJHOkH6mVPpsIBaKoj4vZ2MH95
	NrFgsnMDjdGu/SceFADVuV9ImeVi/rewBW3GEYn3QzMaO5H/+PyCRB8feOxrO9IX6gwV6t0oHZc
	aZ2ATfCTsNg+rXueaosEbhR9kmdlFGmQ==
X-Google-Smtp-Source: AGHT+IFleuPQ+Yh44UnYxk7hUJZAz8lA8CHIsfFNcSgSsYUo+es9pg2BgzYwZlwbevsmgE0KNhYWtQ==
X-Received: by 2002:a5d:5f83:0:b0:428:5673:11e0 with SMTP id ffacd0b85a97d-42b2dc8725bmr10989423f8f.40.1762876860585;
        Tue, 11 Nov 2025 08:01:00 -0800 (PST)
Received: from [192.168.1.187] ([161.230.67.253])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b2e052f32sm22089171f8f.17.2025.11.11.08.00.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Nov 2025 08:01:00 -0800 (PST)
Message-ID: <0cd7cf10d47683f22a4358635f243a2dfb6be564.camel@gmail.com>
Subject: Re: [PATCH 2/2] gpio: adg1712: add driver support
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Antoniu Miclaus <antoniu.miclaus@analog.com>, Bartosz Golaszewski
	 <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Date: Tue, 11 Nov 2025 16:01:36 +0000
In-Reply-To: <CACRpkdZf9D2PH5AR46Pwi8UoyfwumKS4P3ncJ=RN4iu_cJzZ5w@mail.gmail.com>
References: <20251031160710.13343-1-antoniu.miclaus@analog.com>
	 <20251031160710.13343-3-antoniu.miclaus@analog.com>
	 <CACRpkdYdtcnxyP4xVsqVK+geurEOEURqZO5eLC96YMqh1sE5Sw@mail.gmail.com>
	 <3ead5d7aa5e6be2b6df3bb91b35fec37e23353f3.camel@gmail.com>
	 <CACRpkdZf9D2PH5AR46Pwi8UoyfwumKS4P3ncJ=RN4iu_cJzZ5w@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Tue, 2025-11-11 at 12:05 +0100, Linus Walleij wrote:
> On Mon, Nov 10, 2025 at 1:32=E2=80=AFPM Nuno S=C3=A1 <noname.nuno@gmail.c=
om> wrote:
> > On Mon, 2025-11-10 at 11:30 +0100, Linus Walleij wrote:
> > > Hi Antoniu,
> > >=20
> > > thanks for your patch!
> > >=20
> > > On Fri, Oct 31, 2025 at 5:08=E2=80=AFPM Antoniu Miclaus
> > > <antoniu.miclaus@analog.com> wrote:
> > >=20
> > > > Add driver support for the ADG1712, which contains four independent
> > > > single-pole/single-throw (SPST) switches and operates with a
> > > > low-voltage single supply range from +1.08V to +5.5V or a low-volta=
ge
> > > > dual supply range from =C2=B11.08V to =C2=B12.75V.
> > > >=20
> > > > Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> > >=20
> > > So tying into the binding discussion:
> > >=20
> > > GPIO means "general purpose input/output".
> > >=20
> > > I am really confused as whether this is:
> > >=20
> > > - General purpose - seems to be for the purpose of switching
> > > =C2=A0 currents and nothing else.
> > >=20
> > > - Input/Output - It's switching something else and not inputting
> > > =C2=A0 or outputting anything and this makes the driver look strange.
> > >=20
> > >=20
> >=20
> > Not the first time a part like this pops up [1]. At the time, the final
> > conclusion was to go with gpiolib. Naturally you can think otherwise no=
w :)
>=20
> I think we might wanna go with gpiolib for the Linux internals, maybe
> we want to add some kind of awareness or flag in gpiolib that this is
> a switch and not an output we can control the level of?
>=20
> I could think of this:
>=20
> - Make .get() and .set() in struct gpio_chip return -ENOTIMP
> =C2=A0 no getting and setting these "lines" because we really cannot
> =C2=A0 control that, these lines will have the level of whatever is on
> =C2=A0 the line we are switching.
>=20
> - Implement .set_config() and implement the generic pin
> =C2=A0 control property PIN_CONFIG_OUTPUT_ENABLE as 1
> =C2=A0 to switch "on" and 0 for switch "off".
> =C2=A0 See include/linux/pinctrl/pinconf-generic.h
>=20
> This makes it possible to use the gpiolib in a way that is
> non-ambiguous.
>=20

The above makes sense to me. I'll let Antoniu take it from here and check i=
f=20
the above fits the usecases he is aware of. Not sure if it makes sense for =
a piece
of HW like this but if the usecase is for userspace to control the on/off s=
tates,
then I guess we would need .get() and .set(). Or some kind of "frontend" dr=
iver
making use of the consumer helpers.

Thanks!
- Nuno S=C3=A1

> We might want to add consumer helpers in
> include/linux/gpio/consumer.h such as:
>=20
> #include <linux/pinctrl/pinconf-generic.h>
>=20
> int gpiod_switch_enable(struct gpio_desc *desc)
> {
> =C2=A0=C2=A0 unsigned long cfg =3D pinconf_to_config_packed(PIN_CONFIG_OU=
TPUT_ENABLE, 1);
>=20
> =C2=A0=C2=A0 return gpiod_set_config(desc, cfg);
> }
>=20
> int gpiod_switch_disable(struct gpio_desc *desc)
> {
> =C2=A0=C2=A0 unsigned long cfg =3D pinconf_to_config_packed(PIN_CONFIG_OU=
TPUT_ENABLE, 0);
>=20
> =C2=A0=C2=A0 return gpiod_set_config(desc, cfg);
> }
>=20
> See e.g. rtd_gpio_set_config() in drivers/gpio/gpio-rtd.c for
> an example of how the GPIO driver can unpack and handle
> generic .set_config() options like this.
>=20
> The binding however needs to be something separate like a proper switch b=
inding
> I think or we will confuse other operating systems.
>=20
> Yours,
> Linus Walleij

