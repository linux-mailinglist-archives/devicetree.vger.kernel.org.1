Return-Path: <devicetree+bounces-216052-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C4382B537F5
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 17:37:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 824F63B325A
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 15:37:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF3A6341659;
	Thu, 11 Sep 2025 15:37:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HXY/g7KK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C008223DC1
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 15:37:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757605065; cv=none; b=iaHsQTsEL3/irvHCdnaLR/LfJjYDyOD2drZWX/zEswewL5zc/MvAM95iA9MLdW9VcstI7AryBtbSLekmRe5HKhE/W1Bm8ET9XM1X/CRDxBZ59MEi4gaqgT542d1BAF1gBP8PWu8YVwpanrYCndeqWYduF3GGUADhHWsDvYErQ14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757605065; c=relaxed/simple;
	bh=jGCbtWcrlVGOlsw7vSJ37YM2eaVCO3X/a+iFWrzFEgU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eP6sycYerxSrqUhsCUNFHZoG92y+pifuXNJwtUyItPehwgDPa32b7XxuB+TTen+4HdRcqGSwzAddZGmSvY4wTpOC7wXSDcxB33QTsCDdCp/XNKvgocRorfIopRffUgNQOwB7kq971dSE7DzR78YUGJgYxQdNekAon4xpjSRw/T4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HXY/g7KK; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3c46686d1e6so661323f8f.3
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 08:37:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757605062; x=1758209862; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=jGCbtWcrlVGOlsw7vSJ37YM2eaVCO3X/a+iFWrzFEgU=;
        b=HXY/g7KKP83uIqjy5r045LPH5MpsAuD9jkea61fwAnc8eEcUK7Nh2SqHjW0k30AoQi
         2PZE2AL5GG2g5/obncCCFDnc1WnE3H/PvimlPHLsdqniTL/iw6bfE4KRtruz3FrFoOX7
         PXj4AyHyf21KI4NgVf1O3/l3mHuT2xSRzGHWEeRqYvp0Ae1ZUgkUKtne5f4QkzIHgC0a
         IvMUNtAfJ7IpetajrKQ/+5a+VFvxlhtjgORQDNnnVE7GOz7j0rM+phlsXPwLkHjvtEo7
         Xw9TjuAkjs3kqxY9c9ZQ+xRyWvR75Va6Sp4W8z80NbwpXC6H02nzOc04+pGYobVf+gZG
         Zp0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757605062; x=1758209862;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jGCbtWcrlVGOlsw7vSJ37YM2eaVCO3X/a+iFWrzFEgU=;
        b=dN1i8ruV9LzV056aGRY2/P8WiYfC8724ub3PRGhjb3/EJo0j4Vt4pVtmBVbHoqmL2a
         FgjFiMO+DYmhlpEfxq/pctJy6J2zKwexfEf4SK6GanBq3EMsR43I61PmKLZ/5F6awArp
         06l0qwOkvJ/76SFG3xctuuP55DA8Jzth7dsdwBjvr/sZdu4VXX8EdBOEtnVNMc2bi71g
         hFqEsUHc+LsdAqVWw/4uIaN/A1lQupiJkawqNqQ/s+MiSvAAxdU9eEZHY+rSziYl11vl
         Kr4dK9iOJn7nwUxqAGGsJDmRHOlrOVqfTs/Hif6vTpXCg7NIUMREGoXrBC03AYhttcIV
         NHkw==
X-Forwarded-Encrypted: i=1; AJvYcCXHsU1ADa9EXKwPd1kvNKMUXKAemUYOoTy3araYrL5F2WCnAouZsVbCFpbrxwWehkzObYlrzOGZyD7L@vger.kernel.org
X-Gm-Message-State: AOJu0YxK27gGrQNU7W8fYCJKhoe16If6pjJEJCngVqBPbcboy966QKcd
	7d09OPlzhyZwdCAdxZc+uM/yOA1sMcF1S0HDbbk9BaAdy0bVSpGKgS0rNZJlWw==
X-Gm-Gg: ASbGncsnnrUzClciuGpwzWTjlFN8ltXwzgqcs0p2z27rvGU9oFpFuM0cPqckBS0H1ok
	yXio/W4fyy1wy4fOKOfH9p5Pz808ixJAAmuCpOBOk9ocDNriRQFUgn8udBa+1U9ti1dQ0xEj+lB
	V5Ga35tTIt2r0W017Yu7mri4nEsNVLzlzWtRUtXt/upwB73qDh48snY0rWRgwXKdToKA2Gysyar
	OuNuBFmx+7m2yfCU+MXvY6n/fhBfuM+RMBlGEG6IX3g0OprBQ8sQGMBMYXbfkyyQroKgT7k7XXK
	1zJSA1qdFrJ72Db0JWqyJopjtfukNtMqS4WrV2JLE+F5RlwCWn2WtB4r51YYVPuS/fJsHNfffsk
	vWfQI8BRr6Y3eGrKDHtAr5l7OVA3W1T66/IqYUyzlODTtYl2mBUviszGGHZGVqa2e5E3a0Ozdgu
	ttXPTwVpigEizpFS32v58=
