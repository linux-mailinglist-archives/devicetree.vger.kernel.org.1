Return-Path: <devicetree+bounces-317154-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7ZHjKfCQQmps9wkAu9opvQ
	(envelope-from <devicetree+bounces-317154-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 17:36:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 448B66DCC2B
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 17:36:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=hS4o2Ez7;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317154-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-317154-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 93F54306840E
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 15:29:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69ED343CEED;
	Mon, 29 Jun 2026 15:27:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE0D043CEC3;
	Mon, 29 Jun 2026 15:27:43 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782746865; cv=none; b=nkCEVzvqWNW6AMw78VGqleGWZhygu5/KsZuHTg/aboBqQQhbOekaUCf1FwQA/upgJf+ej2Bd/dM1uArh+K6PiqxSxYMg7NgQ+BSddQ/v/mng9XiQ5A+i51Vz7fy23FED1PRoff/0XtkYSwCv2+QkfDByE8SEW/943f9gq2kvOyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782746865; c=relaxed/simple;
	bh=DmUhDjFVA750+wEI0POtq4/a4S2qfMLQyb/VYgkrb6U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FDTIT4CHBBmOJtjqqVb9ORSvlf1yh6EB7DHO5vh3gqaEScyYRSl6VPRu4DfjzJIF3+6ijQhPneR2BYfU2+Wcp5dwhW37jZHVmvew1pL7LIkOIKE3XPZzXJUF3vV9WJgKZYB7ado+sd9ndqZEvDG40h+YqRy7epGWLhZXnFJVJuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hS4o2Ez7; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4CB201F00A3A;
	Mon, 29 Jun 2026 15:27:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782746863;
	bh=orhtP5VNB01XWVqy2adjFRk5D8XLKJ5Xav2QFmRRwSI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=hS4o2Ez7lb7xgHK5v6vbq9e2f7WXez49Q0V3RJkLMlCbZri4QJ3k8TwODxPcDuDdq
	 5srVoXVg8/siwjJQsvu28zjWrMaxKVgMzdkP7aY/yKpyVFcDcSEOovpkjOPAx+25mJ
	 pmtIwAokKuXY/UWN4ULMHa6uOQjAh3ouTu1KZLgVtLcAEzwfHJBBKwxrUIAVhZIWri
	 Qx93atidHTBccncdSerNu5VybqwDor+QKTN6n5fqidN4JaA0rjU1Ead2pm72BzXZk0
	 HOFN5fQB037rPNdP0+BkxiCDanHKYNJedHtc06XOBv1cElUMxlMjYQN6TS/qyOoIg8
	 +16hrUPZZX4TA==
Date: Mon, 29 Jun 2026 16:27:39 +0100
From: Conor Dooley <conor@kernel.org>
To: wangjia@ultrarisc.com
Cc: Xincheng Zhang <zhangxincheng@ultrarisc.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: pci: ultrarisc: add required DP1000
 PCIe clocks
Message-ID: <20260629-caboose-outpour-6e1df34112ef@spud>
References: <20260629-ultrarisc-pci-clk-v1-0-5ea3308fdab3@ultrarisc.com>
 <20260629-ultrarisc-pci-clk-v1-1-5ea3308fdab3@ultrarisc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="DLqYu/eAV647/L1X"
Content-Disposition: inline
In-Reply-To: <20260629-ultrarisc-pci-clk-v1-1-5ea3308fdab3@ultrarisc.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.76 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_RECIPIENTS(0.00)[m:wangjia@ultrarisc.com,m:zhangxincheng@ultrarisc.com,m:lpieralisi@kernel.org,m:kwilczynski@kernel.org,m:mani@kernel.org,m:robh@kernel.org,m:bhelgaas@google.com,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-pci@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-317154-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp,spud:mid,microchip.com:email,ultrarisc.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 448B66DCC2B

--DLqYu/eAV647/L1X
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 29, 2026 at 01:59:50PM +0800, Jia Wang via B4 Relay wrote:
> From: Jia Wang <wangjia@ultrarisc.com>
>=20
> Require the DP1000 PCIe controller nodes to provide clocks and
> clock-names, using the standard DesignWare clock names "core",
> "dbi", and "aux".
>=20
> Signed-off-by: Jia Wang <wangjia@ultrarisc.com>

Probably should have a fixes tag here because the clocks are mandatory
and were missing.
With one,
Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

Thanks,
Conor.

> ---
>  .../devicetree/bindings/pci/ultrarisc,dp1000-pcie.yaml   | 16 ++++++++++=
++++++
>  1 file changed, 16 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/pci/ultrarisc,dp1000-pcie.=
yaml b/Documentation/devicetree/bindings/pci/ultrarisc,dp1000-pcie.yaml
> index 512b935bf5d1..d9d1488e915a 100644
> --- a/Documentation/devicetree/bindings/pci/ultrarisc,dp1000-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/ultrarisc,dp1000-pcie.yaml
> @@ -43,6 +43,18 @@ properties:
>        - description: Legacy INTC interrupt
>        - description: Legacy INTD interrupt
> =20
> +  clocks:
> +    items:
> +      - description: PCIe core clock
> +      - description: Data Bus Interface (DBI) clock
> +      - description: Auxiliary clock
> +
> +  clock-names:
> +    items:
> +      - const: core
> +      - const: dbi
> +      - const: aux
> +
>    interrupt-names:
>      items:
>        - const: msi
> @@ -55,6 +67,8 @@ required:
>    - compatible
>    - reg
>    - reg-names
> +  - clocks
> +  - clock-names
>    - interrupts
>    - interrupt-names
> =20
> @@ -71,6 +85,8 @@ examples:
>          reg =3D <0x0 0x21000000 0x0 0x01000000>,
>                <0x0 0x4fff0000 0x0 0x00010000>;
>          reg-names =3D "dbi", "config";
> +        clocks =3D <&clkc 9>, <&clkc 7>, <&clkc 10>;
> +        clock-names =3D "core", "dbi", "aux";
>          ranges =3D <0x81000000 0x0 0x4fbf0000 0x0 0x4fbf0000 0x0 0x00400=
000>,
>                   <0x82000000 0x0 0x40000000 0x0 0x40000000 0x0 0x0fbf000=
0>,
>                   <0xc3000000 0x40 0x00000000 0x40 0x00000000 0xd 0x00000=
000>;
>=20
> --=20
> 2.34.1
>=20
>=20

--DLqYu/eAV647/L1X
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCakKO6wAKCRB4tDGHoIJi
0ip/AQCVz1Lc3mKC+oyVm1tYc5cCDMlpdYT5sv3lVtOkAfV7AwD9EzD7eXAGbT/c
5swQnBATFbdPJStitu8gs6S7JaA8IgQ=
=KfNt
-----END PGP SIGNATURE-----

--DLqYu/eAV647/L1X--

