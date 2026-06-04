Return-Path: <devicetree+bounces-306664-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vGgSIvgoIWqL/wAAu9opvQ
	(envelope-from <devicetree+bounces-306664-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 09:27:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 282B663D9DF
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 09:27:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=d80b1jIk;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306664-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306664-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C8F4E3014A9C
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 07:26:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D8BD3DDDA5;
	Thu,  4 Jun 2026 07:26:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3370339AD55
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 07:26:45 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780558006; cv=none; b=DzrBKcYc7y53hdmqyNwOAOtYHVY2n98YXv5MErDSl+U8AgWIyCGmciKbS+xaVDrRzV5QiO3xMu63nebv9sGkgpFgPVDYd2fiuPnMEZTPsawZRkyL8BHEH//Da3IHJs+xUM6uqeR1k2YOI068TFxLSd9FaqJ1mOa/KiqYLiTALIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780558006; c=relaxed/simple;
	bh=iORQJ7GwOn7Boxk0PZ1kKKXwFyGgHPY1mSW911k33gc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=UC50TyKQVT9LN/uQ42VQDUKOfUmjN7JrveEHGmZwk8pnmEpTj4sCzmHz4PLTLvlEwv44LWiUkOQhsrgVvjgwS0DzEz4mGUB6P8m3Plvv4DpV1q/0HQKBieLYDwlptgj17f9uyGJuqM8KgENlvoMQ0MqyPukkAyNyhHVb4aHPVz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d80b1jIk; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C2EFE1F00899;
	Thu,  4 Jun 2026 07:26:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780558005;
	bh=v+ie87Olkx6AmVM4AImFscwx7kyscdrNlwWmeL3TtNA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=d80b1jIkMAhe/QikA74VHPaKtk9yTrzMxL4dIO5tY2B2Mx7jJ8lx1xUTOezpNfAjD
	 lFaevoUN15mQgu2/TwPFR24Gt35n6+4uvqTbst5ZgwIG/YoA5SdGG6LIsWT6N+hZsx
	 tq6tQBwsl1fvrnjQtHWfBgE6R9+XaVdmTALM3SlX/Ryn9Z5FW1SgueIa5qjwV4tbVs
	 w0nKFWX6nl1VBgamoTZ7TSq4r359MiKIKzb5JRZeVpv8gbpkGZ9TD7/km1XsC0mJwm
	 LTOxLu7KZW5RXigiwFCOWdMxSnuGGhrIlmNPxbQgXLBafG/Gey0+gIX6HtNZ93bAwK
	 1Ekh0kTfmJK4A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v7 7/9] net: dsa: lan9645x: add mac table
 integration
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?SmVucyBFbWlsIFNjaHVseiDDmHN0ZXJnYWFyZA==?= <jensemil.schulzostergaard@microchip.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260603-dsa_lan9645x_switch_driver_base-v7-7-b2f90e676707@microchip.com>
References: <20260603-dsa_lan9645x_switch_driver_base-v7-7-b2f90e676707@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 04 Jun 2026 07:26:44 +0000
Message-Id: <20260604072644.C2EFE1F00899@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-306664-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:jensemil.schulzostergaard@microchip.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 282B663D9DF

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] User-added static FDB entries are incorrectly filtered from FDB =
dumps
--

commit 0adfca5c0335ae394efbf6c915f6b33bdc9c1eee
Author: Jens Emil Schulz =C3=98stergaard <jensemil.schulzostergaard@microch=
ip.com>

net: dsa: lan9645x: add mac table integration

This commit adds MAC table support and DSA FDB callback integration for
the lan9645x driver. It implements learning, flushing, and dumping of
MAC table entries.

> diff --git a/drivers/net/dsa/microchip/lan9645x/lan9645x_mac.c b/drivers/=
net/dsa/microchip/lan9645x/lan9645x_mac.c
> new file mode 100644
> index 0000000000000..1079e49f62718
> --- /dev/null
> +++ b/drivers/net/dsa/microchip/lan9645x/lan9645x_mac.c

[ ... ]

> +int lan9645x_mact_dsa_dump(struct lan9645x *lan9645x, int port,
> +			   dsa_fdb_dump_cb_t *cb, void *data)
> +{

[ ... ]

> +	while (1) {
> +		/* NOTE: we rely on mach, macl and type being set correctly in
> +		 * the registers from previous round, vis a vis the GET_NEXT
> +		 * semantics, so locking entire loop is important.
> +		 */
> +		lan_wr(ANA_MACACCESS_MAC_TABLE_CMD_SET(CMD_GET_NEXT) |
> +		       ANA_MACACCESS_ENTRYTYPE_SET(type),
> +		       lan9645x, ANA_MACACCESS);

[ ... ]

> +		/* Only dynamic entries are surfaced through the user port dump.
> +		 * ENTRYTYPE_LOCKED entries are already reported by the bridge
> +		 * master's ndo_fdb_dump as NTF_MASTER, so we avoid duplicating
> +		 * them as NTF_SELF.
> +		 * Entries toward the host (NTF_SELF) have DEST_IDX =3D=3D CPU_PORT
> +		 * and are filtered out by the DEST_IDX check.
> +		 */
> +		if (ANA_MACACCESS_DEST_IDX_GET(maca) =3D=3D port &&
> +		    type =3D=3D ENTRYTYPE_NORMAL) {

[Severity: Medium]
Will this unconditional filter for ENTRYTYPE_NORMAL hide static FDB entries
from userspace?

The comment suggests ENTRYTYPE_LOCKED entries are skipped because they are
already reported by the bridge master. However:

1. Standalone DSA ports have no bridge master, yet users can add static FDB
entries to them (which are stored as ENTRYTYPE_LOCKED).

2. Entries explicitly added to the hardware table via "bridge fdb add ... s=
elf"
are not tracked by the software bridge.

If we filter out all ENTRYTYPE_LOCKED entries, won't these manually added
static MAC addresses become entirely invisible? Should this dump those entr=
ies
and pass true for the is_static argument to the callback instead, allowing =
the
DSA core to handle deduplication?

> +			addr =3D (u64)ANA_MACHDATA_MACHDATA_GET(mach) << 32 |
> +			       macl;
> +			u64_to_ether_addr(addr, mac);
> +			vid =3D ANA_MACHDATA_VID_GET(mach);
> +			if (vid > VLAN_MAX)
> +				vid =3D 0;
> +
> +			err =3D cb(mac, vid, false, data);
> +			if (err)
> +				break;
> +		}
> +	}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260603-dsa_lan964=
5x_switch_driver_base-v7-0-b2f90e676707@microchip.com?part=3D7

