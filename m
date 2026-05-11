Return-Path: <devicetree+bounces-295836-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eBrMNzpTAmpvrQEAu9opvQ
	(envelope-from <devicetree+bounces-295836-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 00:07:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AAB551698F
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 00:07:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D17DA3014824
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 22:07:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 602613D669D;
	Mon, 11 May 2026 22:07:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/+joI4L"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4DB37B007
	for <devicetree@vger.kernel.org>; Mon, 11 May 2026 22:07:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778537271; cv=none; b=h7MdZorIF2/hE+mQ6GnbUQAvE8DGG39W/3U4eeb6E05DJowTtR1hn44bq7bZ8ACtLvYZKMEE4qDGU4K1i2JCDu+kKYMyUsh2RXDAbA8q5hz8sGcyAMjnOXvFPSawq4RSTiHT0jBxgzci0E7pGmYJgw1opUrUjXsKt+1HKctW1AM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778537271; c=relaxed/simple;
	bh=9eoDtnK3er/B+JyvGtx1OXXz5rhO9UFZaN0y9/pHo9c=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=grY0jeXKxhTkwQOZZVjcYobaZzWRFH5J6msR8a/XNds5uLoOT99oS/OPh3lRkLcGvemE//e2Gk/H43mxZCbGsoiSOtULnVCfFQ/0J1qmo9PEa9XCsRChamWl6F6nhjnc3NLHOly/HCVTZsnKDTpe9qwdBu5XlbjU81UIdamhud8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/+joI4L; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F88BC2BCB0;
	Mon, 11 May 2026 22:07:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778537270;
	bh=9eoDtnK3er/B+JyvGtx1OXXz5rhO9UFZaN0y9/pHo9c=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=t/+joI4LhkNM1gqQoHAYSPe3/xnshkhjXK0d3C/qesP6COaaJJu7qyaMjPTpPZHm1
	 87i7QUaBR1uu9ffdSMRts9l2Y9LpZE7Qm7JPch50i+TjPm1ZjbRY/PzPbGNfrW9EsU
	 +yFO2jgAOwhi1s3I3D77DSQ3LM4iVMiXVI+6rIx1v2gvcjMrGvvwMxB5juiEgkNmQK
	 G1LFx7ekzVHMtf09qKpuYPFVUSEpckn3cLbEm92LQqvwQK+gncN/p54QfcYCXaXBbw
	 gbMoMLkoAFcJxT+w6CFzEuLRhb4frR3RH5elBHLTW67XKHPekVuQBeOsQOJfNLfgPJ
	 I4qZNVoGHWA1g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RFC 2/4] clk: zte: Introduce a driver for zx297520v3 top
 clocks and resets.
Reply-To: sashiko@lists.linux.dev
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260510-zx29clk-v1-2-e1bacfffe967@gmail.com>
References: <20260510-zx29clk-v1-2-e1bacfffe967@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 11 May 2026 22:07:49 +0000
Message-Id: <20260511220750.9F88BC2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 8AAB551698F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-295836-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,lists.linux.dev:replyto];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 6 potential issue(=
s) to consider:
- [High] The driver uses the internal `__clk_lookup` function, which is not=
 exported to modules, causing a linker error.
- [High] The reset controller operations lack locking, leading to read-modi=
fy-write race conditions on shared registers.
- [High] The clock provider is registered using `of_clk_add_hw_provider()` =
but never deregistered, leading to a Use-After-Free vulnerability.
- [High] Reset controller callbacks dereference unpopulated reset IDs witho=
ut validation, leading to a NULL pointer dereference.
- [High] Incorrect error checking for `devm_platform_ioremap_resource()` le=
ads to an unhandled `ERR_PTR` dereference.
- [High] The reset controller's `.status` callback returns inverted logic c=
ompared to the reset API requirements.
--

commit b59c44c93de9913db3a45af0e58b45b578c88685
Author: Stefan D=C3=B6singer <stefandoesinger@gmail.com>

clk: zte: Introduce a driver for zx297520v3 top clocks and resets.

This commit introduces a driver for the ZTE zx297520v3 top clocks and
resets, which controls core devices like PLLs, the AHB bus, and timers.

> diff --git a/drivers/clk/zte/clk-zx297520v3.c b/drivers/clk/zte/clk-zx297=
520v3.c
> new file mode 100644
> index 0000000000000..f73f5c006641f
> --- /dev/null
> +++ b/drivers/clk/zte/clk-zx297520v3.c

[ ... ]

