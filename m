Return-Path: <devicetree+bounces-315633-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id o0eYFH0LPWpZwQgAu9opvQ
	(envelope-from <devicetree+bounces-315633-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 13:05:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4AC6C4F59
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 13:05:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=KGnPOq9k;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315633-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315633-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E9DF23011F0F
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 11:04:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16DF33A451D;
	Thu, 25 Jun 2026 11:04:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8353274B2B
	for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 11:04:42 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782385484; cv=none; b=KpJvaZjqlnkOKvIkBVKUFiKV0FXJYuEskqE1vdmJGaIKJ9zDjUpv3fylW1vlsKHf1/KL5Tb2YxxLHOf0mSd/3YWETOyBmonPRiRcRWQ+BFpCrCqn3+QrfrKGjxn/fqZhu54zfr5crUaxO8XRcgWnsR0aXp7e5N0bi6XrdvMQ/sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782385484; c=relaxed/simple;
	bh=zM0SY6NJyRsZHkttFxd+Aavq1EtOG4xaPaz8ktsXShs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=dupvk3piszuV0TL1GW00Ngl9F8dRlpuTvcTXtuldP17ypGPqAgQmpjfcUkunKiiu1V4nLCFFWtSm91NQMe3m1d59vl8augqBZ8pJ7uP+Mq0Fiv7NuTtZTheTJNHk0vNePn/4P1dQCJp4AI3Kikna+eCG8PjrIIB6lAXzMaM2z74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KGnPOq9k; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2BEFD1F000E9;
	Thu, 25 Jun 2026 11:04:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782385482;
	bh=NyYhvv/z5ZMYXKy+a8emERwRS0CU9v2hSO2XMuQPSe0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=KGnPOq9kIKqtEJRm+ojSYKWNhKKtQn0RxBG6oI/Hnqv1yhjdIQPnMuNOJ9lMKx6tO
	 XLivVJBAYs2Q9Roybr8b4E7hqs8v7l5JewqmFLRE2PIVSgC3090XBNiOkRNFauENOl
	 EJx84VNJ2YziYKafaj482XFJq0o52cdy8Vf1WlmRx0qxHovQljo29kvNHWmjaafbc1
	 nzhuJjWQvWheoekYtPCFNnniOK+AM2NiBSFcPDYekTal89R8DM6LW8X00p/CmLaxla
	 LO0VV0k5wn4I/MUj0gD2RTuLFYvAjRkImOO9sgV2WGYDD3HfI3ydN1Jr9M52Rm7/UL
	 EEep26adC888w==
From: sashiko-bot@kernel.org
Subject: Re: [RFC PATCH 1/3] dt-bindings: pinctrl: mt8516/mt8167: Move
 compatibles from mt66xx to mt6795
Reply-To: sashiko-reviews@lists.linux.dev
To: "Luca Leonardo Scorcia" <l.scorcia@gmail.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260625104742.113803-2-l.scorcia@gmail.com>
References: <20260625104742.113803-1-l.scorcia@gmail.com>
 <20260625104742.113803-2-l.scorcia@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 25 Jun 2026 11:04:41 +0000
Message-Id: <20260625110442.2BEFD1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-315633-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:l.scorcia@gmail.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:lscorcia@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,lists.linux.dev:replyto,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9B4AC6C4F59

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Critical] The patch series permanently breaks Device Tree backward compa=
tibility (ABI breakage). By moving the mt8167 and mt8516 SoCs to the mt6795=
 bindings and pinctrl-paris.c driver, the schema now unconditionally requir=
es `reg-names` and `gpio-ranges` and forbids the legacy `mediatek,pctl-regm=
ap` layout. Furthermore, the updated driver calls `devm_platform_ioremap_re=
source_byname(pdev, "base")` and fails with `-EINVAL` if `reg-names` is abs=
ent. Booting a new kernel with an older, previously valid device tree will =
fail to probe the pinctrl driver, breaking all GPIO-dependent devices.
--

commit ae4fde26bd3f120a43beccf98009171f05144eee
Author: Luca Leonardo Scorcia <l.scorcia@gmail.com>

dt-bindings: pinctrl: mt8516/mt8167: Move compatibles from mt66xx to mt6795

Pinctrl settings for MediaTek mt8516-mt8167 SoCs use two reg base
addresses, one for GPIO and the other for EINT, as it is common in the
"Paris" pinctrl platform. This commit moves the mediatek,mt8516-pinctrl and
mediatek,mt8167-pinctrl compatible strings to the mt6795-pinctrl binding.

[ ... ]

> diff --git a/Documentation/devicetree/bindings/pinctrl/mediatek,mt6795-pi=
nctrl.yaml b/Documentation/devicetree/bindings/pinctrl/mediatek,mt6795-pinc=
trl.yaml
> index 9a937f414cc98..c703de72e1d52 100644
> --- a/Documentation/devicetree/bindings/pinctrl/mediatek,mt6795-pinctrl.y=
aml
> +++ b/Documentation/devicetree/bindings/pinctrl/mediatek,mt6795-pinctrl.y=
aml
> @@ -15,7 +15,10 @@ description:
> =20
>  properties:
>    compatible:
> -    const: mediatek,mt6795-pinctrl
> +    enum:
> +      - mediatek,mt6795-pinctrl
> +      - mediatek,mt8167-pinctrl
> +      - mediatek,mt8516-pinctrl

[Severity: Critical]
Does moving these compatibles to this binding break Device Tree backward
compatibility?

The schema now unconditionally requires properties like reg-names and
gpio-ranges, and forbids the legacy mediatek,pctl-regmap layout without an
allOf: if-then conditional to accommodate older hardware descriptions.

Furthermore, the updated driver unconditionally requires the reg-names
property:

drivers/pinctrl/mediatek/pinctrl-paris.c:mtk_paris_pinctrl_probe() {
    ...
		hw->base[i] =3D devm_platform_ioremap_resource_byname(pdev,
					hw->soc->base_names[i]);
    ...
}

Because older device trees lack the reg-names property, this call returns
-EINVAL and fails the probe.

Will booting a new kernel with an older device tree fail to probe the
pinctrl driver, breaking all GPIO-dependent peripherals?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260625104742.1138=
03-1-l.scorcia@gmail.com?part=3D1

