Return-Path: <devicetree+bounces-326324-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id yuEODn5NVmpq3AAAu9opvQ
	(envelope-from <devicetree+bounces-326324-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 16:53:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 152577561BB
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 16:53:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=YwaGPVsC;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326324-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326324-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C97FE304817D
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 14:44:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78C20363087;
	Tue, 14 Jul 2026 14:44:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B547E3EF649
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 14:43:50 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784040237; cv=none; b=tUTpreH/V/euyMOTEOznDVpBIgRWoqOFMD8+6w2SQ/0nLyHnEXpw5Fk5Cbn7MdaPvuUH9wcY0PB6RvCg+B+odr9b8p7Cz6o9eqpmZGWcua1DfkyVSe5/gzizZX9KYpF7+h6b/2pAjD0jJF/Fa3nVUSL7Wwq668+HoaBxpRbLhN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784040237; c=relaxed/simple;
	bh=8lauzoCV0Odo+rQIYEW020nlaawB3h3rCEKLa5hRDak=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ELJMeUEUcRGhNq1tJZk3Sz7JvhQZonY5Hg3u4lQYSif601k0IOTbc1+Prgbeaz7hdyCnXqNqbfuz2uK3f5uDnxqxjrQpITNKDaiIrZSYa9uZPnY9BJO+Oaln4fGsByxzA4B4SsQ6dsko+913wYRCm6CllnEb8bmTMrob/aCkP/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YwaGPVsC; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5FCD1F000E9;
	Tue, 14 Jul 2026 14:43:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784040225;
	bh=HZMvlN47iSORZIZaAbkAqmsFbas0vM1DiVs9tPYji0M=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=YwaGPVsCyX454F5cBlV3fh+M9hF9kScDbVu8y9CrbQFMt+L4bYJN/MSC9fGNqWFd8
	 R54+G8ErlZ3j32mPllqdzpXm6olLg/zMPlX6J5IfFMLpOSXuqr3NrJ8zovbNaoqQBq
	 Es+vn29pd3Ec1iYEAtFGpUpaM0Xq6SL5NI+MefHTaPvmGsxA/C89NkfwUObJLvRNJP
	 I58NZzHU8lAUddyj6y0SdYLQ9ul4U9wsx2ojnPKUF7VN9vZ93HKGHFdB19+C2oQ9h1
	 mRnCQFBMEXHEWHRVEZqxoy6+KbcZNZkHsASpNPBISYJmgFexqbrW3HFXKp9E9Uo1sS
	 tPe4pVE3iCMmg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v10 1/9] net: dsa: add tag driver for LAN9645X
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?SmVucyBFbWlsIFNjaHVseiDDmHN0ZXJnYWFyZA==?= <jensemil.schulzostergaard@microchip.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260713-dsa_lan9645x_switch_driver_base-v10-1-a4886a08fb15@microchip.com>
References: <20260713-dsa_lan9645x_switch_driver_base-v10-0-a4886a08fb15@microchip.com>
 <20260713-dsa_lan9645x_switch_driver_base-v10-1-a4886a08fb15@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jul 2026 14:43:44 +0000
Message-Id: <20260714144344.B5FCD1F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-326324-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto,microchip.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 152577561BB

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Adding an out-of-band VLAN tag without checking for and popping an=
 existing payload tag results in double-tagged frames.
--

--- Patch [1]: [PATCH net-next v10 1/9] net: dsa: add tag driver for LAN964=
5X ---
commit 3fca3b09e95a3eeee247c89f8ecdf602074e9506
Author: Jens Emil Schulz =C3=98stergaard <jensemil.schulzostergaard@microch=
ip.com>

net: dsa: add tag driver for LAN9645X

This commit adds a DSA tag driver for the LAN9645x family of switches. It
configures an NPI port to use a 16-byte long prefix on extraction and no
prefix on injection, prepending an internal frame header (IFH) to transmit
critical data.

> diff --git a/net/dsa/tag_lan9645x.c b/net/dsa/tag_lan9645x.c
> new file mode 100644
> index 0000000000000..2692c7ad56cbc
> --- /dev/null
> +++ b/net/dsa/tag_lan9645x.c
[ ... ]
> +static struct sk_buff *lan9645x_rcv(struct sk_buff *skb,
> +				    struct net_device *ndev)
> +{
[ ... ]
> +	/* While we have REW_PORT_NO_REWRITE=3D0 on the NPI port, we still disa=
ble
> +	 * port VLAN tagging with REW_TAG_CFG. Any classified VID, different
> +	 * from a VID in the frame, will not be written to the frame, but is
> +	 * only communicated via the IFH. So for VLAN-aware ports we add the IFH
> +	 * vlan to the skb.
> +	 */
> +	dp =3D dsa_user_to_port(skb->dev);
> +	vlan_tpid =3D tag_type ? ETH_P_8021AD : ETH_P_8021Q;
> +
> +	if (dsa_port_is_vlan_filtering(dp) && vlan_tci) {
> +		u16 port_pvid =3D 0;
> +
> +		br_vlan_get_pvid_rcu(skb->dev, &port_pvid);
> +
> +		if ((vlan_tci & VLAN_VID_MASK) !=3D port_pvid)

[Severity: High]
Does this code result in double-tagged frames?

If the hardware delivers the frame without stripping the in-band tag because
port VLAN rewrite is disabled, calling __vlan_hwaccel_put_tag() here adds an
out-of-band tag while leaving the original in-band tag intact in the payloa=
d.
This would cause the network stack to process a single 802.1Q tagged frame
from the wire as a Q-in-Q double-tagged frame.

Should lan9645x_rcv() pop the existing payload tag (for example, using
__skb_vlan_pop()) before adding the out-of-band tag to avoid duplicating it?

> +			__vlan_hwaccel_put_tag(skb, htons(vlan_tpid), vlan_tci);
> +	}
> +
> +	return skb;
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260713-dsa_lan964=
5x_switch_driver_base-v10-0-a4886a08fb15@microchip.com?part=3D1

