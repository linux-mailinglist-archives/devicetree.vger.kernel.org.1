Return-Path: <devicetree+bounces-309691-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id i2V8CVxBKWpsTAMAu9opvQ
	(envelope-from <devicetree+bounces-309691-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 12:50:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 99BBA66871A
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 12:50:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=codeconstruct.com.au header.s=2022a header.b="i7RE3I/s";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309691-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309691-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=codeconstruct.com.au;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D9AD4313A967
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 10:49:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D5A93D7D90;
	Wed, 10 Jun 2026 10:49:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2679E3EA97E;
	Wed, 10 Jun 2026 10:49:29 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781088572; cv=none; b=AT/maqYzEO24YkqmJk/yQRHbgh9N+CuhC7tIFDXrtxPG6TcdVmHSCrqfw1SIZjFJymo0vP6ADMa5paZj5vSKXF5kO4q73nA5AwqKkmIQidtXtK4f5kUEyhNI3QKt2LtdPtG911zXyhdl2KO7qTZ/ecH+Plc+0t1NizqX1DjWPo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781088572; c=relaxed/simple;
	bh=MPeEvHMGfoWYTBvZ0/qNot4IE3D1fON95vQKTR1vGN4=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=R2Ftk2Vkbnvu8El4gvFHME2GvGa4ErI/c0rKRZbIv3NnFC5ua5xwYXWkpr5qL3XszNvqb7OzPv57nzTr5p4zTir4MSwtK+CF7r9ExP1YtvoBezYrGPK6ZYWrHKI3hj0LhUtMjRKJAPqTsjgNgZRWQTeDXgftfYMoojJGmqElHNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=i7RE3I/s; arc=none smtp.client-ip=203.29.241.158
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1781088567;
	bh=PqEFgoVcPTbXIJdGqrarSTorUnykUPeJIUIL/0osaWo=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=i7RE3I/sTan/oSKn8Qc6B9mcLy8Wmu7Y/N//Gdf6xE0g0Or7mwR2cH4uPL0vl4FWz
	 71DL/2wn+wzrb/bPYh3seH/KmK+MnJpjkr7TRdfORrPbYnbm8ZAZ4q/HNzKxW9z1A7
	 225g0jFNg9ocENgzxXdrMy74VV6bFgoG5qCSzmrDpOi3Ld+zPVyfJkO6/vQlkJHXXf
	 f4sRcOsBn3V9otOhioMLpQHgq40picwOARmyDWq3VQqzKwgVWhxi3/DlUeA4a1QS0m
	 8upqiKFml/izYTH5j5u0DPRCdoQZbRgdIzvcH0379Jo3Bwp/7BJ2rgaA12TJRQg/bc
	 PfQpNdcK+Lp6Q==
Received: from [192.168.68.117] (unknown [180.150.112.11])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id E5EA460A19;
	Wed, 10 Jun 2026 18:49:26 +0800 (AWST)
Message-ID: <ff53862950a6075c43bb8f1e47c14389d6fc7575.camel@codeconstruct.com.au>
Subject: Re: [PATCH v4 2/3] arm: dts: nuvoton: npcm7xx: Drop redundant FIU
 clock-names
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Tomer Maimon <tmaimon77@gmail.com>, broonie@kernel.org, robh@kernel.org,
 	krzk+dt@kernel.org, conor+dt@kernel.org
Cc: openbmc@lists.ozlabs.org, linux-spi@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 avifishman70@gmail.com, 	tali.perry1@gmail.com, venture@google.com,
 yuenn@google.com, 	benjaminfair@google.com
Date: Wed, 10 Jun 2026 20:19:26 +0930
In-Reply-To: <20260609163919.3321228-3-tmaimon77@gmail.com>
References: <20260609163919.3321228-1-tmaimon77@gmail.com>
	 <20260609163919.3321228-3-tmaimon77@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[codeconstruct.com.au,none];
	R_DKIM_ALLOW(-0.20)[codeconstruct.com.au:s=2022a];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:tmaimon77@gmail.com,m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:openbmc@lists.ozlabs.org,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:avifishman70@gmail.com,m:tali.perry1@gmail.com,m:venture@google.com,m:yuenn@google.com,m:benjaminfair@google.com,m:krzk@kernel.org,m:conor@kernel.org,m:taliperry1@gmail.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-309691-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	FORGED_SENDER(0.00)[andrew@codeconstruct.com.au,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[lists.ozlabs.org,vger.kernel.org,gmail.com,google.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@codeconstruct.com.au,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[codeconstruct.com.au:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 99BBA66871A

On Tue, 2026-06-09 at 19:39 +0300, Tomer Maimon wrote:
> The NPCM7xx FIU controller driver gets its single clock with
> devm_clk_get_enabled(dev, NULL) and does not perform a named
> clock lookup. Drop the redundant clock-names properties from the
> FIU controller nodes so the DTS describes only the resources the
> driver actually uses.

The devicetree is a description of the hardware in the form documented
by the bindings. Generally it's not right to discuss Linux drivers
here: they're only relevant in the context of Linux, but the devicetree
binding governs devicetrees over multiple projects.

From a quick look it seems that these names are not described in the
corresponding binding, therefore no drivers should be using them and as
such they can (and should) be dropped. A driver would only be worth
mentioning if it did use the undocumented names (as that would be a
complication).

Can you please rework the description?

Andrew

>=20
> Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>
> ---
> =C2=A0arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi | 3 ---
> =C2=A01 file changed, 3 deletions(-)
>=20
> diff --git a/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi b/arch=
/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi
> index a16450abea0e..83cd10b47273 100644
> --- a/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi
> +++ b/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi
> @@ -193,7 +193,6 @@ fiu0: spi@fb000000 {
> =C2=A0			reg =3D <0xfb000000 0x1000>;
> =C2=A0			reg-names =3D "control";
> =C2=A0			clocks =3D <&clk NPCM7XX_CLK_SPI0>;
> -			clock-names =3D "clk_spi0";
> =C2=A0			status =3D "disabled";
> =C2=A0		};
> =C2=A0
> @@ -204,7 +203,6 @@ fiu3: spi@c0000000 {
> =C2=A0			reg =3D <0xc0000000 0x1000>;
> =C2=A0			reg-names =3D "control";
> =C2=A0			clocks =3D <&clk NPCM7XX_CLK_SPI3>;
> -			clock-names =3D "clk_spi3";
> =C2=A0			pinctrl-names =3D "default";
> =C2=A0			pinctrl-0 =3D <&spi3_pins>;
> =C2=A0			status =3D "disabled";
> @@ -217,7 +215,6 @@ fiux: spi@fb001000 {
> =C2=A0			reg =3D <0xfb001000 0x1000>;
> =C2=A0			reg-names =3D "control";
> =C2=A0			clocks =3D <&clk NPCM7XX_CLK_SPIX>;
> -			clock-names =3D "clk_spix";
> =C2=A0			status =3D "disabled";
> =C2=A0		};
> =C2=A0

