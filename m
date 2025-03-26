Return-Path: <devicetree+bounces-160971-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D198A71BE1
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 17:27:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4C15C170C35
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 16:26:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 865B01F63F9;
	Wed, 26 Mar 2025 16:26:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="RePp/+t/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C24CA1F4C9F
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 16:26:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743006374; cv=none; b=mIZZtmFab0o5vk3uSTtkhaX+L2Wpl3EiFxJtpWslvZ5rKc62B6IIQP1tZB40NqxinFB6MypmhX4ylS+c+lVMwXwt0iRl4DhaizSSJ0ACg/4QzyoxxiWT5OXg2T3GPQ97M+nQ3t+uEW+ZdTnDa8uuTV9I8WgJZ8bQ6k89Eb6pHHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743006374; c=relaxed/simple;
	bh=TP3pQO3RlTwxLWj//K05AHCYcZl/96NtoRgWC1Sg7VM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=udrQ3g59BpBsLxGp9p6v6TXl75UNRAKAn4lE9Vf8E+5+H3lKMKxJ+B52/FViGqlx7tcvk2QbJidAOGAChT3fD6MzDJflN8pl2B4JZcJGXF621XBtuXQlnX0/6k6wKZLq1FSn+oI7/kmJKh/omW4Ms+46t8fxVx7i/mQlZffu8Cc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=RePp/+t/; arc=none smtp.client-ip=209.85.160.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f175.google.com with SMTP id d75a77b69052e-4769e30af66so421891cf.1
        for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 09:26:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1743006371; x=1743611171; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TP3pQO3RlTwxLWj//K05AHCYcZl/96NtoRgWC1Sg7VM=;
        b=RePp/+t/Kb7BpHZYznSBUEBVTbaC6MgaQcmiD7TY7CAyS2Pkzk8Ms96fF13d0vcM0H
         YXkMQOl9UIAnTlY0cSx17a0IWl85//MBEWxSHYlDScjx9xQ/e/KUw4T3FmcY75R2Srgg
         Q0HiL2o8IgEYh/eIwqNaOghZCkOIe2PMODr4s6MPrX8IBfJj4Q8bsc58jVJQUwP7/W/j
         L5fcT0r/wrcIFdWsI7gDI3UhAoJkDCAYYy3CFdByXdjCd2tRSiEPZti+y3vpyLIcDZFA
         w0OPNtFsH9RuSfSKyN4n3DIqNbbiKMiJNySPZU1BXdZ3+eLqqkMgrdUonSiCX8gnrySW
         0lYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743006371; x=1743611171;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TP3pQO3RlTwxLWj//K05AHCYcZl/96NtoRgWC1Sg7VM=;
        b=IhI62pJPIpneymdce/SWsAg+ud610YiRxBtu+wv9CvCLdzNzVuvWUMgFiBuSjmntTT
         PvToSmCBrW2dyQXwB9kvZoHCqh3Am5txJK2xxfODgFhViLiszMQOzbx2Blv83kpzS0Ib
         I0M6ksDCRQKGshGTd4RTvjoQW4MPVaSfFTOVhBLcFo6YR/Z+ujLgwLUjA4B02Aus6mqU
         l9/oV1Vii6RfEmxR1uUquw8nNRJk09R7ICUQ7KsxLGev3l/yzRapTre4zXq13YkT0st/
         YX6+kh4rK2o0kXCnZf21VmllaxH9QF4jlwnUGgRXexL3/0GWlS+4iu5h6VvL8s7hqL8g
         K3yw==
X-Forwarded-Encrypted: i=1; AJvYcCWSKeg17/xEL6Th7ahqxHHcNYMeCTrO55PC2EDRhoXtAUcOztfR3xdYBvS1myCaaD2UvgpMYksSJz2E@vger.kernel.org
X-Gm-Message-State: AOJu0YylCWPkvqx/zqQGzluB6en/bW0DzZL+ysEaopFMQAPlbKxe16DH
	6qZNztJClRRpGFNsPTkF3oG8aHrzCM4WLfsNad+kyRcmI04GsGgUKSFYOuA4DmB7fP31fTxbPNJ
	OcDQZcp9JGi+Jga2Tab3Oxaoj4D+D6xCXpRlM
X-Gm-Gg: ASbGncs58ImMChLYzX7grOrFGnfoLtT37/Yci1pc5O1WFhJJ3ljs0Gm1bojVWyI0bl2
	At60L9qIpOkFm+9FC+j6CdnyqvEtT6qfYbbN9TNKlAymuVBE8zP2kOVxo0KlBw4WhlTmI0trvXU
	Sn05FfhbwtrGFmsyZJxyqqv/IcLILLRX1U1g==
X-Google-Smtp-Source: AGHT+IFOa5U4EkoXfdO0+LtQUSzYhAnBQIC8ww9fg/mAwgTBmcE9rzJd63FTHpnj7/g5eVnvx4SFKaBHLQRjG62h4KA=
X-Received: by 2002:a05:622a:2515:b0:477:2c1e:d252 with SMTP id
 d75a77b69052e-47762eb2ac5mr4836571cf.20.1743006371331; Wed, 26 Mar 2025
 09:26:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250320015551.2157511-1-changyuanl@google.com>
 <20250320015551.2157511-8-changyuanl@google.com> <CAPTztWbFXajArSN8yKu32eSoR=xsk1CHM_4V7MJ0eQxydFqPUQ@mail.gmail.com>
 <Z-MB0Cj4tM6QgOAg@kernel.org> <CAPTztWbDtDhKZS89-aEBaZoPW2jZM2CAWW1Y_m3OnNE26=d9UQ@mail.gmail.com>
 <Z-PsLDv-DkxitRv1@kernel.org>
