Return-Path: <devicetree+bounces-136694-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD71A05DEE
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 15:04:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0510F16144C
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 14:04:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AEF542AA6;
	Wed,  8 Jan 2025 14:04:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=couthit.com header.i=@couthit.com header.b="GLgEGooG"
X-Original-To: devicetree@vger.kernel.org
Received: from server.wki.vra.mybluehostin.me (server.wki.vra.mybluehostin.me [162.240.238.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB6E134AB;
	Wed,  8 Jan 2025 14:04:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=162.240.238.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736345068; cv=none; b=f390jn2ssEzIT/bKpBHLPMOVEcNpp2OC9nRouLo28K1WbVs2Y8vrqNDOR9bQhryTKcG/fq1dQrvt8Ni1k/UEu1r9yjPlkWG5bKd4Rvd3ACD1S2xXptjIjEXSz8JxOLcMLNxcrt4+vhPQtjKQDu6rjBNxoquUe1dY06DVJpaB/Cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736345068; c=relaxed/simple;
	bh=h5cAr9bIdM4OZf+yzeVEaIUenRFVRHC849CjgfS5IFk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=DUpYTZmOLyW2nIFphLmEwib7WB95lZ4VCU3BifBL6htMOkCV78uK/LszHvuVWGWh99mk3Oj00Rl/a2t7D3mo2JkACpiHCvRaHN93IdaQX9U22b599CclP/IF/pmS5NmKzesqflmh3OI2gsIWWQ1ZtyP4WSWojEinNyRsi9us5i0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=couthit.com; spf=pass smtp.mailfrom=couthit.com; dkim=pass (2048-bit key) header.d=couthit.com header.i=@couthit.com header.b=GLgEGooG; arc=none smtp.client-ip=162.240.238.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=couthit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=couthit.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=couthit.com
	; s=default; h=Content-Transfer-Encoding:Content-Type:MIME-Version:References
	:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=o3+neP8aeeIFPqI/lL7EOOrgM0uRKroB1bs8o3zpJWY=; b=GLgEGooG7UkcsXby1uEwokCfe9
	s7iqTJT6t7fQ4bL0NWVQMCEd65TTxjAFKf2+LqVADVmFKTCVURhW1aCfK8Trf65EDbc4KVqSV1ltD
	lSGtUlzcMkXUU5yDZ/k7C1puX4VVmPeOxgWAP8bAlDLPpUnt+MgzkKma8BGraXxrxAX/yiYF9EQVD
	6xQYRtKfMLjxsM3coBB6+X8FTlZL4w8iAHs5O2jw6Vf+mT82Vn1U8n+xvb6u+f0XHVKwtyMSEBeFP
	x7pTMmGFOo36RpQTGWOd5Fayup4mYlEPt6DmvG2igOHvsqIVolcaygPwdnk26spE8ENxUQsdFlb1q
	LObjzvOQ==;
Received: from [122.175.9.182] (port=22813 helo=cypher.couthit.local)
	by server.wki.vra.mybluehostin.me with esmtpa (Exim 4.96.2)
	(envelope-from <basharath@couthit.com>)
	id 1tVWfY-0001mA-0L;
	Wed, 08 Jan 2025 19:34:24 +0530
From: Basharath Hussain Khaja <basharath@couthit.com>
To: robh@kernel.org,
	mpe@ellerman.id.au,
	thomas.weissschuh@linutronix.de
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org,
	saravanak@google.com,
	basharath@couthit.com,
	danishanwar@ti.com,
	krishna@couthit.com,
	mohan@couthit.com,
	parvathi@couthit.com,
	pmohan@couthit.com
Subject: Re: [PATCH] of: address: Unify resource bounds overflow checking
Date: Wed,  8 Jan 2025 19:34:14 +0530
Message-Id: <20250108140414.13530-1-basharath@couthit.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <87mskbqher.fsf@mail.lhotse>
References: <87mskbqher.fsf@mail.lhotse>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - server.wki.vra.mybluehostin.me
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - couthit.com
X-Get-Message-Sender-Via: server.wki.vra.mybluehostin.me: authenticated_id: basharath@couthit.com
X-Authenticated-Sender: server.wki.vra.mybluehostin.me: basharath@couthit.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

Hi,

>> Thomas Weißschuh <thomas.weissschuh@linutronix.de> writes:
>> > The members "start" and "end" of struct resource are of type
>> > "resource_size_t" which can be 32bit wide.
>> > Values read from OF however are always 64bit wide.
>> >
>> > Refactor the diff overflow checks into a helper function.
>> > Also extend the checks to validate each calculation step.
>> >
>> > Signed-off-by: Thomas Weißschuh <thomas.weissschuh@linutronix.de>
>> > ---
>> >  drivers/of/address.c | 45 ++++++++++++++++++++++++++-------------------
>> >  1 file changed, 26 insertions(+), 19 deletions(-)
>> >
>> > diff --git a/drivers/of/address.c b/drivers/of/address.c
>> > index 7e59283a4472..df854bb427ce 100644
>> > --- a/drivers/of/address.c
>> > +++ b/drivers/of/address.c
>> > @@ -198,6 +198,25 @@ static u64 of_bus_pci_map(__be32 *addr, const __be32 *range, int na, int ns,
>> >
>> >  #endif /* CONFIG_PCI */
>> >
>> > +static int __of_address_resource_bounds(struct resource *r, u64 start, u64 size)
>> > +{
>> > +     u64 end = start;
>> > +
>> > +     if (overflows_type(start, r->start))
>> > +             return -EOVERFLOW;
>> > +     if (size == 0)
>> > +             return -EOVERFLOW;
>> > +     if (check_add_overflow(end, size - 1, &end))
>> > +             return -EOVERFLOW;
>> > +     if (overflows_type(end, r->end))
>> > +             return -EOVERFLOW;
>>
>> This breaks PCI on powerpc qemu. Part of the PCI probe reads a resource
>> that's zero sized, which used to succeed but now fails due to the size
>> check above.
>>
>> The diff below fixes it for me.
>
> I fixed it up with your change.


This commit is breaking Ethernet functionality on the TI AM57xx platform due to zero byte SRAM block size allocation during initialization. Prior to this patch, zero byte block sizes were handled properly.

The issue is with the following line of code:

if (size && check_add_overflow(end, size - 1, &end))  // check_add_overflow not called when size is zero

We feel check_add_overflow() should be invoked even when the size is zero to ensure correct block size allocation.

Thanks & Best Regards,
Basharath

