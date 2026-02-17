Return-Path: <devicetree+bounces-266191-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SI45DhCElGlBFQIAu9opvQ
	(envelope-from <devicetree+bounces-266191-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 16:06:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 56BAD14D66D
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 16:06:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 93AFE3009E11
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 15:06:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAFE636CDEC;
	Tue, 17 Feb 2026 15:06:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="pnXmV2pP"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB7D36C5A9;
	Tue, 17 Feb 2026 15:06:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771340791; cv=none; b=EQo7wFqr9E4wXbSq1dXjA7LQ09GtlloiuZ6Z3atjaTSnSaDyA9YuVRRygcXDrMX8DfOP4XZ27UkB6UvrywR6sFLsDTk8DoVH/cmCBkRsTG7f4Q2Zfc3qEV969Qe7USdiZd+hZ4Gt3vdUGzXwS3ouTW0tFD+uKF3vtTxk9kM4KBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771340791; c=relaxed/simple;
	bh=IQJ4U9fGaDm5qPm0TPpCij2pCDqnQ1+ihHmReWt2g9Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mjihI2iO3WoasxcfCX7XGXr1LLw6WuulCW1dHvxGvJCMTdaz92kIvPOzKIPNb9VUQGE/TFI1bsnvi9ncJWO0va0xtmKKcPKQpLa8ksjNjGPqgq9FGpDUqUupGhxsuRs9diPP/gxP2Eos3Pr2B6WKu9zvYcaDa2Exz2kd/iPB1js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=pnXmV2pP; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=ZMuHuDboJOUu00uJIftapYBECe57uBS1skPmmrMya9I=; b=pnXmV2pPZ3/C/SS6EyXrdqFasH
	NKqo9klORAGON0S1c7A6pjPqKkHqxGzHdLHCaIdRzD3sIlJr0Exgk+XDraakMeF8p3YJdEhghbJLD
	tLqQLOYWG+zASBKqVOs3Yo5wLlEn84P4ol+2Zx7zYW3jdMwl6lPbcr3ZxHdEVuTy37iM=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1vsMec-007elf-58; Tue, 17 Feb 2026 16:06:22 +0100
Date: Tue, 17 Feb 2026 16:06:22 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Ian Ray <ian.ray@gehealthcare.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH V2 0/5] ARM: dts: imx: {bx50v3,b850v3}: Update device
 trees
Message-ID: <538e99b3-be4b-4f1b-a3e1-dffc6240461b@lunn.ch>
References: <20260217135521.65742-1-ian.ray@gehealthcare.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260217135521.65742-1-ian.ray@gehealthcare.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[lunn.ch,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[lunn.ch:s=20171124];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266191-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@lunn.ch,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[lunn.ch:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,lunn.ch:mid,lunn.ch:dkim]
X-Rspamd-Queue-Id: 56BAD14D66D
X-Rspamd-Action: no action

On Tue, Feb 17, 2026 at 03:55:15PM +0200, Ian Ray wrote:
> Configure PHY speed and mode.
> Configure b850v3 gpio4 line name.
> Disable b850v3 usdhc4 interface.
> 
> Changes since v1:
> - Clarify the exact warning message in patch 2
> - Add patch 3 to order reference modififcations correctly
> - Correct the ordering of reference modification in patch 4

Please wait at least 24 hours between versions. You need to give
reviewers time to actually review our patches.

At the moment, because the merge window is open, your patches are
going to be rejected anyway, and you will need to repost in two weeks
time.

Please go back to version 1 and answer my questions.

       Andrew

