Return-Path: <devicetree+bounces-163627-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B07BFA7D990
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 11:25:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 28B253A731C
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 09:22:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68B9A230BCA;
	Mon,  7 Apr 2025 09:20:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="vJvdMez5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 545AD20E707
	for <devicetree@vger.kernel.org>; Mon,  7 Apr 2025 09:20:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744017652; cv=none; b=t+7dBHqncc2KbO9HINLSg+hR1sBhSezqNk2pkymNxmheafjY+yYjk19vAFhZbOJyWlwwqmhD22FX46XWjXKrONXnrKWtn6F68e7wRJFQlNWk9jJyc7NsQYhb3HzSxTyepiYkhpD3TcWJQdDKVl+ygutCHKenjt0aLOaQyQHbZvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744017652; c=relaxed/simple;
	bh=ScdXEXK3bUhFt+Yi2JcouhlEsXjMdlf4d3ndS+JkYLo=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=UAQ9vjATZM1wstlDRm5Pd5O3avLgT8aAwgHVhIG87SuJO+SYYwQCE2sJeRe5/OJY1Up7aAkTPd9ePEzNVXvbKZUhzFhQIEXEvu0cRjORP+F+2FOllqxn1lTijm4cDnlGuqwlLgbogqpukDBjkUyD+bSSz+4AtAA6MAZeKQybbnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=vJvdMez5; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com [209.85.218.69])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 024763F471
	for <devicetree@vger.kernel.org>; Mon,  7 Apr 2025 09:20:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1744017648;
	bh=7GZS6uPYj8uHFMPZTZNVxCqyKS9pg06/fJF5SvkoEvI=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type;
	b=vJvdMez5QVbIZuKTu/BA+sAO+8G/0Xm44DHP7ego4hhzrZQlKYJYKZi3MBDUQz8NM
	 IbRWqwJZl3OpDjxe9q4ZAsR+aczRGiBMHXELxbnghAcOBS6R3kb17qGBWbHnNzwnav
	 Nw3uBW0n9BTn3F/PPHkJ/3o0wuDzOb//CpOxubG56CtbduJwphsClLUPwZW40f6hhO
	 r0apCyuUmpbimQ0xXp13jbhu3L+YJuWlqoV8OeP8QIcknElqrttw346gExSNt5DgbJ
	 zgiFRseht88HHi64xHON560FBKrCcEESz2bbj5ePlOn79dNu4pe6D9gbWMnRJ/EpOC
	 bU0uFGiNAIESg==
Received: by mail-ej1-f69.google.com with SMTP id a640c23a62f3a-ac6b047c0dcso354444266b.0
        for <devicetree@vger.kernel.org>; Mon, 07 Apr 2025 02:20:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744017647; x=1744622447;
        h=mime-version:organization:references:in-reply-to:message-id:subject
         :cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7GZS6uPYj8uHFMPZTZNVxCqyKS9pg06/fJF5SvkoEvI=;
        b=C58lUNxdur4u1cGThkIJcRQgdAaL7Zo1yG/z3QpwssgXh6YbYae2TOVendmkUvezYo
         6ZHhwhMLY3t2M/0W3DfqkSm5RVKtHzwSCx4GY/QTkNWgjj+tCOaZ14fskdmRoH287Qo6
         FNmFBhaSguCQHrIV5PPbSdG5hG2fAmlkcHEIPunXy9+mUcjfVEbBpN8YhgHLAPN7qIuO
         Rr4T3KC6KeeOCbbbx4MBevCYxaRA0Na2DTlXGW2+RZBPV5pam59Y1/lbqEnYzNuxNcxo
         W3/E0Tds9ZBPfNIQyLFIe1sQNZEejcWJPPaby+4n/90MWPlfr7HKeziJ09fQrvIQwUT1
         HZ4g==
X-Forwarded-Encrypted: i=1; AJvYcCWVgVUw1gymBUzQkzHzn+lm3BUzhNK/zSL9Ej4A1oBjLrVZZ9BqZBM5J1aeTSCzoGXGT6tfdexP+0AT@vger.kernel.org
X-Gm-Message-State: AOJu0YxqZhKn9DgUOe/yAGDl7Xd0ha1/Hn4IzdcvQydMjWuuvVe8uSiB
	fK8l8nZSax6UQmYdTaiuT9QQsrSYlsxUz7veo1msuk3CqqVR34T/yuETWTBUerTOXIEXENR/JLZ
	7yS9CSutVqkNZU+RKZlGi8tImLtCuwb4cElO6v8dm4PEmO9uuOv/Yasx+QoEhBVMeDmmKZfYUrC
	o=
X-Gm-Gg: ASbGncvisJVxtQdVwNofpoFS6E+6kqE38LeEchdsmPRJzZC1o2cdRYSiKkB/tPgIdUR
	DmxTAUfU/mv2nJR4+iOXHm/COGipT0xptalza8tpVJ2W8C/qfVM6rZ3vuVv5TRe9FV37hqJXFvx
	Lp8zk+DL12kwycRnf4cY9mjw2SQn2sFqmdhe1FMDaUOV9x3m9Xy8nwzVgQs+xcKDDUL8BEmEo9U
	zL2/6QCpfotljU4xnaL6aMinmSXqrE708xspiKx90E9E8RjXiapXmW40UtsMdULoScvZlUlgbAy
	TD/FHiL3GE4edYh+F4ExJ+2resy1H3m6VvotidQBoWtxDyxQRZVQc9Qx