In-Reply-To: <Z-PsLDv-DkxitRv1@kernel.org>
From: Frank van der Linden <fvdl@google.com>
Date: Wed, 26 Mar 2025 09:25:59 -0700
X-Gm-Features: AQ5f1JqROvSmDfkTDrNCkDrxnAL_58GWFP96LlXcUaVtPVLlGbzUuTMgIm7BDUs
Message-ID: <CAPTztWazH=bJHTvpLfqHK3cYRnO=TXcLWEUJKYsxW1WV8XifrA@mail.gmail.com>
Subject: Re: [PATCH v5 07/16] kexec: add Kexec HandOver (KHO) generation helpers
To: Mike Rapoport <rppt@kernel.org>
Cc: Changyuan Lyu <changyuanl@google.com>, linux-kernel@vger.kernel.org, graf@amazon.com, 
	akpm@linux-foundation.org, luto@kernel.org, anthony.yznaga@oracle.com, 
	arnd@arndb.de, ashish.kalra@amd.com, benh@kernel.crashing.org, bp@alien8.de, 
	catalin.marinas@arm.com, dave.hansen@linux.intel.com, dwmw2@infradead.org, 
	ebiederm@xmission.com, mingo@redhat.com, jgowans@amazon.com, corbet@lwn.net, 
	krzk@kernel.org, mark.rutland@arm.com, pbonzini@redhat.com, 
	pasha.tatashin@soleen.com, hpa@zytor.com, peterz@infradead.org, 
	ptyadav@amazon.de, robh+dt@kernel.org, robh@kernel.org, saravanak@google.com, 
	skinsburskii@linux.microsoft.com, rostedt@goodmis.org, tglx@linutronix.de, 
	thomas.lendacky@amd.com, usama.arif@bytedance.com, will@kernel.org, 
	devicetree@vger.kernel.org, kexec@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, 
	linux-mm@kvack.org, x86@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 26, 2025 at 4:59=E2=80=AFAM Mike Rapoport <rppt@kernel.org> wro=
te:
[...]
> > There has, for example, been some talk about making hugetlbfs
> > persistent. You could have hugetlb_cma active. The hugetlb CMA areas
> > are set up quite early, quite some time before KHO restores memory. So
> > that would have to be changed somehow if the location of the KHO init
> > call would remain as close as possible to buddy init as possible. I
> > suspect there may be other uses.
>
> I think we can address this when/if implementing preservation for hugetlb=
fs
> and it will be tricky.
> If hugetlb in the first kernel uses a lot of memory, we just won't have
> enough scratch space for early hugetlb reservations in the second kernel
> regardless of hugetlb_cma. On the other hand, we already have the preserv=
ed
> hugetlbfs memory, so we'd probably need to reserve less memory in the
> second kernel.
>
> But anyway, it's completely different discussion about how to preserve
> hugetlbfs.

Right, there would have to be a KHO interface way to carry over the
early reserved memory and reinit it early too.

>
> > > > current requirement in the patch set seems to be "after sparse/page
> > > > init", but I'm not sure why it needs to be as close as possibly to
> > > > buddy init.
> > >
> > > Why would you say that sparse/page init would be a requirement here?
> >
> > At least in its current form, the KHO code expects vmemmap to be
> > initialized, as it does its restore base on page structures, as
> > deserialize_bitmap expects them. I think the use of the page->private
> > field was discussed in a separate thread, I think. If that is done
> > differently, it wouldn't rely on vmemmap being initialized.
>
> In the current form KHO does relies on vmemmap being allocated, but it do=
es
> not rely on it being initialized. Marking memblock ranges NOINT ensures
> nothing touches the corresponding struct pages and KHO can use their fiel=
ds
> up to the point the memory is returned to KHO callers.
>
> > A few more things I've noticed (not sure if these were discussed before=
):
> >
> > * Should KHO depend on CONFIG_DEFERRED_STRUCT_PAGE_INIT? Essentially,
> > marking memblock ranges as NOINIT doesn't work without
> > DEFERRED_STRUCT_PAGE_INIT. Although, if the page->private use
> > disappears, this wouldn't be an issue anymore.
>
> It does.
> memmap_init_reserved_pages() is called always, no matter of
> CONFIG_DEFERRED_STRUCT_PAGE_INIT is set or not and it skips initializatio=
n
> of NOINIT regions.

Yeah, I see - the ordering makes this work out.

MEMBLOCK_RSRV_NOINIT is a bit confusing in the sense that if you do a
memblock allocation in the !CONFIG_DEFERRED_STRUCT_PAGE_INIT case, and
that allocation is done before free_area_init(), the pages will always
get initialized regardless, since memmap_init_range() will do it. But
this is done before the KHO deserialize, so it works out.

>
> > * As a future extension, it could be nice to store vmemmap init
> > information in the KHO FDT. Then you can use that to init ranges in an
> > optimized way (HVO hugetlb or DAX-style persisted ranges) straight
> > away.
>
> These days memmap contents is unstable because of the folio/memdesc
> project, but in general carrying memory map data from kernel to kernel is
> indeed something to consider.

Yes, I think we might have a need for that, but we'll see.

Thanks,

- Frank

