Return-Path: <devicetree+bounces-283232-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wHWuDLKFzGlXTgYAu9opvQ
	(envelope-from <devicetree+bounces-283232-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Apr 2026 04:40:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4248B373F54
	for <lists+devicetree@lfdr.de>; Wed, 01 Apr 2026 04:40:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0B2EB31375F5
	for <lists+devicetree@lfdr.de>; Wed,  1 Apr 2026 02:31:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B659B340DA6;
	Wed,  1 Apr 2026 02:31:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from Atcsqr.andestech.com (unknown [60.248.187.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB01E1E98E3
	for <devicetree@vger.kernel.org>; Wed,  1 Apr 2026 02:31:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.248.187.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775010671; cv=none; b=KS+tXor2+4opgTI3ktCZhLJYzyI8TeD5fgQWJlM1YTGjsRVtnmb5lUB++3OSaCB7r9OxB6GGDwClcMY2NxwRV1JvasKDWRorb/ae1pbBySLkWk5zn2OQUgNJHidW72pyAdmaByi1cnR/iBYnUNoPaT6uI071okdG0Kljg4iSEuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775010671; c=relaxed/simple;
	bh=PgQgToJGk1WzmWzaimAGdPpQWYyqbDvyJ3RIEPsph2o=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PekLUbxBM6UzCEbMmw4o4bK0QLzsv5zocuqn8j9sm/6yjk7dCVj8PfbF9mSEVszVXCSjfJWYEhuXGDxdUTwtN6o68CPr9iEuCn5b06XObhPhCFeEaD0xu+MgjPm9KbRXIwW4LCSuJBeArCTe6u+A7MxpL8bpki42zUYOrM7oAtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=permerror header.from=andestech.com; spf=pass smtp.mailfrom=andestech.com; arc=none smtp.client-ip=60.248.187.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=permerror header.from=andestech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=andestech.com
Received: from mail.andestech.com (ATCPCS34.andestech.com [10.0.1.134])
	by Atcsqr.andestech.com with ESMTP id 6312UmNv071240;
	Wed, 1 Apr 2026 10:30:48 +0800 (+08)
	(envelope-from minachou@andestech.com)
Received: from atcsi01.andestech.com (10.0.15.32) by ATCPCS34.andestech.com
 (10.0.1.134) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.39; Wed, 1 Apr
 2026 10:30:48 +0800
Date: Wed, 1 Apr 2026 10:30:41 +0800
From: Mina Chou <minachou@andestech.com>
To: Conor Dooley <conor@kernel.org>
CC: <pjw@kernel.org>, <palmer@dabbelt.com>, <aou@eecs.berkeley.edu>,
        <alex@ghiti.fr>, <geert+renesas@glider.be>,
        <prabhakar.mahadev-lad.rj@bp.renesas.com>, <magnus.damm@gmail.com>,
        <ben717@andestech.com>, <robh@kernel.org>, <krzk+dt@kernel.org>,
        <conor+dt@kernel.org>, <jonathan.cameron@huawei.com>,
        <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <linux-renesas-soc@vger.kernel.org>,
        <tim609@andestech.com>, <alex749@andestech.com>, <az70021@gmail.com>
Subject: Re: [PATCH 1/7] cache: ax45mp_cache: refactor cache driver for
 generic Andes platform support
Message-ID: <acyDUU3FdAAPWfnS@atcsi01.andestech.com>
References: <20260330102724.1012470-1-minachou@andestech.com>
 <20260330102724.1012470-2-minachou@andestech.com>
 <20260330-oxford-chevy-5f5a6f0a5be4@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260330-oxford-chevy-5f5a6f0a5be4@spud>
User-Agent: Mutt/2.1.4 (2021-12-11)
X-ClientProxiedBy: ATCPCS33.andestech.com (10.0.1.100) To
 ATCPCS34.andestech.com (10.0.1.134)
X-DKIM-Results: atcpcs34.andestech.com; dkim=none;
X-DNSRBL: 
X-SPAM-SOURCE-CHECK: pass
X-MAIL:Atcsqr.andestech.com 6312UmNv071240
X-Spamd-Result: default: False [2.04 / 15.00];
	DMARC_POLICY_REJECT(2.00)[andestech.com : SPF not aligned (relaxed), No valid DKIM,reject];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_FROM(0.00)[bounces-283232-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr,glider.be,bp.renesas.com,gmail.com,andestech.com,huawei.com,vger.kernel.org,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FROM_NEQ_ENVFROM(0.00)[minachou@andestech.com,devicetree@vger.kernel.org];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.893];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[atcsi01.andestech.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4248B373F54
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you both, Krzysztof and Conor, for the detailed review.
I appreciate the feedback and admit this series needed more work
before sending. I will address all the issues in the next version.
 
A bit of background on the motivation: the main goal of this series
was to prepare the Andes cache driver for a SoC Allwinner Avaotaf1 V821,
which uses the Andes A27L2 CPU. We wanted to share a single cache driver
across different Andes CPU variants, which is why we tried to move toward
more generic naming in both the driver and the compatible strings.
 
We have two questions we'd appreciate guidance on:
  a) On compatible string naming: We'll drop patch [5/7][6/7] and won't
     rename any existing compatible strings. But we'd like to confirm
     the preferred approach for A27L2: would it be acceptable to add
     a generic compatible (andestech,andes-llcache) as an addition?
     If so, would a CPU-specific compatible (andestech,a27l2-cache)
     still be required alongside it?
 
  b) On Avaotaf1 V821 support: We are not in a position to submit the
     DTS on behalf of Allwinner. However, we would like to add the
     corresponding compatible strings to the existing binding
     documents (andestech,andes-llcache.yaml, sifive,plic-1.0.0.yaml,
     and riscv/cpus.yaml) in advance, so that the bindings are ready
     when Allwinner eventually submits their DTS.
     Would it be acceptable to upstream binding-only changes without
     an accompanying DTS at this stage?
 
For the next version, we're thinking of keeping only the changes
needed to generalize the cache driver, and dropping the improvements
for now to keep things focused. If you have any suggestion on how
to approach this, we'd love to hear it.
 
Thanks again for your patience.
 
Best regards,
Mina

