Return-Path: <devicetree+bounces-265559-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qJHYLnSmkGnzbwEAu9opvQ
	(envelope-from <devicetree+bounces-265559-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 17:44:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B3E13C85F
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 17:44:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 29D43301FA67
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 16:44:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DEB92FE075;
	Sat, 14 Feb 2026 16:44:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="cD+VED4p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8A7C1A9F96
	for <devicetree@vger.kernel.org>; Sat, 14 Feb 2026 16:44:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771087468; cv=none; b=q7YZR6K+jx9YCjxJB4VScJwXGNoNZUgJFQKwrOeTWW4uURxnBsgp6TfHhFE3a3Pu1m5vA5pZ33rVKmYdtNir/eP1/P/nd0LPRgHVasgR5FbBuJiIPcoesKdhE/M/kZZwOb3RA6ZbzX8Qv/rAnK1wKKTr1iMC81az2P1e2H+3ZhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771087468; c=relaxed/simple;
	bh=5M74aqtSckhkCFRe9Mo0Ybki6y+La8FS64rrC4ZViZA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=G6s7taaj94qO/YT5gtD97/lA02T0SNZAwNNG5LavjW2CtdSDSD3Vdt+FS5mc6CcZPamGdmwUdKyD/nzDGHMBQhsQdFzvOxUG3WKxwDm+vcdrlV4vS5p3WaDIskecFoQf8RnLENHgQIHpHqGlV6vVkiVnBHOuA++c67kP8YfNvwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=cD+VED4p; arc=none smtp.client-ip=209.85.210.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f45.google.com with SMTP id 46e09a7af769-7d18a9d2b1aso1849919a34.2
        for <devicetree@vger.kernel.org>; Sat, 14 Feb 2026 08:44:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1771087465; x=1771692265; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1f3FaAfJ8qGEhkE04fqgomCWXCa7hwpoZ04n55k5H08=;
        b=cD+VED4p1ADwFS8CCrEPkxelQtcgzzhxX4PQdh9iGp2MtE2TNrl8m++Qp7VPjzha18
         0kUpoHj2G48U7JmUGfGlDcztDmfm3S4nJBnAQl2dxqhI/jMjuUk6aY0VJpYnMsTjrSAX
         fZmQICX/572P8q8xP2BXloOasMscfHNgGKtdiZnJfoqDqBME4ps6T+K2VgO/kz62maKS
         QwI1lb5A/HGNps3KTTJzX6PbqAGDAMUha1mjoIWjbmUxFy+URY9fGg8LVea1e8q/PJAP
         yu2km6QKfhWXJL+EIRlGN1C3Z6KW+z13xPDFfmlL7znozugc4k19GtQrmUtONZpOmIKx
         9sdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771087465; x=1771692265;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1f3FaAfJ8qGEhkE04fqgomCWXCa7hwpoZ04n55k5H08=;
        b=R6Tz5Mug+ktQvgjmmUCH3sADnlAdo8iKy296n32Efhb4rhJ7i259bUsguUJ7eCV0IM
         yroE+6hxVoKSBwNQr5yTv9DrP3U7GEpackvcwQafUsZkc5HremBblw6grNIqOGzlUthe
         vGz3rFNcxrcOiQPB2UaWl420IHxU2u1ikVH5H7kwreTtu3oH48hdn4Go2zrjdtCEZtJh
         1qWPsV3yMhhsc8eDv7kEdC+QDzBKnK5k6JrJpHMf07Ua446e/wJdE8OFPIgLhRNOqsKq
         jexR3/wH1jm8ulFrdYNJDMRYlQE3CVfvi8Lvaw4q62WiUPKrQ96kB0D4Z0jfuLtdK6md
         V9dw==
X-Forwarded-Encrypted: i=1; AJvYcCUdfbn6OexI4Z5aDNtGfSfkZBrLxRUrvVxFuhyLZIeCkkjs3u+jB5w8UgRS5FaBiIVdDzKZb+Ksscvm@vger.kernel.org
X-Gm-Message-State: AOJu0YyDCbLC6Nwy/m+Aw+IPDyiXCPZiVCORcwHroNRixvtfibGMJhtK
	cJiFLOytHUSup1CvXxbr2e1jC6uhrY5UlhVzQLCMMoIshaL5Lqhg6fhWFFjQOZ9k3Qo=
X-Gm-Gg: AZuq6aLTQhyv9vUbZpUKpy+UCiXbg9+Ui4C6GDj0nr32lzaPaHbU1PONrOQSEWtzTmO
	q+kpiKRx93twvWqXQvwsYNC6x80SYF0rmHf02fXrP2nnO/SVIdJEREVoD+OG9L1feNDLhY2c5jC
	AfB4zti9JZtTaMlpzkVtUtGzOsYP993cL/RHUEPjfmzomh3pKu2TfVMRkyGs0K4PB+dSIUWVDA+
	VGgslrOTnvxAM23s//Uy7GwFgkPnFpGRf1yK2+wrtC5FDKR9zvJ33LU/H2Js+RLfKA6rSralv6J
	SFtuVyUcUH9PMpbHZmz9levXPfbovf5Ijhho+toE8ZiWJc1f8t9vx0cDeKse1IX2aCmH59ODq10
	+Jh1metnIe5dnvWrsr/U8ksB87QTIz+sVmS+LcHo7rpC3+RnMP2bH/VFE9yod80BoFos/oX4sry
	x74YytQfC38trGMiTT5gSsReiIAIMBenFO2f4ht8FeKcsfhaPZ31uFknu5MMWF4wCPTcpT2klO8
	JDj0HGi
X-Received: by 2002:a05:6830:2682:b0:7d1:95c7:f4cf with SMTP id 46e09a7af769-7d4c4a3becbmr3507186a34.14.1771087464786;
        Sat, 14 Feb 2026 08:44:24 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:109:393c:254e:962e? ([2600:8803:e7e4:500:109:393c:254e:962e])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d4a75309bcsm8641964a34.1.2026.02.14.08.44.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Feb 2026 08:44:24 -0800 (PST)
Message-ID: <880ddcad-a92e-43bb-ad5c-d6f2f353d182@baylibre.com>
Date: Sat, 14 Feb 2026 10:44:23 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: iio: light: vcnl4000: add Capella
 CM36686 and CM36672P
To: Erikas Bitovtas <xerikasxx@gmail.com>,
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Peter Meerwald <pmeerw@pmeerw.net>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org
References: <20260212-cm36686-v4-0-8f587d4a72bf@gmail.com>
 <20260212-cm36686-v4-1-8f587d4a72bf@gmail.com>
 <20260213-unyielding-pistachio-ape-deda74@quoll>
 <3a20c906-647c-458f-a118-c7927495e7ef@gmail.com>
 <8fb27a7a-82dc-443b-bcc4-21007783fc54@kernel.org>
 <f014078c-6e4d-48b0-a814-45898b005c44@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <f014078c-6e4d-48b0-a814-45898b005c44@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265559-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,baylibre-com.20230601.gappssmtp.com:dkim,baylibre.com:mid]
