Return-Path: <devicetree+bounces-106884-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5287C98C20C
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 17:52:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 083FF1F263AD
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 15:52:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08A951CB30A;
	Tue,  1 Oct 2024 15:52:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FAxyBVjn"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D82E81C8FCE
	for <devicetree@vger.kernel.org>; Tue,  1 Oct 2024 15:52:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727797923; cv=none; b=O/gEfnTIBIeJqg6tGSEFNqteyDYO7Q1X8NK9kyAvbFkRjTgxMhDrZv1CFkdzj+wxa3p1GSntKu5M048SV4gPkbPBb3BMlFLX7kS1WKAmo9v7hLHTRcI4IuYmTbxG0bYbrJ5NnQ18aVRhkejqjEUbX/p1CewnPDQ7TFWqES7DDO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727797923; c=relaxed/simple;
	bh=eHk0oWQRmKLnCyq4uWxhOLN24jzHfHKT8qLLuqVRn7I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eyETHDvwpoB3lF9YIhEAhhBA1lKQg6odWnxmAqgQsxeI6yAmOORGajnT71L6U85F8IOybGkyi/4cUDq2EOiQqGFLsaF16CHOftTlLmQvvcsMhSBztXQMoRsp/xV91LbKVlmgTJ8irXzYgvbw2hVKVr3Pe78yvGC0lr3/ePDT6r0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FAxyBVjn; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1E46C4CEC6;
	Tue,  1 Oct 2024 15:52:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727797923;
	bh=eHk0oWQRmKLnCyq4uWxhOLN24jzHfHKT8qLLuqVRn7I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FAxyBVjnSHOI2haBVsptsCLqdttJ09JaBcF1MybnuEmLXzhuSqR4g8i4PF1akTuNs
	 9YQdKagMDOzLo8QTvRekTsXMEtrZdpPzaEQ5XY4SIKfVF1E++E7BeMhkoFeHjKRjBY
	 JljvGk/yzta3QJKy6K1ceHT6vm9pBCbM+yQaBMUKPGrfJFG9+gqkcOTcjsLR5lXqbn
	 T7Px1Q1Gs1fUoyA9qhdfut2EsLuoG9j42bpbB4Hu8tdLWjflClft6X5OEANTFK/DhQ
	 MXEZJQOCtMq5E4qGYhgGdY6ga724Y6+GnmfKNXBBnzqzK4bOwrSAFuAcUQFxxYjUyD
	 0Y1oB/zcCEJyg==
Date: Tue, 1 Oct 2024 16:51:59 +0100
From: Conor Dooley <conor@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org,
	robh@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Add Powkiddy RGB20SX
Message-ID: <20241001-campsite-clerical-62974e98b124@spud>
References: <20241001154016.87386-1-macroalpha82@gmail.com>
 <20241001154016.87386-2-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="HwkeSh7CTGBJEZNJ"
Content-Disposition: inline
In-Reply-To: <20241001154016.87386-2-macroalpha82@gmail.com>


--HwkeSh7CTGBJEZNJ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 01, 2024 at 10:40:15AM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> Add devicetree binding for Powkiddy RGB20SX.
>=20
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--HwkeSh7CTGBJEZNJ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZvwanwAKCRB4tDGHoIJi
0pXKAQD1q5rY9P+HOAiBqeyGgHyN1E10vDpF1qwIFOrJFH9QLwD/fastHooWwtUs
n4XTkdnuvr/t+Lf0f91/1Cp9zDDf4AI=
=DlE2
-----END PGP SIGNATURE-----

--HwkeSh7CTGBJEZNJ--

