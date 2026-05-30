Return-Path: <devicetree+bounces-304512-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ALCfLdczGmp+2AgAu9opvQ
	(envelope-from <devicetree+bounces-304512-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 02:48:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BE2E60A56C
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 02:48:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7D65F3052940
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 00:47:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82B6329B78B;
	Sat, 30 May 2026 00:46:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LTFaW3fJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 501061D54FA
	for <devicetree@vger.kernel.org>; Sat, 30 May 2026 00:46:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780102012; cv=none; b=sXyf0kcSlt/HUECyRR6W8Q1v4Xqb0KE4IEYuQhR55npqt9Wh5UbSoFcpfns8ShlaO32FedC8CPiNhU1DYBFzahL7Ky3AKQXhMPBYs59PbbBJ/7kDrYrb+IE1l5Fm7ioRjBVyu7MfA9RDHYRuCVnj5ynieibZpa5jBErZZhCmfFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780102012; c=relaxed/simple;
	bh=n+lkM6BEEDdqPnzt9jr2La7gdBQsq7IcXEtpmxbEpdE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=TCHhAScJVNjssFvSEgnR3HV6Sm2eGUYyn4Y6mDc2jxtOcUHIdQ4O1J57AIoocsOKhfyCETbNrXsGgFONpa9vRoei8BxyebSv4sFOZITj4QGtiPVzttERglNi5OTG9uWMpyfv/+eUDoIa86b8LJRrUegOzuvdBb5B2BlmJ65hw6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LTFaW3fJ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 062F51F00898;
	Sat, 30 May 2026 00:46:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780102011;
	bh=EwgmZ6j5C5Z4kHBxWJxs4+mB17sTqfcqOSrQ82ImEEM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=LTFaW3fJ2hjBgviV7J9ceW3AbSU+wLM3FIECW6KlRJxZIhAPj00kgg0Hj4m7qD4Uf
	 MRqcrLF7xWOy8ksvPl6iyXWuAOOj5JqbGP3BEGcStTKFGsuRNeQH1ITOgRIwk9RJJA
	 SDzOmCingeHhAyM2/o3r42ThFSzovC2GOr/YixHAuD4HnRren8aRxyd+tUBxdkQiqm
	 MOTRNgh9I0OXunDdJn/X3ORT084Q1uIcYEr50MRw35dtLmvrHFazR+F0OrgY6dpxIX
	 7fAlD92goQn7+NCvUcR1z2cBKKlgpive+qlVII/iQrJAMXrqNrFDne+/ZVW+PhXSLL
	 JXFBWAgYuH+bA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v2 3/5] net: dsa: tag_ks8995: Add the KS8995
 tag handling
Reply-To: sashiko-reviews@lists.linux.dev
To: "Linus Walleij" <linusw@kernel.org>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260522-ks8995-to-ksz8-v2-3-5712c0dc9e75@kernel.org>
References: <20260522-ks8995-to-ksz8-v2-3-5712c0dc9e75@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 30 May 2026 00:46:50 +0000
Message-Id: <20260530004651.062F51F00898@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-304512-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,lists.linux.dev:replyto,smtp.kernel.org:mid,sashiko.dev:url]
X-Rspamd-Queue-Id: 5BE2E60A56C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:
- [High] Double free of SKB in transmit error path.
- [High] Double free of SKB in receive error path due to `skb_vlan_untag()`=
 consuming the buffer.
- [High] Hardware-accelerated non-802.1Q VLAN tags (like 802.1AD) are not c=
leared, breaking switch forwarding.
- [Medium] Undefined behavior and logic error when processing standard 802.=
1Q VLAN frames in `ks8995_rcv()`.
--

commit 5de31df103bfc2d05c675fc89bf1eeca8953c84d
Author: Linus Walleij <linusw@kernel.org>

net: dsa: tag_ks8995: Add the KS8995 tag handling

The KS8995 100Mbit switch can do proper DSA per-port tagging
with the proper set-up. This adds the code to handle ingress
and egress KS8995 tags.

> diff --git a/net/dsa/tag_ks8995.c b/net/dsa/tag_ks8995.c
> new file mode 100644
> index 0000000000000..b3ffbd5e63935
> --- /dev/null
> +++ b/net/dsa/tag_ks8995.c

[ ... ]