> +static int zx297520v3_rst_assert(struct reset_controller_dev *rcdev, uns=
igned long id)
> +{
> +	struct zx29_clk_controller *data =3D container_of(rcdev, struct zx29_cl=
k_controller, rcdev);
> +	u32 val;
> +
> +	val =3D readl(data->resets[id].reg);

Does this code safely handle unpopulated reset IDs?

The resets array is zero-initialized via devm_kzalloc(), and only specific =
IDs
have their .reg address populated in the probe function. If a consumer requ=
ests
an unpopulated ID, could data->resets[id].reg be NULL, leading to a NULL
pointer dereference here?

Additionally, does this read-modify-write sequence need locking?

Several reset IDs share the same physical register (e.g., offset 0x74 is us=
ed
by PMM, TIMER_T12, and others). If concurrent reset operations occur for
different devices on the same register, could the read-modify-write cycles
overlap and corrupt the register state?

> +	val &=3D ~data->resets[id].mask;
> +	writel(val, data->resets[id].reg);
> +
> +	return 0;
> +}

[ ... ]

> +static int zx297520v3_rst_status(struct reset_controller_dev *rcdev,
> +			       unsigned long id)
> +{
> +	struct zx29_clk_controller *data =3D container_of(rcdev, struct zx29_cl=
k_controller, rcdev);
> +	u32 val;
> +
> +	val =3D readl(data->resets[id].reg);
> +
> +	return (val & data->resets[id].mask) =3D=3D data->resets[id].mask;
> +}

Is the return value of this status callback inverted?

In zx297520v3_rst_assert(), the reset is asserted by clearing the mask bits.
However, this status function returns 1 when the bits are set (deasserted) =
and
0 when the bits are cleared (asserted). The reset API expects the status
callback to return a positive value when the reset line is asserted.

[ ... ]

> +static int zx297520_topclk_probe(struct platform_device *pdev)
> +{
> +	struct zx29_clk_controller *top;
> +	struct device *dev =3D &pdev->dev;
> +	struct clk_hw *hw;
> +	struct clk *clk;
> +	int res;

[ ... ]

> +	top->base =3D devm_platform_ioremap_resource(pdev, 0);
> +	WARN_ON(!top->base);

Does devm_platform_ioremap_resource() return NULL on failure?

This function returns an ERR_PTR (such as ERR_PTR(-EINVAL)) on failure, not
NULL. If mapping fails, the WARN_ON check will pass and the error pointer w=
ill
be used as a base address in subsequent calls like zx297520v3_pll(), causing
an invalid memory access. Should this be checked with IS_ERR() instead?

[ ... ]

> +	/* The documentation says 491.52 MHz and measurement with the LSP TDM d=
evice supports this.
> +	 * The default value is 0x480C2011. To get to 491.52 with these setting=
s it needs a 23.04
> +	 * MHz reference clock, which matches unknownpll_d2. If unknownpll is d=
isabled, dpll loses
> +	 * its lock.
> +	 *
> +	 * The proprietary LTE driver or coproc enables and disables it. TDM an=
d I2S can use it.
> +	 *
> +	 * FIXME: Isn't there a nicer way to get the struct clk for unknownpll_=
d2? I don't want to
> +	 * return all generated clocks from zx297520v3_pll or store them in the=
 controller because
> +	 * I need one of them here. I could always pass the parent by name thou=
gh.
> +	 */
> +	res =3D zx297520v3_pll(dev, top->base + 0x18, "dpll", __clk_lookup("unk=
nownpll_d2"));

Will this cause a linker error if the driver is built as a module?

The Kconfig defines COMMON_CLK_ZX297520V3 as a tristate option, but
__clk_lookup() is an internal clock framework function that is not exported.
If the driver is compiled as a module, this might cause an undefined symbol
linker error for __clk_lookup.

[ ... ]

> +	of_clk_add_hw_provider(dev->of_node, of_clk_hw_onecell_get, top->clocks=
);

Is there a missing cleanup for this clock provider?

The driver registers the clock provider with of_clk_add_hw_provider(), but
doesn't seem to use the managed devm_of_clk_add_hw_provider() or provide a
.remove callback to deregister it.

If a later probe step (like devm_reset_controller_register()) fails, or if =
the
driver is unbound, top->clocks will be freed by devres. Could this leave a
dangling pointer in the global of_clk_providers list and cause a
use-after-free?

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260510-zx29clk-v1=
-0-e1bacfffe967@gmail.com?part=3D2

