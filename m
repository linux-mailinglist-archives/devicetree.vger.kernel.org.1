Return-Path: <devicetree+bounces-299133-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wDNwLSi2CmoB6QQAu9opvQ
	(envelope-from <devicetree+bounces-299133-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 08:48:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5913D566EB5
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 08:48:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9719F30010C5
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 06:48:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D4B83CF662;
	Mon, 18 May 2026 06:48:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="Rhb6Eg43"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4899A3C5540;
	Mon, 18 May 2026 06:48:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779086885; cv=none; b=D/j6xVSsMI5zOpmbUFxbtID08pEzsaNKyNNsuSkjj4l84qf+fk/gwApnh5CD8pTrPAfjQsXnl5mExyQaGJtG9We2u/t8BU5OcZiaFv+EokNvHyjCB9wNUsS54QmiXzBSzm0znpHoHG0wGWQHp9euutU19+kEY6wI+4UzTSr+6TE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779086885; c=relaxed/simple;
	bh=zE3MNbnUoDQz4Bh8our0fBcYvu1LYXIjCccRcGApdmg=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=CWJMMkDHBqvyYoc7rRqbE0tY8CgGKfCLx3/73nGLrHWvyWY7NXf+P8P9OF/Eb3y/XANTn5h5dcASV/9oyT52kigkZ/2MlF4nhw57SP8J93orsxstZkaMdBMLzbNIMmgBbvKP4fcRzWxcU70qwc37ztFHIcTJNfwpdDc5Am9qkqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=Rhb6Eg43; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1779086880;
	bh=yCIIJPedrSN9Nbfy8rMYwb7u5VqcNWKHuQcBf8AmRZs=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=Rhb6Eg43fawS7KulytVw/afj3ttEg0nj3SdwaLqNePcoGJiVmQr7INEVY36wTkGpf
	 7gRk0gNebpLCaOTnAJiPe+S0NaFc7mQyCnDuHM+bly+eEScA2MdswmAL6H1NU0X67b
	 ffimn4S+Q0l0fbYRmip4G3GnylimDSmBH0o27rE5YGsEvnb/NbVVTbW3B1D09023S+
	 qslXNV4KhzfDQF5kVJDLAnOHmjTCd3rl5hVUm2a6/tvU3KE5oz0tSILFBbpMIxCYPV
	 ick4TLd4wrTDm8aYIM9jQrFzneghHldyF11c/Q2eTPrsW7IlBKvT3P5mlJeV+1H0iX
	 4RPpGvf0sFUHw==
Received: from [192.168.68.117] (unknown [180.150.112.11])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 547616025D;
	Mon, 18 May 2026 14:48:00 +0800 (AWST)
Message-ID: <bae3a186da639118d88ad2632c5edf8963946dc1.camel@codeconstruct.com.au>
Subject: Re: [PATCH] ARM: dts: aspeed: anacapa: name EDSFF and thermtrip
 SGPIO lines
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Rex.Fu@amd.com, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Joel Stanley
	 <joel@jms.id.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Date: Mon, 18 May 2026 16:17:59 +0930
In-Reply-To: <20260430-anacapa-sgpio-edsff-thermtrip-v1-1-2fd5e72435d0@amd.com>
References: 
	<20260430-anacapa-sgpio-edsff-thermtrip-v1-1-2fd5e72435d0@amd.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 5913D566EB5
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
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-299133-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[codeconstruct.com.au:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@codeconstruct.com.au,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,codeconstruct.com.au:mid,codeconstruct.com.au:dkim]
X-Rspamd-Action: no action

Hello Rex,

On Thu, 2026-04-30 at 13:44 +0800, Rex Fu via B4 Relay wrote:
> From: Rex Fu <Rex.Fu@amd.com>
>=20
> Name the Anacapa SGPIO lines used for EDSFF power-good and thermtrip
> assertion signals.
>=20
> The affected lines replace legacy
>=20

Which are legacy?

>  or unused=C2=A0
>=20

Which are unused?

> CPU-related names with the
> platform signal names used by userspace monitoring.

This is the kind of change that has the potential to break old
userspace. Why is it appropriate? I'd like a more precise discussion in
the commit message.

Was there some other underlying change (e.g. a new revision of the
platform design)?

Andrew

>=20
> Signed-off-by: Rex Fu <Rex.Fu@amd.com>
> ---
> =C2=A0arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts | 10 +++++=
-----
> =C2=A01 file changed, 5 insertions(+), 5 deletions(-)
>=20
> diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts b/a=
rch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
> index 2cb7bd128d24..fe960bb7bc27 100644
> --- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
> +++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
> @@ -912,7 +912,7 @@ &sgpiom0 {
> =C2=A0	"PWRGD_PVDDIO_P0", "",
> =C2=A0	"PWRGD_PVDDIO_MEM_S3_P0", "",
> =C2=A0	"PWRGD_CHMP_CPU0_FPGA", "",
> -	"PWRGD_CHIL_CPU0_FPGA", "",
> +	"HPM_EDSFF_PG", "",
> =C2=A0	"PWRGD_CHEH_CPU0_FPGA", "",
> =C2=A0	"PWRGD_CHAD_CPU0_FPGA", "FM_BMC_READY_PLD",
> =C2=A0	"", "",
> @@ -957,8 +957,8 @@ &sgpiom0 {
> =C2=A0	"PDB_ALERT_R_N", "",
> =C2=A0
> =C2=A0	/* L0-L7 line 176-191 */
> -	"CPU0_SP7R1", "", "CPU0_SP7R2", "",
> -	"CPU0_SP7R3", "", "CPU0_SP7R4", "",
> +	"L_EDSFF2_PG", "", "L_EDSFF3_PG", "",
> +	"R_EDSFF2_PG", "", "R_EDSFF3_PG", "",
> =C2=A0	"CPU0_CORETYPE0", "", "CPU0_CORETYPE1", "",
> =C2=A0	"CPU0_CORETYPE2", "", "FM_BIOS_POST_CMPLT_R_N", "",
> =C2=A0
> @@ -984,8 +984,8 @@ &sgpiom0 {
> =C2=A0	"HPM_PWR_FAIL", "Port80_b0",
> =C2=A0	"FM_DIMM_IP_FAIL", "Port80_b1",
> =C2=A0	"FM_DIMM_AH_FAIL", "Port80_b2",
> -	"HPM_AMC_THERMTRIP_R_L", "Port80_b3",
> -	"FM_CPU0_THERMTRIP_N", "Port80_b4",
> +	"AMC_THERMTRIP_ASSERT", "Port80_b3",
> +	"CPU_THERMTRIP_ASSERT", "Port80_b4",
> =C2=A0	"PVDDCR_SOC_P0_OCP_L", "Port80_b5",
> =C2=A0	"CPLD_SGPIO_RDY", "Port80_b6",
> =C2=A0	"", "Port80_b7",
>=20
> ---
> base-commit: 9974969c14031a097d6b45bcb7a06bb4aa525c40
> change-id: 20260430-anacapa-sgpio-edsff-thermtrip-acb228bf61be
>=20
> Best regards,
> --=C2=A0=20
> Rex Fu <Rex.Fu@amd.com>
>=20

