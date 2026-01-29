Return-Path: <devicetree+bounces-260830-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2P0qLLQ8e2mNCgIAu9opvQ
	(envelope-from <devicetree+bounces-260830-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 11:55:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B7D6AF397
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 11:55:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BBEF3302D0A8
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 10:45:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31A323803C4;
	Thu, 29 Jan 2026 10:45:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="PxbBmVCk";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="Bewou8pX"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0F3733F8BC
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 10:45:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769683531; cv=none; b=alJ48m1ugsnHu/5q84KvaRulbUh+OY0u4M6aRlcGCJZAylF7Z4/JC//4pdFultMEUPgVQd/qeupOauKk7JFFvY/Vb8RY7EBPRetpCIvOfqgzqnApD//Hpte7Fm7kxU3/g/aO9WhZYJ2zm1vuu98lc3J1/832mYOpGJs1tDMIiRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769683531; c=relaxed/simple;
	bh=MyHtdtX/B2rQ2W+HO8YtwrvuToyHHH7NnBiH9yw3hXI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=d9d400nDatmF4nFddckZa9TZR2Dx0ovOB5sbMenUyPcLJBztfygAOFno5XKt/nB2tsS6behhay7Ks0VKU4ziKsdAOh2FnR+LQ6Kdeylqgwp1rYJpyiSddmogFP6HTW562W2Ku7HhZPLce3ZXinl7jmINDt2iFnLWW7YPl8IZmAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=PxbBmVCk; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=Bewou8pX; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1769683528;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=asMYvR4+8fIWZ4M/HFcAyNsDPqE2Xel47V6LP6IGUhQ=;
	b=PxbBmVCkBq7qenLF4pvlx+aSOr/cdjJkIqj36A8nc06m8l7MMTGWYS1KIrd1FDocxugPQt
	xS13ow5fd3Iu4lDzGf9v6O2T4H/jDLPIGK+yG/b368lPHEymlgxH6p1C4ewEfbLqQu5t+6
	kCw9qfhaT2YJs41ivXzuMwTpluaZspE=
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com
 [209.85.214.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-623-KMgDGui5P2SiOxTpvCcAZQ-1; Thu, 29 Jan 2026 05:45:27 -0500
X-MC-Unique: KMgDGui5P2SiOxTpvCcAZQ-1
X-Mimecast-MFC-AGG-ID: KMgDGui5P2SiOxTpvCcAZQ_1769683526
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a755a780caso13599925ad.0
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 02:45:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1769683526; x=1770288326; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=asMYvR4+8fIWZ4M/HFcAyNsDPqE2Xel47V6LP6IGUhQ=;
        b=Bewou8pXYZM0BBUgwJWtd2i+76ZVWimiBsSLlBPhD9/ADpTFIhtB/hVz7xqtQ6/Hno
         GaOLc9ye4zAK+uZghb1hZtdHsEqtK8sHSsOsQwLOf7WpGWiJwtmalj6HoSVkMtDyhzD0
         HmytcK9/cBB+4a/6oXFnDRcedElDEmsqD4Hu3VcuGvZDeoCj/SC/WoqtyKd437kS076e
         Gh6SKFIv+Yw92loMfDZgAc/r/vpgpK8ubA5i5GHdOeuO983JByaK/RAQ3k1OQErtVUOm
         N6Z9OdkHT45wPoOtpaEuqH95Sw5MLSiuxRmZryEn30d7je/u+lF9AW/CimsUnCHYbmhS
         45PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769683526; x=1770288326;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=asMYvR4+8fIWZ4M/HFcAyNsDPqE2Xel47V6LP6IGUhQ=;
        b=heC1VKePXThEJZZvRta9Gg3OGZl5sO7uWZqjQCsx+7oPLUA6uJB1WznAa0hBs5zKSL
         09BJqqjyaW2HhnMZmilrbaIr47zkncBO42x/vGqxs1Evn96KTkOKMtlgokrupaEvvp+2
         lHon5i0W09zT2hqt+QeLK63iSJaqZFm8Mem2briIZdr/MyuS2FCamCM9Vk/Cuhc4eZ4o
         oQA79A/lPdOXNhzWo+Y2h70EV5aSU2kgnOzHVDOgbtv4lf8bt8+8SoISwAcIBTmUKPyd
         r2w1eooEJLntMv3ZXonAd+m1M2AnjDgWFZtJ3jPX/CXc2AyeXP3wI5RAT0i5Z3zycX8b
         PrQA==
X-Forwarded-Encrypted: i=1; AJvYcCVyT0v8D/pAX5QEn1rGFC7Jo/9ISQPv++nWx1CB+xfqN5B3P5jSOX3bIItkWoC0RvGeFe8sJnk6+nXT@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8Bj51ldkPAxXqw514ZKUci2OGxNcc0mUp+ix53rzWBQohNKRc
	/slHL77pbUnEUcEebhdAGEQWTxxemE/seurGPSM0XfZXgEy/MtI5G3pBK78coxvIN84A39zDq+x
	wR8c06x9jz+j/b0goyb1ghV4ITC0OLJffVIU7/qr3vo4DKjuroDkznYP+38xWDL8=
X-Gm-Gg: AZuq6aKR08+4ZlQ5sAKQJ/ThDz8jBKlhDZDobS9ZXiRT7r42C1XzEj8536Ut3Oa9KKj
	S9TJJVfbRKXLTZf5igerWlG3o6kV1x6fuiuNfEooSZGhiskSVCbD0QmlDOUcmNI1FiIFs21+qj8
	/EYtP2h1jU66vFoDWa1WtT5OS4AJufe9Jm50JNyxW6oJLibKvnZpXvwo6KVSQUQxcm8pn2b4fet
	Nnfco0nYv7N+arGfeNq8la6Km4H6ugKzXA6KTYCcXwmTtpCp55UaTzR5/9X2r0IZp6sv2Xq3eZ8
	wUh0d2Xy5EuE+26MXp/tlnVteDlLl4Tm0XDkDz558FI5nUp4bkDHklLIOhw0UXJNqvnO3G741zn
	V
X-Received: by 2002:a17:902:e743:b0:2a0:f0e5:74eb with SMTP id d9443c01a7336-2a8bd51481cmr28168175ad.28.1769683525948;
        Thu, 29 Jan 2026 02:45:25 -0800 (PST)
X-Received: by 2002:a17:902:e743:b0:2a0:f0e5:74eb with SMTP id d9443c01a7336-2a8bd51481cmr28167925ad.28.1769683525347;
        Thu, 29 Jan 2026 02:45:25 -0800 (PST)
Received: from localhost ([209.132.188.88])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b426ae4sm46205555ad.43.2026.01.29.02.45.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jan 2026 02:45:24 -0800 (PST)
Date: Thu, 29 Jan 2026 18:40:23 +0800
From: Coiby Xu <coxu@redhat.com>
To: Will Deacon <will@kernel.org>
Cc: kexec@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	Arnaud Lefebvre <arnaud.lefebvre@clever-cloud.com>, Baoquan he <bhe@redhat.com>, Dave Young <dyoung@redhat.com>, 
	Kairui Song <ryncsn@gmail.com>, Pingfan Liu <kernelfans@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Rob Herring <robh@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Saravana Kannan <saravanak@kernel.org>, open list <linux-kernel@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE" <devicetree@vger.kernel.org>
Subject: Re: [PATCH v3] arm64/kdump: pass dm-crypt keys to kdump kernel
Message-ID: <aXs0UnFE1fEa8Yxu@Rk>
References: <20260123081326.1362666-1-coxu@redhat.com>
 <aXd72PcvvFsIFXO2@willie-the-truck>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <aXd72PcvvFsIFXO2@willie-the-truck>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260830-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,clever-cloud.com,redhat.com,gmail.com,linux-foundation.org,kernel.org,arm.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[coxu@redhat.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[redhat.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[clever-cloud.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linux-foundation.org:email]
X-Rspamd-Queue-Id: 4B7D6AF397
X-Rspamd-Action: no action

On Mon, Jan 26, 2026 at 02:36:08PM +0000, Will Deacon wrote:
>On Fri, Jan 23, 2026 at 04:13:25PM +0800, Coiby Xu wrote:
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
>> address of the stored info of dm-crypt keys to the kdump kernel. Since
>> this property is only needed by the kdump kenrel, it won't be exposed to
>> user space.
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
>> Cc: Rob Herring <robh@kernel.org>
>> Signed-off-by: Coiby Xu <coxu@redhat.com>
>> ---
>> v3
>> - Delete the property after reading it [Rob Herring]
>>
>> v2
>> - Krzysztof
>>   - Use imperative mood for commit message
>>   - Add dt-schema ABI Documentation
>>     https://github.com/devicetree-org/dt-schema/pull/181
>> - Don't print dm-crypt keys address via pr_debug
>>
>>
>>  arch/arm64/kernel/machine_kexec_file.c |  9 +++++++++
>>  drivers/of/fdt.c                       | 21 +++++++++++++++++++++
>>  drivers/of/kexec.c                     | 19 +++++++++++++++++++
>>  3 files changed, 49 insertions(+)
>>
>> diff --git a/arch/arm64/kernel/machine_kexec_file.c b/arch/arm64/kernel/machine_kexec_file.c
>> index 410060ebd86d..5f3bad8ca96d 100644
>> --- a/arch/arm64/kernel/machine_kexec_file.c
>> +++ b/arch/arm64/kernel/machine_kexec_file.c
>> @@ -134,6 +134,15 @@ int load_other_segments(struct kimage *image,
>>
>>  		kexec_dprintk("Loaded elf core header at 0x%lx bufsz=0x%lx memsz=0x%lx\n",
>>  			      image->elf_load_addr, kbuf.bufsz, kbuf.memsz);
>> +
>> +		ret = crash_load_dm_crypt_keys(image);
>> +
>> +		if (ret == -ENOENT) {
>> +			kexec_dprintk("No dm crypt key to load\n");
>> +		} else if (ret) {
>> +			pr_err("Failed to load dm crypt keys\n");
>> +			goto out_err;
>> +		}
>
>This looks like an unusual mixture of kexec_dprintk() and pr_err().
>
>Stepping back a second, why do we need to print anything from the arch
>code at all? It looks like crash_load_dm_crypt_keys() already prints for
>the -ENOENT case so I'd be inclined just to do:
>
>	ret = crash_load_dm_crypt_keys(image);
>	if (ret)
>		goto out_err;
>
>Will
>

Hi Will,

Thanks for carefully reviewing the patch! Yeah, crash_load_dm_crypt_keys
already prints for the -ENOTENT case, good catch! And it's also a good
idea to not let the arch code print anything since
crash_load_dm_crypt_keys is a better place. I'll make
crash_load_dm_crypt_keys print more logs and also return 0 for the case
of -ENOENT. This can make the arch code more succinct.


-- 
Best regards,
Coiby


