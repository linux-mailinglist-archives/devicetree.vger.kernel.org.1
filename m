Return-Path: <devicetree+bounces-299409-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aCvpALkKC2pO/gQAu9opvQ
	(envelope-from <devicetree+bounces-299409-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 14:48:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BBB456CFDF
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 14:48:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7440D30183FE
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 12:45:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7675C427A10;
	Mon, 18 May 2026 12:44:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="BDt8C0Ok"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFC00436365;
	Mon, 18 May 2026 12:44:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779108286; cv=none; b=BWxprDY0NyA3o0k3FIZxKvJvepFNowYgGJVPsGcRDB3iSOS3F4Wyq9+iOrVZRD9eXxLkSkZ8fsk6I8EVzdkKx9k0P6ylrWvsVofJQy8UFSleOVNjK26V5u6cPLYups9Zx9OxHnlUHSGAf4Bl19kxVyo55oTZQHdiW8HDHc4af20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779108286; c=relaxed/simple;
	bh=a1QtuLaCX+Z5LcqWvJL0M7Pv+lumFDQbf0q6UvPqLyw=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=imTPiNgLmgkd1WLiu6vznnefGVNLGpvI9CjcVr5mmnVRc5QFKWY1BKxhJeJTD4/orY3zIYyQSxTqC6BxNOIPpMfSaLlnB2/PFUEkIYOpknbUugswzGOH0tk3gty1ipSwnLZ04pACqngmWNbveKDIpfVBp/o5Mdr3PlAtEbUD6FA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=BDt8C0Ok; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1779108282;
	bh=4IF51GdbnS/AbW4GBneN2UV/oYwSAiI9JfLmhOXBoDE=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=BDt8C0OkBSQcnW7/1xvJxhotX3+2n13X9/gHnD8iePUW5e8BDgq81Zdm6eMVPKCzx
	 2VP2XstaaU9gPDQjOGSoYRaVkiBdKqvM2sCiTja6tpkG2pxgFfe723f08OKT77mr5o
	 SPZZo2Unl4aF1PF3y/ZrgpmeFxeTEh3Q8/yEmY58IUYTtp9DrM6oXbnmkUOmH3yucC
	 FO03HryBi27TwBpJAMmfEytSz5Cc92qtC/+wpPaqiCiG+If1uK0rkfHaCrPqU1bv81
	 crWRZ9S6uf61g6pGVlNcYh6Tm8OqgBZDXI8M1nC9arzCQC6EubuffZFuOKmjLFIc7/
	 /Uc53lejPZH5A==
Received: from [192.168.68.117] (unknown [180.150.112.11])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 638D36025D;
	Mon, 18 May 2026 20:44:42 +0800 (AWST)
Message-ID: <64ab943e8874bd5ef22c0f1a19b7d89daea83a9e.camel@codeconstruct.com.au>
Subject: Re: [PATCH v2] ARM: dts: aspeed: yosemite5: Add MP5998 power monitor
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Daniel Hsu <d486250@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 joel@jms.id.au, 	devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, 	linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, Daniel Hsu	 <Daniel-Hsu@quantatw.com>
Date: Mon, 18 May 2026 22:14:42 +0930
In-Reply-To: <20260331120734.39260-1-Daniel-Hsu@quantatw.com>
References: <20260331120734.39260-1-Daniel-Hsu@quantatw.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 8BBB456CFDF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[codeconstruct.com.au,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[codeconstruct.com.au:s=2022a];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-299409-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[codeconstruct.com.au:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@codeconstruct.com.au,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

Hi Daniel,

On Tue, 2026-03-31 at 20:07 +0800, Daniel Hsu wrote:
> Add an MP5998 power monitor used to monitor the power consumption
> of the Paddle_P12V_HSC rail on the Yosemite5 paddle board.
>=20
> [v2]
> - Describe the purpose of the power monitor
> - Remove software/driver related description
>=20
> Signed-off-by: Daniel Hsu <Daniel-Hsu@quantatw.com>

I've applied this to the BMC tree. However, in the future, the
changelog for the series should go underneath '---' below, so it's not
included in the commit message when the patch is applied.

Andrew

> ---
> =C2=A0arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts | 5 ++++=
+
> =C2=A01 file changed, 5 insertions(+)
>=20
> diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts b=
/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
> index 2486981f3d6b..6287f80d70d9 100644
> --- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
> +++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
> @@ -422,6 +422,11 @@ power-sensor@45 {
> =C2=A0		shunt-resistor =3D <1000>;
> =C2=A0	};
> =C2=A0
> +	power-monitor@46 {
> +		compatible =3D "mps,mp5998";
> +		reg =3D <0x46>;
> +	};
> +
> =C2=A0	power-monitor@47 {
> =C2=A0		compatible =3D "ti,tps25990";
> =C2=A0		reg =3D <0x47>;

