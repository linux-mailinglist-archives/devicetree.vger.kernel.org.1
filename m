Return-Path: <devicetree+bounces-67317-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 60CFE8C7780
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 15:21:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CD0331F220A7
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 13:21:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 520361474BA;
	Thu, 16 May 2024 13:21:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="P0SF3w0u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72E14145FE8
	for <devicetree@vger.kernel.org>; Thu, 16 May 2024 13:21:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715865709; cv=none; b=KvYsavJxkZ+ftgyKmaiLmHHm1sOXQYDsnfh39cjKN6++Xqre6Ib9mGXH0aW9zmUQ6p0ORLopHJcUdCtfRPFc4X9lLY7Qn2MDMXs0tNXBIqs4SqmvRDhu5LF01WD1zFuTkwu/bORLzx5PqEA08AyF7U+kCnv0zLfGETEnMmWPsrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715865709; c=relaxed/simple;
	bh=Ktri3O+y1JiTtE3Cd6eQ+A0O7nMjt46pOkSdqwviEaU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hP4aU5pkLVAnx2dxPkaMptga8tLXNJMVz1JDR7bvCC/4Pnp8VR2DSak9L9Ni3vDTszUx8UQuw1f9qGJAfyeNTqk+JFc0YKzt1JwkzKW+zeAJEhZ1h+TIMmrZmqU2+w8DlgUx3mTS0wWdagHObjpvdZRmGMorZm2z/PoMLxtNQ/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=P0SF3w0u; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2e576057c2bso12238691fa.1
        for <devicetree@vger.kernel.org>; Thu, 16 May 2024 06:21:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1715865704; x=1716470504; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yrv6VISaglcxTRZ/0ZiSzXEYQeCVDXkyflKgtaSfATY=;
        b=P0SF3w0u3a+l7fTTDKSEKu6EFYWycGCuNei77XVOMoVdwar70SSZolCqX3wQ5DjSfo
         mQ+50x1chol0JtZX/wNuriJmNW80GEz/jU0BxjJOI5nNFpPJx8FLTyqcoE3XZDigBGZD
         vCqrJLRZmtUrYpr266fWAG/rBpJ8uBmWYgCOTBd9BFxIhI3OXGp6LI/q2tVCJMVbc67p
         mefFW3XFiLhz12ztEQSt62DM6wl9+JssmkmpTUIdNVrHPapVfYASNrztHlcC+bAYKaJJ
         6yU3femh5vz3QhHpYF9Lv0TAUSR7htVg9GSpPRLsaZJXwiuhLTCY98rEUleRKyViDoWm
         5oew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715865704; x=1716470504;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yrv6VISaglcxTRZ/0ZiSzXEYQeCVDXkyflKgtaSfATY=;
        b=OL3XNbYZ/QHTDIAXB63ajgD8E8JjMcR+URqX3mj7CV8T2Omaq1DZ+OvFSlSK82A0BM
         Kp/0WaLs8CYQsYPDorw280+HKIuZWqqNk9s01gs1nExn1nHLv6QS8xLQ9quDG1n9ZKdu
         lBxaFjHupqeFox/4bJSFpYFv9Nazx+4/VCUPQYzRDmSpYRqIjZcOAHfXDFG7xMVvr+QH
         siLro+IAv1CnplSO8nrxY/f/aND4S6csP9pQER0hzJKJOJ+ZQKBbE0ZKUjThTWOrlUm7
         miAwhyuOU8SwB7EcytdTCmTpyGPcKzbNYGFFj2DsDke1+U5Qx7jfIBzk8sX0GclDfYDR
         dvRQ==
X-Forwarded-Encrypted: i=1; AJvYcCVDhbV4n6sOCj/dRERFqiwVxHkQ4rvAUm5M6XTTx5cUDQrPCjPFxjzSlI3LWlwpqnaHRUxNrzng+Ft2hduBIRDGG9UHtzOcKgumZg==
X-Gm-Message-State: AOJu0Yzw0M/VuFF3y6EGgt0hW4pvL7oCtsR1EOoN7zowZHwIvwey2UrU
	Y2Re+0JS6HgS1LOdwKo83PpRyB5b/hPe4w3Mtacrvzbe1AHYoIXqy+BXk5dSz40=
