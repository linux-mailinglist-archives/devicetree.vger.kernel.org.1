Return-Path: <devicetree+bounces-309954-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id z8WzFTiRKWryZgMAu9opvQ
	(envelope-from <devicetree+bounces-309954-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 18:30:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 11EFE66B7CE
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 18:30:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=TvGTzVcO;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309954-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-309954-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 072743004DEE
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 16:23:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEE3F2FE066;
	Wed, 10 Jun 2026 16:23:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A1012C031E
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 16:23:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781108600; cv=none; b=B0xqdNh/o0B3vFVo+7kmk72yOD/bfrV6V/OEthKg+68fVKL4pJhqqFv/ln/5xObbPAp9vX1zG4TFJLaXmJ3ziEypScISHkmmRE7fmHKIU9FFCCy5sRwV2HabeScabIu71FUiTvXgfej0rXUWtHnqyb3TcXINWJ2Yopg63Y/ZOCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781108600; c=relaxed/simple;
	bh=uUdYuS3oDH97JAU1CJfb5sq0zCbG+jVEO81CvoUmz7k=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=F0mJG1etbcukla9jeKnhvimnxzlI1vbIzgRcHpBYzauVHDbckUTP6Ojb1K+EBRx4/L7sPXNcCfsYA3SdxLP/6XQ3iGIAmuCMcyxZ8w8UIwM+z8B7p8KohXpB12Mwp5UyXDLtb9R4tQPDNiup+o9c22keE2w8pl2FJxKxxil6KVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TvGTzVcO; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E468D1F00893;
	Wed, 10 Jun 2026 16:23:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781108599;
	bh=uGMuu7Do/B+5M2qPd5TiMSY55OMl/czuPp00NNc0iQ0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=TvGTzVcOTK/nQiHXoELvA5C1HleroKA8UyC0TLbYPxeNuy7reJZzcn8VFbKf98Sor
	 CNEd1vKunhCGieMyAaSlOr9w3rC991wbBHjlwbohGVj9Crtf+i6kE5hpRSOoRD3P0s
	 jmedyQOyQRnCRcaKCncQQuEDBNY6EtNFUSEPg+lHl6TSngCZl3V8r1rCYCajDNzXXJ
	 iRdkVTyBhaZH9unhrju5NFCvNS8R53Q1Ua7Eb8l8WFEf8OM99BANd4cXeec911xp/1
	 IEv7ZTM5I3vRFtAYiODtVy4YdDwueeg34TmNNSVqEoeDHMd+XN8+lNTT2lRVDsvHR0
	 LP9uS3vpSzJww==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 3/3] arm64: dts: nuvoton: npcm845-evb: Add peripheral
 nodes
Reply-To: sashiko-reviews@lists.linux.dev
To: "Tomer Maimon" <tmaimon77@gmail.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260610160816.2828713-4-tmaimon77@gmail.com>
References: <20260610160816.2828713-4-tmaimon77@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 10 Jun 2026 16:23:18 +0000
Message-Id: <20260610162318.E468D1F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-309954-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:tmaimon77@gmail.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,smtp.kernel.org:mid,vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 11EFE66B7CE

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [High] Missing `/bits/ 8` for `fan-tach-ch` and `cooling-levels` causes i=
ncorrect 32-bit integer array emission, corrupting the thermal fan driver s=
tate.
- [High] The `tip_reserved` memory node lacks the `no-map` directive, causi=
ng speculative external aborts.
- [Medium] Incorrect Device Tree property name `spix-mode` prevents the FIU=
 controller from enabling SPIX mode.
--

commit 011b4946d76e73a81f86b002033d53a6d052bd40
Author: Tomer Maimon <tmaimon77@gmail.com>

arm64: dts: nuvoton: npcm845-evb: Add peripheral nodes

Enable peripheral support for the NPCM845 evaluation board by wiring up
the SoC controller nodes to the board design.

> diff --git a/arch/arm64/boot/dts/nuvoton/nuvoton-npcm845-evb.dts b/arch/a=
rm64/boot/dts/nuvoton/nuvoton-npcm845-evb.dts
> index 5edf5d13342da..ea92888d9b9e2 100644
> --- a/arch/arm64/boot/dts/nuvoton/nuvoton-npcm845-evb.dts
> +++ b/arch/arm64/boot/dts/nuvoton/nuvoton-npcm845-evb.dts

[ ... ]

> @@ -26,12 +62,389 @@ refclk: refclk-25mhz {
>  		clock-frequency =3D <25000000>;
>  		#clock-cells =3D <0>;
>  	};
> +
> +	reserved-memory {
> +		#address-cells =3D <2>;
> +		#size-cells =3D <2>;
> +		ranges;
> +
> +		tip_reserved: tip@0 {
> +			reg =3D <0x0 0x0 0x0 0x6200000>;

[Severity: High]
Does this reserved memory region need the no-map directive?

Without no-map, the kernel establishes a direct, cacheable linear mapping
over this region. Since this block is isolated by hardware firewalls for the
Trusted Information Processing firmware, could speculative execution or
prefetching by the CPU into this linear mapping trigger fatal synchronous
external aborts or SErrors?

> +		};
> +	};

[ ... ]

> +&fiux {
> +	spix-mode;

[Severity: Medium]
Is this property missing the vendor prefix?

The SPI driver for the NPCM FIU (drivers/spi/spi-npcm-fiu.c) appears to
check specifically for the "nuvoton,spix-mode" property. If it is only named
"spix-mode" here, will the driver fail to detect it and silently fall back
to standard mode?

> +};

[ ... ]

> +&pwm_fan {
> +	status =3D "okay";
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pwm0_pins &pwm1_pins
> +		&pwm2_pins &pwm3_pins
> +		&pwm4_pins &pwm5_pins
> +		&pwm6_pins &pwm7_pins
> +		&fanin0_pins &fanin1_pins
> +		&fanin2_pins &fanin3_pins
> +		&fanin4_pins &fanin5_pins
> +		&fanin6_pins &fanin7_pins>;
> +	#address-cells =3D <1>;
> +	#size-cells =3D <0>;
> +	fan@0 {
> +		reg =3D <0x00>;
> +		fan-tach-ch =3D <0x0 0x1>;
> +		cooling-levels =3D <127 255>;

[Severity: High]
Should these arrays be explicitly sized using /bits/ 8?

The Device Tree compiler natively emits 32-bit big-endian integers for this
syntax. However, if the driver (npcm750-pwm-fan.c) explicitly reads both
properties using of_property_read_u8_array(), an 8-byte payload like
<127 255> would be read as 8 individual u8 elements:
0, 0, 0, 127, 0, 0, 0, 255.

Does this result in registering intermediate thermal cooling states with a 0
duty cycle, inadvertently turning the fan off during active cooling request=
s?

> +	};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260610160816.2828=
713-1-tmaimon77@gmail.com?part=3D3

