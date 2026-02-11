Return-Path: <devicetree+bounces-264788-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id II4kFNKHjGmHqgAAu9opvQ
	(envelope-from <devicetree+bounces-264788-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 14:44:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B00E124E50
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 14:44:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4AAA5300830D
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 13:44:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8955C315D3F;
	Wed, 11 Feb 2026 13:44:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ammpMnLC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f52.google.com (mail-yx1-f52.google.com [74.125.224.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE252D8375
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 13:44:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770817484; cv=none; b=hjeW+JD15tpjavpS4dABssNTxSJVZKX7hIEL7M3/VmOrCgAaffn1mvQU81E07InzjNN+EYz1KkaK1VEEOkLxCLrQgUoeMVz+ppS8sai8pShjJ975m5waRtN+IhfcY5Zd6Ap5OjBY0OLTruz76Z+yXkZJcc8GEczAum9gchaW8w4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770817484; c=relaxed/simple;
	bh=/11VEqhwGxvQVfEDWs9HDEyvesu4S7SCHh6a817GTv8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sKg0fF5Q3FoB6DEv208LaRWHVHN2f5X48bPmn3AswmhCSW83WZEnwLab8PyX7hwusdf/xp3j6f0OqD0Eu9tBSTTTl6/UYYdl4OSwQGqnXlhcB5sR8NkG78NNoRg6SRIq7f8xYnVIyzgayz5XdAcx0dzV7Gd8DKq6n1rBHlqJwzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ammpMnLC; arc=none smtp.client-ip=74.125.224.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f52.google.com with SMTP id 956f58d0204a3-649e456e8a2so1876905d50.0
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 05:44:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770817482; x=1771422282; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=esoqYJ+UQfCawlbPhicOHbgq8QCm1eQe//LmcmVz62g=;
        b=ammpMnLCDSU8/925KEqywCJQsTU16jSgPFdnt9mJ+k0L7rENtPUwofJwfXkTYTXuBk
         ZyBIjIgQUvchWUetpkvugpujW27MetLsO6Gu5NqODvFCgnLEUshW1CK+YrQK2BO6v6kB
         zhlpNbr0Txdtg8XZr6MAQ8UQLECHH3bBQ+nqVZqZ5sKO4RQ7b/EiTAgSJtV3TQ4zIJL6
         suflbg/YZcdbs7l1SfutiXetl8YNeyd/2I+1OBUWdx447R/iq5CaK1YAogAUhMZjKhQJ
         lc7Pl3dvvROCpIyK6LDt32eFqIycoMnx6pnJPLxQrHkmeuIoGAzJ3NN6BWcI0xBC/H20
         qFpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770817482; x=1771422282;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=esoqYJ+UQfCawlbPhicOHbgq8QCm1eQe//LmcmVz62g=;
        b=Bv5PQa3tJXD+BLS3k/SY4GF9CHgUeZPeaeGtbDSTCTHnpKPBbjXQowH1hh+V5DzB6T
         WWdjonzA95a61WUHG4BldxJj1rK1M/tuXc50HidYYVImUtbLYbkyjMhpDdgW8DE+UcFV
         jSDwuhen7eBeHl3oKc5sTZhc5njpHxlSC8zSHrjYUcLeE16znXQ8ycw+MvVSiG2FFh50
         THIIIsJIRTJQkdZz3TGlBVC5n5tqeijvqxXB9lYHKUm+X8tZal1E9Nfc++f8B8jHur8m
         9uwG5dEI7CPIt62b+CZ65D46wj8rpd27XW2MYZAbKC5zSUUsyyOzy5z6el11XfJp5Hel
         AOQg==
X-Forwarded-Encrypted: i=1; AJvYcCXk5SwxA4YaQRplNOYjXzKYaDVCNJl/amgSTPGGvZmadTVaLgSllyi4ZQYz5qQYxGN8Rdyy0BwcyTt3@vger.kernel.org
X-Gm-Message-State: AOJu0YyykGLL1xXjNN3gM4cAdWCMRnnCmlS2tXjvbPCHIgqTiu2Vapv6
	ycf6tywOen/Q8Zr7ooL2YtGnIQuTUbzIr2S/9MIURPdaj6Qx21wJcu8U
X-Gm-Gg: AZuq6aJA252pj9Q1VhYt0J1Laq3lrA1Svn6nCl14oUFexcmMXoZIpEDvsk+RzFI+Y9C
	POugFwkGGEBZjI5hhuifM7eV4e4r/cOun4/aKeSCL7VwYxGL3MLeeuq6lTEh/uW9mDVD9nIXard
	DmmiAXQXTI4Fi1tfyfzcMGGRdeRH1E4E30JSOcOWQSdS9EymSEVO+ATcGBqXuVoLzXtiM8USCnG
	uBz8z3dY9KmEHnNz5lKbBE1jrM4uIoVRdmVRnzmYKmkXsEAkrJv27xB3BDAC+xMhHZMXXombqaL
	zADMeHELlK/f2ogu9V0wDeMsms7+1CwnZzrC2mYS4XoO7VfknfIzt0UAWmUtaifYl0EsvKB13gW
	2ns4qvr2/pn6mL+VOH7SN+t8RKTrO2TT0eRnjeGFI723+C7uHIoHj96/MSvxGasv9ND0CunVA5u
	cWSpy0NzZnieVZLzmOgH4m5KfLjQ==
X-Received: by 2002:a05:690c:9b01:b0:794:71b7:2adb with SMTP id 00721157ae682-7952ab24f48mr346147957b3.38.1770817482271;
        Wed, 11 Feb 2026 05:44:42 -0800 (PST)
Received: from [192.168.0.40] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7966c18bd49sm16215487b3.16.2026.02.11.05.44.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Feb 2026 05:44:41 -0800 (PST)
Message-ID: <59d12283-28c0-446e-b591-a7c3d022f50e@gmail.com>
Date: Wed, 11 Feb 2026 15:44:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: iio: light: vcnl4000: add Capella
 CM36686 and CM36672P
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Cameron
 <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Peter Meerwald <pmeerw@pmeerw.net>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org
References: <20260210-cm36686-v1-0-aef68dd46ad4@gmail.com>
 <20260210-cm36686-v1-1-aef68dd46ad4@gmail.com>
 <20260211-sceptical-frog-of-revolution-fc3cf4@quoll>
 <b95d7a49-6191-4d85-b725-4a941505b40d@gmail.com>
 <6f97c68d-0236-4d04-8199-768ecee7c4dd@kernel.org>
 <242d5502-bf58-4e25-8258-8a6c75ff3623@gmail.com>
 <aYyGIPNeHWpluaoF@smile.fi.intel.com>
From: Erikas Bitovtas <xerikasxx@gmail.com>
Content-Language: en-US
In-Reply-To: <aYyGIPNeHWpluaoF@smile.fi.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264788-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0B00E124E50
X-Rspamd-Action: no action



On 2/11/26 3:37 PM, Andy Shevchenko wrote:
> On Wed, Feb 11, 2026 at 03:32:41PM +0200, Erikas Bitovtas wrote:
> 
>>>>> Please implement previous feedback.
>>>>
>>>> Since I am making changes to the existing driver instead of creating a new one,
>>>> I introduced a new patch series. As I mentioned in the cover letter, cm36686 is
>>>> fully compatible with vcnl4040, so instead of creating a new binding, I create a
>>>> fallback compatible for the device. I probably should have named this patch
>>>> series something else.
>>>
>>> That's fine, but that's v3 of previous patches. Your work was to add
>>> CM36686 support. How you do it, evolves, but patchset/work is one
>>> continuous work. When you rework approach next time, you also start from
>>> v1? And then you go back to previous solution of new driver it will jump
>>> from v1 to v3?
>>>
>>
>> There has been a misunderstanding. I assumed that since I will no longer
>> be developing that driver, this warrants a new patch series. I apologize
>> for this.
>> Here is the changelog since v2:
>> - Remove the previous unnecessary proposed driver and bindings.
>> - Add a fallback compatible for cm36686 of vcnl4040.
>> - Add a new compatible for cm36672p.
>> - Add channel info for cm36672p.
>> - Remove redundant information in the dt-bindings commit message.
>> Here is the link to v2:
>> https://lore.kernel.org/linux-iio/20260209182432.00006c3c@huawei.com/
>>
>> I have received some feedback regarding the changes I made to the
>> existing vcnl4000 driver. Shall I submit the implementation of it as a
>> v3 to that series of patches?
> 
> I guess v4 would be better as this is assumed misversioned v3, if I got
> the situation correctly.
> 

Yes, I started a new patch series when I should have continued previous
one. I will submit an implementation of your feedback as a v4 to the
patch series I started initially. Thank you!

