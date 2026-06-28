Return-Path: <devicetree+bounces-316510-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DDIsDNlzQWryqwkAu9opvQ
	(envelope-from <devicetree+bounces-316510-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 21:19:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A486D4C29
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 21:19:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316510-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-316510-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C04F330087EA
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 19:19:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC1E532AAA7;
	Sun, 28 Jun 2026 19:19:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C17FF31A065
	for <devicetree@vger.kernel.org>; Sun, 28 Jun 2026 19:19:46 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782674387; cv=none; b=MddRmp6lFu/uP2TAo7LIpGgqE1WiWA1ztFbbjWAwz45UMjL+YF/KCW1P3564xI3cE6I13pQrf6tbR3gIs5pHzJ1gwmOz70EfRkAjVrTFv9K8rElOHgbXQizjVCmqMeM4PFuNsDKiSh0tODl0hg7XV4BYK9rSXedSSKeZm7b8/kM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782674387; c=relaxed/simple;
	bh=fkT4JcS++2cF3YmTNnwvrxo4WwfPcZNVgKGk2K3GOIU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=js9iW7Gq8RKkaeXifK3flIT5G5BdDn9wTwN+R62PDnRXYMeo36afYGZwp6rsugWsw3eSJB4zn1KiBi7XeEXnpwKKnndMuvm0pdlEwaDpenKTgETXXF7cZtXCvKy9Wc4Bt1fl8rvRjZB5epNSRPKj/Iutff5T7KeksVu8KjkVdyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51A811F000E9;
	Sun, 28 Jun 2026 19:19:46 +0000 (UTC)
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RFC v6 1/5] dt-bindings: iio: add Open Sensor Fusion
 device
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jinseob Kim" <kimjinseob88@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260628191337.937-2-kimjinseob88@gmail.com>
References: <20260628191337.937-1-kimjinseob88@gmail.com>
 <20260628191337.937-2-kimjinseob88@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 28 Jun 2026 19:19:44 +0000
Message-Id: <20260628191946.51A811F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.54 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-316510-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kimjinseob88@gmail.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,smtp.kernel.org:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A6A486D4C29

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Using a generic protocol name as the sole compatible string inst=
ead of a specific product identity.
--

commit 52d695764bb9f94bbb11a6128ea968762ee2ceef
Author: Jinseob Kim <kimjinseob88@gmail.com>

dt-bindings: iio: add Open Sensor Fusion device

This commit adds a binding for the generic Open Sensor Fusion host interfac=
e.
Sensor channels and protocol versions are discovered dynamically at runtime,
so they are not described individually in the Device Tree.

> diff --git a/Documentation/devicetree/bindings/iio/opensensorfusion,osf.y=
aml b/Documentation/devicetree/bindings/iio/opensensorfusion,osf.yaml
> new file mode 100644
> index 0000000000000..8016d582fd970
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/opensensorfusion,osf.yaml
[ ... ]
> +properties:
> +  compatible:
> +    const: opensensorfusion,osf

[Severity: Medium]
Does this generic compatible string prevent the kernel from applying future
quirks or workarounds if a specific board revision or hardware variant has
silicon bugs or unique power sequencing requirements?

The commit message mentions that product identities are explicitly not used
as the compatible string. By defining the generic protocol name as the only
valid value, the kernel lacks the ability to distinguish between different
hardware implementations that might need specific handling.

Would it be more appropriate to allow or require a hardware-specific
compatible string (such as the OSF Green product identity) alongside the
generic fallback?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260628191337.937-=
1-kimjinseob88@gmail.com?part=3D1

