Return-Path: <devicetree+bounces-313165-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GCM2IiEHM2qp8gUAu9opvQ
	(envelope-from <devicetree+bounces-313165-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 22:44:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id F1A4A69C665
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 22:44:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=i1tmVUb1;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313165-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-313165-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5074A30A6B17
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 20:44:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BD553AA1A8;
	Wed, 17 Jun 2026 20:44:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B1538887C
	for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 20:44:02 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781729044; cv=none; b=a3VjaadGAD2MI9n20Uf6+MrBy5+uSliVF+Od/HK96/bgKu2c8ulWCroc5TnLikKT4aZmRJoAw1oNTCov9J8DNuQtl6XCWsenBgFwvMkJfJERPGBiPB7Q8SeMBvXUjmtLrN0u2U9vCvxtbYpXzwqge4MgWI16hDlTd9w6K9Qk4w0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781729044; c=relaxed/simple;
	bh=tDtOsTkDHU/e+Bv5w6Ia8U0Xt2FUpFEKFp4NcBDHfc4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=t5NfJ/Zo3IVFDk6VRk80vfRdLYT1vefYnFBTZsJslhFmM7goEoRicVAZH4oZxb9SH6Txd/qxu1RZxeNCSgjpBtWMn8OPjQM9TRwLPy4sRCg8BI+JF31N/9mF+4DvFLy14ZZMhAS+7AX2cCOZg/SgIvuaucxmdh0mWHazJo4zimQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i1tmVUb1; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BF7A1F000E9;
	Wed, 17 Jun 2026 20:44:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781729042;
	bh=F9TE+m0l5vryvChtPJAriVtP6btPEabMN8XhjTtESPk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=i1tmVUb1EYK8yOhsKhnAyA+w7GqtSdtocuFeguF0dSWNYJQUZuM4JJhjtlCCn9xb1
	 LbeBqPJQzGh7pFwy1C8nDgb0MXYoexfJEWBJRw8xo0iXYh74A4E4xg3FXU0/b7zkl0
	 y3U5Gl39B6F5yNhOa87UC+EqjkM7rHgBX6wEaecPWTVudm4cymj8uvFoWBjtb6IVs1
	 h1dkvDQfpm1EMqvcyF40xv8kfOcVhugl//eJIjSHDr00wbPLSZyU0sp24bKYbFZ7oX
	 CR5DA+jDcmYWZUJKXxKi18R6s9zdD94DqjBSMoIuHOHklwbHmLbVa71nVppKDXl7AA
	 JBwItiaqqXXZg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 3/3] regulator: qcom-refgen: add support for the
 IPQ9650 SoC
Reply-To: sashiko-reviews@lists.linux.dev
To: "Kathiravan Thirumoorthy" <kathiravan.thirumoorthy@oss.qualcomm.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260617-ipq9650_refgen-v4-3-c505ea6c6661@oss.qualcomm.com>
References: <20260617-ipq9650_refgen-v4-0-c505ea6c6661@oss.qualcomm.com>
 <20260617-ipq9650_refgen-v4-3-c505ea6c6661@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 17 Jun 2026 20:44:02 +0000
Message-Id: <20260617204402.6BF7A1F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-313165-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:kathiravan.thirumoorthy@oss.qualcomm.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url,qualcomm.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F1A4A69C665

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Critical] Unclocked MMIO read in get_status callback causes system crash.
- [Medium] Silent failure on missing clocks due to inadequate DT validation.
--

commit 90356084cf49412e26be88f69da7b99d50c27462
Author: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>

regulator: qcom-refgen: add support for the IPQ9650 SoC

This commit adds support for the IPQ9650 SoC to the qcom-refgen regulator
driver. It introduces explicit clock handling for this block and a get_stat=
us
callback to report the regulator status.

> diff --git a/drivers/regulator/qcom-refgen-regulator.c b/drivers/regulato=
r/qcom-refgen-regulator.c
> index 6a3795469927e..cc72e5a43ba62 100644
> --- a/drivers/regulator/qcom-refgen-regulator.c
> +++ b/drivers/regulator/qcom-refgen-regulator.c

[ ... ]

> +static int qcom_ipq9650_refgen_disable(struct regulator_dev *rdev)
> +{
> +	struct qcom_refgen_drvdata *drvdata =3D rdev_get_drvdata(rdev);
> +
> +	clk_bulk_disable_unprepare(drvdata->num_clks, drvdata->clks);
> +
> +	drvdata->is_enabled =3D false;

[Severity: Critical]
Does this disable the clocks before updating the internal state?

If an is_enabled check were added to get_status() to prevent unclocked read=
s,
could a concurrent call to get_status() still crash the system if it
interleaves after clk_bulk_disable_unprepare() but before is_enabled is
set to false?

> +
> +	return 0;
> +}

[ ... ]

> +static int qcom_ipq9650_refgen_get_status(struct regulator_dev *rdev)
> +{
> +	u32 val;
> +
> +	regmap_read(rdev->regmap, REFGEN_REG_REFGEN_STATUS, &val);

[Severity: Critical]
Can this unclocked MMIO read cause a system crash?

The get_status() callback reads the REFGEN_REG_REFGEN_STATUS register witho=
ut
ensuring the regulator's clocks are enabled. Since user space can trigger a
read of /sys/class/regulator/regulator.X/status at any time, which invokes
get_status() locklessly, a disabled regulator could cause this regmap_read()
to trigger a synchronous external abort and hang the bus.

> +	if (FIELD_GET(REFGEN_STATUS_OUT_MASK, val))
> +		return REGULATOR_STATUS_ON;
> +
> +	return REGULATOR_STATUS_OFF;
> +}

[ ... ]

> @@ -106,10 +192,23 @@ static int qcom_refgen_probe(struct platform_device=
 *pdev)

[ ... ]

> +	if (data->has_clocks) {
> +		drvdata =3D devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
> +		if (!drvdata)
> +			return -ENOMEM;
> +
> +		drvdata->num_clks =3D devm_clk_bulk_get_all(dev, &drvdata->clks);
> +		if (drvdata->num_clks < 0)

[Severity: Medium]
Will this silently fail if the clocks are missing from the device tree?

If the clocks property is omitted, devm_clk_bulk_get_all() returns 0.
Since this code only checks for drvdata->num_clks < 0, it treats the missing
clocks as a success, and subsequent calls to clk_bulk_prepare_enable(0, ...)
will silently succeed without enabling any clocks.

Should this explicitly verify drvdata->num_clks > 0 since clocks are mandat=
ory
for the IPQ9650 PHY to function properly?

> +			return dev_err_probe(dev, drvdata->num_clks,
> +					     "failed to get clocks\n");
> +	}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260617-ipq9650_re=
fgen-v4-0-c505ea6c6661@oss.qualcomm.com?part=3D3

