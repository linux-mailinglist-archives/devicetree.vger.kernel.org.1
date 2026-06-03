Return-Path: <devicetree+bounces-306061-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id amVgHlviH2oerwAAu9opvQ
	(envelope-from <devicetree+bounces-306061-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 10:14:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C4765635958
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 10:14:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=KheXFfaJ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306061-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-306061-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4862E30B9CAC
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 08:04:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8AB72D1911;
	Wed,  3 Jun 2026 08:04:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4B803FE355
	for <devicetree@vger.kernel.org>; Wed,  3 Jun 2026 08:04:42 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780473883; cv=none; b=FuuYvyRub0C+X0SXrvp/6sLzRaKCJhM8yaVzLXiSzPxQJqhYt9IMELdNznODHWuceG02Agph8HkUI0YG6/wZw5gZo9M21HEGusTiLxV485HVAY27r35O36kfhiP6+OnacqHOxMOcgBHUMsxdASGOA9UZDBtDSOPN7zn5Dis1x38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780473883; c=relaxed/simple;
	bh=mE0KHMz1UZ6AwsYWxEvlMI8alTghmshuPzlP4hZQeNY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=QTZz420wbMP16QLDc0aFGNUw9imGezTtYmGshGhck03EQfsr3Aa0Kjk9npjUTzW0s3cdsCyLxNyajATzldZ+IN21xfed7Qear2Cu/jwaMnQXMn+vSo6FqvDZPqMeK+QNoPHep3XIqA2QnCmfGxP658VidXNyOvBv6yNVvE9gSHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KheXFfaJ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E6CB1F00893;
	Wed,  3 Jun 2026 08:04:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780473882;
	bh=DLhmHy6z9ws0/Kgv4gl6cEBJsMu3IJfYKNSRK9KZye0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=KheXFfaJ0jmXs6mhyNaQyHT8OfusnmakiRncMf4yuBBhjQwQlK5CtKX9m1G24+CLt
	 jtymA7Q0KnXbqcx1dciJqd5ddzOvY2i6+mspjL2AlzEuWRnUrDcKls+KX4Fcf1nwtU
	 aUuifie6hSuDrljiZ0wzaZbnoro5/gMYbJ/VXY1DKHLBelFDw98uvBCJ71W/DX+q/o
	 gK+lYdzp3hPui9MOu+NYfK42PTv/+Q2hF8km9BYU5kMa22NJgsUz8WTN9OrdJIn1oc
	 cVlGdvRDDK+9Mdn2kEjLjw1ihyuMC+hRkzf5xwJWHiFYz9e6JpglXVVh4HaullS6P7
	 cSX8vSbDjMsWw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 7/7] riscv: dts: tenstorrent: Add Atlantis platform
Reply-To: sashiko-reviews@lists.linux.dev
To: "Joel Stanley" <joel@jms.id.au>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260603074222.593243-8-joel@jms.id.au>
References: <20260603074222.593243-8-joel@jms.id.au>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 03 Jun 2026 08:04:41 +0000
Message-Id: <20260603080442.1E6CB1F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-306061-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:joel@jms.id.au,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid,lists.linux.dev:replyto,vger.kernel.org:from_smtp,jms.id.au:email,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C4765635958

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Circular clock parent assignment for CLK_RCPU_ROOT creates a circu=
lar dependency.
- [Medium] The machine-level IMSIC (`imsic_m`) incorrectly declares guest f=
iles (`riscv,guest-index-bits`) and an oversized `reg` mapping.
--

commit 049e98b3d4ab535b3e1fedc8df666805cb9e6805
Author: Joel Stanley <joel@jms.id.au>

riscv: dts: tenstorrent: Add Atlantis platform

Add initial support for the Tenstorrent Atlantis platform, based on the
Atlantis SoC featuring 8x RVA23-compliant Tenstorrent Ascalon-XG cores.

> diff --git a/arch/riscv/boot/dts/tenstorrent/atlantis-soc.dtsi b/arch/ris=
cv/boot/dts/tenstorrent/atlantis-soc.dtsi
> new file mode 100644
> --- /dev/null
> +++ b/arch/riscv/boot/dts/tenstorrent/atlantis-soc.dtsi

[ ... ]

> +	soc {
> +		#address-cells =3D <2>;
> +		#size-cells =3D <2>;
> +		compatible =3D "simple-bus";
> +		interrupt-parent =3D <&aplic_s>;
> +		ranges;
> +
> +		imsic_m: interrupt-controller@a0000000 {
> +			compatible =3D "tenstorrent,atlantis-imsics", "riscv,imsics";
> +			riscv,num-ids =3D <255>;
> +			riscv,guest-index-bits =3D <6>;
> +			reg =3D <0x0 0xa0000000 0x0 0x200000>;

[Severity: Medium]
Does this incorrectly declare guest files for the machine-level IMSIC?

The RISC-V Advanced Interrupt Architecture specifies that Guest Interrupt
Files exist exclusively in supervisor-level IMSICs. Since machine-level
IMSICs only contain one interrupt file per hart, would having
riscv,guest-index-bits =3D <6> and an identically oversized 2MB reg space
violate AIA semantics?

> +			interrupts-extended =3D <&cpu0_intc 11>, <&cpu1_intc 11>,

[ ... ]

> +		prcm_rcpu: clock-controller@d0000000 {
> +			compatible =3D "tenstorrent,atlantis-prcm-rcpu";
> +			reg =3D <0x00 0xd0000000 0x00 0x10000>;
> +			clocks =3D <&osc_24m>;
> +			#clock-cells =3D <1>;
> +			#reset-cells =3D <1>;
> +			assigned-clocks =3D <&prcm_rcpu CLK_RCPU_ROOT>, <&prcm_rcpu CLK_NOCC_=
CLK>;
> +			assigned-clock-parents =3D <&prcm_rcpu CLK_RCPU_ROOT>, <&prcm_rcpu CL=
K_NOC_PLL>;
> +		};

[Severity: High]
Will this circular clock parent assignment create a dependency issue in
the Common Clock Framework?

The assigned-clocks and assigned-clock-parents map CLK_RCPU_ROOT to itself.
Could this cause of_clk_set_defaults() to fail or silently abandon
reparenting, leaving the system running on an uninitialized default
hardware clock source?

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260603074222.5932=
43-1-joel@jms.id.au?part=3D7

