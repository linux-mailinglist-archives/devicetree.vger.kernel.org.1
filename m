Return-Path: <devicetree+bounces-168246-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E36A91F5F
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 16:19:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E280D3B17F7
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 14:19:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3343025228D;
	Thu, 17 Apr 2025 14:19:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="FQydcrTM"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7041D251791
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 14:19:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744899542; cv=none; b=pibfyBiKu9zvqe6OREXN0bCYfEYPU/9gDwmmQu8nVn7ZTEzN+P01Y5r0lFMKIN7C4g3YtO7VKMezx9L6uO0XsCU+Pfw+hm3f5Es9Ux4rCiOr5UW5EfnQ8I17BjeAfmCoPFHdlwarNEhavZs9DnZ9Tjq6ARJ35eK9tlmHRTHz7JM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744899542; c=relaxed/simple;
	bh=qquF4gAWxlLcl0NloBMan4FuZEm0GYnvDkpACC9vTGA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gRUw96X3A1+5Ic16e1yJBxz0e1uUT6bU/ocPWq8Ue98+CvErcWPPgajAbL+dKv9AunuVCvY/bP839vTbss4H974q6Ip/PTxQtkSq3IncukbVcsU3gJhzOUIHTSaiJ0I6eHAZB34QaNWrTStGYV6/beEiCD5cZfXOqVvsoqxi1wI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=FQydcrTM; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1744899539;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kzF6UYdjczKDEkThEfvJNGwHGPfnks2hj7tHch2bIQQ=;
	b=FQydcrTMTtFMmAfd4dS99d5AetbJ5dJfbe7nmWdSPnTE1vH7aF7jZ43kB1EhhEqAXGAvjs
	ufYxasqPUHMnSqw5Y9xgev4PkQa/bwMxcPzVansdRepjJiNluFt0Fbs7EvBvwmjfm9XJgj
	9/Ah0ABgsUmj8Nb0duAYrw23709oQDs=
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-450-XFk4lmz7PRSOlAP3HKoenA-1; Thu,
 17 Apr 2025 10:18:55 -0400
X-MC-Unique: XFk4lmz7PRSOlAP3HKoenA-1
X-Mimecast-MFC-AGG-ID: XFk4lmz7PRSOlAP3HKoenA_1744899533
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4AD4C180056F;
	Thu, 17 Apr 2025 14:18:52 +0000 (UTC)
Received: from [10.44.33.28] (unknown [10.44.33.28])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id E3CA419560BA;
	Thu, 17 Apr 2025 14:18:46 +0000 (UTC)
Message-ID: <ee0b1569-1c01-4e7b-b4a0-ec1de4634e89@redhat.com>
Date: Thu, 17 Apr 2025 16:18:39 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 net-next 5/8] mfd: zl3073x: Add functions to work with
 register mailboxes
To: Andrew Lunn <andrew@lunn.ch>
Cc: netdev@vger.kernel.org, Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Jiri Pirko <jiri@resnulli.us>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Prathosh Satish <Prathosh.Satish@microchip.com>,
 Lee Jones <lee@kernel.org>, Kees Cook <kees@kernel.org>,
 Andy Shevchenko <andy@kernel.org>, Andrew Morton
 <akpm@linux-foundation.org>, Michal Schmidt <mschmidt@redhat.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-hardening@vger.kernel.org
References: <20250416162144.670760-1-ivecera@redhat.com>
 <20250416162144.670760-6-ivecera@redhat.com>
 <d286dec9-a544-409d-bf62-d2b84ef6ecd4@lunn.ch>
 <CAAVpwAvVO7RGLGMXCBxCD35kKCLmZEkeXuERG0C2GHP54kCGJw@mail.gmail.com>
 <8802b276-b6dd-4235-87dd-18b835edb196@lunn.ch>
Content-Language: en-US
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <8802b276-b6dd-4235-87dd-18b835edb196@lunn.ch>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40



On 17. 04. 25 3:22 odp., Andrew Lunn wrote:
>>>> +/*
>>>> + * Mailbox operations
>>>> + */
>>>> +int zl3073x_mb_dpll_read(struct zl3073x_dev *zldev, u8 index);
>>>> +int zl3073x_mb_dpll_write(struct zl3073x_dev *zldev, u8 index);
>>>> +int zl3073x_mb_output_read(struct zl3073x_dev *zldev, u8 index);
>>>> +int zl3073x_mb_output_write(struct zl3073x_dev *zldev, u8 index);
>>>> +int zl3073x_mb_ref_read(struct zl3073x_dev *zldev, u8 index);
>>>> +int zl3073x_mb_ref_write(struct zl3073x_dev *zldev, u8 index);
>>>> +int zl3073x_mb_synth_read(struct zl3073x_dev *zldev, u8 index);
>>>> +int zl3073x_mb_synth_write(struct zl3073x_dev *zldev, u8 index);
>>>
>>> I assume these are the only valid ways to access a mailbox?
>>>
>>> If so:
>>>
>>>> +static inline __maybe_unused int
>>>> +zl3073x_mb_read_ref_mb_mask(struct zl3073x_dev *zldev, u16 *value)
>>>> +{
>>>> +     __be16 temp;
>>>> +     int rc;
>>>> +
>>>> +     lockdep_assert_held(&zldev->mailbox_lock);
>>>> +     rc = regmap_bulk_read(zldev->regmap, ZL_REG_REF_MB_MASK, &temp,
>>>> +                           sizeof(temp));
>>>> +     if (rc)
>>>> +             return rc;
>>>> +
>>>> +     *value = be16_to_cpu(temp);
>>>> +     return rc;
>>>> +}
>>>
>>> These helpers can be made local to the core. You can then drop the
>>> lockdep_assert_held() from here, since the only way to access them is
>>> via the API you defined above, and add the checks in those API
>>> functions.
>>
>> This cannot be done this way... the above API just simplifies the
>> operation of read and write latch registers from/to mailbox.
>>
>> Whole operation is described in the commit description.
>>
>> E.g. read something about DPLL1
>> 1. Call zl3073x_mb_dpll_read(..., 1)
>>     This selects DPLL1 in the DPLL mailbox and performs read operation
>> and waits for finish
>> 2. Call zl3073x_mb_read_dpll_mode()
>>     This reads dpll_mode latch register
>>
>> write:
>> 1. Call zl3073x_mb_write_dpll_mode(...)
>>     This writes mode to dpll_mode latch register
>> 2. Call zl3073x_mb_dpll_read(..., 1)
>>     This writes all info from latch registers to DPLL1
>>
>> The point is that between step 1 and 2 nobody else cannot touch
>> latch_registers or mailbox select register and op semaphore.
> 
> Again, think about your layering. What does your lower level mailbox
> API look like? What does the MFD need to export for a safe API?
> 
> So maybe you need zl3073x_mb_read_u8(), zl3073x_mb_read_u16(),
> zl3073x_mb_read_u32(), as part of your mailbox API. These assert the
> lock is held.
> 
> You could even make zl3073x_mb_read_u8() validate the register is in
> the upper range, and that zl3073x_read_u8() the register is in the
> lower range.

Yes, this LGTM... Anyway if the MB API would provide reading and writing 
MBs at once then zl3073x_mb_{read,write}_u* are not necessary as the 
only caller of these functions is MFD itself and they would be called 
under MB API that holds the lock.

Ivan


