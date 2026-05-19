Return-Path: <devicetree+bounces-300116-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ABHhHABaDGodfwUAu9opvQ
	(envelope-from <devicetree+bounces-300116-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 14:39:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D8BF57ED88
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 14:39:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3DCD63000884
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 12:27:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB38D4CA260;
	Tue, 19 May 2026 12:27:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rTIw+yjg"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C70CA4C77A4
	for <devicetree@vger.kernel.org>; Tue, 19 May 2026 12:27:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779193641; cv=none; b=b6o48rULD0h6vlwmF8KWGZvuKk4Yfs5kkjjMDDDCJBa5Ffs4XvhUPvQC/+IayGlUZ01etYZHWsoJTEYYZNPwcCiHKnQJQDwBGtloGP1kD5meERV07Y14o6cZTQn9xb3ZIG6cIaNXfC/4xPfHd8u5QHfEvxtxyoi1/dfj1PJ2HjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779193641; c=relaxed/simple;
	bh=gUWUuQmmOxdwtuk8xOuIYfDGbNuz7uuD1lr7/LgULJg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=fx7ov5CAw+Bo87kqlQ/68LvPE/I/Dg5XdmuhWYmH0AXaW/89u+QMRg06K/0+G0jlELbJiDlOrm5JpzvWrI/ZiZoMOp3rRhwBNqJAHNtfGsZup1AI5S74Esl9FJYaYvci/dUbBvx/RMkaiT/qmw6IVURND2LQLSD4rynzOQQXF/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rTIw+yjg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 33F2EC2BCB3;
	Tue, 19 May 2026 12:27:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779193641;
	bh=gUWUuQmmOxdwtuk8xOuIYfDGbNuz7uuD1lr7/LgULJg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=rTIw+yjgEbTh/CIqhaorrRI2L2GTxpykhPt4OKTerS9wtfI6dHRUj2zqf9d3Fso94
	 6qzujsigqcz276AjxP78AUWmdPa/1yXCzHb6lLPvhd2WiN/PnKmnEKjKJT/8SbsiUv
	 RNu70CqLu1t1fTzsdwx7oZ8oyEi7L4O80Jada+wGVu2pEV9l4g1bVs75X78sGh6L1G
	 woIamaEQxwuNMuXmaLgRUsTZKoR8sJZ5HE7aib8Vhr5cldEVqLBq+UngLYH3DxTN+K
	 W1cNcYpPmzwwVxl9wyJPlvf4EnO8ZMk7Z36aZI1LTXbnTJoh4+XnC2K6GvFQto5jNu
	 fy5JMutqx2/iA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v5 1/9] net: dsa: add tag driver for LAN9645X
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?SmVucyBFbWlsIFNjaHVseiDDmHN0ZXJnYWFyZA==?= <jensemil.schulzostergaard@microchip.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260518-dsa_lan9645x_switch_driver_base-v5-1-968fbf34ffa3@microchip.com>
References: <20260518-dsa_lan9645x_switch_driver_base-v5-1-968fbf34ffa3@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 12:27:20 +0000
Message-Id: <20260519122721.33F2EC2BCB3@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-300116-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,microchip.com:email,lists.linux.dev:replyto]
X-Rspamd-Queue-Id: 7D8BF57ED88
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 5 potential issue(=
s) to consider:
- [High] Uninitialized variable `tci` in `lan9645x_xmit_get_vlan_info` lead=
s to garbage VLAN ID injection.
- [High] Missing `skb_unshare` or `skb_cow_head` causes silent data corrupt=
ion on shared/cloned SKBs.
- [High] Hardware-offloaded VLAN tags are ignored on transmit, causing VLAN=
-tagged packets to be sent on the wrong VLAN.
- [High] Incorrect MAC header extraction in RX path breaks DSA core process=
ing and CHECKSUM_COMPLETE.
- [Medium] Missing `.needed_tailroom` causes unnecessary SKB reallocations =
for small packets.
--

commit ae71fae0a54f56ad3bb72558f1dcc9b0a583069e
Author: Jens Emil Schulz =C3=98stergaard <jensemil.schulzostergaard@microch=
ip.com>

net: dsa: add tag driver for LAN9645X

This commit adds a new DSA tag driver for LAN9645x switches using an NPI po=
rt.
It implements asymmetric tagging with a long prefix on extraction (RX) and =
an
internal frame header (IFH) on both RX and TX.

> diff --git a/net/dsa/tag_lan9645x.c b/net/dsa/tag_lan9645x.c
> new file mode 100644
> index 0000000000000..0b639228215e3
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

