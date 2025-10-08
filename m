Return-Path: <devicetree+bounces-224580-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A844DBC578E
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 16:45:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 632BA3E07DE
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 14:45:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0BEC2EC08A;
	Wed,  8 Oct 2025 14:45:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GMDQBWcw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFE4E27E1DC
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 14:45:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759934709; cv=none; b=BgC1JvhbbYszV2FyzjWIFkVvpSpC30H7gKrywrRhPpAJideK4VUVNxPW8PoS/KU3ktr5kpOttNQ+Ez93upbrxQV3DRxN7ZOdHj+eDaBNgm/+TK8YcL/xTvnjbERhG28fzWTmQb8YojHgF+OVGJviC3ELWSEEuw4mU6lvDCfG7tY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759934709; c=relaxed/simple;
	bh=ZpZTp7yLydk6k9ye41mhs7FwaHpLzcQvOs7lUom/qWk=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=SuvI6DmyGymD63/LJ29nk+TUtoAGX0xs8MUSJhQAllZdwyGpaz3CNpi+N0D16q+52bWVTkgXqUq9j3GnQa7DIfjdiXUU9Io4CHzEtcEN/+DHMVbwGoiU4+Uc8zxn+qJ7X5U0tH72G5lUZImS4FUTKLugiuweB9Zy7v8rmsbc6yU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GMDQBWcw; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-46b303f755aso58795915e9.1
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 07:45:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759934705; x=1760539505; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ZpZTp7yLydk6k9ye41mhs7FwaHpLzcQvOs7lUom/qWk=;
        b=GMDQBWcwa0qlc/DOJM1+KmKRduGoK1l8vHWFHXusrplH4HXy9dEhrS5PLR94Zf849h
         /+PDu7egpKRgH2x2hcEzQ/bAeTOzmnkhdLdJdRDC7IaWdU+bcFzLEdpfJHV38mVivb0e
         2YZbCsUesNC/PQLVIHyyGjH5gwxviaquvz1YIqfCa54SaIVmTB0FcKBjvdhiJFW+a9Xf
         FlTJilzT2/7EHX0KdO0FtyfC7IoLw/DvYHTYU1wRerKQv3eFl4DShJ3NTUbZZFdy+MS6
         VGO4pcWVY20ynFfGXobRupXPC+4zg3yFVtBPragWM9H5faYObMX0YJhATjxFLv4AY2Fd
         Lf4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759934705; x=1760539505;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZpZTp7yLydk6k9ye41mhs7FwaHpLzcQvOs7lUom/qWk=;
        b=HkX9oq40S3d0n2Eosj/erKDErmS10laqzHpTDFBHEaqMDGuatwggyayKGsYLqCYMj4
         dhQFreAL2oNBTmxgR12GaWg5UX9bYeImRc+5/hCvoAC6vjwHPh/BzrHHUv7l9dLiQLOI
         RBBBNlcYarzochIdTbSAE7rNMWDj9f5d9J86GK0L9SsKs1Vewg98sS4Y0Aal1P23Mdk2
         lrgNhI8CS9Bs852IMkHi5LWN443vaFdPzEuUUwuen5XY/SvEa+p0TXbb0WdxZjksPyvm
         UGEHggHMoqu5wISbVnOk4bCoKaOjic6SI5DVXNhTwpTbPuvfGYVPJG9JgbirhirW5FaV
         TsSQ==
X-Forwarded-Encrypted: i=1; AJvYcCU+oVZpk5GgcVxhWfRa0Fqr05G8/namgNo7oMXYbSChv/zfM4G+VyFkFet/7qw2XBFGJyV3W6Hoyshr@vger.kernel.org
X-Gm-Message-State: AOJu0YyapXTaifrHlr485zgcBcM4NMyj18LoibsWDNBWSjGMBStaU427
	2/6nYZEKDHBBKPoMEOO1yCei/3wOhJm8tQwZD8BIW2GoSpyTPPNMR7Zc
X-Gm-Gg: ASbGnctW0BwmG8lalF+ewrAcFyMhqliOvnt1d0IcAi19lJQPP/HcUEOfRbgM0QEv2vE
	twGVkNePS/RZVWGYrRc7+GWH7sibEog5XEtEyu3wovg+W2GD4nbr6IS1LyXze5SP82uuupnuaM3
	FpxD+aXG7wK7lxRR8800TsMyOejEGh1Yhy6kjEHVjmuqeka/8LQraquHEREpgpN+anEcyFJELk+
	CDsxT4dQT68XwhpT5xv1iGuKKiyTm73TV38yBkSFM6WjJR+bLAk7KSfMSBRF/57O6OqejYEjkKE
	X2xroqv4KIIpd33QeAzCIoaVibdlzrMv9i+3QqFclBNrSzSelvSnICP4nOrc3A/ktQha4jOxC9t
	HBXvVG8PGKJGJ9EksSYehakgkjb6hwt2+9BNEMGKqaI7dNQFTKNCTVpI=
