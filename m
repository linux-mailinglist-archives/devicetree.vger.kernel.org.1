Return-Path: <devicetree+bounces-323519-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vCXvCYJoT2rJgAIAu9opvQ
	(envelope-from <devicetree+bounces-323519-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 11:23:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B25F872EE5B
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 11:23:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ozwgP1VE;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323519-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323519-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 71A0930849FF
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 09:21:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 248043F0746;
	Thu,  9 Jul 2026 09:19:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF2A63FF1D5
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 09:19:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783588761; cv=none; b=GPRux4Wqu7lal1KYKTIQHCnsufRwpwlrZfbfUWCU/wN9hBlYzURbH78ZLdretTgJM3gk3TiUjatsKRLJXArcDpSpqY/RtwHW1UgCmR0TAAQRhE9A5EpIdMs4d3CopJMepJ+2PmJHb+9GviDxm7H89qVJZHJE9lQ9dOkO6gKEVIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783588761; c=relaxed/simple;
	bh=MZGKqJh/183nF+xMxQuxdw7W0NELO1qVjNo626b9i/g=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=aMcFzuxY/KkeHWDFoNZgvADgSnmkUjKcCW48dBehyzfFSD1PjB6nzwyUyXLRI9Yr9HU6aFm4vZcnPvUqZ3ecmU7nsaUYCUg2omYr0TlcEa2bskyLzueB3sSnb2gqL8CyEA3eqoEhGXJ1wlr1qTpkFOfnfCE5oSOv7AJyNmgRNQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ozwgP1VE; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7241D1F00A3A;
	Thu,  9 Jul 2026 09:19:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783588759;
	bh=iS+2aQxlpoI7UUtsv916zHgteB6OyRSlXAeos6wLctQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ozwgP1VETVn4foyNYAeJW4IsytjUl7jqjlk83zC9OPzcXgG3UlNyIOfDGzJKoBl4Q
	 S5l/vDer1VE70Iem28MF4ZwXBQdn89nvd+3tyXTGW4Dy3aKZAnNQn22PcvGmU7SqXL
	 Z/TqGu7l7L6RxXOejjxsaAQFg6m+x2YGT+dh1VpJCJqySaDiWhC5sIRECuw1z5eKQl
	 QXeuTWqXPpfmJQNa9GBtlyr/jlNDiy7VsQi9X533r0Zf5xpfa+hS2geBTvQv2zEtiX
	 58VIShWjmHrWWB6hmBTDGJ3YJJZEsoStZa3MxYmKp9aG/PDCquY4rxxz4ig8O3P2Y4
	 qrggeKfK/novQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v9 1/9] net: dsa: add tag driver for LAN9645X
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?SmVucyBFbWlsIFNjaHVseiDDmHN0ZXJnYWFyZA==?= <jensemil.schulzostergaard@microchip.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260708-dsa_lan9645x_switch_driver_base-v9-1-0d1512a326d7@microchip.com>
References: <20260708-dsa_lan9645x_switch_driver_base-v9-0-0d1512a326d7@microchip.com>
 <20260708-dsa_lan9645x_switch_driver_base-v9-1-0d1512a326d7@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 09:19:19 +0000
Message-Id: <20260709091919.7241D1F00A3A@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-323519-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:jensemil.schulzostergaard@microchip.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,smtp.kernel.org:mid,vger.kernel.org:from_smtp,sashiko.dev:url,microchip.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B25F872EE5B

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] The tag driver drops the socket buffer (`skb`) without freeing it =
when encountering errors in both the RX and TX paths, leading to memory lea=
ks.
- [High] Hardware-accelerated VLAN tags are missed during transmission, lea=
ding to incorrect VLAN assignment and corruption of the Internal Frame Head=
er (IFH) by the conduit NIC hardware.
--

--- Patch [1]: [PATCH net-next v9 1/9] net: dsa: add tag driver for LAN9645=
X ---
commit b8cd048a28aade1f235bef2a39bd42989aa9f813
Author: Jens Emil Schulz =C3=98stergaard <jensemil.schulzostergaard@microch=
ip.com>

net: dsa: add tag driver for LAN9645X

This commit adds a new DSA tag driver for the LAN9645x switch using a front=
 port
as a CPU port (NPI mode). The driver configures an asymmetrical frame forma=
t,
using a long prefix on extraction and no prefix on injection.

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
> +		vlan_remove_tag(skb, &tci);
> +		*vlan_tci =3D tci;