X-Google-Smtp-Source: AGHT+IHeomjwGshdwXJ7GtRZ0kQRCHXFbt99q/ME4Q1c9UOw/gT9genHwKUAtxXldEZTN6dWsqdfzw==
X-Received: by 2002:a05:6000:2209:b0:3e5:31d3:e330 with SMTP id ffacd0b85a97d-3e641a62252mr17500369f8f.25.1757605062220;
        Thu, 11 Sep 2025 08:37:42 -0700 (PDT)
Received: from orome (p200300e41f1c4d00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f1c:4d00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7607cd424sm2807855f8f.36.2025.09.11.08.37.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 08:37:41 -0700 (PDT)
Date: Thu, 11 Sep 2025 17:37:39 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jon Hunter <jonathanh@nvidia.com>, Sheetal <sheetal@nvidia.com>, 
	devicetree@vger.kernel.org, linux-tegra@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: power: Add power domain IDs for Tegra264
Message-ID: <bdll2m3pgx6vdkjblzjcwx2yyu276mdapdy3ygxhy7kzhmzdah@q3v3vmo3mvjl>
References: <20250828112924.3773782-1-thierry.reding@gmail.com>
 <20250829175432.GA1070947-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hit7guxpysqbu3ng"
Content-Disposition: inline
In-Reply-To: <20250829175432.GA1070947-robh@kernel.org>


--hit7guxpysqbu3ng
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2] dt-bindings: power: Add power domain IDs for Tegra264
MIME-Version: 1.0

On Fri, Aug 29, 2025 at 12:54:32PM -0500, Rob Herring wrote:
> On Thu, Aug 28, 2025 at 01:29:24PM +0200, Thierry Reding wrote:
> > From: Thierry Reding <treding@nvidia.com>
> >=20
> > Add the set of power domain IDs available on the Tegra264 SoC so that
> > they can be used in device tree files.
>=20
> What binding is this part of? 'git grep nvidia,tegra264-powergate' gives=
=20
> nothing.

These are the IDs used for the power domain provider exposed by the
BPMP, so it's technically part of "nvidia,tegra264-bpmp" but because
that also exposes clocks and resets, the IDs are split into separate
files.

Thierry

--hit7guxpysqbu3ng
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmjC7MMACgkQ3SOs138+
s6GSbw/+KNSsSyDeolsDUliha+lOTYPks7ylxlENZw5A33O0wGgMY/sGvN1lFQG6
w/8kZkZYuGPit4/bgLbpTkZ4zAKsnu6K7ZzUGUEdjm4HU5ukebeZ82qqVSuGLdmD
Y5z/HQYEmSrPaFwtpm5k7rjSdg3ZPVIVYvDY4MvnC6JB1M1hvDU8ph9rg4gbJOCs
l6DF2hhOubiU4tbqBZXpNFKVaoTrGhzFEh8mIyw31HEwg8zE8bMrnRi9oGSxa8kp
0P6JP5Hgx8Lq2SnwAdRi7JDyoxoGgsccrFixsWISB0zzm/y1QHyoFTF/xi1wfqQc
W+3QzVMEoLcr014k3XKsAgIi14ChHnRPVA0MUkJKqvhtB7jGt/F27u2po439h1Hn
aL+pspDPYQfX21dUPdpDjcWtpDd36uVBFyj7s9uvQi/y1fUOPzo73nRIzOnmCDBa
tjHq6/mUtP16wZVZJmupGGrjiy5tedvWcJEhTj51ZLz5tatN4sLsXqL4RJb6Lrnu
GOoJVhkwf3OFW4JKlTWRyAUd2smKn5JlQIVu09xmvpzDAq597uwK+sUIndMK4VOH
jBf/hrXzcNfuJeVqLninaox7YQzq6mIqvwpK9cl+/n4suyhcwDcdSy5TeDoUQ15b
qc3736AbBCEuYhxg/g6/0YDqGB489OGPfIEacoXTP1W3refJAAk=
=C2Fx
-----END PGP SIGNATURE-----

--hit7guxpysqbu3ng--