Does this code ignore hardware-offloaded VLAN tags? If the stack passes a
packet with the VLAN tag in skb->vlan_tci (indicated by
skb_vlan_tag_present()), this only checks for an inline payload tag. The
hardware-accelerated tag might be skipped, falling back to the bridge
port's untagged PVID instead.

> +		vlan_remove_tag(skb, &tci);
> +		*vlan_tci =3D tci;
> +	} else {
> +		rcu_read_lock();
> +		br_vlan_get_pvid_rcu(br, &tci);
> +		rcu_read_unlock();

If the bridge port does not have a PVID configured, br_vlan_get_pvid_rcu()
returns an error (e.g., -EINVAL or -ENOENT). Since the return value isn't
checked, could tci remain uninitialized here and cause garbage VLAN IDs to =
be
injected into the hardware's internal frame header?

> +		*vlan_tci =3D tci;
> +	}
> +
> +	*tag_type =3D (proto !=3D ETH_P_8021Q) ? LAN9645X_IFH_TAG_TYPE_S :
> +					     LAN9645X_IFH_TAG_TYPE_C;
> +}
> +
> +static struct sk_buff *lan9645x_xmit(struct sk_buff *skb,
> +				     struct net_device *ndev)
> +{
> +	struct dsa_port *dp =3D dsa_user_to_port(ndev);
> +	struct dsa_switch *ds =3D dp->ds;
> +	u32 cpu_port =3D ds->num_ports;
> +	u32 vlan_tci, tag_type;
> +	u32 qos_class;
> +	void *ifh;
> +
> +	lan9645x_xmit_get_vlan_info(skb, dsa_port_bridge_dev_get(dp), &vlan_tci,
> +				    &tag_type);

Since this function can modify the SKB data buffer directly (e.g., in
vlan_remove_tag() moving the MAC header, and skb_push() overwriting
headroom), is it possible for the SKB to be shared or cloned here?

If so, skipping skb_cow_head() or skb_unshare() before modifying the SKB
might corrupt the packet data for other consumers holding a reference to
the clone.

> +
> +	/* We need to make sure frame has the proper size after IFH is stripped
> +	 * by hw.
> +	 */
> +	if (__skb_put_padto(skb, ETH_ZLEN, false))
> +		return NULL;

[ ... ]

> +static struct sk_buff *lan9645x_rcv(struct sk_buff *skb,
> +				    struct net_device *ndev)
> +{

[ ... ]

> +	skb_pull(skb, ifh_gap_len);
> +	skb_reset_mac_header(skb);
> +	skb_set_network_header(skb, ETH_HLEN);
> +	skb_reset_mac_len(skb);
> +
> +	/* Reset skb->data past the actual ethernet header. */
> +	skb_pull(skb, ETH_HLEN);
> +
> +	/* We must deliver the skb so skb->csum only covers the data beyond the
> +	 * real ethernet header. The fake ethernet header in the prefix is
> +	 * not part of skb->csum already. We must subtract what remains of the
> +	 * prefix, the ifh and the gap.
> +	 */
> +	skb_postpull_rcsum(skb,
> +			   skb->data - LAN9645X_TOTAL_TAG_LEN - ifh_gap_len,
> +			   LAN9645X_TOTAL_TAG_LEN + ifh_gap_len);

Does this second skb_pull() advance skb->data past the inner MAC header?

The networking stack (via eth_type_trans) expects skb->data to point to the
MAC header so it can read the EtherType and pull the MAC header itself.
Advancing it here could cause eth_type_trans to incorrectly strip the first
14 bytes of the IP header.

Additionally, because skb->data was already advanced, the offset calculation
for skb_postpull_rcsum() might evaluate to the start of the outer fake
payload, subtracting the wrong bytes instead of the prefix and tag.

> +
> +	skb->dev =3D dsa_conduit_find_user(ndev, 0, src_port);
> +	if (WARN_ON_ONCE(!skb->dev)) {

[ ... ]

> +static const struct dsa_device_ops lan9645x_netdev_ops =3D {
> +	.name =3D LAN9645X_NAME,
> +	.proto =3D DSA_TAG_PROTO_LAN9645X,
> +	.xmit =3D lan9645x_xmit,
> +	.rcv =3D lan9645x_rcv,
> +	.needed_headroom =3D LAN9645X_TOTAL_TAG_LEN,
> +};

To avoid unnecessary SKB reallocations in the transmit fast path for small
packets, should .needed_tailroom be defined here?

The lan9645x_xmit() function calls __skb_put_padto(skb, ETH_ZLEN, false),
so adding .needed_tailroom =3D ETH_ZLEN - ETH_HLEN would allow the network =
core
to preallocate this space and avoid triggering pskb_expand_head().

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260518-dsa_lan964=
5x_switch_driver_base-v5-0-968fbf34ffa3@microchip.com?part=3D1

