Return-Path: <devicetree+bounces-236061-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B78C3F9E1
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 12:02:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A5536188EABC
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 11:02:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2CF7305E14;
	Fri,  7 Nov 2025 11:02:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rVv4kHIN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02FE3280A20
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 11:02:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762513322; cv=none; b=Yov1vets3ZRflqcq+k95U+BcLi3gPl4jS6G+GzzRYkIEI27xnOGvbZD97kSqQrRqffiTZhe9fIxRuAx2NHzJWdZmh4mIOYr9jyE3rFqK0g5/IIrC8ncmQ+hiWepOpwCawv1IbY3hcoGMbMEWmjtG4GM+WM1DXiIcMH/I/8Nbqfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762513322; c=relaxed/simple;
	bh=oIe/oaHgQwNjBV5UTPEvhpn/AHX5Js+8Yh8l+CiK11M=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=YTyawNGetAemcd53vUpR8ce3C4ifnaioAjmbjRibvdSxtwLptWsp2sNp3u2iZ9octJR8T7ZX4iillHfrc/utYOKnehtAmjv86cNd4bE3D0/WpwcFyByNO4ZuCI99Is/0/xe2elyo24wN33iKTRohfHX9lMzWk92UKxUa4iw9Bx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rVv4kHIN; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-64034284521so1001237a12.1
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 03:02:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762513319; x=1763118119; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=oIe/oaHgQwNjBV5UTPEvhpn/AHX5Js+8Yh8l+CiK11M=;
        b=rVv4kHINydsSw5IBxFuk3qlNgHkvkBkaRPEzwdK24tH5a2QD1M34a+wWmKgUxem+al
         6SwFEPxUslc+5/VIhjUll2mPf0VetI3ofBq+up8ZnNr0reeN8vr1OPgIhjRKDVS2u7dK
         HDOE6yBjg9WdwELGArqjSgOHHIE5qsMLKDdmnZ+H/rrDsKQh6jcolioUP94DZ050CAzV
         RF91F5TXTZrhulKybVlkP3YUn6L+4m4+f2rJjHwKUV/0tlDjiC0NJMWrK5XlSt5HPxva
         NCho4CJj9t7Yaxnbx4rDgXtn1v+BPJtjd/1GksYbTbx7pjSktOrdh5ASMagsOSgKx0U7
         tJGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762513319; x=1763118119;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oIe/oaHgQwNjBV5UTPEvhpn/AHX5Js+8Yh8l+CiK11M=;
        b=FX2kK2Sw8fqAC93f+yr3pfOnhuonZ+M61MMM+mQ5aSzdcHtDCAFz3WZ3E63ofT1jk5
         HOz5BD2GQwp3KgryanioPO5L2ZvOS1Ja8mgWDR3ETxB8QQCU8GZOv2C2LHrVAsZQBKE4
         +0gf8bGb+fSawML9BA/Szesl6aEZJ7LEaO0oTdNnZrNRD2AX8dDwyrt0vtqwOWD0+O7N
         jyz0iA5KUU2T6zKY24WIhFO/F4CyfWX05MADj+FIknpdl0JL+BIUv5bgkV84IcSI61x6
         +cilqVodU1Knfi9DxzYFUdYYGZYrkPcYtvtadjdOfW57SVqBCci1WsjsU8BkIg1jrF4g
         AHtA==
X-Forwarded-Encrypted: i=1; AJvYcCWwsYP9tttYLH0RdDhOgGtl/e/3OYi7I6Q5+l7u8oOWYtotUou3lPzkHMlKpbzUP0tCnyfxiJ9qgb3Y@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4aZUQscauUW+hDCl7VUG06eqw9KkWot1AqAh5Eb6cVrTvh3MY
	rdA1mgC9GxqG8CMS2r0s7jPv9jfyWaELzYaREeBgfRQKCJ9UgAH4RzdNOguO7jODrt8=