[Severity: High]
Does this miss hardware-accelerated VLAN tags?

If the DSA user device inherits the NETIF_F_HW_VLAN_CTAG_TX feature from the
conduit device, the networking stack retains the VLAN tag in skb->vlan_tci
with skb_vlan_tag_present(skb) =3D=3D true rather than pushing it into the =
payload.

Because this code doesn't check for skb_vlan_tag_present() to clear the tag
via __vlan_hwaccel_clear_tag(skb), it falls back to the port's PVID and lea=
ves
skb->vlan_tci intact.=20

When the skb is later passed to the conduit device, its NIC hardware could
offload the VLAN tag insertion. Since this driver just prepended a 28-byte =
IFH,
the NIC hardware might insert the 4-byte VLAN tag at offset 12 (expecting a
standard Ethernet frame), overwriting and corrupting the IFH.

> +	} else {
> +		rcu_read_lock();
> +		br_vlan_get_pvid_rcu(br, &tci);
> +		rcu_read_unlock();
> +		*vlan_tci =3D tci;
> +	}
[ ... ]
> +static struct sk_buff *lan9645x_xmit(struct sk_buff *skb,
> +				     struct net_device *ndev)
> +{
> +	struct dsa_port *dp =3D dsa_user_to_port(ndev);
> +	struct dsa_switch *ds =3D dp->ds;
> +	u32 vlan_tci, tag_type;
> +	u32 qos_class;
> +	void *ifh;
> +
> +	lan9645x_xmit_get_vlan_info(skb, dsa_port_bridge_dev_get(dp), &vlan_tci,
> +				    &tag_type);
> +
> +	/* We need to make sure frame has the proper size after IFH is stripped
> +	 * by hw.
> +	 */
> +	if (__skb_put_padto(skb, ETH_ZLEN, false))
> +		return NULL;

[Severity: High]
Does this leak the skb when __skb_put_padto() fails?

Since the free_on_error argument is false, __skb_put_padto() returns an err=
or
without freeing the buffer.=20

By returning NULL here without freeing the skb, the buffer could leak under
memory pressure. DSA core requires tag drivers to explicitly free the skb if
they return NULL to drop the packet.

> +
> +	qos_class =3D netdev_get_num_tc(ndev) ?
[ ... ]
> +static struct sk_buff *lan9645x_rcv(struct sk_buff *skb,
> +				    struct net_device *ndev)
> +{
> +	u32 src_port, qos_class, vlan_tci, tag_type, popcnt, etype_ofs, cpuq;
> +	struct dsa_port *dp;
> +	u32 ifh_gap_len =3D 0;
> +	u16 vlan_tpid;
> +	u8 *ifh;
> +
> +	/* DSA master already consumed DMAC,SMAC,ETYPE from long prefix. Go back
> +	 * to beginning of frame.
> +	 */
> +	skb_push(skb, ETH_HLEN);
> +
> +	if (unlikely(!pskb_may_pull(skb, LAN9645X_TOTAL_TAG_LEN)))
> +		return NULL;

[Severity: High]
Can this leak the skb if pskb_may_pull() fails?

If a received packet is smaller than expected, pskb_may_pull() fails and
returns false.=20

Returning NULL here without freeing the skb causes a memory leak, which cou=
ld
be triggered by receiving malformed, undersized packets.

> +
> +	/* IFH starts after our long prefix */
> +	ifh =3D skb_pull(skb, LAN9645X_LONG_PREFIX_LEN);
[ ... ]
> +	skb_pull(skb, LAN9645X_IFH_LEN);
> +
> +	if (unlikely(!pskb_may_pull(skb, ifh_gap_len + ETH_HLEN)))
> +		return NULL;

[Severity: High]
Would this also leak the skb for the same reason if pskb_may_pull() fails?

> +
> +	skb_pull(skb, ifh_gap_len);
> +	skb_reset_mac_header(skb);
[ ... ]
> +	skb->dev =3D dsa_conduit_find_user(ndev, 0, src_port);
> +	if (WARN_ON_ONCE(!skb->dev)) {
> +		/* This should never happen since we have disabled reflection
> +		 * back to the CPU.
> +		 */
> +		return NULL;
> +	}

[Severity: High]
Is it possible to leak the skb here if dsa_conduit_find_user() returns NULL?

Returning NULL without explicitly freeing the skb drops the reference to the
buffer without freeing it.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708-dsa_lan964=
5x_switch_driver_base-v9-0-0d1512a326d7@microchip.com?part=3D1

