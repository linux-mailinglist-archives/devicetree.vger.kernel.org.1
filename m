Return-Path: <devicetree+bounces-273640-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iNNoE75PsGnFhgIAu9opvQ
	(envelope-from <devicetree+bounces-273640-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 18:07:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id BB6C72553C9
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 18:07:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A88B3300F78E
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 17:07:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 087AF3624C4;
	Tue, 10 Mar 2026 17:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zbb7jjwF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9EBF40DFD5
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 17:07:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773162427; cv=none; b=r315CXuO9/+vyu/GnXxGmKdU0CmglrqmGrE1o4sY4z5iOYsMqoboiSr2crqupDIn0neiLpghGjKn1gvsZyDue1A3xWtGapKUZREkx/9FNTwyg1bC28dwrCallgRCaOxAF0Taqp4y0gtimvlvae3xKEb+d/oluc/MvtqBzSdtypo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773162427; c=relaxed/simple;
	bh=q7pbf99+I8vUNFAI20TKd98+Bh5cPQ0Gjl2/ZF/p3so=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jdlYk23tFIdu75djvHvD3uHunT6RAx8WPLh8pRkbdo9GilTOr2g8WDUeMn4N+gXtuLYOH5wheIvYCrTgaAKuFY4tluRokfomV5S1UumpTFK6IpvGmLEckOt6r6a6doRIXkUtWFIeda/dvBnEO0DMphHJrH0KDRUpWwOmcSKptpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zbb7jjwF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EAD66C19423;
	Tue, 10 Mar 2026 17:07:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773162427;
	bh=q7pbf99+I8vUNFAI20TKd98+Bh5cPQ0Gjl2/ZF/p3so=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Zbb7jjwFJ5WnmP3lX5+PqqT6+Z0xxFe2NV2HPyql4F0XtI7uJML6UXgVOGIXn+NZG
	 0KVdrYXjhg9jp+DCtOFlOIh3qY4Z4HxThkWPZqrLCvZDDlZfAJftrzsboyh3U6wy55
	 Hxi/QCx3A2gFtck89QPZJU9vfEYUeFJpbUJnyJ2l660HntvzZfIG/PyC4Y/RVrprZl
	 qUkit6FQUIXttpo2eGE6iSIgfPaiYOImJ9piF6bjNbOgvUHZboZStQh2xw2aGOmrUw
	 HrZq2IEBSvALWueR2eKj1PyFi/k+ucuNToVAK3jBZ8MApADt3C7EjH6CDRc7JpDecR
	 cdq2ej6yqQO3Q==
Date: Tue, 10 Mar 2026 18:07:05 +0100
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
	Christian Marangi <ansuelsmth@gmail.com>
Subject: Re: [PATCH v2] arm64: dts: airoha: en7581: Enable spi nand
 controller for EN7581 EVB
Message-ID: <abBPufvrG8I8UP69@lore-desk>
References: <20250225-en7581-snfi-probe-fix-v2-1-92e35add701b@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mnhLociRa4wDMSFh"
Content-Disposition: inline
In-Reply-To: <20250225-en7581-snfi-probe-fix-v2-1-92e35add701b@kernel.org>
X-Rspamd-Queue-Id: BB6C72553C9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273640-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com,collabora.com,kernel.org];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[4.196.180.0:email];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lorenzo@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,0.137.84.64:email]
X-Rspamd-Action: no action


--mnhLociRa4wDMSFh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> Enable spi controller used for snand memory device for EN7581 evaluation
> board.
>=20
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collab=
ora.com>
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>

Hi all,

it seems this patch has been reviewed by AngeloGioacchino, but it has never
been applied to linux-mediatek tree (or at least I can't find it). It is ma=
rked
as 'New, archived' in patchwork [0]. Am I missing something?

Regards,
Lorenzo

[0] https://patchwork.kernel.org/project/linux-mediatek/patch/20250225-en75=
81-snfi-probe-fix-v2-1-92e35add701b@kernel.org/

> ---
> Changes in v2:
> - Clarify the commit title
> - Link to v1: https://lore.kernel.org/r/20250225-en7581-snfi-probe-fix-v1=
-1-77e4769574e4@kernel.org
> ---
>  arch/arm64/boot/dts/airoha/en7581-evb.dts | 4 ++++
>  arch/arm64/boot/dts/airoha/en7581.dtsi    | 2 +-
>  2 files changed, 5 insertions(+), 1 deletion(-)
>=20
> diff --git a/arch/arm64/boot/dts/airoha/en7581-evb.dts b/arch/arm64/boot/=
dts/airoha/en7581-evb.dts
> index d53b72d18242e3cee8b37c7b1b719d662fd6db8d..cc69f698c27b804953b1bb671=
e128d4401744bf5 100644
> --- a/arch/arm64/boot/dts/airoha/en7581-evb.dts
> +++ b/arch/arm64/boot/dts/airoha/en7581-evb.dts
> @@ -25,6 +25,10 @@ memory@80000000 {
>  	};
>  };
> =20
> +&snfi {
> +	status =3D "okay";
> +};
> +
>  &spi_nand {
>  	partitions {
>  		compatible =3D "fixed-partitions";
> diff --git a/arch/arm64/boot/dts/airoha/en7581.dtsi b/arch/arm64/boot/dts=
/airoha/en7581.dtsi
> index 26b13694091735da7af977e42f8f546d7d5cb078..49c061d38d7860b3b41661072=
3791a7a91edcb69 100644
> --- a/arch/arm64/boot/dts/airoha/en7581.dtsi
> +++ b/arch/arm64/boot/dts/airoha/en7581.dtsi
> @@ -150,7 +150,7 @@ gic: interrupt-controller@9000000 {
>  			interrupts =3D <GIC_PPI 9 IRQ_TYPE_LEVEL_LOW>;
>  		};
> =20
> -		spi@1fa10000 {
> +		snfi: spi@1fa10000 {
>  			compatible =3D "airoha,en7581-snand";
>  			reg =3D <0x0 0x1fa10000 0x0 0x140>,
>  			      <0x0 0x1fa11000 0x0 0x160>;
>=20
> ---
> base-commit: 0092294492fafe79a537915e486576a3d69c9a7c
> change-id: 20250225-en7581-snfi-probe-fix-c325bedded9e
>=20
> Best regards,
> --=20
> Lorenzo Bianconi <lorenzo@kernel.org>
>=20

--mnhLociRa4wDMSFh
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCabBPuAAKCRA6cBh0uS2t
rP1ZAP9kz75TUPNM3K4TxCKoN3dziQZVGLiekwemyNCDMk61hgD/cGH1CQa3sWRw
8uwjHH6ikCDSNHqAVXd8Ck69JVtDRQM=
=Kql2
-----END PGP SIGNATURE-----

--mnhLociRa4wDMSFh--

