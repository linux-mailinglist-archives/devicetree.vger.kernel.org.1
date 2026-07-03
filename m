Return-Path: <devicetree+bounces-319810-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LN1INw1bR2qGWwAAu9opvQ
	(envelope-from <devicetree+bounces-319810-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 08:47:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C6F436FF325
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 08:47:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=N7+vJzrH;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319810-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319810-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BE1F8302B1D1
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 06:47:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53B2338A29A;
	Fri,  3 Jul 2026 06:46:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2474388885
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 06:46:38 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783061200; cv=none; b=mUcAwR/1V9JgxPFPEIz4Au4IB/EmaHqbcKIYgwVueEHll1CYmUQYLJ8O8RBPQnCEkieYXLFVsk0+zzXo0x+po5okZXFJYWynvbXu3odqPXmkXrJLIQRKwH6sTUBiqEwZBFBSBG8s8IW0W8vgjrZQx0qU1y8efnwJUxnrzhxttzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783061200; c=relaxed/simple;
	bh=H0a+lHMoSDK6azr/7deuUEy08rwUViCo2qDXKBIGqtg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=XTbSSKiXqQcC+MV2WURdaQ6PTUXXiIxQmSt6fdIMNGeXZR9RBHdQvALFdGithQQkA8eID7S+5jSqHl6J3MLbUQvt6RD5tyjNUjhYijV98e/+BSUmOd/iR2dlEyJ8L8X/j2N52Glpj9QpvQhU0rExoMOgET8fv8MMlOJVqtHkHW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N7+vJzrH; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA8A71F00A3D;
	Fri,  3 Jul 2026 06:46:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783061198;
	bh=F4ZEAdTb7Ggzy8z9IXhXLg5gQOnz3372YSQVTXlLNWs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=N7+vJzrHTU+aSj4V2AbrsNmf2yivQwrfqY3XvlfiYbiCuHJwGT18RtlF+eniRMF2d
	 ANnB017RkV4bIucjAhq79M2GXt0F/F9aGNHsXtwqw2ak9lIzf0K618GLS4jExzIHwc
	 b8qYes1QJ3iRt1zVebkS8IH5VE3qiCkq4jFlRcCrOU3dYbld/NBBXoCHgkC59aLkC6
	 HPWIUl2qH9UxltaZHJA6OO4CwfyTPgKf15KvD5e58upawV5JiXVHjHVoids5xJy4Jk
	 qpNMtV/ZDh01hsgBGnaqGVCzMfJUBmYZGSfxH60ek8XlidSCfzWOa/kgINOFzCPk1I
	 qV0jstiznWMag==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v8 1/9] net: dsa: add tag driver for LAN9645X
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?SmVucyBFbWlsIFNjaHVseiDDmHN0ZXJnYWFyZA==?= <jensemil.schulzostergaard@microchip.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260702-dsa_lan9645x_switch_driver_base-v8-1-90228d8bba58@microchip.com>
References: <20260702-dsa_lan9645x_switch_driver_base-v8-0-90228d8bba58@microchip.com>
 <20260702-dsa_lan9645x_switch_driver_base-v8-1-90228d8bba58@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 03 Jul 2026 06:46:37 +0000
Message-Id: <20260703064637.EA8A71F00A3D@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-319810-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:jensemil.schulzostergaard@microchip.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
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
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C6F436FF325

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] The driver mishandles valid VLAN-tagged packets if the VLAN header=
 resides in paged fragments, silently treating them as untagged.
- [Medium] `vlan_remove_tag()` moves the MAC header in the SKB data buffer =
but fails to update the `skb->mac_header` offset.
--

commit e26041faee6aff2a556fc66f9a08bab7e7391ab7
Author: Jens Emil Schulz =C3=98stergaard <jensemil.schulzostergaard@microch=
ip.com>

net: dsa: add tag driver for LAN9645X

Add tag driver for LAN9645x using a front port as CPU port. This mode
is called an NPI port in the datasheet.

> diff --git a/net/dsa/tag_lan9645x.c b/net/dsa/tag_lan9645x.c
> new file mode 100644
> index 0000000000000..c9049e3620a12
> --- /dev/null
> +++ b/net/dsa/tag_lan9645x.c

[ ... ]

> +static void lan9645x_xmit_get_vlan_info(struct sk_buff *skb,
> +					struct net_device *br,
> +					u32 *vlan_tci, u32 *tag_type)
> +{
> +	struct vlan_ethhdr *hdr;
> +	u16 proto, tci;
> +
> +	if (!br || !br_vlan_enabled(br)) {
> +		*vlan_tci =3D 0;
> +		*tag_type =3D LAN9645X_IFH_TAG_TYPE_C;
> +		return;
> +	}
> +
> +	hdr =3D (struct vlan_ethhdr *)skb_mac_header(skb);
> +	br_vlan_get_proto(br, &proto);
> +
> +	if (skb_headlen(skb) >=3D VLAN_ETH_HLEN &&
> +	    ntohs(hdr->h_vlan_proto) =3D=3D proto) {

[Severity: High]
Does this silently treat valid VLAN-tagged packets as untagged if the VLAN
header resides in paged fragments?

If a packet is transmitted where the linear part of the SKB is less than
VLAN_ETH_HLEN (for example, exactly ETH_HLEN) and the VLAN tag is in a
fragment, this check fails and bypasses tag extraction.

This seems like it would inject the packet into the switch with the
port's PVID instead of its actual VLAN tag, leaving the original VLAN tag
in the payload. Should this use pskb_may_pull() or __skb_vlan_pop() to
ensure the header is properly handled?

> +		vlan_remove_tag(skb, &tci);

[Severity: Medium]
Does calling vlan_remove_tag() directly leave the SKB in an inconsistent
state?

This internal helper moves the MAC header in the SKB data buffer but does
not appear to update the skb->mac_header offset. If any downstream code
(like a conduit driver or packet sniffer) relies on skb_mac_header(skb),
it might read garbage bytes.

Should __skb_vlan_pop() be used instead to ensure the metadata is correctly
updated?

> +		*vlan_tci =3D tci;
> +	} else {
> +		rcu_read_lock();
> +		br_vlan_get_pvid_rcu(br, &tci);
> +		rcu_read_unlock();
> +		*vlan_tci =3D tci;
> +	}
> +
> +	*tag_type =3D (proto !=3D ETH_P_8021Q) ? LAN9645X_IFH_TAG_TYPE_S :
> +					     LAN9645X_IFH_TAG_TYPE_C;
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260702-dsa_lan964=
5x_switch_driver_base-v8-0-90228d8bba58@microchip.com?part=3D1

