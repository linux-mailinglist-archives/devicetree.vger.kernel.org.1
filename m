Return-Path: <devicetree+bounces-268034-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UJ5gM7fznWk2SwQAu9opvQ
	(envelope-from <devicetree+bounces-268034-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 19:53:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 7107418B95F
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 19:53:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A500430101DD
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 18:53:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C29E92D9EDC;
	Tue, 24 Feb 2026 18:53:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="oVwU6xua"
X-Original-To: devicetree@vger.kernel.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB76B27E054;
	Tue, 24 Feb 2026 18:53:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.137.202.133
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771959220; cv=none; b=C7VU1z4/AYV1/NWI608ejT/uMVwOT5h6vtuVgkd3uf4VuWYIgxPYaCYDORdvH+m/pgQMA/F7PtpiUxncjTUJWp42+sRHC0sOgDn+vk1crj3zU9hTGvpa0at/7CRhjchM4awBILZ4dMKbJH59mYDWGVkvXtiTrPuESkK8k59fZME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771959220; c=relaxed/simple;
	bh=zPYr1JsntY51CZ7e8H35hjAL/IzeOp9I3bIHprrHJoc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JTb0M4eAZG87/AEKoUDdx+MMAnTicvYhToZ60TEgC2RO9QldP/Pz9KrlEG/8wxUuLEsD48N9oRlPJRVIXU+QXIKjGqpaa1a160lmh4QxojrhOCMbjomqVeASP+Mtq1US6+vJVvjgtQOWTMD2zOlfTYqHJrAm2PE5FoCRrwb+Gqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=infradead.org; spf=none smtp.mailfrom=infradead.org; dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b=oVwU6xua; arc=none smtp.client-ip=198.137.202.133
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=infradead.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Sender:Reply-To:Content-ID:Content-Description;
	bh=H9bm56DuSuFZpKDTAdVhd0Gme4XD8RA5SA4vLNkZnpE=; b=oVwU6xua9JGrrshLActvlzMbZd
	1km6oBolZ+tbyDo4oqGlQEOJYIyNuDV2laQy3NjMS/HRBlag09Nh+0kKV+NU71RQxe+rEJ8mrTSRH
	hpTK68WUDqFUpLseb8Pc9Ql3LH1yXwVfRHtXuqJAxDPVFtqBgH1XYS254b4JUU3UZGWGxMTCC3jZx
	MOA8yWcIhlBqJTctK8qOTH6TTS86JmXXGzSrlGChasVy7ZP0HPxa+tdErubZYaJbu19yBNSxODCnl
	oyd2n3Mq1zAOz8yFNX9KQZCRjkJjuapX7O60B588j9lEgkHPXsy93+Jo83wSn1CCu64G+V7QjgxYj
	gIDNqEBA==;
Received: from [50.53.43.113] (helo=[192.168.254.34])
	by bombadil.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuxXO-00000002f81-0mox;
	Tue, 24 Feb 2026 18:53:38 +0000
Message-ID: <9802163d-cd35-4959-8ada-57424eb40abf@infradead.org>
Date: Tue, 24 Feb 2026 10:53:37 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/1] memory: bt1-l2-ctl: Remove
 not-going-to-be-supported code for Baikal SoC
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Conor Dooley <conor@kernel.org>,
 Jonathan Cameron <jonathan.cameron@huawei.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
References: <20260224115830.3501050-1-andriy.shevchenko@linux.intel.com>
Content-Language: en-US
From: Randy Dunlap <rdunlap@infradead.org>
In-Reply-To: <20260224115830.3501050-1-andriy.shevchenko@linux.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[infradead.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[infradead.org:s=bombadil.20210309];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268034-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[infradead.org:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rdunlap@infradead.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[infradead.org:mid,infradead.org:dkim,infradead.org:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,intel.com:email]
X-Rspamd-Queue-Id: 7107418B95F
X-Rspamd-Action: no action



On 2/24/26 3:58 AM, Andy Shevchenko wrote:
> As noticed in the discussion [1] the Baikal SoC and platforms
> are not going to be finalized, hence remove stale code.
> 
> Link: https://lore.kernel.org/lkml/22b92ddf-6321-41b5-8073-f9c7064d3432@infradead.org/ [1]
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>  .../bindings/cache/baikal,bt1-l2-ctl.yaml     |  63 ----
>  drivers/memory/Kconfig                        |  11 -
>  drivers/memory/Makefile                       |   1 -
>  drivers/memory/bt1-l2-ctl.c                   | 323 ------------------
>  4 files changed, 398 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/cache/baikal,bt1-l2-ctl.yaml
>  delete mode 100644 drivers/memory/bt1-l2-ctl.c


Reviewed-by: Randy Dunlap <rdunlap@infradead.org>

thanks.
-- 
~Randy

