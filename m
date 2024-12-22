Return-Path: <devicetree+bounces-133344-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B6789FA5BA
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 14:11:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D4E771640EE
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 13:11:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7023818A931;
	Sun, 22 Dec 2024 13:11:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q9ZdRSmu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ADA3259484
	for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 13:11:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734873101; cv=none; b=HN5F1zGavcMKQu+Ev2WpXwZ1WCT+HX5jxU05iXIE1v8ny2PdvsA56PGZOQiBgvj046aKUU/b40W/LHeBAY8l20yd09WpXziDXr9FldUtv1gRZx8Q48JmGTXwWzxtNsMlpnwBrQvcBUiMXRxlAQbcITUhSv/bsyV0Zd4FhFci6cU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734873101; c=relaxed/simple;
	bh=FKAe5kse7ySflMCJRkFpPfXqxTPpttrr2GUL45Mgi3E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BwFbo/a97kL9kRB8tCTyjNvsQrPsjrk3gN0uQ7VC59saokFhOC0mH6jpqJrlonExd9waBMwfs2yLpyrWLwxPrUJKaFWCWgmL9gGfRJtD2oFTmPCOTVl6erWIs5J2uNOw56+iH5GeMdNsN1u1dXiVtZmjyXT7sRm8TUF6xvK4y9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q9ZdRSmu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07341C4CECD;
	Sun, 22 Dec 2024 13:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734873099;
	bh=FKAe5kse7ySflMCJRkFpPfXqxTPpttrr2GUL45Mgi3E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Q9ZdRSmuOQqaqgY7flqvIKQDAiVr/brZk+7capi5EzXBwEMU8X4p9IAfYVZiYGZ2M
	 6uR/dNJSVyVNuKQfzTZPgIo66DPBuGUHf10o5TxQEckau79iMKxoUWeXLjY/dKyNiz
	 WxeZRfO4XPkl9E2jlvdO0uzffLtzGhYwpLEDUjUE4axBqDe7OuiBd9eceNiaASplPC
	 KlznabphS6rRh/NjTmCJF5Meq66pagfQd4liMTlrA+9ej+9e69sII8gbX4F7BUUsGH
	 QrmRXS/FjFB74uXFnMu+5/h/JfNqkOcT/bf9daiE61lDDISxByvXOGkCh0jw02oAC2
	 fF3O5FI9YOX0g==
Date: Sun, 22 Dec 2024 13:11:33 +0000
From: Conor Dooley <conor@kernel.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, maz@kernel.org, tglx@linutronix.de,
	jonas@kwiboo.se, macromorgan@hotmail.com, andyshrk@163.com,
	liujianfeng1994@gmail.com, dmt.yashin@gmail.com, dsimic@manjaro.org,
	tim@feathertop.org, marcin.juszkiewicz@linaro.org,
	michael.riesch@wolfvision.net, alchark@gmail.com,
	sebastian.reichel@collabora.com, jbx6244@gmail.com,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 2/3] dt-bindings: arm: rockchip: Add Radxa E52C
Message-ID: <20241222-wrench-chill-cbe767f2bd90@spud>
References: <20241222030355.2246-1-naoki@radxa.com>
 <20241222030355.2246-3-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Fp1Q5ff1LwMJP26w"
Content-Disposition: inline
In-Reply-To: <20241222030355.2246-3-naoki@radxa.com>


--Fp1Q5ff1LwMJP26w
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Dec 22, 2024 at 03:03:54AM +0000, FUKAUMI Naoki wrote:
> Add devicetree binding for the Radxa E52C.
>=20
> Radxa E52C is a compact network computer based on the Rockchip RK3582
> SoC.
>=20
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>


Acked-by: Conor Dooley <conor.dooley@microchip.com>

--Fp1Q5ff1LwMJP26w
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZ2gQBQAKCRB4tDGHoIJi
0uvTAQCSXWst0Dvvu8rAl+NaSj777VuzcFo05j0UdeB1rUQ1VgD/W8LkajXSX7iK
6MXKbUzZ2OysERW4Y00htFufiEDl6wY=
=3ruU
-----END PGP SIGNATURE-----

--Fp1Q5ff1LwMJP26w--

