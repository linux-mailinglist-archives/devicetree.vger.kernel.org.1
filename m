Return-Path: <devicetree+bounces-296588-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QPFYKqruA2qwAwIAu9opvQ
	(envelope-from <devicetree+bounces-296588-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 05:23:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E78B52CB97
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 05:23:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DAAFC301C93C
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 03:23:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 753D93859E6;
	Wed, 13 May 2026 03:23:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BiIyloFq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 527582DC783
	for <devicetree@vger.kernel.org>; Wed, 13 May 2026 03:23:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778642598; cv=none; b=k6rNQhIMnwodrHOxRlKeuqh0+jbAmQgv7js3IkVxWpGerlrUJsocWWKQ3H7DugkCe519jnLdRkBJX9EhTFSDuElNslXol7OGNq5XtUZQnHlXPhO/FljPP9ZioTnmg0r8F4iQ3qgmd5qBnMFKmyVms00BMm6w857CDwb3aA8CsQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778642598; c=relaxed/simple;
	bh=nSNUV5ODD2j+pv2jBYBFaWqiNmvbo9OokpFhQppR8iI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=NbNgQRX7s1ex79OtGMYZLS9PZxxcF9Lowyq0lnIIW+xIe/+hdwTsoqhSfNGmtgx6U+7YCNSyb6hqwuepgfMx9mFqEittyKLKzMyfuv8aWooBjQLjgdtTp1bLqv4KT96SgEvgswdG2aLp93RoRlwbpAcV5DvebRims20qSZlWZZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BiIyloFq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02072C2BCB0;
	Wed, 13 May 2026 03:23:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778642598;
	bh=nSNUV5ODD2j+pv2jBYBFaWqiNmvbo9OokpFhQppR8iI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=BiIyloFqd9P/FcFTEPVmnVAgJhWOU5TQeMgtDj7MH23tfPosyfunApqCF7Wb75SB1
	 XwzS5oqUX9ovA19+flX3NAXlVqgde8cDJk4sbrvtd0NhtqpWrNdWm6rlb47Ja4ajUl
	 d0PZ52uv7DWltopUvZ1OezuUpP6GpriUNmYw8CUs1JyV1ZbrpAyijswCG616BzoBKM
	 zcPFFqRfAsDB3qu4f9gTJvVawQ5XsqL/gqFZeLTA+bGgQLAEiHaHqUZapjZAgpOmJf
	 il/Rve3Yg28j10nnfBDJjf05epYU5s33oBd2da27IteP7kXT2/USCxn8sbwrFA8SDO
	 CghVtT4cenJIw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 2/3] clk: eswin: Add eic7700 HSP clock driver
Reply-To: sashiko-reviews@lists.linux.dev
To: "Xuyang Dong" <dongxuyang@eswincomputing.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260512020747.993-1-dongxuyang@eswincomputing.com>
References: <20260512020747.993-1-dongxuyang@eswincomputing.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 13 May 2026 03:23:17 +0000
Message-Id: <20260513032318.02072C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 1E78B52CB97
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-296588-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,smtp.kernel.org:mid,sashiko.dev:url];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The variable `val` is used uninitialized if `regmap_read()` fails =
in `hsp_clk_gate_is_enabled()`.
--

commit d3ad8b72eab107c1eceac1316c7d04ee9daab08d
Author: Xuyang Dong <dongxuyang@eswincomputing.com>

clk: eswin: Add eic7700 HSP clock driver

Add driver for the ESWIN EIC7700 high-speed peripherals system
clock controller and register an auxiliary device for system
reset controller which is named as "hsp-reset".

> diff --git a/drivers/clk/eswin/clk-eic7700-hsp.c b/drivers/clk/eswin/clk-=
eic7700-hsp.c
> new file mode 100644
> index 0000000000000..0d5bd5b705dc5
> --- /dev/null
> +++ b/drivers/clk/eswin/clk-eic7700-hsp.c

[ ... ]

> +static int hsp_clk_gate_is_enabled(struct clk_hw *hw)
> +{
> +	struct eic7700_hsp_clk_gate *gate =3D to_gate_clk(hw);
> +	unsigned int val;
> +
> +	regmap_read(gate->regmap, gate->reg, &val);

If regmap_read() fails and returns an error code, does it leave the val
variable uninitialized?

> +
> +	return !!(val & BIT(gate->bit_idx));

Could the clock framework evaluate this uninitialized stack memory as the
clock's state?

If a random garbage value is returned, could it lead to subsequent
synchronization or power-management issues, such as improperly disabling
an active clock?

> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260512020432.671-=
1-dongxuyang@eswincomputing.com?part=3D2

