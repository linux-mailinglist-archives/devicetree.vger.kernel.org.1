Return-Path: <devicetree+bounces-295075-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4FF0BI1iAGq4IAEAu9opvQ
	(envelope-from <devicetree+bounces-295075-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 10 May 2026 12:48:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id EEDA2503AAB
	for <lists+devicetree@lfdr.de>; Sun, 10 May 2026 12:48:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3C4B63003615
	for <lists+devicetree@lfdr.de>; Sun, 10 May 2026 10:48:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DF0D373BFB;
	Sun, 10 May 2026 10:48:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mkssIs6j"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1798372698;
	Sun, 10 May 2026 10:48:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778410121; cv=none; b=uIJAEPadGx+i+i88rPzb9d6FWiqaQWDGLVvMPGjvrZH6nD3JH/tcMdf7YJL/xaTlwwTGlcO9rdJTqUREfSuRAzy+JJa0Wx78wBU9Q8cbQLR1y9lkXGwwYKCy5Ly6U3cKbRqYs3SzaSb7irjGVXkS/v3jUNKKQfcB9Rq2Pl/Q34U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778410121; c=relaxed/simple;
	bh=XBktwcwzVvUa40X5khKrpsu8UJsfY2FRLoqhwY0yM38=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=jQ+7enqXxtirmTdGJXnrSfHzX+NKOFY+jwVBitfR8Zc3AqOo9xXOF7fQBKO4y5H62nEmNF7V2XTjqsvUUqC7sbFd2lApHdaqmoYxGTpOPMKK17DtMx3wyBq6b4CJ4EJE7IBBz5Jag9aMvRPzvgOuVn0JUsNhIg2hj0sqEPxJEvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mkssIs6j; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 11938C2BCB8;
	Sun, 10 May 2026 10:48:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778410121;
	bh=XBktwcwzVvUa40X5khKrpsu8UJsfY2FRLoqhwY0yM38=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=mkssIs6jG6nQ9SHx4jXN/OPA3yEHoZm0yqilk+Qe56L7rpJwQ0VvU7NfyWX+ilowp
	 gQU4luVJm9whLg5BHsA8A1rVqP7qrrNA95hpEPkmpdkDW5vYICxYbc70X9fZ821esX
	 LaOWwPIb4jRXO7flJd9bZSSGkI4rjebAbjGI4MxT7olzhHsrUFUlg0QjVxHbneryHv
	 io16yPhoxab8sjvON1A30l6SJ0iLvWzZguB852G+qTM6hoxt+ojrdopb222fIMs9CL
	 OX78LG2/hDMxTr6TzK6g1S1bzeXduiXDyVgg2ZlIM/H7yzINcKhxX6QG8mt8VLLQVt
	 7VyRZni3BLYGg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 net-next 15/15] net: dsa: netc: add support for
 ethtool private statistics
Reply-To: sashiko@lists.linux.dev
To: "Wei Fang" <wei.fang@nxp.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, imx@lists.linux.dev, conor+dt@kernel.org, krzk+dt@kernel.org, Frank.Li@kernel.org
In-Reply-To: <20260509102954.4116624-16-wei.fang@nxp.com>
References: <20260509102954.4116624-16-wei.fang@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 10 May 2026 10:48:40 +0000
Message-Id: <20260510104841.11938C2BCB8@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: EEDA2503AAB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-295075-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,nxp.com:email,lists.linux.dev:replyto,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,sashiko.dev:url]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The patch duplicates standard network statistics into the privat=
e ethtool (-S) interface.
--

commit 66f17e671c095a381aeff77d1d8c0cae1e43722c
Author: Wei Fang <wei.fang@nxp.com>

net: dsa: netc: add support for ethtool private statistics

Implement the ethtool private statistics interface to expose additional
port-level and MAC-level counters that are not covered by the standard
IEEE 802.3 statistics. The pMAC counters are only reported when the port
supports Frame Preemption (802.1Qbu/802.3br).

