Return-Path: <devicetree+bounces-258609-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EE4rF7JqcmnckQAAu9opvQ
	(envelope-from <devicetree+bounces-258609-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 19:21:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E0FC46C465
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 19:21:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4F6143002FA4
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 18:21:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0820436AB49;
	Thu, 22 Jan 2026 18:21:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fpp9ZlSb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB714376469;
	Thu, 22 Jan 2026 18:21:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769106081; cv=none; b=pT3GnHOg+KT1xxOhLHPXPX+QiE5b/VmsmY4fDt01R1UFivpNsTJB4P++gKaR1Ungv6wjP29QhhLMTo8L0vvhVJDNrPeZow2qqUfgPfF1w+jp2d3enj/y3BFOFp6JBGmwWDhAmWfW4jOohx1c0I5r7/27VWgdUTeuXT7lfwaL50k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769106081; c=relaxed/simple;
	bh=v7hzesg5M6pLls7wfNv9pQA+giMwxRuWJAKqBTncDYc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EHxU/KA9BWopkIorl4pB8sZWVh73ITkgcUSKYSxP1vwZ6UIrk4xwFvsLRBW0Bur1smdWwxiYPNOxFT4uU9b7HSi9Bbu/GEQJmdB0vqTLZuybJy5hhU7Cyjl6+iCZ77WlnAHV9RBK4QGUvoOozbYXLALJqOSYoHxCp8HxeRSYsp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fpp9ZlSb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3819AC116C6;
	Thu, 22 Jan 2026 18:21:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769106081;
	bh=v7hzesg5M6pLls7wfNv9pQA+giMwxRuWJAKqBTncDYc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fpp9ZlSb3pMNYoq1uks8P4YvXLK88umhjAHImaZF5iqj7FUqHL7WAb1tUSPifTtXu
	 EK9J+kpwCRarENaWgekFxwNU6bJm03bdj/IJPEXdTxGoMC0bnrI8EM7PoyOYYkIoX2
	 C6+iaL+WkIqtihQf7mRM5B1TF9Vq6yBNF2SxJI/bVDo5NeHRxWYcHtcldMRwLqDlzV
	 B4vY4qV/lPKn5jHQlwykDz81fxwNelnU1JplZrdiO7a0SU6GwChvAVh0JZ4tdwznMm
	 7NTWJlUUjC5eMaAFGYRewjKasYB0P+by2vciI23GQWoW5fu6Im4ktlMp4dxVjwMZUV
	 FFTEiLwgqrkrw==
Date: Thu, 22 Jan 2026 18:21:16 +0000
From: Conor Dooley <conor@kernel.org>
To: Lukasz Majewski <lukma@nabladev.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: clock: vf610: Add definitions for MTIP L2
 switch
Message-ID: <20260122-unlaced-porthole-1983bc69c03c@spud>
References: <20260122125838.4144700-1-lukma@nabladev.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="l00iTeJ+/QcWECLN"
Content-Disposition: inline
In-Reply-To: <20260122125838.4144700-1-lukma@nabladev.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258609-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E0FC46C465
X-Rspamd-Action: no action


--l00iTeJ+/QcWECLN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 22, 2026 at 01:58:38PM +0100, Lukasz Majewski wrote:
> This patch adds VF610_CLK_ESW and VF610_CLK_ESW_MAC_TAB{0123}
> macros definitions for L2 switch.
>=20
> Those definitions describe clocks for MoreThanIP switch IP block;
> the switch itself and the MAC address lookup table clocks.
>=20
> Signed-off-by: Lukasz Majewski <lukma@nabladev.com>
> ---
>  include/dt-bindings/clock/vf610-clock.h | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
>=20
> diff --git a/include/dt-bindings/clock/vf610-clock.h b/include/dt-binding=
s/clock/vf610-clock.h
> index 373644e46747..b6f7b1745cc2 100644
> --- a/include/dt-bindings/clock/vf610-clock.h
> +++ b/include/dt-bindings/clock/vf610-clock.h
> @@ -197,6 +197,11 @@
>  #define VF610_CLK_TCON1			188
>  #define VF610_CLK_CAAM			189
>  #define VF610_CLK_CRC			190
> -#define VF610_CLK_END			191

If end is modifiable, it is removable. If you need the define for the
driver, please move it there.

pw-bot: changes-requested

> +#define VF610_CLK_ESW			191
> +#define VF610_CLK_ESW_MAC_TAB0		192
> +#define VF610_CLK_ESW_MAC_TAB1		193
> +#define VF610_CLK_ESW_MAC_TAB2		194
> +#define VF610_CLK_ESW_MAC_TAB3		195
> +#define VF610_CLK_END			196
> =20
>  #endif /* __DT_BINDINGS_CLOCK_VF610_H */
> --=20
> 2.39.5
>=20

--l00iTeJ+/QcWECLN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaXJqnAAKCRB4tDGHoIJi
0nypAQDY5SQlU1uhGi7CcqqGaMiVoQxIjKQroq1SW8zQQ1/3ngEAyzZYHEn3UQx+
KDJ6S+VyIapfseYFsdsmzBftzdWGGgE=
=259p
-----END PGP SIGNATURE-----

--l00iTeJ+/QcWECLN--

