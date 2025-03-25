Return-Path: <devicetree+bounces-160584-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8545DA70392
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 15:24:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 37C24189A299
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 14:20:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1878E25A2B3;
	Tue, 25 Mar 2025 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=soleen-com.20230601.gappssmtp.com header.i=@soleen-com.20230601.gappssmtp.com header.b="vsRan22Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89A6A2571A8
	for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 14:20:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742912434; cv=none; b=JF3OHu1aE9PtzB5t7BFpS/pb5/QEfyvCgotwi/Ve+4UB0FQwHHc1Tvslno1VrwjmkUsXdtdL3mdylHvusocTYOsvLN6XQgCtoechyAsrm0iwEmxSRsp8VV2q4n4raQyFp/VzwyH1SXZRme8wLAqQP97uGUIaVhNp1oIkSZA/Xag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742912434; c=relaxed/simple;
	bh=6R9zA86q92q5KNyTPt/KezT2KM642idnT1llXfBvGGY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hIQmqkPHWD2d/Ns3+lVIaF9NsaQvYU51/xf7S931QfCtGAoRpRozndjSxqeY6ZocoW5/JNLBMDoREJhQjbiCaz2s1N38Fk1vPGYi3R4RX+sBiZRJCTDsRp1NwplLEjXjh93O9IH4j8ZTKbEKRD5PBAPZ6yISaVHrmGcBYDmty2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=soleen.com; spf=pass smtp.mailfrom=soleen.com; dkim=pass (2048-bit key) header.d=soleen-com.20230601.gappssmtp.com header.i=@soleen-com.20230601.gappssmtp.com header.b=vsRan22Y; arc=none smtp.client-ip=209.85.160.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=soleen.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=soleen.com
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-477282401b3so39360011cf.1
        for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 07:20:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen-com.20230601.gappssmtp.com; s=20230601; t=1742912430; x=1743517230; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6R9zA86q92q5KNyTPt/KezT2KM642idnT1llXfBvGGY=;
        b=vsRan22Y4qwsj7yKN39U0ifO+/D//+MnwCOwtjNMHJqFDDYu+RMDhq+O40Axj6/Um1
         rQIPN68gNjNB3/ge5b/8vkr++gSgSFwsHUqP0zuNFsXl8lWCh5zoLwDRteM4rMphdK8j
         cc5J1VaKQK4JMKyJGYMhrrMZDIhKG0b6n+fmBpMOvS6sb/p7QytQQz47aWZESqvv0YTl
         0x6jeMJSkFayACKpPoKzesUQBO8fNJAkwbvhZaklupQaHAi8AcRgURw8vEDgyFN5Cx/O
         3ZeBweLhvHEf1pzWbPbymKvhYBAzNnWccownXDGeQFWWElvqnE7ruqcs2tW0gsBfKq1o
         KV1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742912430; x=1743517230;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6R9zA86q92q5KNyTPt/KezT2KM642idnT1llXfBvGGY=;
        b=HeLNsWCfASE6+3oHS72SZd6k+mh7z6yzy5HJEPAo+k7LSFip3PQXnbJXprPdQ+WxHK
         Bwkh9xrqzz7TL/r/rNjM8eWTFI46NGZfceLWg7wiLpIjcOuSGHvNKeqKg1u1XKEg/3O4
         t/BPBVLCA1vcnEZZmnDAO6dZ6Y9VXHjAA4zmXlCmLJ/5KaA7Y7+Wb9R9y3ad6hNHW6/o
         GUPQaa3KHoUgAD9txbJY4yPFfGHoAKkXvUts4CPcdODfWBFysUFCcU6EiDJQynS1Exb+
         RTaKD/fSEjq4nggYKxthmKO7dGZt30pFiEPqcdHPI0ggDMkWm2poKOFD92SxLmVic7Hj
         FluA==
