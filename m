Return-Path: <devicetree+bounces-133881-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F06EE9FC238
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 21:23:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 79469160D1F
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 20:23:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 965AA1CCED2;
	Tue, 24 Dec 2024 20:23:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nzEUXpNF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61784142E76;
	Tue, 24 Dec 2024 20:23:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735071810; cv=none; b=ZOZnRMrlhwEC+ch2qkyc9nddV/L8aV42mnPueTjZ76enCM9IrKGpkOE6H7NdDvW/mE83lflgsbn7FP0OjLVBY8SKo+OVM3NpLu0FWcZsIxQemmxEFRwQb8YgQMY9TaL21Bzkb3FN6DVSl22ZAkRIh/4vE8/HwqSkaUT/5D772ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735071810; c=relaxed/simple;
	bh=EC2aOyKAHM/NGAvJumdbaihXbX/U643UmpylBh9+8+8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Df6oglKfQZd8+cEmUvleHR1jDQvaTsgOLoGwXQahwmxD0xz9h/2XqJGev5cg6iXWxk92lTsfTg+b+FIWhd0/uqWGrzWXJqfnMot+zCBTJdnpoavnbjYoevZwVc1+bQVYTlnmY8gcVMaeMlmNTIxNSXxlE8YrgyfcGpf3bIyiDpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nzEUXpNF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E04B2C4CED0;
	Tue, 24 Dec 2024 20:23:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735071809;
	bh=EC2aOyKAHM/NGAvJumdbaihXbX/U643UmpylBh9+8+8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nzEUXpNFWPsyDZeZT1chG9IH76S8CVzGfAxVvKCap7L3wA9viL9qVEl0LgoF+HdG2
	 mJrXB6U67m/glazwOrOeVgWbl73DronV/I1ej/7Tj703WIMxwJGu8BvtiaRDS2UrbY
	 YQfiY2mSs01D+/0xpTDvlg6/0M4FFAD2ey//9+k28l/WFuLpcLqohxmwiiiiH7XpvD
	 c1VIKTIEuZTr9VwAIw5UcYCRlEczFUWdF66xkP4NihhPXxrlTHmsW8KDldNOVmbj6R
	 8RyI/z3xdOCn/cOOVLGA7j2BfjLuYk3XS5U+CD+C1cWzZNGFPph5v7g7IpCJY6VLfH
	 DpCP+D2YTNLCA==
Date: Tue, 24 Dec 2024 20:23:25 +0000
From: Conor Dooley <conor@kernel.org>
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: mediatek: Drop MT8192 Chromebook
 variants that never shipped
Message-ID: <20241224-darkness-lecturer-e61cc4cc65e1@spud>
References: <20241223101434.2170166-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="kM8DONBKrAlpha1E"
Content-Disposition: inline
In-Reply-To: <20241223101434.2170166-1-wenst@chromium.org>


--kM8DONBKrAlpha1E
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 23, 2024 at 06:14:31PM +0800, Chen-Yu Tsai wrote:
> The Hayato rev5 sku2 and Spherion rev4 variants were designed in
> anticipation of shortages of the headphone codec. This never happened.
> As far as our records show: the variants were never produced or
> shipped, and no such devices were deployed to any lab.
>=20
> Drop them.
>=20
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--kM8DONBKrAlpha1E
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZ2sYPQAKCRB4tDGHoIJi
0h7wAQDuZqhHgxKCjeoyKOA8jPzvU0D+UZF+MTUn612O+Tq5SwD/ebZTuMVlsTwc
gHHtgJeNdCYB/wr/ICsI4IphJ0olgwo=
=FITb
-----END PGP SIGNATURE-----

--kM8DONBKrAlpha1E--

