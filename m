Return-Path: <devicetree+bounces-269819-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AD1MA3c/pWm36gUAu9opvQ
	(envelope-from <devicetree+bounces-269819-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 08:42:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6184D1D4140
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 08:42:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 82C543008A6D
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 07:42:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0B10383C97;
	Mon,  2 Mar 2026 07:42:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.gentoo.org (woodpecker.gentoo.org [140.211.166.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1BD30C353;
	Mon,  2 Mar 2026 07:42:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772437362; cv=none; b=gpPmRjsIgFhJ/VVwcY81JkdVGThQEbMkx2q1aGT2U3wzAGw4p7MZqc7qVqQHzgbDEccwhnSH7ef8tgw8AQGFpMLoJ3IK6D0mfkaBFCmqhybDhbxEAfewPzp1FlJ+7mtZiPm3kVQZN8+/jxH8HJiuuoaXPKpquf3KAo7RdC1jK6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772437362; c=relaxed/simple;
	bh=1qUC6s+UyJSk47Q6no4N7KTAtBbdFnjO20xN89QX5ko=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OKQcstUkppR3fmUr/b/UA+9EjB8ukw6FAxAOJAT6h0NqdHBlhNYTuiaOZMpnCGwqB7NDi4fhwPqqrPKz85CLlc1+PXjBOe3ScLl8UY/rNTKVFk9xjjaUr4ll8uOEjkBYswZmv2yc4sDy7prPiTIRlXhRO3pkTc9YB2dmQKq6h34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org; spf=pass smtp.mailfrom=gentoo.org; arc=none smtp.client-ip=140.211.166.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gentoo.org
Received: from localhost (unknown [116.232.48.232])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dlan)
	by smtp.gentoo.org (Postfix) with ESMTPSA id 1572F341E82;
	Mon, 02 Mar 2026 07:42:39 +0000 (UTC)
Date: Mon, 2 Mar 2026 15:42:35 +0800
From: Yixun Lan <dlan@gentoo.org>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: alex@ghiti.fr, aou@eecs.berkeley.edu, conor+dt@kernel.org,
	devicetree@vger.kernel.org, dlan@kernel.org, krzk+dt@kernel.org,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
	palmer@dabbelt.com, pjw@kernel.org, robh@kernel.org,
	spacemit@lists.linux.dev
Subject: Re: [PATCH 1/1] riscv: dts: spacemit: Add 'linux,pci-domain' to PCIe
 nodes for K1
Message-ID: <20260302074235-GYB288339@gentoo.org>
References: <20260202100000.19176-1-amadeus@jmu.edu.cn>
 <20260302071502.63672-1-amadeus@jmu.edu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260302071502.63672-1-amadeus@jmu.edu.cn>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[gentoo.org : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269819-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.982];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@gentoo.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6184D1D4140
X-Rspamd-Action: no action

Hi Chukun,

On 15:15 Mon 02 Mar     , Chukun Pan wrote:
> Hi,
> 
> > The SpacemiT K1 SoC has 3 PCIe EP controller nodes. Add the
> > 'linux,pci-domain' property to assign a PCI domain number to
> > each of the controllers instead of assigning it randomly.
> 
> Does anyone have any thoughts on this?
> Without this patch, the PCI domain number is random.
> 
You describe what's has been done here, but no why?
Can you add description about why problem with random domain,
and the motivation of the change behind?

from my understanding of reading DT document, either way seems
fine..

> ```
> /# find /sys/devices -name net
> /sys/devices/platform/soc/soc:pcie-bus/ca800000.pcie/pci0001:00/0001:00:00.0/0001:01:00.0/net
> /sys/devices/platform/soc/soc:pcie-bus/ca400000.pcie/pci0000:00/0000:00:00.0/0000:01:00.0/net
> 
> /# find /sys/devices -name net
> /sys/devices/platform/soc/soc:pcie-bus/ca800000.pcie/pci0000:00/0000:00:00.0/0000:01:00.0/net
> /sys/devices/platform/soc/soc:pcie-bus/ca400000.pcie/pci0001:00/0001:00:00.0/0001:01:00.0/net
> ```
> 
> Thanks,
> Chukun
> 

-- 
Yixun Lan (dlan)

