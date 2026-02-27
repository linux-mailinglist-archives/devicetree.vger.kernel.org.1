Return-Path: <devicetree+bounces-269118-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0EdTIb5JoWnWrwQAu9opvQ
	(envelope-from <devicetree+bounces-269118-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 08:37:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A170C1B3FF2
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 08:37:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C001830275BD
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 07:37:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9001336C0CD;
	Fri, 27 Feb 2026 07:37:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="TQz3LoKX"
X-Original-To: devicetree@vger.kernel.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BFA62D94B0;
	Fri, 27 Feb 2026 07:37:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.137.202.133
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772177840; cv=none; b=En4q8CuBMRRU8SS2ZYoiwVf8DbFnpkqq7KifB1GYeMl/XwL65GLzwdWHa0v0vuitrjCtv5OD0JS8sm3w130moF7hrkBu9CdxImSW6Uqt5Xc8a0Kk+igBy0s9bAE45LaPFCcwNqY9J+28XOASQPSiPGMrIbguUuPiSOm7+sjApl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772177840; c=relaxed/simple;
	bh=bOqHcgSrlJ/vCMDaxEqvspZ+z/YcKvOH4/lmxNAcH5E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Gcwk+BL4G/jYV2R8OXVZkrgPfAEBRuZcgmNAxtMp8pte4JDPBRxB0H8khaj97xQvcKQBsA9Q75JTE6qv8lKDDTf0ELtCNoQoxuVBj7KML4jad04zF/BvagzcYt1h6z9hXkUHU3s4HD6f/QGWv+SEPua/e5i1ZXeXli05hpW17Nc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=infradead.org; spf=none smtp.mailfrom=infradead.org; dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b=TQz3LoKX; arc=none smtp.client-ip=198.137.202.133
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=infradead.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Sender:Reply-To:Content-ID:Content-Description;
	bh=dCyUV++hZSXjhGWDoh7fmdUS0wQtUpxVZOQjoqbKYRU=; b=TQz3LoKX++2WY0pSxE+1iOdFt6
	0/kJKdwvDaT/BhjOD3nhdWzyfXut5l/4FQXZAAjWREdyhS33nzugUQYxW0I2OWUEPAtT0AinlAvuz
	kKGDGPPiH73S3msB6FThQTT032NdgDe9PsRZZ0LFAN47YU/O99OyLtSNZmz035ehYO+IEzIHQlRIy
	JwiRgdUeob1QyraW6aux/in7hdKUR0dHEAdB84R3DG4Fz1Zs30KRJD5g0BGyTpQ/3o6l1Fu7xlzpH
	ztj/xWHKECjfSv5AgjyC/NB8HVx6pS/hlh9a96cCPOp/UV0i6qyR/5pt1lxIixsyV0YZQZrESdBLH
	PeieEWVA==;
Received: from [50.53.43.113] (helo=[192.168.254.34])
	by bombadil.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvsPV-00000007tsq-3sJj;
	Fri, 27 Feb 2026 07:37:17 +0000
Message-ID: <3b0755e0-46a5-454d-83e9-d85a3f56878e@infradead.org>
Date: Thu, 26 Feb 2026 23:37:17 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/2] bus: Remove not-going-to-be-supported code for
 Baikal SoC
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
References: <20260227072726.1142944-1-andriy.shevchenko@linux.intel.com>
 <20260227072726.1142944-2-andriy.shevchenko@linux.intel.com>
Content-Language: en-US
From: Randy Dunlap <rdunlap@infradead.org>
In-Reply-To: <20260227072726.1142944-2-andriy.shevchenko@linux.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[infradead.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[infradead.org:s=bombadil.20210309];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269118-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[infradead.org:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rdunlap@infradead.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,intel.com:email,infradead.org:mid,infradead.org:dkim,infradead.org:email]
X-Rspamd-Queue-Id: A170C1B3FF2
X-Rspamd-Action: no action



On 2/26/26 11:26 PM, Andy Shevchenko wrote:
> As noticed in the discussion [1] the Baikal SoC and platforms
> are not going to be finalized, hence remove stale code.
> 
> Link: https://lore.kernel.org/lkml/22b92ddf-6321-41b5-8073-f9c7064d3432@infradead.org/ [1]
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>  drivers/bus/Kconfig   |  30 ----
>  drivers/bus/Makefile  |   2 -
>  drivers/bus/bt1-apb.c | 396 ------------------------------------------
>  drivers/bus/bt1-axi.c | 292 -------------------------------
>  4 files changed, 720 deletions(-)
>  delete mode 100644 drivers/bus/bt1-apb.c
>  delete mode 100644 drivers/bus/bt1-axi.c
> 

Reviewed-by: Randy Dunlap <rdunlap@infradead.org>

Thanks.

-- 
~Randy