> +static struct sk_buff *ks8995_xmit(struct sk_buff *skb, struct net_devic=
e *dev)
> +{
> +	struct vlan_ethhdr *hdr =3D vlan_eth_hdr(skb);
> +	bool have_hwaccel_tag =3D false;
> +	u16 tci =3D 0, portmask;
> +
> +	/* Prepare the special KS8995 tags */
> +	portmask =3D dsa_xmit_port_mask(skb, dev);
> +
> +	if (skb_vlan_tag_present(skb) && skb->vlan_proto =3D=3D htons(ETH_P_802=
1Q)) {
> +		tci =3D skb_vlan_tag_get(skb);
> +		__vlan_hwaccel_clear_tag(skb);
> +		have_hwaccel_tag =3D true;
> +	}

[Severity: High]
Does this code handle hardware-accelerated non-802.1Q VLAN tags (like 802.1=
AD)?

It appears that if the user has configured an 802.1AD VLAN and the conduit
device supports hardware offload, the SKB will have
skb->vlan_proto =3D=3D htons(ETH_P_8021AD). This hardware tag wouldn't be c=
leared,
and the KS8995 STPID tag would be inserted directly into the payload.

Would this cause the conduit device to insert the 802.1AD tag outside the
STPID tag, potentially causing the switch to drop or misroute the packet
since it expects the STPID tag first?

> +
> +	if (have_hwaccel_tag || hdr->h_vlan_proto !=3D htons(ETH_P_8021Q)) {
> +		skb =3D vlan_insert_tag(skb, KS8995M_STPID(portmask), tci);
> +		if (!skb)
> +			return NULL;

[Severity: High]
Could returning NULL here cause a double free of the SKB?

If vlan_insert_tag() fails (for example, due to a memory allocation failure=
),
it internally frees the SKB before returning NULL. If we return NULL to the
DSA core here, dsa_user_xmit() assumes the tagger didn't free the SKB and
calls kfree_skb() on the already-freed pointer.

> +		hdr =3D vlan_eth_hdr(skb);

[ ... ]

> +static struct sk_buff *ks8995_rcv(struct sk_buff *skb, struct net_device=
 *dev)
> +{
> +	int portmask;
> +	u16 etype;
> +
> +	/* We are expecting all received packets to have a mangled VLAN
> +	 * TPID, so drop anything else. Because of the non-standard TPID,
> +	 * don't even bother looking for a tag in the hwaccel area.
> +	 *
> +	 * We have to inspect the ethertype directly because skb->protocol
> +	 * will contain garbage.
> +	 */
> +	etype =3D ntohs(*(__be16 *)dsa_etype_header_pos_rx(skb));
> +	if ((etype & KS8995M_STPID_STD) !=3D ETH_P_8021Q) {
> +		netdev_info(dev, "%s: dropped ethertype 0x%04x\n",
> +			    __func__, etype);
> +		return NULL;
> +	}
> +	netdev_dbg(dev, "%s: received ethertype %04x\n",
> +		   __func__, etype);
> +
> +	/* Move the custom DSA+VLAN tag into the hwaccel area and strip
> +	 * it from the skb head
> +	 */
> +	skb =3D skb_vlan_untag(skb);
> +	if (!skb) {
> +		netdev_err(dev, "%s: unable to untag skb\n", __func__);
> +		return NULL;

[Severity: High]
Does returning NULL here result in a double free?

If skb_vlan_untag() fails, it explicitly frees the SKB and returns NULL.
When we return NULL here, the DSA core in dsa_switch_rcv() checks if the
tagger returned NULL and will call kfree_skb() on the original SKB pointer,
which has already been freed.

> +	}
> +
> +	portmask =3D FIELD_GET(KS8995M_STPID_PORTMASK, etype);
> +	netdev_dbg(dev, "%s: etype %04x portmask %04x (%d)\n",
> +		   __func__, etype, portmask, ilog2(portmask));

[Severity: Medium]
Will standard 802.1Q frames bypass the drop check and cause undefined
behavior here?

A standard 802.1Q frame has an ethertype of 0x8100. The bitwise AND with
0xFFF0 (KS8995M_STPID_STD) results in 0x8100, which matches ETH_P_8021Q, so
the frame bypasses the drop check earlier in this function.

Since the lower 4 bits of 0x8100 are 0, the portmask will be 0. Calling
ilog2(0) can trigger undefined behavior on some architectures or evaluate
to -1, leading to an invalid port lookup in the subsequent
dsa_conduit_find_user() call.

> +	skb->dev =3D dsa_conduit_find_user(dev, 0, ilog2(portmask));

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260522-ks8995-to-=
ksz8-v2-0-5712c0dc9e75@kernel.org?part=3D3

