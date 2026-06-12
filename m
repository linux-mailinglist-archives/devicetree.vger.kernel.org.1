Return-Path: <devicetree+bounces-310892-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id r/N7K3HvK2onIAQAu9opvQ
	(envelope-from <devicetree+bounces-310892-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 13:37:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D9EA679005
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 13:37:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=eZD6FFgA;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310892-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-310892-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 248C0302F76B
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 11:37:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 753F7371071;
	Fri, 12 Jun 2026 11:37:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66A4C369D43
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 11:37:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781264238; cv=none; b=ZhJ6P5kUtZ3jkEjxmvitxY1rq94VpQtrajfXh9/2gNFlPXwDYMfYwgmx8rDmh6cSeIMTrMOwzNrRXJjrNIq6JuWahxVFpm+qwawin6xgLnZprEVv1WPVCk2S8HkqemnK5IDuUyhUvY+Vuj48T4RsKJvBKjDOLW53dCOwX0PzpAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781264238; c=relaxed/simple;
	bh=1ZhXVUCHwajKKi0f8CIBbnb4VbCTVRfqMKhF2rXrQ+I=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=gTRAfQQ+QGCR29wVZCHaXOCfS7T7T+iXEFY+lwBSEMxHQ1/UeiKsNBqXgqJgb2Te7Z0NZziC5dNgZLqT7HnyTFgFIfmUOaFTPHKwNoWCnrjeGdpaBpwjxKx8Qe42mDSVeP2xHp8RRW+mha3/wjrCQUvUtJHSYDNKNod1BpUufDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eZD6FFgA; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C43C1F000E9;
	Fri, 12 Jun 2026 11:37:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781264234;
	bh=3FnlGnEeougb++UwwkWIjZvRPL8kdIGfX3pA3wxOJAk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=eZD6FFgAXXSy+6FBCtlJlC0MyNNHap6hWJAXl7eU7Gf6j4K1XnBrm/P7bW4bqJ1oB
	 HDg+v+jAKk7YustzPMV9F1T960Jm6+E6Szzlhk+CR2N7cxkuhuwNgaNvXDAn+7O8vL
	 yxKNYn6VIF5Rjdm01JiV0p7F+InL+Flym49ySrvzWwOeMlLi8fXBcJydXv+v1hN8rW
	 TsDomDev2JDgmKArIQuz7MOlEJnWmhPHRgVFAENGAvI0t4awC20yzTKewbDFzi/7Vu
	 gggsQCjasRODiOsn1svCc86xFlwZ2kMXkdpmGSO+NwIoSsz3ScNAmaeDDlL1KBbUd9
	 tpzxs/Zqs8jug==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 6/9] regulator: p3h2x4x: Add driver for on-die
 regulators in NXP P3H2x4x i3c hub
Reply-To: sashiko-reviews@lists.linux.dev
To: "Lakshay Piplani" <lakshay.piplani@nxp.com>
Cc: conor+dt@kernel.org, linux-i3c@lists.infradead.org, Frank.Li@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260612111816.3688240-7-lakshay.piplani@nxp.com>
References: <20260612111816.3688240-7-lakshay.piplani@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 12 Jun 2026 11:37:13 +0000
Message-Id: <20260612113714.8C43C1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-310892-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,nxp.com:email,smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:lakshay.piplani@nxp.com,m:conor+dt@kernel.org,m:linux-i3c@lists.infradead.org,m:Frank.Li@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1D9EA679005

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Concurrent hardware operations on different regulators share the s=
ame protection lock register without a cross-device shared lock, leading to=
 a race condition where regulator writes fail silently.
- [High] I/O errors during hardware unlock are silently ignored, leading to=
 false success returns for regulator operations.
--

commit 8fb846835511c487dd04df576ca53fdbc089839a
Author: Aman Kumar Pandey <aman.kumarpandey@nxp.com>
Subject: regulator: p3h2x4x: Add driver for on-die regulators in NXP P3H2x4=
x i3c hub

The NXP P3H2x4x family integrates on-die regulators alongside I3C hub
functionality. This driver registers the regulators using the MFD
framework and exposes them via the regulator subsystem.

> diff --git a/drivers/regulator/p3h2840_i3c_hub_regulator.c b/drivers/regu=
lator/p3h2840_i3c_hub_regulator.c
> new file mode 100644
> index 0000000000000..4f2514d4d928e
> --- /dev/null
> +++ b/drivers/regulator/p3h2840_i3c_hub_regulator.c

[ ... ]

> +static void p3h2x4x_reg_guard_enter(struct regulator_dev *rdev,
> +				    struct p3h2x4x_reg_state *state)
> +{
> +	state->restore =3D false;
> +
> +	if (regmap_read(rdev->regmap,
> +			P3H2X4X_DEV_REG_PROTECTION_CODE,
> +			&state->orig))
> +		return;

[Severity: High]
If this regmap_read() fails, the function returns silently since it
has a void return type. Will this cause subsequent regulator operations
like regulator_enable_regmap() to execute blindly on locked hardware,=20
ignoring the configuration write but returning a false success to the calle=
r?

> +
> +	if (state->orig !=3D P3H2X4X_REGISTERS_UNLOCK_CODE) {
> +		regmap_write(rdev->regmap,
> +			     P3H2X4X_DEV_REG_PROTECTION_CODE,
> +			     P3H2X4X_REGISTERS_UNLOCK_CODE);
> +		state->restore =3D true;
> +	}
> +}
> +
> +static void p3h2x4x_reg_guard_exit(struct regulator_dev *rdev,
> +				   struct p3h2x4x_reg_state *state)
> +{
> +	if (state->restore)
> +		regmap_write(rdev->regmap,
> +			     P3H2X4X_DEV_REG_PROTECTION_CODE,
> +			     state->orig);
> +}
> +
> +DEFINE_LOCK_GUARD_1(p3h2x4x_reg, struct regulator_dev,
> +		    p3h2x4x_reg_guard_enter(_T->lock, &_T->state),
> +		    p3h2x4x_reg_guard_exit(_T->lock, &_T->state),
> +		    struct p3h2x4x_reg_state state);
> +
> +static int p3h2x4x_regulator_enable(struct regulator_dev *rdev)
> +{
> +	guard(p3h2x4x_reg)(rdev);

[Severity: High]
Could there be a race condition here between different regulator instances?

The P3H2X4X_DEV_REG_PROTECTION_CODE register appears to be a shared
device-wide resource, but guard(p3h2x4x_reg) relies on rdev->mutex, which
only serializes operations for a single regulator instance.

If two threads access different regulators (e.g., ldo-cp0 and ldo-cp1)=20
concurrently, could they interleave like this:

Thread A reads state->orig, sees locked, writes unlock, sets restore=3Dtrue
Thread B reads state->orig, sees unlocked, sets restore=3Dfalse
Thread A completes its update, runs guard_exit, and relocks the device
Thread B attempts its regulator update, but the hardware is now locked

Would it be safer to use a shared device-level lock in the parent MFD
device to protect the hardware protection register?

> +	return regulator_enable_regmap(rdev);
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260612111816.3688=
240-1-lakshay.piplani@nxp.com?part=3D6

