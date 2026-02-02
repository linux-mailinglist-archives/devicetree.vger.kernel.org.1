Return-Path: <devicetree+bounces-261828-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IGXhB0+ugGmiAQMAu9opvQ
	(envelope-from <devicetree+bounces-261828-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 15:01:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D94CD10F
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 15:01:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5E2D93064F13
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 13:56:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4B00369980;
	Mon,  2 Feb 2026 13:56:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="onYzNWYT"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DFF5285CBA;
	Mon,  2 Feb 2026 13:56:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770040568; cv=none; b=Q9UCOc2kvw2qVUSh/jNk512UjvG6YGxG2Q3qvx4l4fI0q/gHkrnJuF1iyHvjqylZv4B982M9hrswBvNw/iLkbNxLz+9Mbhj5u5jVTGtJs/onN5YcjmilR3ezo+k/2tCI8oTsY82qp45Dy1Sc+QlNfq65QPl8ZHYegvsWL6tGiKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770040568; c=relaxed/simple;
	bh=kvwKExbwIcYF0ue04OiBMJvdmTlLzUZT5GdsFLWH7q0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fzdQH8lVVLvliQVfWtlcDBU8XKY5gZJWrWa//z/lWc7IxuuuFjOWUUmAfT7DRc5x0c5VjFLq+zv5RXGNEGeFhEDCfRIWPg3S7gDWblx2jlFh9qRK12d4KfikAUSJpdJNMNLsBRZnyk1A8bYe9c9jQbJ7+VzqlhNxW/yVRW46SH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=onYzNWYT; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=ZQh9OYc3Oc4hr8yMakIVLGrYeLd2XVCP0GPV4wb5uzM=; b=onYzNWYTUx1c1sMmhmU2VYAXzS
	2EEyuUZNK6gff5lLgdPS2mFkrr2o7bA9Vu8lMFTKNj5rQ0PWvjbWbg3ogQtO43rJE0hB3vvA+E8fL
	evzT/vn2UqXuxBP3LBeLA2qnvecZ0gXSEyDVoQ7yqGREkK1pYoc8/5smRdD0cDfg39f0=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1vmuPF-005pYn-72; Mon, 02 Feb 2026 14:55:57 +0100
Date: Mon, 2 Feb 2026 14:55:57 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Mihai Sain <mihai.sain@microchip.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, nicolas.ferre@microchip.com,
	alexandre.belloni@bootlin.com, claudiu.beznea@tuxon.dev,
	varshini.rajendran@microchip.com, cristian.birsan@microchip.com,
	balamanikandan.gunasundar@microchip.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, ryan.wanner@microchip.com
Subject: Re: [PATCH 1/5] clk: at91: sam9x7: Remove gmac peripheral and
 generic clock entries with ID 67
Message-ID: <2fa66fa6-1ad5-430b-b030-c3969147c853@lunn.ch>
References: <20260202104025.3781-1-mihai.sain@microchip.com>
 <20260202104025.3781-2-mihai.sain@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260202104025.3781-2-mihai.sain@microchip.com>
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
	TAGGED_FROM(0.00)[bounces-261828-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lunn.ch:mid,lunn.ch:dkim]
X-Rspamd-Queue-Id: 88D94CD10F
X-Rspamd-Action: no action

On Mon, Feb 02, 2026 at 12:40:21PM +0200, Mihai Sain wrote:
> According with datasheet table 12.1 the instance ID 67 is reserved.
> This change drops the gmactsu_clk and gmac_gclk entries from
> the SAM9X7 clock description tables.

It would be nice to mention in the commit message that there are no
users of these clocks in mainline, so there are no backwards
compatibility issues.

	Andrew

