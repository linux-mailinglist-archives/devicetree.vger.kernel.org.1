Return-Path: <devicetree+bounces-304438-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cB0PJ0fGGWoIzAgAu9opvQ
	(envelope-from <devicetree+bounces-304438-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 19:00:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CB8006060CB
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 19:00:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 41BFC301C692
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 16:49:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 406C43451AA;
	Fri, 29 May 2026 16:49:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HYvhkWub"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99F9F3F39F2;
	Fri, 29 May 2026 16:49:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780073373; cv=none; b=OmIfUyHMzFLIAlnf+/pDsJUMYbdgLokz1eR383BqwSUAoeUfLps6J4SCxOma9LjYBBTB4xGDmc5ulD5lULbovECQO3/Z/OA+esvjvAgy8SY8TBmFPTAUK7FwM5jX7eqT1n5vzlOmFP2NgMDQsD/1CBKEhBTCNJbMS+a8uOXQLoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780073373; c=relaxed/simple;
	bh=oUpgO5p3xosTXWARfE9/EBDzZAa/N3R5rhN8enXVEjc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dl182J7SPNvMZn/aDBK+DqMYKTTZIiuyBI8tOD3u7QrP/VTdYYSPq6CxO9pw56sFKqdy01HYeQcvsCuNi2nt4LHnk2tNKGXJ1RZBo0F+59bG1fpSuoetTvk2x+xxg6xe5HfhnvX7lRNdwiipTx3i+4vlbBNMccaxnAa2zq/GcC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HYvhkWub; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F4551F00893;
	Fri, 29 May 2026 16:49:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780073371;
	bh=lwfdphpnNxuajP1SfK7U6y2PR8IZ0jJwzcVdnBMd6nA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=HYvhkWubGms+xcSqFGgV+A4XLqcgjZT85EHj4REmJI1M0I2vpo7geJNfgbRBHsgZp
	 whEMQVzUe0sflshBaReOWx8me6PbiLYCAzUz64zRIKjtze6K7Ugb4TEKlBuPG5grM0
	 004X6A+CdTQA2JJFGTdBCSpVSvJYkZdngo1ZdHC6grPPL3iQ5CpQkkdndBBfTfFFmE
	 XmTXmu3ah/6uGIXgrplvlL/KiP+YDKmgoo880MplkZT0JZjhLRIPmPWgcIqsW2+ZAr
	 X+9WYwmpLpWTpPuVHIzOi6WGa01c/ffbVZadih2j80+jqo+1eaAVKt/q20HRb39Vye
	 RVjkIeET8xq3w==
Date: Fri, 29 May 2026 17:49:27 +0100
From: Conor Dooley <conor@kernel.org>
To: Stefan =?iso-8859-1?Q?D=F6singer?= <stefandoesinger@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Brian Masney <bmasney@redhat.com>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH RFC v3 2/5] dt-bindings: clk: zte: Add zx297520v3 LSP
 clock and reset bindings.
Message-ID: <20260529-hypocrisy-clump-abf596df704d@spud>
References: <20260529-zx29clk-v3-0-c7fe54ea388f@gmail.com>
 <20260529-zx29clk-v3-2-c7fe54ea388f@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Itt2pNgWFbhrwYID"
Content-Disposition: inline
In-Reply-To: <20260529-zx29clk-v3-2-c7fe54ea388f@gmail.com>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-304438-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Queue-Id: CB8006060CB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--Itt2pNgWFbhrwYID
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 29, 2026 at 12:52:59AM +0300, Stefan D=F6singer wrote:
> +properties:
> +  compatible:
> +    const: zte,zx297520v3-lspclk
> +
> +  clocks:
> +    items:
> +      - description: Main PLL divided by 5 output from topclk (124.8 MHz)
> +      - description: Main PLL divided by 4 output from topclk (156 MHz)
> +      - description: Main PLL divided by 6 output from topclk (104 MHz)
> +      - description: Main PLL divided by 8 output from topclk (78 MHz)
> +      - description: Main PLL divided by 12 output from topclk (52 MHz)
> +      - description: Main oscillator output from topclk (26 MHz)
> +      - description: Timer oscillator output from topclk (32 KHz)
> +      - description: LSP pclk output from topclk (26 MHz)
> +      - description: TDM wclk mux output from topclk
> +      - description: DPLL divided by 4 output from topclk (122.88 MHz)
> +
> +  clock-names:
> +    items:
> +      - const: mpll_d5
> +      - const: mpll_d4
> +      - const: mpll_d6
> +      - const: mpll_d8
> +      - const: mpll_d12
> +      - const: osc26m
> +      - const: osc32k
> +      - const: pclk
> +      - const: tdm_wclk
> +      - const: dpll_d4
> +
> +  "#clock-cells":
> +    const: 1
> +
> +  "#reset-cells":
> +    const: 1
> +
> +  reg:
> +    items:
> +      - description: IO memory region of the LSP controller

Just make this "maxItems: 1".

Also, sort reg after compatible please.

Same comments apply here about the example and using _END defines.

pw-bot: changes-requested

Cheers,
Conor.

--Itt2pNgWFbhrwYID
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCahnDlgAKCRB4tDGHoIJi
0isBAP992+dVrtcpmiLKLuTlJrY2DJkqogyJJVFoNxdYD6jcXgD/b15qvDe703x3
bPfmU+yYyoX/O3iQkIUsVeePrR0mtwc=
=axFd
-----END PGP SIGNATURE-----

--Itt2pNgWFbhrwYID--

