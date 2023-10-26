Return-Path: <devicetree+bounces-12147-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E3D6D7D81A0
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 13:16:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7B9BC280C6A
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 11:16:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55BDD286A7;
	Thu, 26 Oct 2023 11:16:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xwk5W6HV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A957C154
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 11:15:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C89B0C433C8;
	Thu, 26 Oct 2023 11:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698318959;
	bh=oS3dDY0VGtcsFofITmhDH6ZXwaHMR6sc41P5kDoJWAw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Xwk5W6HVUYToMhjeU4D3TnNQiXxaTurjTckT0jFvRSuehp4e/frGTIJ5ho1v4u+d1
	 ckUZ2LXIv/jL42IBgff+UWreF1YTF89VTfl3XIvTGdHb/V9sU9sm1rqImMFvj5c979
	 qVyd3h1y8uU9gNeOpxZBXJup4FR6L39xm/zp3qvCXz9tUYp9c52Ry/B5a4fqDLQdOF
	 6KZ37FcVwDaDVt/3FxSem9T3l2FT6zPJbOdXIqELOOK7LWs+ZWXhJDwr2u7SeSHcdL
	 kPXG4k5yloHHZ++ZQ3H+i0FPT1ma00CdIRdEeYsp1fmTKDvRm2EWmq2lqi2Yh9bMww
	 PStpZFqjnJfBA==
Date: Thu, 26 Oct 2023 13:15:55 +0200
From: Wolfram Sang <wsa@kernel.org>
To: Chris Packham <chris.packham@alliedtelesis.co.nz>
Cc: gregory.clement@bootlin.com, andi.shyti@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/2] dt-bindings: i2c: mv64xxx: add reset-gpios
 property
Message-ID: <ZTpKa7R/xxKeCo+z@ninjato>
Mail-Followup-To: Wolfram Sang <wsa@kernel.org>,
	Chris Packham <chris.packham@alliedtelesis.co.nz>,
	gregory.clement@bootlin.com, andi.shyti@kernel.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231024223032.3387487-1-chris.packham@alliedtelesis.co.nz>
 <20231024223032.3387487-2-chris.packham@alliedtelesis.co.nz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rg7y9QorxhhnN2an"
Content-Disposition: inline
In-Reply-To: <20231024223032.3387487-2-chris.packham@alliedtelesis.co.nz>


--rg7y9QorxhhnN2an
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


> +  reset-gpios:
> +    description:
> +      GPIO pin providing a common reset for all downstream devices. This GPIO
> +      will be asserted then released before the downstream devices are probed.

How about renaming this to "bus-reset-gpios"?

Reason: When I read "reset-gpios", then I assume the device itself will
be reset. In this case, the Marvell I2C controller. Some I2C mux devices
and PCA9564 already use the property like I described.


--rg7y9QorxhhnN2an
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmU6SmsACgkQFA3kzBSg
KbbbsA//RDTzz4hpTvLsvq18CuGcOb/fuBgBJrR+n2qbShp3qD/U8WEpIDIsN6f+
e01RCtjocLVQa5hIGwUzP3MC0p8KnYC9XshYj+X1Tt6XSG99WbtoQtd+IZ3Xq9fK
n/1QDALbxdm9M0Tyf+tnJFfC9jbYwm/KtYNCfmFPGNxvNmHkqgbYkqUAIKJOboqo
MRPjmtzXe+Ljj7gg4KCDBEkKXa07m9yaO+2FaA+HLF8cT4lSPY8H4dgpt0HiX4c4
z+YwOWEMEBiD3c7TpglQiulF9rGmzpiTwq6h85ZqxyToIaKOXKg8QxAjjbVQ0MGN
cm4JanI2/E0Uh3TAmruf04gbxYoWtW0dk3qjZ+vbtKtgAkIGsvtVriSQpBVPO9Yw
yoeG4zOUqJ2Bej4zuAIred18IhD3R/CalEh+bHSs8Ss2uW8UaUCcBDGY3MFTEjrE
9voY5WyfY2sKm7a5IQmtYd0IJCZd1ZNQb7z53A6Xut9PBKWFjSshdhl3kb/dWTf6
bvo/jac1u6pa9uX9bG64x3wmlTcbacmJEPeCgEQVUBzJs+wAEZp9uXSYLwKXmq3l
bgZPrqC7ZJaAWzLtkYw1azA0AS1x1DsBCjqqALypU0l3vInZKa5ms6aKvGRxlUEB
3NMK4j90RY66xm7y+QsiZgWgb3cTN3xtItCRNNMINeX6TacyENY=
=IkNz
-----END PGP SIGNATURE-----

--rg7y9QorxhhnN2an--

