Return-Path: <devicetree+bounces-262271-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KDvEMu77gWk7NQMAu9opvQ
	(envelope-from <devicetree+bounces-262271-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 14:45:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 39DC9DA133
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 14:45:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C0FE03078635
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 13:42:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9545139C632;
	Tue,  3 Feb 2026 13:42:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="RKlbpjDJ"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159CB316190;
	Tue,  3 Feb 2026 13:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770126156; cv=none; b=GuMzcjDWX1pw3aWi4yt+VDx0GFSUuWDArvhR8emrRdCBuPX6+JWuQ9aungTxXZzdqZA2xrO4ghhkeWa+u/XSAS9Y2Zy6r32SYZi1027HkQvqdHF0RqOdhxKRDn2G+cNYsK+kfb75Lz2A1rtWj1XYM6tH5a3Za/5ffLIPrn84yR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770126156; c=relaxed/simple;
	bh=QtOdIRN+WK/1QkY83rIItqdg8KC1LcSmSDmogvKYVXs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sPo6AqoCqxN9M0iglwbWgnR+ymEFNi1S+g/1iJXRqaVSY8Wx9KU/kBroejCcsXE4LRXalVF4dGYOsfghZG5X1XsX8QaRyA7PiUuDOkdRhYSsu8FLuQD6+AwaJK8dlqvinXP5mgeIWRSmbG4tg3EthRTkpjyTELUg4yMDUVXCNp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=RKlbpjDJ; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=IGJeebgEXqWhXRsH4RnElTfr9kixznjS/2CB/02FO0o=; b=RKlbpjDJ5XhwXMQHJwEDOYWZen
	8hVXGjCJHsSs0LyvjzebOr9bQSe7gKk7FcO36E3f08RxJYTCfgJPybJ7FD4PVePUNcAy20Cvmw5fS
	/UOA/Yidi4aN5lMO8ke4wIAeQYfzVnlMpmUugmHoRKnOyhEIMv5O/WlmE2K0dsh+id/w=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1vnGfY-005x22-CQ; Tue, 03 Feb 2026 14:42:16 +0100
Date: Tue, 3 Feb 2026 14:42:16 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Potin Lai <potin.lai.pt@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	Patrick Williams <patrick@stwcx.xyz>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org, Cosmo Chou <cosmo.chou@quantatw.com>,
	Mike Hsieh <Mike_Hsieh@quantatw.com>,
	Potin Lai <potin.lai@quantatw.com>,
	Roger Kan <Roger.Kan@quantatw.com>
Subject: Re: [PATCH v2 0/2] Add Meta (Facebook) SanMiguel BMC (AST2620)
Message-ID: <3256b313-7671-4fda-9949-766906c344a7@lunn.ch>
References: <20260203-sanmiguel_init_dts-v2-0-6a5682c32b38@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260203-sanmiguel_init_dts-v2-0-6a5682c32b38@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[lunn.ch,none];
	R_DKIM_ALLOW(-0.20)[lunn.ch:s=20171124];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262271-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@lunn.ch,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[lunn.ch:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,lunn.ch:mid,lunn.ch:dkim]
X-Rspamd-Queue-Id: 39DC9DA133
X-Rspamd-Action: no action

On Tue, Feb 03, 2026 at 05:48:13PM +0800, Potin Lai wrote:
> Add Linux device tree entries for Meta (Facebook) SanMiguel specific
> devices connected to the AST2620 BMC SoC.
> 
> Signed-off-by: Potin Lai <potin.lai.pt@gmail.com>
> ---
> Changes in v2:
> - change mac0 phy-mode to rgmii-id

No other change? Was the previous version broken, and never tested? Is
this version broken and not tested? Is the phy-mode ignored, which
suggests something else is broken?

     Andrew

