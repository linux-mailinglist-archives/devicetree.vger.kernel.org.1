Return-Path: <devicetree+bounces-194184-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 05774AFD076
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 18:19:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E07C91887DFB
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 16:19:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD4142DC321;
	Tue,  8 Jul 2025 16:19:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="CnRmQdi4"
X-Original-To: devicetree@vger.kernel.org
Received: from out-173.mta1.migadu.com (out-173.mta1.migadu.com [95.215.58.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79AD6155757
	for <devicetree@vger.kernel.org>; Tue,  8 Jul 2025 16:18:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751991541; cv=none; b=h9DjeCa5A7Yd6/t/z8uJb+kHY3l6czliia6Fu1bM4F6iGY2ykUpB/PZLmM1clrziRWlRkwsrajFHzU59ZY9v+nMSPhUUjxlHWfLSsZfUNzbjac78+n6hkieabKOtmqHgD/sIEiEUO6icGYqkUZsizrH7z2sr2kxkAecznV21cRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751991541; c=relaxed/simple;
	bh=sdG24AuZn/VsF3gt/CiY9efOJv3OeCP61swZV3gNfjU=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=jN1HM/yMSmm8JMbj0flYUxPzxtKoBUjFledIud0eOljg6YlMvxUolZFXKFNDQhmUBGsuvBkDwPEIje3pzEkqk/dBodESicvddTMthv7mweZMZbXpVmEh+2LRfoVvWh29g/KFxtTazeo1M+0TyWY0yvi2Yi9D5+aCY17GAfXr/Fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=CnRmQdi4; arc=none smtp.client-ip=95.215.58.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1751991527;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=hNKNmRm8BHgY68ixe0cW33FC78NWI3s3JD5EkfbcAnM=;
	b=CnRmQdi4cSroZwkPcPitp9tu0AJiJLrfSeiLIvjM3gtktzHGFh2LKoJ2uPGHOMitoci+NT
	izjdJAdO8XsYRo+Oq3GiwuSVTdz5QiGEmlHTT3NbvtPSkdcCjkuTGvS8G4NgHykAvjC1k6
	r7WqYnBroHENGNyVpHFRxYEw8NPuICTdVRmslC96Z555632VQriE1S1WiemxOiFi4LBu3Y
	bZnthcTUCuBsuQ3Sc4j+y9g6Z01ujzgZfOwjViV+/K+cmgmkqSox4U0fak4Pvsxg4yNssq
	gHJZP7fkEfND4RoZyHliHAhRUEkXCTAVep365DtENGVRDPoKzKyBY9u5GtwXlA==
Content-Type: multipart/signed;
 boundary=b3514f8fd3e86b6532e5c7ea08104d2f83e4033e68a03e67e98b1ae5f2a0;
 micalg=pgp-sha512; protocol="application/pgp-signature"
Date: Tue, 08 Jul 2025 18:18:32 +0200
Message-Id: <DB6T5PTAYT5J.3OYZYN2OZ01EC@cknow.org>
Cc: "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>, "Dragan Simic"
 <dsimic@manjaro.org>, "Quentin Schulz" <quentin.schulz@cherry.de>, "Johan
 Jonker" <jbx6244@gmail.com>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 03/10] dt-bindings: display: rockchip,dw-mipi-dsi:
 Drop address/size cells
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Rob Herring" <robh@kernel.org>
References: <20250629123840.34948-1-didi.debian@cknow.org>
 <20250629123840.34948-4-didi.debian@cknow.org>
 <20250708154728.GA401802-robh@kernel.org>
In-Reply-To: <20250708154728.GA401802-robh@kernel.org>
X-Migadu-Flow: FLOW_OUT

--b3514f8fd3e86b6532e5c7ea08104d2f83e4033e68a03e67e98b1ae5f2a0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Tue Jul 8, 2025 at 5:47 PM CEST, Rob Herring wrote:
> On Sun, Jun 29, 2025 at 02:34:44PM +0200, Diederik de Haas wrote:
>> When the dw-mipi-dsi binding was initially added in commit
>> a20d86e7f964 ("Documentation: dt-bindings: Add bindings for rk3288 DW MI=
PI DSI driver")
>> the #address-cells and #size-cells were added as required properties.
>>=20
>> When the binding was converted to yaml format in commit
>> 0dac2102cf6b ("dt-bindings: display: rockchip: convert dw_mipi_dsi_rockc=
hip.txt to yaml")
>> those properties were demoted to optional and removed from the binding
>> example.
>>=20
>> As for the compatibles:
>> - rockchip,px30-mipi-dsi      removed in this patch set
>> - rockchip,rk3128-mipi-dsi    never used
>> - rockchip,rk3288-mipi-dsi    added (invalid); later removed [1]
>> - rockchip,rk3399-mipi-dsi    removed in this patch set
>> - rockchip,rk3568-mipi-dsi    never used
>> - rockchip,rv1126-mipi-dsi    proposed (invalid); never accepted [2]
>>=20
>> [1] 282e2e078ba5 ("ARM: dts: rockchip: Remove #address/#size-cells from =
rk3288 mipi_dsi")
>> [2] https://lore.kernel.org/all/20230731110012.2913742-12-jagan@edgeble.=
ai/
>>=20
>> The #address-cells and #size-cells are useful (and required) in the
>> ports node and for panel(s), but those properties are declared in their
>> schemas already. Now that there are no remaining users, remove these
>> properties from the Rockchip specific extensions of the Synopsys
>> DesignWare MIPI DSI host controller.
>
> The change is fine, but your reasoning is flawed. These properties are=20
> used if you define DSI devices on the "DSI bus" where the address of the=
=20
> child devices are the DSI virtual channel. Often though that's just 0=20
> and not really used, so you don't need it.=20

Thanks for the explanation :-)

> The change is fine because these properties are defined in=20
> dsi-controller.yaml, so specifying them here is redundant.

Indeed. Will fix in the next version.

Cheers,
  Diederik

>>=20
>> Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
>> ---
>>  .../bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml     | 6 ------
>>  1 file changed, 6 deletions(-)
>>=20
>> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip=
,dw-mipi-dsi.yaml b/Documentation/devicetree/bindings/display/rockchip/rock=
chip,dw-mipi-dsi.yaml
>> index ccd71c5324af..0881e82deb11 100644
>> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mip=
i-dsi.yaml
>> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mip=
i-dsi.yaml
>> @@ -58,12 +58,6 @@ properties:
>>    power-domains:
>>      maxItems: 1
>> =20
>> -  "#address-cells":
>> -    const: 1
>> -
>> -  "#size-cells":
>> -    const: 0
>> -
>>  required:
>>    - compatible
>>    - clocks
>> --=20
>> 2.50.0
>>=20


--b3514f8fd3e86b6532e5c7ea08104d2f83e4033e68a03e67e98b1ae5f2a0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCaG1E3QAKCRDXblvOeH7b
bhZ2AQCo4r/8Ze3rjjdZXsSJV6ODrloMV5iLNIJ6E0pWHTCstQD/VCyJ7pDn22ZQ
c22OxrVzh6OdIoJLPwCuPP9zimQoGgc=
=Bkvu
-----END PGP SIGNATURE-----

--b3514f8fd3e86b6532e5c7ea08104d2f83e4033e68a03e67e98b1ae5f2a0--

