Return-Path: <devicetree+bounces-315748-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dgTRCWlSPWo91QgAu9opvQ
	(envelope-from <devicetree+bounces-315748-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 18:08:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 286216C7540
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 18:08:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=a0QoB+BH;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315748-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315748-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id CD3FB3035845
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 16:06:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C6A42459E5;
	Thu, 25 Jun 2026 16:06:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55B313E832B;
	Thu, 25 Jun 2026 16:06:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782403591; cv=none; b=JMNtGCeUtSAcZe+iLp2OqmTq/TFK2ZXRxWCXh2dmFZmPFPPskzgnySDJ6gXiL6rn3VC7LkMpZdD9i08Vs+OQGYpoBI327C1vEGRAekbM9rqEcjPK2vh+Ef7GAeo3G9lIai3Tlm845u1fSMwDZu2Jg14pCndIvHOQh6sHRQuz1A4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782403591; c=relaxed/simple;
	bh=iMSmx0WUJLs3pRzTfhWKQadJwGQA7jr3+9lyQKvp5v0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=MvKl5LWfeQ23XLRCG06TXPDzhJ8HaS6RQpI4davW97T6XdiGiwO6n++alPbbYtN8DvRrHed3LpXgIl6UU3xJT/Pf+hlOriFNhg5PAb2QxtocgeBJ/26fMUupXHrWSuchJT2R2cwlBdAEwKT7HOMYLIOvQeIgLdIs2BqUDNvgh18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a0QoB+BH; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 25F911F000E9;
	Thu, 25 Jun 2026 16:06:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782403587;
	bh=r7eJ4ZN15hryT71sF55Lx6shJ6Qymm8GYvhbh4i5h5Y=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=a0QoB+BHX8hagcftbuiCcknl05vt68PFNgToE72lFmmBM/DlbkhaVAx/ikzb6KUtx
	 7MXzxxP37rgfVJ2nXItVMcaI9zgz86HKyrUWI3d5pKA5uq1KCRFL35frlLBAOXdXDs
	 Fxur2L2yQdpi0QkTTHCu5dNX+0MgQ/in+9+5gBJhAE0IZR81EiXjk05K3N6Mfq0svy
	 epxubgjqVfS1WqKL4Gi6N7PRScN23+lOj7/3fr2MU43ph6OdCuZFdICoj3tWQcksVV
	 Y5cvQE+s7PGnRg8JL/yg7+icYOB5s4IIG/y77KR8YCh98DK4DPj5U+gf7Huw4BFfZc
	 14Kh35ftiNUxA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v14 3/5] rpmsg: core: match rpmsg device IDs by prefix
Reply-To: sashiko-reviews@lists.linux.dev
To: "Shenwei Wang" <shenwei.wang@oss.nxp.com>
Cc: imx@lists.linux.dev, conor+dt@kernel.org, robh@kernel.org, Frank.Li@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260625155432.815185-4-shenwei.wang@oss.nxp.com>
References: <20260625155432.815185-1-shenwei.wang@oss.nxp.com>
 <20260625155432.815185-4-shenwei.wang@oss.nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 25 Jun 2026 16:06:26 +0000
Message-Id: <20260625160627.25F911F000E9@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-315748-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:shenwei.wang@oss.nxp.com,m:imx@lists.linux.dev,m:conor+dt@kernel.org,m:robh@kernel.org,m:Frank.Li@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
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
	RCPT_COUNT_FIVE(0.00)[6];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 286216C7540

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Forcing global prefix matching on all rpmsg drivers without a 'lon=
gest-prefix match' rule can cause unintended device binding and collisions.
- [Medium] Module auto-loading via udev is broken for dynamically suffixed =
devices because module alias generation remains exact and lacks a trailing =
wildcard.
--

commit 7cf465d01393f57a212484ddaf8a931c40ec4179
Author: Shenwei Wang <shenwei.wang@nxp.com>

rpmsg: core: match rpmsg device IDs by prefix

This commit updates the rpmsg device matching logic to compare only the
length of the id->name string. This allows id_table entries to act as
prefixes, enabling drivers to bind to dynamically suffixed devices.

> diff --git a/drivers/rpmsg/rpmsg_core.c b/drivers/rpmsg/rpmsg_core.c
> index e7f7831d37f89..f95bfc9965d4c 100644
> --- a/drivers/rpmsg/rpmsg_core.c
> +++ b/drivers/rpmsg/rpmsg_core.c
> @@ -414,7 +414,9 @@ ATTRIBUTE_GROUPS(rpmsg_dev);
>  static inline int rpmsg_id_match(const struct rpmsg_device *rpdev,
>  				  const struct rpmsg_device_id *id)
>  {
> -	return strncmp(id->name, rpdev->id.name, RPMSG_NAME_SIZE) =3D=3D 0;
> +	size_t len =3D strnlen(id->name, RPMSG_NAME_SIZE);
> +
> +	return strncmp(id->name, rpdev->id.name, len) =3D=3D 0;
>  }

[Severity: High]
Will this change cause unintended driver binding for existing drivers that
expect an exact match?

Because this modifies the global match behavior for all rpmsg drivers witho=
ut
an opt-in flag or longest-prefix match logic, a shorter existing prefix cou=
ld
hijack a new device.

For example, if a remote processor creates a channel named rpmsg-tty-contro=
l,
would it be incorrectly matched by an existing driver registered as rpmsg-t=
ty?

Looking at rpmsg_dev_match(), the iteration returns on the first successful
match:

drivers/rpmsg/rpmsg_core.c:rpmsg_dev_match() {
        ...
        for (i =3D 0; ids[i].name[0]; i++)
                if (rpmsg_id_match(rpdev, &ids[i])) {
                        rpdev->id.driver_data =3D ids[i].driver_data;
                        return 1;
                }
        ...
}

Could this result in a collision if multiple IDs share the same prefix?


[Severity: Medium]
Does this change break module auto-loading via udev for dynamically suffixed
devices?

When a dynamically suffixed device is registered, rpmsg_uevent() emits the
exact name:

drivers/rpmsg/rpmsg_core.c:rpmsg_uevent() {
        ...
        return add_uevent_var(env, "MODALIAS=3D" RPMSG_DEVICE_MODALIAS_FMT,
                                        rpdev->id.name);
}

However, the module alias generated by file2alias.c does not append a
wildcard for prefix matching:

scripts/mod/file2alias.c:do_rpmsg_entry() {
        ...
        module_alias_printf(mod, false, RPMSG_DEVICE_MODALIAS_FMT, *name);
}

Since module_alias_printf() is called with append_wildcard set to false, the
generated alias will be an exact match (e.g., rpmsg:rpmsg-io-) which won't
match the uevent string (e.g., MODALIAS=3Drpmsg:rpmsg-io-1).=20

Will this prevent the module from loading automatically?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260625155432.8151=
85-1-shenwei.wang@oss.nxp.com?part=3D3

