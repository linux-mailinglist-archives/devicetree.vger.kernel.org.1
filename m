Return-Path: <devicetree+bounces-249888-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CC198CDFF75
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 17:49:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BE94C300AC4E
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 16:49:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 294AF18EFD1;
	Sat, 27 Dec 2025 16:49:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NWFjX2z7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FD921DA55
	for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 16:48:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766854141; cv=none; b=WR0uP+R7+vCk1RhsplgnQENc0Mgg9TaX1pPAmIH4IpgIWFd8ndEBMIIIQmH27NyeKdQ+fxsDkLhpMB2qLV8XGj4vCAGWSU+UaNQIggMzAlDCF6DLoGhbM7joV0scvr3W30wWBPHLg9j/UkY1MCkJCfrdYRYFj52tX2v9jCtpE9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766854141; c=relaxed/simple;
	bh=TNRVqW3gjSFfe9X1NbMKmJOoDl92rJ20qVC9LfsL7Ns=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gAHkHg7Isth0JHWN1f8cO+xm+WI/f+N8ClfCmtSqBQONHYK2SHQD3wQVyVPVnvT/kf/edxE0W/OUDv7/+K/mu+S4FrIIv+9GqNQzey835Kdux0FtuZzh5bAKbIwO0OIKc55vRqeDkgIurdWEjUdpj/oysOdq4+S5Yj8XnvAMzaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NWFjX2z7; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-b72b495aa81so1339238466b.2
        for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 08:48:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766854138; x=1767458938; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rK4n1sdp7HuObNdMW+Zm6wjkLkjxMECcZnXBrtHk700=;
        b=NWFjX2z7dqtRE0RPZmcYvaMGJxOrCfVANUMkj5ohC1eaA2HpDxLA1anYKBWer2sLEG
         1+nZKKtvrhWA9Zq1SqVICsB8nIoAZzPyxD56+TjySq1hyCDX6Uvze4CJzQcro7q4Jnor
         NCdFHZ6t+u+B8Q5Mct/ssUPAvIZWLpoh+2ViAPaY79mb1SCKkG8iUotiXZS1y/IrfTD0
         iNegIBm28nqx1JOyh67XAZUJbQa98t/551y138Q6qI894c6yHvfuo74Lxqx2hF8fsfht
         zLFlHtA0GtOd414DgWRNliItwCwp/yt0m8Uz3BL9sCN/49yDR9JBk7xsn79FYX6XrSHs
         HMdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766854138; x=1767458938;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=rK4n1sdp7HuObNdMW+Zm6wjkLkjxMECcZnXBrtHk700=;
        b=Iav4PUo9QpKCchqIIUIxqz044uHWKak3mrKezqwE64d/ED4kPmIVA0VfUDJ70Tx2U9
         UlsQCS222jSvT7tSWJ8FcmbiA93DrA3Tn7BnBHrXuIaL9FdTpXto4fI5HhCWDxKHCYKv
         qqLpKqRoCi13PnITSZ0n0n+eVr3JIGRbim/mwnDnmSER24tZYJ1eKmhUhtHsd8bJaZ2/
         LC56VD7JgYkrDUfTDn3afn7HynWZt3w2j7gKym8C7F1JES9ef+9bRodxKSQXJGC7VoHS
         3IS/P2ILbiaqI6xWBXPN2lSV5xKrzJVlEUqQ9GuYeie32+ePb2JPK/XYolhPHYVK6poc
         phFg==
X-Forwarded-Encrypted: i=1; AJvYcCXHOUTWWxbn8skfU+oRoIWSUQefa7MQO/U8jIH1KmfSWr9s4yFgxd9K2E5A9cpU6fxUmDNpyFtd4kcw@vger.kernel.org
X-Gm-Message-State: AOJu0YztaP1wGEPWstaw73mKX4Y8n49o7tZQyihdURRQ8nEoNp0lRwOe
	eepz6PitNhhFNdF1xox35cw8w74fAV5w4RywJjk57v/SIw3l7tAFvus0IThzYhcZVlgtFQKQ8U2
	zZPPOtAdU2o/+AmNB3oBp3i1aSY2hnHk=
X-Gm-Gg: AY/fxX4Tpx7AsfSvXhGe1SqwsetvFnUMddLmasU1u/1ayrg3vzbNpzCDJA985TUshxF
	Uos7MURg9JB9+KyP2EcEw4xFL7HW4+j/sXzbIufiQlr9YtcvsxnaQlIiT5G5MQPiILqCqgCeEtI
	SwSXVIa41ZtqKsiqW45eaxiihn1zFZQxZi3WGQ/IyGmC3yR523SAzc8pa2D72b5z+YlnCCcNj6u
	NZKdkqb50q9WYArri4yHcQGfwGHSL/AIn+kFfsbYmhChwV8rQUCncSD4VV3XzQZMhE3lJhyggfp
	nL1eojU6DjZfckXgwp4wXJ9Wsv7KXwORZnf7KA+gsMy/ZNYtgC6PgqHzq5hVDOMfUAR3FjrqL6K
	JzREXGA==
X-Google-Smtp-Source: AGHT+IG89CuGeWaZ4V/PuYMfIH5hSeD5FELjxMutQERexQjyYl+iWIFU62Il09wfJwFKk+WyTWUAJ7McJaHiThagpjw=
X-Received: by 2002:a17:906:7308:b0:b73:5131:c45b with SMTP id
 a640c23a62f3a-b8036f90f21mr2421177166b.22.1766854137647; Sat, 27 Dec 2025
 08:48:57 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1765900411.git.Jonathan.Santos@analog.com>
 <43504217d5b3c32da946bed0ce4d81e216f7c7c7.1765900411.git.Jonathan.Santos@analog.com>
 <20251227155525.6d712f42@jic23-huawei>
In-Reply-To: <20251227155525.6d712f42@jic23-huawei>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sat, 27 Dec 2025 18:48:21 +0200
X-Gm-Features: AQt7F2qEVB0rJ59ndOVO8uI12ByxAaUR96Ef9U3GzvwbaKtq02ZnujoQfbsFLAc
Message-ID: <CAHp75Vde6K-EAEwN_0zTO+9e-KCq-V3t84BXu0Tm-P04f1endA@mail.gmail.com>
Subject: Re: [PATCH v5 3/5] units: add PERCENT and BASIS_POINTS macros
To: Jonathan Cameron <jic23@kernel.org>
Cc: Jonathan Santos <Jonathan.Santos@analog.com>, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, lars@metafoo.de, 
	Michael.Hennerich@analog.com, dlechner@baylibre.com, nuno.sa@analog.com, 
	andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	jonath4nns@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Dec 27, 2025 at 5:55=E2=80=AFPM Jonathan Cameron <jic23@kernel.org>=
 wrote:
> On Wed, 17 Dec 2025 02:52:45 -0300
> Jonathan Santos <Jonathan.Santos@analog.com> wrote:

...

> > +/*
> > + * Percentage and basis point units
> > + *
> > + * Basis points are 1/100th of a percent (1/100), commonly used in fin=
ance,
> > + * engineering or other applications that require precise percentage
> > + * calculations.
> > + *
> > + * Examples:
> > + *   100% =3D 10000 basis points =3D BASIS_POINTS
> > + *   1%   =3D 100 basis points   =3D PERCENT
>
> I don't understand the final equality in these examples.
> The top line is as it says 10000 basis points but you have it equal
> to BASIS_POINTS?
>
> > + */
> > +#define PERCENT              100UL

Be careful with UL. What would be 10% from -555 (minus five hundreds
fifty five)?

--=20
With Best Regards,
Andy Shevchenko

