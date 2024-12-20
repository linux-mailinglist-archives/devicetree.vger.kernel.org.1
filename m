Return-Path: <devicetree+bounces-132961-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 049629F8D6F
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 08:51:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6A06116336E
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 07:51:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A2AC199E84;
	Fri, 20 Dec 2024 07:51:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BUhZPMgB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67E1015689A
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 07:51:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734681098; cv=none; b=XODNP4VgOnJn0XTIqINCESzsAmNMZFLwgR6Q4G6TbWxhj6lkL+i0VH/1c85wiCeKT8vvZg0LFFVplt3p3btbnkgxC+VgGD1oXu3ZRW5xdLn4LWxO6HiIoGZx1KWUvxLkmHIP3cfyn90pZhYOnuapD4KnV4o5ynEE7BID0QhSXrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734681098; c=relaxed/simple;
	bh=OkhxNHA3+1HeXND2fLL7BiKnkbPD6f7VLBpp4jFIE9I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FnrAKh4pzEOIIRWoxGQaHdn5aMTp/8OiYi31U4sXq3VfsiKBmZA3mXg3/MxoAMooN61tSj9NtlZ2B+9tCWZkT96LzWNrt/jNe7/qdNwWeKrT0b383EV4r6vFBy4pgxWV328EURHk4vubKLW6P+cKMy4875Vunqf9gWbFAv7r8fI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BUhZPMgB; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5d34030ebb2so2566351a12.1
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 23:51:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734681095; x=1735285895; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1yDNEjeOXhSBQxVpqQzt29i9g5xlvEhh8lAhoI+DC6A=;
        b=BUhZPMgB+pTKuonASRxgax/MwsDc/6h6DZLcwbGWsjU9+g+pw462OQMFWOVvjE7tbg
         ZIIFtVyPtL1g93g270N6dg/9o4AXQzns62VBEjUpOVBDIFpvka7AF3qIoK2O5rIxMN9t
         U5YB9OOVCibTQ+vzlL6HcxsS2FWUzhfwS9bg7wYyGukKuhqfLga8g0JCvq+ZuTIAjXIZ
         Q/5rpIrI/Z/iaTzhdMLzIs27mC4LWPRqztN9O0dwKT9bX+wAXBXZaGqoveWgBCa8+S6A
         aN5XFfafQqTbwgJ2pu/fixzRZlEx0SX9VH9jDBUgDsnTgOKRUed1WMLtiK1JxJrGa1cr
         g4DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734681095; x=1735285895;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1yDNEjeOXhSBQxVpqQzt29i9g5xlvEhh8lAhoI+DC6A=;
        b=afbv289lSvtQwP8wAKz11QeIof5IRFfpxEPblVaab+qUTVMUr34RXl65ozc/U373hM
         kca6Zt/EmVxfWP/NMxHMQ3g5OFtScpHopzy8mrtdnRfmclgE93zLolqxy59p2GgdGAEB
         T3nfD++DJOYlhqQ5VTSCcVVD81Rso8FLhlFpGCp55117szcfa6ufd5Gcc3qeZ8hZNcXk
         BWD4NoFCUYMYYa9aK2zjYrKUVZHPHQysMpOFpusd8Sspu7pPXf/bQSO9Mt+1k7GAL5O0
         sNp6qPVUdwqMm9Kfyxn9mo1CcuIQiyenTor9U3EBd3J6fu4wII6FqOdqCLT2bw/6kBeO
         a8aA==
X-Forwarded-Encrypted: i=1; AJvYcCU45JduPBrVAFXWb5kfXB2eb1GEnAobh7PyiOFUu7ubA687PfukFvOkcL+kkzbMKD9zlfXv5I7k1Pjp@vger.kernel.org
X-Gm-Message-State: AOJu0YyNCdS32f1y3dzMtTXTqYSL/4ch+V+VGztf7i/TMeCbSR/DvIbg
	GdxEDGZWV/+9khgXRXLo2IfC1BkKUNJMa0pqgFJRqJt6Wz8T9WFfL0egu+JxGKc=
