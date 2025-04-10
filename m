Return-Path: <devicetree+bounces-165617-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D1AFA84C2D
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 20:37:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 671914A8319
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 18:36:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5BD728F95B;
	Thu, 10 Apr 2025 18:36:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="ROqO2/Ts"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00E3C28F950
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 18:36:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744310186; cv=none; b=ZuOplLskAp/+7ncoBixDWQRKIUAPKdAxdNYEKSiRN+99NSW6vWKsZPHRhap2sJ5DX6FM7b87l3lphXXjyZEjGSXoV8hzCPm7XjFUCjxMJaRz05uZ15KlKfa1eP4nuktvcicqxsjP6ls2QusYGblPfvV2KMn712Pq2SiMFW7Ycps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744310186; c=relaxed/simple;
	bh=gsiyVW1Yfc9WfkHC1jIRHBJ57fHkbOis5KzpQmYh00Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cZh//In4Z0PStlpyC0PyX7eDfh6Ah+2Zd4DTae/kDnW15SSp2FPIt5prZ1+G6/vF2D9ZEu3W1GDD1GgTdG2CZclSNaBvvtwOQWUDp8UiQIOKGQxB2GTGnj1NDj7b5XCSgunYHgrmW9ShaE4ufZqQ7XjmBqEg7mHrDNJiM5hskAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=ROqO2/Ts; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1744310183;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+HsepqT10Fw1azidHuJqn95zBBJbAVhEbnOFVc3njv4=;
	b=ROqO2/Ts5dsqemsmasBgjubrWIVcY3hWiR6gIvS/fdjeDMcCKa1fOZ+3becg8GAceuT30M
	eGdZw44iZ3DS9KAtsNmZ0AFQ/s0/xc3Yj5TCj2YUoILXBsAhViFrlce1ryQqez7NZGOTGa
	JNQJiJYZ8P0x/qpCEC9DcbsSl0IgET8=
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-57-3vOrbziwNDO9tpTboEmlrQ-1; Thu,
 10 Apr 2025 14:36:19 -0400
X-MC-Unique: 3vOrbziwNDO9tpTboEmlrQ-1
X-Mimecast-MFC-AGG-ID: 3vOrbziwNDO9tpTboEmlrQ_1744310173
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1E39C1955D57;
	Thu, 10 Apr 2025 18:36:13 +0000 (UTC)
Received: from [10.45.225.124] (unknown [10.45.225.124])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id 6AA0B1955BCB;
	Thu, 10 Apr 2025 18:36:08 +0000 (UTC)
Message-ID: <f6078f2b-4c40-4ede-8325-37a2f3e27565@redhat.com>
Date: Thu, 10 Apr 2025 20:36:07 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 03/14] mfd: Add Microchip ZL3073x support
To: Andrew Lunn <andrew@lunn.ch>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Andy Shevchenko <andy@kernel.org>,
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
 <20250409144250.206590-4-ivecera@redhat.com>
 <Z_aVlIiT07ZDE2Kf@smile.fi.intel.com>
 <eecfb843-e9cd-4d07-bb72-15cf84a25706@kernel.org>
 <e760caeb-5c7b-4014-810c-c2a97b3bda28@redhat.com>
 <2b877823-a3d9-42bb-9b37-afc45180c404@lunn.ch>
Content-Language: en-US
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <2b877823-a3d9-42bb-9b37-afc45180c404@lunn.ch>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12



On 10. 04. 25 7:50 odp., Andrew Lunn wrote:
> On Thu, Apr 10, 2025 at 09:52:39AM +0200, Ivan Vecera wrote:
>>
>>
>> On 10. 04. 25 9:19 dop., Krzysztof Kozlowski wrote:
>>> On 09/04/2025 17:43, Andy Shevchenko wrote:
>>>>> +/*
>>>>> + * Regmap range configuration
>>>>> + *
>>>>> + * The device uses 7-bit addressing and has 16 register pages with
>>>>> + * range 0x00-0x7f. The register 0x7f in each page acts as page
>>>>> + * selector where bits 0-3 contains currently selected page.
>>>>> + */
>>>>> +static const struct regmap_range_cfg zl3073x_regmap_ranges[] = {
>>>>> +	{
>>>>> +		.range_min	= 0,
>>>>
>>>> This still has the same issue, you haven't given a chance to me to reply
>>>> in v1 thread. I'm not going to review this as it's not settled down yet.
>>>> Let's first discuss the questions you have in v1.
>>>>
>>
>> Sorry for that but I don't understand where the issue is... Many drivers
>> uses this the same way.
>> E.g.
>> drivers/leds/leds-aw200xx.c
>> drivers/mfd/rsmu_i2c.c
>> sound/soc/codecs/tas2562.c
>> ...and many others
>>
>> All of them uses selector register that is present on all pages, wide range
>> for register access <0, num_pages*window_size> and window <0, window_size>
>>
>> Do they also do incorrectly or am I missing something?
> 
> The bigger point is, you should of asked this as part of the
> discussion on the previous version. You should not post a new version
> until all discussion has come to an end, you understand all the
> comments, or you have persuaded the commentor that the code is in fact
> correct.
> 
> Posting more versions without having that discussion just wastes
> reviewers/Maintainers time, and that is not what you want to do if you
> want to get your patch merged.
> 
> 	Andrew

Yeah, excuse me.

I'm very sorry for this impatience.

I.


