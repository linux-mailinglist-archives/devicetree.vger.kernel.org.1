Return-Path: <devicetree+bounces-272556-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oIONCPc+rWmN0AEAu9opvQ
	(envelope-from <devicetree+bounces-272556-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 10:18:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F81D22F23C
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 10:18:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7C379301179B
	for <lists+devicetree@lfdr.de>; Sun,  8 Mar 2026 09:18:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A74C535EDBD;
	Sun,  8 Mar 2026 09:18:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.gentoo.org (woodpecker.gentoo.org [140.211.166.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A73B322A1F;
	Sun,  8 Mar 2026 09:18:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772961522; cv=none; b=PU2skjsmgQOFPIr4i3CLUZA5iN+xnEe8er6FIREPdrNDV3eS8V1K4/M97rqTqu/P5/h99ngZqjUYK1zbkbw0IbekhR4Bk0djf3TzpDnq06jhdX+xW1mP9+jOYU1d9DnIWKe/rS/aYfLm4bSgsQeMTUZTIjeSyFxA3QuoPloI74E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772961522; c=relaxed/simple;
	bh=fucfSpewJjtYamNzccfFHnQoOzbrgPVJyeoJ4Inkuh4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=buJcbqZvSdMCNtrhWEjHLmsZeQLhBaiGZV1rbngfYx5mfZ8eOW+KhYamI2HeWW1stCZZXFwOaWSImS5fADgoGu2nyERFFE1jhDuSHML9CThXarKI0bNzHSwhhZh77T525dpO5EcmTfEKanQjQoGyuh+zS276GD+zwi06sr1BQ8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org; spf=pass smtp.mailfrom=gentoo.org; arc=none smtp.client-ip=140.211.166.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gentoo.org
Received: from localhost (unknown [116.232.48.232])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dlan)
	by smtp.gentoo.org (Postfix) with ESMTPSA id ADAF03417BD;
	Sun, 08 Mar 2026 09:18:39 +0000 (UTC)
Date: Sun, 8 Mar 2026 17:18:26 +0800
From: Yixun Lan <dlan@gentoo.org>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: alex@ghiti.fr, aou@eecs.berkeley.edu, conor+dt@kernel.org,
	devicetree@vger.kernel.org, dlan@kernel.org, krzk+dt@kernel.org,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
	palmer@dabbelt.com, pjw@kernel.org, robh@kernel.org,
	spacemit@lists.linux.dev
Subject: Re: [PATCH 1/1] riscv: dts: spacemit: Add 'linux,pci-domain' to PCIe
 nodes for K1
Message-ID: <20260308091826-GYA318052@gentoo.org>
References: <20260302074235-GYB288339@gentoo.org>
 <20260307043806.957175-1-amadeus@jmu.edu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260307043806.957175-1-amadeus@jmu.edu.cn>
X-Rspamd-Queue-Id: 8F81D22F23C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[gentoo.org : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272556-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.766];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@gentoo.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,ca800000:email,ca400000:email]
X-Rspamd-Action: no action

Hi Chukun,

On 12:38 Sat 07 Mar     , Chukun Pan wrote:
> Hi,
> 
> > You describe what's has been done here, but no why?
> 
> Because the PCIe boot order is random, if there are two R8125
> network cards, their interface names will not be fixed.
> 
> For example:
> First boot:
> pcie@ca400000 -> eth2
> pcie@ca800000 -> eth3
> 
> Second boot:
> pcie@ca400000 -> eth3
> pcie@ca800000 -> eth2
> 
Ok, I can understand your problem

> If their PCI domain numbers are fixed, I can fix the interface
> names by matching /sys/devices using a script.
> 
If you want to have a fixed interface name, you could setup a udev
rules according to mac address? something like:

$ cat /etc/udev/rules.d/70-network.rules
SUBSYSTEM=="net", ACTION=="add", DRIVERS=="?*", ATTR{address}=="01:02:03:12:34:56", NAME="eth2"

but, I see no harm to add a pci domain property..

> > Can you add description about why problem with random domain,
> > and the motivation of the change behind?
> 
> Should I improve the commit messages?
> 
Yes, please, thanks

> Thanks,
> Chukun
> 

-- 
Yixun Lan (dlan)

