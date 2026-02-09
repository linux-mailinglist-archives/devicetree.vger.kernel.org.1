Return-Path: <devicetree+bounces-263832-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id acZ1FVeDiWl++QQAu9opvQ
	(envelope-from <devicetree+bounces-263832-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 07:48:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DE9C010C376
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 07:48:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D2871300426A
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 06:48:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAE8A27586E;
	Mon,  9 Feb 2026 06:48:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="aMKEZF13"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D6412AD0C;
	Mon,  9 Feb 2026 06:48:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770619730; cv=none; b=hMdaZa0DRyS53kc1JuzhdIV/xsDw4uI1csF4AC2mNAueamssUgNLDhbAhDKjVnk3ALLPY9znVMjFl+Re9ZZW9GhKlxLMKGLeahYVOW5aj8SfeJyPQ6VpQRsVAjNipVjLTuRjXIZXt9XdwG+XbHPNdQwvDVgDk+6wKTFF7YTosrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770619730; c=relaxed/simple;
	bh=22oxtJ9nB5p+ziX+cBvMwWgWkfg8u+vZVv8c9EYYTmI=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=or7VqH2B5kv2Pcg3IRCLG9Dvhqqbz4SMSvXa0yQz0BKKWLIy9gNWWHHPGIJBwaziR2BQs0KMkDbGnqzGxKtsyK0zELcBg0gQtQHBRBP28DyfCvVdVvtiaQeEk2m2pSxNAyJDaMHh6VzjfOOF1sImGmIyK608IcQTrYgyglbjFiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=aMKEZF13; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1770619728;
	bh=3h399uqdq25x5hxIFW7zZwuybkzAN1xO/8T0xQ5AjvU=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=aMKEZF13ngPb4ltFbv/7dlAQBi3w4hNbKatvSU5ni0L+HP2hn04pPNZ1PJxJbfe3J
	 hKKj/z4yG30GvmWiAqpk6YDtSYVA7lFSerKA++iT12J0tJAygkO/h8lhOmfjNXqNSw
	 cuaQ0gks35WQRpAtTmmtEnva/ojY0qR03anUlUqYnyaoOEShsmfG28l7dpqUGQ12Ns
	 HdBBYHBeH2elUrmDYLKdNaxCBKkOZVZiphXzp4I9EBi68D8NtHAfjV4Xpr4FyBaUAX
	 K/AJ8/8Y0fPSMlVaXTSNj2R6H6GKs7KwI9edm4MZgugxZ+LjAto2okRuM3HWnfrwD+
	 uwM19bR/jynpQ==
Received: from [192.168.68.117] (unknown [180.150.112.60])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 6D38A602DE;
	Mon,  9 Feb 2026 14:48:46 +0800 (AWST)
Message-ID: <505227cc664cf309eede2640442bad45af1dcf37.camel@codeconstruct.com.au>
Subject: Re: [PATCH] ARM: dts: aspeed: anacapa: add new sgpio line names
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Colin Huang <u8813345@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski
	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Joel Stanley
	 <joel@jms.id.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
	Colin.Huang2@amd.com, Carl.Lee@amd.com, Peter.Shen@amd.com
Date: Mon, 09 Feb 2026 17:18:45 +1030
In-Reply-To: <20260202-anacapa-dts-sgpio-v1-1-a3a7b0b087f0@gmail.com>
References: <20260202-anacapa-dts-sgpio-v1-1-a3a7b0b087f0@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263832-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,jms.id.au];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@codeconstruct.com.au,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[codeconstruct.com.au:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[codeconstruct.com.au:mid,codeconstruct.com.au:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DE9C010C376
X-Rspamd-Action: no action

Hi Colin,

On Mon, 2026-02-02 at 14:31 +0800, Colin Huang wrote:
> Updated items:

What's below repeats what the diff tells us, and as such isn't useful
information. The useful information is missing: The motivation for
these changes.

Why are you adding these now? Why were they not added previously? Are
they all in support of the same high-level feature? Or are multiple
features driving the addition of each of these line names? If there are
multiple motivations, why should these all be added in one patch and
not several?

Generally, please try to take onboard the suggestions here:

https://docs.kernel.org/process/submitting-patches.html#describe-your-chang=
es

> - Add BMC_AINIC0_WP_R2_L and BMC_AINIC1_WP_R2_L
> - Place LEAK_DETECT_RMC_N in the correct slot

... for instance, why did it end up being described for the incorrect
slot? Was it just a mistake in the documentation? A mistake by the
original DTS author? Or a new (and incompatible) revision of the
hardware design?

Answering these kinds of questions tends to motivate making such
changes their own patch.

> - Add PRSNT_NFC_BOARD_R
> - Add IRQ_NFC_BOARD_R and RSMRST_N
> - Add DC_OFF, EAM_MOD_PWR_GD_TIMEOUT, CPLD_AMC_STBY_PWR_EN
> - Add FM_MAIN_PWREN_RMC_EN_ISO


>=20
> Signed-off-by: Colin Huang <u8813345@gmail.com>
> ---
> The following changes are included:
> - Add BMC_AINIC0_WP_R2_L and BMC_AINIC1_WP_R2_L
> - Correct placement of LEAK_DETECT_RMC_N
> - Add PRSNT_NFC_BOARD_R
> - Add IRQ_NFC_BOARD_R and RSMRST_N
> - Add DC_OFF, EAM_MOD_PWR_GD_TIMEOUT, CPLD_AMC_STBY_PWR_EN
> - Add FM_MAIN_PWREN_RMC_EN_ISO

This repeats what's in the commit message and also isn't useful, though
at least it's not ultimately included in the commit itself.

> ---
> =C2=A0.../boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts=C2=A0=C2=A0 | 1=
9 +++++++++++--------
> =C2=A01 file changed, 11 insertions(+), 8 deletions(-)
>=20
> diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts b/a=
rch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
> index 221af858cb6b..37bccf64c77b 100644
> --- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
> +++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
> @@ -852,15 +852,15 @@ &sgpiom0 {
> =C2=A0	"Channel1_leakage_EAM0", "FM_SCM_JTAG_MUX_SEL",
> =C2=A0	"Channel2_leakage_Manifold1", "FM_BRIDGE_JTAG_MUX_SEL",
> =C2=A0	"Channel3_leakage", "FM_CPU0_NMI_SYNC_FLOOD_N",
> -	"Channel4_leakage_Manifold2", "",
> -	"Channel5_leakage_EAM1", "",
> +	"Channel4_leakage_Manifold2", "BMC_AINIC0_WP_R2_L",
> +	"Channel5_leakage_EAM1", "BMC_AINIC1_WP_R2_L",
> =C2=A0	"Channel6_leakage_CPU_DIMM", "",
> =C2=A0	"Channel7_leakage_EAM2", "",
> =C2=A0
> =C2=A0	/* C0-C7 line 32-47 */
> -	"RSVD_RMC_GPIO3", "", "", "",
> +	"RSVD_RMC_GPIO3", "", "LEAK_DETECT_RMC_N", "",
> +	"", "", "", "",
> =C2=A0	"", "", "", "",
> -	"LEAK_DETECT_RMC_N", "", "", "",
> =C2=A0	"", "", "", "",
> =C2=A0
> =C2=A0	/* D0-D7 line 48-63 */
> @@ -893,7 +893,7 @@ &sgpiom0 {
> =C2=A0	"PWRGD_CHIL_CPU0_FPGA", "",
> =C2=A0	"PWRGD_CHEH_CPU0_FPGA", "",
> =C2=A0	"PWRGD_CHAD_CPU0_FPGA", "FM_BMC_READY_PLD",
> -	"", "",
> +	"PRSNT_NFC_BOARD_R", "",
> =C2=A0
> =C2=A0	/* H0-H7 line 112-127 */
> =C2=A0	"PWRGD_P3V3", "",
> @@ -922,7 +922,8 @@ &sgpiom0 {
> =C2=A0	"BRIDGE_R_MAIN_PG_R", "",
> =C2=A0	"BRIDGE_L_STBY_PG_R", "",
> =C2=A0	"BRIDGE_R_STBY_PG_R", "",
> -	"", "", "", "",
> +	"IRQ_NFC_BOARD_R", "",
> +	"RSMRST_N", "",
> =C2=A0
> =C2=A0	/* K0-K7 line 160-175 */
> =C2=A0	"ADC_I2C_ALERT_N", "",
> @@ -956,7 +957,9 @@ &sgpiom0 {
> =C2=A0	"AMC_STBY_PGOOD_R", "",
> =C2=A0	"CPU_AMC_SLP_S5_R_L", "",
> =C2=A0	"AMC_CPU_EAMPG_R", "",
> -	"", "", "", "",
> +	"DC_OFF", "",
> +	"EAM_MOD_PWR_GD_TIMEOUT", "",
> +	"CPLD_AMC_STBY_PWR_EN", "",
> =C2=A0
> =C2=A0	/* O0-O7 line 224-239 */
> =C2=A0	"HPM_PWR_FAIL", "Port80_b0",
> @@ -966,7 +969,7 @@ &sgpiom0 {
> =C2=A0	"FM_CPU0_THERMTRIP_N", "Port80_b4",
> =C2=A0	"PVDDCR_SOC_P0_OCP_L", "Port80_b5",
> =C2=A0	"CPLD_SGPIO_RDY", "Port80_b6",
> -	"", "Port80_b7",
> +	"FM_MAIN_PWREN_RMC_EN_ISO", "Port80_b7",
> =C2=A0
> =C2=A0	/* P0-P7 line 240-255 */
> =C2=A0	"CPU0_SLP_S5_N_R", "NFC_VEN",
>=20
> ---
> base-commit: 26705fad17bd111f062f4208df2dd60e7a9c2ecd
> change-id: 20260202-anacapa-dts-sgpio-e4e0ba5c2cd5
>=20
> Best regards,

