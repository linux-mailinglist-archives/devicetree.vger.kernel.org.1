Return-Path: <devicetree+bounces-91130-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F401947F91
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2024 18:48:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2948D283800
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2024 16:48:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49D0213AD26;
	Mon,  5 Aug 2024 16:47:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="rBuwlH8i"
X-Original-To: devicetree@vger.kernel.org
Received: from out-170.mta0.migadu.com (out-170.mta0.migadu.com [91.218.175.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F6BD50269
	for <devicetree@vger.kernel.org>; Mon,  5 Aug 2024 16:47:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722876478; cv=none; b=FWGFeTNhptjua2mkfp2z2CcaAVBTbWn0pruQloW91wOG1aL/ULt8gv+xKQeNERL2GjLX+2QW4cRokentarYC/MXlhIOtwElc/uElexcBVqjKxcWB3s5kdjHGVvYYvn1GKRnTT+Xr1R+yr5MptNdDW/F3VOj0i12dnUasprWaoJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722876478; c=relaxed/simple;
	bh=c3SmaiVPPLs2hONey/aNVxcb17+6xPWlsjIFaONzPvU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=CtIsvU3Wnh/gYbMQdA/lKT2taFN6GaeLyjKIkoiMyOZAJlYewGWQjZWrhzxj/T6+l1pIYcWJlgF49xR9sE51eQ41A2bc9GdtqTYBY5hWn34TUPwY9LeB49UeYVMCbWOt3uG2eFuMm3IcQUOaifBwrgJ6RAqnkvU7ley4gYiR70o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=rBuwlH8i; arc=none smtp.client-ip=91.218.175.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1722876473;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=c3SmaiVPPLs2hONey/aNVxcb17+6xPWlsjIFaONzPvU=;
	b=rBuwlH8ij539SFwl2kqiJwb9CKVu8oZU+lMExFW/214tvhq5xCLr/0VR8x6Elj9trYDLR7
	fnCd1Sk67+V6SxxOBIqUopcF242vSBRqJ3kN9wEt5GDazyrCC+W9P8XnkMfW5SrEKbDeoR
	DaVAulBJK9knCcvN5VU44/v/MkCPyG96gK5ZqJ3wkS5XsXo5u7+CaCDbSqG88MH/eHVPbj
	0sBgWVL9FYkIzlUvx+VKBMsVzBUiI7EHfDwP5QHYbqHepneC6fUpsh2YGVp3L37bHBKKfL
	MFnEH/x0R0FbYhvS4zi9LwYfs6JeBdh2y9neRIUcL6e+10WZRy0nY3lHTrPOWw==
From: Diederik de Haas <didi.debian@cknow.org>
To: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: Chen-Yu Tsai <wens@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
 linux-rockchip@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <ukleinek@debian.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Andrew Lunn <andrew@lunn.ch>
Subject:
 Re: [PATCH] arm64: dts: rockchip: qnap-ts433: Simplify network PHY connection
Date: Mon, 05 Aug 2024 18:47:41 +0200
Message-ID: <17406373.mzVfN28SmL@bagend>
Organization: Connecting Knowledge
In-Reply-To: <3723411.CpGBqz00pN@diego>
References:
 <20240304084612.711678-2-ukleinek@debian.org> <1805269.IgJLvJe6uz@bagend>
 <3723411.CpGBqz00pN@diego>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3973342.vqsyN3JNkh";
 micalg="pgp-sha256"; protocol="application/pgp-signature"
X-Migadu-Flow: FLOW_OUT

--nextPart3973342.vqsyN3JNkh
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
To: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Date: Mon, 05 Aug 2024 18:47:41 +0200
Message-ID: <17406373.mzVfN28SmL@bagend>
Organization: Connecting Knowledge
In-Reply-To: <3723411.CpGBqz00pN@diego>
MIME-Version: 1.0

On Monday, 5 August 2024 18:33:52 CEST Heiko St=FCbner wrote:
> Am Montag, 4. M=E4rz 2024, 17:47:22 CEST schrieb Diederik de Haas:
> > On Monday, 4 March 2024 16:46:59 CET Jonas Karlman wrote:
> > > Sorry for not getting back to you sooner, but yes I would check with
> > > phy-mode =3D "rgmii-id". There is also a possible issue with rk gmac
> > > driver in both U-Boot and linux, it always set enable tx/rx delay bit.
> >=20
> > > Please, try with following in U-Boot:
> > No worries :)
> > Will try your suggestions soon, but it's probably better to take that
> > discussion somewhere else to not further clutter up this patch/thread.
>=20
> did you get somewhere with your testing?

Yeah, none of the patches made a difference:

On zaterdag 9 maart 2024 15:51:50 CEST Diederik de Haas wrote:
> I did the following tests based on 2024.01 on my Q64-B:
> - conditional delay: FAIL
> - grf fix: FAIL
> - conditional delay + grf fix: FAIL
>=20
> Then I rebased upon 2024.04-rc4:
> - conditional delay + grf fix: FAIL
> I skipped the other variations, but could do that if that could be useful.

After the 2024.07 release I checked again and it still failed and my=20
workaround (partial revert) still worked, so I reported it to the u-boot ML:

https://lore.kernel.org/u-boot/2086393.9F9pDXStbY@bagend/
--nextPart3973342.vqsyN3JNkh
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZrECLQAKCRDXblvOeH7b
bqo2AQDPZcQ5p+p8UDgZcnwIoRd4WNAVMk4M1rqC2X8ZQ0ZyEAEAyKxpE9PRolVR
sxppaamCj8Ku9ruBwrjxCn5AC5nI7w4=
=jE67
-----END PGP SIGNATURE-----

--nextPart3973342.vqsyN3JNkh--




