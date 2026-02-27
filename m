Return-Path: <devicetree+bounces-269117-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kJuVObRJoWnWrwQAu9opvQ
	(envelope-from <devicetree+bounces-269117-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 08:37:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE581B3FE3
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 08:37:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C19E1300AC31
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 07:37:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 018ED3603C7;
	Fri, 27 Feb 2026 07:37:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="Ge8qoJ+B"
X-Original-To: devicetree@vger.kernel.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE1F3603DD;
	Fri, 27 Feb 2026 07:37:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.137.202.133
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772177839; cv=none; b=rVUpoxypo3KwbsfTMssuw2V7z+tHP8b+hqKKQuRoOyYEgROUbVOVkeS+NGwAG5Yd7EUxBMa6K8CoAmah9c2JpJaak4IgEP5i1DnBa8Ly3lIUO/vNlmP5XoL18fgxHjvijltxPc1nMlqnp8WwyDLUy5l1KeXXODw7tTdVpY/nOm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772177839; c=relaxed/simple;
	bh=Lg3h2JD5Wtu7l4y617wD+etwZQ0Ne19nBU1vJ1jhzwE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OrDvo1Kw4+ICUdjGDLIfaJ5VeVtxv5t35aKefLRw769B4YH6hJ7uX4uJdA0Z71zz1AgWh25PgpxOxAjYC04436Cqm2wLd5zyJ2rad4nP4X8z1YMcJeDg+QCq9ycqzgT1vRXON+TyxtjxOe2Grn5lagopql8sER6Rh1An5yHpuhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=infradead.org; spf=none smtp.mailfrom=infradead.org; dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b=Ge8qoJ+B; arc=none smtp.client-ip=198.137.202.133
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=infradead.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Sender:Reply-To:Content-ID:Content-Description;
	bh=qmcwMW1AMDcnSzCfAr1Y6jDrePKqzKOt9H/E81ONWDo=; b=Ge8qoJ+BjjSC1Tbv5A/BpvYeHl
	PctvfaNS7Fucgr+11cRFpAEgbydsGQOIV/rlvVUJIYdjwMlL5mRBxBL/i57kMAEBqe11pLjwcGuox
	Eb/pDAcZOphHs3D5jkZjx3vJomwy3qzpRHDgKDUddNUaZldJz26bU/mzAOPKFNf0/C7ZN6Hs75GPw
	3v5MyjW3jMU9oYOL+5c6tpuPvEqfcs0m/sb9FL3GXGKb7nk36QvMerq46nXaUHQTYqCozrVt/5ck9
	sOcDi98nPgFwFrXvSZD5hvRg7sZ1JR3eQAbBBZMBBVlUQEzS7EhmQlVAxn+FmEN59NUtHTRSdqyYd
	sTFrM0/w==;
Received: from [50.53.43.113] (helo=[192.168.254.34])
	by bombadil.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvsPS-00000007tsq-38If;
	Fri, 27 Feb 2026 07:37:14 +0000
Message-ID: <03dc4eb0-9064-4beb-85d0-3679918e10d6@infradead.org>
Date: Thu, 26 Feb 2026 23:37:13 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/2] dt-bindings: bus: Remove unused bindings
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
References: <20260227072726.1142944-1-andriy.shevchenko@linux.intel.com>
 <20260227072726.1142944-3-andriy.shevchenko@linux.intel.com>
Content-Language: en-US
From: Randy Dunlap <rdunlap@infradead.org>
In-Reply-To: <20260227072726.1142944-3-andriy.shevchenko@linux.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[infradead.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[infradead.org:s=bombadil.20210309];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269117-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[infradead.org:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rdunlap@infradead.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,infradead.org:mid,infradead.org:dkim,infradead.org:email,intel.com:email]
X-Rspamd-Queue-Id: 6EE581B3FE3
X-Rspamd-Action: no action



On 2/26/26 11:26 PM, Andy Shevchenko wrote:
> As stated in [1] the Baikal platforms are not supported and
> the respective driver code has just been removed. Remove
> unused bindings.
> 
> Link: https://lore.kernel.org/lkml/22b92ddf-6321-41b5-8073-f9c7064d3432@infradead.org/ [1]
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>  .../bindings/bus/baikal,bt1-apb.yaml          |  90 ---------------
>  .../bindings/bus/baikal,bt1-axi.yaml          | 107 ------------------
>  2 files changed, 197 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/bus/baikal,bt1-apb.yaml
>  delete mode 100644 Documentation/devicetree/bindings/bus/baikal,bt1-axi.yaml
> 

Reviewed-by: Randy Dunlap <rdunlap@infradead.org>

Thanks.
-- 
~Randy

