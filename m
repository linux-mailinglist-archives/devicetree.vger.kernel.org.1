Return-Path: <devicetree+bounces-272492-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cLmVNqVYrGnzowEAu9opvQ
	(envelope-from <devicetree+bounces-272492-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 17:56:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4355722CC28
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 17:56:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 67F7F30151CD
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 16:56:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CBBA329C71;
	Sat,  7 Mar 2026 16:56:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="uC2Zei7r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f41.google.com (mail-oo1-f41.google.com [209.85.161.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8446663CB
	for <devicetree@vger.kernel.org>; Sat,  7 Mar 2026 16:56:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772902563; cv=none; b=rSMJIXxVngRaYVYNclfAGnhnAKmmivKpT9jWORGlww1xlGUYjH+cZKXeJ93xc+JbDzcy1edQTd9+WGaDqs/4NGKDdbVxez/22Pm4tOODgW9T2igu1KSaP2fzhaQvDihWtBppm5u0++EU0yfxJ8x4rzlsDuHjrhepxHIr5nt7lp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772902563; c=relaxed/simple;
	bh=WPUg4rBGvjsjQn/sUqpjp7/URqmpCG9VUSIoqX5wYXM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kpAITFqlUusmCOIQGeoBDdyESgCBL2dT8OLcN86z5zCZOcFqbpYqcCDII45d31ujIH6dTVlnbUuNFj5HQc2Al1hTpaOiB1i5lbTHb5h57YLSdrcyi6w5lUYwcI915VlrL+CaC/qQyE4aaXZnQnuhBozwPH3XPyId604Qzp5/3IU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=uC2Zei7r; arc=none smtp.client-ip=209.85.161.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f41.google.com with SMTP id 006d021491bc7-679b072ed3aso6564932eaf.1
        for <devicetree@vger.kernel.org>; Sat, 07 Mar 2026 08:56:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1772902559; x=1773507359; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5Ex7K8txUyjeJezn3Qxas8NuzxfgLHxlDFDlvFe0P1w=;
        b=uC2Zei7rBYpxIyw2FyPRgPij58gwZLEED4OnkLuJExJcm0ju3w4lK+X/ea9MUQnigN
         ytQMShjLALBpTgnXjwnmyxUOtnIVkBUVFGykjJ0aH+/1Y+4Dn648O4wCKuVVT6vn/EQm
         PB1z0pQ070Qb/itmrfgiPSz2lQ8ARUQbm5umeJI+uQTMgP/GEOTr2pBCSueT4uMqkN0q
         UxJilm8RBjPxV/IWCPFIrRC6X773Hj+uOOFg1889h9E1ROufC50ilXNZ7NCGGKzClbLE
         /XPyPpt6wLWGolByzd39DJhOpLfONxcc+CZAeM8L8Zx+scQ8o5bBfBb9d9NUs1qqIKUY
         zyMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772902559; x=1773507359;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5Ex7K8txUyjeJezn3Qxas8NuzxfgLHxlDFDlvFe0P1w=;
        b=GAxKykNtmQHPhKWdleGoA9aHOWYfTMUYuF6/C2oRDMMNqJIo5n5HUWt10fQxxUJFIw
         if2erLUxboKUkiqOqw1Eoyd7Nt9egxdML7dRczTtuieo2a5jGZZesBOXnsDovLzXyN+7
         RaZR68VuIldvvaFCzhzqNYjD7rDWgtMjCctrgxDPIoqJoltzxYQEZGAQqwpaLYTZMdUS
         y44TpISuTanCuoVyYStMFWbE/bUrFUCw5lDQNiVUTKZoMqLkGyDz6EDa2RHtJIPSYct4
         iYu+LH33+uo7QBCNERc5hsaHNJ7SYtWg/MjaQF364wuw7Kt0nnNNtv/EEJQWgceWj3r+
         7Duw==
X-Forwarded-Encrypted: i=1; AJvYcCX6HuRJLX2PaVmEluHd1pS7deAedVFfeLz1o0i8s4mNh21FDhqLvnjLdhELM/QSYxu7y1MEcOd197/w@vger.kernel.org
X-Gm-Message-State: AOJu0YzXYo+PHZEWDlI6xqLGfw+WtlkEOiDStGTd8/8HGPnZwuj5tiao
	iHPdUIqFHaaci4/sjF1ouaaHW00l90jkdl1zAmoZ0hMh6KGrl/2B41wgfD/KEHog7qI=
X-Gm-Gg: ATEYQzzZzXifLMa8el5v3dcRS5Lp9D1PmNQ8buZaZ395I/Yldbs+h22fcweeBDa5sr+
	z47chJcpDvvIHMUEM9gm4IcDpaQ2HxTz09lylPmcL5HbllqiybNMHHZzAXKiO/UmLrMZ2oDwvf4
	UjH7lsTHYSf5l7xBkVsk3mamCNnH892SGNCF0Wx5qBInOd0ZS3WuB7LqWfMZefDXSIjBdS0KwVM
	MmupZNRbiPRNy1HhqQblTQbN9qlZ0BD6/vwSMqKjrDzqrURJ57KATGoSM1d30V+XTWNpgBx9RIR
	fhveKeEmQfS5rPOPA9GOjrSJwkwxJR4Ph1Z6BtaMNyoIbXujJ1bbCnWbQzEB9KBP5b6b1cCel32
	rpeO4kgCnw+o1XZxwBFf4nkWSaTfVY0x8QRuAtMrzNsPO0gCapilqbCWjPg8xvkgajPQ+6lttEa
	AoyxlbTyKj+WimU9J8REa+A1s0eXwWwbZWTgWlpKjami4ps3JGZECkcD2t7SW48M9w1Zsq1RDCI
	Q==
X-Received: by 2002:a05:6820:1b19:b0:67a:47b:59f8 with SMTP id 006d021491bc7-67b9bc4f1d5mr4002681eaf.11.1772902559376;
        Sat, 07 Mar 2026 08:55:59 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:cccf:5174:fa72:c520? ([2600:8803:e7e4:500:cccf:5174:fa72:c520])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-416e65b1be6sm4417071fac.7.2026.03.07.08.55.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Mar 2026 08:55:57 -0800 (PST)
Message-ID: <d0ec6a2f-6d30-4774-8950-15dd3c4b020b@baylibre.com>
Date: Sat, 7 Mar 2026 10:55:56 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: iio: proximity: add ST VL53L1X ToF
 sensor
To: Sirat <email@sirat.me>, Conor Dooley <conor@kernel.org>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, jic23@kernel.org,
 nuno.sa@analog.com, andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-kernel@vger.kernel.org
References: <20260303090253.42076-1-email@sirat.me>
 <20260303090253.42076-2-email@sirat.me>
 <20260303-strike-froth-a2e082b8b59e@spud>
 <CANn+LW+kWoTnw32Db_T4t4JCCcCRtUead53i5tmc7Xeme=9X-w@mail.gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <CANn+LW+kWoTnw32Db_T4t4JCCcCRtUead53i5tmc7Xeme=9X-w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 4355722CC28
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	TAGGED_FROM(0.00)[bounces-272492-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.977];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre-com.20230601.gappssmtp.com:dkim,baylibre.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

On 3/3/26 1:49 PM, Sirat wrote:
> Hi Conor,
> 
> On Wed, Mar 4, 2026 at 1:12 AM Conor Dooley <conor@kernel.org> wrote:
>>
>> On Tue, Mar 03, 2026 at 03:02:40PM +0600, Siratul Islam wrote:
>>> Add device tree binding documentation for the STMicroelectronics
>>> VL53L1X Time-of-Flight ranging sensor connected via I2C.
>>>
>>> Signed-off-by: Siratul Islam <email@sirat.me>
>>> ---
> 
>>> +  vdd-supply: true
>>> +
>>> +required:
>>> +  - compatible
>>> +  - reg
>>
>> Are you sure the supply is not mandatory?
>>
> 
> It is mandatory. The driver uses non optional devm_regulator_get().
> Will make the binding
> match in v2.
> 
> Thanks,
> Sirat

From the point of view of the devicetree, it doesn't matter what
the driver does. It matters that the chip can't work without
power. ;-)

