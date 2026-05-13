Return-Path: <devicetree+bounces-296541-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6A4FLAvCA2px+QEAu9opvQ
	(envelope-from <devicetree+bounces-296541-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 02:12:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B13CA52B80C
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 02:12:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BADA0302413D
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 00:12:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D683843AB0;
	Wed, 13 May 2026 00:12:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DijTexcQ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3AD0179A3;
	Wed, 13 May 2026 00:12:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778631172; cv=none; b=oP7M7vkl16RU1VJbNj4WQyfcdQL/oMyl13eSXiPMqIwRMqcKGzQOu2zqlVT/y9yGBZijAcemIE4nsZ98B+WDqXeqiX9EK373vzxlOTLJRwUTstDp5XAU6+jvbMZeGySOmoFRY8/FPcHZM1UkyHtFYU9K5UyI+5qytt06hTUrhz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778631172; c=relaxed/simple;
	bh=8KyXjjxQbRpENVbsYeAgqrKcdZGC9XI/nrq6QNY8kx4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=IaVm3lGKqJJjFvE0bZ1Ar7boNplNW5sddbbYnMzDHwbacsdXP2Qp5XxbFVMECEobPpiaFV8O+6A1xELmF29RheK5pY2KVkB6OF/7ZVOaS2zLm9jDAQ0As4/e+3CExFoQ0ghcoi4ge5wPZfEJGGABYLIpATF6xhFTlypWzt4mK0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DijTexcQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 12A99C2BCB0;
	Wed, 13 May 2026 00:12:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778631172;
	bh=8KyXjjxQbRpENVbsYeAgqrKcdZGC9XI/nrq6QNY8kx4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=DijTexcQExMvee6AB5FhL32DRwLwd+T/CC+EqxJf7WH0jB6AsIi3qtLTNm9XHlwQ4
	 E1IYmuCev30Cx6fRW/umG5D3L5vS9STTtJG8GQKFQ5oIAnm5N12WfnVh0hCpcaT5vI
	 NdPbbPot+u9d/zVlwRnEXgCav3ckDkgX6CkDLOWOxA/N+KljQ8vG4XmxnyCmYaTTui
	 276EewymZJOm+OWTwCFyTGPSlQ3DoLlC/YmBcEXp4UuuXi+veEqzkjJShPadFFQCSz
	 rJlq7m89ndXuUF1/25xlcFwOSDMt0I1sLDIBgM/XQUpaFcEC5nWug4UucgpYbbCJ8W
	 VWgtd7fbSDsdQ==
From: sashiko-bot@kernel.org
Subject: Re: [RFC PATCH 2/9] clk: renesas: r9a09g077: Add SYSC regmap
 support
Reply-To: sashiko-reviews@lists.linux.dev
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, wsa+renesas@sang-engineering.com, krzk+dt@kernel.org, linux-watchdog@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260511185058.1926869-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260511185058.1926869-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 13 May 2026 00:12:51 +0000
Message-Id: <20260513001252.12A99C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: B13CA52B80C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-296541-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,renesas.com:email,smtp.kernel.org:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,lists.linux.dev:replyto]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Use-After-Free vulnerability due to globally registering a devres-=
managed regmap.
- [Medium] Memory leak of devres allocations for non-matching child nodes d=
uring initialization.
--

commit 42e8a93f573528685964e7e4e8583fa90ffb5b6b
Author: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

clk: renesas: r9a09g077: Add SYSC regmap support

This commit adds System Controller (SYSC) regmap support for the RZ/T2H SoC.
It implements support for creating regmaps for SYSC blocks defined as
child nodes within the CPG address space, and registers them using
of_syscon_register_regmap().

> diff --git a/drivers/clk/renesas/r9a09g077-cpg.c b/drivers/clk/renesas/r9=
a09g077-cpg.c
> --- a/drivers/clk/renesas/r9a09g077-cpg.c
> +++ b/drivers/clk/renesas/r9a09g077-cpg.c

[ ... ]

> @@ -514,6 +514,172 @@ r9a09g077_cpg_clk_register(struct device *dev, cons=
t struct cpg_core_clk *core,

[ ... ]

> +static int r9a09g077_sysc_init(struct device *dev)
> +{
> +	struct device_node *child, *np =3D dev->of_node;
> +
> +	for_each_child_of_node(np, child) {
> +		struct regmap_config *regmap_cfg __free(kfree) =3D kzalloc_obj(*regmap=
_cfg);
> +		struct r9a09g077_sysc_reg *sysc_reg;
> +		struct regmap *regmap;
> +		void __iomem *base;
> +		char *name;
> +		u32 index;
> +		int ret;
> +
> +		sysc_reg =3D devm_kzalloc(dev, sizeof(*sysc_reg), GFP_KERNEL);
> +		if (!sysc_reg) {
> +			of_node_put(child);
> +			return -ENOMEM;
> +		}
> +
> +		if (!regmap_cfg) {
> +			of_node_put(child);
> +			return -ENOMEM;
> +		}
> +
> +		if (!of_node_name_eq(child, "system-controller"))
> +			continue;

Does this leak devm-allocated memory for every child node that isn't named
system-controller?

The devm_kzalloc() call binds the memory to the parent device's lifetime,
not the loop scope. When the loop skips a non-matching node via continue,
the sysc_reg allocation remains until the device is removed.

Could the of_node_name_eq() check be moved above the memory allocations?

[ ... ]

> +		regmap =3D devm_regmap_init(dev, &rzt2h_sys_regmap_bus, sysc_reg, regm=
ap_cfg);
> +		if (IS_ERR(regmap)) {
> +			of_node_put(child);
> +			return PTR_ERR(regmap);
> +		}
> +
> +		ret =3D of_syscon_register_regmap(child, regmap);
> +		if (ret) {
> +			of_node_put(child);
> +			return ret;
> +		}
> +	}

Can this sequence cause a use-after-free if device initialization fails lat=
er?

The of_syscon_register_regmap() function adds the regmap to a global
syscon_list, but there is no corresponding unregister function to remove it.

If a subsequent step in the probe path fails, such as of_clk_add_provider()
failing in cpg_mssr_common_init(), the driver core will tear down all
device-managed resources. This will free the regmap and unmap its I/O memor=
y.

Because the freed regmap remains in the global syscon_list, a subsequent
syscon_node_to_regmap() lookup by a consumer would return a dangling pointe=
r,
leading to a use-after-free and a potential MMIO page fault.

> +
> +	return 0;
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260511185058.1926=
869-1-prabhakar.mahadev-lad.rj@bp.renesas.com?part=3D2

