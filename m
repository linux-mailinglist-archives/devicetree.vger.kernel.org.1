Return-Path: <devicetree+bounces-263807-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sLXrOph0iWkg9gQAu9opvQ
	(envelope-from <devicetree+bounces-263807-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 06:46:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E7D810BCE8
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 06:46:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C95273006B58
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 05:45:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B452237713;
	Mon,  9 Feb 2026 05:45:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="AR5ZxWSB"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E5D7DA66;
	Mon,  9 Feb 2026 05:45:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770615956; cv=none; b=jlmvmqIpcPJ78SwJBzXHZE8NmBiFXNRdsfYbeHFPTVgZJNW1i+IIq2pdS/ZPyoDCewjwU0Q2EgrsFZICf8+ZY8uBuu1KzIWtEVv2nWjPF8LpFP86Ui9UslbKv+kKfc8cyA+eHpNj38PIfFlGHpKEYgwzY6uyEKimONpXoK1T14o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770615956; c=relaxed/simple;
	bh=FQ8Dowp6Sspy5DUfCGMvZzyM1TXkG4NWeD8/1ZewruU=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=td2Ko4O4JRdIGqSL7+gGVHFAuqoYaukYqqxIOmbWWbdBVHIajBsgbS4PvDCnWAF73v3gLpIsx3jhLlXjKR4Lt/lnmofJC/9O45/HposaWaAKFXA9YHcF8+VLDlMAR8nbgD4+I1AivHmKTDeo6wMdyUf+WSCT3aZ6RM0elnn0MyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=AR5ZxWSB; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1770615954;
	bh=dnth1D2JhNyrTS1K8rbSc9KWM9EP1WSLD2zMCtx/c3c=;
	h=Subject:From:To:Date:In-Reply-To:References;
	b=AR5ZxWSB35SlYy/pXbKX2GRwoqq4wqalLnZpTotUz3VQK/FZmbBP1ykAYMDHPRwhX
	 ul8evizpvDVPNDXdoq2igN0n8vWRUdQi7QwbxTsCe0UYi+1rljAjfuc+xMeihjNoqB
	 HC7z+thhCgg9jWZccNUdsu7mN1ki0rKrgxKkvE8J6nPXXUzvK5hBAQcGym6k5PGDQk
	 wKwekbEW/wQHuofbk+R+UVpCTOy8b/Ts/PM4m7cofq96QjlqaG29K4i7NvBNWy+X/U
	 ut6MUlRU356ueoxIbWAIAI1D+s+BsLlG1s35MSV1k3SOLw1i5JFfJkcJ8aelAATTFo
	 LFHjYTvExRfgw==
Received: from [192.168.68.117] (unknown [180.150.112.60])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 5FB9D603F0;
	Mon,  9 Feb 2026 13:45:52 +0800 (AWST)
Message-ID: <212de4074664dc0507b6ed174443b37cf7bf5053.camel@codeconstruct.com.au>
Subject: Re: [PATCH] ARM: dts: aspeed: santabarbara: Add swb cpld io expander
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Fred Chen <fredchen.openbmc@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski
	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Joel Stanley
	 <joel@jms.id.au>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org
Date: Mon, 09 Feb 2026 16:15:51 +1030
In-Reply-To: <20260129073749.3155383-1-fredchen.openbmc@gmail.com>
References: <20260129073749.3155383-1-fredchen.openbmc@gmail.com>
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
	R_DKIM_ALLOW(-0.20)[codeconstruct.com.au:s=2022a];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263807-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,jms.id.au,vger.kernel.org,lists.infradead.org,lists.ozlabs.org];
	DKIM_TRACE(0.00)[codeconstruct.com.au:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.52:email,0.0.0.20:email,0.0.0.21:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@codeconstruct.com.au,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.986];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.28:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,codeconstruct.com.au:mid,codeconstruct.com.au:dkim,0.0.0.27:email,0.0.0.50:email]
X-Rspamd-Queue-Id: 4E7D810BCE8
X-Rspamd-Action: no action

