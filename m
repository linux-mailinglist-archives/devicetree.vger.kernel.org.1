Return-Path: <devicetree+bounces-317504-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hUhgFiaFQ2reZwoAu9opvQ
	(envelope-from <devicetree+bounces-317504-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 10:58:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7D36E1D97
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 10:58:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Sbsn8vvF;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317504-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317504-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9711E301227A
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 08:56:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF41134EF11;
	Tue, 30 Jun 2026 08:56:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B9B334C9AF
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 08:56:01 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782809764; cv=none; b=SbaTEdgyCD4fYIOB8AhQcSha00sZDjYqfdK+jjanOqn2sbH+XKmvVa8gO5QgWisQHpwwyibJ1w0CaKFHkFCLlLAqa2DY16d7P/B+cdhcHtXP7Kw2cHBznWLC3iFcOAPRaGJ28sg6PZHk24qi4mAv/rADbqaZrdRUxPMEzxXFZE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782809764; c=relaxed/simple;
	bh=2OSMAONc9ew6BBDAFgsMrjiVWVD6noTf51uUIwirWl0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=uimQ1zNvgqJUiqS2n164jaiF4VjiAoakQoeOTEBAmEoJl5VxHYF3rsWJBRMM6xO3vJJyNawKxsbAQNJG0O+zMgjTV/5a4t0+4LxpXeFYW2BSd0tiv3Ks8qPZXt2eeCnBnaFJho/sPxLkF8dgMQxm/3EmCI+yS+eS9M6olyNV2q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sbsn8vvF; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 77AB31F00A3A;
	Tue, 30 Jun 2026 08:56:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782809761;
	bh=Sgx7UoEhgUa9haERmuxWFAQrtrFbtPxaVXkr+pUaGmg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Sbsn8vvF/wz+t9CSA/MpNAC10kb3aIXKN40uNybC2RKceOLT58lOmlhwaR+vmP2O2
	 OqWemA64GUqkJyoQnyMb+y1XeA9gk/or7UIP3NRbdImzL1oc71QsemR7ZGufyFg7ej
	 fRlXCnfQJSFUUn51TDyJZpIFxBNJqwKoebagaVlnEmFtwayWd+qRWcqy7I+l0cbyDt
	 9lja0b6URQdWoLJAfbRmiWgZYNjjFhzwqRrSCDiQBBFQYsty6cZVxypjBeCVOQEN+u
	 oGNk4awENQtDMlmW7Wu1EyLDkpA3p3NGlamw9HXmsch0GTLczi24U6X7nekIsBdE5W
	 EIwVp31IKaDSQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 6/9] net: of_net: Add of_get_nvmem_eui48() helper for
 EUI-48 lookup
Reply-To: sashiko-reviews@lists.linux.dev
To: "Loic Poulain" <loic.poulain@oss.qualcomm.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260629-block-as-nvmem-v6-6-f02513dcd46d@oss.qualcomm.com>
References: <20260629-block-as-nvmem-v6-0-f02513dcd46d@oss.qualcomm.com>
 <20260629-block-as-nvmem-v6-6-f02513dcd46d@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Jun 2026 08:56:01 +0000
Message-Id: <20260630085601.77AB31F00A3A@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-317504-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:loic.poulain@oss.qualcomm.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,lists.linux.dev:replyto,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url,qualcomm.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AB7D36E1D97

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Replacing memcpy() with ether_addr_copy() imposes an unsafe 16-bit=
 alignment requirement on the caller-provided addr buffer, which can trigge=
r unaligned access faults (kernel panics) on strict-alignment architectures.
--

commit a4898c618dc4fdc91885d4184cdfd51af73fa946
Author: Loic Poulain <loic.poulain@oss.qualcomm.com>

net: of_net: Add of_get_nvmem_eui48() helper for EUI-48 lookup

This commit factors out the common NVMEM EUI-48 retrieval logic from
of_get_mac_address_nvmem() into a new helper. The original function
is updated to call the new helper, preserving the lookup behavior.

> diff --git a/net/core/of_net.c b/net/core/of_net.c
> --- a/net/core/of_net.c
> +++ b/net/core/of_net.c
[ ... ]
> @@ -75,27 +73,54 @@ int of_get_mac_address_nvmem(struct device_node *np, =
u8 *addr)
[ ... ]
> -	memcpy(addr, mac, ETH_ALEN);
> -	kfree(mac);
> +	ret =3D of_get_nvmem_eui48(np, "mac-address", mac);
> +	if (ret)
> +		return ret;
> +
> +	if (!is_valid_ether_addr(mac))
> +		return -EINVAL;
> +
> +	ether_addr_copy(addr, mac);
> +	return 0;
>  }

[Severity: High]
Will the use of ether_addr_copy() here cause an unaligned access fault on
strict-alignment architectures?

The original code used memcpy(), which handles unaligned destination pointe=
rs
safely. The ether_addr_copy() function requires both source and destination
pointers to be 16-bit aligned.

While the local mac buffer is explicitly aligned to 16 bits in this patch,
the destination addr buffer is provided by the caller. Callers like
of_get_ethdev_address() often allocate a 1-byte aligned array on the stack:

of_get_ethdev_address() {
        u8 addr[ETH_ALEN];
       =20
        ret =3D of_get_mac_address(np, addr);
        ...
}

Could this lead to kernel panics during device probe when the stack-allocat=
ed
addr buffer happens to be unaligned?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260629-block-as-n=
vmem-v6-0-f02513dcd46d@oss.qualcomm.com?part=3D6

