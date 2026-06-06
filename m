Return-Path: <devicetree+bounces-307679-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DadMIDgYJGo33AEAu9opvQ
	(envelope-from <devicetree+bounces-307679-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 06 Jun 2026 14:53:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CD1D264D8BA
	for <lists+devicetree@lfdr.de>; Sat, 06 Jun 2026 14:53:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="aRXKHH2/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307679-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-307679-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 42D0F302DF52
	for <lists+devicetree@lfdr.de>; Sat,  6 Jun 2026 12:48:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 931D6395AF2;
	Sat,  6 Jun 2026 12:48:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C898302146
	for <devicetree@vger.kernel.org>; Sat,  6 Jun 2026 12:48:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780750111; cv=none; b=C0DwZh0pR7zGuimuFUQZOugIHinH/BbYA1VjS+bllmvZsiNkZoZEd8YOvVLkFW4pJ/Ps/pTwGbKFFqcryl2r2ThOkjK/U9Pbxsbg5b+/sClv9vYx9Apc0GmTQrUH/XhkdTeIdp7qjivSRPMi8iST8wESoG9ZJr5EZBPA+kgmLP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780750111; c=relaxed/simple;
	bh=RJOqGOXdfiU8RznROh5NMv0YKBm9ihN97IWgbpvis40=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ECu9KqbdQoGqsd1b1wscSTlBVYXeMrplNbKuoOnd5C3OHq9olsXKq5qZDYcOxPGQZ3aaJHwV4ILel0BQh7Hz9CjHd7KsOJpI5QFRlsKvVJYf4LkNliL5UVvHB+P5x3EC5A+FnlkR+uCU297nrZ607G0Q9T9ek+/eFn78gnro63k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aRXKHH2/; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5CDE1F00898;
	Sat,  6 Jun 2026 12:48:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780750110;
	bh=Kh075M5sx6/VCuoZopmooaPl2jLxm38bLoLeeOjv22Y=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=aRXKHH2/sJ25lG9lC1q4Tb9u5lwnrUyKJkUwOMp4CzLeytT+nXZ9oqscC+MjZ2+Xm
	 4qVWw2+L5SJYEB781ETR4ncMXA06v2CTzoZxlEc9hz1g8X0N70R//oFlM9LHD7RSMz
	 7FIUUzUvqZ2t1crZuYsVqG7kUo0c4MrNCEWVhmByWlukseOJxlMXhywNPf4fAvyEr0
	 w/e/rOg17ZvPEz1JGQNw1JnH6llfyfx+AdGpmU3Xb4WrH6BlxUNOTyaEmLhrFgAW31
	 aJDgiHt9gIBfOQTow1WrsSsaYAmJejA9IlNc3E9qKASG3i8YgTgPoqPn5+XElgx7k0
	 XLTEiLG0f0ohg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 2/2] interconnect: qcom: add MSM8x60 NoC driver
Reply-To: sashiko-reviews@lists.linux.dev
To: "Herman van Hazendonk" <github.com@herrie.org>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260606-submit-interconnect-msm8660-v3-2-f9da0158cdf8@herrie.org>
References: <20260606-submit-interconnect-msm8660-v3-2-f9da0158cdf8@herrie.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 06 Jun 2026 12:48:29 +0000
Message-Id: <20260606124829.E5CDE1F00898@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-307679-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:github.com@herrie.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,vger.kernel.org:from_smtp,smtp.kernel.org:mid,herrie.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CD1D264D8BA

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [High] Memory leak of dynamically allocated target nodes on probe failure.
- [High] Use-After-Free (UAF) of cross-fabric nodes upon driver unbind.
- [High] Bandwidth starvation due to incorrect node clock rate calculation.
--

commit 5d22619e7f59ed3d33c0640a610abb2e710a6a9c
Author: Herman van Hazendonk <github.com@herrie.org>

interconnect: qcom: add MSM8x60 NoC driver

Add a Qualcomm interconnect driver for the MSM8x60 family modelling the
four NoC fabrics (APPSS, System, MMSS, Daytona) that connect masters
and slaves on these Scorpion-class SoCs.

