Return-Path: <devicetree+bounces-264924-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SFQGJlWJjWnq3wAAu9opvQ
	(envelope-from <devicetree+bounces-264924-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 09:03:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 245BB12B178
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 09:03:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 886B9300D762
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 08:03:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13DD71DF980;
	Thu, 12 Feb 2026 08:03:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="hGoqf5Gy"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 895F43FBA7;
	Thu, 12 Feb 2026 08:03:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.154.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770883409; cv=none; b=lNQc/mwQeqlxoqHm/iqMcoNA7KxsJYYR3e7x6wJ0zAnWgSFYldRx/w3O72EQUm5bZ/GKs6yi48fBM63lGlUROryUEonU5R+aUAHYVqc2NLXFqs88PDT/6s1pxtJOBrIEn8eZnEPXhKUKVDf8Q/KEY7Eb7nZ1pgNdVB+zc6tYiqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770883409; c=relaxed/simple;
	bh=MR6WNFmUEHASiZvvoTw7fDE9RhCGXyWLjg4xM2TFK08=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SL8OyIkV1i6Rrk+fJ9nXwnap6glDRsCE5Fgyl1FCin/YzlmiGSsNZgX+Jsat7/bcuQvufS2X+EEETr8l1tNJCE5AsA6uPUlYkGqw7ZfZGNPseliVv9syW/VBwcQcI21U7Imma6sU9bei4hY0FRaqCEJarQuuS58/sVsu4BTfc/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=hGoqf5Gy; arc=none smtp.client-ip=68.232.154.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1770883407; x=1802419407;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=MR6WNFmUEHASiZvvoTw7fDE9RhCGXyWLjg4xM2TFK08=;
  b=hGoqf5GyhgPkF2K5xJ/2RnH4RFE6laUqauO/vg45v8CuQCQ9E/nWxBPY
   eNDfJr6YOniUvg8mFjgdwNIJIqoEHPMFN8/TXX0CClwObrBUC6cvMbWFW
   jdKcucNoey3VzEAouKZ/BH1HGmjqsiJqaYo2eCJ3IolFLTqZ37M7FdRNc
   7ihEbIE64Jez6t/2k2nFoOnApM7fC8LSBgJC5oCxgx3OJAqKu+43mNget
   2n7LZbPuiZBJ+WjHv0V7Q1eqzKL8j+JR9/9L4BEPV9sfvMhCeKnXC90Sf
   g6BMrwmxUihoVWPHYD1z44hZ8I+Cl1ata4YP8dy9Wv3Gw6B6XbygBmR7q
   g==;
X-CSE-ConnectionGUID: oKJcZJgbQ9i1jXLlpVQDxg==
X-CSE-MsgGUID: iNvjuQNhSlqusIWwUZZGKg==
X-IronPort-AV: E=Sophos;i="6.21,286,1763449200"; 
   d="scan'208";a="52575919"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa4.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Feb 2026 01:03:21 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.87.151) by
 chn-vm-ex3.mchp-main.com (10.10.87.32) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.2562.35; Thu, 12 Feb 2026 01:02:46 -0700
Received: from localhost (10.10.85.11) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.2507.58 via Frontend
 Transport; Thu, 12 Feb 2026 01:02:46 -0700
Date: Thu, 12 Feb 2026 09:02:45 +0100
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: Vladimir Oltean <olteanv@gmail.com>
CC: Vladimir Oltean <vladimir.oltean@nxp.com>, <vkoul@kernel.org>,
	<kishon@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <linux-phy@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>, Daniel Golle
	<daniel@makrotopia.org>
Subject: Re: [PATCH 0/2] phy: microchip: lan966x: Allow to invert N and P
 signals
Message-ID: <20260212080245.nitoya2fmu6d57fe@DEN-DL-M31836.microchip.com>
References: <20251110110536.2596490-1-horatiu.vultur@microchip.com>
 <20251110114216.r6zdgg4iky7kasut@skbuf>
 <20251111095016.42byrgj33lp4bouo@DEN-DL-M31836.microchip.com>
 <20251113163023.syl6nxq2mqkxpz4z@skbuf>
 <20251114103411.rzigaoictyinmx66@DEN-DL-M31836.microchip.com>
 <20251119192326.4bflaqkh4zvz2rib@skbuf>
 <20260211122254.4mwzmi5auxddsm5k@skbuf>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20260211122254.4mwzmi5auxddsm5k@skbuf>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[microchip.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[microchip.com:s=mchp];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264924-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[microchip.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horatiu.vultur@microchip.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 245BB12B178
X-Rspamd-Action: no action

The 02/11/2026 14:22, Vladimir Oltean wrote:
> 
> Hi Horatiu,

Hi Vladimir,

> 
> On Wed, Nov 19, 2025 at 09:23:26PM +0200, Vladimir Oltean wrote:
> > > Anyway I can wait with this patch series until you get your changes in.
> >
> > I will keep you copied to the patch set which I hope to send later today.
> 
> The generic description I was talking about has been merged as commit
> e7556b59ba65 ("phy: add phy_get_rx_polarity() and phy_get_tx_polarity()").
> This set should be dropped from Patchwork. You can send a new version
> after the merge window closes, or an RFC at any time.

Thanks for doing this worked. Unfortunately I am currently stuck on some
other issue, when I get out of that I will try to update this patches.

-- 
/Horatiu

