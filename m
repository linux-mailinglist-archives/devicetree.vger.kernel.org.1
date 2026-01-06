Return-Path: <devicetree+bounces-251809-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E218ECF7565
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 09:46:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 47C12302AE1B
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 08:45:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9031A2DC337;
	Tue,  6 Jan 2026 08:45:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="DbiDieSm";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="qYyXAf2o"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5B432D97B9
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 08:45:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767689128; cv=none; b=nh2fQ6Sb6tKAYRdVlO7xcfuxJZqzw1qwZB4TSxkPXZeys/4d30F+kidbJ2q+T/SMNZodvV71+v6FolRPmARP1R8cA4XRqMGyjZp6I5fpIUSKT9uGk72prqG5Gk+LIc43TQuRiw3MDetY2+it4EdUIU3fgFg0aPQgOhXi6UVWNGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767689128; c=relaxed/simple;
	bh=gbZHv5HI3Y324oqdQSOTmSB+nurFjxnA50wXe0YRjtw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GGEWwEWmVkpzzmKF+ujCdnL35NvEWCohyjVGDejkadbkhenip09gbZmQ3BPDMuU17OJVQeUDgXFknpJTCq2xAiLZiOa/55iqwuMRGZHoc69gCTx6RBKM0/jjPjRRqZgNpwbWnkCDnqdxad53XVwvjFG2hPLua//zkH3sK4vgDRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=DbiDieSm; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=qYyXAf2o; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1767689125;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=V867c7UphVGnIeOy7W0Ae1g0VsKH1KFb8UYnFs0q7vQ=;
	b=DbiDieSmctWQ0KsKtHuoEYG+eDwpL49L5DAiCPj47fdYKlOsMvSzBxCxkGbd6Ib74gNl40
	EOgXv+m7AEdMThezmAa6Lc5K6aGebPlzT9FIPB/VqPmdyCDQcFKx41vQWQwKV+f1gplfOK
	7/zeMQ0KMC37inaoxWOkO2h50XDmBWU=
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com
 [209.85.214.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-50-YMQ0X3WEOvWrm-GrEdX_eA-1; Tue, 06 Jan 2026 03:45:24 -0500
X-MC-Unique: YMQ0X3WEOvWrm-GrEdX_eA-1
X-Mimecast-MFC-AGG-ID: YMQ0X3WEOvWrm-GrEdX_eA_1767689124
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a0e9e0fd49so28227295ad.0
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 00:45:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1767689123; x=1768293923; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=V867c7UphVGnIeOy7W0Ae1g0VsKH1KFb8UYnFs0q7vQ=;
        b=qYyXAf2oSdSQl8Tx9zmdhOLDBkbuL66nAGp4qtUKXNtSkKq78ahwlW3OvAoP4Kjk1C
         P1NcOph9txEw80QLPGYdUf7QwkLAPnMEezy2YlapuLIBwk9BlqjadhI2yI7GWQOsmRSa
         jGKbjGysxSwo6hKr2NjIm7X5ImurV2S0ECtwfHZoenVTEFVHXCYolnJjjXeAtZbDIqrW
         IdFhj7/8tpbGTGIFmrPXEhxnd5m5RPHWOK7trYCdFe+RspiuISVK5eweNQvRqH3sDzON
         k62vyvA1b3pLq7+DCgxGEqXZpJtFQO2Xk/bHlDGRSF324rQwNWChUGZmYTJWOYpV8pqx
         bnjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767689123; x=1768293923;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V867c7UphVGnIeOy7W0Ae1g0VsKH1KFb8UYnFs0q7vQ=;
        b=apo/dGZ2Lyjr3vL6Ad9ED4KDyNb0H7ipllO8zUSw7SJbVJjQniSNvN3iz55pbG4wiW
         3KBdoHfcwjyBlMAPIr9aYazVWKN8Z+wqwAI/a5f7HBId0fQwazMgcJ1eeYt7ZlsYXR7B
         tKeagPfnY0DHZKTI6ftkqeYTjj3SH9doiKxgujJsU+OnR+q2w2AMlNHWqLj9m/CHZRla
         qL9UDGgVhAavsbsyvDsDmIUpWzPusW27owWDTkUiDuu7PXjGBFpcNrEYkKDPezo3B+3k
         WjR/tbVDEwiKexNLfsT+M3fr9xnOcY0PkHl95BWSM4fd7wuc5ZAfKFq1tAgONAz1+Qmv
         mehA==
X-Forwarded-Encrypted: i=1; AJvYcCXVz3WkJIDLnjfT6xZh2M/8GA91zAmlvI+I2J5t7Of5OGQnrzJTO2hj+0KDRKibHEZjs1H8CPtHgPaL@vger.kernel.org
X-Gm-Message-State: AOJu0YyaaHadlwAwrwO1DCoYyL8SYUx2qXQLOR42Gv8uIE8ZwOm4Mv6W
	Dx10nSH8bGF062MVsT8hW+PMP4zazzxitGoP+FFy6uaLraNFykq4wQsmTU/DHBucgCXvYH8R3g0
	D1QwX4BIEUx050XDoPNVIJaZzS/rRejKrPddXbplK73Wb6RsmoObyrpsgACTnO6TPvNr2OUEb/Q
	==
X-Gm-Gg: AY/fxX4fKqxVzAzohSj9xsgkHlTbe+pBEiRe882CtriL49Cp15ucvJi33v2AwIhn8Rk
	tmWdBrCdNG6O2bBwOBdXSBeSWVYUCyJtszcPey3XPW84BMhJ1dDNHVbKjWtjM523GsEsTTr8omG
	xtOzii6FVr5gVGtGpr3RR30MagnUAr0D1aIJqybxjkDOFtjrtdpLa2o7BY6QriT0tXkNLXIL2lK
	+2x0t0f6Nn3EXWt7KfMD6KT7SdjaymDZoLNYAiaYS0UCCdb2tY1+7S2PGkloD6rCD1V/hqYOtP0
	xe981Q0Gb7BkoIGBOR0NHaBP1+s5MWwRiCnFqDBVnTdsz01k/oVse9YbxDwem5QNHO2RW4GfzJI
	b
X-Received: by 2002:a17:902:e542:b0:2a0:acb8:9e80 with SMTP id d9443c01a7336-2a3e39fe508mr21175065ad.29.1767689122771;
        Tue, 06 Jan 2026 00:45:22 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHj87y/LvUuXsPTTHYyxl210tNMFszmP1mS+zOvYjb5dokYHtO6c1eZkb9GIqFdBLOfAwoSIw==
X-Received: by 2002:a17:902:e542:b0:2a0:acb8:9e80 with SMTP id d9443c01a7336-2a3e39fe508mr21174665ad.29.1767689122205;
        Tue, 06 Jan 2026 00:45:22 -0800 (PST)
Received: from localhost ([209.132.188.88])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cb2c0fsm15249925ad.66.2026.01.06.00.45.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 00:45:21 -0800 (PST)
Date: Tue, 6 Jan 2026 16:41:14 +0800
From: Coiby Xu <coxu@redhat.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: kexec@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	Arnaud Lefebvre <arnaud.lefebvre@clever-cloud.com>, Baoquan he <bhe@redhat.com>, Dave Young <dyoung@redhat.com>, 
	Kairui Song <ryncsn@gmail.com>, Pingfan Liu <kernelfans@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Rob Herring <robh@kernel.org>, 
	Saravana Kannan <saravanak@kernel.org>, open list <linux-kernel@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE" <devicetree@vger.kernel.org>
Subject: Re: [PATCH v2] arm64/kdump: pass dm-crypt keys to kdump kernel
Message-ID: <aVzFW1_32EwyE2kj@Rk>
References: <20251226141116.1379601-1-coxu@redhat.com>
 <20260106062231.448170-1-coxu@redhat.com>
 <20260106-mammoth-of-wondrous-blizzard-e30d62@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20260106-mammoth-of-wondrous-blizzard-e30d62@quoll>

On Tue, Jan 06, 2026 at 09:05:49AM +0100, Krzysztof Kozlowski wrote:
>On Tue, Jan 06, 2026 at 02:22:30PM +0800, Coiby Xu wrote:
>> CONFIG_CRASH_DM_CRYPT has been introduced to support LUKS-encrypted
>> device dump target by addressing two challenges [1],
>>  - Kdump kernel may not be able to decrypt the LUKS partition. For some
>>    machines, a system administrator may not have a chance to enter the
>>    password to decrypt the device in kdump initramfs after the 1st kernel
>>    crashes
>>
>>  - LUKS2 by default use the memory-hard Argon2 key derivation function
>>    which is quite memory-consuming compared to the limited memory reserved
>>    for kdump.
>>
>> To also enable this feature for ARM64, we only need to add device tree
>> property dmcryptkeys [2] as similar to elfcorehdr to pass the memory
>> address of the stored info of dm-crypt keys to the kdump kernel.
>>
>> [1] https://lore.kernel.org/all/20250502011246.99238-1-coxu@redhat.com/
>> [2] https://github.com/devicetree-org/dt-schema/pull/181
>>
>> Cc: Arnaud Lefebvre <arnaud.lefebvre@clever-cloud.com>
>> Cc: Baoquan he <bhe@redhat.com>
>> Cc: Dave Young <dyoung@redhat.com>
>> Cc: Kairui Song <ryncsn@gmail.com>
>> Cc: Pingfan Liu <kernelfans@gmail.com>
>> Cc: Andrew Morton <akpm@linux-foundation.org>
>> Cc: Krzysztof Kozlowski <krzk@kernel.org>
>> Signed-off-by: Coiby Xu <coxu@redhat.com>
>> ---
>> v2
>> - Krzysztof
>>   - Use imperative mood for commit message
>>   - Add dt-schema ABI Documentation
>> - Don't print dm-crypt keys address via pr_debug
>
>Your changelog should explicitly document that this has external
>dependency on dtschema pull request, so that maintainers know that.

Thanks for the lightning-fast reply!

And thanks for the reminder! I didn't know the dtschema pull request is
regarded as a dependency. Currently, I only add the dtschema pull
request URL to the commit message. I'll also include it in the
changelog.

>
>Also, in the future:
>Do not attach (thread) your patchsets to some other threads (unrelated
>or older versions). This buries them deep in the mailbox and might
>interfere with applying entire sets. See also:
>https://elixir.bootlin.com/linux/v6.16-rc2/source/Documentation/process/submitting-patches.rst#L830

Thanks for pointing me to the above documentation! I thought adding
In-Reply-To to the V1 patch can provide better context since it's a
single patch. It seems this is not true for Devicetree. Is it because of
the documentation change thus we should treat it more like a multi-patch
series?

>
>Best regards,
>Krzysztof
>

-- 
Best regards,
Coiby


