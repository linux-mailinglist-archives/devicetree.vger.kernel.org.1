Return-Path: <devicetree+bounces-306419-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NkR7AaJUIGoD1QAAu9opvQ
	(envelope-from <devicetree+bounces-306419-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 18:21:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D5076639AAB
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 18:21:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=T3RU2WWB;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306419-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-306419-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1891A308C105
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 16:18:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 979913D7D6C;
	Wed,  3 Jun 2026 16:18:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A65D245020
	for <devicetree@vger.kernel.org>; Wed,  3 Jun 2026 16:18:29 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780503510; cv=none; b=cxr0vxB/cNw+1LAy0jFEcLeT0cn+OIZK37H9uVG8JMZtibg0UsDz3YCzzUQE6vroeVnUHjRSbE6zCgIv6dkO86MoVv6z/maYJL6oY9zVBEGFY4HHeJPqHhlufFP2ARuKfYfj+oNVOopetWV8C0raNUIFjVBROXJwWYuaqTQPgho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780503510; c=relaxed/simple;
	bh=FnMY/2X2xH1/8dY8P9AlyT83N8Oh+sno7ZgsmD8SOpk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CTGbz/nKW9EnfKl0cIv2pxxv9FZErCwxwcPpzydW8cadI3XrRyM3n7iygvpCTxM61m4OLzvVu1DgLTiQhOXlxRst28ALrTNNCLfkVsclKQIlnxkKBot+AEtxtOVgiRgAJtnVDlDVv7xhyvUWfZF+08eI3m4rXTP/F2fp2E/iUhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T3RU2WWB; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC6AE1F00893;
	Wed,  3 Jun 2026 16:18:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780503509;
	bh=0dkSNsGhATHahHOIk343lrdaR3d+vmGuRZtKmmqFoCY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=T3RU2WWBBp3wx7cySsyMEVkpuLZW1obU14Qhu+YzMQNM9x9IAJw4JXyzEq+SHDCij
	 amqm8vwggC2lPKJoqcFhKbWbpBaBS89u3GZxIzON14pQfK39YD8gQ9SIM7WEXJtYFX
	 rRW781Op3ArOR2TykVBdS0BP+ku6ohz6+cSFnwXjspKFGpn11lhIHwDsphzyicur6X
	 svO+3EH5STJnTE8aoI61IIOgPtA/34/fwoC5Yu92ycy6XICt4tibwO69YGtupRqYyk
	 qr3DYudwGwsHQeo0e8Y36fEs7O5g+mg5sBFweJe/BmMZj72O/n25kvjeoCeQUPEDMY
	 z5vaKPVYZNqNQ==
Date: Wed, 3 Jun 2026 17:18:24 +0100
From: Conor Dooley <conor@kernel.org>
To: Joel Stanley <joel@jms.id.au>
Cc: Paul Walmsley <pjw@kernel.org>, Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Anup Patel <anup@brainfault.org>, Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Nicholas Piggin <npiggin@gmail.com>,
	Michael Ellerman <mpe@kernel.org>,
	Drew Fustini <fustini@kernel.org>, linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 3/7] dt-bindings: riscv: cpus: Add Tenstorrent Ascalon
Message-ID: <20260603-freeload-mammary-a9ffe25027a5@spud>
References: <20260603074222.593243-1-joel@jms.id.au>
 <20260603074222.593243-4-joel@jms.id.au>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="IdNJvVaQ8NO6e5lM"
Content-Disposition: inline
In-Reply-To: <20260603074222.593243-4-joel@jms.id.au>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-306419-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_RECIPIENTS(0.00)[m:joel@jms.id.au,m:pjw@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:palmer@dabbelt.com,m:anup@brainfault.org,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:npiggin@gmail.com,m:mpe@kernel.org,m:fustini@kernel.org,m:linux-riscv@lists.infradead.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,dabbelt.com,brainfault.org,eecs.berkeley.edu,ghiti.fr,gmail.com,lists.infradead.org,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp,spud:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D5076639AAB


--IdNJvVaQ8NO6e5lM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 03, 2026 at 05:12:15PM +0930, Joel Stanley wrote:
> Add Tenstorrent Ascalon microarchitecture and the Tenstorrent Ascalon-XG
> core.
>=20
> Signed-off-by: Drew Fustini <fustini@kernel.org>
> Signed-off-by: Joel Stanley <joel@jms.id.au>

Same here.
pw-bot: changes-requested

> ---
>  Documentation/devicetree/bindings/riscv/cpus.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Document=
ation/devicetree/bindings/riscv/cpus.yaml
> index 5feeb2203050..2a57bd14569e 100644
> --- a/Documentation/devicetree/bindings/riscv/cpus.yaml
> +++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
> @@ -75,6 +75,11 @@ properties:
>                - sifive,x280
>            - const: sifive,rocket0
>            - const: riscv
> +      - items:
> +          - enum:
> +              - tenstorrent,ascalon-xg
> +          - const: tenstorrent,ascalon
> +          - const: riscv
>        - const: riscv    # Simulator only
>      description:
>        Identifies that the hart uses the RISC-V instruction set
> --=20
> 2.47.3
>=20

--IdNJvVaQ8NO6e5lM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaiBT0AAKCRB4tDGHoIJi
0t2fAP0SOH4/qoVR+yCPstssQkqd3ER8ROudAzs7kQg849IOyQD9Ft3kytAqIQto
X9BuoS8YKaqsNEy6B9lDTjX3yAXq/go=
=GqXK
-----END PGP SIGNATURE-----

--IdNJvVaQ8NO6e5lM--

