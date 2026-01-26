Return-Path: <devicetree+bounces-259517-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +JRpMZp0d2n7ggEAu9opvQ
	(envelope-from <devicetree+bounces-259517-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 15:05:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C9A3894BF
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 15:05:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 11E4C3020462
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 14:02:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 681A333EAEC;
	Mon, 26 Jan 2026 14:01:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="of68KVMd"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0370233C182;
	Mon, 26 Jan 2026 14:01:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769436119; cv=none; b=mHGgTYuUC/sSA+VqxF8L2+iC9xIXCgu+fBquOL+YZyfGLew46Y5Gf+ipfyfRnv4vPcjw2+Uzvzq9HYRUNvlTmOSVHIXMScCYINtdUYd4GW+RmUmJEpdPdCm0Rjci0HNUNNnQozut7gD1V3fpeXHqOP4kVIegJ4K7I8nK4GketVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769436119; c=relaxed/simple;
	bh=rPDxwQ8tuAyyIA9ECdM2Yt9+PiAUsA2EaplnyMP24qs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eY4TtXEPQPsSz6zaCiXveq7UwE5G6qncFrBARs8VuQ9nysw2L/gYCOIlsayDbORrKmt1dB9fcR1nyrrbYIS3hJW+ZZHTtWDASezBknAdEiHeHHcuhQuHo++4KNcB3oqBwtdCVlGbmqDZNsAklK8y0vIBUF6q7wuC1rtb75JDKKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=of68KVMd; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Disposition:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:
	Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
	In-Reply-To:References; bh=jhN3wsqjvs5Rpwd28ad1hp8NKL0RyYRISfgiz3cNFA8=; b=of
	68KVMdve4uzx7WkCfg4zyVbsWyimBDkLI4PCM/Of9mXKTYe5jd4KdVzcmvhkwIlPh25i2hIF+0ZLZ
	iXcuPkyRaJ2Mt0jyv+JLhEYWGYs9ASorvSrEP1CwDdlN7qJ/D+CEOVOCN5TjrZSHHtYnbQZK35/BE
	R+klxonrFv+PIgo=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1vkNA1-004n4G-55; Mon, 26 Jan 2026 15:01:45 +0100
Date: Mon, 26 Jan 2026 15:01:45 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Cc: Elad Nachman <enachman@marvell.com>, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	sebastian.hesselbarth@gmail.com, pali@kernel.org,
	mrkiko.rs@gmail.com, chris.packham@alliedtelesis.co.nz,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 0/3] arm64: dts: a7k: add COM Express boards
Message-ID: <4a43710a-b9f1-45bf-ac4b-ac7de6751d42@lunn.ch>
References: <20260125152347.2518538-1-enachman@marvell.com>
 <87sebsk6og.fsf@BLaptop.bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87sebsk6og.fsf@BLaptop.bootlin.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[lunn.ch,none];
	R_DKIM_ALLOW(-0.20)[lunn.ch:s=20171124];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259517-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[marvell.com,kernel.org,linaro.org,gmail.com,alliedtelesis.co.nz,vger.kernel.org,lists.infradead.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@lunn.ch,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[lunn.ch:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lunn.ch:mid,lunn.ch:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0C9A3894BF
X-Rspamd-Action: no action

> I’ve already merged your previous version with this fix and even
> included it in the PR for the next release.
> 
> However, I noticed a comment from Andrew. Could you provide a fix for
> it, and I’ll try to include it i

It is not a show stopper. It can go in next cycle if needed. But i
would like to see it fixed.

   Andrew