> diff --git a/drivers/net/dsa/netc/netc_ethtool.c b/drivers/net/dsa/netc/n=
etc_ethtool.c
> index ac8940b5a85c6..8d04db534347c 100644
> --- a/drivers/net/dsa/netc/netc_ethtool.c
> +++ b/drivers/net/dsa/netc/netc_ethtool.c
> @@ -19,6 +19,56 @@ static const struct ethtool_rmon_hist_range netc_rmon_=
ranges[] =3D {
>  	{ }
>  };
> =20
> +static const struct netc_port_stat netc_port_counters[] =3D {
> +	{ NETC_PTGSLACR,	"port gate late arrival frames" },
> +	{ NETC_PSDFTCR,	"port SDF transmit frames" },
> +	{ NETC_PSDFDDCR,	"port SDF drop duplicate frames" },
> +	{ NETC_PRXDCR,		"port rx discard frames" },
> +	{ NETC_PRXDCRRR,	"port rx discard read-reset" },
> +	{ NETC_PRXDCRR0,	"port rx discard reason 0" },
> +	{ NETC_PRXDCRR1,	"port rx discard reason 1" },
> +	{ NETC_PTXDCR,		"port tx discard frames" },
> +	{ NETC_PTXDCRRR,	"port tx discard read-reset" },
> +	{ NETC_PTXDCRR0,	"port tx discard reason 0" },
> +	{ NETC_PTXDCRR1,	"port tx discard reason 1" },
> +	{ NETC_BPDCR,		"bridge port discard frames" },
> +	{ NETC_BPDCRRR,	"bridge port discard read-reset" },
> +	{ NETC_BPDCRR0,	"bridge port discard reason 0" },
> +	{ NETC_BPDCRR1,	"bridge port discard reason 1" },
> +};
> +
> +static const struct netc_port_stat netc_emac_counters[] =3D {
> +	{ NETC_PM_ROCT(0),	"eMAC rx octets" },
> +	{ NETC_PM_RVLAN(0),	"eMAC rx VLAN frames" },
> +	{ NETC_PM_RERR(0),	"eMAC rx frame errors" },
> +	{ NETC_PM_RUCA(0),	"eMAC rx unicast frames" },
> +	{ NETC_PM_RDRP(0),	"eMAC rx dropped packets" },
> +	{ NETC_PM_RPKT(0),	"eMAC rx packets" },
> +	{ NETC_PM_TOCT(0),	"eMAC tx octets" },
> +	{ NETC_PM_TVLAN(0),	"eMAC tx VLAN frames" },
> +	{ NETC_PM_TFCS(0),	"eMAC tx FCS errors" },
> +	{ NETC_PM_TUCA(0),	"eMAC tx unicast frames" },
> +	{ NETC_PM_TPKT(0),	"eMAC tx packets" },
> +	{ NETC_PM_TUND(0),	"eMAC tx undersized packets" },
> +	{ NETC_PM_TIOCT(0),	"eMAC tx invalid octets" },
> +};
> +
> +static const struct netc_port_stat netc_pmac_counters[] =3D {
> +	{ NETC_PM_ROCT(1),	"pMAC rx octets" },
> +	{ NETC_PM_RVLAN(1),	"pMAC rx VLAN frames" },
> +	{ NETC_PM_RERR(1),	"pMAC rx frame errors" },
> +	{ NETC_PM_RUCA(1),	"pMAC rx unicast frames" },
> +	{ NETC_PM_RDRP(1),	"pMAC rx dropped packets" },
> +	{ NETC_PM_RPKT(1),	"pMAC rx packets" },
> +	{ NETC_PM_TOCT(1),	"pMAC tx octets" },
> +	{ NETC_PM_TVLAN(1),	"pMAC tx VLAN frames" },
> +	{ NETC_PM_TFCS(1),	"pMAC tx FCS errors" },
> +	{ NETC_PM_TUCA(1),	"pMAC tx unicast frames" },
> +	{ NETC_PM_TPKT(1),	"pMAC tx packets" },
> +	{ NETC_PM_TUND(1),	"pMAC tx undersized packets" },
> +	{ NETC_PM_TIOCT(1),	"pMAC tx invalid octets" },
> +};

Should these standard MAC statistics be exposed as private ethtool strings?

Many of the counters defined in netc_emac_counters and netc_pmac_counters,
such as rx octets, rx packets, rx dropped packets, and tx FCS errors,
appear to correspond directly to existing standard uAPIs like
struct rtnl_link_stats64 or struct ethtool_eth_mac_stats.

Since the driver already implements netc_port_get_eth_mac_stats(), which
supports both eMAC and pMAC sources, could these standard counters be
reported through the standard interfaces instead to avoid duplicating
them in ethtool -S?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260509102954.4116=
624-1-wei.fang@nxp.com?part=3D15

