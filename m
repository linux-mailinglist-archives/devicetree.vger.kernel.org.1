Return-Path: <devicetree+bounces-319621-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5T7/GtnORmr/dwsAu9opvQ
	(envelope-from <devicetree+bounces-319621-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 22:49:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AE43E6FCD50
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 22:49:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="few/yG9Z";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319621-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319621-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5B694301C3C3
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 20:47:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83D7937C903;
	Thu,  2 Jul 2026 20:47:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7151A33C518
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 20:47:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783025270; cv=none; b=eoR25OXIL582cQCW1BlKnmXQDYadPAGJrNMZzUUBX8pfNkOW8J8hkZyPqFk94ZNRiEhLuEFjyPgw9JTwkwSst1zWGn57u50Q17RsR0Ps2oRiwPy3cjI4B6+QqP6x5kIU+l3nauMfSOdvgaEOwtAj+yUSbIfmaX1eR1zeogqvq4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783025270; c=relaxed/simple;
	bh=WbLGaJ6juecABtydjYi/ipJNGyo8ZH3uJlUBoIQXCMI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=td/hx3Rol+KX4+2OYXjsaaVofW+2sidtj8rrjGB8eUS5A/sT7kkyX6R1dAZ6fW9VrUNpszJRN0SM9zHyvqbZqjCncgf4yZNP7IdIBYzs7iaJ+PgwwUc73CkmFEM7W3unAw7VvupBV6/840tnGC14wdjlk93l/V+TDHEtaHtkyi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=few/yG9Z; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C77E61F00A3F;
	Thu,  2 Jul 2026 20:47:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783025269;
	bh=qEIPqSQsO3rUt68zT2qj5SJTjrAil0BehwG/GW7ze7E=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=few/yG9Zvu3lcTO/ngZyFITf/oqqUctoQJMH6jkkz7gcGoQQyWKit5qu2N+6UQ0h2
	 hdirperHnLRsOLbSqqoMYRPLK+ObYD5WUXFoFn9XphWCXkXxXmNp4hUg96XfFUCowP
	 NUttCofrDYtDfxgLlrRs2xZVtzAwhsdf2pm5TGea/YJEDT2lWEx2XQWlJ5zNV4Nz+d
	 IvO2RRWhe7pXrvkOYB4I6QQkiYI0YuuRmCPcRygXiI4+moAmShZWQnNrvTXpLqLKnd
	 iS9suDvbCju6XVhztBlsD8WKyimHbadkoS2tnyaEG27rbpgE7nwGkXQ1ysVQCprhV/
	 +5IeGhAoXITrg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 12/12] ARM: dts: zte: Declare zx297520v3 CRM device
 nodes
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260702-zx29clk-v6-12-377b704f80c4@gmail.com>
References: <20260702-zx29clk-v6-0-377b704f80c4@gmail.com>
 <20260702-zx29clk-v6-12-377b704f80c4@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 02 Jul 2026 20:47:48 +0000
Message-Id: <20260702204748.C77E61F00A3F@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-319621-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:stefandoesinger@gmail.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AE43E6FCD50

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The fixed-clock device tree node names do not follow the standard `=
clock-<freq>` naming pattern, which violates schema constraints.
--

commit c7fd353d8042fade42cfb7f95e466ced8cd9112a
Author: Stefan D=C3=B6singer <stefandoesinger@gmail.com>

ARM: dts: zte: Declare zx297520v3 CRM device nodes

This commit adds device tree nodes for the zx297520v3 topcrm, matrixcrm, an=
d=20
lspcrm controllers. It replaces the placeholder uartclk with fixed-clocks a=
nd
wires up the clocks and resets for the UART devices.

> diff --git a/arch/arm/boot/dts/zte/zx297520v3.dtsi b/arch/arm/boot/dts/zt=
e/zx297520v3.dtsi
> index a16c30a164bb9..e3f698e28b498 100644
> --- a/arch/arm/boot/dts/zte/zx297520v3.dtsi
> +++ b/arch/arm/boot/dts/zte/zx297520v3.dtsi

[ ... ]

> @@ -20,13 +22,16 @@ cpu@0 {
>  		};
>  	};
> =20
> -	/* Base bus clock and default for the UART. It will be replaced once a =
clock driver has
> -	 * been added.
> -	 */
> -	uartclk: uartclk-26000000 {
> -		#clock-cells =3D <0>;
> +	osc26m: osc26m {
>  		compatible =3D "fixed-clock";
>  		clock-frequency =3D <26000000>;
> +		#clock-cells =3D <0>;
> +	};

[Severity: Low]
Will this node name trigger device tree schema validation warnings?

The fixed-clock schema in Documentation/devicetree/bindings/clock/fixed-clo=
ck.yaml
marks arbitrary node names as deprecated and expects the pattern clock-<fre=
q>.
Should this be named clock-26000000 instead of osc26m?

> +
> +	osc32k: osc32k {
> +		compatible =3D "fixed-clock";
> +		clock-frequency =3D <32768>;
> +		#clock-cells =3D <0>;
>  	};

[Severity: Low]
Similarly here, should this node be named clock-32768 to conform to the
fixed-clock schema?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260702-zx29clk-v6=
-0-377b704f80c4@gmail.com?part=3D12

