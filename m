Return-Path: <devicetree+bounces-325731-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qmrwObk0VWqnlQAAu9opvQ
	(envelope-from <devicetree+bounces-325731-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 20:55:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE2C74E9CB
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 20:55:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=eaPE1af8;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325731-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325731-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 42D4B30254AA
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 18:55:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB876350D7D;
	Mon, 13 Jul 2026 18:55:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78193322B8C
	for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 18:55:50 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783968951; cv=none; b=Fn6u19V6o9icAa/ohbq/t7c3YgohcD1zHVttUsZ51RWWHr+9qo59htRXCxFkFVLOcy2TevTYQ2JbHotqOIY8baw3uiQiSnY4u90vttN/l9yr3NqMVZ0FSU1g7nxr7aug72fWIy+ibnFVMLwzSjPsM24BbH7W4h0K/2e/goVmrw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783968951; c=relaxed/simple;
	bh=dswF48lkREAMgLDcHSSAS6xkgaZtnF6shAjn2m50X2E=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=irMxXp5OEFNYMEXo2yQFri9N/tKlZfoh/RvMPhVWzm/ubvk7p3iLUZNmvoFlhZP0W5and3mSi8HYCDZ0tojEyLn9BvPRvW+6V1jbtcCkwwWQ8PZnJ/YR14V6sCHVKtJMMN2HYdlwT9bu06hrTCgp07gUWq2yEAD2k2ezgpT/iws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eaPE1af8; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2AD7A1F000E9;
	Mon, 13 Jul 2026 18:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783968950;
	bh=22Of06PYet1Sgwkr0+iVDAIHA9EgwlYzAN8jSlIfAEM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=eaPE1af8vd2/gWV8yJSZYYuw2/2HdUzlIDGoGbIazuJGLyVGmu62/HmFMF/qqP8vi
	 uEY09uRPNDWmCMww0gG7EfidWUswz7Kok/jhouLS8c4GFchRJscrm4ijfkeLRxKq5k
	 0jU0Gwh9HpNWMbObp4GOo1eeIzLx/WnKfOcVbsvRcpWa6IafURO2SHJYb9xKCDhtDv
	 Gq7o/4/ytORe2Gz88as39kltT+i7Gp/J5vFmRYdbZPvin9vhuNmCQBUteF8yfclrIg
	 dvFj41EvoEaFPhDZedbDcFwPAwszot0za4Bxi+HIfFMZbcaYHpDeMaWphW6x7Gh0qi
	 FEFRo7ZPWYgNw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/5] pinctrl: qcom: lpass-lpi: make mutex cleanup
 devm-managed
Reply-To: sashiko-reviews@lists.linux.dev
To: "Prasad Kumpatla" <prasad.kumpatla@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260713184549.929569-2-prasad.kumpatla@oss.qualcomm.com>
References: <20260713184549.929569-1-prasad.kumpatla@oss.qualcomm.com>
 <20260713184549.929569-2-prasad.kumpatla@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 13 Jul 2026 18:55:48 +0000
Message-Id: <20260713185549.2AD7A1F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-325731-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:prasad.kumpatla@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,lists.linux.dev:replyto,sashiko.dev:url,vger.kernel.org:from_smtp,qualcomm.com:email,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5CE2C74E9CB

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Data races and Use-After-Free (UAF) vulnerabilities due to early r=
egistration and lockless mutation of generic pin groups.
--

--- Patch [1]: [PATCH v2 1/5] pinctrl: qcom: lpass-lpi: make mutex cleanup =
devm-managed ---
commit 808f67e14184e3ba9ce98d89331c2be909c075e0
Author: Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>

pinctrl: qcom: lpass-lpi: make mutex cleanup devm-managed

The driver registers its pin controller using devm_pinctrl_register(),
which keeps the pinctrl device alive until devres teardown, after
.remove() returns. This explicitly replaces mutex_init and
mutex_destroy with devm_mutex_init to align the lifetime automatically.

