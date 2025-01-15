Return-Path: <devicetree+bounces-138782-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE73A12391
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 13:11:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0D1D37A20EA
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 12:11:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A82262139CB;
	Wed, 15 Jan 2025 12:11:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Uqm+0PNP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5BF12475CC
	for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 12:11:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736943094; cv=none; b=s5cqx4dnBJyzwKBS2C4QNay9lows96QmEk4fa0IGwYvXMW/qB3cbySN6KhQ8rrXY1y8od0ic+Bjc7SrQihe/I1lJdKbH0TXy0l4AR5JnC68s2hzDDPp0oTXLhm3SPRE5qUbnOy/Nl3oQv3ynDY5UH0NC5D+UU29y3FA7lj7om/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736943094; c=relaxed/simple;
	bh=tqsMzLKy6bs61gSygcl7f7EAPGHfBJv0JgULJ1Ym7Fs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KwGGWM2tV5eJbm3GXBvFCRDRn8caK69QjHUEDMMJUAaLYmhy7HrMz0wRw9k36E2y+oRgrXsNDospkGL5fvC0BSKZpJ5cVkuLtMKu64c+3VJL2jHRRkJOoscvBQb7rzvRc+8PFHLbeTgXwbdvWVfZTZ+hwfZJj1H9ArgUQJBPKaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Uqm+0PNP; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4361815b96cso46977835e9.1
        for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 04:11:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736943091; x=1737547891; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bH+qFIkzfP2ZdF0jKFR3toN5QXpPpNWnsi9wML2k+Rs=;
        b=Uqm+0PNPfVZD3mdKXZvFxy0tOjOmM1VOCjWw06tAlfOiw42Ssa/L70oDOy2EdVYGhN
         kyt3+BHSoiwLOlI094uLsfeH4u8xyzvz0I0E1JS9OXcRGxdrve5syCQk/IcInOF3DM1+
         BmagqKpLTuc9xe/Yc3B/452fo7mvIkb+/xWS17woziBdkdx31S67NJjantfhsL3zUKta
         I3uU03v0SrS9k/vc04F/8fRdCwRWIxoqFq9h4javXkPYAzYWFbAONoe7gizL+7TGEm2D
         drdixxE74uZGdXhjQT6FlW+/5vAEvvNDro2NQXTnRJ4VzztrDMMW9MupUJgBrlxqEJK9
         MQ/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736943091; x=1737547891;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bH+qFIkzfP2ZdF0jKFR3toN5QXpPpNWnsi9wML2k+Rs=;
        b=i1pJZYe08cEWZ9c4VHjFAYfM6MTX88jWmEdXrYr/VOXAWDvsn0IiHiiQhPuA+zA8K5
         0tGrBhbBDkLViMxrgNrOf7WjA38kv2fkMlYxau9B4F0/E0zAlq3P8XrZBEXnbgVKYLL9
         0yeWU9V+oRhP+RqgbXoYlOzzFW1d7tuiz349zGbJZYxn5sDIuKpWKeSxOhYVzrewIRga
         BacsKLEX9NRlfeaGEwGoS+8d/B2J/ULLL8Z40WrWVfiw1jqMdPR2HI2J0GACqK5vmZqg
         99FGrHhTtYExzrZIFcUj2xe1vaWhlYhAZsyoZb2Oi4rnAB/iQNYa01270+x4WRxI/VRz
         Nqig==
X-Forwarded-Encrypted: i=1; AJvYcCVZTGM0OyAcAqY+KULJ/wmCgf2gKQntYfJzG6/oJZB1gzGsbIr1lPkSUqWW22sn+hBvp1EXmIRdobFw@vger.kernel.org
X-Gm-Message-State: AOJu0Yw20cKcLYbeBKL8U37wW9QH5fqvRDzwOcVj4qxo0I/EDG74msTu
	gW/t4rQJZQrOnq+DrXXxBYjxLH1WWxcwPuqV9COuosr+vokKphqNGRTsiRdC/jc=
X-Gm-Gg: ASbGncsgHsroQ8UCWnG1A2bqU1NnLQ3GQH7d0593mHQrSCefElc7z5+K/zqFeYqbBZv
	+uezctXxk2WrccugoHJP2jYIrzxjaqk9umi3AyiWxt5s0u2AD94p1bm81E34P3BBTky/rDNnMOs
	MKK+YRAz2kY7aAiPewS4UEiGZItsyujJ4Xts176/qh7vLcVbqp1wNY5spNCN0p8kNbimSF7xWOl
	xQdkrdSIwouXZxYYaGqlWXda071xJzkKw1pi9SJzC0itqulzbOx2U/zm/VUqGAuBw==
X-Google-Smtp-Source: AGHT+IF67pKs8kpi+olSNlNu50s1yq8/8pWrqcBOcbOQ7vJkysvgsGhycYNComXSpVL3sZaZf36tsw==
X-Received: by 2002:a05:600c:3593:b0:431:6083:cd38 with SMTP id 5b1f17b1804b1-436e2696e93mr232743555e9.6.1736943090907;
        Wed, 15 Jan 2025 04:11:30 -0800 (PST)
Received: from [192.168.0.14] ([188.26.60.120])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-437c7499558sm21582055e9.8.2025.01.15.04.11.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jan 2025 04:11:30 -0800 (PST)
Message-ID: <41430496-14e9-4b17-9884-0e44e1731135@linaro.org>
Date: Wed, 15 Jan 2025 12:11:28 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/5] dt-bindings: mailbox: add google,gs101-mbox
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 andre.draszik@linaro.org, peter.griffin@linaro.org, kernel-team@android.com,
 willmcvicker@google.com, daniel.lezcano@linaro.org,
 vincent.guittot@linaro.org, ulf.hansson@linaro.org, arnd@arndb.de
References: <20241220-acpm-v4-upstream-mbox-v6-0-a6942806e52a@linaro.org>
 <20241220-acpm-v4-upstream-mbox-v6-2-a6942806e52a@linaro.org>
 <uo4zvw4sl6uxsj2ewvoue7l3obugivq5z74ukwnd4sj3ndtwhu@hxxque3r4nvb>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <uo4zvw4sl6uxsj2ewvoue7l3obugivq5z74ukwnd4sj3ndtwhu@hxxque3r4nvb>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Krzysztof,

Will send a new version soon, replying to confirm that I address the
feedback received.

On 12/22/24 8:44 AM, Krzysztof Kozlowski wrote:
> On Fri, Dec 20, 2024 at 01:49:57PM +0000, Tudor Ambarus wrote:
>> Add bindings for the Samsung Exynos Mailbox Controller.
>>
>> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
>> ---
>>  .../bindings/mailbox/google,gs101-mbox.yaml        | 70 ++++++++++++++++++++++
>>  include/dt-bindings/mailbox/google,gs101.h         | 14 +++++
> 
> Drop the header, not used.

not yet used in device tree indeed, will drop. I'll use driver
definitions for specifying channel types.
> 
>>  2 files changed, 84 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/mailbox/google,gs101-mbox.yaml b/Documentation/devicetree/bindings/mailbox/google,gs101-mbox.yaml
>> new file mode 100644
>> index 000000000000..a1fbc3b2b9de
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/mailbox/google,gs101-mbox.yaml
>> @@ -0,0 +1,70 @@

cut

>> +description: |
> 
> Drop |

okay

cut

>> +examples:
>> +  # Doorbell mode.
> 
> Drop comment, not applicable now, I think.

okay. Thanks!

