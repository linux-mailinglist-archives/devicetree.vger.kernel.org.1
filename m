Return-Path: <devicetree+bounces-320086-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id yYTCG2SmR2q0cwAAu9opvQ
	(envelope-from <devicetree+bounces-320086-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 14:09:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BD1D1702342
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 14:09:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=gTdXYop0;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320086-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320086-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AF27930302A9
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 12:02:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCDCB3CD8B0;
	Fri,  3 Jul 2026 12:02:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B89A43C583A
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 12:02:48 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783080169; cv=none; b=E0CzltVzRdBSqeVP+9/lQXW0kXrSLpoUffRADnxxbSK+vrN92jbAZEjXuV/oX/sTCT9mEk6DG5tzURnOd18dhYNRSlFdjPxxcHZWCm91xre814wqAGiZsC8LDYdXDi5UwhdQlvkT+Lem4p5kNwUW5m89qeTDPBXCsZRqHp+N4k8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783080169; c=relaxed/simple;
	bh=S/w1B47kTH3PYmZLfwW71HDNLLQKCwnjiRaiXHKHbfU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Z+DEJqQKp8xRHlxeSSskdfQeJcXnuo/Ry+Z6ETuEFwIZIgyJgTV3hOdN2Yv1dafc/CS1w4uasq9PgtFcOi84c930xaYgHX6wy/DRSWK+5coWzq5bXcp6ZtAKQN1m3jiyF5J8jFhGHgx4cgF+NJnmIUtdC5iC/2525jpG6t9wThM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gTdXYop0; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 632BB1F00A3D;
	Fri,  3 Jul 2026 12:02:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783080168;
	bh=sbwUCfUCjKDkKXwbClngT1PGetDEAU2shAq3+Mx2NXk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=gTdXYop0wkqwLBDpntkJ7s8r/7F2ZNMYxN5MVD9KN2cn0QohnHtC37Mr+dwkoRcuj
	 /cUXZBMLGAUOO3bCHuAluL6MLNTpDnKfJFUWoveqRFnnqAQouBA8ylGp1tY7+hg24y
	 V46H/iLZ8673Qj2fWvY9un1lhduwkbGph6GxwDi7n3uhB1G2cbqoS7/0QI69qgrkTO
	 7Nmhjzt1E0tvj/OKy7MCJKZpIRQGyA3VZ1wG6SC6nisMEqosNFTwK63sMBH5PFgBwR
	 m9lHtgMp+fqv2MkP0l6rRGAIsdoEFrlFU1k2rO4Rls399ntmedGDFthe6pU7zLZeIU
	 9GpTGduRUcJgg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v9 11/14] net: ipa: Switch to generic PAS TZ APIs
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sumit Garg" <sumit.garg@kernel.org>
Cc: devicetree@vger.kernel.org, robh@kernel.org, dri-devel@lists.freedesktop.org, conor+dt@kernel.org
In-Reply-To: <20260702115835.167602-12-sumit.garg@kernel.org>
References: <20260702115835.167602-1-sumit.garg@kernel.org>
 <20260702115835.167602-12-sumit.garg@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 03 Jul 2026 12:02:47 +0000
Message-Id: <20260703120248.632BB1F00A3D@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-320086-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,smtp.kernel.org:mid,vger.kernel.org:from_smtp,sashiko.dev:url,lists.linux.dev:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sumit.garg@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:dri-devel@lists.freedesktop.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BD1D1702342

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Switching to the generic PAS API breaks the hard module dependency=
 on the PAS backend driver, exposing a TOCTOU and Use-After-Free race condi=
tion against backend module unloading.
--

commit 6d60b150886ed8cbb76a8f5f11bec8a93730899c
Author: Sumit Garg <sumit.garg@oss.qualcomm.com>
Subject: net: ipa: Switch to generic PAS TZ APIs

This commit switches the IPA client driver to use the generic PAS TZ APIs.
The change allows the driver to support multiple TrustZone implementation
backends rather than being tied specifically to the QTEE based SCM PAS
service.

> diff --git a/drivers/net/ipa/ipa_main.c b/drivers/net/ipa/ipa_main.c
> --- a/drivers/net/ipa/ipa_main.c
> +++ b/drivers/net/ipa/ipa_main.c
> @@ -624,10 +624,13 @@ static int ipa_firmware_load(struct device *dev)
>  	}
> =20
>  	ret =3D qcom_mdt_load(dev, fw, path, IPA_PAS_ID, virt, phys, size, NULL=
);
> -	if (ret)
> +	if (ret) {
>  		dev_err(dev, "error %d loading \"%s\"\n", ret, path);
> -	else if ((ret =3D qcom_scm_pas_auth_and_reset(IPA_PAS_ID)))
> -		dev_err(dev, "error %d authenticating \"%s\"\n", ret, path);
> +	} else {
> +		ret =3D qcom_pas_auth_and_reset(IPA_PAS_ID);

[Severity: High]
Does switching to the generic PAS API here break the hard module dependency
on the PAS backend driver?

By removing the direct symbol dependency on qcom_scm, it appears the backend
PAS module can now be concurrently unloaded. If the backend is unloaded dur=
ing
this call, could it cause a use-after-free or NULL pointer dereference?

For example:
1. ipa_firmware_load() calls qcom_pas_auth_and_reset().
2. qcom_pas_auth_and_reset() checks if (!ops_ptr).
3. The backend PAS module is concurrently unloaded, and
   qcom_pas_ops_unregister() clears ops_ptr and frees the module memory.
4. qcom_pas_auth_and_reset() dereferences the now-freed ops_ptr memory.

Before this patch, the direct symbol call to qcom_scm_pas_auth_and_reset()
forced a strict module dependency that prevented backend removal.

> +		if (ret)
> +			dev_err(dev, "error %d authenticating \"%s\"\n", ret, path);
> +	}
> =20
>  	memunmap(virt);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260702115835.1676=
02-1-sumit.garg@kernel.org?part=3D11