X-Gm-Gg: ASbGnct2w6OM3JDM2qUWj3s7LDFrLNMetHqOchrWRTu6xWGCCEknGHS0tsjeormlPsl
	lB16wugzRroBPHMaZOkR1LpXgLSfjc0PVVULKnH17hb6UCxXRA7NQrw72DnPXsRxb+hWeN9JcFj
	NZj26FdzECqGXskhB+Ym3jfZoOUwPkgD7hJBoGpsoy091v6UgewbC/ZaDn2WESV87InlSzxzcYB
	vTOGTz8IfIbWKPjIrNfGEM1hKDNAju12kLV90Q8eR8qcJfNIeDbVOYefrOxtzP498K8Jr4B4b2t
	psuLWms67bU35qQeaU5FUbxYXxeqfhI0s80HmLkywyeQGQKiDfOKkyGkxGdgnyLJRIqDbIq2iED
	wuo1Jdse99ARTY9OpVzaCOD666TGBobIRUQ46BXZhLZP1Yw32ne3ng/o+QNTgqn+g6484Xk2iKn
	gpe+5L+7sHKTSjLKOyYAQK3vnFT57WsOq/Ow==
X-Google-Smtp-Source: AGHT+IFk0e/C96dMXnjyE1xo1+GSR/mT2N99AaE/c44DQdiQ046jLT2uBYcSUl46ZYSZfSsKq3vwBA==
X-Received: by 2002:a05:6402:1d55:b0:640:980c:a952 with SMTP id 4fb4d7f45d1cf-6413eed163dmr2286341a12.11.1762513319349;
        Fri, 07 Nov 2025 03:01:59 -0800 (PST)
Received: from [172.20.148.133] ([87.213.113.147])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6411f713a7esm3841624a12.7.2025.11.07.03.01.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Nov 2025 03:01:59 -0800 (PST)
Message-ID: <729dcf73a1c3d03ca2b22dd278cb0bc502b6b7d5.camel@linaro.org>
Subject: Re: [PATCH v3 02/20] dt-bindings: mfd: samsung,s2mps11: split
 s2mpg10 into separate file
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
Date: Fri, 07 Nov 2025 11:01:58 +0000
In-Reply-To: <20251104-armored-vehement-boar-55bde4@kuoka>
References: <20251103-s2mpg1x-regulators-v3-0-b8b96b79e058@linaro.org>
	 <20251103-s2mpg1x-regulators-v3-2-b8b96b79e058@linaro.org>
	 <20251104-armored-vehement-boar-55bde4@kuoka>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+build3 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Krzysztof,

Thanks for your review.

On Tue, 2025-11-04 at 09:26 +0100, Krzysztof Kozlowski wrote:
> On Mon, Nov 03, 2025 at 07:14:41PM +0000, Andr=C3=A9 Draszik wrote:
> > +properties:
> > +=C2=A0 compatible:
> > +=C2=A0=C2=A0=C2=A0 const: samsung,s2mpg10-pmic
> > +
> > +=C2=A0 clocks:
> > +=C2=A0=C2=A0=C2=A0 $ref: /schemas/clock/samsung,s2mps11.yaml
> > +=C2=A0=C2=A0=C2=A0 description:
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Child node describing clock provider.
> > +
> > +=C2=A0 interrupts:
> > +=C2=A0=C2=A0=C2=A0 maxItems: 1
> > +
> > +=C2=A0 regulators:
> > +=C2=A0=C2=A0=C2=A0 type: object
> > +=C2=A0=C2=A0=C2=A0 description:
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 List of child nodes that specify the re=
gulators.
> > +
> > +=C2=A0 system-power-controller: true
> > +
> > +=C2=A0 wakeup-source: true
> > +
> > +required:
> > +=C2=A0 - compatible
> > +=C2=A0 - interrupts
> > +=C2=A0 - regulators
> > +
> > +additionalProperties: false
>=20
> You need a complete example here.

Patch 7 adds / updates the example for these to the ACPM binding. I can ext=
end that
example, but I'd prefer to keep it there to give it a bit more context. Add=
ing an
example here would duplicate things.

Do you agree to that approach?

Thanks,
Andre