On Thu, 2026-01-29 at 15:37 +0800, Fred Chen wrote:
> Add CPLD-simulated IO expanders
>=20

If these are not genuine PCA9555 parts then I expect you should define
your own compatible string for the implementation which allows
nxp,pca9555 as a fallback. That way you can account for bugs in the
implementation either way (either in the kernel if updating the CPLD
firmware is not feasible in some situations, or by updating the
firmware when it is).

Andrew

>  for cable presence detection and 4 SPI
> flash control. To resolve sideband pin shortages, one IO expander is
> utilized to aggregate interrupt signals.
>=20
> Signed-off-by: Fred Chen <fredchen.openbmc@gmail.com>
> ---
> =C2=A0.../aspeed-bmc-facebook-santabarbara.dts=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 | 48 +++++++++++++++++++
> =C2=A01 file changed, 48 insertions(+)
>=20
> diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-santabarbara.dt=
s b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-santabarbara.dts
> index 0a3e2e241063..39f7fade8ff7 100644
> --- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-santabarbara.dts
> +++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-santabarbara.dts
> @@ -1335,6 +1335,39 @@ eeprom@50 {
> =C2=A0&i2c12 {
> =C2=A0	status =3D "okay";
> =C2=A0
> +	ioexp0: gpio@20 {
> +		compatible =3D "nxp,pca9555";
> +		reg =3D <0x20>;
> +		gpio-controller;
> +		#gpio-cells =3D <2>;
> +		interrupt-controller;
> +		#interrupt-cells =3D <2>;
> +		interrupt-parent =3D <&sgpiom0>;
> +		interrupts =3D <148 IRQ_TYPE_LEVEL_LOW>;
> +		gpio-line-names =3D
> +			"IOEXP_21h_INT_N","","","",
> +			"","","","",
> +			"","","","",
> +			"","","","";
> +	};
> +
> +	gpio@21 {
> +		compatible =3D "nxp,pca9555";
> +		reg =3D <0x21>;
> +		gpio-controller;
> +		#gpio-cells =3D <2>;
> +		interrupt-parent =3D <&ioexp0>;
> +		interrupts =3D <0 IRQ_TYPE_LEVEL_LOW>;
> +		gpio-line-names =3D
> +			"PDB_PRSNT_J1_N","PDB_PRSNT_J2_N",
> +			"PRSNT_NIC1_N","PRSNT_NIC2_N",
> +			"PRSNT_NIC3_N","PRSNT_NIC4_N",
> +			"SWB_PWR_FAULT_STATUS","",
> +			"CBL_PRSNT_MCIO_0_N","CBL_PRSNT_MCIO_1_N",
> +			"CBL_PRSNT_MCIO_2_N","CBL_PRSNT_MCIO_3_N",
> +			"","","","";
> +	};
> +
> =C2=A0	gpio@27 {
> =C2=A0		compatible =3D "nxp,pca9555";
> =C2=A0		reg =3D <0x27>;
> @@ -1349,6 +1382,21 @@ gpio@27 {
> =C2=A0			"SPI_MUX_SEL","","","";
> =C2=A0	};
> =C2=A0
> +	gpio@28 {
> +		compatible =3D "nxp,pca9555";
> +		reg =3D <0x28>;
> +		gpio-controller;
> +		#gpio-cells =3D <2>;
> +		gpio-line-names =3D
> +			"SCO_UART_MUX_SEL0","SCO_UART_MUX_SEL1",
> +			"SPI_PROG_PL12_SEL","SPI_PROG_PL34_SEL",
> +			"","","","",
> +			"I3C_HUB_3_MUX_SEL_PLD","",
> +			"SPI_PROG_PL12_EN_N","SPI_PROG_PL34_EN_N",
> +			"SCO1_SPI_SEL","SCO2_SPI_SEL",
> +			"SCO3_SPI_SEL","SCO4_SPI_SEL";
> +	};
> +
> =C2=A0	// SWB FRU
> =C2=A0	eeprom@52 {
> =C2=A0		compatible =3D "atmel,24c64";

