Return-Path: <devicetree+bounces-260943-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oOJDKtmNe2kKGAIAu9opvQ
	(envelope-from <devicetree+bounces-260943-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 17:42:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D02B9B2575
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 17:42:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 21DB63004F6F
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 16:41:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B55CE33F8BB;
	Thu, 29 Jan 2026 16:41:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vATOZ6vd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90C3233DEF5;
	Thu, 29 Jan 2026 16:41:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769704904; cv=none; b=ZlyaBAezHBuSZa/cEHg4y23UvAXtkEnfxliJcNGzc6EN6EEdKHt+cMwYYEExQbpB8nwagzPPchEg92s/hziWMFkPegDZeDbHXgEKG1zniXzftxP5JqT99n5mr7H8PZNeMwT61cochl+EqdVkaTKOYHa09k93SpId+3Yp3Y26ykk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769704904; c=relaxed/simple;
	bh=3qgjo7+fN2h0vrO2MoSb7Sqds7DPYKSytJObQziMuho=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=InDnkhO40OYIMAUhdwBweaJjZfxfdBIt4fDEq4tHW8bhPG5kRdjnEP4KLxF1e4kTzEPqihtNRxRy9eH+o/1cIg9VP4caY3ilxRmpg2cBEO2Us5+WBJhGM+LybgtBqUzO7F2Uh9uEb86BerTQ3nMh0bu5XH5dyIsNYvYteuvJEBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vATOZ6vd; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4F7CC4CEF7;
	Thu, 29 Jan 2026 16:41:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769704904;
	bh=3qgjo7+fN2h0vrO2MoSb7Sqds7DPYKSytJObQziMuho=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vATOZ6vdU7DMd8Q8TA82kTtADtrQWudc/tBoh/4xyu+5TWA9cuX76qboxUn7srk3l
	 Ofh9f0ZmMGqUC6Vp5yT7iHgeRSJi1r/Bv6psL8ZOdd7oRv/ZUCDNyaD3AqYa+LCIiu
	 QPOj5ZrDqKpnH5oEeb8K6+kkJNTkV8zkaEguGkmCneTcJJ2g4LNurkG6d1J9U/ieww
	 /tc6TJCdzuxs94+G7E3z6T9XizzSyDdm6k4DzGZatwkIB8po3yytGb0phT39Iu+Atx
	 rdQ1ac/uYhp2/to4H7L5YYxYKHOdcH1TsVUZ570A3tFpSSrF2j0VxrruBzgs4TftKC
	 xsmEQxtb/5nEw==
Date: Thu, 29 Jan 2026 16:41:38 +0000
From: Conor Dooley <conor@kernel.org>
To: =?utf-8?B?6YOR5b6L?= <lv.zheng@spacemit.com>
Cc: Tomasz Jeznach <tjeznach@rivosinc.com>, Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Jingyu Li <joey.li@spacemit.com>, iommu <iommu@lists.linux.dev>,
	linux-perf-users <linux-perf-users@vger.kernel.org>,
	linux-riscv <linux-riscv@lists.infradead.org>,
	spacemit <spacemit@lists.linux.dev>,
	devicetree <devicetree@vger.kernel.org>
Subject: Re: [PATCH v1.1 4/7] dt-bindings: iommu: Add spacemit/t100 features
Message-ID: <20260129-grandly-compare-e8e3a105f690@spud>
References: <cover.1769562575.git.lv.zheng@spacemit.com>
 <cover.1769666438.git.lv.zheng@spacemit.com>
 <15209d7b8c5a5055f8944ab7261e440d70a18a03.1769666438.git.lv.zheng@spacemit.com>
 <20260129-evolution-femur-84eb5668f4a7@spud>
 <a4684b7f094a6a5ee87d9db722b75594f851b9fb.d4fb292a.1570.47af.8025.bf9af089dc8a@feishu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="us38dN0chPlzanlk"
Content-Disposition: inline
In-Reply-To: <a4684b7f094a6a5ee87d9db722b75594f851b9fb.d4fb292a.1570.47af.8025.bf9af089dc8a@feishu.cn>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[bounces-260943-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,infradead.org:email,8bytes.org:email,rivosinc.com:email]
X-Rspamd-Queue-Id: D02B9B2575
X-Rspamd-Action: no action


--us38dN0chPlzanlk
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 29, 2026 at 06:43:03PM +0800, =E9=83=91=E5=BE=8B wrote:
> > From: "Conor Dooley"<conor@kernel.org>
> > Date:=C2=A0 Thu, Jan 29, 2026, 18:08
> > Subject:=C2=A0 Re: [PATCH v1.1 4/7] dt-bindings: iommu: Add spacemit/t1=
00 features
> > To: "Lv Zheng"<lv.zheng@spacemit.com>
> > Cc: "Tomasz Jeznach"<tjeznach@rivosinc.com>, "Joerg Roedel"<joro@8bytes=
=2Eorg>, "Will Deacon"<will@kernel.org>, "Robin Murphy"<robin.murphy@arm.co=
m>, "Rob Herring"<robh@kernel.org>, "Krzysztof Kozlowski"<krzk+dt@kernel.or=
g>, "Conor Dooley"<conor+dt@kernel.org>, "Paul Walmsley"<pjw@kernel.org>, "=
Palmer Dabbelt"<palmer@dabbelt.com>, "Albert Ou"<aou@eecs.berkeley.edu>, "A=
lexandre Ghiti"<alex@ghiti.fr>, "Jingyu Li"<joey.li@spacemit.com>, "Zhijian=
 Chen"<zhijian@spacemit.com>, <iommu@lists.linux.dev>, <linux-perf-users@vg=
er.kernel.org>, <linux-riscv@lists.infradead.org>, <spacemit@lists.linux.de=
v>, <devicetree@vger.kernel.org>
> > On Thu, Jan 29, 2026 at 02:09:13PM +0800, Lv Zheng wrote:
> > > Adds device tree bindings for SpacemiT T100 specific features.
> > >=C2=A0
> > > vendor-hpm-events: Allow vendor events to be customized in the device
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
tree.
> > > global-filter: The feature saves silicon area by reducing filters to
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0one and use it=
 as a global filter across all events.
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0This usually i=
s sufficient for real applications.
> >=C2=A0
> > Why can these not be determined from a device specific compatible?
>=20
> The specification only defines less than 10 standard event types while the
> real silicons should have implemented many other event types based on
> their micro-architecture. I tried to provide a common mechanism for all
> vendor specific event types across different vendors.

Given that the variance is based on uarch, it sounds like it can be
determined from the compatible.

> It is similar for the global filter, the global filter mechanism actually
> complies to the IOMMU specification, users can alter the iohpmevt
> registers as is what is specified in the IOMMU specification. It only
> provides slight application difference between the final effection. Thus
> this could also be a non-device specific option.

What is a "user" in this context? Given you're talking about reducing
silicon area, it sounds like this will be set in stone for each SoC, and
therefore can be determined by compatible. If other devices do this,
they can also determine it from their compatible.

Properties for things that can be determined based on compatible are
generally not permitted, so you'll need to provide a compelling
rationale. Common mechanism isn't one, since determining based on
compatible would be a common mechanism based on match data that people
can tack onto for their devices.

--us38dN0chPlzanlk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaXuNvgAKCRB4tDGHoIJi
0jikAQCZmWSwXg8/59q41VlZPIhtwnWk+A1C6nwIdeRyN2GdhgEAmQZsAVDM44Bg
nBgDNFGQgdLtTglrLESe4K/YEyzsZws=
=FXGu
-----END PGP SIGNATURE-----

--us38dN0chPlzanlk--

