Return-Path: <devicetree+bounces-315613-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0yCxFmYHPWorwAgAu9opvQ
	(envelope-from <devicetree+bounces-315613-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 12:48:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AD7976C4D01
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 12:48:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=a2wN5+y+;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315613-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-315613-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A665A3002767
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 10:46:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F62F2F5474;
	Thu, 25 Jun 2026 10:46:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08E532EEE6E
	for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 10:46:14 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782384376; cv=none; b=Pe3ojKTMc4G4oTFYOAAmfNyJkg+85Ik6avD5+ZCTPUowXmBkwe3QVik2lPg9ZphSibCOX552PxzZJmQqx3Bt9YmXr2cxNykef1ylc/tnEdoes4uY3aIQ6eINVvAFT7tEU8tuHNQvqDqKuF9E6FxwrMfIPGTB5mJ4BPtz/jtkIjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782384376; c=relaxed/simple;
	bh=VeemTjViH4TIGolU997sQJIjoJhO4tNp+f8FTGl9L8s=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=uHqmhNKPukcvKjwirnttOsXMFo+5HvlPuPoWTfXfMWU+wHIYmeSqzVK8nt2+9PWFZ7+hg/XT2jFwTyfaaA+SYghwMPCufr2aDfdoVHbXLgg+YAhJ/+H0+izPB1Xi5MF0bVy7b8+b3eF8z5/5c2q9V6gKXvxOHuDF7arCVrKyIww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a2wN5+y+; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CFCD41F00A3A;
	Thu, 25 Jun 2026 10:46:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782384374;
	bh=9Zxz8ZrFC140kBNmQsghzZft7XCHtYietZ/XJLw+81c=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=a2wN5+y+9ker3NR3FKmdWHh2Xt5jOBfKLZbr7q2S7+77Or3KUl6KKN246EDlas8Yv
	 oTEn+lKXUx9AlRWDQin1PjCs6awzSYJD4AP+nOE5GqFvhk+2GGAtMTLwowi2bXXvSt
	 oq2Rhq6ktwhTbG1Qm1Cou2fFCSYtwSXdU+Pr4TKxbAolJG/P9MEX9LuaTsGOkg3Rex
	 J/mdUlko/lvuxRbMs//u4B7h/Ptz2AYucILbsQt+IuqXIwoqNyLuNEHimNDNfyE3jL
	 H3sZAruEYfQOIkEGDNIGj4HeYvf7Ptzb5lA8fNuiKhzl9L+Su9gzGBPx2TsCzeQK9O
	 BRlE5+Lt4rcsA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 2/3] pwm: add Andes PWM driver support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Ben Zong-You Xie via B4 Relay" <devnull+ben717.andestech.com@kernel.org>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260625-andes-pwm-v6-2-3aef11711017@andestech.com>
References: <20260625-andes-pwm-v6-0-3aef11711017@andestech.com>
 <20260625-andes-pwm-v6-2-3aef11711017@andestech.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 25 Jun 2026 10:46:13 +0000
Message-Id: <20260625104613.CFCD41F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-315613-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:devnull+ben717.andestech.com@kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,ben717.andestech.com,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,lists.linux.dev:replyto,andestech.com:email,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AD7976C4D01

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The driver fails to update the hardware PARK level to the inactive=
 state when disabling the PWM channel, leaving the output stuck ON or at th=
e wrong polarity.
--

commit 6823cc7ba3d3233c8090db2e53dc0a9b52b74a25
Author: Ben Zong-You Xie <ben717@andestech.com>

pwm: add Andes PWM driver support

Add a driver for the PWM controller found in Andes AE350 platforms and
QiLai SoCs.

> diff --git a/drivers/pwm/pwm-andes.c b/drivers/pwm/pwm-andes.c
> new file mode 100644
> index 0000000000000..580e673d2cff0
> --- /dev/null
> +++ b/drivers/pwm/pwm-andes.c

[ ... ]

> +static int andes_pwm_config(struct pwm_chip *chip, unsigned int channel,
> +			    const struct pwm_state *state)
> +{

[ ... ]

> +	/*
> +	 * A zero-length phase means a 0% or 100% relative duty cycle, which the
> +	 * hardware cannot run. Emit the matching constant level by parking the
> +	 * channel: high_cycles =3D=3D 0 stays low, low_cycles =3D=3D 0 stays h=
igh.
> +	 */
> +	if (!high_cycles)
> +		return andes_pwm_park(chip, channel, false);
> +	if (!low_cycles)
> +		return andes_pwm_park(chip, channel, true);

[Severity: High]
When configuring a 100 percent duty cycle, this code sets the PARK bit to t=
he
active state to emulate the output. If the channel is subsequently disabled,
could the output remain stuck ON?

> +
> +	/*
> +	 * If changing the clock source here, the output will not be the old one

[ ... ]

> +static int andes_pwm_apply(struct pwm_chip *chip, struct pwm_device *pwm,
> +			   const struct pwm_state *state)
> +{
> +	unsigned int channel =3D pwm->hwpwm;
> +
> +	if (!state->enabled) {
> +		if (pwm->state.enabled)
> +			andes_pwm_enable(chip, channel, false);
> +
> +		return 0;
> +	}

[Severity: High]
Does this early return path disable the channel but fail to update the=20
hardware's PARK bit to reflect the inactive state of the current polarity?

If the PWM was previously configured to 100 percent duty cycle where the PA=
RK
bit was set active, it appears bypassing the PARK bit configuration on the
disable path leaves the output driven at the active level.=20

Additionally, if the polarity changes while the channel is disabled, will t=
he
hardware's inactive level fail to update?

> +
> +	return andes_pwm_config(chip, channel, state);
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260625-andes-pwm-=
v6-0-3aef11711017@andestech.com?part=3D2

