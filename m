Return-Path: <devicetree+bounces-160724-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F94A70C7A
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 22:57:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 911101892F5A
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 21:57:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81EC5269B0E;
	Tue, 25 Mar 2025 21:57:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="WxUyLmdC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D259A26980F
	for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 21:57:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742939827; cv=none; b=Em3NYxAzoNJO+upxLELmy91LGELUA3Lvz46JOElkpH5VRiGKzdKo6EbMW1E5465vy5qGwVqBH5GBRGY9CKYCG1VilHHxnX6WDLKjFEpKXUdjn0WqQo+1gt/PctfbnRJTnuzG63Yhzn8MUhTJwZhxLFggE66KPhIH5eHx224acuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742939827; c=relaxed/simple;
	bh=HQ1y6K6+ej3yRZwY8vjRGO04KNMR+SXa0FKK7FdZ1GE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Z9DHOy3vcSVBlCyeDx3QwLUfhK4B0OaQ+rDiUZCPSwa+xJ5I2M1fuZBW2ippauQNHHTCacJDIqNVC4j1G3B5CXwcRjixH6k1ch4evdLENuOvLibIvt9Zr19rhnFVI9geY/OQjSLTp470aDcPBSEPnJ0Aatdgux+gCKc8xinknt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=WxUyLmdC; arc=none smtp.client-ip=209.85.160.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f182.google.com with SMTP id d75a77b69052e-47681dba807so31351cf.1
        for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 14:57:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1742939825; x=1743544625; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HQ1y6K6+ej3yRZwY8vjRGO04KNMR+SXa0FKK7FdZ1GE=;
        b=WxUyLmdCFoZsC+BKtF8H66dylGmm9zLuuJ0wR6VR76gBUJvKRQafOIVcYOvhNyUir7
         h0Cpd1WlfyFWWGNweggRwRDWYhGV2fdMVrKK3uVnQZX52b5cYBn/y1+6rnGCFOl8n80A
         7bj3buVqMtoK/w2Eq7xsudqWHIqBxRSdd/bHmWnAZss7bm+vGwsJislQ3bt0hRs/TEHl
         /+FYtq2Tx83dTEvK2b3uwDPK8WtMDgAj8isrJTCAfAF/P/yltcBguu2lDlIUdjTqGc8i
         CJAzjwXo5bhSMTK8wEQeWpsYdhEtYwH64eVqYisMudaheSv6vAnu7uK08Rwl+zkJKBBA
         iAzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742939825; x=1743544625;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HQ1y6K6+ej3yRZwY8vjRGO04KNMR+SXa0FKK7FdZ1GE=;
        b=Z7wu7rzOIH5wQ1qw0+buamD5daWB4UCJ7qEcs2oQBCZFAD7CwR5dWlqMWvzWtYzZnr
         pLuOXqiBMYDl4I7MSSVrBdFSELlJiCdVaOkBDMHJdLsFHScEZALb6l0FzuKaQwICeLzZ
         wZcJ7+E4lyGQZKFKoBBAJIy97aDT17ws0FwE2W74xmzILEIfh5a0oawFJ6yUajbbuDhj
         bpqJmrGtGpwD5lnnCVJyNQHdmFwTvyS+ckanCMjc58xNaua9HthwLFl8chMpa2QdmeRs
         g+3lgiYNFreL+RE+Y+hggZPevG8qCTeOTs9FmngSqjay2QmqYGdOXTfH4hrIV/zgtrKk
         ZIPQ==
X-Forwarded-Encrypted: i=1; AJvYcCXI0PMGC+Exaydm/EWBCGnHgX2P03dYwj8ai4SVrwxBmxC6w/K2g01D/VUr+RUhT8N5GRKlV/q1wcCH@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1xQjSxVInk4pg2l+hDXokHVvK4XgXZHQV5L+vzEvDtpuQhnKI
	zVaxdkknBE1s1agDYE/j2xkCsYilJDnqFXwWN2aD0Y3LfObwv7AYKv6enF5/ez9bruljCwTfGBo
	E413bD+yTxpgAlrxdoXZCirkhGkiQDrH7/yQH