X-Google-Smtp-Source: AGHT+IGyW6szpwhvT6chXdh5vwNAgphskxs4Ai59Y5ewBvd0PpuY0IRo0TwoSwCgStADlhmhCDZqJA==
X-Received: by 2002:a05:6000:420a:b0:3ee:114f:f89f with SMTP id ffacd0b85a97d-42666ac6b77mr2395334f8f.15.1759934704901;
        Wed, 08 Oct 2025 07:45:04 -0700 (PDT)
Received: from [192.168.1.187] ([161.230.67.253])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4255d8ab909sm29667338f8f.19.2025.10.08.07.45.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 07:45:04 -0700 (PDT)
Message-ID: <fc44bb98125f882af6ded5d812ad271f3fe06630.camel@gmail.com>
Subject: Re: [PATCH v2 2/3] hwmon: ltc4283: Add support for the LTC4283 Swap
 Controller
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Guenter Roeck <linux@roeck-us.net>
Cc: nuno.sa@analog.com, linux-hwmon@vger.kernel.org,
 linux-gpio@vger.kernel.org, 	devicetree@vger.kernel.org,
 linux-doc@vger.kernel.org, Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Jean Delvare	 <jdelvare@suse.com>, Jonathan
 Corbet <corbet@lwn.net>, Linus Walleij	 <linus.walleij@linaro.org>, Bartosz
 Golaszewski <brgl@bgdev.pl>
Date: Wed, 08 Oct 2025 15:45:34 +0100
In-Reply-To: <9312235a-b051-48fb-985d-be2b1d3c7c1b@roeck-us.net>
References: <20250903-ltc4283-support-v2-0-6bce091510bf@analog.com>
	 <20250903-ltc4283-support-v2-2-6bce091510bf@analog.com>
	 <742fe9b5-bc53-45f2-a5f1-d086a0c9dd1c@roeck-us.net>
	 <0765a0b89779331c62a3f136ef030f7f2f40ea47.camel@gmail.com>
	 <0ce54816-2f00-4682-8fde-182950c500b9@roeck-us.net>
	 <35733a7a33301330260c01b1e59af904c8c4da6b.camel@gmail.com>
	 <9312235a-b051-48fb-985d-be2b1d3c7c1b@roeck-us.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.0 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Wed, 2025-10-08 at 07:11 -0700, Guenter Roeck wrote:
> On 10/8/25 06:07, Nuno S=C3=A1 wrote:
> > On Sat, 2025-09-13 at 04:02 -0700, Guenter Roeck wrote:
> > > On Fri, Sep 12, 2025 at 03:00:22PM +0100, Nuno S=C3=A1 wrote:
> > > ...
> > > >=20
> > > > i2cdump -y -r 0x41-0x79 1 0x15 w
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0,8=C2=A0 1,9=C2=A0 2,a=C2=A0 3,b=C2=
=A0 4,c=C2=A0 5,d=C2=A0 6,e=C2=A0 7,f
> > > > 40:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 b004 0000 b00c a03e a03e a03e 250=
1
> > > > 48: 0000 1a03 e07f e07f f07f e07f e07f e07f
> > > > 50: e07f e07f e07f e07f e07f e07f 0000 0000
> > > > 58: 0000 7002 7002 7002 b07e b07e b07e a030
> > > > 60: 9030 a030 0000 0000 802f 1000 1000 f0ff
> > > > 68: a004 a004 0014 a004 a004 c004 0000 0000
> > > > 70: 0000 0000 0000 0000 0000 0000 0000 0000
> > > > 78: 0000 0000
> > > >=20
> > > Thanks - this should do. Note that I am traveling and will be away fr=
om my
> > > systems until September 25, so I'll only be able to look into this fu=
rther
> > > after I am back.
> > >=20
> > > Guenter
> >=20
> > Hi Guenter,
> >=20
> > I was planning in letting merge window to come to an end but I might ju=
st
> > ask
> > now. Have you forgotten about this one or do you want me to send v3 wit=
h the
> > superficial review and then you go deeper on v3?
> >=20
>=20
> I have not forgotten it, I just ran out of time. Sorry, I do have a paid
> job :-(.
>=20

Sure :). I was just not sure if you were expecting v3.

- Nuno S=C3=A1


