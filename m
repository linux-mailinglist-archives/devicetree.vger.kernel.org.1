Return-Path: <devicetree+bounces-226389-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C6589BD831A
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 10:34:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 85A24423473
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 08:34:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EDFA30DEAC;
	Tue, 14 Oct 2025 08:34:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEB842DCF5B
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 08:34:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760430854; cv=none; b=przMbGvyffV4cdi28FaPuZiNpRAezhOyEzNGtJChNZ3A6kupK4Zv/lO+fcdUTUpGgVHvn8Yx3FLH6rIUwVarPr5ThJSRa6BKtPvenax6+cnEcaDgHyTPy8VzpSOf46zjkFhG+bhFfmi7fus3nvKL2um56WuXWwM/LYFwK425hWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760430854; c=relaxed/simple;
	bh=0B2UMYbqUDmb5TRAEFZ3iCetD125VgS2XRk3m5uYAII=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bVo8GizkbThO/KB4dNUEV7NNbmnFt0kT4Zz4nS5ICoQR0E8t+DsCQYr7Rjwzwy7bfiOnU9hLrq7ydx1c0uNASFz11KVkzaswCYSRJyXTbdlxVm/7QQ3t5bEC1tiaJuk2xR+WuWkBlvdE9pHLVdRFy/f8PTvI4S2Mx6jg5aYUAFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-63163a6556bso10042518a12.1
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 01:34:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760430851; x=1761035651;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AKUCHW/MBIZsUc3ODKKtWIaDlEQsfe7hY3IvRmB8i8o=;
        b=TjHkZwM2gExX7KePlQzvn7OukZSp9FuU2HkZOgR/zL4OljJKhMVyaSyBJtS5SfPBN5
         88feHVXFOGDt5d8Sj2YahD3eVf3lugalDj4NIf8BBnSt7eIPEfGQdsBC4kan2MnZRXG8
         e03Is20PN85YJ4Stw2+l77rjqxFhThYc8ZoNl4ReobKxVKZDr3Hancu7wBuOkIlG/pui
         zc/3xXAUWo/b7xSEPnqqJNkLl2WrAPcHxaHd5c0/bugVkqlugV7lvM+glIMuPfhzOz5w
         R+9ji5MqFkCNzvD/h/L+BrewHKL6dbhx6z7s6ff2qCIhp2igSzbXqxbsLumsJgG/I5yN
         5B5A==
X-Forwarded-Encrypted: i=1; AJvYcCUMY8ER9YsUVWJvC9zAM2AoSF9iyXTZAO9pHBoVfKDoJu/uFgW7P9p8mlTEsyTII6ZL+CCtmaK2hANh@vger.kernel.org
X-Gm-Message-State: AOJu0YxgkkOJsb/u99jFSQV4E8Gbhg6GbBk5SRB9+btfmr4zI62v5NyH
	bjs53fifqtxBALSMK9xBM4e9ZWni3vxwlZn+feo4Zq7lkszzVSAG3494
X-Gm-Gg: ASbGncuiZWeK4iPlbvSYVmy4ICxzWHNTE5lwzRd5APtbHkVCS/y6q03cCzF8GxiOzr+
	KRNHljOT6EnHNRz0r9bNxNzpjvHryUU9C1ZocayS9lnVV435jhGBFwL7cy/osE5udgn3C0ZTrm5
	T/MTfyRFDKrXpg0JqwDmsPRPbgPXzQMll+bL1RTm0T5++Uyr6Wkd2g8YQ9bfNxE+/q+OsRDzhiX
	uXh7w7F2Ugh4iNMDyzybAuGg4DdPJkFCuCXVl7Acr9BLRuJyiqZD9z7B3AAp5TmyR7z747PxDPE
	z19yKsGJQCG40fOOPR7rBkZmdP4Gy3lr5VlQdU4B1DQmqB4c4tFWq8VI8LaUCEYO8aJqr4N3Lso
	GbLkNNFe8i/8YqWpvLfZdI+eBwijs6mOuhGT8
