Return-Path: <devicetree+bounces-304923-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kGm8JgsSHWrLVQkAu9opvQ
	(envelope-from <devicetree+bounces-304923-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 07:00:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED616198E9
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 07:00:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 81A3D3004931
	for <lists+devicetree@lfdr.de>; Mon,  1 Jun 2026 05:00:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C13883290A6;
	Mon,  1 Jun 2026 05:00:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="jK8M9tTS"
X-Original-To: devicetree@vger.kernel.org
Received: from out-182.mta0.migadu.com (out-182.mta0.migadu.com [91.218.175.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 610DA306754
	for <devicetree@vger.kernel.org>; Mon,  1 Jun 2026 05:00:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780290056; cv=none; b=c9Fjcxqp8wUIBIdMpWfHgqCDbCyY48L9AjZO5UtzCc9cMxgpMc5UsCdtjkceu0DCKPclIuJAzOT54c/rDsEcv3rJlhRanDU1IX65JbBd/RYvU/CBEEdhWRTducEkHtkfGTlXMQqQ2iSR/5xWxnfIHULoFGA35KS3eS/+AuuyaQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780290056; c=relaxed/simple;
	bh=sKx7C7z4gHYVIiPdQZdhzaKPMuYZxxtiqHWOqYRVgtw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SU3GxK39o/Bl7+uz6M5J+Z4k5CyvPB23iPagUIOCXm4wHRIK1Q3efCree4UryegOx/3ImJfbVTiyctjyYQWBpHRJt1xEQkxEL4+qXteqx15kwxC0or1hzxwPVvvxKMYC4UB5Qwc8oY0bzZ4k0hCWE/uwDr2vBQvJaGIEzRHmrH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=jK8M9tTS; arc=none smtp.client-ip=91.218.175.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Date: Mon, 1 Jun 2026 13:00:34 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1780290042;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=e129xfl2uwbBORZTKnJ3i22zjcF3b+7zkkUcuJrSRlM=;
	b=jK8M9tTSYsgWEa+miw8zUAseNoC+gbcuCv9nUMAsDdJneXEMD6zUH9KN3eu6lVTxSHEXW2
	hSHndFlGvSyxQ7zV+0TKSQTKSS3hHU6muR0MeW7qGoat01tQoLxr28BDKQvwXidIPuZNdp
	eGw38CLTieSZYcpODkiAlFiju9A6r0w=
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Baoquan He <baoquan.he@linux.dev>
To: Mike Rapoport <rppt@kernel.org>
Cc: Will Deacon <will@kernel.org>, Wandun Chen <chenwandun1@gmail.com>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	loongarch@lists.linux.dev, linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org, kexec@lists.infradead.org,
	iommu@lists.linux.dev, zhaomeijing@lixiang.com,
	catalin.marinas@arm.com, chenhuacai@kernel.org, kernel@xen0n.name,
	pjw@kernel.org, palmer@dabbelt.com, aou@eecs.berkeley.edu,
	alex@ghiti.fr, robh@kernel.org, saravanak@kernel.org,
	akpm@linux-foundation.org, bhe@redhat.com,
	pasha.tatashin@soleen.com, pratyush@kernel.org,
	ruirui.yang@linux.dev, m.szyprowski@samsung.com,
	robin.murphy@arm.com, quic_obabatun@quicinc.com
Subject: Re: [PATCH v3 09/11] arm64: kdump: exclude non-dumpable reserved
 memory regions from vmcore
Message-ID: <ah0R8pEIyuk4N2Is@MiWiFi-R3L-srv>
References: <20260527032917.3385849-1-chenwandun1@gmail.com>
 <20260527032917.3385849-10-chenwandun1@gmail.com>
 <ahmr-UjoApj2j5JS@willie-the-truck>
 <ahsPcv8G1BR9rLah@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ahsPcv8G1BR9rLah@kernel.org>
X-Migadu-Flow: FLOW_OUT
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linux.dev,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[linux.dev:s=key1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-304923-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,lists.infradead.org,vger.kernel.org,lists.linux.dev,lixiang.com,arm.com,xen0n.name,dabbelt.com,eecs.berkeley.edu,ghiti.fr,linux-foundation.org,redhat.com,soleen.com,linux.dev,samsung.com,quicinc.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[baoquan.he@linux.dev,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linux.dev:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,linux.dev:dkim]
X-Rspamd-Queue-Id: 2ED616198E9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 05/30/26 at 07:25pm, Mike Rapoport wrote:
> On Fri, May 29, 2026 at 04:08:41PM +0100, Will Deacon wrote:
> > On Wed, May 27, 2026 at 11:29:15AM +0800, Wandun Chen wrote:
...snip...
> There are patches that move common code to kernel/crash_core.c:
> 
> https://lore.kernel.org/all/20260525084932.934910-1-ruanjinjie@huawei.com
>  
> Review from arch maintainers would be helpful there ;-)

Before, Andrew would put patch candidates into his mm tree and trigger
testing. If any adjustment, he would take them off. Can we do the
similar thing for kexec/kdump patches, unless the patches are objected
explicitly?

Thanks
Baoquan

