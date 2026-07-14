Return-Path: <devicetree+bounces-326326-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id j+rQIp5MVmov3AAAu9opvQ
	(envelope-from <devicetree+bounces-326326-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 16:50:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF357560EC
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 16:50:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=VyJt1kwR;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326326-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326326-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EEC103075CF7
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 14:44:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A0CC480943;
	Tue, 14 Jul 2026 14:44:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 170F5448CFC
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 14:43:48 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784040237; cv=none; b=pWUogonRCSnKndU/m7QB/4ABD5XWXuSQDaFcx0D4J2he05gYb7opVI9p+sSRI1UJOmKSu7xOnjBqWaKNvlXxY+L5Qv2SUr0Ctmx3ZuJZUupOhySx7E+fhR9DwYopQFWXQ5wVfoJfDg2NZTMIJSCZvSWIbEoJD3OWyRwXmjm/b7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784040237; c=relaxed/simple;
	bh=5Y8Gvrf8ZOd+MRGXujtzNngV++xHS89ZWBy/yL3J7fs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=a1GxtquBt+HzWqDDJakLmK9ASkEMsb+X4L/p7ZKPqffECImVCdudci6Xcj7rbQXGB6PLWV8gDEmCMx3/OMj5c5iJzIq/ncx1D2vqEPz41nDlGT+C+0+5TMpafpcZvoYxU39YM6zqjq4W+Jvmvk1eyt32EWUif/NRC1c4dzMr9vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VyJt1kwR; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 22BB41F00A3D;
	Tue, 14 Jul 2026 14:43:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784040226;
	bh=afUzv1WNgtlwlkH8BXDvG0TdghvIoITfRX1MWo+3pM4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=VyJt1kwRMq5wHt44599HtPKy01YV7Dquzvpk118bTEvpOM33734Klwkrk4p4U6Ebu
	 qgmCbVucpRkIQ4R/fS4whOLjCjnQurEENgC8tAmjh+bW7X/kzNQ1JCMXIaml/OS3ti
	 OOtEyuVnmKDIOp4e0U5Muck0mQn8mLdgHa0cBHRusQDeBjZBpEJOnipn49zoNZb3sR
	 dggwQ0avMZJU6EX8f95B7AZXwYIY5Ktdhv1Z8VjmXSgk5F+9M02/30qElOEpOWM5Jq
	 q/3hSFq5Y3o6KQbCrxihFdq6luI7sChamw6gMS/vO13+kLpY9V/RtijDmvfwqaXpQr
	 Kqv3R29nvrDoQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v10 4/9] net: dsa: lan9645x: add basic dsa
 driver for LAN9645X
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?SmVucyBFbWlsIFNjaHVseiDDmHN0ZXJnYWFyZA==?= <jensemil.schulzostergaard@microchip.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260713-dsa_lan9645x_switch_driver_base-v10-4-a4886a08fb15@microchip.com>
References: <20260713-dsa_lan9645x_switch_driver_base-v10-0-a4886a08fb15@microchip.com>
 <20260713-dsa_lan9645x_switch_driver_base-v10-4-a4886a08fb15@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jul 2026 14:43:45 +0000
Message-Id: <20260714144346.22BB41F00A3D@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-326326-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:jensemil.schulzostergaard@microchip.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,microchip.com:email,vger.kernel.org:from_smtp,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EAF357560EC

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Missing FDB operations and omission of the CPU port in PGID_UC bre=
aks unicast IP traffic to the CPU.
--

--- Patch [4]: [PATCH net-next v10 4/9] net: dsa: lan9645x: add basic dsa d=
river for LAN9645X ---
commit 996cf37c0fe28c352442c3b82c0b401974b8f66a
Author: Jens Emil Schulz =C3=98stergaard <jensemil.schulzostergaard@microch=
ip.com>

net: dsa: lan9645x: add basic dsa driver for LAN9645X
   =20
Add the LAN9645X basic DSA driver with initialization, parent regmap reques=
ts,
port module initialization for NPI, CPU ports and front ports, and phylink
integration for MAC side configuration.

> diff --git a/drivers/net/dsa/microchip/lan9645x/lan9645x_main.c b/drivers=
/net/dsa/microchip/lan9645x/lan9645x_main.c
> new file mode 100644
> index 0000000000000..b253813518c20
> --- /dev/null
> +++ b/drivers/net/dsa/microchip/lan9645x/lan9645x_main.c

[ ... ]

> @@ -0,0 +1,447 @@

[ ... ]

> +static int lan9645x_setup(struct dsa_switch *ds)
> +{

[ ... ]

> +	/* Multicast to all front ports */
> +	lan_wr(front_ports, lan9645x, ANA_PGID(PGID_MC));
> +
> +	/* IP multicast to all front ports */
> +	lan_wr(front_ports, lan9645x, ANA_PGID(PGID_MCIPV4));
> +	lan_wr(front_ports, lan9645x, ANA_PGID(PGID_MCIPV6));
> +
> +	/* Unicast to all front ports */
> +	lan_wr(front_ports, lan9645x, ANA_PGID(PGID_UC));

[Severity: High]
Does omitting the CPU port module (BIT(lan9645x->num_phys_ports)) from the
unknown unicast flooding mask (PGID_UC) prevent unicast traffic from reachi=
ng
the CPU?

Since hardware learning is disabled in lan9645x_port_setup() via
ANA_PORT_CFG_LEARN_ENA_SET(0), and the lan9645x_switch_ops struct lacks a
port_fdb_add callback to statically program the CPU's MAC address, unicast
frames destined for the CPU will be treated as unknown unicast.

Because PGID_UC only includes front_ports, it appears these unknown unicast
frames will be flooded to the front ports but not to the CPU, effectively
breaking unicast IP connectivity (such as ARP replies) to the host.

> +
> +	/* Broadcast to cpu and all front ports */
> +	lan_wr(BIT(lan9645x->num_phys_ports) | front_ports, lan9645x,
> +	       ANA_PGID(PGID_BC));

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260713-dsa_lan964=
5x_switch_driver_base-v10-0-a4886a08fb15@microchip.com?part=3D4