> diff --git a/drivers/interconnect/qcom/msm8660.c b/drivers/interconnect/q=
com/msm8660.c
> new file mode 100644
> --- /dev/null
> +++ b/drivers/interconnect/qcom/msm8660.c
[ ... ]
> @@ -1231,23 +1231,23 @@ static int msm8660_icc_set(struct icc_node *src, =
struct icc_node *dst)
[ ... ]
> +	list_for_each_entry(n, &provider->nodes, node_list) {
> +		u64 node_bw =3D max(icc_units_to_bps(n->avg_bw),
> +				  icc_units_to_bps(n->peak_bw));
> +		u64 node_rate =3D div_u64(node_bw, qp->desc->bus_width);

[Severity: High]
Does this calculation incorrectly starve narrow links by using the global
fabric bus width?

The clock rate is calculated by dividing the node's bandwidth by the overall
fabric bus width (qp->desc->bus_width). However, some peripheral nodes
(like sfab_to_system_fpb) have a narrower bus width (4 bytes) than the full
fabric (8 bytes).

Dividing a 4-byte node's bandwidth by 8 instead of its own width halves the
resulting requested clock frequency, mathematically guaranteeing these narr=
ower
links will be starved of bandwidth.

Should this use ((struct msm8660_icc_node *)n->data)->buswidth instead?

[ ... ]
> @@ -1563,30 +1563,30 @@ static int msm8660_icc_probe(struct platform_devi=
ce *pdev)
[ ... ]
> +		for (j =3D 0; j < qnodes[i]->num_links; j++) {
> +			ret =3D icc_link_nodes(node,
> +					     &qnodes[i]->link_nodes[j]->node);
> +			if (ret)
> +				goto err_remove_nodes;
> +		}
> +
> +		data->nodes[i] =3D node;
> +	}
> +
> +	ret =3D icc_provider_register(provider);
> +	if (ret)
> +		goto err_remove_nodes;
> +
> +	platform_set_drvdata(pdev, qp);
> +
> +	dev_info(dev, "MSM8660 interconnect provider registered\n");
> +
> +	return 0;
> +
> +err_remove_nodes:
> +	icc_nodes_remove(provider);
> +	msm8660_clear_node_cache(qnodes, num_nodes);

[Severity: High]
Does this error path leak memory for target nodes that were allocated
during icc_link_nodes() but not yet added to the provider?

If probe fails (e.g., -ENOMEM in icc_node_set_name()), the error path calls
icc_nodes_remove(), which frees nodes that have already been fully initiali=
zed
and added to provider->nodes.

The driver then calls msm8660_clear_node_cache(), which zeroes all
qnodes[k]->node pointers. This destroys the only reference to any un-added
target nodes that were allocated mid-loop by icc_link_nodes(), resulting in=
 a
memory leak.

[ ... ]
> @@ -1604,11 +1604,11 @@ static void msm8660_icc_remove(struct platform_de=
vice *pdev)
> +static void msm8660_icc_remove(struct platform_device *pdev)
> +{
> +	struct msm8660_icc_provider *qp =3D platform_get_drvdata(pdev);
> +	const struct msm8660_icc_desc *desc =3D of_device_get_match_data(&pdev-=
>dev);
> +
> +	icc_provider_deregister(&qp->provider);
> +	icc_nodes_remove(&qp->provider);

[Severity: High]
Can this cause a use-after-free of cross-fabric nodes if a fabric is unbound
via sysfs?

The interconnect fabrics are registered as separate platform devices.
Cross-fabric links are established by storing a raw pointer to the target
node in the source node's links array.

Because there is no .suppress_bind_attrs =3D true, fabrics can be individua=
lly
unbound via sysfs. Unbinding a target fabric triggers icc_nodes_remove(),
which destroys and frees its nodes. The still-bound source fabric then reta=
ins
a dangling pointer to the freed node in its links array, which will be
dereferenced during path finding operations.

> +	if (desc)
> +		msm8660_clear_node_cache(desc->nodes, desc->num_nodes);
> +	/* clk cleanup happens via devm_add_action_or_reset on remove. */
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260606-submit-int=
erconnect-msm8660-v3-0-f9da0158cdf8@herrie.org?part=3D2

