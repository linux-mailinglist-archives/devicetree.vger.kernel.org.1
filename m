Return-Path: <devicetree+bounces-326509-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /z7HLZeXVmpa+gAAu9opvQ
	(envelope-from <devicetree+bounces-326509-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 22:09:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 22FFB758A3B
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 22:09:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Za6bQnX1;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326509-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326509-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2DFF2300D169
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 20:09:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94B5539CD04;
	Tue, 14 Jul 2026 20:09:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EF40423E8B
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 20:09:56 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784059797; cv=none; b=lbVUgvjtedxmyumfXV5yBqzewflwx177Z31hTaVJR96rQrmmaC7f6qTPMPHT3h3BBT1g446E/lO2aZvwNfrtueZTqWnHKt45Nzi34fI527SillPoG9TI3CQmZ/Cuvhq3SvaCLLOp2fWRG9+oSOfoaIIOiKc7FTuzwPojdQ4E39g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784059797; c=relaxed/simple;
	bh=pjUZk80tICzsIJb2Ek5IlefH0vuN7szav2kO6I3lnGE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=EdKFtd3UtpsDhbEAXsnHGaPrti8kg2vQxsUKNSq+WXYqT4roLlzTByOiJoxKVXf9QwO+gk1HXZT0jCCkRSfi+yU5ATSw8CykmjqL2pgpVG7MMfeyScVlJW5evJgye11JkVjRSOvHHMnTjSffPhbh52p9YTMl4jAQGs9TezY8/14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Za6bQnX1; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C22821F000E9;
	Tue, 14 Jul 2026 20:09:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784059796;
	bh=gWJ5F1KMzEaMFf4caM0oh7eTAdzvTQA2KY47hZLQAZY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Za6bQnX1Xk31u6DfQf+fnF4fRMSqN5yvPooNA+TsxX2XXAPAWBTjs7FYL8qPk57TG
	 DpAFAftv69naQo1siMN5A4Vrfa/JKKNbOsog25W7MPc57JNoSrCICAEOwyr732r6uv
	 qXhNiVmoaFNBWUIvT43QF0pzVxf0jWP6WcvOiohDlriitmcIX4nPFfllfOF6pBJiHS
	 G3vI2VHPPevwhpuxAtNNV5OOmQ3NilnujujUzFWQfb9I4SaPY/d223SjG/qokYYS+H
	 C5odegEOqQZIEj79ejXNlxnuNerCeuNj02R82DcNLXKFquKBVpsv64yFF8dm6wiiiX
	 4v6+ZT00K1TDA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/6] clk: rockchip: Add clock controller for the
 RV1106
Reply-To: sashiko-reviews@lists.linux.dev
To: "Simon Glass" <sjg@chromium.org>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260714193656.2196447-3-sjg@chromium.org>
References: <20260714193656.2196447-1-sjg@chromium.org>
 <20260714193656.2196447-3-sjg@chromium.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jul 2026 20:09:55 +0000
Message-Id: <20260714200955.C22821F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-326509-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:sjg@chromium.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,sashiko.dev:url,smtp.kernel.org:mid,chromium.org:email,vger.kernel.org:from_smtp,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 22FFB758A3B

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:
- [High] The `RV1106_CPUCLK_RATE` macro unconditionally overwrites the dyna=
mically calculated safe intermediate CPU divider during frequency transitio=
ns, causing CPU crashes.
- [High] The exported `PLL_APLL` clock is silently overwritten by anonymous=
 clock branches due to a dummy ID collision.
- [High] Register collision between `CLK_RTC_32K` and `CLK_I2C1` multiplexe=
rs.
- [Medium] CLK_VICAP_M1_FRAC is missing the CLK_SET_RATE_PARENT flag.
--

--- Patch [2]: [PATCH v2 2/6] clk: rockchip: Add clock controller for the R=
V1106 ---
commit f23e8ffe0002c99e81093bf229093ffef3a65c00
Author: Simon Glass <sjg@chromium.org>

clk: rockchip: Add clock controller for the RV1106

The patch adds the clock and reset controller driver for the Rockchip
RV1106, based on the vendor kernel adapted to the upstream clock framework.
It also provides the MMC drive and sample phase clocks from the CRU via
an auxiliary GRF regmap.

Link: https://github.com/LuckfoxTECH/luckfox-pico

