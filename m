Return-Path: <devicetree+bounces-257033-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B9868D3B558
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 19:15:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CB81B3016B8E
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 18:15:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 143EF32ED2F;
	Mon, 19 Jan 2026 18:15:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oiX0lcJT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32DB22BEFEB;
	Mon, 19 Jan 2026 18:15:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768846530; cv=none; b=NZnCU3ZqhuKsnPzIYCY5jkAgZkXh+kW0mjP8WDISKugXAb4iJUzOsKaofv60IrXMOl0O1/X5CXho86jZv7UQJsNchoSjG63VUjcJu+RzRydw8wOyfsTZssWtL4qpXa+Vq25x7CZEuacceKMaDy4PLmpyDwRqGuP3xcTsPEFmWA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768846530; c=relaxed/simple;
	bh=DswHpwFLlAo3XU/TyvJ4eNzBGxzjDuAw0CEA/1yQ6sc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VZMp0xqXlHOOlZ8AvKBrmfg1mP4jveBm1ejPx2M5iAYkzKP8smXO9O//2XkfzvKUFSp/VVpYTfo+nQGEJ1nC7Dmg/+beiI+7QNPWHtszDNQESXKroGRSUT0wouIVAw7+RkEHsf3MzbAfPieoDKTQ//lyDQ1y72xWyhU9GTxuVhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oiX0lcJT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CDA91C116C6;
	Mon, 19 Jan 2026 18:15:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768846529;
	bh=DswHpwFLlAo3XU/TyvJ4eNzBGxzjDuAw0CEA/1yQ6sc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oiX0lcJTxHP+p3LGaQ2oQooJY7Eym66S5oKUUveQwlat5+10RkPPq9APRiGiDSBxf
	 19WmV5kG0OnDbSjdDowDNMKkaVAthA43Y1U/h9J9QvHruY2n7AdJYQyPVQFjbRqFUm
	 SQrTw60PGXGbH8+zf7sR+R8wy3vL1Y0Lha6LzDcBSQmDXuGa6X+Gv6rHNrGYrj6vjV
	 0k0+3u9UTIyOw12ozm5bjGoPTJXgu7/MeQWhUiaxQr663rveibWvgZm/GwrEvHIadk
	 2eDl6AOzv5ORPXALD/bJ7HOmOrkCIZEG0iAW/2Pw8OXrfbJvHduNAj4R+aDoYTe6nS
	 QoRLGePXHh1Vg==
Date: Mon, 19 Jan 2026 18:15:25 +0000
From: Conor Dooley <conor@kernel.org>
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH] dt-bindings: regulator: mark regulator-suspend-microvolt
 as deprecated
Message-ID: <20260119-pumice-strung-457786e0efde@spud>
References: <20260119-regulator-binding-v1-1-e55d33b4c3e3@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="SCuHP5woPY2HfmS8"
Content-Disposition: inline
In-Reply-To: <20260119-regulator-binding-v1-1-e55d33b4c3e3@nxp.com>


--SCuHP5woPY2HfmS8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--SCuHP5woPY2HfmS8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaW50vQAKCRB4tDGHoIJi
0re2AQD0Xw9LqiTSMwYD+N0V/sLdbH9GzQpW7qcoYPmSKnfiFwD/arh8QH98J7HO
ELNMFzUtI53p75DaNOD66UCpFX/Wdgg=
=yOEb
-----END PGP SIGNATURE-----

--SCuHP5woPY2HfmS8--

