Return-Path: <devicetree+bounces-236308-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3738BC42D71
	for <lists+devicetree@lfdr.de>; Sat, 08 Nov 2025 14:48:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id EDD6F4E2BEC
	for <lists+devicetree@lfdr.de>; Sat,  8 Nov 2025 13:48:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B009C1DDC28;
	Sat,  8 Nov 2025 13:48:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="I1cpfLKH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC6AD17A31C
	for <devicetree@vger.kernel.org>; Sat,  8 Nov 2025 13:48:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762609687; cv=none; b=rdh87eTHI+nk5JBuuyGnwn074Ky/yETIpUpvergrgkbN9AC9mvNx3moigc1nXyrnIPfp+HBAft6ugD7yqVcAtP3ogB0uZld4yIruQt28cbgfIrecCjMfLwCfcx8bAGDRkFkl7Cp5MhueacmyzecoJfEDnYKYjo6vsAjS5uxpoPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762609687; c=relaxed/simple;
	bh=gpkOgQREkGfFyXdfZjUNhEXJXx0pJOMzthb8JAxDkkI=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=QkWg8fz4rfn3V5t2ZQtx7Cfko5EfQcBxEEkJpkSiQ2LDeMr65Ghy0eTM6BETtbmGWHtu2M/dvzmVS6bWYWoehcpMq6OQw3fomD94UG3aunr9gIUvgcR9brD/3tpr9hm2ce2sCb0afyMOYd95yQdwVcouOaX5rlvUwdaGBV6fdDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=I1cpfLKH; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b626a4cd9d6so261101066b.3
        for <devicetree@vger.kernel.org>; Sat, 08 Nov 2025 05:48:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762609684; x=1763214484; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=gpkOgQREkGfFyXdfZjUNhEXJXx0pJOMzthb8JAxDkkI=;
        b=I1cpfLKHP3n2H9I+dmfH2mk3W5X6Cvp93Ea8cY7gpCsacEWv4095ZU+ZT57CRAQCnI
         wBgNdRxVu2Q5nbZ1lWQzlAbRYvsFmzl8xEmwsSnU1aBiE8osfP5xTRqS7JZw84bGNAAN
         CNojY6UxqYIintgQY3xC5FmfvKBcvGu2nIpmYOCwqA5GPvK/BnHVSVpu2AQApJELQLm+
         eJ0h/9dJQ/SnbZKk4rLJLywRkxyQJ7/EV4GIgs9kt2vcWNxV8eBKEbZXK19XGRkGYFd0
         sngcOjFTHGc4BaC44nLcg+oHdBtovmngThsnn3khqSpzn3vBRrrRVUBy/1n+/b4p2D98
         qmPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762609684; x=1763214484;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gpkOgQREkGfFyXdfZjUNhEXJXx0pJOMzthb8JAxDkkI=;
        b=FY0aOH1DIxi0hyjF7RxJDPHCkHjvKemO+AxICwlBvMu07IhWWSrb8T4GsbUCjl7mqJ
         PUz2MDQz+p1EE+JFEMXGWXEvL1S+Mc4Sw6q79SISQ0OIIFAHW7RQINo78mxhGyXkekm2
         /E+rOV0mzLnH78saULCceoy051j8do8KrP1I0vziC9qeBF3zAgiVlpRZE9TFCSBgAEB/
         8QkiDPcujw0SLGd7jOppcddAOZk71M+guQeWKKa7HFn5tfVk8x5XZk8SVEv0CORc5h5x
         WhJF3BVI5jkahbL3OVSKFO+9B/bpkzmzRypI75Hzj+CTxTD9+3Kz4PsCSbxrSBSBDqve
         +tRw==
X-Forwarded-Encrypted: i=1; AJvYcCWg4eR9JNNHmd7i0j0x5pGgkPVw+7wZoJXW03SKmQV4klLKjXItFK35GRHHlaDDOQ7PPrVZTeX1KQMs@vger.kernel.org
X-Gm-Message-State: AOJu0YwikTkuznANDan1XeYbod9oSZ8XgEBrLdAYNKRIfAQf6FUF9g3j
	JLZ5C5IUYGnkoo9TFNbJmJkzZnIhTT4IRaqRY6we1Evku455Nd2a/3pWw7J+FRSPr00=