X-Forwarded-Encrypted: i=1; AJvYcCXpDK9G/iXjJ789plt+uzEmtAepHXfhgEpPzXhxsLiWf5lLd3JsWP14gSvoN6L3sRtQhQFJLbv6hZ0g@vger.kernel.org
X-Gm-Message-State: AOJu0YxmP7WsKnJz7ez5dbpVTD7/LHKW2bsNKJKCZ2gnqJwJHaOQf/zi
	cirZTHIzB9sfvuvPK5GIyDNVkITYI2fgKkhW02iR591XO920A4x4Bz8rtbxrfH6zaMmpkCbU0Y2
	XRDrpfNCVI6vaWJaRcS88RRc9aILXCgbDxzV/TQ==
X-Gm-Gg: ASbGncvxpw/zgvlZIHW3e6QkRKVcTIRx2FSBjWGuFcW0V2QllAK+deOsUYSvcBXHowz
	cRHbn3t4bsrm1olh5fMopeh7MsNIj34E7vzBeBt+xo+cVk5bDvRnz9yPUY4Fv9uQ8cXA9Ppvd/8
	SFJRFto8/PiyGXZlXLGfBvq5zw
X-Google-Smtp-Source: AGHT+IGc+rzcOSqRq1NAurG0wArv+f9TNDXi3NJHkDUdzPbqAqbmujaqTIOq09aOpi8XwtONse7qgR0mbQ4HEgDxOjc=
X-Received: by 2002:ac8:529a:0:b0:477:29f5:53eb with SMTP id
 d75a77b69052e-47729f55467mr169156461cf.6.1742912430244; Tue, 25 Mar 2025
 07:20:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250320015551.2157511-1-changyuanl@google.com>
In-Reply-To: <20250320015551.2157511-1-changyuanl@google.com>
From: Pasha Tatashin <pasha.tatashin@soleen.com>
Date: Tue, 25 Mar 2025 10:19:53 -0400
X-Gm-Features: AQ5f1JpBD7J0LGV4vivBPILeYhry8D0ETPzHZusd7bV5-E3dLFdBAyFaK8Fs_Bw
Message-ID: <CA+CK2bDtBk=49hbz+C=fDswz_Nbtj8kVjsY-pTsmBt+O8YPLmg@mail.gmail.com>
Subject: Re: [PATCH v5 00/16] kexec: introduce Kexec HandOver (KHO)
To: Changyuan Lyu <changyuanl@google.com>
Cc: linux-kernel@vger.kernel.org, graf@amazon.com, akpm@linux-foundation.org, 
	luto@kernel.org, anthony.yznaga@oracle.com, arnd@arndb.de, 
	ashish.kalra@amd.com, benh@kernel.crashing.org, bp@alien8.de, 
	catalin.marinas@arm.com, dave.hansen@linux.intel.com, dwmw2@infradead.org, 
	ebiederm@xmission.com, mingo@redhat.com, jgowans@amazon.com, corbet@lwn.net, 
	krzk@kernel.org, rppt@kernel.org, mark.rutland@arm.com, pbonzini@redhat.com, 
	hpa@zytor.com, peterz@infradead.org, ptyadav@amazon.de, robh+dt@kernel.org, 
	robh@kernel.org, saravanak@google.com, skinsburskii@linux.microsoft.com, 
	rostedt@goodmis.org, tglx@linutronix.de, thomas.lendacky@amd.com, 
	usama.arif@bytedance.com, will@kernel.org, devicetree@vger.kernel.org, 
	kexec@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-doc@vger.kernel.org, linux-mm@kvack.org, x86@kernel.org
Content-Type: text/plain; charset="UTF-8"

> To use the code, please boot the kernel with the "kho=on" command line
> parameter.
> KHO will automatically create scratch regions. If you want to set the
> scratch size explicitly you can use "kho_scratch=" command line parameter.
> For instance, "kho_scratch=16M,512M,256M" will reserve a 16 MiB low
> memory scratch area, a 512 MiB global scratch region, and 256 MiB
> per NUMA node scratch regions on boot.

kho_scratch= is confusing. It should be renamed to what this memory
actually represents, which is memory that cannot be preserved by KHO.

I suggest renaming all references to "scratch" and this parameter to:

kho_nopersistent= or kho_nopreserve=

This way, we can also add checks that early allocations done by the
kernel in this memory do not get preserved. We can also add checks to
ensure that scarce low DMA memory does not get preserved across
reboots, and we avoid adding fragmentation to that region.

Pasha