X-Google-Smtp-Source: AGHT+IH9yDBhkiPY34+r8L4QfGlETNuwKEKExxU3npIvUrJ6TVQTuSdRSJEPMfeufN3cm41sP9BTrQ==
X-Received: by 2002:a05:6402:50c6:b0:632:930c:ed60 with SMTP id 4fb4d7f45d1cf-639d5c57a9cmr20902180a12.30.1760430850785;
        Tue, 14 Oct 2025 01:34:10 -0700 (PDT)
Received: from gmail.com ([2a03:2880:30ff:70::])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63a5c322e91sm10304155a12.45.2025.10.14.01.34.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 01:34:10 -0700 (PDT)
Date: Tue, 14 Oct 2025 01:34:07 -0700
From: Breno Leitao <leitao@debian.org>
To: Pratyush Yadav <pratyush@kernel.org>
Cc: Changyuan Lyu <changyuanl@google.com>, rppt@kernel.org, 
	akpm@linux-foundation.org, linux-kernel@vger.kernel.org, anthony.yznaga@oracle.com, 
	arnd@arndb.de, ashish.kalra@amd.com, benh@kernel.crashing.org, bp@alien8.de, 
	catalin.marinas@arm.com, corbet@lwn.net, dave.hansen@linux.intel.com, 
	devicetree@vger.kernel.org, dwmw2@infradead.org, ebiederm@xmission.com, graf@amazon.com, 
	hpa@zytor.com, jgowans@amazon.com, kexec@lists.infradead.org, krzk@kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, linux-mm@kvack.org, luto@kernel.org, 
	mark.rutland@arm.com, mingo@redhat.com, pasha.tatashin@soleen.com, pbonzini@redhat.com, 
	peterz@infradead.org, robh@kernel.org, rostedt@goodmis.org, saravanak@google.com, 
	skinsburskii@linux.microsoft.com, tglx@linutronix.de, thomas.lendacky@amd.com, will@kernel.org, 
	x86@kernel.org
Subject: Re: [PATCH v8 01/17] memblock: add MEMBLOCK_RSRV_KERN flag
Message-ID: <2ege2jfbevtunhxsnutbzde7cqwgu5qbj4bbuw2umw7ke7ogcn@5wtskk4exzsi>
References: <20250509074635.3187114-1-changyuanl@google.com>
 <20250509074635.3187114-2-changyuanl@google.com>
 <ef6wfr72set5wa5el3wbbu4yd5tnc4p2rhtjpb5kpmncv3xs5d@i3c5v3ciioi3>
 <mafs0wm4yluej.fsf@kernel.org>
 <mafs0h5w2lpqu.fsf@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <mafs0h5w2lpqu.fsf@kernel.org>

Hello Pratyush,

On Mon, Oct 13, 2025 at 06:40:09PM +0200, Pratyush Yadav wrote:
> On Mon, Oct 13 2025, Pratyush Yadav wrote:
> >
> > I suppose this would be useful. I think enabling memblock debug prints
> > would also be helpful (using the "memblock=debug" commandline parameter)
> > if it doesn't impact your production environment too much.
> 
> Actually, I think "memblock=debug" is going to be the more useful thing
> since it would also show what function allocated the overlapping range
> and the flags it was allocated with.
> 
> On my qemu VM with KVM, this results in around 70 prints from memblock.
> So it adds a bit of extra prints but nothing that should be too
> disrupting I think. Plus, only at boot so the worst thing you get is
> slightly slower boot times.

Unfortunately this issue is happening on production systems, and I don't
have an easy way to reproduce it _yet_.

At the same time, "memblock=debug" has two problems:

 1) It slows the boot time as you suggested. Boot time at large
    environments is SUPER critical and time sensitive. It is a bit
    weird, but it is common for machines in production to kexec
    _thousands_ of times, and kexecing is considered downtime.

    This would be useful if I find some hosts getting this issue, and
    then I can easily enable the extra information to collect what
    I need, but, this didn't pan out because the hosts I got
    `memblock=debug` didn't collaborate.

 2) "memblock=debug" is verbose for all cases, which also not necessary
    the desired behaviour. I am more interested in only being verbose
    when there is a known problem.

That said, my suggestion is to only dump extra information when something goes
wrong, not affecting the boot time neither boot verbosity.

