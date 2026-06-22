Return-Path: <devicetree+bounces-314241-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id z2LrAarfOGrkjQcAu9opvQ
	(envelope-from <devicetree+bounces-314241-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 09:09:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 86E816AD249
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 09:09:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=iAKImDvu;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314241-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314241-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id F0DF0300748D
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 07:09:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 104952C08BC;
	Mon, 22 Jun 2026 07:09:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00566233149
	for <devicetree@vger.kernel.org>; Mon, 22 Jun 2026 07:09:26 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782112168; cv=none; b=GdfEwKnNhsM9kg84F/QFQBlLdQ3LucomU7Ep+HR7MpA7hxXzE1VRqnuq3hw6JuCHKBMhTeCkFxOgoSVEH1Ll2beB9tRvD2QxVPwONyd1GsyHE9vRANgEPpS6fout6dlrsIJG7rlPwPUrMMWFwgV1YcXuki6yTFq4c8RBzG8RcHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782112168; c=relaxed/simple;
	bh=DDcxI7ABiz/P+Euri96bH1Z7uof5r5ke2koGHJ+6Xs0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=aDVbCTKqpg5TBR71py+y4B+0e23o/FOmGQtedcYR4KhVFximUNtEO3lIxJ95wKvLXahPdkuTxG4R2kKO8WSAVEYGJoRC29RKPqvL84LIujdzDi6BzJccf4FBnljId7EMVb2Qfba+Mgs3+YAHe1GjiPQWhfpdE/AhSZ4sSRq6b14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iAKImDvu; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6725B1F000E9;
	Mon, 22 Jun 2026 07:09:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782112166;
	bh=w+Qkw+CT8ntP1xFexDsK/VSda0zWkEdq8nC69Ohb1Bo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=iAKImDvuKDMaxU/SI6sDK1a3HEstkHe4k/f5w3N4lv2xneX9DIE/XncmtH4iPKfwL
	 +jGtp4OXdp5zS+Er15t3080lx+9FNCQAVUhtBA3I7uVMkamVOhQaicbJJpd0CBbkHl
	 9SOmHuhyugy1QgaWSOgwnTaCH6bkYUin8/Nu+4Z1dNYRk/OVY+IwCl7CIVHkskedGk
	 9vsnLq+yCnUZJy42Hnkh62x/HCcfszek2Baon0QBf6fEgg4af9WxEEaaAcPepKYSe5
	 9rREZZXSPaoz63PdGOdOj1dY63CO4pDISeb5R8fUJ/ot9HiJ/yIxZovs06L1l1/bBr
	 1P8Od/ekFXLEQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 3/7] gpu: host1x: Correctly parse linear ranges of
 context devices
Reply-To: sashiko-reviews@lists.linux.dev
To: "Mikko Perttunen" <mperttunen@nvidia.com>
Cc: conor+dt@kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260622-t264-host1x-v2-3-ff7364d9ff7b@nvidia.com>
References: <20260622-t264-host1x-v2-0-ff7364d9ff7b@nvidia.com>
 <20260622-t264-host1x-v2-3-ff7364d9ff7b@nvidia.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 22 Jun 2026 07:09:25 +0000
Message-Id: <20260622070926.6725B1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-314241-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,lists.linux.dev:replyto,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sashiko.dev:url,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mperttunen@nvidia.com,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 86E816AD249

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] The `struct device` objects embedded in `host1x_memory_context` ar=
e allocated as a contiguous array and freed synchronously via `kfree(cdl->d=
evs)` on error paths and teardown, violating device lifecycle rules.
--

commit a5e361c6f75f05af608f6d934522d035e2ecb31b
Author: Mikko Perttunen <mperttunen@nvidia.com>
gpu: host1x: Correctly parse linear ranges of context devices

The previous parsing of the iommu-map property assumed each context
device has its own one-length entry in the device tree. This patch updates
the logic to support linear ranges by properly summing the lengths.

> diff --git a/drivers/gpu/host1x/context.c b/drivers/gpu/host1x/context.c
> index d50d41c205617..52ca663902ad1 100644
> --- a/drivers/gpu/host1x/context.c
> +++ b/drivers/gpu/host1x/context.c
[ ... ]
> @@ -34,7 +34,16 @@ int host1x_memory_context_list_init(struct host1x *hos=
t1x)
>  	if (err < 0)
>  		return 0;
> =20
> -	cdl->len =3D err / 4;
> +	devs =3D 0;
> +
> +	for (i =3D 0; i < err / 4; i++) {
> +		u32 length;
> +
> +		of_property_read_u32_index(node, "iommu-map", i * 4 + 3, &length);
> +		devs +=3D length;
> +	}
> +
> +	cdl->len =3D devs;
>  	cdl->devs =3D kzalloc_objs(*cdl->devs, cdl->len);

[Severity: High]
This is a pre-existing issue, but allocating struct device objects as a
contiguous array and synchronously freeing them can lead to a use-after-fre=
e.

When host1x_memory_context_list_init() fails later on, it jumps to the
unreg_devices label:

unreg_devices:
        while (i--)
                device_unregister(&cdl->devs[i].dev);

        kfree(cdl->devs);

Calling device_unregister() drops a reference, but does not guarantee the
reference count drops to zero immediately. If another subsystem or userspace
holds an asynchronous reference, kfree() will prematurely free the entire
array while those references are still active.

Later, when the final reference is dropped, the kernel will attempt to invo=
ke
the host1x_memory_context_release() callback on the already freed memory.

Can the individual context devices be allocated separately to allow them to
have independent lifecycles managed by their respective release callbacks?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260622-t264-host1=
x-v2-0-ff7364d9ff7b@nvidia.com?part=3D3

