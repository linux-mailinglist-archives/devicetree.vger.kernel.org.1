Return-Path: <devicetree+bounces-144040-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EF03A2C915
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 17:40:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C900D1882633
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 16:40:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D22518DB0A;
	Fri,  7 Feb 2025 16:39:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="LqUyBY1G"
X-Original-To: devicetree@vger.kernel.org
Received: from out-180.mta0.migadu.com (out-180.mta0.migadu.com [91.218.175.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D57218C00B
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 16:39:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738946382; cv=none; b=HHj8IQ6pziH2pmb/n2Ii+6mwjQlRreF8XGtAchX3OcQ85HfX1SY+E080jXAgKUzfsrvpt27cJ90QRx6iZby7gpbL3+5uBvHfxLTr32MVXgZgivvaa6bemFfFGZYU7sR8sfEDkXClea0TQHA4YUVCVQASGK3NF57WBiCaNe4jZy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738946382; c=relaxed/simple;
	bh=jI4pO4b0XLAg1RZk0RsjsLHeusgbiZ97ogCgxPQ6DNc=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=uEeXpbEiDerIMgMq2IeJvWe97I43b7N2y9SWMyDT8m74xs1GXW3Jz4O/5/XLYQaTnbdalDKJbbXXEDkGzXPtW5SpmYgxPMc31N8gk0y1jlAaaRHjDr7/Kt7rr8uD7gpAjEXB5QbHE9LrX4VKh/UlJnqJ0FEo3ghZKzuE+m+qbv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=LqUyBY1G; arc=none smtp.client-ip=91.218.175.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1738946363;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=X6ih/LrCB0TBhJJrYgx7AsyysXqX50UygCQ/toakb9A=;
	b=LqUyBY1GbZn/An3WfS8y3xh5Eed+fv7L07ZKBn4XkHJSfqZbNbAEiDkMit04JGQEoIKN7+
	HcOakv5YAULbtLNbwq1mt6BS7w/F4AQ3X1RwJZUls+7zraWc9wujHV+0SJ4Xo/HfJTdY3r
	4D+xUs2OAjY5egJXL8IaakoOzVpSb/W2OncgFQB4A1/KFJ5UiUDzPupeaFO1l7vq/8aCHY
	B7cQV431jJJZdRmkRzE+o79AdCyZ9mshz4yVlcXN5HjwtHztbysPQU89F17/RHPvmnyyKT
	RjXi5cvLKjIHZNlz9CAr/07NGKZCRXqddwxnoqi/gObEdS2lDBh1gwPNler/lg==
Content-Type: multipart/signed;
 boundary=7028502f771c4dd1e1fb2bb3c0027617c3fbe8bf2f682fab29e1f35f7093;
 micalg=pgp-sha256; protocol="application/pgp-signature"
Date: Fri, 07 Feb 2025 17:39:10 +0100
Message-Id: <D7MD194WS7UL.FT324IUB9BIA@cknow.org>
Cc: "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Heiko
 Stuebner" <heiko@sntech.de>, "Maximilian Weigand" <mweigand@mweigand.net>,
 "Marek Kraus" <gamiee@pine64.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 "Diederik de Haas" <didi.debian@cknow.org>
Subject: Re: [PATCH v1] arm64: dts: rockchip: add 'chassis-type' property on
 PineNote
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Dragan Simic" <dsimic@manjaro.org>
References: <20250207111157.297276-1-didi.debian@cknow.org>
 <502523554b482a2e10d85d37761932a0@manjaro.org>
In-Reply-To: <502523554b482a2e10d85d37761932a0@manjaro.org>
X-Migadu-Flow: FLOW_OUT

--7028502f771c4dd1e1fb2bb3c0027617c3fbe8bf2f682fab29e1f35f7093
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi Dragan,

On Fri Feb 7, 2025 at 4:01 PM CET, Dragan Simic wrote:
> On 2025-02-07 12:11, Diederik de Haas wrote:
>> Add the recommended chassis-type root node property so userspace can
>> request the form factor and adjust their behavior accordingly.
>>=20
>> Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
>> Link:=20
>> https://github.com/devicetree-org/devicetree-specification/blob/main/sou=
rce/chapter3-devicenodes.rst#root-node
>
> Maybe the Link tag should be converted into a "[1]" reference?
> To me, this is more like a reference for this DT addition.
>
> In general, references can also be placed closer to the contents
> they back up, which isn't possible with Link tags, but of course
> that doesn't matter much in this case.

I generally use the "[1]" format when linking to specific claims, which
I could've done wrt the "recommended". But I considered this a general
background link and then I prefer to do it via a Link tag.

If requested by a maintainer I'll change it ofc, but otherwise I prefer
to keep it as is.

>> ---
>>  arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi | 2 ++
>>  1 file changed, 2 insertions(+)
>>=20
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
>> b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
>> index 2d3ae1544822..3613661417b2 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
>> @@ -9,6 +9,8 @@
>>  #include "rk3566.dtsi"
>>=20
>>  / {
>> +	chassis-type =3D "tablet";
>> +
>>  	aliases {
>>  		mmc0 =3D &sdhci;
>>  	};
>
> The patch is obviously fine.  Thanks for the patch, and please feel
> free to include, regardless of the note above, my:
>
> Reviewed-by: Dragan Simic <dsimic@manjaro.org>

Thanks :)

Cheers,
  Diederik

--7028502f771c4dd1e1fb2bb3c0027617c3fbe8bf2f682fab29e1f35f7093
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZ6Y3MwAKCRDXblvOeH7b
bm7CAQDbpmFpX5ubvZP1t+qtuzyTR6mFwL+PSL0Ss0jlhqiaOwEAmNLs1E37i0+M
8dsgxHWQRk9FxOK7KW6Wd0HRz+Ij1gQ=
=yaBF
-----END PGP SIGNATURE-----

--7028502f771c4dd1e1fb2bb3c0027617c3fbe8bf2f682fab29e1f35f7093--

