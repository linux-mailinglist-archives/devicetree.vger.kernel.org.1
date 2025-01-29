Return-Path: <devicetree+bounces-141688-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 76F40A21FCA
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 15:55:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C1E47161F3D
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 14:55:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 439FF1B4250;
	Wed, 29 Jan 2025 14:55:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="WVkFkryg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 549237E9
	for <devicetree@vger.kernel.org>; Wed, 29 Jan 2025 14:55:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738162509; cv=none; b=QjETEcYRfsIwjjgdvxzHwYbSYpRIJrTTJEilO+/mx1uJlTcfoy9NgIMNExN//KSAnhiG+HWJkwZcml2qv9wPCnfXSjhn4LGpyzX5k2EBy0Eov6haA3+8A6i7/hDU5Y/e9M6A8Z1MCu5wibgrtB0P9BQSYNUC70NVVFW7SZXmVgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738162509; c=relaxed/simple;
	bh=dUDG3V2pcnh4PJKsQs8dXW0ezZosbDC8947hkzBNT9w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=c89glPuQgWQllrrESAEoe/VpcmqCsvn59ys+I5LaV3POa3n+H2Iv2lJ694MPonbJUlyVVzeITcpQelZ5JJoNm65RV1NHAWBR9QxUJxR3GGqceMK++Vbli/7WJQTJk9N7X1WJ5KhXkYCpbiYlEpZs/aWe5usZ7c/xNSYg742FmBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=WVkFkryg; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5d0ac27b412so9224955a12.1
        for <devicetree@vger.kernel.org>; Wed, 29 Jan 2025 06:55:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738162504; x=1738767304; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tRXaUYDpwPpub2ZkUhS7mQik3pW6CZUI57KwH1qopBc=;
        b=WVkFkrygR0iGV6v7XHOZ53xxYpU+0xjrBwWXB4YKRO46dkNROXVpBqgFXyBvSkBaMg
         hOYwmlv27j5DbCxHuut9gpYCWzKe7cTgMa4NIa9K4qS/A8eAshwdZc/jM/5buJHwhhz9
         U1Vi9rOS7qq8SNM4AbsPzSNT+O1O9tuZk94amVQmPdDYl0RNIEGzZFtY4lLDBOprm/ev
         ePhN12we+0zTMuQHKqT3t4Bhkk7OUGBrUg2nCgGJ6dDxSbhGwdwNB+oAYZLP5kgvFOr2
         1pZwUWz/lmPUCUysMsHHarTvIuiOtAURO5BqPVEARVPi3GEfz/CP/uoHlvFHFQ+ZMIlZ
         Wsug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738162504; x=1738767304;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tRXaUYDpwPpub2ZkUhS7mQik3pW6CZUI57KwH1qopBc=;
        b=qCvosuMx9tG+ntamTKF8kt0QfBkrSI+rgUxebQpKettnH9asYE9lycy17lxzMOr1Ua
         98OvDmRv0P9wdEsLC6SMWgbjyWM4yzP5XaIRzwOIl8hh8DHzlGlYbjCskYm/KshXyt0W
         75BniN90R2+O4Ty9rp67L8IVVIjOk5WlFUUaFHubR/3Qt3lowKCDkYv3n6CzJURYyqBm
         9pT+j8TsdawvwgsS1Gk5T+qkzaAioZ1JjRbwxtzA/JG6d6kpglLODoM0jn+RNyuaYCmO
         SSjpayAxsCjc6oV2ZatK233UqfgIHu7lBfC2iZ1tn/ZDz8vc3SFts0iITxm/vejVTETC
         LqMg==
X-Forwarded-Encrypted: i=1; AJvYcCWEUZmh7ujDpTGrnMrJ5pxK+TYfTMLVIDbbZraHBGS8Iht3q5e17dde0op7HOQtzWsuUckSgw2xNyJn@vger.kernel.org
X-Gm-Message-State: AOJu0Yyo586UGWzIJUJ878aRaOGm05FgPfLxN+CjJJ5PoL/x7vb8UVHB
	kI5oWKPf37YzZKWQaWk6B1z/piu3/r2JxMq21rUKmWnMM8TTckr7+mNAjQdcnbI=
X-Gm-Gg: ASbGnctRNpHSSFmOirOCRA66hWL75auGLFzebcoi0dsOXFGha3sog0XywHaNyIQlr6B
	akImWRwqAcbCAWspH0MF/8NuJI/jiyEZQDAVY0cOh2x8lDiB3Lt7L5iIi0Xmwp0dfKfYO0qe7MN
	of3YgTc687n5GR3zECbKbReUXV+ABNtlQzq7gk7/Dmh5oeZ/6EwH5nbVJ0eE8fb6J/r7B81QliX
	Gfr/txlwWxORIMl7TuxgTfpKmXfMbGmKIE5OpwS2NMaG+JbawHhr1+pMtQvFELsiWLMcPPIeso+
	67I4ramn5x2P1isq8KUa
