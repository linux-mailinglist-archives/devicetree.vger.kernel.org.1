Return-Path: <devicetree+bounces-263829-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +LmnN2p+iWlO+AQAu9opvQ
	(envelope-from <devicetree+bounces-263829-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 07:27:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 59DE910C069
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 07:27:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 41B153006F2A
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 06:27:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED65B2EBBB7;
	Mon,  9 Feb 2026 06:27:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="fM/Zcuj+"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9380A2EB5AF;
	Mon,  9 Feb 2026 06:27:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770618471; cv=none; b=KFpiceAlhInW9DtmiUoCxOCXXCwOsYo51BM/CoIlNkhCpP0mQLMz1K3OyL7vkPP4uDhjZe0iv2O7mXwxj+Y5xmbRR8CO0VLesEW8/NpaQUwzIUz4trInMqdp6go7UvitEtv/a6Rq9iG95y8dMhtWS7JeQhqWNayJ0cBUIbZdd9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770618471; c=relaxed/simple;
	bh=bY7RLc2KYP1B9tgE6iC4Bdr/TEBr1HKxG8Tuy5zCftU=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Z2f7N+lZaTpfT/nh9TB0UnGkSGdieYocZvA89lpABlg4KtJbWQiHe05FXvZqXS3BKIPwMgFJ5A5go+bMrlx44FXl8m5LFzDb0Krc00SsfOyFrDXNh4WBtHeqVdzD9SwU2k+HZo1VxnBlNn4Rxklq7noDicmzc//onIGB6qjXs/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=fM/Zcuj+; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1770618469;
	bh=lDQataT0zQ8ngyYFf1MHoLkS47NJ64fQnpqo9H3fIYk=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=fM/Zcuj+qwUA9e1/tofsoaYdw/mrlVHhUU9ExrbwGMMHBzvE3x9Nm97uWlO8gwXZC
	 6YLxpqX2XTpOxsQMXGx5CXLeKy8ShBpJn9uum3BD/IzuSUqEF6K+bUC8fVJeS53zbu
	 r49N9s6XT4AbFUFuE78LYRhDBAlSnOzgySEW8+HtjMWOhBU6hduVoPfe8EYS4r5WLu
	 zv0nrRnjaYWMLGCf0uYzbmMzBjb9VqAgoCBgatc8eLmtDfSHMZQpjLohQLU8GMIFHC
	 M9lgHxnalARjf0qA442GGXDU2kdC6ZKlOMXg6MKVk42a2rNYx0oUFRI01n/jKJjCwo
	 fzw5ckvZr2Fmw==
Received: from [192.168.68.117] (unknown [180.150.112.60])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id E27E5602DE;
	Mon,  9 Feb 2026 14:27:48 +0800 (AWST)
Message-ID: <62b7557d7af89742d142c1c8d317b8fa14f7ba24.camel@codeconstruct.com.au>
Subject: Re: [PATCH v4 6/7] ARM: dts: aspeed: yosemite5: Add PDB IO expander
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Kevin Tung <kevin.tung.openbmc@gmail.com>, Rob Herring
 <robh@kernel.org>,  Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Joel Stanley	 <joel@jms.id.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, Amithash
 Prasasd	 <amithash@meta.com>, Kevin Tung <Kevin.Tung@quantatw.com>, Ken
 Chen	 <Ken.Chen@quantatw.com>, Leo Yang <Leo-Yang@quantatw.com>, Jackson
 Liu	 <Jackson.Liu@quantatw.com>
Date: Mon, 09 Feb 2026 16:57:48 +1030
In-Reply-To: <20260130-yv5_revise_dts-v4-6-4d924455f3a7@gmail.com>
References: <20260130-yv5_revise_dts-v4-0-4d924455f3a7@gmail.com>
	 <20260130-yv5_revise_dts-v4-6-4d924455f3a7@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[codeconstruct.com.au,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[codeconstruct.com.au:s=2022a];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263829-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,jms.id.au];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.24:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@codeconstruct.com.au,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[codeconstruct.com.au:+];
	NEURAL_HAM(-0.00)[-0.987];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[codeconstruct.com.au:mid,codeconstruct.com.au:dkim,1d:email,0.0.0.40:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 59DE910C069
X-Rspamd-Action: no action

On Fri, 2026-01-30 at 16:20 +0800, Kevin Tung wrote:
> The new hardware design adds an IO expander on the PDB
>=20

What does "PDB" mean? Can you please expand this in the commit message?

>  to support
> fan presence detection and HSC
>=20

What does "HSC" mean? Can you please expand this in the commit message?

>  fault monitoring. So Add the PDB
> IO expander device node to the DTS.
>=20
> The IO expander interrupt is connected to SGPIO92, which was
> previously named ALERT_PADDLE2_SMB_N and not used by the system.
> This pin is now repurposed and renamed to FM_IOE_ALT_N to reflect
> its function as the PDB IO expander interrupt.
>=20
> Signed-off-by: Kevin Tung <kevin.tung.openbmc@gmail.com>
> ---
> =C2=A0.../dts/aspeed/aspeed-bmc-facebook-yosemite5.dts=C2=A0=C2=A0=C2=A0 =
| 21 ++++++++++++++++++++-
> =C2=A01 file changed, 20 insertions(+), 1 deletion(-)
>=20
> diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts b=
/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
> index 524597a81365ef10cd03b67d35eeb88a965cbe0a..48f864b52d1a22b12f8a39ba9=
703a90349ed930d 100644
> --- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
> +++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
> @@ -389,6 +389,25 @@ adc@1d {
> =C2=A0		ti,mode =3D /bits/ 8 <1>;
> =C2=A0	};
> =C2=A0
> +	/* PDB IOEXP */
> +	gpio-expander@24 {
> +		compatible =3D "nxp,pca9555";
> +		reg =3D <0x24>;
> +		interrupt-parent =3D <&sgpiom0>;
> +		interrupts =3D <92 IRQ_TYPE_LEVEL_LOW>;
> +		gpio-controller;
> +		#gpio-cells =3D <2>;
> +		gpio-line-names =3D
> +			"FM_P52V_AUX_FLT_N", "FM_P12V_AUX_PWRGD",
> +			"FM_SLOTX_HSC_FAULT_N_FF", "",
> +			"","",
> +			"","",
> +			"PRSNT_FAN0","PRSNT_FAN1",
> +			"PRSNT_FAN2","PRSNT_FAN3",
> +			"","",
> +			"","";
> +	};
> +
> =C2=A0	power-sensor@40 {
> =C2=A0		compatible =3D "ti,ina238";
> =C2=A0		reg =3D <0x40>;
> @@ -937,7 +956,7 @@ &sgpiom0 {
> =C2=A0	"ALERT_OC_PADDLE2_N","",
> =C2=A0	"ALERT_OC_PWR2_N","",
> =C2=A0	"ALERT_OC_PWR11_N","",
> -	"ALERT_PADDLE2_SMB_N","",
> +	"FM_IOE_ALT_N","",
> =C2=A0	"ALERT_PWR14_SB2_LEAK_DETECT_N","",
> =C2=A0	/*bit48-bit55*/
> =C2=A0	"ALERT_PWR14_SB3_LEAK_DETECT_N","",

