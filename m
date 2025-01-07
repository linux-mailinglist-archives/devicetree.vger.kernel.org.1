Return-Path: <devicetree+bounces-136250-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 463CFA04609
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 17:25:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2CBF37A2CC8
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 16:25:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4E491F63F0;
	Tue,  7 Jan 2025 16:24:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=stwcx.xyz header.i=@stwcx.xyz header.b="M9ouyZU7";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="ITI393vw"
X-Original-To: devicetree@vger.kernel.org
Received: from fhigh-a4-smtp.messagingengine.com (fhigh-a4-smtp.messagingengine.com [103.168.172.155])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0044F1F4705;
	Tue,  7 Jan 2025 16:24:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.155
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736267083; cv=none; b=Z/6oz5hk6gQhXsH/8YS9o7skywytczn+cRlMWsmc9hx0SU6PswFYiwI8TPuXTRptwswQFOOA0d82ZFdZuWzAzVSH+SsRede+MalF7Kdg4x7ozDE04dROEzAxpZ02pZbUg8Ghjv1m39Yh4UAFdYoUG+tGzcknVXtTfQCPAfPIBqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736267083; c=relaxed/simple;
	bh=lQbewE7pXPMzh05I2tta2ykuH5tjSFe60UQhYH1+Ysw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RLR7vWuFU63/wmhGqr5U5ghSHX32itBKY/E4Hmxb+2FD+XDpd2X9bhxmqgIH75iFW5hZ+TkTpA1/p8uUFLYT8g9vMfnp50KXt+cNHY/mNtvAx0UJ3eETgR1PzC8GTlAFs/P0ssrT1HKGeo+Ke8aGvO6KH2Ui0KWhXHO+ubVBK2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=stwcx.xyz; spf=pass smtp.mailfrom=stwcx.xyz; dkim=pass (2048-bit key) header.d=stwcx.xyz header.i=@stwcx.xyz header.b=M9ouyZU7; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=ITI393vw; arc=none smtp.client-ip=103.168.172.155
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=stwcx.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=stwcx.xyz
Received: from phl-compute-08.internal (phl-compute-08.phl.internal [10.202.2.48])
	by mailfhigh.phl.internal (Postfix) with ESMTP id E0C281140096;
	Tue,  7 Jan 2025 11:24:39 -0500 (EST)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-08.internal (MEProxy); Tue, 07 Jan 2025 11:24:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stwcx.xyz; h=cc
	:cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm1; t=1736267079; x=1736353479; bh=3+/XHKlm0u
	DWaGNf90vFoVIJ7tDwFWEFaxqH+12MDaI=; b=M9ouyZU7OxAYdpAtYZDUCD9BPU
	fkATgBp7F+ak/a/vC19pFscf/A5FKmkZ7yLvTb2NKz1FSetCPAlW4D6yV+BHNmCU
	F9/2bag+l7hUS8tOFZYv9Lzzsv2xVXugyM8eXTD7SOuz4VEaIuwYJst4hwtsYx+J
	2EBBbNNq70LhQ+JZO22HZ/5SKEND/jLcmnzuimerYe056sp0XxrJf6g5wa94pko3
	8UB0vsRSiCEQXgKSJxJs9ZNg3DW8SzWIJmzl8OP0QkntMj6msX+9m/ordQV58OTZ
	KBLje+4tYforzbtYVBhep32iTcuQsN3NUMYNIhyBZOfffXyS6r1/jKmvlnNQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1736267079; x=1736353479; bh=3+/XHKlm0uDWaGNf90vFoVIJ7tDwFWEFaxq
	H+12MDaI=; b=ITI393vwW+TCUpi3M/bOvD56LCvDfpnRjuKb//ChvuTYV0WGLOB
	5YuO8E/UPW0NTF7NEAkcTP2jj5LlzU8lMBYahuwSrd7j9DdOS05lUuIniegWsyUv
	vaJwf4RS51bJ02sFBb70r84CcLX4UqQ2Hp2rD2G6HYwuCb81yPiAjBNYHAC0Voyz
	CpJ+J7kC+5UK8syPswP1YaDqpojfeHIKz0UAVfvaSMWbKqW49mgMDzVKZb5OALLO
	zocXCBRwCycIoIFL2WVBoCoNu0kj9CPPqmAV+wIQSMtG9IldrEbnzU5dYVSY+ncX
	cIWdiqnp6dJxcgSKk6atDcD3GzF8a3oIkVw==
X-ME-Sender: <xms:RlV9Z9SJYKjh6p5FdooEkexQpJ-UaY4KCxTinCCXQcS0t-nV8qTTCg>
    <xme:RlV9Z2xDVZwHUVbqCk76FvffJqFE-HWzYIC0oxQC_45ZjHkfsNeZzX4k_P188AVEe
    0A_h8lhleyE8dhVJt4>