X-Google-Smtp-Source: AGHT+IGPzxjcYgd94UKow7Dij1TOsrAaSOrA+bVuaeThwzPzNBvd6EdpewP4a0WRZZ0zr9KYdakxCw==
X-Received: by 2002:a2e:b385:0:b0:2e1:9c57:195a with SMTP id 38308e7fff4ca-2e52028921amr159361861fa.32.1715865704467;
        Thu, 16 May 2024 06:21:44 -0700 (PDT)
Received: from [192.168.0.2] (host-79-16-6-145.retail.telecomitalia.it. [79.16.6.145])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-41f882086f0sm306095145e9.42.2024.05.16.06.21.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 May 2024 06:21:38 -0700 (PDT)
Message-ID: <2699ec89-29a1-4b9d-b3ec-7792713041c4@baylibre.com>
Date: Thu, 16 May 2024 15:20:57 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: iio: dac: add ad35xxr single output
 variants
To: Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 nuno.sa@analog.com, lars@metafoo.de, Michael.Hennerich@analog.com,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240510141836.1624009-1-adureghello@baylibre.org>
 <CAMknhBFUUCvxbuHz0pPKd-KBcG3zfXNr8wu=AnrZx0C495RKOQ@mail.gmail.com>
 <20240511170529.742e6e6f@jic23-huawei>
Content-Language: en-US
From: Angelo Dureghello <adureghello@baylibre.com>
In-Reply-To: <20240511170529.742e6e6f@jic23-huawei>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

On 11/05/24 6:05 PM, Jonathan Cameron wrote:
> On Fri, 10 May 2024 10:39:31 -0500
> David Lechner <dlechner@baylibre.com> wrote:
>
>> On Fri, May 10, 2024 at 9:19 AM Angelo Dureghello
>> <adureghello@baylibre.com> wrote:
>>> From: Angelo Dureghello <adureghello@baylibre.com>
>>>
>>> Add support for ad3541r and ad3551r single output variants.
>>>
>>> Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
>>> ---
>>>   .../devicetree/bindings/iio/dac/adi,ad3552r.yaml       | 10 ++++++++--
>>>   1 file changed, 8 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/iio/dac/adi,ad3552r.yaml b/Documentation/devicetree/bindings/iio/dac/adi,ad3552r.yaml
>>> index 8265d709094d..17442cdfbe27 100644
>>> --- a/Documentation/devicetree/bindings/iio/dac/adi,ad3552r.yaml
>>> +++ b/Documentation/devicetree/bindings/iio/dac/adi,ad3552r.yaml
>> It would be nice to also add the datasheet links in the description.

ack,


>>> @@ -19,7 +19,9 @@ description: |
>>>   properties:
>>>     compatible:
>>>       enum:
>>> +      - adi,ad3541r
>>>         - adi,ad3542r
>>> +      - adi,ad3551r
>>>         - adi,ad3552r
>>>
>>>     reg:
>>> @@ -128,7 +130,9 @@ allOf:
>>>         properties:
>>>           compatible:
>>>             contains:
>>> -            const: adi,ad3542r
>>> +            enum:
>>> +              - adi,ad3541r
>>> +              - adi,ad3542r
>>>       then:
>>>         patternProperties:
>>>           "^channel@([0-1])$":
>>> @@ -158,7 +162,9 @@ allOf:
>>>         properties:
>>>           compatible:
>>>             contains:
>>> -            const: adi,ad3552r
>>> +            enum:
>>> +              - adi,ad3551r
>>> +              - adi,ad3552r
>>>       then:
>>>         patternProperties:
>>>           "^channel@([0-1])$":
>>> --
>>> 2.45.0.rc1
>>>
>>>   
>> Since these are single channel, it would not hurt to restrict the
>> `reg` property of of the `channel@` nodes to 1.

ack,


> Ah. I missed David's email because threading goes weird without a cover letter
> and hence duplicated his comment.
> Please add a cover letter with a brief description of the series to
> your v2.  Means we get a nice title in patchwork as well!
>
> Thanks,
>
> Jonathan
>   
>
Thanks for the feedbacks, will fix all in v2.

Regards,
angelo



