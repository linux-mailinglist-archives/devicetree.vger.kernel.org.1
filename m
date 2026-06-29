Return-Path: <devicetree+bounces-317302-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QPltOd7tQmoFIwoAu9opvQ
	(envelope-from <devicetree+bounces-317302-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 00:12:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D9A06DF010
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 00:12:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=YG5oIrH+;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317302-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317302-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8AED2300531E
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 22:12:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72E0B2D97B8;
	Mon, 29 Jun 2026 22:12:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C7A017BA6;
	Mon, 29 Jun 2026 22:12:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782771162; cv=none; b=O9KWZKWf4VKbIF2rBhG4RuX0lROV8o2YsJAfl8wp+RomQYlSsQOPAU0GyCbG1IpId8hnJW+z6I7YQeBB873itsbBlK3KwjsyyTiprCJt8PXp83bbNTK143dg/LxwRgm3eJCpf+5XAsyAl5VQgBVNgKdUMxXK1fbWjDa0rQ1rOd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782771162; c=relaxed/simple;
	bh=iB2QUIH+jnpnz5OCEwFTlGlxMpaMurfUS2GYKwYpoDA=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=BIR0pcJL8iZr1OPw8lkPNWsNKJHj5bSqyUJtLU80yM4hlIenxqgJwEbsjJcHtg2fBlIVmT4fWkdJHykl2GAHZYk+rjtjTujq1K3rAVuQMllwfoqGtjoUPQ62ozTZEV8Jz48TndP/yNgmgj+657gV4I/KLZOv6AXTrqx8ot22O54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YG5oIrH+; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9AFE51F000E9;
	Mon, 29 Jun 2026 22:12:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782771161;
	bh=8n9le3trkSyiCOdoQQ7qv7ONy8S8pzEvqIJjvhKl0SQ=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=YG5oIrH+7u+2vG5yyjLSoqJErG9KFnKVH8VxtcUsZw6iAnnRI1lsLV2YWVstIrVIX
	 ySje8nnRZz84eh2EfVzctjJdgk6957pIwY+vwDSNH69oiKLgW7JMjEIN4w75clLFZp
	 Sz0YAN6CSjUADJjX9iB6Vb6iSt0cdNe0vHMdaib/z/v7HOmxzn0avxC4/0DD1+K34a
	 28sjB7H0l+OYbTAUu6KrORpAhkcTJvLqKWaV0+gRiNRaT8PRCyLY98ZvS5NFgxNDav
	 iCtGAegWrTVR4Bdcq0qfPxTgWTQv0gYkjeKNXEOuzJCt7IfMZZf+UDicRORCKqTETo
	 P3u3jnm9xHJog==
Date: Mon, 29 Jun 2026 15:12:39 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Gokul Praveen <g-praveen@ti.com>
Cc: <vigneshr@ti.com>, <kristo@kernel.org>, <conor+dt@kernel.org>,
 <c-vankar@ti.com>, <s-vadapalli@ti.com>, <krzk+dt@kernel.org>,
 <davem@davemloft.net>, <andrew+netdev@lunn.ch>, <pabeni@redhat.com>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 2/3] net: ethernet: ti: am65-cpsw: Fix MAC
 configuration for SGMII mode
Message-ID: <20260629151239.67115e55@kernel.org>
In-Reply-To: <20260629102308.56616-3-g-praveen@ti.com>
References: <20260629102308.56616-1-g-praveen@ti.com>
	<20260629102308.56616-3-g-praveen@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-317302-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[kuba@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:g-praveen@ti.com,m:vigneshr@ti.com,m:kristo@kernel.org,m:conor+dt@kernel.org,m:c-vankar@ti.com,m:s-vadapalli@ti.com,m:krzk+dt@kernel.org,m:davem@davemloft.net,m:andrew+netdev@lunn.ch,m:pabeni@redhat.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:conor@kernel.org,m:krzk@kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kuba@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,netdev];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3D9A06DF010

On Mon, 29 Jun 2026 15:53:07 +0530 Gokul Praveen wrote:
>  drivers/net/ethernet/ti/am65-cpsw-nuss.c | 9 +++++----

you need to cc netdev@

