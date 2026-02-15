Return-Path: <devicetree+bounces-265643-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sDsIAnknkmnDrQEAu9opvQ
	(envelope-from <devicetree+bounces-265643-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 21:07:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A37D513F981
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 21:07:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C100C302E7B3
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 20:06:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2C06275864;
	Sun, 15 Feb 2026 20:06:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="euIf5QAa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F13D8265298
	for <devicetree@vger.kernel.org>; Sun, 15 Feb 2026 20:06:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771186006; cv=none; b=tWeJBGPTlL2ywt0zyBQL6EUybu4GarmpBrCgj8X+iq3AcOJXxODhTBcgIxcTM1LSuxvFQjqYnjYo/Wrj1DzxojNfnk2jmWzWu8+UFT4gDYizZjcPRl9dLbTLjCy5+cB9qxdjZIsPlHt5T7vdX3y840ZiEvfQ22MWLy3PHie1E3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771186006; c=relaxed/simple;
	bh=fYY2Hcini0IYTBnNIV2OVtiPJDT1BxddgIIfefj/oz8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=q+XixGQUd4yFMI5KwOxQ0VSt1TfEi67AmikDLpQTNDL9Oi4GMliQ76T2ck/ocfISUnQVs9mPa4+nSIIXGqS0MrV+xkucPUmNWmtSuCMr2Xm5rA84gTL2QpRw/2rYkzd7+Cbk/DtJvzxE7PbnRvCNPyIjtV6QQGRwNW3y1bw5q8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=euIf5QAa; arc=none smtp.client-ip=209.85.128.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-79088484065so20458167b3.1
        for <devicetree@vger.kernel.org>; Sun, 15 Feb 2026 12:06:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771186004; x=1771790804; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6ew684kZBC5j6NJc+gT69tQd+JtTITX1IRPbP6jdn/Y=;
        b=euIf5QAalD3NPiKAZWjzzPxTfCuOLSyQPRo1GquCnLZfFPwyiOC0UQiQ5BVyI2ZiGR
         ZHR2zdf78z6XoJZThdm2uIol4BdPcul42WloxH6zpmVCqaodxkX+jlx8M+x7DkH4VGEY
         /Ldxuug0KVeNUiawuf3xTVnEInuiR95aplU/2vulcj1GkD2K1Dw27hmxtRf3huW/PEIG
         GNWTjLUvuXt7uL3E/E3qmxpOiyeQfOGps7eJlk+T3ZUxDjdOzWqwtMjGg8ryJrOuucSf
         TzGP/WhT2LLssGh9nUa5JqFhw+kA3miYxFub0VUAN3yrt17pdIcXA6idoZB00nJkJgbL
         9jkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771186004; x=1771790804;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6ew684kZBC5j6NJc+gT69tQd+JtTITX1IRPbP6jdn/Y=;
        b=WQ/FEayQwav9hq+VcAqz+Kfo0dFuN6lruqgASLmF6PAPBYhb5YlBWoNbNNZWIx5xQj
         /5mfYP6e55jroPADZu738oq0F9dg1HpcyM3dkujW4+RTXEEwKyUNHe80pz0hRHpYNtkS
         V3W3Etv8Q1gs0fPzZ/IfOur7C1H9NPJvAAmTWYN0f7l1I8DTvby4Y2FsefnEDHMztdpu
         rHBXRveRalT1TV4qvXAU+N8CtQLQuhMo58vcdl49cv0Bc7C1LSFFwRVgTXf7pUsyx6EQ
         tvnzNJATsOt84PFgoaM0W5H6BCK1OVT6van8sf2M09XOuG7hfQj1gAuE5f1xtAQCnwKJ
         TlzA==
X-Forwarded-Encrypted: i=1; AJvYcCVRXWIB3cpS9EEo9La/nbfgRYHRSwDEeYfLiR4YAF9/Y3nDmfQ8bStsMf1RuqtWu17QrUudLqdFYX5I@vger.kernel.org
X-Gm-Message-State: AOJu0YyPxqEMvgbjEBCT0VNHq1IUtCkSC3LZo9g/U/whgjzxGDZzCSmf
	hMAsAOVMsdfn1SQsNGHip1B7/hOyZBLmoI9UaVhaZ3fhpvXW7RQzgtG9
X-Gm-Gg: AZuq6aJD5yaUVwq2ePEpJzBT/a36hQKe4lGKUgTk426n1ngftst0J/N9pG/pj0CUP6M
	a01O4GR1kHz3Niv0pYRHu7/aobdFQz/CMCweF4AD5CKqKeeIZq1BUPRRcUsJUnOxBQS9rZUQZJ7
	vjgJ7fOEKZ64+94Me3+tuqSSAdnjROF20p5ILv0Rr0Y7IRdhJ5gBEaIT5F/IYHeBxmGP9xnIkYD
	q4coiq862lm03v44Ai7HX9GD56ceY+9opj2/I5M9J5VePBSYo4CKA9kCduikRHfUIhcptUrGPYf
	k+50Tz+gSeppuZH+zAspqyWrGWnxpBdfXO209iS/ZzjfdipjH6bz4NY8/chNjFfiuPpLbKAXFby
	u/kiWbv/9dY9iQotQwAMj/1jn9JSd7ORFI6UiyRcaOWhjPc+iTPdiNQlaRmJIDjqlVd1FhlZBmS
	jHw36UW0eUbTLghB2s1F+X
X-Received: by 2002:a05:690c:9990:b0:78f:a615:2724 with SMTP id 00721157ae682-797a0cca0cdmr147309467b3.48.1771186003955;
        Sun, 15 Feb 2026 12:06:43 -0800 (PST)
Received: from crusty-box ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7966c16f0e0sm93475407b3.5.2026.02.15.12.06.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Feb 2026 12:06:43 -0800 (PST)
From: Erikas Bitovtas <xerikasxx@gmail.com>
To: jic23@kernel.org
Cc: andy@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dlechner@baylibre.com,
	krzk+dt@kernel.org,
	linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	nuno.sa@analog.com,
	phone-devel@vger.kernel.org,
	pmeerw@pmeerw.net,
	robh@kernel.org,
	xerikasxx@gmail.com,
	~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH v4 2/2] iio: light: vcnl4000: add support for Capella CM36686 and CM36672P