> diff --git a/drivers/clk/rockchip/clk-rv1106.c b/drivers/clk/rockchip/clk=
-rv1106.c
> new file mode 100644
> index 0000000000000..cb21f32c8a26b
> --- /dev/null
> +++ b/drivers/clk/rockchip/clk-rv1106.c
> @@ -0,0 +1,1100 @@

[ ... ]

> +#define RV1106_CPUCLK_RATE(_prate, _aclk_core, _pclk_dbg, _is_pvtpll)	\
> +{									\
> +	.prate =3D _prate,						\
> +	.divs =3D {							\
> +		RV1106_CLKSEL0(_aclk_core),				\
> +		RV1106_CLKSEL1(_pclk_dbg),				\
> +	},								\
> +	.pre_muxs =3D {							\
> +		RV1106_CLKSEL3(1),					\
> +		RV1106_CLKSEL2(2),					\
> +	},								\

[Severity: High]
Does this hardcoded array overwrite the safe intermediate divider calculated
by the generic CPU clock framework during frequency scaling?

The core clock framework calculates a safe intermediate divider and writes =
it
to RV1106_CORECLKSEL_CON(0) bits 4:0, as configured in rv1106_cpuclk_data:

	.core_reg[0] =3D RV1106_CORECLKSEL_CON(0),
	.div_core_shift[0] =3D 0,
	.div_core_mask[0] =3D 0x1f,

By unconditionally applying RV1106_CLKSEL3(1) in the pre_muxs array, could =
it
overwrite this dynamically calculated divider and potentially cause instabi=
lity
during CPU frequency transitions?

[ ... ]

> +static struct rockchip_clk_branch rv1106_rtc32k_pmu_fracmux __initdata =
=3D
> +	MUX(CLK_RTC_32K, "clk_rtc_32k", clk_rtc32k_pmu_p, CLK_SET_RATE_PARENT |=
 CLK_SET_RATE_NO_REPARENT,
> +			RV1106_PMUCLKSEL_CON(0), 6, 2, MFLAGS);

[Severity: High]
Are clk_rtc_32k and clk_i2c1 sharing the same register bitfield?

This multiplexer is defined using bits 6:7 of RV1106_PMUCLKSEL_CON(0).
However, later in rv1106_clk_branches, CLK_I2C1 is defined using the exact
same bits:

	COMPOSITE_NODIV(CLK_I2C1, "clk_i2c1", mux_200m_100m_24m_32k_p, 0,
			RV1106_PMUCLKSEL_CON(0), 6, 2, MFLAGS,

Could modifying the parent of one clock inadvertently corrupt the
configuration of the other?

[ ... ]

> +static struct rockchip_clk_branch rv1106_clk_branches[] __initdata =3D {
> +
> +	FACTOR(0, "xin_osc0_half", "xin24m", 0, 1, 2),
> +
> +	/* PD_CORE */
> +	GATE(CLK_PVTM_CORE, "clk_pvtm_core", "xin24m", 0,

[Severity: High]
Will these anonymous branches using ID 0 silently overwrite the PLL_APLL
clock in the provider's clock array?

Since PLL_APLL corresponds to ID 0 in the DT bindings, it gets registered
first at ctx->clk_data.clks[0]. Since rockchip_clk_set_lookup() doesn't
ignore ID 0, do these dummy IDs cause device tree consumers of the APLL
clock to receive an incorrect internal anonymous clock instead?

[ ... ]

> +	COMPOSITE(CLK_VICAP_M1_SRC, "clk_vicap_m1_src", mux_gpll_cpll_p, 0,
> +			RV1106_CLKSEL_CON(31), 7, 1, MFLAGS, 2, 5, DFLAGS,
> +			RV1106_CLKGATE_CON(3), 13, GFLAGS),
> +	COMPOSITE_FRACMUX(CLK_VICAP_M1_FRAC, "clk_vicap_m1_frac", "clk_vicap_m1=
_src", 0,
> +			RV1106_CLKSEL_CON(32), 0,
> +			RV1106_CLKGATE_CON(3), 14, GFLAGS,
> +			&rv1106_clk_vicap_m1_fracmux),

[Severity: Medium]
Should CLK_VICAP_M1_FRAC pass the CLK_SET_RATE_PARENT flag instead of 0?

Its sibling CLK_VICAP_M0_FRAC uses CLK_SET_RATE_PARENT to allow rate changes
to propagate up to the integer divider. Without this flag, will the clock
framework fail to adjust the parent divider when a rate change is requested?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260714193656.2196=
447-1-sjg@chromium.org?part=3D2

