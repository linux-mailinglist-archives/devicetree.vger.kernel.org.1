Return-Path: <devicetree+bounces-324967-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WH5mAFEFU2piWAMAu9opvQ
	(envelope-from <devicetree+bounces-324967-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 05:09:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA8D743A6C
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 05:09:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Y9WHAVNf;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324967-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324967-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A95F430013AF
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 03:09:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D627227A476;
	Sun, 12 Jul 2026 03:08:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6DCE2571DA;
	Sun, 12 Jul 2026 03:08:57 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783825738; cv=none; b=X4YXYHlNqHDjVW62afNl1lA+hXdpgwyttQjrB6srtTdQeGbeOVkBKqtfQ4xBdAlymLtWMKU3aSRalTK2T/v8cssEZhFxBkV6jAP2xC6T0LtdpegQME3i77cU9nwDqorclKBT9kVv+hqbKfTlTqup9xWC8HV2l/0s14sfQAuSmRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783825738; c=relaxed/simple;
	bh=2PcQAffEL6O+Z2XsFTURSpmdySYp9J66PCBIy/XV3gg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=pZdm4aFEojOyLBYGbP+AXwm3cXh3wlnhd4n2Q2CmZeLb0n8A+aWj5Uykq4PRDb473VOt1mv+VZ0JZPe4l/Us0b+xqiW2qLU95aDrRHefFwaObPv+hjbGDiit3LaPm29Nqxi7dpkMGpUIXRjKoK4ijDzzAdXRw2fHhtvamCa95GU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y9WHAVNf; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 050931F000E9;
	Sun, 12 Jul 2026 03:08:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783825737;
	bh=qeBacRK/mwCOQ3EbGDpbt5zDm5cmHcxnTzta5acfTqU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Y9WHAVNfLe5+ZKxzT1c0aTPXSNbP3KppwwO2i8MJKgd1u5y9zIaNKr1jPJYCoKwTJ
	 0YUu4mwmEoR6dBi93+QfmqM+CgO7A9El07F1aqQHynnGxl3eX47O30dhsBaEczXwXT
	 PBk8La/6UjpiFjK/sYxw6XPb3DNxXxtMiVPqe++Lv7KzyoHTnzcuIeONQK/dnua3LI
	 2ahak9QwMu3eA6bpwN1sq1Y9xnyYbx89mMv+MMx+UDbBwkSz5VvWU3QCc7G05AX4gV
	 lRTQaFSMNP6YAvo7wjOx47Bys1x3gFbZwElVVwSnAzD8oT0ZSuHL5GyeVFh2jZqwyg
	 eqvbB0T0bkhHw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 5/7] arm64: dts: allwinner: sun50i-h6: Add missing
 SRAM region for video engine
Reply-To: sashiko-reviews@lists.linux.dev
To: "Chen-Yu Tsai" <wens@kernel.org>
Cc: devicetree@vger.kernel.org, robh@kernel.org, linux-sunxi@lists.linux.dev, conor+dt@kernel.org
In-Reply-To: <20260712030011.3778169-6-wens@kernel.org>
References: <20260712030011.3778169-1-wens@kernel.org>
 <20260712030011.3778169-6-wens@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 12 Jul 2026 03:08:56 +0000
Message-Id: <20260712030857.050931F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-324967-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,smtp.kernel.org:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,sashiko.dev:url];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:wens@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:linux-sunxi@lists.linux.dev,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DCA8D743A6C

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The newly added `<&de2_sram 1>` phandle is silently ignored by t=
he OS because the SRAM driver hardcodes parsing to only the first array ele=
ment.
- [Medium] Assigning `de2_sram` to the Video Engine creates an unresolvable=
 resource conflict with the Display Engine, guaranteeing a probe failure if=
 the SRAM driver were to parse it.
--

--- Patch [5]: [PATCH v3 5/7] arm64: dts: allwinner: sun50i-h6: Add missing=
 SRAM region for video engine ---
commit dbe16923a66cbda638350c813c16a8b1c65e3b6b
Author: Chen-Yu Tsai <wens@kernel.org>

arm64: dts: allwinner: sun50i-h6: Add missing SRAM region for video engine

The SRAM C region contains a partial alias to the VE SRAM already
referenced by the video engine. To avoid access through this alias
window, the region should also be claimed by the video engine.

Add a reference to the SRAM C region to the video engine node.

> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/bo=
ot/dts/allwinner/sun50i-h6.dtsi
> index 72ce1a75647bf..88c6e3e105c07 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi

[ ... ]

> @@ -205,7 +205,7 @@ video-codec@1c0e000 {
>  			clock-names =3D "ahb", "mod", "ram";
>  			resets =3D <&ccu RST_BUS_VE>;
>  			interrupts =3D <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
> -			allwinner,sram =3D <&ve_sram 1>;
> +			allwinner,sram =3D <&ve_sram 1>, <&de2_sram 1>;

[Severity: Medium]
Will this second phandle actually be parsed by the OS?

Looking at the driver code in drivers/soc/sunxi/sunxi_sram.c, it seems
the parser hardcodes the index to 0:

drivers/soc/sunxi/sunxi_sram.c:sunxi_sram_of_parse() {
	...
	ret =3D of_parse_phandle_with_fixed_args(node, "allwinner,sram", 1, 0,
					       &args);
	...
}

Does the driver need to be updated to parse multiple SRAM elements so
this alias window is actually closed?


[Severity: Medium]
If the driver is updated to parse this second element, will it cause a probe
failure due to a resource conflict?

The de2_sram region is already claimed by the Display Engine (bus@1000000).
Looking at sunxi_sram_claim(), the API enforces strict exclusive ownership:

drivers/soc/sunxi/sunxi_sram.c:sunxi_sram_claim() {
	...
	if (sram_desc->claimed) {
		spin_unlock(&sram_lock);
		return -EBUSY;
	}
	...
}

If both the Display Engine and Video Engine try to claim de2_sram, won't the
second device to probe be rejected with -EBUSY?

>  			iommus =3D <&iommu 3>;
>  		};
>

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260712030011.3778=
169-1-wens@kernel.org?part=3D5

