Return-Path: <devicetree+bounces-280930-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6KC+F7PVxGnk4AQAu9opvQ
	(envelope-from <devicetree+bounces-280930-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 07:44:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E1ABD330029
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 07:44:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 276EC301A922
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 06:44:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CC3433F5B2;
	Thu, 26 Mar 2026 06:43:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="Bf9/ogWG"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67D9D33B96F;
	Thu, 26 Mar 2026 06:43:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774507439; cv=none; b=E3nMioVF06TnNcjtyujcKyLQrAfGiZIheU9DaaY0Y0zVLlezlwJJzevMQqp+ddweuIAd2IMU8YXt0VhHx+Ha8XYjxIb+Ut8FFDZ/I/CSy8JpbqOPNWeMTOFa4W1V026Q1VNtmzwhXC6VUfKKMOl85pok6xiApH9r+6GPkTnVSW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774507439; c=relaxed/simple;
	bh=MmXvXN5usJhalvoG7PmV4+ZJSGUSowCZG7zrDGEjo08=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Zmn57ygAyD64G4ZDFbgZ/ll3ccAfSPfV+yle8Y077b3GKlVQ0NI2QIwdX1yzX5KmDcZiL8GsvXDUSo7yHAb4WwbPysWyGIcaDJ84Py5qac8FJy0HnltIHxG2WFfpUcs+Kg5ioSf08k3jxnKk7chESlrmLbSiNHxVC2DGQ427DS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=Bf9/ogWG; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1774507435;
	bh=vOXu1h7wNBU0MwKwR9KWxa8v2aRV0Z0aQ49i9AHsRjA=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=Bf9/ogWGTOWi9NWWT9MjUL9Xb1gjCktDc22xDsaivLJwvaS7q8h5C23xkT/LuqKDP
	 zNantjz4ge2Q6oLy8byxuFDXcu/NCMtwp4sAargNiSXUILCWq24o5O1afnUOF2tz9g
	 4Eb2KvSzTpfv6o6z+ft7X7JK6I0Cnx6pElqB+66gZJ4QkVZcG7FsmBQ+El9evKu9vd
	 z9F6EoHHNrxdBxTfVf8XLOwmRtbYtX4fl3ZoTChx7FgNE+TG4I+qC7b8Fur1FBNv9E
	 R42CYgLOWyulFYM1cwKjq2Jw2NLAsxRmtW0/pfR+9z9sLcYRPyRoUJQGqoTyOXt87a
	 PBtgDQ3v6mJVw==
Received: from [192.168.68.115] (unknown [180.150.112.60])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id B68C46597C;
	Thu, 26 Mar 2026 14:43:54 +0800 (AWST)
Message-ID: <47adfd499195738bd5539c4e438af5dc1ae75559.camel@codeconstruct.com.au>
Subject: Re: [PATCH v3 2/3] ARM: dts: aspeed: anacapa: update SGPIO mappings
 for DFT integration
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Colin Huang <u8813345@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski
	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Joel Stanley
	 <joel@jms.id.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
	Colin.Huang2@amd.com, Carl.Lee@amd.com, Peter.Shen@amd.com
Date: Thu, 26 Mar 2026 17:13:54 +1030
In-Reply-To: <20260310-anacapa-dts-sgpio-v3-2-12d9b7f1202e@gmail.com>
References: <20260310-anacapa-dts-sgpio-v3-0-12d9b7f1202e@gmail.com>
	 <20260310-anacapa-dts-sgpio-v3-2-12d9b7f1202e@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[codeconstruct.com.au,none];
	R_DKIM_ALLOW(-0.20)[codeconstruct.com.au:s=2022a];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-280930-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,jms.id.au];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@codeconstruct.com.au,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[codeconstruct.com.au:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[codeconstruct.com.au:dkim,codeconstruct.com.au:mid]
X-Rspamd-Queue-Id: E1ABD330029
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Colin,

On Tue, 2026-03-10 at 17:49 +0800, Colin Huang wrote:
> Update SGPIOM0 GPIO line names and signal mappings to align with the
> latest DFT (Design For Tooling) integration requirements.
>=20
> This change reworks SGPIO input/output assignments, replaces legacy
> or reserved placeholders, and updates signal naming to match the
> definitions provided by the CPLD on 2026-03-03.=C2=A0
>=20

I feel this statement isn't super helpful, but no matter.

> The update improves
> signal clarity and correctness across leakage detection, presence,
> fault, power-good, and debug-related GPIOs.

I prefer you drop this assessment.

>=20
> Signed-off-by: Colin Huang <u8813345@gmail.com>
> ---
> =C2=A0.../dts/aspeed/aspeed-bmc-facebook-anacapa.dts=C2=A0=C2=A0=C2=A0=C2=
=A0 | 143 ++++++++++++---------
> =C2=A01 file changed, 83 insertions(+), 60 deletions(-)
>=20
> diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts b/a=
rch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
> index 3e297abc5ba4..85b7e027daef 100644
> --- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
> +++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
> @@ -862,89 +862,106 @@ &sgpiom0 {
> =C2=A0	ngpios =3D <128>;
> =C2=A0	bus-frequency =3D <2000000>;
> =C2=A0	gpio-line-names =3D
> -	/*in - out - in - out */
> +	/*in - out */
> =C2=A0	/* A0-A7 line 0-15 */
> -	"", "FM_CPU0_SYS_RESET_N", "", "CPU0_KBRST_N",
> -	"", "FM_CPU0_PROCHOT_trigger_N", "", "FM_CLR_CMOS_R_P0",
> -	"", "Force_I3C_SEL", "", "SYSTEM_Force_Run_AC_Cycle",
> -	"", "", "", "",
> +	"L_FNIC_FLT", "FM_CPU0_SYS_RESET_N",
> +	"L_BNIC0_FLT", "CPU0_KBRST_N",
> +	"L_BNIC1_FLT", "FM_CPU0_PROCHOT_trigger_N",
> +	"L_BNIC2_FLT", "FM_CLR_CMOS_R_P0",
> +	"L_BNIC3_FLT", "Force_I3C_SEL",
> +	"L_RTM_SW_FLT", "SYSTEM_Force_Run_AC_Cycle",
> +	"", "",
> +	"", "",
> =C2=A0
> =C2=A0	/* B0-B7 line 16-31 */
> =C2=A0	"Channel0_leakage_EAM3", "FM_CPU_FPGA_JTAG_MUX_SEL",
> =C2=A0	"Channel1_leakage_EAM0", "FM_SCM_JTAG_MUX_SEL",
> =C2=A0	"Channel2_leakage_Manifold1", "FM_BRIDGE_JTAG_MUX_SEL",
> =C2=A0	"Channel3_leakage", "FM_CPU0_NMI_SYNC_FLOOD_N",
> -	"Channel4_leakage_Manifold2", "",
> -	"Channel5_leakage_EAM1", "",
> -	"Channel6_leakage_CPU_DIMM", "",
> -	"Channel7_leakage_EAM2", "",
> +	"Channel4_leakage_Manifold2", "BMC_AINIC0_WP_R2_L",
> +	"Channel5_leakage_EAM1", "BMC_AINIC1_WP_R2_L",
> +	"Channel6_leakage_CPU_DIMM", "CPLD_BUF_R_AGPIO330",
> +	"Channel7_leakage_EAM2", "CPLD_BUF_R_AGPIO331",
> =C2=A0
> =C2=A0	/* C0-C7 line 32-47 */
> -	"RSVD_RMC_GPIO3", "", "LEAK_DETECT_RMC_N", "",
> -	"", "", "", "",
> -	"", "", "", "",
> -	"", "", "", "",
> +	"RSVD_RMC_GPIO3", "RTM_MUX_L",
> +	"LEAK_DETECT_RMC_N", "RTM_MUX_R",
> +	"HDR_P0_NMI_BTN_BUF_R_N", "FPGA_JTAG_SCM_DBREQ_N",
> +	"No_Leak_Sensor_flag", "whdt_sel",
> +	"", "",
> +	"", "",
> +	"", "",
> +	"", "",
> =C2=A0
> =C2=A0	/* D0-D7 line 48-63 */
> -	"PWRGD_PDB_EAMHSC0_CPLD_PG_R", "",
> -	"PWRGD_PDB_EAMHSC1_CPLD_PG_R", "",
> -	"PWRGD_PDB_EAMHSC2_CPLD_PG_R", "",
> -	"PWRGD_PDB_EAMHSC3_CPLD_PG_R", "",
> -	"AMC_BRD_PRSNT_CPLD_L", "", "", "",
> -	"", "", "", "",
> +	"PWRGD_CHAD_CPU0_FPGA", "",
> +	"PWRGD_CHEH_CPU0_FPGA", "",
> +	"PWRGD_CHIL_CPU0_FPGA", "",
> +	"PWRGD_CHMP_CPU0_FPGA", "",
> +	"AMC_BRD_PRSNT_CPLD_L", "",

Can you discuss this patch in the context of my other replies to both
yourself and Kevin?

https://lore.kernel.org/all/d7794f74b26bbc1ee0a70e39c5671acc018f80eb.camel@=
codeconstruct.com.au/

Andrew

