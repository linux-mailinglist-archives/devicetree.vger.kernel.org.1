Return-Path: <devicetree+bounces-304007-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0OojIczOGGqunggAu9opvQ
	(envelope-from <devicetree+bounces-304007-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 01:25:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E50E15FB664
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 01:24:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B6759307833F
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 23:17:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 836B83672AC;
	Thu, 28 May 2026 23:17:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QvwNkt5C"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75FA425D530
	for <devicetree@vger.kernel.org>; Thu, 28 May 2026 23:17:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780010273; cv=none; b=OJDqW3+ro5pqHJTMxH+drQ9FWFk6/pfp2gRfwCWRpYnNVBXZTb1KPl5iOcxFZuuVLm5H05Y+7S76cqngXRUafVeEamAJlZ2gAUkIA9dMXVaCMfUddoL2KO2BERNMCfiOyaiJBHT2NI6GIoacLkxKe+UeZJqZdBaXbQFCBe9tH08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780010273; c=relaxed/simple;
	bh=5jr42ekCMLuBA2NPGJkbORzLPcyAQnIlsnEtZLhglmQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=G4//G/Zi3VQHB0cWzARnNZ1T7SgaHT/hmSP5pgZmvJSJmj9o+HtYGlzxxckjDzw7otkaTTF7iCxGQJpnkoN/Hjv2fGghXcun+c9SOzQAMDjEYCY33gOPpkeX/ygWDW2+zNTTrYIKMwkAwuENdwmZTeeOJvRyeE5OrSBn0s3xxQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QvwNkt5C; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2AEB91F000E9;
	Thu, 28 May 2026 23:17:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780010272;
	bh=T+SDPA87vBH2Y48pjwMVbMkc20C6aeBl2aN1ZrhH22E=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=QvwNkt5CUsRPS7kf6qJGfn3OPMqdvmD9ZSDb3k5GlCYLzA3cjkVZRXXGYfQ6g+FKD
	 PGPoVH4cx52xX8oYXrNHgXGPDsa9KdKXWtLr01MVmJOMgHuDd7hPwaZm5tdeBlhcpM
	 9eRGD05HUpE+KIAKzWh7t/nE4CHTHSYZC1QZUY01bP/m8rCuUaSH5FRwskcr/FWarG
	 Qe4O65fjd3bFCNtPDf8AynhbYf0bf58PkaCavTn5j32VrESBxGjW0C0vOM0fg1TJTu
	 YqNEPddZBtwGSYBCbkrehJ2qoAeGmDzopDVOIp0CJdSsUmLdu6SRayyUmaMfz3kZgt
	 d1vY/QU0pUKqw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RFC v3 5/5] ARM: dts: zte: Declare a zx297520v3 clock
 device nodes
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260529-zx29clk-v3-5-c7fe54ea388f@gmail.com>
References: <20260529-zx29clk-v3-5-c7fe54ea388f@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 28 May 2026 23:17:51 +0000
Message-Id: <20260528231752.2AEB91F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-304007-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	DBL_PROHIBIT(0.00)[0.21.92.192:email];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,lists.linux.dev:replyto,f2000000:email,13b000:email,0.0.0.0:email]
X-Rspamd-Queue-Id: E50E15FB664
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Non-generic device tree node names are used for fixed clocks and cl=
ock controllers.
--

commit 5d3cba967fe8db4704b0f5c80efc1117c30b9257
Author: Stefan D=C3=B6singer <stefandoesinger@gmail.com>

ARM: dts: zte: Declare a zx297520v3 clock device nodes

This commit introduces clock device nodes for zx297520v3 and connects the
UART clocks and resets. It also removes the placeholder uartclk node now
that a clock driver is available.

> diff --git a/arch/arm/boot/dts/zte/zx297520v3.dtsi b/arch/arm/boot/dts/zt=
e/zx297520v3.dtsi
> index a16c30a164bb9..9d80740ccf8a4 100644
> --- a/arch/arm/boot/dts/zte/zx297520v3.dtsi
> +++ b/arch/arm/boot/dts/zte/zx297520v3.dtsi

[ ... ]

> @@ -20,13 +21,16 @@ cpu@0 {
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

[Severity: Low]
Does this node name trigger warnings with dtbs_check?

The device tree specification requires generic names for nodes. It looks
like fixed clocks are usually named using the pattern clock-<freq>, such
as clock-26000000.

>  		compatible =3D "fixed-clock";
>  		clock-frequency =3D <26000000>;
> +		#clock-cells =3D <0>;
> +	};
> +
> +	osc32k: osc32k {

[Severity: Low]
Would it be better to name this node clock-32768 to follow the generic
node naming conventions for fixed clocks?

>  		compatible =3D "fixed-clock";
>  		clock-frequency =3D <32768>;
> +		#clock-cells =3D <0>;
>  	};

[ ... ]

> @@ -70,13 +74,46 @@ gic: interrupt-controller@f2000000 {
>  			      <0xf2040000 0x20000>;
>  		};
> =20
> +
> +		topclk: clk@13b000 {

[Severity: Low]
Could this cause validation warnings due to a non-generic node name?

Nodes that provide clocks are generally expected to use clock-controller
instead of clk as their generic name.

> +			compatible =3D "zte,zx297520v3-topclk";
> +			reg =3D <0x0013b000 0x400>,
> +			      <0x01306000 0x400>;
> +			reg-names =3D "top", "matrix";
> +			#clock-cells =3D <1>;
> +			#reset-cells =3D <1>;
> +			clocks =3D <&osc26m>, <&osc32k>;
> +			clock-names =3D "osc26m", "osc32k";
> +		};
> +
> +		lspclk: clk@1400000 {

[Severity: Low]
Similar to topclk above, should this node be named clock-controller@1400000
to adhere to the core device tree schemas?

> +			compatible =3D "zte,zx297520v3-lspclk";
> +			reg =3D <0x01400000 0x100>;
> +			#clock-cells =3D <1>;
> +			#reset-cells =3D <1>;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260529-zx29clk-v3=
-0-c7fe54ea388f@gmail.com?part=3D5

