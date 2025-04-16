Return-Path: <devicetree+bounces-166671-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A7BDA87FBD
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 13:52:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0F5583A89A5
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 11:52:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B411729AAF8;
	Mon, 14 Apr 2025 11:52:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="eGlky/3j"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1067326B971
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 11:52:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744631550; cv=none; b=rbuoPwkdKjT3ND8hNwplx8VgcU0bM4WFmtb1V5B+9Y+G9sGejNZ42jNcVnix82UmZwyBHCt70yryWEbM4TG/46byoWCRHZY9+B81bpWyWyTD6Wgj6F9dbzceWG0Z8HCCbZJWcv0aRxuLYWpqNq4+8b47HzlfEoEkrKvwE+FfH7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744631550; c=relaxed/simple;
	bh=D91Ia1pGKZJkmlOIZvvVBQnMUMbHaF4O3dvtsIBon9s=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=eHyx8aEfQBnPqRISgLrOUR7B/S6BoTkqXG02UB8ET8FfF9Zyx6JFr95Uvz+kuakmTHBmwLR/I0tGo2VZCgFZGg1/O4oaFSgk+xOzD6mo4sNkcHOnHlgsQY+QTX8D8Psosy7LPamb3LLK7MjwHy5XmdUY/XFT+nmDQrXmVm8Ipz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=eGlky/3j; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1744631547;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=00kkU7VDnxwaz8Oj1ywsgzfiYZTZml1BEDq6NOcZlJk=;
	b=eGlky/3jvTbC886gUPzWLGsfu79cIhV32NLIo0TL5wPB0rFuO146qaFJmCNYNIac0+Ox6E
	koLhGloZNGC4YkQQVi3CgJwwzhHwP8r9QIUYmdoSPzYZZwbnMp14FKfhjA+H0jSgC20rww
	gHObnWJSjdfB1al7LZJqWSotcL30L9c=
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-620-wGqhvCzaMKWjkn9M7OImMg-1; Mon,
 14 Apr 2025 07:52:24 -0400
X-MC-Unique: wGqhvCzaMKWjkn9M7OImMg-1
X-Mimecast-MFC-AGG-ID: wGqhvCzaMKWjkn9M7OImMg_1744631542
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id F2B3A180034D;
	Mon, 14 Apr 2025 11:52:21 +0000 (UTC)
Received: from [10.44.32.81] (unknown [10.44.32.81])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id 877E3180B487;
	Mon, 14 Apr 2025 11:52:16 +0000 (UTC)
Message-ID: <79b9ee2f-091d-4e0f-bbe3-c56cf02c3532@redhat.com>
Date: Mon, 14 Apr 2025 13:52:15 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/28] mfd: Add Microchip ZL3073x support
From: Ivan Vecera <ivecera@redhat.com>
To: Andy Shevchenko <andy@kernel.org>
Cc: netdev@vger.kernel.org, Michal Schmidt <mschmidt@redhat.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Jiri Pirko <jiri@resnulli.us>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Prathosh Satish <Prathosh.Satish@microchip.com>,
 Lee Jones <lee@kernel.org>, Kees Cook <kees@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
References: <20250407172836.1009461-1-ivecera@redhat.com>
 <20250407172836.1009461-2-ivecera@redhat.com>
 <Z_QTzwXvxcSh53Cq@smile.fi.intel.com>
 <eeddcda2-efe4-4563-bb2c-70009b374486@redhat.com>
 <Z_ys4Lo46KusTBIj@smile.fi.intel.com>
 <f3fc9556-60ba-48c0-95f2-4c030e5c309e@redhat.com>
Content-Language: en-US
In-Reply-To: <f3fc9556-60ba-48c0-95f2-4c030e5c309e@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93



On 14. 04. 25 1:39 odp., Ivan Vecera wrote:
> 
> 
> On 14. 04. 25 8:36 dop., Andy Shevchenko wrote:
>>> What is wrong here?
>>>
>>> I have a device that uses 7-bit addresses and have 16 register pages.
>>> Each pages is from 0x00-0x7f and register 0x7f is used as page selector
>>> where bits 0-3 select the page.
>> The problem is that you overlap virtual page over the real one (the 
>> main one).
>>
>> The drivers you mentioned in v2 discussions most likely are also buggy.
>> As I implied in the above question the developers hardly get the 
>> regmap ranges
>> right. It took me quite a while to see the issue, so it's not 
>> particularly your
>> fault.
> Hi Andy,
> 
> thank you I see the point.
> 
> Do you mean that the selector register should not be part of the range?
> 
> If so, does it mean that I have to specify a range for each page? Like 
> this:
> 
>      {
>          /* Page 0 */
>          .range_min    = 0x000,
>          .range_max    = 0x07e,
>          .selector_reg    = ZL3073x_PAGE_SEL,
>          .selector_mask    = GENMASK(3, 0),
>          .selector_shift    = 0,
>          .window_start    = 0,
>          .window_len    = 0x7e,
>      },
>      {
>          /* Page 1 */
>          .range_min    = 0x080,
>          .range_max    = 0x0fe,
>          .selector_reg    = ZL3073x_PAGE_SEL,
>          .selector_mask    = GENMASK(3, 0),
>          .selector_shift    = 0,
>          .window_start    = 0,
>          .window_len    = 0x7e,
>      },
> ...
> 
> 
> Thank you,
> Ivan
Sorry,
.window_len = 0x7f /* Exclude selector reg */

I.


