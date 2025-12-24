Return-Path: <devicetree+bounces-249452-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AF92CCDBE22
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 11:01:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 006DA30456CF
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 09:58:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DECF73112D3;
	Wed, 24 Dec 2025 09:58:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="AXPHGAo1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB2726A08A
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 09:58:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766570325; cv=none; b=AlPtNzPxsq66aFB5VN9nodh6oIjMphap7ioHeXxEtFEHoW54VhzlxbocqMKOzDnGRzPLoAaePIzgTJ8O8cst9a3tHYd2xtXn3MP5uuUNpPn2uwm8JO87cboPtx3Yu4C+66bQdV9ICX+d2//uuVUEdiY9oU6lbcuyMzSCZjk3joI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766570325; c=relaxed/simple;
	bh=3W9jCb+QmhgFO07BnEKeRfiQa/LuwbGaIH7AYV4ri+U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hAj9PWz3FcktdYBo1yfevE7FKCMYIQKIZ/tGVs6aNBYWSCsFKGlNmU1akVX1XbUd4Mj02PumE6VZB7uOoC9riOufElc7kOycqUg4X7WP45oQrZCrXQgWm725soHt6g79+USJhwP6VNAAPXrYGFqSbxmL90O8cgbG+LqO3421l9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=AXPHGAo1; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4779ce2a624so42877715e9.2
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 01:58:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1766570322; x=1767175122; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3W9jCb+QmhgFO07BnEKeRfiQa/LuwbGaIH7AYV4ri+U=;
        b=AXPHGAo1iBrYP/8MtZO9PgC41fegIejTb6CdaG2ZBhjIN4DaogilGFCtnVVwMoJQgt
         TcW/lwbeyr+7LUmVGmgBfCKjJsLHUQwue869cd/9Mt8M370OkvccnnJg6oYwyGng4KUe
         4FSj/kNizSpmD6ijxz3/MccScYput+2iN8aemVJmByiB37hnjmsthtvawJv/ydnWjvhA
         s80raJXf8QIecbhbRBsAht52f8BiEhFiw2o1rbrScDc/3jHcqb1FgdE9gcpdpTcVt7d8
         yhGa1yafZW95lD7YUlY7TSF9P0Yzd1/4d9UZhOpV80eS54AF1k1eW7uBdB7m++6kutKz
         SDMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766570322; x=1767175122;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3W9jCb+QmhgFO07BnEKeRfiQa/LuwbGaIH7AYV4ri+U=;
        b=h/RQOSNF9FlKuz3AmMLVp/uufduyLdKYVOU4WiDEsWafFEISzgHFTgE6XEeV4Rz1CT
         0lkrHhok2rf++K8y5GknAxHPoUNZVsBG3Y8YEX0cE+nUp9qyFjuRI70p5u1yrNKfcn8q
         FcGQJU1z/TjhdWnaU9yWhXb32auH7UQ1YCSfMpDkTzg1eCQn7qLnWa6Bkgv4S4L3A+PR
         Fco/6SUIiaQJMp9jE3LudaK+SjZSzJ1HsLC01gjZ78lQXyc1TwcHCy7060UEhqmQJvfL
         zmefD501sxgC0DKYaCShK7z+OOGDD4P3tbafbbWnfuKh7GVnw8rDhrtW/vQOYNrRqUxH
         IfOg==
X-Forwarded-Encrypted: i=1; AJvYcCWN3JQiKv/qPeJOnKpZTuyMU9DMa2uaWTDXxJDKaU9A/YNNrPYxqLSMRJo9iAt6LCexUmVovMnW1Om4@vger.kernel.org
X-Gm-Message-State: AOJu0Yy69sGeJlsFirLhNbb1cF6Kb+TBC8DLMCkc4FnV88TJu07pNDKa
	ugkQa2Vlv2MKCgY0Tdd200H5pEidL1GChihfaEsIEOhTrR0/d5CwiWo+AjnmOljsKQ0=
