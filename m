Return-Path: <devicetree+bounces-275926-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oPZuNo2Lt2lxSgEAu9opvQ
	(envelope-from <devicetree+bounces-275926-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 05:48:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4927F294A8A
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 05:48:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 616D2300A623
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 04:40:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A22A337BBC;
	Mon, 16 Mar 2026 04:40:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ziyao.cc header.i=me@ziyao.cc header.b="Sp864g1T"
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-op-o15.zoho.com (sender4-op-o15.zoho.com [136.143.188.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 681EF35949;
	Mon, 16 Mar 2026 04:40:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.15
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773636001; cv=pass; b=uOZSlYhvDySxGG44yeMkkAwK6vIUNlDvzMfjPfmNOQRLiobJ5MUYi+/OqYDJfWyj+2E7Qs02SJ02nYUCW9cLtBwSBgXQVj57lf2DfkCTZFn7UcjTBqaCYPrSTcUF5JvgnLmfKR5E5dhjUwJQUAYZZdArVS+FZDIWKPxOEYh4FH4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773636001; c=relaxed/simple;
	bh=pjc2+m477vf9uVO2xPjVo/79XM/qXhACFwE1k0Qe3b0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qidNl9xAAYaPdPiiTD7rzMWnwO6oEUumKR45e/yWGQii+ZG1zNdryjXLr94ZL/q4y9mGENfHLzltjH5akRA4i/v+qbezc1dxjHfOpzkeO6T6ulOt1qZYh450BUymrJ9p+32a3UL0akkzFn9gXZUQFSP1f1/LATkNtWTzEkbA14k=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ziyao.cc; spf=pass smtp.mailfrom=ziyao.cc; dkim=pass (1024-bit key) header.d=ziyao.cc header.i=me@ziyao.cc header.b=Sp864g1T; arc=pass smtp.client-ip=136.143.188.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ziyao.cc
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziyao.cc
ARC-Seal: i=1; a=rsa-sha256; t=1773635972; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Y0YonvlMH6Gy+1iJMq8amZVq5POOik94Pe42QsYGPqTIzzr3d2dyu4YfIpm88Zdpb1Gzh/9HAdJv+6MPRrkMi14QCWJnwesAbWbSx7+iOK9CbRo2XiAt5KlmwghrHYZSKWKsv1Lw8roJPga+QNq2UoeULamUC8PDkICP0u3ZPS0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1773635972; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=kewINodiHkLlpvPQfzNJPAoWR16xstqEHHybSvNdxOw=; 
	b=jW1aIvlEMfrfm4xgADMiI5b7oeGQT+JLYyGhtcTLS6oJCFlneUoPNtUtmoLhEreywvGtJV1ZPUH+EO4YoB3/Qdx1nTodfiqyivBFcjIgGh8x8uCKXod4w35s7m4sogvXNlnc6UK0kWVFEOFI2HADJ6A1bYGFS+g36c6BZqtoLtA=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=ziyao.cc;
	spf=pass  smtp.mailfrom=me@ziyao.cc;
	dmarc=pass header.from=<me@ziyao.cc>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1773635972;
	s=zmail; d=ziyao.cc; i=me@ziyao.cc;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=kewINodiHkLlpvPQfzNJPAoWR16xstqEHHybSvNdxOw=;
	b=Sp864g1TA5So9qkbPIPIbwb8wYbNKBiNBBkZYm1kexV3oT3UyrTTu+tD0SC1DIQQ
	18QBv6jrwO2gU1cf9ps724wcImO1gOuhDV8piYyUQ9RUOdDgph7VAHH2PErpApVd+1F
	L3OVi3eUYZpJpXKoGtykhDR4IOe70r4ODtOcHU6I=
Received: by mx.zohomail.com with SMTPS id 1773635968727532.6997193656666;
	Sun, 15 Mar 2026 21:39:28 -0700 (PDT)
Date: Mon, 16 Mar 2026 04:39:05 +0000
From: Yao Zi <me@ziyao.cc>
To: Jia Wang <wangjia@ultrarisc.com>,
	Ilpo =?iso-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2] dt-bindings: serial: update bindings of ultrarisc
 dp1000 uart
Message-ID: <abeJHQPJpXIANdzR@pie>
References: <20260316-ultrarisc-serial-v1-0-c464f3e933a5@ultrarisc.com>
 <20260316-ultrarisc-serial-v1-2-c464f3e933a5@ultrarisc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260316-ultrarisc-serial-v1-2-c464f3e933a5@ultrarisc.com>
X-ZohoMailClient: External
X-Spamd-Result: default: False [9.34 / 15.00];
	URIBL_BLACK(7.50)[ziyao.cc:dkim];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.15)[generic];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275926-lists,devicetree=lfdr.de];
	R_DKIM_ALLOW(0.00)[ziyao.cc:s=zmail];
	GREYLIST(0.00)[pass,body];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[ziyao.cc,quarantine];
	DKIM_TRACE(0.00)[ziyao.cc:+];
	NEURAL_HAM(-0.00)[-0.928];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[me@ziyao.cc,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	R_SPF_ALLOW(0.00)[+ip6:2600:3c0a:e001:db::/64:c];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	ARC_ALLOW(0.00)[subspace.kernel.org:s=arc-20240116:i=2];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ziyao.cc:dkim,ultrarisc.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4927F294A8A
X-Rspamd-Action: add header
X-Rspamd-Server: lfdr
X-Spam: Yes

On Mon, Mar 16, 2026 at 09:36:19AM +0800, Jia Wang wrote:
> Add UltraRISC vendor-prefix information

You don't add any new vendor prefixes in this patch. This commit message
should probably be updated.

> Add DP1000 UART compatible information
> 
> Signed-off-by: Jia Wang <wangjia@ultrarisc.com>

And the dt-bindings patch should go before the driver changes.

> ---
>  Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml | 2 ++
>  1 file changed, 2 insertions(+)

Best regards,
Yao Zi