X-Rspamd-Queue-Id: 62B3E13C85F
X-Rspamd-Action: no action

On 2/13/26 2:56 AM, Erikas Bitovtas wrote:
> 
> 
> On 2/13/26 10:51 AM, Krzysztof Kozlowski wrote:
>> On 13/02/2026 09:29, Erikas Bitovtas wrote:
>>>>> Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
>>>>> ---
>>>>>  .../devicetree/bindings/iio/light/vishay,vcnl4000.yaml  | 17 +++++++++++------
>>>>>  1 file changed, 11 insertions(+), 6 deletions(-)
>>>>>
>>>>> diff --git a/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml b/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
>>>>> index 4d1a225e8868..2ba4d5de4ec4 100644
>>>>> --- a/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
>>>>> +++ b/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
>>>>> @@ -18,12 +18,17 @@ allOf:
>>>>>  
>>>>>  properties:
>>>>>    compatible:
>>>>> -    enum:
>>>>> -      - vishay,vcnl4000
>>>>> -      - vishay,vcnl4010
>>>>> -      - vishay,vcnl4020
>>>>> -      - vishay,vcnl4040
>>>>> -      - vishay,vcnl4200
>>>>> +    oneOf:
>>>>> +      - enum:
>>>>> +          - capella,cm36672p
>>>>
>>>> CM36672P is compatible with CM36686, but this is not expressed.
>>>> Confusing commit msg and code. 
>>>
>>> For CM36672P we create a dedicated compatible because it is a
>>> proximity-only sensor which has the same proximity sensor configuration,
>>> but ambient light sensor registers are missing (reserved).
>>
>> I don't understand this. You just wrote "fully compatible with CM36686"
>> and now you imply that not.
>>
>> Decide.
>>
> It is not. CM36672P supports only a subset of CM36686 features, in
> particular the proximity sensor. That is what I meant initially.
> I am sorry if the previous phrasing caused any confusion.

But CM36686 is fully compatible with CM36672P, right?

So this would make sense?

      - items:
          - const: capella,cm36686
          - const: vishay,vcnl4040
          - const: capella,cm36686p



