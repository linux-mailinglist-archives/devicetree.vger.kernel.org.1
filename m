Return-Path: <devicetree+bounces-323667-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id KO0kNjiGT2oWiwIAu9opvQ
	(envelope-from <devicetree+bounces-323667-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 13:30:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 68A32730586
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 13:30:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=o0T7RtPk;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323667-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-323667-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 86B3A30ABA22
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 11:26:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C944D416CF5;
	Thu,  9 Jul 2026 11:26:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F2803E8324
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 11:26:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783596364; cv=none; b=C2Fk4PEfYN9Evum07o+/2eTaPrGtXq2Rf9r5hyMN5tX2PRPvwRfdJKfWkJI6y8yuPSO8cbENX2nHJtpTMzqOt91jl96/Pqeq6QY0eduif5Vkg6l+xOJ5vQfwQ1CEuQo9WoJ0OwiY8ml3ESdMGbrgoiAe2zoIGv16yAjT4hHZ5zU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783596364; c=relaxed/simple;
	bh=HhuMu9SUrGbRj7K8rxBQ1DIZvC3FIsZ1TnKtsOXnLuY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=XH8Sly9XlAZeXPxeg3QW3ItomYMU6Rzqae2omBQAekMlGcj7ZGiaPbYl7GAPMj6nzVJ/i9eSQRE9W8yKL1ncc5SmvMbJI4yjO1r7fJC/3XMsrqUWjDzzezb3Fbw0c7bQNhPDRd9GkJ+Mi+9H9wDZZs5gCC0glwYVPjgV8WsTTek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o0T7RtPk; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44BB71F000E9;
	Thu,  9 Jul 2026 11:26:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783596363;
	bh=EAl8RRkDb7yUrdPgcFLiKpJzF/Lkx1QiX+FHTL0ai6k=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=o0T7RtPkkJTGAO+Zo2GCdV14dHP8Sk2uEWJK/xwgxPq76cs7YY2lUt1PDnM2YNy+I
	 SmoBVhMx6VsaoJ9k2XPjI6I/prjx28qDJ7/QgYmFabP9PcmwhcQqKS6rRmTTF8Xq0H
	 f5uh/i4rVNxHO3KNS5rJyEKnNMRJJzGPtoDQxhApvDmEwK8TaK/vUI2jU6WKBhfskl
	 o9OucilAeKIAexXHsJtdhgygtWT3DwIJObTKXGljqZnLTXZ6Yf/8kc+qY3KhckgOiC
	 Eo/U1WlCQyWGbR6WKIk7/ZgD2qhkSJVh2V38XjPf6tOVs3AvZhJRcIcSHf2Ch444AW
	 qrQrrDYueHwiw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 4/8] clk: clocking-wizard: Add static-config clock
 provider support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Shubhrajyoti Datta" <shubhrajyoti.datta@amd.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260709111403.1579159-5-shubhrajyoti.datta@amd.com>
References: <20260709111403.1579159-1-shubhrajyoti.datta@amd.com>
 <20260709111403.1579159-5-shubhrajyoti.datta@amd.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 11:26:02 +0000
Message-Id: <20260709112603.44BB71F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-323667-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:shubhrajyoti.datta@amd.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 68A32730586

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Flexible array access violates `__counted_by` bounds check due to =
uninitialized `num` variable in `clk_wzrd_probe`.
--

--- Patch [4]: [PATCH v2 4/8] clk: clocking-wizard: Add static-config clock=
 provider support ---
commit 0905a91a49c4de73e34946b056e201766ae078dd
Author: Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>

clk: clocking-wizard: Add static-config clock provider support

This commit adds support for static-config mode in the clocking wizard.
It bypasses AXI register mapping and advertises output clocks as
clk_fixed_factor children of clk_in1 using synthesized ratios. It also
adds a 10 us delay in the enable hook to allow the clock to settle.

> diff --git a/drivers/clk/xilinx/clk-xlnx-clock-wizard.c b/drivers/clk/xil=
inx/clk-xlnx-clock-wizard.c
> index ffc78c90bee6f..5470a717fccc8 100644
> --- a/drivers/clk/xilinx/clk-xlnx-clock-wizard.c
> +++ b/drivers/clk/xilinx/clk-xlnx-clock-wizard.c
[ ... ]
> @@ -1224,6 +1314,51 @@ static int clk_wzrd_probe(struct platform_device *=
pdev)
[ ... ]
> +	} else {
> +		u32 mul_div[WZRD_NUM_OUTPUTS * 2];
> +		const struct clk_parent_data parent_data =3D { .fw_name =3D "clk_in1" =
};
> +		int num_elems =3D nr_outputs * 2;
> +
> +		/*
> +		 * xlnx,clk-mul-div is a uint32-matrix of <mul div> pairs;
> +		 * FDT encodes it as a flat u32 array so we can read it directly.
> +		 */
> +		ret =3D of_property_read_u32_array(np, "xlnx,clk-mul-div",
> +						 mul_div, num_elems);
> +		if (ret) {
> +			dev_err(&pdev->dev, "xlnx,clk-mul-div missing or invalid\n");
> +			return ret;
> +		}
> +
> +		for (i =3D 0; i < nr_outputs; i++) {
> +			u32 mul =3D mul_div[2 * i];
> +			u32 div =3D mul_div[2 * i + 1];
> +
> +			if (!mul || !div)
> +				return dev_err_probe(&pdev->dev, -EINVAL,
> +						     "invalid mul/div for clkout%d\n", i);
> +
> +			clk_name =3D devm_kasprintf(&pdev->dev, GFP_KERNEL,
> +						  "%s_out%d", dev_name(&pdev->dev), i);
> +			if (!clk_name)
> +				return -ENOMEM;
> +
> +			hw =3D clk_wzrd_devm_register_static_fixed_factor(&pdev->dev, clk_nam=
e,
> +									&parent_data,
> +									CLK_SET_RATE_PARENT,
> +									mul, div);
> +			if (IS_ERR(hw))
> +				return PTR_ERR(hw);
> +			clk_wzrd->clk_data.hws[i] =3D hw;

[Severity: High]
Will this trigger a UBSAN bounds-check panic when assigning to hws[i]?

The struct clk_hw_onecell_data uses the __counted_by(num) attribute for
its hws flexible array. Since clk_wzrd->clk_data.num is zero here (from
the initial kzalloc) and is only updated after this loop, does writing
to hws[i] violate the __counted_by bounds check?

Should clk_wzrd->clk_data.num be set to nr_outputs before entering the
loop to prevent a panic during device probe when CONFIG_UBSAN_BOUNDS
is enabled?

It looks like the pre-existing dynamic config path in
clk_wzrd_register_output_clocks() suffers from this same initialization
ordering issue, even though this specific loop is new to this patch.

> +		}
> +
> +		clk_wzrd->clk_data.num =3D nr_outputs;
> +
> +		ret =3D devm_of_clk_add_hw_provider(&pdev->dev, of_clk_hw_onecell_get,
> +						  &clk_wzrd->clk_data);
> +		if (ret)
> +			return dev_err_probe(&pdev->dev, ret,
> +					     "unable to register clock provider\n");
>  	}
> =20
>  	return 0;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709111403.1579=
159-1-shubhrajyoti.datta@amd.com?part=3D4