Date: Sun, 15 Feb 2026 22:06:28 +0200
Message-ID: <20260215200628.53841-1-xerikasxx@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260215193114.2a1010a8@jic23-huawei>
References: <20260215193114.2a1010a8@jic23-huawei>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,baylibre.com,analog.com,pmeerw.net,gmail.com,lists.sr.ht];
	TAGGED_FROM(0.00)[bounces-265643-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_NONE(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,pastebin.com:url]
X-Rspamd-Queue-Id: A37D513F981
X-Rspamd-Action: no action

On 2/15/26 9:31 PM, Jonathan Cameron wrote:
> On Sun, 15 Feb 2026 19:28:56 +0200
> Erikas Bitovtas <xerikasxx@gmail.com> wrote:
> 
>> On 2/14/26 8:09 PM, Jonathan Cameron wrote:
>>>> ---
>>>>  drivers/iio/light/vcnl4000.c | 40 ++++++++++++++++++++++++++++++++++++++++
>>>>  1 file changed, 40 insertions(+)
>>>>
>>>> diff --git a/drivers/iio/light/vcnl4000.c b/drivers/iio/light/vcnl4000.c
>>>> index a36c23813679..1f8f4e4586f4 100644
>>>> --- a/drivers/iio/light/vcnl4000.c
>>>> +++ b/drivers/iio/light/vcnl4000.c
>>>> @@ -185,6 +185,7 @@ static const int vcnl4040_ps_oversampling_ratio[] = {1, 2, 4, 8};
>>>>  #define VCNL4000_SLEEP_DELAY_MS	2000 /* before we enter pm_runtime_suspend */
>>>>  
>>>>  enum vcnl4000_device_ids {
>>>> +	CM36672P,
>>>>  	VCNL4000,
>>>>  	VCNL4010,
>>>>  	VCNL4040,
>>>> @@ -235,6 +236,8 @@ struct vcnl4000_chip_spec {
>>>>  };
>>>>  
>>>>  static const struct i2c_device_id vcnl4000_id[] = {
>>>> +	{ "cm36672p", CM36672P },
>>>> +	{ "cm36686", VCNL4040 },
>>>>  	{ "vcnl4000", VCNL4000 },
>>>>  	{ "vcnl4010", VCNL4010 },
>>>>  	{ "vcnl4020", VCNL4010 },
>>>> @@ -1842,6 +1845,22 @@ static const struct iio_chan_spec vcnl4040_channels[] = {
>>>>  	}
>>>>  };  
>>>
>>> ...
>>>   
>>>>  	[VCNL4000] = {
>>>>  		.prod = "VCNL4000",
>>>>  		.init = vcnl4000_init,
>>>> @@ -2033,6 +2065,14 @@ static int vcnl4000_probe(struct i2c_client *client)
>>>>  }
>>>>  
>>>>  static const struct of_device_id vcnl_4000_of_match[] = {
>>>> +	{
>>>> +		.compatible = "capella,cm36672p",
>>>> +		.data = (void *)CM36672P,
>>>> +	},
>>>> +	{
>>>> +		.compatible = "capella,cm36686",
>>>> +		.data = (void *)VCNL4040,  
>>>
>>> Is this necessary? I 'think' if you drop it we'll match instead
>>> on the vcnl4040 fallback and then the access to the data will be
>>> through the stripped name only bit of the compatible (first entry, not
>>> the fallback so cm36686 in this case). So you do need the cm36686
>>> entry in the i2c_device_id table above. Probably better to keep
>>> this here to avoid having to reason this out - but perhaps a
>>> comment to that affect would be useful (assuming you verify my
>>> reasoning).
>>>  
>> After I removed the entry for "capella,cm36686", I received the "Unable
>> to handle kernel NULL pointer dereference" error in dmesg. And at least
>> stk3310 driver includes a compatible entry both for the device (stk3013)
>> and for the fallback (stk3310). So my assumption is that this entry is
>> needed.
>> I could include a comment explaining that cm36686 is fully compatible
>> with vcnl4040, however, if that is necessary.
> 
> Thanks for checking.
> 
> What did you get as the backtrace?  I'm hoping it'll explain what I'm
> misunderstanding!  The hacks around using the wrong table for compatible
> matches have tripped me up before.
> 
> Jonathan
> 

I am attaching a link to the dmesg. There were quite a lot of lines in
the stack trace and I am not sure what is the right way to post logs in
the mailing list.

https://pastebin.com/QgeTdNEP


