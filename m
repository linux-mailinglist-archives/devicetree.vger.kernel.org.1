Return-Path: <devicetree+bounces-295874-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cC/RG6BiAmposAEAu9opvQ
	(envelope-from <devicetree+bounces-295874-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 01:13:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D8ACD51731B
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 01:13:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6127D30269F0
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 23:13:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EC7135AC3E;
	Mon, 11 May 2026 23:13:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TR16uTUU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B62F352C2B
	for <devicetree@vger.kernel.org>; Mon, 11 May 2026 23:13:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778541213; cv=none; b=VVjQ1DlkNfYfhS3i/k/KuR8EUR8JFzNX5HAk2Gf/Ox5pj6lZh0HcT9q42vcgLe1WbDX/pD46JYoY5JLuWM9raArx7L+OrPEqRV0rw1gmnT/q0Jv5IJMnOmTmgpnpHfsLXgFo3YfCGtAcX4RTLZDfDXwM0llyWkc2c7ZrkZd6Cm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778541213; c=relaxed/simple;
	bh=MbW1Yjh0MaeYKCEfw/5y9B4YFx7dDOgp+HVnjGkZsLg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=HUjk1jBU3SB7jacbOHE9JOI8wGdAammafr/QFnmQa/8jmHvFNGgGpo+312bRmALoFHgaXnfHBHp9E8eZJ6mO9+i/I6YzALrSbMa8F79AzGn2nGhNtrruY5pWF+QO8X1MFXU5N2oGVBmS/3gRc9VP9mr00s04uo/4X+8GRBmdbrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TR16uTUU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D4185C2BCFA;
	Mon, 11 May 2026 23:13:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778541213;
	bh=MbW1Yjh0MaeYKCEfw/5y9B4YFx7dDOgp+HVnjGkZsLg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=TR16uTUU/BQhbs1zjv9VS6AviLdMfzE+hc87zkAf384fU42sph7yv+9H9tew6mBcF
	 HpUP66G4w+TS3QF0lSkSyAfMZnv29lr4R07ooWXyOYZsnk9T7WL9Rd/u/xiSWVFgvg
	 dHNYfb6vqgQXTgXkWRLmSeypZjUlwaRI0EJB8BSoFxbfva+dkwz3rTsNU7l9QJ+WHt
	 s1Ptf58OboAHxZcimVLT8HR3vnBUb+opyfnnt2droYYYyj3I2SN/zIzS8CBfOKG0hQ
	 CykXKfZ+5Tc3o+O0ItCH4nlTX9ibjwo2oMYRoJ01qFf22kBgCFKLjxEcWMW1zu2Wfh
	 Uw4UapIewBwUQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 3/3] i3c: dw: Add apb reset support
Reply-To: sashiko@lists.linux.dev
To: "Jisheng Zhang" <jszhang@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260511031945.3228-4-jszhang@kernel.org>
References: <20260511031945.3228-4-jszhang@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 11 May 2026 23:13:32 +0000
Message-Id: <20260511231332.D4185C2BCFA@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: D8ACD51731B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-295874-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The assertion and deassertion ordering of `core_rst` and `apb_rst`=
 violates correct bus-peripheral hardware sequencing and LIFO resource mana=
gement symmetry.
--

commit 9be063129d3014c8590f046b253447e4090e7f37
Author: Jisheng Zhang <jszhang@kernel.org>

i3c: dw: Add apb reset support

This commit adds support for the optional APB reset in the DesignWare I3C
master driver. The reset is acquired during probe and asserted or
deasserted during runtime PM suspend and resume cycles.

> diff --git a/drivers/i3c/master/dw-i3c-master.c b/drivers/i3c/master/dw-i=
3c-master.c
> --- a/drivers/i3c/master/dw-i3c-master.c
> +++ b/drivers/i3c/master/dw-i3c-master.c
> @@ -1596,6 +1596,11 @@ int dw_i3c_common_probe(struct dw_i3c_master *mast=
er,
>  	if (IS_ERR(master->core_rst))
>  		return PTR_ERR(master->core_rst);
> =20
> +	master->apb_rst =3D devm_reset_control_get_optional_exclusive_deasserte=
d(&pdev->dev,
> +									       "apb_rst");
> +	if (IS_ERR(master->apb_rst))
> +		return PTR_ERR(master->apb_rst);
> +

Should apb_rst be requested before core_rst?

Since devm handles cleanup in reverse allocation order, requesting core_rst
first means apb_rst will be asserted before core_rst during driver unload
or probe failure. This would shut down the bus interface while the IP core
is still active, contradicting the safe shutdown sequence correctly
implemented in dw_i3c_master_runtime_suspend().

Additionally, since devm_reset_control_get_optional_exclusive_deasserted()
automatically deasserts the reset, this ordering brings the IP core out of
reset before the APB bus interface is active.

[ ... ]

> @@ -1796,6 +1802,7 @@ static int __maybe_unused dw_i3c_master_runtime_res=
ume(struct device *dev)
>  	pinctrl_pm_select_default_state(dev);
>  	dw_i3c_master_enable_clks(master);
>  	reset_control_deassert(master->core_rst);
> +	reset_control_deassert(master->apb_rst);

Is this deassertion order correct?

Deasserting core_rst before apb_rst brings the IP core out of reset before
its APB bus interface is active. Could this cause the IP to run while
disconnected from the bus, leading to unpredictable states?

Would it be safer to deassert apb_rst before core_rst?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260511031945.3228=
-1-jszhang@kernel.org?part=3D3

