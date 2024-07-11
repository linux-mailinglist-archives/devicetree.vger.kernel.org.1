Return-Path: <devicetree+bounces-84872-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1926992E10C
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 09:43:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8F791B20C43
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 07:43:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E1E514B941;
	Thu, 11 Jul 2024 07:43:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="N2dnexUb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C97BE1474D3
	for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 07:42:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720683782; cv=none; b=ps1nUFTawuqPT0m7uSE/Ack3ssaDyl1pCeUsswEakjrnwcZF0VvYaaxsT7/3kP6wyaHopwviTNH4TBZ6WbgVgOo01V7Iqb8j1UBUE9TqNpcrcxab5AP/hsdyAaY3dtaZZSP7L2PkWGzgc5w/0451gNLZl+pWJR5PPFkuHwibbN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720683782; c=relaxed/simple;
	bh=G81cigNbMK6zWyW2W1HCYkHinVRR6rcbhQNJ6dX3Y30=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Khbn2S0mbIiXIafkrBH+Qe2PPkeMnWwE1ToF0r+P3q5PDF6JOl2d27v0b3kLmc9Nm+pa5cwZAmauNGJHLWBsC/i6M5CLFsSuF7Blys0+lhxDPbJ6OZ4TO7W2AXIL6b40MhdyrtmtU+1BTHZmNfoZvtSJZYQs5nr2t4OG9AKvS88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=N2dnexUb; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-57ccd1111b0so448005a12.3
        for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 00:42:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1720683777; x=1721288577; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=h+0UinpQWYDjXlEY0DNC8WhJW4LGHBJDtPZ/QPhsn/c=;
        b=N2dnexUbiqGCFvm0Lq3uHVQ1PdaOmdTuNnJIskMtHNNo+3DdD81L9nx5HZMpPSdBbW
         1V3E6+IDkNheCEKqq1swGimhT53ln4wd+99mgN1TkSZHC7ODyiWQsFTsMfx7gQte+J1h
         QXEul4/DSYK9i4EX3Xt0ecrnzXS7cuoP1FK2A6WUiR+yXfy65BWFQ98v+QIIDs8rbTB3
         HpaQ/aCgKsB/Erx0Sxc1PnI91gEYQQZP/c673NPimvECzzOeDmg2EHDra73wN/4MyAs/
         AgezgWRnz/qJbELhMzkA1jK6Ga46X9DMtM9h+Nx6BcW7pjh99oo+Img2kNS2L+OZalMw
         5YOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720683777; x=1721288577;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h+0UinpQWYDjXlEY0DNC8WhJW4LGHBJDtPZ/QPhsn/c=;
        b=CBEJhwUfwi+9F0fWtsyxe+F5DJJA5914BWq1mm5C7UcztjN4ELFp1ULwRigFzqmaxT
         7YBd4F2iK3Wq16sr4STn3aLeZRsVVRckdtKM5la+Ccv8bNUTNneob1Rv8h9zR4ytkF7q
         W4qmDjIip7q9eRbaoyqHzugPx9c8g6ref9/Tiq2gCQATJArzgGIeHhX71ItjNkcG3gDG
         WRO4C0NuBTuTDQ+2bS/DuHgJbLfm+PocWC6JK87mBIsYmC6NSE1k0Z61R8mv9G3jH6qm
         L4mYpHtxYXMGMaJBe+JYsm3dqSNonpdjf2Il3xDQWUH/QARLzxP6OxpUxOt/z7/7d8+t
         sBNA==
X-Forwarded-Encrypted: i=1; AJvYcCVu/hcPtcAoOFpbD1LqlBInRU399usV1WZZeVjgwi8pxTHZM5noar5njreXD0KKyxR1/v6BayUKnyBvhz+xJoGTaTuzf3EyjisWYQ==
X-Gm-Message-State: AOJu0Yy/HGEOzdKdEq/iDwYHFwHVbapWnNztlU/KO2bGXKnQ5zQNq3kx
	5HhrwaH1/uOfLMZHD63Tj6ctY4s/5gsQ6SYKnxbghO3uHSLy5S8TO1TxZKgm6wQ=
X-Google-Smtp-Source: AGHT+IFvTTSzRQIgpI5QuDDZSPJrH8SBm7+DLvvTVS9+yUrzFasx2IRMegwpJIpw057IqeT0V73jnA==
X-Received: by 2002:a05:6402:31aa:b0:58f:44fa:a2b9 with SMTP id 4fb4d7f45d1cf-594bb1816femr6223127a12.16.1720683777236;
        Thu, 11 Jul 2024 00:42:57 -0700 (PDT)
Received: from localhost (p50915eb1.dip0.t-ipconnect.de. [80.145.94.177])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a780a7ff7aesm230826666b.102.2024.07.11.00.42.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jul 2024 00:42:56 -0700 (PDT)
Date: Thu, 11 Jul 2024 09:42:55 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: nicolas.ferre@microchip.com
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Conor Dooley <conor.dooley@microchip.com>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	Claudiu Beznea <claudiu.beznea@tuxon.dev>, Alexandre Belloni <alexandre.belloni@bootlin.com>, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-pwm@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: pwm: at91: Add sama7d65 compatible string
Message-ID: <mcbg5x3a6h2qt3ivtmve3xrhczg5juwzht7vjhzhactskpateg@7cffoor3avcr>
References: <20240710163651.343751-1-nicolas.ferre@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ua36aif6vqcebhyw"
Content-Disposition: inline
In-Reply-To: <20240710163651.343751-1-nicolas.ferre@microchip.com>


--ua36aif6vqcebhyw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 10, 2024 at 06:36:51PM +0200, nicolas.ferre@microchip.com wrote:
> From: Nicolas Ferre <nicolas.ferre@microchip.com>
>=20
> Add compatible string for sama7d65. Like sama7g5, it currently binds to
> "atmel,sama5d2-pwm" compatibility string for this driver, so add an
> "enum" to reflect that.
>=20
> Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>

Applied to

	https://git.kernel.org/pub/scm/linux/kernel/git/ukleinek/linux.git pwm/for=
-next

with Krzysztof's Ack.

Thanks
Uwe

--ua36aif6vqcebhyw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmaPjP0ACgkQj4D7WH0S
/k4aFAgAjIU4ou60T/qTFOuMU6WCiCdJUwxmT3ZcyfcnqyXCF7wodIP0pXLAi3y0
Yos6AbIDdjYfeV9gWG7S8yHpKLlg9kYaLmwZQDsJn5gr6OXg79QOwHeuYBf/hqjy
IzB2LIojtcYGtB1GFNV5Ta8TF57vziklAPmFv7vdENreaIxS/0/6jfiX5uQmopLG
a53zjm5Bnr2NmeGyoGdPuQy7/8JJogeCCpjWkGuELq62Zr/42dN/1SojCmTss1Yi
xYhikLMnXypFHKcdgX77hBX+6rm7Cik7QqEN6UJHaACFl/KTI3x2cFKPDyIZfgZz
YQdGsL6NqaiFAIX/KIyRmM+7ZFZDzg==
=1TOl
-----END PGP SIGNATURE-----

--ua36aif6vqcebhyw--