X-Google-Smtp-Source: AGHT+IFer6WhX+yo5tVjXt4tHpAp4l/OJqlHH1muQaQvZOwPDcqkOcj3R7zSbWjFDVcbG92S8yScJw==
X-Received: by 2002:a17:907:3d8d:b0:ab2:c208:732d with SMTP id a640c23a62f3a-ab6cfdbc500mr364867966b.40.1738162504249;
        Wed, 29 Jan 2025 06:55:04 -0800 (PST)
Received: from localhost ([2a02:8071:b783:6940:36f3:9aff:fec2:7e46])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab69c8dc921sm660475066b.10.2025.01.29.06.55.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jan 2025 06:55:03 -0800 (PST)
Date: Wed, 29 Jan 2025 15:55:01 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Dinh Nguyen <dinguyen@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [RESEND PATCH] ARM: dts: socfpga: Add basic support for
 Terrasic's de10-nano
Message-ID: <v24wxcgyv4w4r5wa2i7ljbu365lfgp6yiqeoolpirbqkapl5wj@svzvaim77p6b>
References: <20250128172917.4565-2-u.kleine-koenig@baylibre.com>
 <fa163bab-1461-479d-b149-4e018935ac57@kernel.org>
 <kxdipj2oktcyivl7o7mtyyacqm437jm7dpjihi7e7hcrmll6xb@5dywwnt5wpz5>
 <7bef8677-b002-46bc-822a-16fc975d41b1@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="o4mp4ofu7jn4scqc"
Content-Disposition: inline
In-Reply-To: <7bef8677-b002-46bc-822a-16fc975d41b1@kernel.org>


--o4mp4ofu7jn4scqc
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [RESEND PATCH] ARM: dts: socfpga: Add basic support for
 Terrasic's de10-nano
MIME-Version: 1.0

Hello,

On Wed, Jan 29, 2025 at 01:34:28PM +0100, Krzysztof Kozlowski wrote:
> On 29/01/2025 13:19, Uwe Kleine-K=F6nig wrote:
> > On Wed, Jan 29, 2025 at 10:27:22AM +0100, Krzysztof Kozlowski wrote:
> >> On 28/01/2025 18:29, Uwe Kleine-K=F6nig wrote:
> > I tried
> >=20
> > 	dt-validate -m -u Documentation/devicetree/bindings -p ~/work/kbuild/a=
rm/Documentation/devicetree/bindings/processed-schema.json ~/work/kbuild/ar=
m/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb
>=20
> That's unusual way of running the check, but of course might work.

This is what `make` does when running one of the dt check targets. I
didn't find a way to call this via make for just a single dtb.

> >>> +	soc {
> >>> +		fpga_axi: axi_h2f_lw_bridge@ff200000 {
> >>
> >> Follow DTS coding style. You just sent us something from downstream.
> >=20
> > Indeed this is from downstream. Looking at the matching dt-validate
> > output I guess just "axi@ff200000" would be appropriate?!
>=20
> bus@

ok.

> >>> +			compatible =3D "simple-bus";
> >>> +			reg =3D <0xff200000 0x00200000>;
> >>> +			#address-cells =3D <1>;
> >>> +			#size-cells =3D <1>;
> >>
> >> ranges would be after reg, but they are pointless here, no?
> >=20
> > I thought it's "compatible", "reg" at the start, "status" at the end and
> > the rest in-between in alphabetic order. What is the right ordering?
>=20
> DTS coding style could be clearer here. It exactly says what is the
> first, what is the second and what is the third.

I found Documentation/devicetree/bindings/dts-coding-style.rst now.

> >> Where is the child?
> >=20
> > I intend to add children using dt-overlays. I have a prototype here, but
> > that's still to embarrassing to show.
>=20
> The entire bus is in such case a bit confusing. If you have nothing
> connected here in the base board, does it really exist in FPGA bitstream?

I'm unsure. If I don't load an FPGA image, the machine boots fine but
IIRC accessing the address space results in an error. If I load an FPGA
image, its register space appears at that address. So technically it
might be ok to drop the node, but from a practical POV it's useful to
have it in the board.dtb to not have to create that note in each
overlay.

If that is good enough for you, I'll go with a comment in that node that
tells about the expectation that it will be filled using an overlay.

Best regards
Uwe

--o4mp4ofu7jn4scqc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmeaQUIACgkQj4D7WH0S
/k7ovAf/TsTzdxS7/CurCdb/NxP//rNr99mEWLIwsA6JTYw+gbBTIeeKYpj804bR
PYolN4JxpYDUEjFZIO16/Zc+4grByALz7isl/9DLEAT+4Q/V/tDzpjGavxpq3xU2
8ayyOt0HiM7ruJs8/j/W3hXOtU/Tn7UpzeCQS16I1Lf5DEriG7LcoGTopahyxVFO
namEEu/+WpISucQch9VlBDabTQzHHjtlgSXy99i0iedK+u8gaJ1NRXYdNXRU+WMP
drD38H2DYlz3SFq/t9hn7izqemo8pvXeATreDpVpuYsvEg1u9m1RLna+AtLKrpN7
CDUHakzxu3exWH/9WV70hnpb+RY48g==
=8/x0
-----END PGP SIGNATURE-----

--o4mp4ofu7jn4scqc--

