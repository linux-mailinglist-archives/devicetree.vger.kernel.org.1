Return-Path: <devicetree+bounces-295069-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iDtAEIxiAGq4IAEAu9opvQ
	(envelope-from <devicetree+bounces-295069-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 10 May 2026 12:48:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF20503AA3
	for <lists+devicetree@lfdr.de>; Sun, 10 May 2026 12:48:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 73962300C9A6
	for <lists+devicetree@lfdr.de>; Sun, 10 May 2026 10:48:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4BBD373BFB;
	Sun, 10 May 2026 10:48:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dpjB81Tf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DAE2371D08;
	Sun, 10 May 2026 10:48:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778410116; cv=none; b=fioQpKKPwnS8qJkn1B1lPxDZJPDkQmkOkufQaQh3YKoA1XllKPUzV+oGc8OuXT8+ElmuMzjKNGR+SrQXIH0/QsiJ0ThIfK+gcrEtqdq73X+gVsqYfV2ebP+183edDT4hBzbkX0GsdaM6l63KbSNuE9z3O/9yi+YJM/EdVFQuh2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778410116; c=relaxed/simple;
	bh=15ROVA4JBJZYu6QGzMF7uxtHb5L+mYPao6hnehsdA70=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=jY9sCiXfn9PD3WdswCsoUCZmtCslIKHjZk6Acvih9GF46Ccp/A0N24GRnpt8moPeuVfwzwsz59Yxw9W7iC43aDhZAHP7fCOI2CHnQaiUhzuTZhS6PBDcRKoPUXTUHJHDdlQjN63ykUD1vYPtYeIaFqsiY/8oS3Hoqb9Qr1mndM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dpjB81Tf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E0009C2BCB8;
	Sun, 10 May 2026 10:48:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778410116;
	bh=15ROVA4JBJZYu6QGzMF7uxtHb5L+mYPao6hnehsdA70=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=dpjB81Tf/fHR+zFCtSWxW2Eh5ENCJEs4U3jgY0kOwdhqN7BwFz+HL71HFkDClsOut
	 zlHxaAZoGbwpuhiLjVXgSvx8Ho+jKBGmWiy3FKiuTC9g8N5xsJei2X8AiZq7ap+hbL
	 cOyo3Y9oP+QdrP2oZpmr4Wq+mzQR8QbD1Ee7MIrj0lJXa0yUgSE52G2FvPYj56t+16
	 E7rZ0qht9uBqdZ7s4PMlFVH7rN+MG0dLzRtSmdcI3/quKUYMqPFfdbQXi9pOQ7xiIS
	 yoOwUQoEHCDd05ru+OtkpBoLYiqo+nVfOPfmK8REdyYeXLz6QM7Nu47eBz7shoEsyY
	 iw+WTaGzBQsMg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 net-next 09/15] net: dsa: add NETC switch tag support
Reply-To: sashiko@lists.linux.dev
To: "Wei Fang" <wei.fang@nxp.com>
Cc: imx@lists.linux.dev, devicetree@vger.kernel.org, Frank.Li@kernel.org, robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260509102954.4116624-10-wei.fang@nxp.com>
References: <20260509102954.4116624-10-wei.fang@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 10 May 2026 10:48:35 +0000
Message-Id: <20260510104835.E0009C2BCB8@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: EAF20503AA3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-295069-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,nxp.com:email,smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Out-of-bounds memory read in `netc_flow_dissect()` due to missing =
SKB header linearization.
--

commit 497c9819ff3bedb82e4e40b92e407f5f3d81f984
Author: Wei Fang <wei.fang@nxp.com>

net: dsa: add NETC switch tag support

This commit adds support for the NXP NETC proprietary switch tag to the
DSA subsystem. It defines the NETC tag formats and implements the transmit,
receive, and flow dissection operations for the new tag protocol.

> diff --git a/net/dsa/tag_netc.c b/net/dsa/tag_netc.c
> new file mode 100644
> index 0000000000000..b29aa54b19881
> --- /dev/null
> +++ b/net/dsa/tag_netc.c

[ ... ]

> +static void netc_flow_dissect(const struct sk_buff *skb, __be16 *proto,
> +			      int *offset)
> +{
> +	struct netc_tag_cmn *tag_cmn =3D (struct netc_tag_cmn *)(skb->data - 2);
> +	int tag_len =3D netc_get_rx_tag_len(tag_cmn->type);
> +
> +	*offset =3D tag_len;
> +	*proto =3D ((__be16 *)skb->data)[(tag_len / 2) - 1];

Is it possible for the packet headers to span paged fragments when this is
called?

Since flow_dissect takes a const struct sk_buff pointer and can be invoked
on untrusted or non-linear SKBs (for example, those injected via AF_PACKET
on the egress path), the linear portion of the buffer might be smaller
than the expected tag length.

If tag_len reaches up to 14 bytes, these direct accesses to skb->data
could read past the linear boundary and trigger a page fault or read
uninitialized memory.

Would it be safer to use skb_header_pointer() here to reliably extract the
tag and protocol fields instead of relying on direct pointer arithmetic?

> +}

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260509102954.4116=
624-1-wei.fang@nxp.com?part=3D9