> diff --git a/drivers/pinctrl/qcom/pinctrl-lpass-lpi.c b/drivers/pinctrl/q=
com/pinctrl-lpass-lpi.c
> index 5fd4a4eba654d..b3e36547030f8 100644
> --- a/drivers/pinctrl/qcom/pinctrl-lpass-lpi.c
> +++ b/drivers/pinctrl/qcom/pinctrl-lpass-lpi.c
> @@ -559,31 +559,25 @@ int lpi_pinctrl_probe(struct platform_device *pdev)
>  	pctrl->chip.label =3D dev_name(dev);
>  	pctrl->chip.can_sleep =3D true;
> =20
> -	mutex_init(&pctrl->lock);
> +	ret =3D devm_mutex_init(&pdev->dev, &pctrl->lock);
> +	if (ret)
> +		return ret;
> =20
>  	pctrl->ctrl =3D devm_pinctrl_register(dev, &pctrl->desc, pctrl);
> -	if (IS_ERR(pctrl->ctrl)) {
> -		ret =3D PTR_ERR(pctrl->ctrl);
> -		dev_err(dev, "failed to add pin controller\n");
> -		goto err_pinctrl;
> -	}
> +	if (IS_ERR(pctrl->ctrl))
> +		return PTR_ERR(pctrl->ctrl);
> =20
>  	ret =3D lpi_build_pin_desc_groups(pctrl);

[Severity: High]
This is a pre-existing issue, but does this sequence leave the device
vulnerable to data races via debugfs?

When devm_pinctrl_register() is called, it fully registers the device and
exposes it to userspace via debugfs.

Afterward, lpi_build_pin_desc_groups() populates the groups via
pinctrl_generic_add_group(). This modifies pctldev->pin_group_tree and
num_groups without acquiring pctldev->mutex.=20

If there is a concurrent debugfs read to the pingroups file, it takes the m=
utex
and iterates the tree, creating a data race.

>  	if (ret)
> -		goto err_pinctrl;
> +		return ret;
> =20
>  	ret =3D devm_gpiochip_add_data(dev, &pctrl->chip, pctrl);
>  	if (ret) {
>  		dev_err(pctrl->dev, "can't add gpio chip\n");
> -		goto err_pinctrl;
> +		return ret;
>  	}

[Severity: High]
This is a pre-existing issue, but could this error path trigger a
use-after-free?

If devm_gpiochip_add_data() fails, devres unwinds in last-in first-out orde=
r.
It will free the group objects (allocated via devm_kzalloc) before executing
devm_pinctrl_dev_release() to unregister the device.

This leaves dangling pointers in the radix tree while debugfs is still acti=
ve.

> =20
>  	return 0;
> -
> -err_pinctrl:
> -	mutex_destroy(&pctrl->lock);
> -
> -	return ret;
>  }
>  EXPORT_SYMBOL_GPL(lpi_pinctrl_probe);
> =20
> @@ -592,8 +586,6 @@ void lpi_pinctrl_remove(struct platform_device *pdev)
>  	struct lpi_pinctrl *pctrl =3D platform_get_drvdata(pdev);
>  	int i;
> =20
> -	mutex_destroy(&pctrl->lock);
> -
>  	for (i =3D 0; i < pctrl->data->npins; i++)
>  		pinctrl_generic_remove_group(pctrl->ctrl, i);

[Severity: High]
This is a pre-existing issue, but can this lockless removal also trigger a
use-after-free?

The driver locklessly calls pinctrl_generic_remove_group(), which deletes
the group from the radix tree and frees it via devm_kfree().=20

Since the device is not unregistered until devres teardown (after remove()
returns), concurrent debugfs reads while this loop is running will
dereference the freed group_desc.

>  }

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260713184549.9295=
69-1-prasad.kumpatla@oss.qualcomm.com?part=3D1

