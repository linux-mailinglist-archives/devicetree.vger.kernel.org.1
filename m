Return-Path: <devicetree+bounces-317791-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Y/20FRXCQ2pjgwoAu9opvQ
	(envelope-from <devicetree+bounces-317791-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 15:18:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 411826E4BE5
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 15:18:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=PV8eECoy;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317791-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317791-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C4274312E3A4
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 13:00:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29B3D413D66;
	Tue, 30 Jun 2026 12:59:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E83440E8FC;
	Tue, 30 Jun 2026 12:59:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782824361; cv=none; b=almmQaUmGmrJ/nU+5q9eU+/n8MRxIqdoNfmulfvfPK9yhMNDz5IHg6lsh5QquYqBshb2fd5+kKjTm4WvmUyUFI3nTUzOGL6OwpSHxFTRuWVHYo0PDwFUTuXOAD+d11IJWqd2DS0Fhhh/c2CzzRFY5JE8YIeBuySadst04Y0dGww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782824361; c=relaxed/simple;
	bh=3kBg2PjjmE0TBKwBUhnNyknDcQoTJIVumhmaImOHMCQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=m0RBnIiab3/tICwndo4ao1Wks4hZ3nehkr6aMOFK2+an1cN/+LKnWXukbf83gbk01icaXswkqsHP8J7Yy3xB22SOzpd7rvqkRp3Lltwr9o9SQ7GOuXX5wu/4j9XPwS67llh87HY5CS7kO3+pLI4+qYHZn1NXwh2I95/+2SKNF/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PV8eECoy; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 840771F000E9;
	Tue, 30 Jun 2026 12:59:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782824359;
	bh=eT/NrjMfHUOh9JxDx0GBXr0mxclZpM0Jhk4lcfoTkF4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=PV8eECoyJDd92LRqZhdHM0AajSSNjDxWVXk2zrleNDfksBveVFq1zC1op054ENFHg
	 axRfbFTNNsm2pjMWrz00Joya57vX+XciXMtdAAxYYbUXXJpdqX61r6Y7SlDs+UhVIF
	 gHyi2ks2mKLmjG+BTN5YdxwLmYF5dd2tBHzuKoXprAjuY0Q4SAu2Bbaa1yi4ZymQj6
	 UN9CFT0kabM5NDryKlc7kKE2xMM/pRdJRYZejGxnanlTVy0qUliXu0AtCFPgzlY8L7
	 Hdfpbm8PMVC+S/gyGwxEAEye/avO+oi7mOskOI3g7MHR33iTBlp9nLAqYpHmITpivG
	 zIfsSdfhBll4g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 1/6] pinctrl: s32cc: add/fix some comments
Reply-To: sashiko-reviews@lists.linux.dev
To: "Khristine Andreea Barbulescu" <khristineandreea.barbulescu@oss.nxp.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev, Frank.Li@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260630125403.546375-2-khristineandreea.barbulescu@oss.nxp.com>
References: <20260630125403.546375-1-khristineandreea.barbulescu@oss.nxp.com>
 <20260630125403.546375-2-khristineandreea.barbulescu@oss.nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Jun 2026 12:59:18 +0000
Message-Id: <20260630125919.840771F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-317791-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:khristineandreea.barbulescu@oss.nxp.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:Frank.Li@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 411826E4BE5

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Typo in the newly added documentation for `struct s32_pinctrl_conte=
xt`.
--

commit 5f6126070deb7810863589eba4923acc7b178405
Author: Khristine Andreea Barbulescu <khristineandreea.barbulescu@oss.nxp.c=
om>

pinctrl: s32cc: add/fix some comments

This commit updates documentation and comments in the s32cc pinctrl driver.
It documents several structures including memory regions, gpio configuratio=
ns,
and the main private data structure.

> diff --git a/drivers/pinctrl/nxp/pinctrl-s32cc.c b/drivers/pinctrl/nxp/pi=
nctrl-s32cc.c
> index 56be6e8d624e0..2a32df932d8a7 100644
> --- a/drivers/pinctrl/nxp/pinctrl-s32cc.c
> +++ b/drivers/pinctrl/nxp/pinctrl-s32cc.c
[ ... ]
> @@ -79,20 +85,22 @@ struct gpio_pin_config {
>  };
> =20
>  /*
> - * Pad config save/restore for power suspend/resume.
> + * struct s32_pinctrl_context - pad config save/restore for suspend/resu=
me
> + * @pads: saved values for the pards

[Severity: Low]
This isn't a bug, but is there a typo here (pards instead of pads)?

>   */
>  struct s32_pinctrl_context {
>  	unsigned int *pads;
>  };

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260630125403.5463=
75-1-khristineandreea.barbulescu@oss.nxp.com?part=3D1

