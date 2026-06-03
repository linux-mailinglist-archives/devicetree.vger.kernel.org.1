Return-Path: <devicetree+bounces-306380-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id q5KyDBhMIGpA0gAAu9opvQ
	(envelope-from <devicetree+bounces-306380-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 17:45:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C09C6395E5
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 17:45:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=F1VV4MjB;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306380-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-306380-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E11D431DF16A
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 15:29:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EC5648167E;
	Wed,  3 Jun 2026 15:25:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C84963D647C
	for <devicetree@vger.kernel.org>; Wed,  3 Jun 2026 15:25:48 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780500349; cv=none; b=gdLrvq/Ds1aQ3lXGv8ZTPBlmJrgUAwVO5x6iUTOQw6OmZSuuSBmqyKqyjopThYoj1CDKeRPfozwiV3EMV9ImBrBILcsZwDQeFTPIhMdAuKOhBTYsvCq5FWre8xIUar1zp6/u9wmcszGYx8c2PXd2xYesnMXXGR3MK7/9dtd6MbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780500349; c=relaxed/simple;
	bh=xl3K7HOM9G7Jb8YXM+QFTW+Vk64aG3LHiZ+8Ep/4gB8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Uo8b8ncpfY8P4cY/bQ7FJ0RpCQcW7Jksb8cCl9Ur03w7rt2bi0xiv7CrKsgPLa+oNh5Xf1/q2ia4T08tj8tN4yWbGv9AQD/t791/HtSxeMxEVRD3pXpOqH30Er22qfPIa4vERNDM2+rGIoQ8vf8Bkho/ZtINKQnFG2FNpLivrlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F1VV4MjB; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E9171F00898;
	Wed,  3 Jun 2026 15:25:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780500348;
	bh=+xlYfR2eSsyL9OO9/VmnVkyzR4flCcx7yyR3M+tHNP4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=F1VV4MjBBROyDpR/uO6OXX/vDU5EusYTAE3ThN0gLiZilMkogreiOP08RrFldsi+6
	 IdeXfe9kow7dWjHUI8+HRFWuINaJVTyCbKrPmKZN7BNO+bkE5J9kT/PLubk+IJ4jas
	 XOxAse01s2PewEMvoGOACzh+CvwJMnvz18/SAM+JmsReA2uUvat6oaOjwfJ8vIKWHR
	 Tck+sd6lva6IMAJ0vUxxRxKwfP7cA1rNUZG6OFdU8TztXCsWKw29ISZMKLwKxiLDko
	 U/laRzlOu70TqKB9WRQUJe6r77KU+m/p+a3e1U/ZWQcw5UzKXbmha5SGfTCmi6qnNx
	 6nAnaF5NS+clw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/5] clk: qcom: Add a driver for PDM GP_MN fractional
 clock divider
Reply-To: sashiko-reviews@lists.linux.dev
To: "Taniya Das" <taniya.das@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260602-pdm_clk_gp_mnd_v1-v1-2-1522662b6c53@oss.qualcomm.com>
References: <20260602-pdm_clk_gp_mnd_v1-v1-2-1522662b6c53@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 03 Jun 2026 15:25:48 +0000
Message-Id: <20260603152548.7E9171F00898@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-306380-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:taniya.das@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,qualcomm.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,sashiko.dev:url,smtp.kernel.org:mid,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2C09C6395E5

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [High] `gp_mnd_clk_get_duty_cycle` incorrectly returns the low-phase rati=
o instead of the high-phase ratio, violating the CCF API.
- [High] `determine_rate` and `set_rate` fail to reject configurations wher=
e `N <=3D 2M`, leading to invalid hardware states and integer underflow.
- [Medium] Relying on `parent_data.index =3D 0` is brittle and may select t=
he wrong parent clock from the DT node.
--

commit 7c3592c8935c3d0c132fc4ece0d8bc638c3fc17a
Author: Taniya Das <taniya.das@oss.qualcomm.com>

clk: qcom: Add a driver for PDM GP_MN fractional clock divider

This commit adds a standalone platform driver for the PDM GP_MN clock
divider. It provides rate and duty-cycle configuration by programming
the MDIV, NDIV, and DUTY registers.

> diff --git a/drivers/clk/qcom/clk-gp-mnd.c b/drivers/clk/qcom/clk-gp-mnd.c
> new file mode 100644
> index 0000000000000..826b6b62ddc7b
> --- /dev/null
> +++ b/drivers/clk/qcom/clk-gp-mnd.c

