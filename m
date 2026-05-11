Return-Path: <devicetree+bounces-295677-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MJY5ADcCAmrknAEAu9opvQ
	(envelope-from <devicetree+bounces-295677-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 18:22:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D03A512059
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 18:22:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BF946311973E
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 16:10:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6BEB426D02;
	Mon, 11 May 2026 16:08:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DlVI7c0p"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83A233603CA;
	Mon, 11 May 2026 16:08:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778515726; cv=none; b=KPYmeSCVcoduZP7h3uvIP9iNBuy/ATljMnKmJG3CvBv7+BJUSfvbkodibUgmum6/77gy0FmNFCT6RvBD4sEzYbwQwE2H4RSS74KsF0NtFzOCFS0BpVO1Sv685EPGQr/eELyIQcjpZoTyGCPtZGT3uYBU5jyE4vAMOxNW/gYqS+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778515726; c=relaxed/simple;
	bh=Qv4E7/9NrBwuTFuPVqGOV+kBNzvzoYDJM1BdLuS61qQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lR5gTIY9h+Ld8gPgUzWSlUAymn09aqnMbRSiZW7MsU77mLPR1nxWtozkIfsoDeyZifZ6/Qs9y6j+tSgdEGClQ2cF4Yyex0G+sh57Loqx0lc8beoajEEUeBbwOZrt5ROmjMNcs5957jkrv9b/BO5VfyzvlEckeZEdx+vQvm/lu1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DlVI7c0p; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 06D01C2BCB0;
	Mon, 11 May 2026 16:08:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778515726;
	bh=Qv4E7/9NrBwuTFuPVqGOV+kBNzvzoYDJM1BdLuS61qQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DlVI7c0p0Pd0ofih+/WybETaOmY9/MWrBoNuggO3iQO6wdD3zCXZJCtgZz2JvXoAQ
	 ON1Qrc5zy2sXWorAo3zVpbtqM3EdA27Nehwt2+lYZ+5atGDXlLHQJQRvCubtg5LBHq
	 8+UE20/O48AockJR5UNpK4sMLOt5x8PXQTq0Ir+PvqAzsfIrEdasIq6LAv4xGshlAG
	 NHc2gnW7kaZrj1NcLe9mZqWoGg6rOiVNp0dtDKFWKovftm/e07O7g5g3jGhQ/Lefb8
	 8+TY4QBzbTsmGX25umVXnWempmO9QpcHH43yXRFTodoaGmYI9hfxaJ1hcZ4fyCnr2b
	 pnWI8KSv66RKg==
Date: Mon, 11 May 2026 17:08:41 +0100
From: Conor Dooley <conor@kernel.org>
To: Piyush Patle <piyushpatle228@gmail.com>
Cc: ak@it-klinger.de, jic23@kernel.org, andriy.shevchenko@intel.com,
	dlechner@baylibre.com, nuno.sa@analog.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 01/11] dt-bindings: iio: adc: hx711: clean up existing
 binding text
Message-ID: <20260511-trifocals-embezzle-f30d5c740088@spud>
References: <20260510194947.31997-1-piyushpatle228@gmail.com>
 <20260510194947.31997-2-piyushpatle228@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="s14/rbX9M6NRdwOF"
Content-Disposition: inline
In-Reply-To: <20260510194947.31997-2-piyushpatle228@gmail.com>
X-Rspamd-Queue-Id: 4D03A512059
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-295677-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,microchip.com:email]
X-Rspamd-Action: no action


--s14/rbX9M6NRdwOF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 11, 2026 at 01:19:23AM +0530, Piyush Patle wrote:
> Rewrite the binding description and property text so it describes the
> existing HX711 hardware behavior directly instead of documenting old
> driver implementation details.
>=20
> Also clarify that clock-frequency controls the SCK bit-bang timing.
>=20
> No functional change.
>=20
> Signed-off-by: Piyush Patle <piyushpatle228@gmail.com>
> Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--s14/rbX9M6NRdwOF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCagH/CQAKCRB4tDGHoIJi
0qzhAQDEJiWL4DUL1LhbB7XLNO9ywHYEUYzol2lw4TtTaY6qiAEAgnUZNBNGBTvX
cgJqLJ3Tvpc2UoLLEiAtymHE8WbYiwc=
=un7m
-----END PGP SIGNATURE-----

--s14/rbX9M6NRdwOF--

