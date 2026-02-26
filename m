Return-Path: <devicetree+bounces-268978-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EH95Gh2ZoGlVlAQAu9opvQ
	(envelope-from <devicetree+bounces-268978-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 20:03:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B6FE21AE25F
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 20:03:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E3A71308108A
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 18:30:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB4933B52F6;
	Thu, 26 Feb 2026 18:30:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BXonYp9b"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7DE82BCF45;
	Thu, 26 Feb 2026 18:30:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772130642; cv=none; b=SACnwMR6JAW5wSRPnqCwg7MzVDV0F7Y5UtTezN6YeqrabHHXbWmWtmdm28LD+drhYO984+rebfT/FVpnWx5CqrzkFAt7UmwCjoqNmJ+LqbUpZtn7RmBtL1+glya3/NBAdrhaVzcPvOmrWMP87Cr+iKeqVDlFVgqIv+aUo+6sumA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772130642; c=relaxed/simple;
	bh=ooQ6613FOxl28UBORsVNyo3Q4mu19qXN8bOmyNjNBtA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uxnOEm/Qf0ML64SRSMrSkFqhJhwz8cRtsBodD2GF+eH94CpVITeas2vf4FrZ9hHDXJEWWpr/2UokhrGh7S/n23Y7kl2DesfGcsZV2CnjY/kvbeMGrQXTfYIal+t/EVyWpT4csJNo1tv8BLn980zwTyEwT84SyMejGjI3DzZyKEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BXonYp9b; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49DA8C116C6;
	Thu, 26 Feb 2026 18:30:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772130642;
	bh=ooQ6613FOxl28UBORsVNyo3Q4mu19qXN8bOmyNjNBtA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BXonYp9b+kbGFH+NmnmOE5Biw0/YZo8IsUqZjZ7NA9+Bdwc1oQvRscPdyewfD/iuP
	 +evHJeHw+77HI7cE03eyEsNNYQPo3MubFW7mgsyqgOZeZVAV/Kph7CsKtz4jSMAaiZ
	 IURjP1qMjEnBkG5uAJU+Ba6TiA+YQ0JR41iLWnKvznYW6NWrmOGob9O/OYy3wr3K1W
	 LJyTP2WwkMtExQghTG4rE5WjdbvIjD8kOdjn+/gttTtKvI7Z7xHtBY+/k2SuL0PuWp
	 8Doe6Qeceb11kQGFFM2ruBgQRtZEUCreTF7O23YUof6RYVsGVfrM7nxa9XDLUgrYgs
	 EIhKIy6fkHwAg==
Date: Thu, 26 Feb 2026 18:30:37 +0000
From: Conor Dooley <conor@kernel.org>
To: Jiayu Du <jiayu.riscv@isrc.iscas.ac.cn>
Cc: krzk@kernel.org, ulf.hansson@linaro.org, adrian.hunter@intel.com,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	pjw@kernel.org, palmer@dabbelt.com, aou@eecs.berkeley.edu,
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
	gaohan@iscas.ac.cn, me@ziyao.cc
Subject: Re: [PATCH v2 1/3] dt-bindings: mmc: Add sdhci support for Canaan
 k230
Message-ID: <20260226-compress-numeric-8de6b177ab30@spud>
References: <20260226115923.75670-1-jiayu.riscv@isrc.iscas.ac.cn>
 <20260226115923.75670-2-jiayu.riscv@isrc.iscas.ac.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="PTB97KGCvVHNpIBd"
Content-Disposition: inline
In-Reply-To: <20260226115923.75670-2-jiayu.riscv@isrc.iscas.ac.cn>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268978-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email]
X-Rspamd-Queue-Id: B6FE21AE25F
X-Rspamd-Action: no action


--PTB97KGCvVHNpIBd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 26, 2026 at 07:59:21PM +0800, Jiayu Du wrote:

> +    then:
> +      properties:
> +        clocks:
> +          minItems: 5

> +          maxItems: 5

This maxItems is not needed, as 5 is already the max. Drop it if you respin.
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

> +        clock-names:
> +          items:
> +            - const: core
> +            - const: bus
> +            - const: axi
> +            - const: block
> +            - const: timer
> +      required:
> +        - canaan,usb-phy
> +
>    - if:
>        properties:
>          compatible:
> --=20
> 2.53.0
>=20

--PTB97KGCvVHNpIBd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaaCRTQAKCRB4tDGHoIJi
0jmzAQCXtTuc+dTvEFmME0odNPOCKTG7oRRm9zp/zJWTjD4HyAD/ZEMA+g6KeEMY
G32ztbqM/Vz1NbVdTlcr4NC9mRkY0gI=
=Mp5e
-----END PGP SIGNATURE-----

--PTB97KGCvVHNpIBd--

