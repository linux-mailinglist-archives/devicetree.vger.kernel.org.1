Return-Path: <devicetree+bounces-262765-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oElhCuKHg2kdpAMAu9opvQ
	(envelope-from <devicetree+bounces-262765-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 18:54:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 44385EB418
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 18:54:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C4704302AE27
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 17:49:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09C7234A78D;
	Wed,  4 Feb 2026 17:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RGgwneO6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBAC63491EB;
	Wed,  4 Feb 2026 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770227393; cv=none; b=qZDSiUYB2eSUiFyLOG3j5yiBI93KCD3HRcSpsy4bu6+XB1F7C90YM5ANr3BOfYLZzURkA4QgMZoW0iZ8wbOGHVnHeuJMkKKGz4hLUQ+StEV2OpwlCOxtmVb1RmN7/YilfeBcFuPlOQStX5REiB8usj/+OOPIw4Nlg04FsBhQuG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770227393; c=relaxed/simple;
	bh=3lnDvNg5TpBuQbJTldCFuO+TEQx0ZJwfaT7kWJHY4XY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MJHydai+uAaRsHfkbZIAkduX4in1/UF33Fq7YmjINO+ZRqEqJiYePgSp97rIsnSNX6VyE4QjzaPuo6N4CqHMJFEd/Fzsw5AiLEUDgYAeZUL+n8girrW73+dCz2l23j3WDUHS44p7HSWFLsjnnaJu/h1Pr9j6t/ftkAwKFGFGaF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RGgwneO6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E690C116C6;
	Wed,  4 Feb 2026 17:49:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770227393;
	bh=3lnDvNg5TpBuQbJTldCFuO+TEQx0ZJwfaT7kWJHY4XY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RGgwneO6PbRV/MOZB5p9dqDI90TofB2O32zE/Ijq92iXqv1jVNGTg2RlxsGZUBdWK
	 eXPiI7dZgMvoA/SkNnna9s/u8TNMFnCktZ6kR3vVoEKmGRZZGGkjg4W7SGiakAFDS2
	 dA112C1CdZtzmrRm+v/ceDhzHiQSaOION1wxTUfJDb5EphJHqA2Ca/OwGBCi5fPAJq
	 ROY4bmQG4YyXCWYJ1JjlkH+JYC7szFccPzLw6whCKZXiYe/ZOXvxaZBQ9R3QKBX55N
	 X2vtIpNjpjPiwP9jJRqbjiOkK7qM0MLsNPgQQa/zsZj4z6zwpc8GiJu4yj9wjpt1Da
	 0lmb6DmcQlrFQ==
Date: Wed, 4 Feb 2026 17:49:47 +0000
From: Conor Dooley <conor@kernel.org>
To: Yangyu Chen <cyy@cyyself.name>
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
	Anup Patel <anup.patel@oss.qualcomm.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Charles Mirabile <cmirabil@redhat.com>,
	Lucas Zampieri <lzampier@redhat.com>,
	Thomas Gleixner <tglx@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Mason Huo <mason.huo@starfivetech.com>,
	Zhang Xincheng <zhangxincheng@ultrarisc.com>,
	Charlie Jenkins <charlie@rivosinc.com>,
	Marc Zyngier <maz@kernel.org>,
	Sia Jee Heng <jeeheng.sia@starfivetech.com>,
	Ley Foon Tan <leyfoon.tan@starfivetech.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Alexandre Ghiti <alex@ghiti.fr>, devicetree@vger.kernel.org,
	Jia Wang <wangjia@ultrarisc.com>
Subject: Re: [PATCH v3 2/2] dt-binding: riscv: Clarify the riscv,ndev meaning
 in PLIC
Message-ID: <20260204-cursor-wad-186f59d9c2ab@spud>
References: <tencent_AEBB719FAF49D05B5BDF7118D729463F6405@qq.com>
 <tencent_720A4669773B1EE15EC720869C35C2F0490A@qq.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5qZwyZ7ljpTibS5F"
Content-Disposition: inline
In-Reply-To: <tencent_720A4669773B1EE15EC720869C35C2F0490A@qq.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262765-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cyyself.name:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,microchip.com:email]
X-Rspamd-Queue-Id: 44385EB418
X-Rspamd-Action: no action


--5qZwyZ7ljpTibS5F
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 04, 2026 at 01:21:48AM +0800, Yangyu Chen wrote:
> In PLIC, interrupt source 0 is reserved and should not be used.
> Therefore, the valid interrupt sources are from 1 to riscv,ndev
> inclusive. This commit updates the documentation to clarify this point.
>=20
> Signed-off-by: Yangyu Chen <cyy@cyyself.name>
> ---
>  .../bindings/interrupt-controller/sifive,plic-1.0.0.yaml        | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/sifiv=
e,plic-1.0.0.yaml b/Documentation/devicetree/bindings/interrupt-controller/=
sifive,plic-1.0.0.yaml
> index 388fc2c620c0..df9578bcac89 100644
> --- a/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-=
1.0.0.yaml
> +++ b/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-=
1.0.0.yaml
> @@ -109,6 +109,8 @@ properties:
>      $ref: /schemas/types.yaml#/definitions/uint32
>      description:
>        Specifies how many external interrupts are supported by this contr=
oller.
> +      Note that source 0 is reserved in PLIC, so the valid interrupt sou=
rces
> +      are 1 to riscv,ndev inclusive.

The trm for mpfs says "in the plic, global interrupt id 0 means 'no
interrupt'". That sounds subtly different to me than "reserved", but
/shrug
I think this could just be truncated to "Valid interrupt sources are
1 to riscv,ndev, inclusive.".
Acked-by: Conor Dooley <conor.dooley@microchip.com>

--5qZwyZ7ljpTibS5F
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaYOGuwAKCRB4tDGHoIJi
0pa6AQCwywZTUwL9/gacjMWnPdIFo4Hel12UoD0elnhDgdS3FgEA8GIYZ5djlVCZ
CcGXJzP3PHtS/fu1Sshwx7q1XR5maA4=
=MZ4I
-----END PGP SIGNATURE-----

--5qZwyZ7ljpTibS5F--

