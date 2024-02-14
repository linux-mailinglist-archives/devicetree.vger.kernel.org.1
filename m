Return-Path: <devicetree+bounces-41555-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 92A3A8543D3
	for <lists+devicetree@lfdr.de>; Wed, 14 Feb 2024 09:11:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 44B6A288517
	for <lists+devicetree@lfdr.de>; Wed, 14 Feb 2024 08:11:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AED9011CB3;
	Wed, 14 Feb 2024 08:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nuONOwuK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D96FD11CAE
	for <devicetree@vger.kernel.org>; Wed, 14 Feb 2024 08:11:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707898314; cv=none; b=jIbWL7DKEox69rA/Mc2pZT+XLWbJi9GQR77KdvttujT44+3o/lSXV2988lIMHn++bbTtRWkwbhnJIzUA7V05xAkmh38dzsGDzlvfpwaPZeScFvCIoSR6LA40K+uga1OS45XbdJ783uqzuIZHSWM+PxydsiG/pK/yWjvyEzcBrGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707898314; c=relaxed/simple;
	bh=cORV1hPVEb1NyHs06SF8qOrnoTvO2nGd8lmVc/S9+cw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MuxPCW14jP76UsSdEtpBBLEOxDljJk6i/aPBSEVrR2CRtUp7jrlZ0SdLLQ1CRx5saxio3U7xGT37KOl/cy8vEvZoqNwBF6ITIBOjkdqAGDtU2eTleDETDtvpiilpqX/E65S6oErfTdiGY9oKqoXkTLsSJxq79ivmj7sm/S42weM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nuONOwuK; arc=none smtp.client-ip=209.85.219.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-dc6cbe1ac75so399903276.1
        for <devicetree@vger.kernel.org>; Wed, 14 Feb 2024 00:11:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707898312; x=1708503112; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=KfOoEa6KDVG5lBUOB2ugHyccJS6WfRjSfp0n81i8FVY=;
        b=nuONOwuKSRycmF3gATjjXmdjZfPkI96mDAuy6Xu3K1PCz0h/3kTsZcU5AvQm9wT3ds
         u2YwTZOyAPViPKj5iYS0INYUixKi7iWeAFylGG5kd8+b1AQVOAVEM5OYmoPbRnvH5oK3
         MG25dcn9oZ0c/wnBYep5NWWleTZnZ4QoaSh2fEQEV4Jiv0E5L+LXnxSbFDHO8BjmDf6n
         09w3mdDrlO1RMQWi/8PNE7WNckq9EmZnBMzicet3Wb1GsZcXOWELiPcwAv+RzCcrkx2V
         oe3bnr3r82FZ1YVnYORUNPeGAGQz3c1J1BykqzLIrrUV9ekCymCJ0xXy8gkFO5FmDmKD
         w8bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707898312; x=1708503112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KfOoEa6KDVG5lBUOB2ugHyccJS6WfRjSfp0n81i8FVY=;
        b=qc8RciiPPcX4hCcSdSjBjo/ZR2dMBcpigXLUuSmo/CMMsazSxDmn78lQ5cazekgl4I
         0FvgfdTZu95C1nxiDuVN1FP9Odv6sSblg8RWJG2hni3mh+EMhResNOGDsSrS0ONS7Zy4
         5x58XlPHQOAJvkI1TOikYybDHhCyX+U1lKyaebeFq7el8fUAJyaeGrPemMz+gWt4xDK6
         tGGxvQWTYBYtEaukgFG4/7vOne2dZLU5Y1FKvJrQG1Q5Lw7oQewArPudFRFchs06NJi1
         ExL45qcbMh4j+fb7QEeJlP16oAVJiHrMOEfMTj+6zC1WnPvWiMxeUr2eJGwP+dotEbi3
         9GwA==