X-Received: by 2002:a17:907:7214:b0:ac6:b811:e65b with SMTP id a640c23a62f3a-ac7d1821920mr1055181566b.36.1744017647221;
        Mon, 07 Apr 2025 02:20:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG5RKNwcDAkF0pEvh7xm6VWRcXnybWvXazgwz0pvnQ6TMVJtV3bBp4BF0HHU1KK4D5FiFb2pw==
X-Received: by 2002:a17:907:7214:b0:ac6:b811:e65b with SMTP id a640c23a62f3a-ac7d1821920mr1055178966b.36.1744017646855;
        Mon, 07 Apr 2025 02:20:46 -0700 (PDT)
Received: from gollum (151-243-191-194.pool.dsl-net.ch. [194.191.243.151])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac7bfe5c5c5sm709420866b.29.2025.04.07.02.20.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Apr 2025 02:20:46 -0700 (PDT)
Date: Mon, 7 Apr 2025 11:20:43 +0200
From: Juerg Haefliger <juerg.haefliger@canonical.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] arm64: dts: qcom: x1e80100-hp-omnibook-x14: Create
 and include a dtsi
Message-ID: <20250407112044.35fe4d8a@gollum>
In-Reply-To: <e326a1e8-5f2e-4b1d-bb72-64f1e32038fa@kernel.org>
References: <20250404090108.3333211-1-juerg.haefliger@canonical.com>
	<20250404090108.3333211-2-juerg.haefliger@canonical.com>
	<e326a1e8-5f2e-4b1d-bb72-64f1e32038fa@kernel.org>
Organization: Canonical Ltd
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.41; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/2GAB8FRdlhzjw/4_=O1iMN1";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/2GAB8FRdlhzjw/4_=O1iMN1
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Fri, 4 Apr 2025 14:51:54 +0200
Krzysztof Kozlowski <krzk@kernel.org> wrote:

> On 04/04/2025 11:01, Juerg Haefliger wrote:
> > Create a dtsi for the HP OmniBook so it can be reused for the HP EliteB=
ook
> > which seems to be the same HW.
> >=20
> > Signed-off-by: Juerg Haefliger <juerg.haefliger@canonical.com>
> > ---
> >  .../dts/qcom/x1e80100-hp-omnibook-x14.dts     | 1554 +---------------
> >  .../dts/qcom/x1e80100-hp-omnibook-x14.dtsi    | 1557 +++++++++++++++++
> >  2 files changed, 1558 insertions(+), 1553 deletions(-)
> >  create mode 100644 arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.d=
tsi =20
>=20
> Very difficult to review. This should have been rename. You are not
> using b4, so you can tweak -M/-B/-C parameters.

Not sure what that means, but OK :-)


>=20
>=20
> I also do not understand what the DTSI represents. The DTSI files should
> be some sort of common hardware, design, product. Are you sure these
> devices share the design?

Yes, pretty much.

OmniBook:  mainboard 8CBE, version 17.39
EliteBook: mainboard 8CBE, version 17.40

HWinfo from Windows looks identical. DSDT are identical except that the
EliteBook has two additional nodes \_SB_.GPU0.PBRT.RBF5 and
\_SB_.GPU0.PBRT.RBF6. Not sure what those are, maybe due to different BIOS
versions?

Using the current OmniBook dtb works with my EliteBook.

...Juerg


>=20
> Best regards,
> Krzysztof


--Sig_/2GAB8FRdlhzjw/4_=O1iMN1
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEhZfU96IuprviLdeLD9OLCQumQrcFAmfzmOwACgkQD9OLCQum
QreiCxAAmjf9riTwqTB0eq0J5fIEHqYnd6ITtyuOHiWmS57uWKOl/R7354LDEcmm
aYUVLLoOxrPUUBBPsxQg65EF3PumDBGwNEt9m3MH3yAnRZAg8IG0XddBNx+5+Y4F
Uoz8K6kAkE7BV1jxUPlZPg9wopC0Gmk/OPVm2OnXYxyIyfdv9lrVhR9mfkQhIKho
eqgIxqAnjPXvYPpZQ0fhdw/smHpsYXnWhuCvVi9befgEIHqCQPzZXwhkCFojzEes
1dhqZY2zFL2hyL+dio4GzY+tASuik1gY/liOM081MqPfxkq5wDQWfwJEc6Kfrhm8
IXcM0KWNkWtqiRw5QNSxxLnJgsXem72BdE3mld7gzgM0F8fsZ8I0MeDGxWOV6Gr8
FMDDORlla4+/SrDLkyYxvuW7eHY1+UMGIRM1smhdjd9Oj74su8MV3kpp1hHJqLrE
Adjrb/5P/+PWvncwqLabYt1P04BawL4WE586i78HJPCnb+6PpBffqLsGGem5tuzF
/K5EuvwPTN/1tKHYjTVArG39N3RDkQ0Toik/i9M6ODwKK8+GCT0COYH7kc5bS9Mt
/22XuVH7u15Et2VuWysC9Z/ee/0xKotz0SA3WFbpH6igdRLdDwyX7fL2yiU802Oj
cNOXgCJwETZxlQSSVwDjs728jfyMJii4K+o9EcbtxDKRMMgtD5M=
=nyGV
-----END PGP SIGNATURE-----

--Sig_/2GAB8FRdlhzjw/4_=O1iMN1--

