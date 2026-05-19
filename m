Return-Path: <devicetree+bounces-299896-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wNysBsUhDGrjWwUAu9opvQ
	(envelope-from <devicetree+bounces-299896-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 10:39:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C6F5D57A4B9
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 10:39:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 52F633049722
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 08:26:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 671033E4C83;
	Tue, 19 May 2026 08:25:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZwulZTT4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 447E93E2AB1;
	Tue, 19 May 2026 08:25:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779179139; cv=none; b=piXyOb0eKmF17jqCv6E1HIVUuTEatdCpvsp/dFKFHu34qAVZxolSWLS8q5l2kYVSHWZyJxAphjGrMvVTOebBmOIBPmcbWF/lPdaDledqxDf4nMSQMm/5PTgvpTOoJT4pxiAhp3yp6TnjFyu+Kz0PVNshnRFMdqdvHkyQCnWikPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779179139; c=relaxed/simple;
	bh=gPyX+rEwofz5Bqhdnk3R7BPVHNj2F4Hfqkt/x50IcNI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=VSnHZ+3vcbCfFc76aPKhhBGX5sJLUnsIhRh+/TYu/e8q6GQuAlhBnO96xMrnvjW1WUATnFMJovNqyorRb5hJIwOayYDyByugBDJG9+VXhcRk69POufAteWOvCi7GQBg5sZrPdZtbjwFJFcQX4rhzEsqVtr7laKAC+VDt+oX5pcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZwulZTT4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B0919C2BCC6;
	Tue, 19 May 2026 08:25:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779179139;
	bh=gPyX+rEwofz5Bqhdnk3R7BPVHNj2F4Hfqkt/x50IcNI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=ZwulZTT4blq+IudoP6yXsx9PTk0GxA7AvxO2iN0AB5zPhgI58bOEoi1cbzm4qRtgH
	 H4fqfjuzUmSB3hjXaoFJASsbPPkaChmoyIjUPsCf7aRH+HWhy3cfGzmPZyyWIOBe+f
	 X6FgmPcfP8/Fv+LlabG6efCDgGRxANdCZAbd3A6EhEMQ40UQDOQcCyQ63QMLuPJ1P6
	 lIJrpzdZr6+6vCm7JTZncAKqbGEW4l86kGNdsOlTryoMbBA9QrNpDOSTFy59AkDQvQ
	 xs5BXDxbZ7/WH/2YIB/gn6oyfqX9BG2AIdVyLc3Rnijphug+Jov1+lakIgDd8bf9ai
	 ppmAhPCtfVzaw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 net-next 12/15] net: dsa: netc: add FDB, STP, MTU,
 port setup and host flooding support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Wei Fang" <wei.fang@nxp.com>
Cc: Frank.Li@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, imx@lists.linux.dev, conor+dt@kernel.org
In-Reply-To: <20260518082506.1318236-13-wei.fang@nxp.com>
References: <20260518082506.1318236-13-wei.fang@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 08:25:38 +0000
Message-Id: <20260519082538.B0919C2BCC6@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,lists.linux.dev:replyto,nxp.com:email,smtp.kernel.org:mid,sashiko.dev:url];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-299896-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: C6F5D57A4B9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Stack-allocated byte arrays passed to ether_addr_copy() and ethe=
r_addr_equal() may not be 16-bit aligned, risking alignment faults.
--

commit eaa86c7415fcd30cddae2cda4bd6d4ca21da6e88
Author: Wei Fang <wei.fang@nxp.com>
Subject: net: dsa: netc: add FDB, STP, MTU, port setup and host flooding su=
pport

This commit expands the NETC switch driver with foundational features
including FDB, MDB, STP state handling, MTU configuration, and host
flooding support. The driver currently operates in standalone port mode.

> diff --git a/drivers/net/dsa/netc/netc_main.c b/drivers/net/dsa/netc/netc=
_main.c
> index 2141b3aa96b7a..9dcaa04d9a65e 100644
> --- a/drivers/net/dsa/netc/netc_main.c
> +++ b/drivers/net/dsa/netc/netc_main.c
[ ... ]
> @@ -367,6 +422,220 @@ static void netc_port_default_config(struct netc_po=
rt *np)
[ ... ]
> +static int netc_add_standalone_fdb_bcast_entry(struct netc_switch *priv)
> +{
> +	const u8 bcast[ETH_ALEN] =3D {0xff, 0xff, 0xff, 0xff, 0xff, 0xff};

Since stack-allocated byte arrays are only guaranteed to be 1-byte aligned,
could this cause an unaligned access fault on architectures that trap on
strict alignment?

Looking at netc_port_set_fdb_entry(), this pointer is eventually passed to
netc_lookup_fdb_entry() which calls ether_addr_equal(), and to
netc_port_add_fdb_entry() which calls ether_addr_copy(). Both of these
helpers require their arguments to be at least 16-bit aligned.

Should this array be marked with __aligned(2), or could the code use
eth_broadcast_addr() instead?

[ ... ]
> +static int netc_port_add_host_flood_rule(struct netc_port *np,
> +					 bool uc, bool mc)
> +{
> +	const u8 dmac_mask[ETH_ALEN] =3D {0x1, 0, 0, 0, 0, 0};

Similarly, does this dmac_mask array need explicit 16-bit alignment?

It is passed directly to ether_addr_copy() below, which has the same 16-bit
alignment requirement:

> +	if (uc && !mc)
> +		ether_addr_copy(keye->dmac_mask, dmac_mask);
> +
> +	if (!uc && mc) {
> +		ether_addr_copy(keye->dmac, dmac_mask);
> +		ether_addr_copy(keye->dmac_mask, dmac_mask);
> +	}
[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260518082506.1318=
236-1-wei.fang@nxp.com?part=3D12