X-Gm-Gg: ASbGncusdH0U4YfN4CjsIokSmmQYN6uOZZBxZCs1cKUq+oGnSQQFN8RqAf0vZXXajWx
	HA9HO1/IitdeUC4leF9Ht72/UPRkWIxRiFRCaCs0kfFtqqvDWRqkiYzDjoSQwMAeuLH2QxlzsHt
	4NZw/CMAjyu1QH/X9wgcPPKwo=
X-Google-Smtp-Source: AGHT+IH/hOP5cz4/f0sHk0CeJX9EkyXr4jUNyz2/3phYBrvYUFI/aeZIqxahOHueL/ItRZ16YGhpvWcqwmSbOB39SDQ=
X-Received: by 2002:ac8:6f05:0:b0:472:61:652 with SMTP id d75a77b69052e-47762e3319amr159031cf.28.1742939824283;
 Tue, 25 Mar 2025 14:57:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250320015551.2157511-1-changyuanl@google.com>
 <20250320015551.2157511-8-changyuanl@google.com> <CAPTztWbFXajArSN8yKu32eSoR=xsk1CHM_4V7MJ0eQxydFqPUQ@mail.gmail.com>
 <Z-MB0Cj4tM6QgOAg@kernel.org>
In-Reply-To: <Z-MB0Cj4tM6QgOAg@kernel.org>
From: Frank van der Linden <fvdl@google.com>
Date: Tue, 25 Mar 2025 14:56:52 -0700
X-Gm-Features: AQ5f1JoGOY12Onu4tBrwgKWOKiM9GvbU7kfWg3JcOKhqducXkStWehGksThe0mY
Message-ID: <CAPTztWbDtDhKZS89-aEBaZoPW2jZM2CAWW1Y_m3OnNE26=d9UQ@mail.gmail.com>
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

On Tue, Mar 25, 2025 at 12:19=E2=80=AFPM Mike Rapoport <rppt@kernel.org> wr=
ote:
>
> On Mon, Mar 24, 2025 at 11:40:43AM -0700, Frank van der Linden wrote:
[...]
> > Thanks for the work on this.
> >
> > Obviously it needs to happen while memblock is still active - but why
> > as close as possible to buddy initialization?
>
> One reason is to have all memblock allocations done to autoscale the
> scratch area. Another reason is to keep memblock structures small as long
> as possible as memblock_reserve()ing the preserved memory would quite
> inflate them.
>
> And it's overall simpler if memblock only allocates from scratch rather
> than doing some of early allocations from scratch and some elsewhere and
> still making sure they avoid the preserved ranges.

Ah, thanks, I see the argument for the scratch area sizing.

>
> > Ordering is always a sticky issue when it comes to doing things during
> > boot, of course. In this case, I can see scenarios where code that
> > runs a little earlier may want to use some preserved memory. The
>
> Can you elaborate about such scenarios?

There has, for example, been some talk about making hugetlbfs
persistent. You could have hugetlb_cma active. The hugetlb CMA areas
are set up quite early, quite some time before KHO restores memory. So
that would have to be changed somehow if the location of the KHO init
call would remain as close as possible to buddy init as possible. I
suspect there may be other uses.

Although I suppose you could just look up the addresses and then
reserve them yourself, you would just need the KHO FDT to be
initialized. And you'd need to avoid the KHO bitmap deserialize trying
to redo the ranges you've already done.

>
> > current requirement in the patch set seems to be "after sparse/page
> > init", but I'm not sure why it needs to be as close as possibly to
> > buddy init.
>
> Why would you say that sparse/page init would be a requirement here?

At least in its current form, the KHO code expects vmemmap to be
initialized, as it does its restore base on page structures, as
deserialize_bitmap expects them. I think the use of the page->private
field was discussed in a separate thread, I think. If that is done
differently, it wouldn't rely on vmemmap being initialized.

A few more things I've noticed (not sure if these were discussed before):

* Should KHO depend on CONFIG_DEFERRED_STRUCT_PAGE_INIT? Essentially,
marking memblock ranges as NOINIT doesn't work without
DEFERRED_STRUCT_PAGE_INIT. Although, if the page->private use
disappears, this wouldn't be an issue anymore.
* As a future extension, it could be nice to store vmemmap init
information in the KHO FDT. Then you can use that to init ranges in an
optimized way (HVO hugetlb or DAX-style persisted ranges) straight
away.

- Frank




> > - Frank
>
> --
> Sincerely yours,
> Mike.

