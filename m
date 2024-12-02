Return-Path: <devicetree+bounces-126056-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 988E59E02B3
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 14:01:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 98C81B2AFC9
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 12:01:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49B8E1FE472;
	Mon,  2 Dec 2024 12:01:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="LiQyTvQw"
X-Original-To: devicetree@vger.kernel.org
Received: from out-188.mta0.migadu.com (out-188.mta0.migadu.com [91.218.175.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0427E1FE46C
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 12:01:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.188
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733140886; cv=none; b=N7uel/HejD2b+8IWtGAAHn7GXrYCHxWI0Ce2xHazEjYADh0wk/SHGVoIJHTBMRax3ffOE5CFJQQTfZ8LJtHjliAlvIM1Yw5zEbF5vSyrllbYATtsinWReC9+2UXOdxZvPNGw2S9QwHWvn3DOfpRxlQJSr7a07lc0fpoJSLXS0ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733140886; c=relaxed/simple;
	bh=PRhhx/rkuQYBeniRsGpTWdYSxZ4tb3wEn5gvZ56ZAlQ=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=hMKtSu+MQOF0eGpGfCKCtwXNgWsrLCk6ALpaQrLrN/CeLXlippSznpdwvHMiih9ZOjyHD6Dgft8Q2medu+EQDxd339n7uF+ZVVKG/RSi6sG3iGf59n1U1EpIVB2GSj7oj58K312oYB2y0oCZl48dmXX7tdkDlgNdWRI5/vS3KzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=LiQyTvQw; arc=none smtp.client-ip=91.218.175.188
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1733140880;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=zE2OmnrpksGvdeKauyPLCFpi8Ev/7hTWSH5TEETlfos=;
	b=LiQyTvQwaQqMmBNU1M5tMte6SZt2JDT2miztkcBeTMXSmwtYLHyROU2fPKNARIVxhHR7SI
	CefFw+TjjmXafVH0t4wJwk2MHYgiMKyET7oiR20SvDhBnEfIU+6dUB9JEHR3TILwV0pkPI
	C4xufc+6oGA7ft1bR0xHYRvhQx/6UxwIzW0g4d0fx5yZWVdNb2L32veMPZH9XLCvq1vqvM
	oU9pzM17CvNQcs65bpHd1YyyjMPuIjn6Re+Rp/l9jeNoAIXw5WaIqxhijbRm3ZOnB9zC0C
	a7VxyLkjR3iCkj/RU7ee+gHWnc1WKb5v5r57Cmt8nY6CIsxW6Nr97Dr17M/6Ng==
Content-Type: multipart/signed;
 boundary=b5f45d1f61fb7924a69af3f0023ad359b7a5d5d310c6ea15f796a8275403;
 micalg=pgp-sha256; protocol="application/pgp-signature"
Date: Mon, 02 Dec 2024 13:01:09 +0100
Message-Id: <D6175VTSP13T.200HWIIHOIDQQ@cknow.org>
Cc: "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Heiko
 Stuebner" <heiko@sntech.de>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH] arm64: dts: rockchip: enable rng on all rk356x
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Marcin Juszkiewicz" <marcin.juszkiewicz@linaro.org>, "Dragan Simic"
 <dsimic@manjaro.org>, "Peter Robinson" <pbrobinson@gmail.com>
References: <20241201234613.52322-1-pbrobinson@gmail.com>
 <302bdae2f4defeefe88ea4018a0be11f@manjaro.org>
 <b50376c7-c5d5-41ae-95ea-e2d68c1cc809@linaro.org>
In-Reply-To: <b50376c7-c5d5-41ae-95ea-e2d68c1cc809@linaro.org>
X-Migadu-Flow: FLOW_OUT

--b5f45d1f61fb7924a69af3f0023ad359b7a5d5d310c6ea15f796a8275403
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Mon Dec 2, 2024 at 11:40 AM CET, Marcin Juszkiewicz wrote:
> W dniu 2.12.2024 o 04:55, Dragan Simic pisze:
>  > On 2024-12-02 00:46, Peter Robinson wrote:
>  >> The rk356x rng is available on both the rk3566 and rk3568
>  >> parts, the IP is all self contained within the SoCs so
>  >> it's enabled already by default on rk3568 so let's enable
>  >> it in the base rk356x.dtsi so it's enabled consistently
>  >> everywhere.
>  >
>  > Please, go through the mailing list threads [1][2] that have led us
>  > to the current state.  To sum it up, it isn't about what's supported
>  > in the two RK356x SoC variants, but about the RK3566's HWRNG being
>  > disabled because the testing showed that it produces unacceptably
>  > low quality of random data, for some yet unknown reason.
>
> So maybe there should be a comment in rockchip/rk3568.dtsi so we would=20
> not get back to it again.

I suggested to put that in the (original) commit message:
https://lore.kernel.org/linux-rockchip/6690040.iosknibmi9@bagend/
precisely because this was quite predictable to happen.

So a +1 on a comment in the dtsi with a link to the discussion in the
commit message.

--b5f45d1f61fb7924a69af3f0023ad359b7a5d5d310c6ea15f796a8275403
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZ02hiAAKCRDXblvOeH7b
bl8ZAQDzAkc1dza7+FMijsFijExJqS8p/Wf3mTBaIcy5txEEmQEAyJoYozFLN/9W
nHDB3oiWH07uU/u4hh5+ih8L8E5J5Qg=
=4tEc
-----END PGP SIGNATURE-----

--b5f45d1f61fb7924a69af3f0023ad359b7a5d5d310c6ea15f796a8275403--

