Return-Path: <devicetree+bounces-258394-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wL09CGMncmmadwAAu9opvQ
	(envelope-from <devicetree+bounces-258394-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 14:34:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id D880B67591
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 14:34:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 99BA640C21B
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 12:25:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C076F42EEAC;
	Thu, 22 Jan 2026 12:21:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Qvg5Hahh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f177.google.com (mail-dy1-f177.google.com [74.125.82.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6734429817
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 12:21:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769084493; cv=none; b=KTZN6Vzt49jERAliPZ/Bc1PxyJTU3RHp9JZcjhvNpWDpMiPuqvJfqTclew5i9YlxamzjJplHyFqyTwp8JpJGn/RR0TSHtTkAa6zwx5kJcnIzFtaTZXkcZAMCOIwewxMsuAoy58G3zkNmORYSHDCRvuD7dpwIln8U7MbS12qFTBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769084493; c=relaxed/simple;
	bh=8Ql8ng4jzLVZ0547/16u+Y8Cip3PkkHJaihg88NYbG8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Pzfgpw9cnaLfzSocC6F2wtIdLY5LlegNvtlwG7813ZSaoV0EGmd1PWoIQAmibjntfNN8Qc0wxEv0D1ve4NoZM8EqIs8NH6zmCLqieqvc6YPDPDtL6VfLQ2fHI7XTzDtGEmYFcPvHoy+5NP5gmi9qS1IZo2Z/EHVDMXI0Pjd/FMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Qvg5Hahh; arc=none smtp.client-ip=74.125.82.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f177.google.com with SMTP id 5a478bee46e88-2b720bb90d0so846397eec.0
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 04:21:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769084491; x=1769689291; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ox7VDCdcqo61Lj8ef2HrYPccmfuXyWilwLZW5OHdUzM=;
        b=Qvg5Hahh9n709kUAS52/10Q+nhDJ6rq7/NEJ37Dz285+fPYfogbo6De3u65P9v2SLj
         1ZRp1O0/DrKINvtJKjkwSjMRYuM5+3OtO19jCAyOxjZjCOAoptJgjjUOczajO0EHoPqd
         Iaw6rTrjQHvvFbJA+BWqbMs926G9I/52IXvDLSAImBMnvHsc+usA3dfZUOyl21kQt3gs
         50I3OwVW/MY37ZnDSGx8tOyGig7iItbNOBXzZXDVpMpKkQmnggPHk7S023p1vKzvydFO
         yFuuBSc7sCoGwzVvX4NDGLFSVFNTbsmKA3D86d5+coquRoiaxa9mqj+a7HFYbM1LWsHW
         ug6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769084491; x=1769689291;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ox7VDCdcqo61Lj8ef2HrYPccmfuXyWilwLZW5OHdUzM=;
        b=r4BZNUzarzbXHuhB8e8Ti2cOM8beeGM5lNiM7baQU9wPUjymJoJXFEFl9fOZT8RWDc
         9D5Gpon6n5iHDff2GI9ckbCX5ruB8g/UVCD8rkL5gs7iyiZ5EW3Y06Wk+chAlUE0iKa6
         9i/AFQRB/8ZNheDa/PafiJi6HDSBZjzKiTzeGZxn8v0CyCXQBMngxp2hEkKzwsv3XwFF
         iQ0vHf9X1lJ+uetMX8UILn8Ok9enLPrLgbyZF8a7LX+bDlwPvQB3f8w/iboC0ysDSRRS
         GPAuQMrtAX82Rc+CgGl0+InWxs7aL4b6bljOpbk2ljDnrPFDVe8tCrqKr6iSMddLTCWA
         1jTw==
X-Forwarded-Encrypted: i=1; AJvYcCXOXYF5MHXms/t4PUCdC+a7PCcqxu7aRlzsaYwXU3FEMFlaAu9MBGKLX6SU6XCT3RG4YcKWRTpI7kAH@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8Li8EilKxt6AjIHDb05ctk50IcFO5/3xVY6zKJIuj3mF83WKz
	dlDM52CMB9SUoB3qKMKK4FU2YWj0qY+XVVF/suK6/5PyUHaWDGPg4AR+
X-Gm-Gg: AZuq6aKfmSbHEctNfk+xZPNayZyocC2Ya9cZ9cKtCKxN8gV6x5iWRAIx4UNQ6dCA15e
	HV4gQlhsxBX8Hxh9s2U3XOpmn336i9T5Uydjc5nxDQvkAjxMJd7Gj9PtY/7OO5BC/l3HTiMS/TN
	leRda0pOBuXfl5pq2Z9OmXtEIuzfdldUalov9k/CEbqbPVs4VtZJrAp12l1RIlS7D3+lUOgpraw
	d+PRF+gIIc/KRXpi65bloX4k8SRiXY6SHphlkmCEdJItJIxaliq8ZoOLWKKXqeJKqA+/5/XmT+p
	ShNDziN0W0mcfB3oF7AK549Tyut13e36Si8+yd+mTTMQ1RkBAPmkOZMnivNhwS+WO805z1Pt3U2
	AGcJN1vKfKqFYVXVMU32tbovaBH5DbTdAzm9F2rt2lz03HTXnumGXw8RkGpHw22jvLLWwPzZQYh
	WCeOHK5hCNdCN3FmL3XAwtaG5LH5qU2lds3nvJ+d5c0ZM00L/Pd8autV6fn4G+qKcGO80b+SUlL
	Q==
X-Received: by 2002:a05:7300:550:b0:2b6:a622:25f5 with SMTP id 5a478bee46e88-2b6b470d64bmr11703766eec.11.1769084490654;
        Thu, 22 Jan 2026 04:21:30 -0800 (PST)
Received: from orome (p200300e41f0ffa00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f0f:fa00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b70b3c8ea3sm7949855eec.22.2026.01.22.04.21.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jan 2026 04:21:29 -0800 (PST)
Date: Thu, 22 Jan 2026 13:21:24 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Rob Herring <robh@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jon Hunter <jonathanh@nvidia.com>, linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-tegra@vger.kernel.org
Subject: Re: [PATCH 0/3] ASoC: dt-bindings: realtek,rt5640: Various fixes
Message-ID: <aXIWEP9lH1CyacnO@orome>
References: <20260108143158.351223-1-jonathanh@nvidia.com>
 <176861152450.1947082.2637987844354037789.b4-ty@nvidia.com>
 <CAL_Jsq+LUsfcU_-zPo88acsL_C6red=4jzmeca3ZCeyPgHDBvA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vmeb32i2knrpyiuh"
Content-Disposition: inline
In-Reply-To: <CAL_Jsq+LUsfcU_-zPo88acsL_C6red=4jzmeca3ZCeyPgHDBvA@mail.gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.06 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,nvidia.com,vger.kernel.org];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258394-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[thierryreding@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com]
X-Rspamd-Queue-Id: D880B67591
X-Rspamd-Action: no action


--vmeb32i2knrpyiuh
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 0/3] ASoC: dt-bindings: realtek,rt5640: Various fixes
MIME-Version: 1.0

On Tue, Jan 20, 2026 at 07:35:53PM -0600, Rob Herring wrote:
> On Fri, Jan 16, 2026 at 6:59=E2=80=AFPM Thierry Reding <thierry.reding@gm=
ail.com> wrote:
> >
> > From: Thierry Reding <treding@nvidia.com>
> >
> >
> > On Thu, 08 Jan 2026 14:31:55 +0000, Jon Hunter wrote:
> > > This series includes fixes for the realtek,rt5640 dt-binding to addre=
ss
> > > a few warnings that are observed when running the CHECK_DTBS=3Dy for =
some
> > > DTBs that use this codec.
> > >
> > > Jon Hunter (3):
> > >   ASoC: dt-bindings: realtek,rt5640: Document mclk
> > >   ASoC: dt-bindings: realtek,rt5640: Update jack-detect
> > >   ASoC: dt-bindings: realtek,rt5640: Document port node
> > >
> > > [...]
> >
> > Applied, thanks!
> >
> > [1/3] ASoC: dt-bindings: realtek,rt5640: Document mclk
> >       commit: 601a821631c55014b02371740c39748d0af916c1
> > [2/3] ASoC: dt-bindings: realtek,rt5640: Update jack-detect
> >       commit: 2efe28d11cc19b69b19b9bcdb6f498c1bf842fbc
> > [3/3] ASoC: dt-bindings: realtek,rt5640: Document port node
> >       commit: b2788f6320722d6059f849f35a77eb082608c627
>=20
> Please drop these. linux-next is broken. Plus Mark already said he applie=
d them.

Sorry, I missed that. Unfortunately neither patchwork nor b4 show this
information, and I must've scolled by Mark's reply (or forgotten about
it). Dropped from the Tegra tree now.

Thanks,
Thierry

--vmeb32i2knrpyiuh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmlyFkQACgkQ3SOs138+
s6G2BRAAiyQGv7ENIC4Ij28gXQyq++Mls11rEUIZnWFjjk15Xl4H8TX91YlKO2jn
ZpChZBdkAXWmyHimb9KIHxPxRj4cwThb23RSKkZ1r8NK34CdRN9AKAJkvMZiUIdx
Lu05l9JrIw0Y/FEmQPwswEWEWh5LfgXSiXxvBJvDP1qFJRLc7ey+Q2rkLiKnfYVk
hRFOWPeMqvSMiwrK3YEIqHQmTyLaJYWcX+YrbOmZKdScaju+LI9FXTFeDic686Ww
8QYEuSuEPKYabfHJes56wyOadP9fuZ7wukOo+buzNtt7uHhhiuIOCwiXUG3HaFrN
Yldnkgi0Pc9A8qyJozcSUphUxIEE8wMCir1PdfOtxRMTY8l12Se7rGiDDp/Lt/E9
kk9J45AxPeicDcPdKft9BuWz4QeHdWChwvTSoF+tQlu/x0jsMNG3ZwKlQvhPHm+V
IodvdQjBQb436qh3Ap3uvoLPX8lRsjxzgy3v6prCGLLBqXcH2I3tfea4FCin5M6g
HzR2Xzl406wT6mae4LJqlAlqkN14WopNJuTBR7hJ/aeLia0GTUCE5RFlJn/Z00mk
jo8rFieHqXJBEPShR7VMcRctdQBPnHwZYh8yh2OTCJCSQx/fbG+a55/FCgOtmfIL
78GtymU42ca8oKDT1fXORTvTTM+eV0ywph3m08Mq9BP/HQEkcKg=
=tFKc
-----END PGP SIGNATURE-----

--vmeb32i2knrpyiuh--