X-Forwarded-Encrypted: i=1; AJvYcCUMKd7UQ54Pu9fkvKor/RCwgvaP0SFqmCes27rE/f9SfOnyoo3n0ta/acBCZmi3aPNUgma2oHtTNdyY+GY/W8MG2rRnxZSNvUGzvA==
X-Gm-Message-State: AOJu0YyIcg26iPNDfiV/wp/OHi6P1ZGoGV0ooXHviIWlHLQLXDaICnzH
	MBFMUYmFgIgY5z6w/Ne23rHJxj7/95XQcA19fQuOY89etsSJ/GJzDmHRxfp6n+EYWeorP3hXPXg
	dFdeokGtEdnS/QQewiIz2BNsEuBJY+JRsq/6qqA==
X-Google-Smtp-Source: AGHT+IFAn6NP7cUBJnGhZzmKFmr3z8S4XNhtXr3hHrBsJyxvM947Lhuu6U6liOw/rKr+h9SZcVchZb+pkdi1vk3t71U=
X-Received: by 2002:a25:3c87:0:b0:dcb:b072:82d8 with SMTP id
 j129-20020a253c87000000b00dcbb07282d8mr826745yba.15.1707898311745; Wed, 14
 Feb 2024 00:11:51 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <1649704172-13181-1-git-send-email-quic_faiyazm@quicinc.com>
 <YlW2TO0O8qDHpkGW@kernel.org> <7b18bea8-b996-601d-f490-cb8aadfffa1b@quicinc.com>
 <YnQBKPWtPa87y4NA@kernel.org> <42f28e7b-c001-7d01-1eb6-fe963491898e@quicinc.com>
 <Ynj+M9cRm6zdCMMi@kernel.org> <22aca197-8d18-2c9e-b3c4-f6fdc893ceb1@quicinc.com>
 <Yu1t8TpXT1f372v/@kernel.org> <76cb3b37-5887-404f-95b7-10a22a7ba65b@quicinc.com>
 <ZcxvKvSfJv6L2O9e@kernel.org>
In-Reply-To: <ZcxvKvSfJv6L2O9e@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 14 Feb 2024 10:11:40 +0200
Message-ID: <CAA8EJpqpGN6yzd5pUs06aax=L5wDwPK6aM6R2X784y7ot+P-aQ@mail.gmail.com>
Subject: Re: [PATCH] mm: memblock: avoid to create memmap for memblock nomap regions
To: Mike Rapoport <rppt@kernel.org>
Cc: "Aiqun Yu (Maria)" <quic_aiquny@quicinc.com>, Vijayanand Jitta <quic_vjitta@quicinc.com>, 
	Faiyaz Mohammed <quic_faiyazm@quicinc.com>, karahmed@amazon.de, qperret@google.com, 
	robh@kernel.org, akpm@linux-foundation.org, linux-mm@kvack.org, 
	linux-kernel@vger.kernel.org, robh+dt@kernel.org, frowand.list@gmail.com, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 14 Feb 2024 at 09:44, Mike Rapoport <rppt@kernel.org> wrote:
>
> On Thu, Feb 08, 2024 at 02:37:25PM +0800, Aiqun Yu (Maria) wrote:
> >
> > On 8/6/2022 3:22 AM, Mike Rapoport wrote:
> > > Hi Vijay,
> > >
> > > On Wed, Aug 03, 2022 at 04:27:33PM +0530, Vijayanand Jitta wrote:
> > > >
> > > > On 5/9/2022 5:12 PM, Mike Rapoport wrote:
> > > > > On Mon, May 09, 2022 at 04:37:30PM +0530, Faiyaz Mohammed wrote:
> > > > > >
> > > > > > On 5/5/2022 10:24 PM, Mike Rapoport wrote:
> > > > > > > On Thu, May 05, 2022 at 08:46:15PM +0530, Faiyaz Mohammed wrote:
> > > > > > > > On 4/12/2022 10:56 PM, Mike Rapoport wrote:
> > > > > > > > > On Tue, Apr 12, 2022 at 12:39:32AM +0530, Faiyaz Mohammed wrote:
> > > > > > > > > > This 'commit 86588296acbf ("fdt: Properly handle "no-map" field in the
> > > > > > > > > > memory region")' is keeping the no-map regions in memblock.memory with
> > > > > > > > > > MEMBLOCK_NOMAP flag set to use no-map memory for EFI using memblock api's,
> > > > > > > > > > but during the initialization sparse_init mark all memblock.memory as
> > > > > > > > > > present using for_each_mem_pfn_range, which is creating the memmap for
> > > > > > > > > > no-map memblock regions. To avoid it skiping the memblock.memory regions
> > > > > > > > > > set with MEMBLOCK_NOMAP set and with this change we will be able to save
> > > > > > > > > > ~11MB memory for ~612MB carve out.
> > > > > > > > > The MEMBLOCK_NOMAP is very fragile and caused a lot of issues already. I
> > > > > > > > > really don't like the idea if adding more implicit assumptions about how
> > > > > > > > > NOMAP memory may or may not be used in a generic iterator function.
> > > > > > > > Sorry for delayed response.
> > > > > > > > Yes, it is possible that implicit assumption can create
> > > > > > > > misunderstanding. How about adding command line option and control the
> > > > > > > > no-map region in fdt.c driver, to decide whether to keep "no-map" region
> > > > > > > > with NOMAP flag or remove?. Something like below
> > > > > > > I really don't like memblock_remove() for such cases.
> > > > > > > Pretending there is a hole when there is an actual DRAM makes things really
> > > > > > > hairy when it comes to memory map and page allocator initialization.
> > > > > > > You wouldn't want to trade system stability and random memory corruptions
> > > > > > > for 11M of "saved" memory.
> > > > > >
> > > > > > Creating memory map for holes memory is adding 11MB overhead which is
> > > > > > huge on low memory target and same time 11MB memory saving is good enough
> > > > > > on low memory target.
> > > > > >
> > > > > > Or we can have separate list of NOMAP like reserved?.
> > > > > >
> > > > > > Any other suggestion to address this issue?.
> > > > >
> > > > > Make your firmware to report the memory that Linux cannot use as a hole,
> > > > > i.e. _not_ report it as memory.
> > > >
> > > > Thanks, Mike for the comments.
> > > >
> > > > Few concerns with this approach.
> > > >
> > > > 1) One concern is, even if firmware doesn't report these regions as
> > > > memory, we would need addresses for these to be part of device tree so
> > > > that the clients would be able to get these addresses. Otherwise there
> > > > is no way for client to know these addresses.
> > > >
> > > > 2) This would also add a dependency on firmware to be able to pass these
> > > > regions not as memory, though we know that these regions would be used
> > > > by the clients. Isn't it better to have such control within the kernel ?
> > >
> > > If it is memory that is used by the kernel it should be reported as memory
> > > and have the memory map.
> > > If this is a hole in the memory layout from the kernel perspective, then
> > > kernel should not bother with this memory.
> > Hi Mike,
> >
> > We've put effort on bootloader side to implement the similar suggestion of
> > os bootloader to convey the reserved memory by omit the hole from
> > /memory@0{reg=[]} directly.
> > While there is a concern from device tree spec perspective, link [1]: "A
> > memory device node is required for all devicetrees and describes the
> > physical memory layout for the system. "
> > Do you have any idea on this pls?
>
> I'm not sure I understand your concern. Isn't there a /memory node that
> describes the memory available to Linux in your devicetree?

That was the question. It looks like your opinion on /memory was that
it describes "memory available to Linux", while device tree spec
defines it as "physical memory layout".

>
> > [1] https://github.com/devicetree-org/devicetree-specification/blob/main/source/chapter3-devicenodes.rst
> > >
> > > And I'm not buying "low memory target" argument if you have enough memory
> > > to carve out ~600M for some mysterious clients.
> >
> > Just for your information, for low memory target, the carve out can be more
> > than ~60M out of 128M in total.
>
> If saving ~1M of memory map is important, hide the carve out from Linux
> entirely.
>
> > > > Let me know your comments on these.
> > > >
> > > > Thanks,
> > > > Vijay
> >
> > --
> > Thx and BRs,
> > Aiqun(Maria) Yu
>
> --
> Sincerely yours,
> Mike.



-- 
With best wishes
Dmitry

