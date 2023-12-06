Return-Path: <devicetree+bounces-22422-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AA46E807592
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 17:45:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4A5BFB20A5F
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 16:45:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B1433FE3B;
	Wed,  6 Dec 2023 16:45:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HuR24vb/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E22A21FBC
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 16:45:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6345FC433C7;
	Wed,  6 Dec 2023 16:45:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701881124;
	bh=P064BleAcaaGYhhLYVjCCsTlgPSnJdkpYELnbMw15OQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HuR24vb/Pb1Pbt9Itc3plkdQp03Y6Tb4sEZVG1gMg+gQtRCd1T75ZKfVN5qvVAEAd
	 wNEwEBl/EIKXg0auBxpidjXNEN7qHuzHfAFrvSh8lzbJnNOmLcrvmH39HHncVJ0HNJ
	 X+vjTBpvYbe631vKNhFBsNtEcW3cRsijHQPB8EvSJ9W6s6r2Twnf7UA46q5ek+HNbK
	 6Bd9o2P9svh3VLEtqbX7Rbos43lggpFKy7a2FCRWR1YOPwLUZ9Aa+2cSn8K4eQrPjH
	 Jyo5sSj9fpCF19kvQzYLiFhicP7ImdLYCNGVB5M3a+vmcMvePrxDE930n17fyT4r80
	 l4kaWOls3Jx+g==
Date: Wed, 6 Dec 2023 16:45:18 +0000
From: Conor Dooley <conor@kernel.org>
To: Sia Jee Heng <jeeheng.sia@starfivetech.com>
Cc: kernel@esmil.dk, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	krzk@kernel.org, conor+dt@kernel.org, paul.walmsley@sifive.com,
	palmer@dabbelt.com, aou@eecs.berkeley.edu,
	daniel.lezcano@linaro.org, tglx@linutronix.de, anup@brainfault.org,
	gregkh@linuxfoundation.org, jirislaby@kernel.org,
	michal.simek@amd.com, michael.zhu@starfivetech.com,
	drew@beagleboard.org, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
	leyfoon.tan@starfivetech.com
Subject: Re: [PATCH v3 0/6] Initial device tree support for StarFive JH8100
 SoC
Message-ID: <20231206-sizzling-whoopee-9e2a6755cd05@spud>
References: <20231201121410.95298-1-jeeheng.sia@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mvCQXmL2zJOZIJ4J"
Content-Disposition: inline
In-Reply-To: <20231201121410.95298-1-jeeheng.sia@starfivetech.com>


--mvCQXmL2zJOZIJ4J
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 01, 2023 at 08:14:04PM +0800, Sia Jee Heng wrote:
> StarFive JH8100 SoC consists of 4 RISC-V performance Cores (Dubhe-90) and
> 2 RISC-V energy efficient cores (Dubhe-80). It also features various
> interfaces such as DDR4, Gbit-Ether, CAN, USB 3.2, SD/MMC, etc., making it
> ideal for high-performance computing scenarios.
>=20
> This patch series introduces initial SoC DTSI support for the StarFive
> JH8100 SoC. The relevant dt-binding documentation has been updated
> accordingly. Below is the list of IP blocks added in the initial SoC DTSI,
> which can be used for booting via initramfs on FPGA:

This all seems okay to me. I'll need an ack from Emil though before I
can pick it up.

Thanks,
Conor.


--mvCQXmL2zJOZIJ4J
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZXClHQAKCRB4tDGHoIJi
0nNvAP4yMSbYutcx19sUnchUK4oprRmm58ZSWOHLFlwc38O6IgD6A+QJdSBMlToS
DL2kVUQR6O7/8oliZG8v92JpZ4zIGAM=
=Sstp
-----END PGP SIGNATURE-----

--mvCQXmL2zJOZIJ4J--

