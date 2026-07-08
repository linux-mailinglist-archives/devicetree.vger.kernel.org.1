Return-Path: <devicetree+bounces-322782-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VqvtK6Q7Tmq5JQIAu9opvQ
	(envelope-from <devicetree+bounces-322782-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 13:59:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 15AC6726172
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 13:59:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=lcVXPKe7;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322782-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322782-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 462D630138BF
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 11:57:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F641313E36;
	Wed,  8 Jul 2026 11:57:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37FDB432BDB
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 11:57:55 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783511876; cv=none; b=FKkzM72TZOiTXNMfFVDTGuSE647ZBlaF4tTLP0CBYzwGRN64JwsijRBG5qYEDC+4lvrFHkd8MH+GQX6at3X3kXys2f/J1gFjlZdSbZQ5zBOFM5/3d1eOXFeaZTFQY7iKziltINIlEzAHWqnd8IwrUHOdPgG/3HxBqkp6LePi8lA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783511876; c=relaxed/simple;
	bh=u2Qt7YEhrftw/G80eBW/BpWksVSHcv127qd3mlQPq/M=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=r3mODW9Zi+oXWB6wv1rXTT+HjfHDmgPGAO/YJwlZJoPLejDKth83LVr/UzccRNDEjR/Pxysd9V/fsrAdYllvtUxmCvmZPUKrW/wJa9TCq9lqx9QCilEf8Tl2addrgWGs1efJpYbFiD5Rkrdl0aD+De+D1CbReh56B9iliqHAKNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lcVXPKe7; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E16EC1F000E9;
	Wed,  8 Jul 2026 11:57:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783511875;
	bh=f4dhUDw23/OyvzElFnFp3Y7puLwbhjqyoskiYEYkO+0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=lcVXPKe7zgGiat/mXUCofw6lkfk7MTx+pfChmkP/JfT2uuhvrJZnZy7Ru14l7RBIs
	 RunLRmT4qDHevcbbEK7/lEdzywIn8Qnzo2BoRbu6OGL6W7YGt6Oiy9Slm5b/+VW7iH
	 Cyf4XBy1NKfJppc4ihEoTxPVMcCBA4FbPPnq63VRxbV/JxSXwBbiYw9IAweePZpsyw
	 U0UQNM8XWR4fQjj4NCsWKr8dvhvXQ4O+9Qdf1wPOXjeQMCAVNjXibtdgkTrBXwIPTL
	 2TgOhsxEYZpZPW0+esorCoK3ToyfVksfEImwW3QjA3Ca83K702HIiCJ0PjlZeVeikK
	 8PEw1Uj8tD1kw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v1 4/4] pinctrl: qcom: hawi-lpass-lpi: add Hawi LPASS
 LPI TLMM
Reply-To: sashiko-reviews@lists.linux.dev
To: "Prasad Kumpatla" <prasad.kumpatla@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260708114924.1069239-5-prasad.kumpatla@oss.qualcomm.com>
References: <20260708114924.1069239-1-prasad.kumpatla@oss.qualcomm.com>
 <20260708114924.1069239-5-prasad.kumpatla@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 11:57:54 +0000
Message-Id: <20260708115754.E16EC1F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-322782-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:prasad.kumpatla@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,sashiko.dev:url,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 15AC6726172

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Premature destruction of `pctrl->lock` mutex before pinctrl device=
 unregistration creates a use-after-free window.
--

--- Patch [4]: [PATCH v1 4/4] pinctrl: qcom: hawi-lpass-lpi: add Hawi LPASS=
 LPI TLMM ---
commit 38f7bb1223fcfb1f3a3b0698eedf3998e066c226
Author: Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>

pinctrl: qcom: hawi-lpass-lpi: add Hawi LPASS LPI TLMM

This commit adds a new pin controller driver for the Low Power Audio
SubSystem (LPASS) Low Power Island (LPI) of the Qualcomm Hawi SoC. It
supports 23 GPIOs with various alternate functions and includes a custom
pingroup macro to handle test_bus mux slot offsets.

> diff --git a/drivers/pinctrl/qcom/pinctrl-hawi-lpass-lpi.c b/drivers/pinc=
trl/qcom/pinctrl-hawi-lpass-lpi.c
> new file mode 100644
> index 0000000000000..7036bf4c66920
> --- /dev/null
> +++ b/drivers/pinctrl/qcom/pinctrl-hawi-lpass-lpi.c
[ ... ]
> +static struct platform_driver lpi_pinctrl_driver =3D {
> +	.driver =3D {
> +		.name =3D "qcom-hawi-lpass-lpi-pinctrl",
> +		.of_match_table =3D lpi_pinctrl_of_match,
> +		.pm =3D pm_ptr(&lpi_pinctrl_pm_ops),
> +	},
> +	.probe =3D lpi_pinctrl_probe,
> +	.remove =3D lpi_pinctrl_remove,

[Severity: High]
This isn't a bug introduced by this patch, but does the core driver destroy
the mutex while the pinctrl device is still registered?

Looking at the core driver drivers/pinctrl/qcom/pinctrl-lpass-lpi.c:

drivers/pinctrl/qcom/pinctrl-lpass-lpi.c:lpi_pinctrl_remove() {
	struct lpi_pinctrl *pctrl =3D platform_get_drvdata(pdev);
	int i;

	mutex_destroy(&pctrl->lock);

	for (i =3D 0; i < pctrl->data->npins; i++)
		pinctrl_generic_remove_group(pctrl->ctrl, i);
}

The core driver uses devm_pinctrl_register() to register the pinctrl device,
which ties its unregistration to the devres teardown phase that occurs after
lpi_pinctrl_remove() returns.

Could this create a window where the pinctrl device is still fully register=
ed
and visible to the system, but its lock is destroyed? If an unprivileged
local user reads pinctrl debugfs while the device unbinds, could this
trigger a kernel panic or oops by operating on a destroyed mutex?

The same pattern also appears in the err_pinctrl path of lpi_pinctrl_probe(=
):

drivers/pinctrl/qcom/pinctrl-lpass-lpi.c:lpi_pinctrl_probe() {
    ...
err_pinctrl:
	mutex_destroy(&pctrl->lock);

	return ret;
}

Here, the mutex is destroyed in the error path while the devm-registered
pinctrl device is still live globally until devres unregisters it.

> +};
> +
> +module_platform_driver(lpi_pinctrl_driver);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708114924.1069=
239-1-prasad.kumpatla@oss.qualcomm.com?part=3D4

