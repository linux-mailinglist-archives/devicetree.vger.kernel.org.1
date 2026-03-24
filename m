Return-Path: <devicetree+bounces-280070-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2NA1IdL/wmnRngQAu9opvQ
	(envelope-from <devicetree+bounces-280070-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 22:19:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BDB931CBFA
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 22:19:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 67AF430311A3
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 21:19:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AC0035295C;
	Tue, 24 Mar 2026 21:19:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=aurel32.net header.i=@aurel32.net header.b="u200+ftT"
X-Original-To: devicetree@vger.kernel.org
Received: from hall.aurel32.net (hall.aurel32.net [195.154.119.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A618239085;
	Tue, 24 Mar 2026 21:19:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.154.119.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774387152; cv=none; b=bxcnCY9ccoNh+tLh0hJKl3MfJCcDNjOXga23l8QdjUFRBIaIAfp6UreRkDl3+ejjHYas3C7UNkN/S2eG5EcI9m3kE+zwcl+56mauguHW/HJcUrbYekdvVEPSmzgw1HmXwy9ivkAjgwrHWxkkuZOTSMhor6qBIzicYWezJe+gu8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774387152; c=relaxed/simple;
	bh=MebCNwIMaAXN3V+dpyiAoYVXqH0I/4A2EcrlbP9r6QE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QJUd4H8LPBnPMAFDy5ZagWlm9ons6Wp5brK6XUj1z23FuoKm5vkhUdYtLPufSFz78kJsZcsB1TwxNQ2f8mgO80sC5SuJ1RFFIoROJUj3swDikj/rKp3+gst/JdmxDrRi/ZmO2V0LEV6lNDRpeAQg3+WuGmuusYt1mKZGmfjQT3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=aurel32.net; spf=pass smtp.mailfrom=aurel32.net; dkim=pass (2048-bit key) header.d=aurel32.net header.i=@aurel32.net header.b=u200+ftT; arc=none smtp.client-ip=195.154.119.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=aurel32.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aurel32.net
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=In-Reply-To:Content-Type:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Content-Transfer-Encoding:From:Reply-To:
	Subject:Content-ID:Content-Description:X-Debbugs-Cc;
	bh=5Qp9pw/xlq5gZ1dNLakBcf07LSncdySe5C25zgQ+rzs=; b=u200+ftT1ds3+6px7BRODPNqvZ
	IHKW0PZUmrbtdyv/qJjFSCFSZQ6DOMsG3eCE64bHiHAzqOZsh0qcfr/6+4gpmJps67ePBMFveTWWy
	8GV6lCGQZ+v8fS6VDr7m8R3dbHPXBMnFb+gI16Kg46ZvRyqZwl86vGh1y289pQ3YQMvHJtAYiSM48
	uj35dv0WXBNDb1hSbBjmNOfzvMY56r9Qdm811Kxzz05hJ7RvOQacKsE3vPX9x6VuBNenyvz/hjVpZ
	gbhgDM6e4RPJGifCUJaJ/6vRTNuQs78QrL7JtydJKYqgYRMa9TGZOCyGPM9XXSseHTx7kSqUAuzbJ
	By3Y5zVQ==;
Received: from authenticated user
	by hall.aurel32.net with esmtpsa  (TLS1.3)  tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <aurelien@aurel32.net>)
	id 1w599Q-0000000Dcjf-2TLc;
	Tue, 24 Mar 2026 22:19:00 +0100
Date: Tue, 24 Mar 2026 22:19:00 +0100
From: Aurelien Jarno <aurelien@aurel32.net>
To: Yixun Lan <dlan@kernel.org>
Cc: linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	"open list:RISC-V ARCHITECTURE" <linux-riscv@lists.infradead.org>,
	"open list:RISC-V SPACEMIT SoC Support" <spacemit@lists.linux.dev>
Subject: Re: [PATCH 4/6] riscv: dts: spacemit: enable QSPI and add SPI NOR on
 Milk-V Jupiter
Message-ID: <acL_xPYiGXUp_Tir@aurel32.net>
Mail-Followup-To: Yixun Lan <dlan@kernel.org>, linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	"open list:RISC-V ARCHITECTURE" <linux-riscv@lists.infradead.org>,
	"open list:RISC-V SPACEMIT SoC Support" <spacemit@lists.linux.dev>
References: <20260322203356.2206927-1-aurelien@aurel32.net>
 <20260322203356.2206927-5-aurelien@aurel32.net>
 <20260324090220-GKA739629@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260324090220-GKA739629@kernel.org>
User-Agent: Mutt/2.2.13 (2024-03-09)
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[aurel32.net,none];
	R_DKIM_ALLOW(-0.20)[aurel32.net:s=202004.hall];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-280070-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aurelien@aurel32.net,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[aurel32.net:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 2BDB931CBFA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Yixun,

On 2026-03-24 17:02, Yixun Lan wrote:
> Hi Aurelien,
> 
> On 21:28 Sun 22 Mar     , Aurelien Jarno wrote:
> > Add the QSPI controller node for the Milk-V Jupiter board and describe
> > the attached SPI NOR flash (GD25Q64E).
> > 
> > The flash supports a frequency up to 133MHz (80 MHz for reads), and the
> > SoC supports a frequency up to 104 MHz. However tests have shown that
> > the flash is not reliably detected above 26.5 MHz, consistent with
> > frequency used in the vendor kernel. Therefore, use this frequency.
> > 
> ..
> > The m25p,fast-read properties is taken from the vendor kernel.
> > 
> So long as this is verified and works fine on board?

Yes, it's works. And the datasheet also mentions fast read being 
supported.

> > Add a corresponding flash partition layout, matching the layout and the
> > names used in the vendor U-Boot.
> > 
> ..
> > Also add the bootph-pre-ram property to make the device tree usable by
> > early firmware/bootloaders without modification, as U-Boot is stored on
> > this NOR flash.
> Is the dtb file actually used by U-Boot? I'd highly doubt about this,
> if not the case or has not been tested, I'd suggest then not to add
> this property..

It is currently not used by U-Boot, currently SPL support is not 
available, but patches have been posted to added it. I just wanted to 
anticipate the addition of the Milk-V Jupiter board in U-boot, but if 
that hurt, i can remove it (or you can removed it when merging).

Regards
Aurelien

-- 
Aurelien Jarno                          GPG: 4096R/1DDD8C9B
aurelien@aurel32.net                     http://aurel32.net

