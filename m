Return-Path: <devicetree+bounces-167369-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 47567A8A0DC
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 16:21:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 254D1172FE7
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 14:21:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 121C018E1A;
	Tue, 15 Apr 2025 14:20:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="eQFxmdii"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5216427FD70
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 14:20:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744726852; cv=none; b=LoKCTecbPoZiO4wrsAb0W3xKPtaQy7yVfPEteSbqXrEoU063M/4aatTkuVbmy2TSoTjSbzNyRWc7G5/JsewbwM7j8pHZ0WvoR2/Y5Dc1Z+XgZZgrxTlgyPsF17BRKFPzXSKqE/k5qfgtcLGvFmyuDzGBj3haljG4URhVuEJz0cE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744726852; c=relaxed/simple;
	bh=cwQOEcSZeCAijyUJW84gmALURPuFmOtOgI550pIO1BM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uSHR3mn1s/1NQIXSxTFl88Oaqc8AJKwMaVEnlPn2XMcH9R01yTDwKeowN5kqjU4Na4G0Cu26WFCNSHq6fVvnxEjJNRItn1PgW60O8Lfz4vMms09iSOeqye5GYzs60zX9xF4dMtD9yhD3tP6YhVzgfh8zngq9vkiaD7ROa2qwSMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=eQFxmdii; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1744726849;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=LhJ8etOVT0e0dERbm/nij8W1gSDN13mH7LedwU7K4EI=;
	b=eQFxmdiikfzWpLMTT3k0BS58CCAZBCn+pf7y9JBE6f5C54nitubUb5bEqAmWBDTTH6dRK/
	7oFxJu+k6VCQSxTjrnJ9F05d0p+807jGi3fR/a2QWcCvrsJ69SkQKaptY+JvfOGf2HCEki
	pL+d/EEjSMcLcKYJgm96RRHTJq0FRO0=
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-595-DXdQaDQOOR-mVA71-nnKJQ-1; Tue,
 15 Apr 2025 10:20:46 -0400
X-MC-Unique: DXdQaDQOOR-mVA71-nnKJQ-1
X-Mimecast-MFC-AGG-ID: DXdQaDQOOR-mVA71-nnKJQ_1744726842
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 17AA41954B36;
	Tue, 15 Apr 2025 14:20:42 +0000 (UTC)
Received: from [10.45.224.188] (unknown [10.45.224.188])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id 7AE90180175D;
	Tue, 15 Apr 2025 14:20:36 +0000 (UTC)
Message-ID: <6369999d-26cb-4e9b-b129-ed89abf35277@redhat.com>
Date: Tue, 15 Apr 2025 16:20:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 07/14] mfd: zl3073x: Add components versions register
 defs
To: Andrew Lunn <andrew@lunn.ch>
Cc: Andy Shevchenko <andy@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 netdev@vger.kernel.org, Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Jiri Pirko <jiri@resnulli.us>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Prathosh Satish <Prathosh.Satish@microchip.com>,
 Lee Jones <lee@kernel.org>, Kees Cook <kees@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Michal Schmidt <mschmidt@redhat.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
References: <20250409144250.206590-1-ivecera@redhat.com>
 <20250409144250.206590-8-ivecera@redhat.com>
 <df6a57df-8916-4af2-9eee-10921f90ff93@kernel.org>
 <c0ef6dad-ce7e-401c-9ae1-42105fcbf9c4@redhat.com>
 <098b0477-3367-4f96-906b-520fcd95befb@lunn.ch>
 <003bfece-7487-4c65-b4f1-2de59207bd5d@redhat.com>
 <8c5fb149-af25-4713-a9c8-f49b516edbff@lunn.ch>
 <9de10e97-d0fa-4dee-b98a-e4b2a3f7019c@redhat.com>
 <e1389e78-ead0-4180-a652-5dc48a691548@lunn.ch>
Content-Language: en-US
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <e1389e78-ead0-4180-a652-5dc48a691548@lunn.ch>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111



On 15. 04. 25 2:57 odp., Andrew Lunn wrote:
>> Hi Andrew,
>> the idea looks interesting but there are some caveats and disadvantages.
>> I thought about it but the idea with two regmaps (one for simple registers
>> and one for mailboxes) where the simple one uses implicit locking and
>> mailbox one has locking disabled with explicit locking requirement. There
>> are two main problems:
>>
>> 1) Regmap cache has to be disabled as it cannot be shared between multiple
>> regmaps... so also page selector cannot be cached.
>>
>> 2) You cannot mix access to mailbox registers and to simple registers. This
>> means that mailbox accesses have to be wrapped e.g. inside scoped_guard()
>>
>> The first problem is really pain as I would like to extend later the driver
>> with proper caching (page selector for now).
>> The second one brings only confusions for a developer how to properly access
>> different types of registers.
>>
>> I think the best approach would be to use just single regmap for all
>> registers with implicit locking enabled and have extra mailbox mutex to
>> protect mailbox registers and ensure atomic operations with them.
>> This will allow to use regmap cache and also intermixing mailbox and simple
>> registers' accesses won't be an issue.
> 
> As i said, it was just an idea, i had no idea if it was a good idea.
> 
> What is important is that the scope of the locking becomes clear,
> unlike what the first version had. So locking has to be pushed down to
> the lower levels so you lock a single register access, or you lock an
> mailbox access.
> 
> Also, you say this is an MFD partially because GPIOs could be added
> later. I assume that GPIO code would have the same locking issue,
> which suggests the locking should be in the MFD core, not the
> individual drivers stacked on top of it.

To work with GPIO block inside chip you use just simple registers not 
mailboxes. But it does not matter. The approach above exposes for 
individual sub-drivers an API (not direct usage of regmap (all registers 
are exposed by function helpers), helpers to enter/leave "mailbox mode" 
that locks/unlocks mailbox mutex)...

Something like this
{
	...
	rc = zl3073x_read_id(zldev, &id); // locked implicitly
	...
	scoped_guard(zl3073x_mailbox)(zldev) { // enter mailbox 'mode'
		rc = zl3073x_mb_ref_set(zldev, ref_idx);
		rc = zl3073x_mb_ref_op(zldev, REF_OP_READ);
		regmap_wait_poll_timeout(...);
		rc = zl3073x_mb_ref_freq(zldev, &freq);
	} // leave mailbox access 'mode'
	...
	rc = zl3073x_write_blahblah(zldev, value);
}

Thanks,
Ivan


