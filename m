Return-Path: <devicetree+bounces-265665-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id V/FXHpDTkmnsygEAu9opvQ
	(envelope-from <devicetree+bounces-265665-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 09:21:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA131417EB
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 09:21:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E8E2F30097DF
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 08:21:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AE952EC0AE;
	Mon, 16 Feb 2026 08:21:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BT6IR6tG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f49.google.com (mail-yx1-f49.google.com [74.125.224.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B70A2475E3
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 08:21:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771230092; cv=none; b=knxARaAnYtgfGWxut3IXkcHkD0YfcMk2Gg/jw3uPLb61SgcNLTbJOb5+3Nhcv7I1NwOaSrCXzFOLTJi7scT00umh4uSuyrlp59BxqZ/6dkqM0AY+c4Cq2tJRkcj3v0oQAY7ZThsWNyjVvGtuaoMqcQvgApsfbhbF0kzZ06huShc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771230092; c=relaxed/simple;
	bh=LmoIiNsEzfLbIC3836JjpjSfjkTK72m98YA7I3RTuXw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=udRXFlhcj6sXO4thsIw1J5F9wO9zztWAb9n39ONGUSV6ateviFByXTFUXI4mAXaRZki+bci137vur3IWa3sx73glFNF/d6U+RVb9EiAhWh9yElkV0famaw29VQ6bdx3JFH1fu9Q0/MU8GWnJmom6VPSf7IJh+BzlK7vJ9XiKCko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BT6IR6tG; arc=none smtp.client-ip=74.125.224.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f49.google.com with SMTP id 956f58d0204a3-64adabaafd6so2512023d50.0
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 00:21:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771230090; x=1771834890; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=z8E3oN62iqBuReJ1CGIN4gkipeARNhtk8Z1Vbrqmrh0=;
        b=BT6IR6tGhTXwoBLrh9b3w+qrgbMZBfSAe9QS4oPGoTlKZoqtCvoiPSa0he/CBSYdTz
         rDt0arxcIzRS5oMQCkyMflvJ3rkUv+aurSzLZ6j0dxbqt9PT4Ab8LVoPUdADhkiOg7bx
         AkP1NHPBG5TnIFr3w18GnSl1cp/jWxiTioNWT6ixvfLofFfwCjqE38d5BHt4aLMdYXBs
         RPteKQft05WF8kGoE7ZkG2A0T12s7oc1m7tkcZ391xQWZ0dwaRkONpe0O9rGEWUZ/nRd
         UK5dfDDludfoNYIYa9pI+yf4Q3qfLgkUpCWt3z/ojfwHz2pxU/14SISM57Q5PGmKq5Ua
         lPmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771230090; x=1771834890;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z8E3oN62iqBuReJ1CGIN4gkipeARNhtk8Z1Vbrqmrh0=;
        b=ortL8ryf4rH7e/boeyWYs2wvQHrWOMJqvpSLA7hNMchLN0Df7nS+gLZN2qxNtiGcgP
         DiaMhPLDPQvw7fD3GiMfe3OzpXMcLNEso4PBH8KIW3L6pyy9NDIEH/GxJE5tlkWMfLkR
         VN/E5QUDG8OOpbIP5Yl+4EbDauuQhsyhM3zG26Uq1AeWqGez6bD9UIvdrEBGsNnR/W54
         a7AlSXFecQjvznzHyoVrXQdVGM196KLflQs5puKdAD536zG8Y/IsUnEv0c0vD6HuIv5c
         yN1cSPzdEMPRQDgh2QA1fowopjswmKz+AJrXa6gssW1zaWGq6m8DUjs47xAValONK9dC
         Wmpw==
X-Forwarded-Encrypted: i=1; AJvYcCUdYBk2EGCo/YGE4r8/OzmycEL/G90v5eG9luwP5j/kKX5KW/lLcDonNWA1OMBsZz6xCGMlFHbXlrWg@vger.kernel.org
X-Gm-Message-State: AOJu0YzfzSiRi150jYL5aw5HmO8RDvo87QpYeOlO22W9QrrSvhndL+3v
	YzXGpQXWNgKfmRuul5H9Y7XuLTCF6dCRZyBz8KU2r7o08N6m3sBiY2Y0
X-Gm-Gg: AZuq6aK3cFn+ZMN7Av6ffuME038Q1sx32OfYxrnk17RyOQnS6Bhd1r7GqJrwVlxwVgN
	OynZBrF/BHTKz+bdNzean0RUVWvrut3LUcaJWUWbVbu3Cf2aLBh0XDo6mv8i6WUUTRyvJa9Zs0a
	FC7MX8ume80Ev8tHj7uM0t68ZPFkwF5udlNwoW5uhXfEN+LpZnWemJmXGSGnQuYyOYOIfS9PZ7F
	/slZUmwqMrgolywljI4JCuqCVNllTxXWprl72Thjyx8JLFysKkr5pu42i+tnRZg8WGemCYpxsfh
	sj7dRMyzJNJoj1wRh9OtsjURUnCq1GVtLMWJcH0mde8ytrIzFCkCtp0TqEafopIt4++bnhuJCiU
	qrs4RsmjK+2p1p9TQuXjmdEEQtghJ7UC1vlhRFH0g4OZ6Plx60byuay2Lu8EwNhQP+gV60StNJ1
	8fb8sf6G4rxrbshrvhqHCY/pPxRA==
X-Received: by 2002:a05:690e:e8d:b0:649:b31e:8f54 with SMTP id 956f58d0204a3-64c197c7b08mr7964781d50.24.1771230090014;
        Mon, 16 Feb 2026 00:21:30 -0800 (PST)
Received: from [192.168.0.40] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-64c22e936a7sm3079779d50.6.2026.02.16.00.21.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Feb 2026 00:21:28 -0800 (PST)
Message-ID: <ceb597ed-3380-4952-b159-36f3862bf2c2@gmail.com>
Date: Mon, 16 Feb 2026 10:21:23 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] iio: light: vcnl4000: add support for Capella
 CM36686 and CM36672P
To: Jonathan Cameron <jic23@kernel.org>
Cc: andy@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
 dlechner@baylibre.com, krzk+dt@kernel.org, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, nuno.sa@analog.com,
 phone-devel@vger.kernel.org, pmeerw@pmeerw.net, robh@kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht
References: <20260215193114.2a1010a8@jic23-huawei>
 <20260215200628.53841-1-xerikasxx@gmail.com>
 <20260215215519.23126ef3@jic23-huawei>
Content-Language: en-US
From: Erikas Bitovtas <xerikasxx@gmail.com>
In-Reply-To: <20260215215519.23126ef3@jic23-huawei>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265665-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: CAA131417EB
X-Rspamd-Action: no action



On 2/15/26 11:55 PM, Jonathan Cameron wrote:
> On Sun, 15 Feb 2026 22:06:28 +0200
> Erikas Bitovtas <xerikasxx@gmail.com> wrote:
> 
>> On 2/15/26 9:31 PM, Jonathan Cameron wrote:
>>> On Sun, 15 Feb 2026 19:28:56 +0200
>>> Erikas Bitovtas <xerikasxx@gmail.com> wrote:
>>>   
>>>> On 2/14/26 8:09 PM, Jonathan Cameron wrote:  
>>>>>> ---
>>>>>>  drivers/iio/light/vcnl4000.c | 40 ++++++++++++++++++++++++++++++++++++++++
>>>>>>  1 file changed, 40 insertions(+)
>>>>>>
>>>>>> diff --git a/drivers/iio/light/vcnl4000.c b/drivers/iio/light/vcnl4000.c
>>>>>> index a36c23813679..1f8f4e4586f4 100644
>>>>>> --- a/drivers/iio/light/vcnl4000.c
>>>>>> +++ b/drivers/iio/light/vcnl4000.c
>>>>>> @@ -185,6 +185,7 @@ static const int vcnl4040_ps_oversampling_ratio[] = {1, 2, 4, 8};
>>>>>>  #define VCNL4000_SLEEP_DELAY_MS	2000 /* before we enter pm_runtime_suspend */
>>>>>>  
>>>>>>  enum vcnl4000_device_ids {
>>>>>> +	CM36672P,
>>>>>>  	VCNL4000,
>>>>>>  	VCNL4010,
>>>>>>  	VCNL4040,
>>>>>> @@ -235,6 +236,8 @@ struct vcnl4000_chip_spec {
>>>>>>  };
>>>>>>  
>>>>>>  static const struct i2c_device_id vcnl4000_id[] = {
>>>>>> +	{ "cm36672p", CM36672P },
>>>>>> +	{ "cm36686", VCNL4040 },
>>>>>>  	{ "vcnl4000", VCNL4000 },
>>>>>>  	{ "vcnl4010", VCNL4010 },
>>>>>>  	{ "vcnl4020", VCNL4010 },
>>>>>> @@ -1842,6 +1845,22 @@ static const struct iio_chan_spec vcnl4040_channels[] = {
>>>>>>  	}
>>>>>>  };    
>>>>>
>>>>> ...
>>>>>     
>>>>>>  	[VCNL4000] = {
>>>>>>  		.prod = "VCNL4000",
>>>>>>  		.init = vcnl4000_init,
>>>>>> @@ -2033,6 +2065,14 @@ static int vcnl4000_probe(struct i2c_client *client)
>>>>>>  }
>>>>>>  
>>>>>>  static const struct of_device_id vcnl_4000_of_match[] = {
>>>>>> +	{
>>>>>> +		.compatible = "capella,cm36672p",
>>>>>> +		.data = (void *)CM36672P,
>>>>>> +	},
>>>>>> +	{
>>>>>> +		.compatible = "capella,cm36686",
>>>>>> +		.data = (void *)VCNL4040,    
>>>>>
>>>>> Is this necessary? I 'think' if you drop it we'll match instead
>>>>> on the vcnl4040 fallback and then the access to the data will be
>>>>> through the stripped name only bit of the compatible (first entry, not
>>>>> the fallback so cm36686 in this case). So you do need the cm36686
>>>>> entry in the i2c_device_id table above. Probably better to keep
>>>>> this here to avoid having to reason this out - but perhaps a
>>>>> comment to that affect would be useful (assuming you verify my
>>>>> reasoning).
>>>>>    
>>>> After I removed the entry for "capella,cm36686", I received the "Unable
>>>> to handle kernel NULL pointer dereference" error in dmesg. And at least
>>>> stk3310 driver includes a compatible entry both for the device (stk3013)
>>>> and for the fallback (stk3310). So my assumption is that this entry is
>>>> needed.
>>>> I could include a comment explaining that cm36686 is fully compatible
>>>> with vcnl4040, however, if that is necessary.  
>>>
>>> Thanks for checking.
>>>
>>> What did you get as the backtrace?  I'm hoping it'll explain what I'm
>>> misunderstanding!  The hacks around using the wrong table for compatible
>>> matches have tripped me up before.
>>>
>>> Jonathan
>>>   
>>
>> I am attaching a link to the dmesg. There were quite a lot of lines in
>> the stack trace and I am not sure what is the right way to post logs in
>> the mailing list.
>>
>> https://pastebin.com/QgeTdNEP
> 
> Thanks. only relevant bit is probably:
> 
> [   15.566076]  vcnl4000_probe+0x54/0x288 [vcnl4000] (P)
> [   15.566102]  i2c_device_probe+0x2b0/0x358
> [   15.566121]  really_probe+0x154/0x448
> 
> My guess is my understanding of i2c_client_get_device_id() is wrong and that
> is returning NULL.  That can only happen if client->name is not a match for
> anything the i2_device_id table.  If you have a chance, can you dump
> what client->name is in this case? I thought it ended up as
> cm36686 (stripped first entry in compatible) but seems I'm probably wrong on
> that :(
> 
> The path I thought worked was via info->type (which gets copied to client->name)
> set via of_alias_from_compatible() here.
> https://elixir.bootlin.com/linux/v6.19-rc4/source/drivers/i2c/i2c-core-of.c#L30
> Which should just return the first compatible without that vendor prefix.
> 
> Meh, this doesn't really matter anyway as once we refactor to actually use
> the data in the of_device_id table, we will need the entry and in the meantime
> it's sort of documentation.
> 
> J
> 

Apparently I just had commented out the i2c_device_id entry for cm36686
as well, when I had to comment out only of_device_id entry. After adding
i2c_device_id entry back, it works, just as you said.
I will submit a v5 with of_device_id entry removed if that is necessary.