X-Gm-Gg: AY/fxX43/T0JFyFCb+gEg+wzSK5p7HV3Z7jauPnqPngHDa/TjlEF/JZy9jhvrJRyvHA
	hPobY2UrFn7xDuPRW8uOGyBZ60bqVbA2EQ03hAc/v+Kq4RMqcMvcfpBTrUoPcxS5lAoiVCpr7qX
	K28sqNMbCNLu3ao/O7BkjkF+WELFxFAt463S+/46mWj+EYzFo5tuzrKCYCIy7kfIo2BKLMui69R
	eshkyGRhKj947gAJmzkedODvwCXQTIAMDzvHodWAJpVphshr8Mcj7njNegiIhQoxQNOg4b0bBIw
	+R4G42R5nlh2BDpIjgfGAuG+FUreFQpmlfp8GXSuMjVEnElDA5WqHtJISk18Aqc/78k0OWGbVk9
	h3ASsrwIMVKVp2qCjelpvDy0DSsRhC8kmgIORx7khEu33lMcK1NBOD0Cu9QfJy3lEI1LfkFQMbp
	KM85JFIvLOgGOFEi9RarGt2Av/2H4DDtDxCtZBBtpLjwPnD6qz
X-Google-Smtp-Source: AGHT+IFfcuTV7Ug+hHX5tZTCG4tq3O4PaTRJvfFv6G9+yLiBklGAMOZE/zio57FP/aM+ckx9YK7JaQ==
X-Received: by 2002:a05:600c:1988:b0:477:76c2:49c9 with SMTP id 5b1f17b1804b1-47d216f9b5cmr104213055e9.2.1766570322064;
        Wed, 24 Dec 2025 01:58:42 -0800 (PST)
Received: from localhost (ip-185-104-138-126.ptr.icomera.net. [185.104.138.126])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-47be395d9cfsm138801615e9.0.2025.12.24.01.58.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 01:58:41 -0800 (PST)
Date: Wed, 24 Dec 2025 10:58:40 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Richard GENOUD <richard.genoud@bootlin.com>
Cc: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
	Samuel Holland <samuel@sholland.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-pwm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/4] Introduce Allwinner H616 PWM controller
Message-ID: <5ih4qxr7572x6fakxjsx2vrxnt3yey2dtvdyaiwyuvulivh3ef@hebpjfdginev>
References: <20251217082504.80226-1-richard.genoud@bootlin.com>
 <6113404.MhkbZ0Pkbq@jernej-laptop>
 <160e221e-98a8-4097-8340-94ac7d208136@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="isiyzcztmhye4ftq"
Content-Disposition: inline
In-Reply-To: <160e221e-98a8-4097-8340-94ac7d208136@bootlin.com>


--isiyzcztmhye4ftq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 0/4] Introduce Allwinner H616 PWM controller
MIME-Version: 1.0

Hello Richard,

On Mon, Dec 22, 2025 at 10:17:07AM +0100, Richard GENOUD wrote:
> Le 21/12/2025 =C3=A0 20:12, Jernej =C5=A0krabec a =C3=A9crit=C2=A0:
> [...]
>=20
> That's why I put aside the pwm-clock and I went for this instead.

I havn't tried to understand the issue in detail, but would it help to
use assigned-clocks to make pwm-clk suitable? Assuming this allows to
drop all the clk stuff from the driver that would we very appreciated.

Best regards
Uwe

--isiyzcztmhye4ftq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmlLuU0ACgkQj4D7WH0S
/k5ZeggAmSXzq+7SM5fhXqm2YGPnsK8wxgPcAF1ZdU4MGph24TU4R91q/56X2Ayd
OUxDHsO4bEZXGwd0taoVdkCJf3WcDipjGJ+lfKgRCT5569BE5seDZDASgIlnPu6O
ZRog3BGrI85GM5Gq/sG8zpiqdbeK2/49huTSo2VRN28+elurTzP7MXMEVdJ4ZLPR
fmvo/ERCkz4giB8YgjM75WsImYiEehzraLTJ1EXhBq5WxbqMMwEKy6s7NT6t5H1+
U+/8buxQllY52OKOyqLBBWbQpaAqSc28evvjUOikxuLAMk/I2FbPHnDoJRUz7GRO
Ufu2ihMbS+cRebq2spwZSq1RoiCx/g==
=uvSc
-----END PGP SIGNATURE-----

--isiyzcztmhye4ftq--