X-ME-Received: <xmr:RlV9Zy0V0fHkJpDBnfWkESqpVkabgs_U2RgLySVB0mUdXff5bAC0uBQaIg4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefuddrudegvddgkeeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
    rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
    htshculddquddttddmnegfrhhlucfvnfffucdlfeehmdenucfjughrpeffhffvvefukfhf
    gggtuggjsehgtderredttddunecuhfhrohhmpefrrghtrhhitghkucghihhllhhirghmsh
    cuoehprghtrhhitghksehsthiftgigrdighiiiqeenucggtffrrghtthgvrhhnpefgkefg
    vdevgeeukedvgeegtddvjeevgedtffdvfeeiudfhteelvdfgvdduudffjeenucffohhmrg
    hinhepghhithhhuhgsrdgtohhmnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghm
    pehmrghilhhfrhhomhepphgrthhrihgtkhesshhtfigtgidrgiihiidpnhgspghrtghpth
    htohepledpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtoheprghnughrvgifsegtohgu
    vggtohhnshhtrhhutghtrdgtohhmrdgruhdprhgtphhtthhopeguvghvihgtvghtrhgvvg
    esvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphhtthhopehlihhnuhigqdgrrhhmqdhk
    vghrnhgvlheslhhishhtshdrihhnfhhrrgguvggrugdrohhrghdprhgtphhtthhopehlih
    hnuhigqdgrshhpvggvugeslhhishhtshdrohiilhgrsghsrdhorhhgpdhrtghpthhtohep
    lhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoh
    eprhhosghhsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehkrhiikhdoughtsehkvghr
    nhgvlhdrohhrghdprhgtphhtthhopegtohhnohhrodgutheskhgvrhhnvghlrdhorhhgpd
    hrtghpthhtohepjhhovghlsehjmhhsrdhiugdrrghu
X-ME-Proxy: <xmx:RlV9Z1Dea5_OSCTwNOJegcT-Z_vLR8l8RdK9CPdJhoLJqBCVyjSFAg>
    <xmx:RlV9Z2hMrViWT7lcy3j733YtpkOOuTnZDkjM7oLF626LnPPngbvUIA>
    <xmx:RlV9Z5qUNZX4Dq7JQiY3ALEDtQuw5mB06Ccqs-LHH_sWmVf0PXMzBQ>
    <xmx:RlV9Zxgz6Kc0utIRFErPCP6RuC_bEZlTNh1mDGyh8FgSllnibUs1vQ>
    <xmx:R1V9ZxMzdSuo3mUY3FpoR03yjUr-RLfJGpb8vl1jiFv9-b-_QoNWwA-I>
Feedback-ID: i68a1478a:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 7 Jan 2025 11:24:38 -0500 (EST)
Date: Tue, 7 Jan 2025 11:24:37 -0500
From: Patrick Williams <patrick@stwcx.xyz>
To: Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>
Subject: Re: [PATCH] ARM: dts: aspeed: yosemite4: adjust secondary flash name
Message-ID: <Z31VRZg2LTd36S4n@heinlein>
References: <20241218212458.3050775-1-patrick@stwcx.xyz>
 <e3279e0c41259f165a0cde0195b196f416ac566a.camel@codeconstruct.com.au>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="PAVj/NgUE1LkrRTU"
Content-Disposition: inline
In-Reply-To: <e3279e0c41259f165a0cde0195b196f416ac566a.camel@codeconstruct.com.au>


--PAVj/NgUE1LkrRTU
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 07, 2025 at 03:44:04PM +1030, Andrew Jeffery wrote:
>=20
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0status =3D "okay";
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0m25p,fast-read;
> > -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0label =3D "bmc2";
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0label =3D "alt-bmc";
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0spi-rx-bus-width =3D <4=
>;
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0spi-max-frequency =3D <=
50000000>;
> > =A0=A0=A0=A0=A0=A0=A0=A0};
>=20
> I'm hitting conflicts (?) when I apply this on top of[1]. Do you mind
> rebasing it?
>=20
> [1]: https://github.com/amboar/linux/tree/for/bmc/aspeed/dt

Sure.  It looks like someone elsewhere changed the spi-rx-bus-width
which is causing the conflict.  I'll resent a rebase.

I'd like this backported to the openbmc tree also.  Not sure which
version is best for that tree right now.

--=20
Patrick Williams

--PAVj/NgUE1LkrRTU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEBGD9ii4LE9cNbqJBqwNHzC0AwRkFAmd9VUQACgkQqwNHzC0A
wRnm6Q/9HIRQVMEheGRvQkFPPiZna4IbkT/Z2CMi7dI/wcwY2Pq3IMVZEBpuUGha
XE1lgC0wJUgeNRMZtR/FlrTOz5PMMhPyfZ6HuqmnZtxp9Gn6ABnIJA8VeTIVx1Px
immzzeMOgIFBX5Fa882qv3Dt/gdES6OK0Atz/iNTml/wBpXgEkfJRglGfzoKvZQU
L4RSg/97uRmMFjfuwExu9uqRcx6Dm9KRaCyLxnPphyeMYJh3ZDMD8O6FzEuq7IWA
20x0LwtNkLcRXeFCh35qtUpHeXUsAKrieTqCv4B2MvLH3ULHUoOYQEiyjsNl4/nV
rip++J+YuLli3l4ASsO3Q7nO5LDN8aFZWcN75KGhfADizDLx/mABSvVIgi4TVKC4
oaMiGylQJPtNeylH0Q1M3c7Bxiu6ZkzQrZwxyo9vhrxpSLYdXWLj3lLAlxkr1kJE
JJelTjLSaq6hrYElLRS52h1/uGa/PlRIil2LJ+y8kHRaAkD4XAj2+tyhNiFUaOww
A7XQCQhzkbxpdt3Sx9BkK1O9jUo+B9xQNxU4jVutVK89gz9o3vFgCRG7D+LTxxZP
6+2oNprwRqivfZxpO4fX1CtlXc1oP2AZax0kvwyX9mHlWiIpKQz+fzfoQRz8Nx6W
ZVbOW7hAH2n18B0fmCyuqcuMGAk/bDiSJAWcPON42gfXteuRHHc=
=KDov
-----END PGP SIGNATURE-----

--PAVj/NgUE1LkrRTU--

