Return-Path: <devicetree+bounces-256807-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B43B2D3A612
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 12:02:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EE2DB302AB9D
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 11:00:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 661153590AD;
	Mon, 19 Jan 2026 11:00:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="SilnFcaB";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="oUV9E0Le"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F24863590A2
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 11:00:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768820459; cv=none; b=l/n9wKiGeaObRj5eoo01x6PNhGesovWbpCl26E/3tGZQjx7MAX9zK7HFRZ1xTZ/dCufOTNnMIM6cZeT1ujXi+sRu3ObNUzX7HEr1G/vDd/Dl8CInVmJdtOMRHlzYthTfnLgTx+zHKvRgbDj/gc+Urq6a1OV628EDDaZvR0sBYwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768820459; c=relaxed/simple;
	bh=lp3d84SAlaKoy9STl9UeI+l079ASo84OvcsAUNtMtgY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=A37mV5qovL2LT54lwZw4c0qEaDaqmJlaOOOk7TTZGehHCmUP4sE3mcLNEZSENS4thW7D7b1V21Oa8R5qAfHO7VJdpQA9RhDlDaCk/hUKxn92F5rU9jXNS1+gQwxhBpQK9ZRXVHb5e2RxaGWsIlwDCkzhQ87pO61rJ5AgUeihv5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=SilnFcaB; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=oUV9E0Le; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1768820457;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=m4LazPcF/wnlQqrBB0dkwPZ2Jb2xDS0R7wte5tpEq3I=;
	b=SilnFcaBjcxJ6fRdPy5fwiqIhltzGUQ7UvorNglqjh2JmPql6mopomsFgUTVu10SFfhJNV
	kYvtJb7+cqsmk0srirygsFc/ZAOgGM7+HyyOH9KbBBIa/2+ykfOs5jEUkDiquBNAGFJmo1
	pGrW7sm/PSD9Y+KMOW+V6Z8buXt+4fs=
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com
 [209.85.210.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-77-MSRJtGecP1uVlcaDZ8rqAQ-1; Mon, 19 Jan 2026 06:00:55 -0500
X-MC-Unique: MSRJtGecP1uVlcaDZ8rqAQ-1
X-Mimecast-MFC-AGG-ID: MSRJtGecP1uVlcaDZ8rqAQ_1768820455
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7f66686710fso7157504b3a.3
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 03:00:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1768820455; x=1769425255; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=m4LazPcF/wnlQqrBB0dkwPZ2Jb2xDS0R7wte5tpEq3I=;
        b=oUV9E0Le779p9f2OsrVzZygjmEOfTBXyD+H0XhZ/0FfBau9Skvsz/c3Kk7a3E/jF9P
         L1aa6IHlxDfg9eBoaTP8CV+VUkZfx0T8fcegQ5foqXn3Ip8jVWmJXNmvU4ZMn7YwkMeE
         XDz9TElpc/VY8CLGBjTvDMj6dL99jY5DlHbB2nSrfxCA7ceNE2tY9/e49nl0vonm2FD7
         GURdMzm4YLtyZ6Hs6twgXTYaJc8RDxGuhC0OTDBT5VFwNPZ7wmB0ZCK3BAQp9DJRNyaQ
         AaaA0MhQ8HWo8HUd4m5+pPltwCVVILSq03sm2sxWEspnAn4b2iz0EAVNPEwZdTBLJQ6x
         P7tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768820455; x=1769425255;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=m4LazPcF/wnlQqrBB0dkwPZ2Jb2xDS0R7wte5tpEq3I=;
        b=sOs57PA+CLAYmXhTpY+X8vNy1/TNEupFslDRwXgLjhjh6xnbjaboiyi/VtLFnlMrZ9
         8vgTdfznNtp2RJDc1Ws5++8FI1l9y3Jk7w5pc0fuaXKqVOLmNOCKUm/X3XgjymVjfRZh
         biFVKXFwgHAqorX/UFExMVMOLa4fS64Udh4dVSrfrubsOD+a/KDx/2ARgv5Fh8juSMdk
         QzRtZrAVXsvj/MWrIfya74Z6UkqzBWt1SeYmG/uD5eLWNP9MkCa9La7B3x/p6mvcEZGg
         Ks9eNsWQfOXE9g/3buZsXzbAKlPKfhi5ihruFAyTz1M8CgXc3FwPamxBeI9H0+s0hSqh
         kI2Q==
X-Forwarded-Encrypted: i=1; AJvYcCUxLnMSi0iWoZUE6LIouZLsKgTMDA0vpLuDa3DPf9h+QATGW4KQH+ps0l3MBrhIeAJPu1rmu4zmV2yN@vger.kernel.org
X-Gm-Message-State: AOJu0YwEVIq8YseqyptBDYA/zJ4XFAmWCV+3zq5KloQ6B2Snrx+PCntq
	pK/ckDsEjQO/OxhnLRTma8z1Q+ir4MGaie6qVSLVfLsLq06nsuROCizQyxsiYXTelyZHN1p7JIV
	IY6qE9kHoXZLClqjNxFb0mJpmzJadgUCzyLPPZUqW71RKzsGeJXR7an/nJl6WHe4=
X-Gm-Gg: AY/fxX7Js8rwFs71BK/CM+g+Q2cLQt1rYYWWXHtUXCvb3IDj4vZblEMk/D9apwJW8/P
	jTP2gomyZ2zN087ThYjEvMgeGTBxYIYdGnz8i/7rJswq/Fys6Ar8YOWxN/tRaSK+1uus5aViYJC
	+liJVJs7R8RPxsWJAKVlRxuSa3b9K0wxppd6nmvoJ9X2/mH3re9728FyQmJOmm9JwPo4+Wp6RuK
	uq9xdpQyRB1MzpQ57O0uyG7GU0AorwWytlIHUjyEEmDucEdQzqK9R9+11c8ugJ5qgKie76JE6RV
	AGoLLvu10PhqRzw+4YazeZOO0K6lGqivlEaJs82obVEUtYQKyjsiRVDGLlwWCMTgZroX2gqj5mo
	S
X-Received: by 2002:a05:6a00:368d:b0:81f:3b6e:21be with SMTP id d2e1a72fcca58-81f9f6850b8mr9116345b3a.11.1768820454512;
        Mon, 19 Jan 2026 03:00:54 -0800 (PST)
X-Received: by 2002:a05:6a00:368d:b0:81f:3b6e:21be with SMTP id d2e1a72fcca58-81f9f6850b8mr9116305b3a.11.1768820453951;
        Mon, 19 Jan 2026 03:00:53 -0800 (PST)
Received: from localhost ([209.132.188.88])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81fa10c03e1sm8433770b3a.22.2026.01.19.03.00.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 03:00:53 -0800 (PST)
Date: Mon, 19 Jan 2026 18:57:23 +0800
From: Coiby Xu <coxu@redhat.com>
To: Rob Herring <robh@kernel.org>
Cc: kexec@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	Arnaud Lefebvre <arnaud.lefebvre@clever-cloud.com>, Baoquan he <bhe@redhat.com>, Dave Young <dyoung@redhat.com>, 
	Kairui Song <ryncsn@gmail.com>, Pingfan Liu <kernelfans@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	open list <linux-kernel@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE" <devicetree@vger.kernel.org>
Subject: Re: [PATCH] arm64/kdump: pass dm-crypt keys to kdump kernel
Message-ID: <aW4Jq9on_4a5o5o7@Rk>
References: <20251226141116.1379601-1-coxu@redhat.com>
 <CAL_JsqLEsUV34tMZWSMc6w-xDV=M0JpOmS95TxrtbbBMRoD3Jw@mail.gmail.com>
 <aV49pPV3OViTDe8c@Rk>
 <20260114210859.GA3197242-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260114210859.GA3197242-robh@kernel.org>

On Wed, Jan 14, 2026 at 03:08:59PM -0600, Rob Herring wrote:
>On Wed, Jan 07, 2026 at 07:39:24PM +0800, Coiby Xu wrote:
>> On Tue, Jan 06, 2026 at 09:44:37AM -0600, Rob Herring wrote:
>> > On Fri, Dec 26, 2025 at 8:11 AM Coiby Xu <coxu@redhat.com> wrote:
>> > >
>> > > Based on the CONFIG_CRASH_DM_CRYPT feature, this patch adds
>> > > LUKS-encrypted device dump target support to ARM64 by addressing two
>> > > challenges [1],
>> > >  - Kdump kernel may not be able to decrypt the LUKS partition. For some
>> > >    machines, a system administrator may not have a chance to enter the
>> > >    password to decrypt the device in kdump initramfs after the 1st kernel
>> > >    crashes
>> > >
>> > >  - LUKS2 by default use the memory-hard Argon2 key derivation function
>> > >    which is quite memory-consuming compared to the limited memory reserved
>> > >    for kdump.
>> > >
>> > > 1st kernel will add device tree property dmcryptkeys as similar to
>> > > elfcorehdr to pass the memory address of the stored info of dm-crypt
>> > > keys to the kdump kernel.
>> >
>> > Is there not any security issue with putting the key into the DT? The
>> > DT is provided to userspace. There's provisions already to not expose
>> > "security-*" properties to userspace (see __of_add_property_sysfs).
>> > Though I think that has a hole in that the FDT is also provided as-is.
>> > However, I don't even know who or what uses these properties.
>> >
>> > Rob
>>
>> Hi Rob,
>>
>> Thanks for raising the concern! If I understand DT correctly, this
>> property is only accessible to the kexec'ed kdump kernel. A new DT is
>> allocated and set up by of_kexec_alloc_and_setup_fdt. Btw, to be
>> precise, it's putting the memory address where the key is stored but
>> not the key itself into DT. The key is stored in the memory exclusively
>> reserved for kdump. For more info on by who and how this property will
>> used, I've created a dt-schema pull request as suggested by Krzysztof,
>> https://github.com/devicetree-org/dt-schema/pull/181
>
>Okay, that's a bit less sensitive. That still could expose a memory
>address to user space which has generally been locked down in recent
>years. Though I'm not sure we'd consider addresses of blobs passed by
>kexec sensitive or secure.
>
>>
>> And yes, there is no need for even userspace of the kdump kernel to
>> access it. So this idea of "security-*" properties/__of_add_property_sysfs
>> seems desirable. Thanks for bringing it up! I'll give it a try.
>
>Since it is just the memory address, kdump just moving the key would be
>sufficient. Or the property can be removed early on. I think we do that
>with kaslr seed IIRC.

A security-* property is still exposed to user space. I think simply
removing the property is an elegant solution! It's also much simpler
than moving the key. I did a test and somehow wiping the old memory
in read_from_oldmem_iter made it fail to read the keys. So I'll apply
your suggestion of removing the property to next version. Thanks!

>
>Rob
>

-- 
Best regards,
Coiby