X-Gm-Gg: ASbGnct1Nkd6uZOl4wP/h6UyzOWOHX9Te+UilWHq+tLGqUXhjYly/JE7mSrGLoERkBv
	5r2EkjkTGn59zLYg/MSMlThAHZH5OvDeuCbdctbC45jORoY2h+ODAp9xi5NSYk5B4p9BNKjGhMe
	+0YaAlsqzPJfG99fhqnviDx+Yr6+b0BzatxruzBbQKMOD8HQWc4rbuuA1XTNoKnBWh3f1qBMLrw
	lYym8muNE37d4NxPfZejHHcK+LH0zKFaW7uhvGpEgzdM9oZdBOqkcvEFZ9y/AH57N2UU5bMMCZO
	P6Pd2J45RQjk9Cucsc5oSy361TSyJU1cWg/PbSQ7KpudYltLiVZSguhjeH/NdUdYTCIjTOoDxve
	kTwQH+0gCUHHJ/dvl2SHZnxnoJjpLB/PBCjK9NYi4vGKbBVirzWaoko8HLPPqsWMFoXlclD1lLR
	hd7LYS7HHp7N8=
X-Google-Smtp-Source: AGHT+IFBX/o+kgDdCkIA2bNZvHnORYARWl0wDAKEM8n2ULi1LZxfY2oyiaBV3uC93IjX5zqlQAABOg==
X-Received: by 2002:a17:907:2d2c:b0:b04:274a:fc87 with SMTP id a640c23a62f3a-b72e02ca22amr246594766b.4.1762609683650;
        Sat, 08 Nov 2025 05:48:03 -0800 (PST)
Received: from [10.41.228.128] ([77.241.232.13])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b72bf9be2eesm537562466b.63.2025.11.08.05.48.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Nov 2025 05:48:03 -0800 (PST)
Message-ID: <74eda972e038b901b237f2d54f82866b31c5a3c7.camel@linaro.org>
Subject: Re: [PATCH v3 05/20] dt-bindings: mfd: samsung,s2mpg10: Link
 s2mpg10-pmic to its regulators
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>,
  Conor Dooley <conor+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>,  Lee Jones <lee@kernel.org>, Linus Walleij
 <linus.walleij@linaro.org>, Bartosz Golaszewski	 <brgl@bgdev.pl>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Peter Griffin	 <peter.griffin@linaro.org>,
 Will McVicker <willmcvicker@google.com>, 	kernel-team@android.com,
 linux-kernel@vger.kernel.org, 	linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, 	linux-gpio@vger.kernel.org
Date: Sat, 08 Nov 2025 13:48:02 +0000
In-Reply-To: <20251104-elegant-imposing-boa-6279ca@kuoka>
References: <20251103-s2mpg1x-regulators-v3-0-b8b96b79e058@linaro.org>
	 <20251103-s2mpg1x-regulators-v3-5-b8b96b79e058@linaro.org>
	 <20251104-elegant-imposing-boa-6279ca@kuoka>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+build3 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Thanks Krzysztof for your review!

On Tue, 2025-11-04 at 09:28 +0100, Krzysztof Kozlowski wrote:
> On Mon, Nov 03, 2025 at 07:14:44PM +0000, Andr=C3=A9 Draszik wrote:
> > =C2=A0required:
> > =C2=A0=C2=A0 - compatible
> > =C2=A0=C2=A0 - interrupts
> > =C2=A0=C2=A0 - regulators
> > =C2=A0
> > =C2=A0additionalProperties: false
> > +
> > +allOf:
> > +=C2=A0 - if:
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 properties:
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 compatible:
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 contains:
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 con=
st: samsung,s2mpg10-pmic
> > +=C2=A0=C2=A0=C2=A0 then:
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 properties:
>=20
> This is not correct now. You do not have other variants here and ref
> should be directly in top level "regulators" part of schema.

The commit message explains why, and with your comment on patch 6 I have ch=
anged
this now as you suggest.

Thank you,
Andre