X-Gm-Gg: ASbGncvKpHKF2W6HRGh1ScCcjv6wDoztDvxbpImOajd49bvm9mg+DEQy/hYN/wDHb0p
	p5guzCDoWcr67z6mASZR8hbiSAU5KP5CA685lv9MA6+RmIj9NYy2nhryy5NE/fwiSNv8MjDEZCV
	ZrB4A9N9KOtuPr8wYMy30uHka5fmYF3xdHQzhMZ3hQf57kGySmta/O8gdNg3tHu9rRQU9BQcAZc
	KBLLGLJoXLjupAVJx/Iu5SKqAW40OGol+zyhUC9aHcl3ozEg6/mgqo7n+UfjbgD
X-Google-Smtp-Source: AGHT+IEI1vajsERhxoY7nkjgpoa5z0LmbYvw4+7EEXmu89uOcdENi+jRRpqlKSn6v1OKOHvsdYTmuw==
X-Received: by 2002:a05:6402:518f:b0:5d0:b51c:8478 with SMTP id 4fb4d7f45d1cf-5d81dd7f300mr1334456a12.12.1734681094719;
        Thu, 19 Dec 2024 23:51:34 -0800 (PST)
Received: from [192.168.0.14] ([188.26.61.92])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d80675a41esm1450399a12.1.2024.12.19.23.51.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Dec 2024 23:51:34 -0800 (PST)
Message-ID: <463d5955-a056-40e1-a46e-f89ac0dadccf@linaro.org>
Date: Fri, 20 Dec 2024 07:51:32 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: mailbox: add support for referencing
 controllers solely by node
To: Conor Dooley <conor@kernel.org>
Cc: Conor Dooley <conor.dooley@microchip.com>,
 Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, andre.draszik@linaro.org,
 peter.griffin@linaro.org, kernel-team@android.com, willmcvicker@google.com,
 daniel.lezcano@linaro.org, vincent.guittot@linaro.org,
 ulf.hansson@linaro.org, arnd@arndb.de
References: <20241219-mbox_request_channel_by_args-v1-0-617a6910f842@linaro.org>
 <20241219-mbox_request_channel_by_args-v1-1-617a6910f842@linaro.org>
 <20241219-recent-everyone-865b19864693@wendy>
 <d9e635c8-de05-4812-bf2b-11651f6da5c1@linaro.org>
 <20241219-strum-cheese-89e5e60d22c3@spud>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20241219-strum-cheese-89e5e60d22c3@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 12/19/24 6:58 PM, Conor Dooley wrote:
> On Thu, Dec 19, 2024 at 03:42:11PM +0000, Tudor Ambarus wrote:
>> Hi, Conor,
>>
>> On 12/19/24 2:11 PM, Conor Dooley wrote:
>>>> There are mailbox clients that can discover the mailbox channel ID at
>>>> run-time. For such cases passing the channel identifier via DT is
>>>> redundant. Add support for referencing controllers solely by node.
>>> I don't really get your implementation, why not just allow #mbox-cells = 0?
>>> That's what's done for things like fixed frequency clocks that only have
>>> a single output.
>>
>> Ah, indeed!
>>
>> instead of:
>> 	of_parse_phandle(dev->of_node, "mbox", 0);
>> I can do a:
>> 	of_parse_phandle_with_args(dev->of_node, "mboxes",
>>                                    "#mbox-cells", 0, &of_args)
>> where #mbox-cells = 0;
>>
>> Or ... can I pass NULL for cells_name and make the #mbox-cells property
>> optional and still keeping its requirement of being at least 1?
> 
> I think the mbox-cells = 0 approach is preferred, that property is what
> marks it as a mailbox controller after all. Perhaps Rob or Krzysztof can
> comment?

I think using mbox-cells = 0 is better indeed. In my proposal I
considered the list to always have a single phandle, thus a reference to
a single mailbox controller, whereas it may be possible that clients to
reference multiple mailbox controllers. If so, #mbox-cells needs to be
defined in all the controllers, for consistency reasons, similar to what
happens with fixed clocks, as you already mentioned.

Thus I'll change the method to:
struct mbox_chan *mbox_request_channel_by_args(struct mbox_client *cl,
                       int index, const struct mbox_xlate_args *spec);
and use of_parse_phandle_with_args() in it.

Thanks, Conor!
ta