[ ... ]

> +static int gp_mnd_clk_determine_rate(struct clk_hw *hw,
> +				     struct clk_rate_request *req)
> +{
> +	unsigned long m =3D 0, n =3D 0;
> +
> +	rational_best_approximation(req->rate, req->best_parent_rate,
> +				    (unsigned long)GP_MND_MAX_M,
> +				    (unsigned long)GP_MND_MAX_N,
> +				    &m, &n);
> +
> +	if (!m || !n)
> +		return -EINVAL;
> +
> +	/* N =3D 2M + 1 leaves no valid D satisfying M < D < (N - M) */
> +	if (n =3D=3D 2 * m + 1)
> +		return -EINVAL;

[Severity: High]
Does this check fail to reject all invalid configurations where n <=3D 2 * =
m?

The hardware constraint M < D < (N - M) requires N >=3D 2M + 2, but this co=
de
only checks for exact equality.

[ ... ]

> +static int gp_mnd_clk_set_rate(struct clk_hw *hw, unsigned long rate,
> +		unsigned long parent_rate)
> +{
> +	struct clk_gp_mnd *gp =3D to_clk_gp_mnd(hw);
> +	unsigned long m =3D 0, n =3D 0;
> +	unsigned int d_val, n_val;
> +	int ret;

[ ... ]

> +	/*
> +	 * When N =3D 2M + 1 the valid D range [M+1, M] is empty; no duty
> +	 * cycle can satisfy M < D < (N - M).  Reject before touching hw.
> +	 */
> +	if (n =3D=3D 2 * m + 1)
> +		return -EINVAL;
> +
> +	ret =3D clk_prepare_enable(gp->pdm_ahb_clk);
> +	if (ret)
> +		return ret;
> +
> +	ret =3D regmap_write(gp->regmap, GP_MND_MDIV_REG, m);
> +	if (ret)
> +		goto err_unprepare;
> +
> +	/* N divider holds the 1's complement of (N - M), N_WIDTH bits wide */
> +	n_val =3D ~(n - m) & GP_MND_MAX_N;
> +	ret =3D regmap_write(gp->regmap, GP_MND_NDIV_REG, n_val);

[Severity: High]
Can this unsigned underflow when the requested rate is higher than the
parent rate, causing m > n?

Since n <=3D 2 * m is not fully rejected above, (n - m) could wrap around a=
nd
program a corrupted value into GP_MND_NDIV_REG.

[ ... ]

> +static int gp_mnd_clk_get_duty_cycle(struct clk_hw *hw, struct clk_duty =
*duty)
> +{
> +	struct clk_gp_mnd *gp =3D to_clk_gp_mnd(hw);
> +	unsigned int d_val;
> +	int ret;
> +
> +	if (!gp->n_val) {
> +		duty->num =3D 1;
> +		duty->den =3D 2;
> +		return 0;
> +	}
> +
> +	ret =3D clk_prepare_enable(gp->pdm_ahb_clk);
> +	if (ret)
> +		return ret;
> +
> +	ret =3D regmap_read(gp->regmap, GP_MND_DUTY_REG, &d_val);
> +
> +	clk_disable_unprepare(gp->pdm_ahb_clk);
> +
> +	if (ret)
> +		return ret;
> +
> +	duty->num =3D d_val;

[Severity: High]
Does this report an inverted duty cycle to the clock framework?

The hardware DUTY register holds the low-phase clock cycle count:

gp_mnd_clk_set_duty_cycle() {
    ...
    /* D =3D (1 - duty) * N, giving the low-phase count */
    d_val =3D DIV_ROUND_UP((u64)(duty->den - duty->num) * gp->n_val, duty->=
den);
    ...
}

Assigning d_val directly to duty->num here appears to return the low-phase
ratio instead of the active high-phase ratio.

[ ... ]

> +static int clk_gp_mnd_probe(struct platform_device *pdev)
> +{
> +	struct clk_parent_data parent_data =3D { .index =3D 0 };

[Severity: Medium]
Can this select the wrong parent clock if ahb_clk is listed first in the
device tree?

Relying on .index =3D 0 might cause the framework to use the AHB bus clock
instead of pdm_clk for rate calculations. Would it be safer to use
.fw_name =3D "pdm_clk" to deterministically bind the parent?

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260602-pdm_clk_gp=
_mnd_v1-v1-0-1522662b6c53@oss.qualcomm.com?part=3D2

