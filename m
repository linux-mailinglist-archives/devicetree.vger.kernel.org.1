Return-Path: <devicetree+bounces-261844-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uJdBFBCwgGn6AQMAu9opvQ
	(envelope-from <devicetree+bounces-261844-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 15:09:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9768ECD28F
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 15:09:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 31836315112A
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 14:01:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AB0936607B;
	Mon,  2 Feb 2026 14:00:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="VFo0HZgG"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DADD81DA628;
	Mon,  2 Feb 2026 14:00:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770040852; cv=none; b=IntMSfvoOZWDcW6ZuWFEfEKfB9vj8ZOoMclu++sSSXlGqzhSvxx58wFa1MtUZ3FjphamhGY+IBy5Y21JwEFjKM2ET+rjuvzfRVPxVjh9IUvr7adytT0eOkvUXAfdM3rIAWtyABGuKXeovVEnoqpld5r1L8u11hP9Tga09S1L/L8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770040852; c=relaxed/simple;
	bh=SSe1U3RyX44yOGeamwF5Z72xDH4ii6e/bEK01Gi9R/k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Or6g3Jm5KScXrctmr3y55iFMi4pkMmrfFcxBluEGbIheygW9rRXopWE3c6ZH44jydbfPdHeYl21Vpx8ootkf8hm8f//K08Jmz2PiE9O2PWKvwKUZv5o8/SO3UBoFhlTsA8kZ6Ry+44r2bx/xS9knsQZx5CXYtkgy2zlDEXctzKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=VFo0HZgG; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=9q22FsWlE6guDtJm/Wf/hE0WHjYN8IUDMo1cDdPQiBw=; b=VFo0HZgG6NrGOfClCLnLJMWlZK
	X20yLz70VNTgN0AZwZyZK4FqFXNaJiIl+jHgd4h6xMgHG+9kiRzpXfTDi4tn1Va6PjJ8+3jwnizru
	Cg3wpHnBAfctRxqb/kTi+0mztbL/+l2gGv89w8T0q1tqEp6V28E6LIMrNQhKLvfB7ifM=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1vmuTs-005pdx-8E; Mon, 02 Feb 2026 15:00:44 +0100
Date: Mon, 2 Feb 2026 15:00:44 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Mihai Sain <mihai.sain@microchip.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, nicolas.ferre@microchip.com,
	alexandre.belloni@bootlin.com, claudiu.beznea@tuxon.dev,
	varshini.rajendran@microchip.com, cristian.birsan@microchip.com,
	balamanikandan.gunasundar@microchip.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, ryan.wanner@microchip.com
Subject: Re: [PATCH 5/5] ARM: dts: microchip: sam9x7: Update the tsu_clk to
 use the generic clock with ID 24
Message-ID: <7b4d2c8c-aab6-4009-9caa-04268439f597@lunn.ch>
References: <20260202104025.3781-1-mihai.sain@microchip.com>
 <20260202104025.3781-6-mihai.sain@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260202104025.3781-6-mihai.sain@microchip.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[lunn.ch,none];
	R_DKIM_ALLOW(-0.20)[lunn.ch:s=20171124];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261844-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@lunn.ch,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[lunn.ch:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lunn.ch:mid,lunn.ch:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 9768ECD28F
X-Rspamd-Action: no action

On Mon, Feb 02, 2026 at 12:40:25PM +0200, Mihai Sain wrote:
> Update the tsu_clk to use the generic clock with ID 24 instead
> of ID 67.

The commit message should explain the "Why?" of a change, not the
what.

	Andrew

