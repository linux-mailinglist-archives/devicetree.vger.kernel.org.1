Return-Path: <devicetree+bounces-263134-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4EmxAbbjhGlC6QMAu9opvQ
	(envelope-from <devicetree+bounces-263134-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 19:38:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 675E8F67B2
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 19:38:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5A2B6300C5A1
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 18:38:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA38E2FF17A;
	Thu,  5 Feb 2026 18:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eWKZv3MH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85CDD2FF14D;
	Thu,  5 Feb 2026 18:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770316714; cv=none; b=Jz9RbKZjIQ68ujZyU9ol61TzRHlwfeVMPQGDUdNsr4zx3GG1keBAL9KES5H2F5IwqVxTCpTBEXqXsLzHPknRaFazLezpf15OrXggfMhAO4qTlbX0rBV2R+OnhoILXyMnGRTcvaMcygozRu5PNPZDwWuh+J8pdwZrXp8ZVyAVFhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770316714; c=relaxed/simple;
	bh=Z3/EUFIPBkDBgo1KcJRDwPkNSK7Re5Pzt/RPh3cikFI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=c9o7vlJOT8HlJUX5b1Sf1sWa+nJKFXKX8tf4nh0AGvzE5dd1BbaTHA1WMKh3W1nNLa209T+Pm/nzcH+8+h/6ro0PDl9HZVhx8GXyDJoZjOJLYLplTmoEDIeQk6/BaNWwFVJXG+SNW2lyZglIQusV0OKxWWYijePZC6ZsnaPp97Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eWKZv3MH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64C9FC4CEF7;
	Thu,  5 Feb 2026 18:38:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770316714;
	bh=Z3/EUFIPBkDBgo1KcJRDwPkNSK7Re5Pzt/RPh3cikFI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eWKZv3MH88RcmZknULJh4qet97sC2EpidQg/I2K8a2msGR/GOPQLsm0sbV63bEFZb
	 eeBr2Ua1A44eBgBXdUtFOY9yS4x8nXOs++eXMHKDMn0RbzBZbwaXdLjcs0HESH44hc
	 sDNUL04GOP1ZFQnTGFSzaDNTn1EiP42F6veUeC8DXmgSBSW4pQQG2xa1taLUqMVQOc
	 8NE1fBechfpAhIST19Do4Yzz6gORjNsn30jluIEPqhEKzLiPdQj30bgv/I+BMivK6J
	 vbvVcx0Ft0Q9o/IhRjoh1+PdZ4p7rb3u0lzYRcypqC7xTjAby88wAf+grSlPZTeTln
	 RADRrNnUpnKsQ==
Date: Thu, 5 Feb 2026 18:38:28 +0000
From: Conor Dooley <conor@kernel.org>
To: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Cc: neil.armstrong@linaro.org, jesszhan0024@gmail.com, airlied@gmail.com,
	simona@ffwll.ch, maarten.lankhorst@linux.intel.com,
	mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
	mani@kernel.org, prabhakar.mahadev-lad.rj@bp.renesas.com,
	dev@kael-k.io, kever.yang@rock-chips.com,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, dianders@chromium.org
Subject: Re: [PATCH v1 1/3] dt-bindings: vendor: add taiguan
Message-ID: <20260205-chewing-taste-ad2d71a9ae18@spud>
References: <20260205154657.3085820-1-yelangyan@huaqin.corp-partner.google.com>
 <20260205154657.3085820-2-yelangyan@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wo/AwQ2PnfLtOFlL"
Content-Disposition: inline
In-Reply-To: <20260205154657.3085820-2-yelangyan@huaqin.corp-partner.google.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263134-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,sntech.de,bp.renesas.com,kael-k.io,rock-chips.com,lists.freedesktop.org,vger.kernel.org,chromium.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 675E8F67B2
X-Rspamd-Action: no action


--wo/AwQ2PnfLtOFlL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 05, 2026 at 11:46:55PM +0800, Langyan Ye wrote:
> Add "taiguan" to the Devicetree Vendor Prefix Registry.
>=20
> Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Doc=
umentation/devicetree/bindings/vendor-prefixes.yaml
> index fc7985f3a549..a0fcd7154ff8 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -1598,6 +1598,8 @@ patternProperties:
>    "^synopsys,.*":
>      description: Synopsys, Inc. (deprecated, use snps)
>      deprecated: true
> +  "^taiguan,.*":
> +    description: Shenzhen Top Group Technology Co., Ltd.

Can you explain where "taiguan" comes from please in your commit
message? Perhaps it is the website url for the company?

>    "^taos,.*":
>      description: Texas Advanced Optoelectronic Solutions Inc.
>    "^tbs,.*":
> --=20
> 2.34.1
>=20

--wo/AwQ2PnfLtOFlL
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaYTjowAKCRB4tDGHoIJi
0kiGAP4pSAM1WL++B47hTeva7d/KgYKz+oS6pstypgMGoSqZ9QEA+VnngdYOgZj4
v0qwAkj70vpkMcuSkZwzzyLJd0OsLAE=
=cDQ9
-----END PGP SIGNATURE-----

--wo/AwQ2PnfLtOFlL--

