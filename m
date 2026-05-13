Return-Path: <devicetree+bounces-297170-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CGiXAgv6BGrCRAIAu9opvQ
	(envelope-from <devicetree+bounces-297170-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 00:24:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6219D53B69F
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 00:24:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E4F14304726F
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 22:23:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E1E438D687;
	Wed, 13 May 2026 22:23:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HNSF6d3F"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD1F384CD9
	for <devicetree@vger.kernel.org>; Wed, 13 May 2026 22:23:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778711030; cv=none; b=lDHAJxOvzZ64ffoifZNZYen1EqONZqtux8D9cFC6bG6a4iA/sYyYbhvljYEv9qrS2ewfKPUmd1mZC93BX7GqFigBLhNfbjmFqrfJABP9nz+IwY3sf/vcngvqvaYKZ8th9mqFaVl3JDZOhyS4gzrBeX2tpP8fdL5kLyu7gE7yw+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778711030; c=relaxed/simple;
	bh=XFGRE0ekWRoS2iFBXK/Yq7C4FQVjIHTwQhSicH32gJc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Uk9PanpR0tQXfmtk/9pZWoI3P3vbUxVx1OQwZZUBv0amNCABHX4kTji+/d5seeeC6G9mA7hj29mMP3sCH95weHTaFqAped7/jloa5M1THf6uv348OcMeBH2phUraItUsl7jFIuQzgiBrAkh06W8BWHH9s1mSJnecW93R4kcGISQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HNSF6d3F; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7CA4FC19425;
	Wed, 13 May 2026 22:23:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778711029;
	bh=XFGRE0ekWRoS2iFBXK/Yq7C4FQVjIHTwQhSicH32gJc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=HNSF6d3FZ4Z73yVfoBoUkSKKLX7NOL/37yQTEOKeYrDccY6M0jyS0qFdjTpZanhTc
	 bzMZ8A3SYkiumAh7j0RE+3G+EJSH6As/7wVJJXkiWPZULbrHIf3a5RV6J9bm+jXZ/s
	 LaRB4bK+Sgl/6zlsAy3aHVu0+iRPDSgCkoYGOJ5Bpj6R/5x95F+uecd0okH6lpbVVS
	 xQN1nOz7MviXhgsS4arV24osuIYQHu8WT43K/5ySf1178vlweHkbYBAsr9F2xNzcZJ
	 RjGam1og5Hp1kOkq5kNnA2A/86oCoZlek1pp+SafDrK3mwtVnXZ5IDZSQVMLTbZYtZ
	 bUV/JxJ9c7r2Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 3/9] clk: fixed-factor: Rework initialization with
 parent clocks
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?QmVub8OudCBNb25pbg==?= <benoit.monin@bootlin.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260512-clk-eyeq7-v6-3-0540cce18fb2@bootlin.com>
References: <20260512-clk-eyeq7-v6-3-0540cce18fb2@bootlin.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 13 May 2026 22:23:49 +0000
Message-Id: <20260513222349.7CA4FC19425@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 6219D53B69F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297170-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,bootlin.com:email,lists.linux.dev:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] A fixed-factor clock registered with no parent and the CLK_SET_RAT=
E_PARENT flag will cause a NULL pointer dereference.
--

commit c84e53359c0d9461f122802c5a6acb3dc1fc8cf7
Author: Beno=C3=AEt Monin <benoit.monin@bootlin.com>

clk: fixed-factor: Rework initialization with parent clocks

This commit reworks fixed-factor clock initialization to follow the standard
sequence for setting parent details in the init struct. When a fixed-factor
clock is provided without a parent, it now registers with zero parents
instead of relying on a dummy parent data struct with an invalid index.

> diff --git a/drivers/clk/clk-fixed-factor.c b/drivers/clk/clk-fixed-facto=
r.c
> index 850e8b95f3527..359e91441c740 100644
> --- a/drivers/clk/clk-fixed-factor.c
> +++ b/drivers/clk/clk-fixed-factor.c
> @@ -124,13 +124,13 @@ __clk_hw_register_fixed_factor(struct device *dev, =
struct device_node *np,
>  	init.name =3D name;
>  	init.ops =3D &clk_fixed_factor_ops;
>  	init.flags =3D flags;
> -	if (parent_name)
> -		init.parent_names =3D &parent_name;
> -	else if (parent_hw)
> -		init.parent_hws =3D &parent_hw;
> +	init.parent_names =3D parent_name ? &parent_name : NULL;
> +	init.parent_hws =3D parent_hw ? &parent_hw : NULL;
> +	init.parent_data =3D pdata;
> +	if (parent_name || parent_hw || pdata)
> +		init.num_parents =3D 1;
>  	else
> -		init.parent_data =3D pdata;
> -	init.num_parents =3D 1;
> +		init.num_parents =3D 0;

This problem wasn't introduced by this patch, but does this expose an
issue if a fixed-factor clock is registered with no parent and the
CLK_SET_RATE_PARENT flag?

If num_parents is 0, clk_factor_determine_rate() will evaluate
clk_hw_get_parent(hw), which will return NULL.

This NULL pointer is then passed directly into clk_hw_round_rate(), which
dereferences it via hw->core without any NULL checks.

Should the clock framework protect against this gracefully, similar to how
divider_ro_determine_rate() in clk-divider.c handles it by checking if
!req->best_parent_hw?

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260512-clk-eyeq7-=
v6-0-0540cce18fb2@bootlin.com?part=3D3

