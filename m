Return-Path: <devicetree+bounces-15471-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BA8037EA4DE
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 21:33:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 71F24280E9F
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 20:33:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BF2922318;
	Mon, 13 Nov 2023 20:33:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iQvmwOf2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3F49250FD
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 20:33:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 949D9C433C8;
	Mon, 13 Nov 2023 20:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699907582;
	bh=HTy1zq9rC/Vx1G5H3T/5br1lMB5SOiNtHA9DI+oJ31E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iQvmwOf24DxLrWf8qLdj+pX8NI/C42LkWzICY9wd2YUhe+Gt9V2VjlDJWc5PvEggx
	 ZdZi73TwzXFSCdPAm/5pn/QJcIQ/H0OWRxcLq+oMrdW31cn1yIpRQYyzPIb+LKV5gx
	 sAm96JnUke1kpfOuUATieNff1TJvjsFAsUq/eApJBVX67mmEDBIrkZNtTCwyZKSv7Y
	 5F20yS/DIjWLMjz9m7I5SAu0mERyM1BEShadUAfNSP+fuOK9MPXt8kRXnjRVPysc73
	 X5Ye3/QyJFBa7i0Z/TDiuJeuzzP+Y8XGdn1nBbZLl9ew5gh+dLkWiem0eLYl/qZgWU
	 rI+T/mjO4grqg==
Date: Mon, 13 Nov 2023 20:32:58 +0000
From: Conor Dooley <conor@kernel.org>
To: Jim Quinlan <james.quinlan@broadcom.com>
Cc: linux-pci@vger.kernel.org, Nicolas Saenz Julienne <nsaenz@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Cyril Brulebois <kibi@debian.org>,
	Phil Elwell <phil@raspberrypi.com>,
	bcm-kernel-feedback-list@broadcom.com,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Jim Quinlan <jim2101024@gmail.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE" <linux-rpi-kernel@lists.infradead.org>,
	"moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v8 1/2] dt-bindings: PCI: brcmstb: Add property
 "brcm,clkreq-mode"
Message-ID: <20231113-penny-clustered-8c644c62e7b8@squawk>
References: <20231113185607.1756-1-james.quinlan@broadcom.com>
 <20231113185607.1756-2-james.quinlan@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vUWcHB+vBWOxwK3W"
Content-Disposition: inline
In-Reply-To: <20231113185607.1756-2-james.quinlan@broadcom.com>


--vUWcHB+vBWOxwK3W
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 13, 2023 at 01:56:05PM -0500, Jim Quinlan wrote:
> The Broadcom STB/CM PCIe HW -- a core that is also used by RPi SOCs --
> requires the driver to deliberately place the RC HW one of three CLKREQ#
> modes.  The "brcm,clkreq-mode" property allows the user to override the
> default setting.  If this property is omitted, the default mode shall be
> "default".
>=20
> Signed-off-by: Jim Quinlan <james.quinlan@broadcom.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor

--vUWcHB+vBWOxwK3W
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHQEARYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZVKH9gAKCRB4tDGHoIJi
0gKfAQCTvDoteqQb99OtMk4+Gjxaopj2xehQwOiWMPMKuY+wpwD2KmEB+sAA5km0
ipVsb7LLp95HyxiOeMUWdgboJrVRDw==
=AQKG
-----END PGP SIGNATURE-----

--vUWcHB+vBWOxwK3W--

