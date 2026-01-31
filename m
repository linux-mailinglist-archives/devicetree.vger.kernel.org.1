Return-Path: <devicetree+bounces-261479-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id G1ALNZNlfmkPYQIAu9opvQ
	(envelope-from <devicetree+bounces-261479-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 21:26:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F182C3DEF
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 21:26:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BA3BC3019837
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 20:26:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C76FA37418E;
	Sat, 31 Jan 2026 20:26:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hhaaQWW/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0FC72D8DBB;
	Sat, 31 Jan 2026 20:26:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769891214; cv=none; b=OWblrmQOM8CJ7R54iwoAs/bR8GoYk+HoC92/B4AJtIYOs+NWcBgEvegWiix7at/kyFfHQSXfgj4mUp0Wq3/3o3F5X9FYSHU1bNj8gXiKo1wjzkqaj61sNPewmaFgUW2pz0cvjZkVSQuP6CcH/5JF5/xvc6flRnga2qwCcnchyiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769891214; c=relaxed/simple;
	bh=finr/t0IWVErbqezcZg2K/mk2l1/0gJ1JtoOL5FLY9E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=O5wjp864IPYEY322Pe6a+weZV800mZE4qY1JcqYr+4fP07rCZ1aXv+lj44f1LVCqgOcwjK1ORkDyx2nqSP5/Ek9FVQlvBBR1YwMeGpMlDZ/1FeJWjrzvfy5NxIonbxc3HxnEkgmBfA/jIt4+3cQ3OsH5aMKY3wvLqEY6Fv9JxMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hhaaQWW/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7411CC4CEF1;
	Sat, 31 Jan 2026 20:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769891214;
	bh=finr/t0IWVErbqezcZg2K/mk2l1/0gJ1JtoOL5FLY9E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hhaaQWW/Fc8RUzZY2NYOIVNeDuq6S/Gbxr25Udm1XDdfixkW/xAhac/mSMtvNVcsI
	 wfqkVF8C8+vvVg9uRJEKCoZm3n9xGOQ7PEmuWzKt7j7UZcqlNMNO3kv0RL9VRIesAu
	 9Ny/UD/eSh1zV+yGmi4jtT6dpX/pDjJEXJjNnL/lLCKMuhpcWTwE6J/7Rw8+zHgW42
	 qhtpX8v7YFGNPOl44cKcUFGviG1m6lmKPguoHtWjrhfGvPGfNdjRU2PmFlpdsMWsQ2
	 3hbWo3berkkyW03HctonP2wW4z6PPhxz0okCKu9n09S34TsZircKAKHH2yXPWG/NZ0
	 3MCa55bhg8krw==
Date: Sat, 31 Jan 2026 20:26:50 +0000
From: Conor Dooley <conor@kernel.org>
To: Dinh Nguyen <dinguyen@kernel.org>
Cc: miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
	linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Khairul Anuar Romli <khairul.anuar.romli@altera.com>,
	Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: mtd: cdns,hp-nfc: Add dma-coherent property
Message-ID: <20260131-pasty-dicing-4ed7799aa546@spud>
References: <20260131172611.28807-1-dinguyen@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="RRuFemgFGMlzCbXk"
Content-Disposition: inline
In-Reply-To: <20260131172611.28807-1-dinguyen@kernel.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-261479-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,altera.com:email]
X-Rspamd-Queue-Id: 3F182C3DEF
X-Rspamd-Action: no action


--RRuFemgFGMlzCbXk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Jan 31, 2026 at 11:26:11AM -0600, Dinh Nguyen wrote:
> From: Khairul Anuar Romli <khairul.anuar.romli@altera.com>
>=20
> The Cadence HP NAND Flash Controller on supports DMA transactions through
> a coherent interconnect. In previous generations SoC (Stratix10 and Agile=
x)
> the interconnect was non-coherent, hence there is no need for dma-coherent
> property to be presence. In Agilex 5, the architecture has changed. It
> introduced a coherent interconnect that supports cache-coherent DMA.
>=20
> Signed-off-by: Khairul Anuar Romli <khairul.anuar.romli@altera.com>
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>

Why does this v1 have an ack?

> Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
> ---
>  Documentation/devicetree/bindings/mtd/cdns,hp-nfc.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/mtd/cdns,hp-nfc.yaml b/Doc=
umentation/devicetree/bindings/mtd/cdns,hp-nfc.yaml
> index 73dc69cee4d8..367257a227b1 100644
> --- a/Documentation/devicetree/bindings/mtd/cdns,hp-nfc.yaml
> +++ b/Documentation/devicetree/bindings/mtd/cdns,hp-nfc.yaml
> @@ -40,6 +40,8 @@ properties:
>    dmas:
>      maxItems: 1
> =20
> +  dma-coherent: true
> +
>    iommus:
>      maxItems: 1
> =20
> --=20
> 2.42.0.411.g813d9a9188
>=20
>=20

--RRuFemgFGMlzCbXk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaX5ligAKCRB4tDGHoIJi
0uqrAQDJqiDs2z9/vn0uTVoXXdfFJff7Y8B3koUjb48EyO0ErgEAvIy+w4bmoc85
T5+l9F4uA02AbVjF3Jj1hFON6oAokwU=
=e7EK
-----END PGP SIGNATURE-----

--RRuFemgFGMlzCbXk--

