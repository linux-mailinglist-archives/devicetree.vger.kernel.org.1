Return-Path: <devicetree+bounces-326816-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9G9iJaFSV2odJQEAu9opvQ
	(envelope-from <devicetree+bounces-326816-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 11:28:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 2304E75C7BC
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 11:28:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=jH3nnRBp;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326816-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-326816-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8A78E30039BA
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 09:28:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CE664252D5;
	Wed, 15 Jul 2026 09:27:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23983424D7D;
	Wed, 15 Jul 2026 09:27:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784107676; cv=none; b=cXKbqyZKzEHNIk2D6E2E3/MfVvxrgSzwbIFOK2roP43ivItpbaRWpKl2cQuPJHCO1cUhVhdu4lCp2ie7zc/m/e3/oeLtz7BVNvHd5f8JcfH5FK++UyHQUVTrJRjFaFysDsE3KHJyY/HUydsETuNr8fsw1CTW7ZUBZECU+QNEbkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784107676; c=relaxed/simple;
	bh=acleQbU3WWcCL6FBtF/aSBF1471Vfid/GxaEhvnhotk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=WvqH5fRrw3PeqacKTo0KgTNRbpkk+DN7PKSHSTIIJPSWbrVrxUZJDJEYO7f4F+PKAi7zu35OzAtC155I9DKNCnB16Ki+TRmRhp+6uJbNDncLwArpNQuGB1aWBUhzCfQttYmKOtMnToHjQSqXlsVGoC5F7r9Cm+MhcdwiT5Q/UIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jH3nnRBp; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 989531F000E9;
	Wed, 15 Jul 2026 09:27:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784107673;
	bh=T5Dpv6FrqSoPtTua9l54lASEzaAoxaNh+SuNBAMZIQo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=jH3nnRBpMPRhaDSj4aKyjZzh5THnmud1Ti+wU2zPzmwCJyY8HLmUCeuzIh5sI/qLN
	 s+AvW8XowOm0X0xuEMY/5zLYybgahVjkPoSwhIDKo1JjTJH45yYsIXH4HEpCk0Bf5y
	 fXG/zV1yT5l/pLZjThw+UDlMVl1ezCINp8amEBpk2FjdP4Iqg481sKSHv2/4lnFd+l
	 +uzqpGtlqyWbknu/VI5c+IhxQn6fj8evTy366mQQldkiN9etFgOgQE3UYwDzcG7pVi
	 E6RzLSeptJXv5rHS0ymG9yAoX9iemxfevmQEWrbbI5eGPVRfm5LP5EuurrHPAtKoJ6
	 bv8Du3ajLbt5A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 10/10] arm64: dts: apple: Initial T6030 (M3 Pro)
 device trees
Reply-To: sashiko-reviews@lists.linux.dev
To: "Janne Grunau" <j@jannau.net>
Cc: linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260715-apple-t603x-initial-devices-v2-10-df65b2485710@jannau.net>
References: <20260715-apple-t603x-initial-devices-v2-0-df65b2485710@jannau.net>
 <20260715-apple-t603x-initial-devices-v2-10-df65b2485710@jannau.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 15 Jul 2026 09:27:52 +0000
Message-Id: <20260715092752.989531F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-326816-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,smtp.kernel.org:mid,jannau.net:email,lists.linux.dev:replyto,sashiko.dev:url,vger.kernel.org:from_smtp];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:j@jannau.net,m:linux-watchdog@vger.kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2304E75C7BC

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The `pinctrl_nub` device is missing its `power-domains` property=
, which is explicitly defined as `ps_nub_gpio` in `t6030-pmgr.dtsi`.
--

--- Patch [10]: [PATCH v2 10/10] arm64: dts: apple: Initial T6030 (M3 Pro) =
device trees ---
commit 2e87765dac6c4901eb4d023fc0b86ec40441a4ad
Author: Janne Grunau <j@jannau.net>

arm64: dts: apple: Initial T6030 (M3 Pro) device trees

This commit introduces minimal device trees for the M3 Pro SoC, supporting =
the
14-inch and 16-inch MacBook Pro models from November 2023. It includes base
device nodes in t6030.dtsi and device-specific overlays.

> diff --git a/arch/arm64/boot/dts/apple/t6030.dtsi b/arch/arm64/boot/dts/a=
pple/t6030.dtsi
> new file mode 100644
> --- /dev/null
> +++ b/arch/arm64/boot/dts/apple/t6030.dtsi
[ ... ]
> +		pinctrl_nub: pinctrl@3641f0000 {
> +			compatible =3D "apple,t6030-pinctrl", "apple,t8103-pinctrl";
> +			reg =3D <0x3 0x641f0000 0x0 0x4000>;
> +
> +			interrupt-parent =3D <&aic>;

[Severity: Medium]
Is pinctrl_nub missing its power-domains property?

The ps_nub_gpio power domain is defined in t6030-pmgr.dtsi, but it doesn't
appear to be referenced here. Does this node need power-domains =3D
<&ps_nub_gpio>; added so the genpd dependency graph is complete?

> +			interrupts =3D <AIC_IRQ 472 IRQ_TYPE_LEVEL_HIGH>,
> +				     <AIC_IRQ 473 IRQ_TYPE_LEVEL_HIGH>,
[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260715-apple-t603=
x-initial-devices-v2-0-df65b2485710@jannau.net?part=3D10

