Return-Path: <devicetree+bounces-276442-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yLgSHC/QuGlfjgEAu9opvQ
	(envelope-from <devicetree+bounces-276442-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 04:53:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F2272A364D
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 04:53:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id AD1743026AB8
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 03:53:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77ADA3570C1;
	Tue, 17 Mar 2026 03:52:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UqHitUvv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f180.google.com (mail-dy1-f180.google.com [74.125.82.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E945734572F
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 03:52:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773719575; cv=none; b=uoAi2cUcGgvY48LJiAw0wafspuci3Q2RRJZeT4AK0J8SJ2tte0VraCCP2jxpah/QTYtpJYcOBMALZicvUin3SlFx9iqdyFAX4b1tAG4LPVASHSa604dtBISx0PiuE9J5MsBbM9sMuedNn3i3d2rXwQdit2ye6Drj0h7gfjyxtkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773719575; c=relaxed/simple;
	bh=0SvX4m6vB3Urzbo1xNFUfeEerQYe8sJyA41Xo5c5wu8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XgKtBrxY0j11eWPF810h0lG1YSRY12pmKvi1riQ5bV3iyxTmIa+G9tf0Sy85Kzn8YRJ3XZx+JnvBS0k30jzRLDZsvwnOG7wMd9R2MtZEXilLW0fUoM5jY3IcPSMjojngRy0cGEbRLyVkXIo0SRuJd0FKh2jAJjGxGw42oPNx/H8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UqHitUvv; arc=none smtp.client-ip=74.125.82.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f180.google.com with SMTP id 5a478bee46e88-2c0d1d096d7so188744eec.1
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 20:52:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773719564; x=1774324364; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=FadqkpcCJP+o15yZeX31CrCHgzxcCtkbDe0Mr1AZuZQ=;
        b=UqHitUvvvyzoaD+bXdKK8TXm9PX7vE0Tfv/ABG7rph6lsaLPWRd89NFP8HgFKw2kU4
         FtC5SPm7nu51NGyqf3k5apBUCK76gGZ4rjFiQ0YL8P1HUB5IvN+2AlGkHWWC1nOzt2IT
         IIzMOKOt/FIaL/JXlW6EkB5/poCYUJ3Ayz207icKNZB6OI9AYIrAhwA8jPZV5DuRaV/C
         gt7tmx3GBxQ8oLp6y8UwYoQAQ0ekqHcZF1QPbjdQJm+hNrEU8afR6T1Q7FRISulBUIP/
         F+NULLgiwQf5k6aO3eEndlWrd02gA0CiarnvUe4LDNqmsI/Q7taIvAI3LRjYM6qt5Wp8
         svug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773719564; x=1774324364;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FadqkpcCJP+o15yZeX31CrCHgzxcCtkbDe0Mr1AZuZQ=;
        b=hREqA9sd1s5/JuOohb94St+Ov8/R0oWHaEvbtzd5n2gdNxF6735z477wOhP2GoYc/Q
         IWhspR4CNyKNRurxY8wVWhmBnPN/fhx8xzoOnC9tHaw6y9uagjhN9SO5z5o6m8WG+2sg
         tGz+IH4BHwAB8cCe84wVpftTQWC7QBmXCDqca0fG7GwZxPK+AcJz9mMnaXw9ZoNvdZ4y
         OpKEP2224PCknouzQ3MELNS70XBCR+KT5OptJcboh/ZkQMmv08KZZlqe/YM3hoZd+Y9b
         f+6YYC/3rgMDXqfxyjjY7qwAOL8ipjns4zdSEg8kwiWtNvnDLxHcfEnziDZ1oYIhi+ot
         ZiXQ==
X-Forwarded-Encrypted: i=1; AJvYcCWBGtE064Xri3Vhgd9OuA0Y/sxMp28Q8xxCYygqfozXAD5HNH8GTcZ1O8L0D6nORVh275BnIoNWVihl@vger.kernel.org
X-Gm-Message-State: AOJu0YyS2h9+YbTAbiRYUURyNs8f/O3xdMsCDGf9dUkKIax0dWPPIT8n
	0X8vX/k7nRleORtcec+21zKVCByHRqGXv61NSG/TjKHXm06AAoA+pGlCWorbbw==
X-Gm-Gg: ATEYQzz8RlIyyXlbXrAyEdA8kq62YOAxQdSduD4p21/wu2xh2+VLqXOPYlk37N3KCgX
	N5SnmT1L4TRRJrflMxyozmUI8Uxli/BjeF1aRWSdNBKaFyP8MOJ84ox2G1whXvL+l8dHWhUhIx7
	he4Z6n813fJIOqTf/nNRpR9VGplkjZdkdSr8uUDGUqO5gf5cP8oW0BONdZr4CIwbojYwRkCfuTU
	u1mFLD6crlk0jHn8KNDOBbPI9uckD1LgvbJgHt6tUq3oJ6+Y5m/mUTM/Q/EB4JGYXvrKyfGehad
	9DnyAkHerPCzta8dd8o2F1KjoRxAF29rhdY31ZWvCA41E+2pY4b7iszhWI38ljZvIDJszY4OO6H
	myyjqYJjw9Lt+l2BiyuXxEi8uy3JUy7De0TfcdXwpTpZgLMFEHenEgpX0gozoqe+y4q3cssw5ca
	HWWvfnGlp2r1cHU3YUQyKvCQ5+qGeilSY2AN/PkLBpayRmaWq3OpiYt7CwmZNQDXcuZCbU9MiR
X-Received: by 2002:a05:7300:7fa8:b0:2c0:ca48:3107 with SMTP id 5a478bee46e88-2c0d5248965mr677007eec.15.1773719563694;
        Mon, 16 Mar 2026 20:52:43 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:da43:aeff:fecc:bfd5? ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2beab525c5fsm17201908eec.22.2026.03.16.20.52.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 20:52:43 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Message-ID: <de06c50e-5552-46bc-bf85-439fc166879d@roeck-us.net>
Date: Mon, 16 Mar 2026 20:52:41 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] hwmon/pmbus: (isl68137) Add support for Renesas
 RAA228942 and RAA228943
To: Dawei Liu <dawei.liu.jy@renesas.com>
Cc: "linux-hwmon@vger.kernel.org" <linux-hwmon@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "robh@kernel.org" <robh@kernel.org>, "krzk+dt@kernel.org"
 <krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "corbet@lwn.net" <corbet@lwn.net>,
 "skhan@linuxfoundation.org" <skhan@linuxfoundation.org>,
 "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "magnus.damm" <magnus.damm@gmail.com>,
 Grant Peltier <grant.peltier.jg@renesas.com>
References: <20260316053541.3903-1-dawei.liu.jy@renesas.com>
 <35c39de7-773a-4f94-b495-97eb25555a71@roeck-us.net>
 <TYWPR01MB11935E8EA8F851E93FFE271F1D541A@TYWPR01MB11935.jpnprd01.prod.outlook.com>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 np3900V20aS7eD9K8GTU0TGC1pyz6IVJwIE=
In-Reply-To: <TYWPR01MB11935E8EA8F851E93FFE271F1D541A@TYWPR01MB11935.jpnprd01.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,lwn.net,linuxfoundation.org,glider.be,gmail.com,renesas.com];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[roeck-us.net];
	TAGGED_FROM(0.00)[bounces-276442-lists,devicetree=lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[glider.be:email,renesas.com:email,lwn.net:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,linuxfoundation.org:email]
X-Rspamd-Queue-Id: 4F2272A364D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/16/26 19:50, Dawei Liu wrote:
> Hi Guenter,
> 
> I understand that enum chips is not used in the device matching
> logic. However, it provides a clear, centralized list of all
> supported chip models for developers and users reviewing the code.
> 
> I added entries there to maintain consistency with recent commits
> that had been accepted. For example:
> - 71a117d28f87 "hwmon: (pmbus/isl68137) Add support for RAA229141"
> - 2190ad55a601 "hwmon: (pmbus/isl68137) add support for Renesas
>    RAA228244 and RAA228246"
> 
> Both commits follow the same pattern of adding to enum chips.
> I think keeping these entries in enum chips maintains code
> consistency and documentation value. However, if you prefer
> not to add them there, I'm happy to adjust in v2.
> 

What you are saying is that I did not notice the problem when reviewing the
previous patches, and that it should be ok to continue the wrong pattern
because of that. Sorry, that is not how things work.

What should be done is to drop the unnecessary enum values, not to add new ones.

Guenter

> Best regards,
> Dawei Liu
> 
> -----Original Message-----
> From: Guenter Roeck <groeck7@gmail.com> On Behalf Of Guenter Roeck
> Sent: Monday, March 16, 2026 11:48 PM
> To: Dawei Liu <dawei.liu.jy@renesas.com>
> Cc: linux-hwmon@vger.kernel.org; linux-kernel@vger.kernel.org; linux-doc@vger.kernel.org; devicetree@vger.kernel.org; linux-renesas-soc@vger.kernel.org; robh@kernel.org; krzk+dt@kernel.org; conor+dt@kernel.org; corbet@lwn.net; skhan@linuxfoundation.org; geert+renesas@glider.be; magnus.damm <magnus.damm@gmail.com>; Grant Peltier <grant.peltier.jg@renesas.com>
> Subject: Re: [PATCH 1/2] hwmon/pmbus: (isl68137) Add support for Renesas RAA228942 and RAA228943
> 
> On Mon, Mar 16, 2026 at 01:35:40PM +0800, Dawei Liu wrote:
>> Both RAA228942 and RAA228943 are digital dual-output 16-Phase(X+Y ≤
>> 16) PWM controllers
>>
>> Signed-off-by: Dawei Liu <dawei.liu.jy@renesas.com>
>> ---
>>   Documentation/hwmon/isl68137.rst | 20 ++++++++++++++++++++
>>   drivers/hwmon/pmbus/isl68137.c   |  6 ++++++
>>   2 files changed, 26 insertions(+)
>>
>> diff --git a/Documentation/hwmon/isl68137.rst
>> b/Documentation/hwmon/isl68137.rst
>> index e77f582c2..0ce20d091 100644
>> --- a/Documentation/hwmon/isl68137.rst
>> +++ b/Documentation/hwmon/isl68137.rst
>> @@ -394,6 +394,26 @@ Supported chips:
>>   
>>         Provided by Renesas upon request and NDA
>>   
>> +  * Renesas RAA228942
>> +
>> +    Prefix: 'raa228942'
>> +
>> +    Addresses scanned: -
>> +
>> +    Datasheet:
>> +
>> +      Provided by Renesas upon request and NDA
>> +
>> +  * Renesas RAA228943
>> +
>> +    Prefix: 'raa228943'
>> +
>> +    Addresses scanned: -
>> +
>> +    Datasheet:
>> +
>> +      Provided by Renesas upon request and NDA
>> +
>>     * Renesas RAA229001
>>   
>>       Prefix: 'raa229001'
>> diff --git a/drivers/hwmon/pmbus/isl68137.c
>> b/drivers/hwmon/pmbus/isl68137.c index 78cff9712..da2484d42 100644
>> --- a/drivers/hwmon/pmbus/isl68137.c
>> +++ b/drivers/hwmon/pmbus/isl68137.c
>> @@ -63,6 +63,8 @@ enum chips {
>>   	raa228228,
>>   	raa228244,
>>   	raa228246,
>> +	raa228942,
>> +	raa228943,
> 
> AI:
> 
>    Is it necessary to add these entries to enum chips?
>    Looking at the rest of the driver, this enum does not appear to be used
>    anywhere. The device data mapping seems to rely on the variants enum
>    (e.g., raa_dmpvr2_2rail_nontc) instead.
> 
> It has a point.
> 
> Guenter
> 
>>   	raa229001,
>>   	raa229004,
>>   	raa229141,
>> @@ -478,6 +480,8 @@ static const struct i2c_device_id raa_dmpvr_id[] = {
>>   	{"raa228228", raa_dmpvr2_2rail_nontc},
>>   	{"raa228244", raa_dmpvr2_2rail_nontc},
>>   	{"raa228246", raa_dmpvr2_2rail_nontc},
>> +	{"raa228942", raa_dmpvr2_2rail_nontc},
>> +	{"raa228943", raa_dmpvr2_2rail_nontc},
>>   	{"raa229001", raa_dmpvr2_2rail},
>>   	{"raa229004", raa_dmpvr2_2rail},
>>   	{"raa229141", raa_dmpvr2_2rail_pmbus}, @@ -529,6 +533,8 @@ static
>> const struct of_device_id isl68137_of_match[] = {
>>   	{ .compatible = "renesas,raa228228", .data = (void *)raa_dmpvr2_2rail_nontc },
>>   	{ .compatible = "renesas,raa228244", .data = (void *)raa_dmpvr2_2rail_nontc },
>>   	{ .compatible = "renesas,raa228246", .data = (void
>> *)raa_dmpvr2_2rail_nontc },
>> +	{ .compatible = "renesas,raa228942", .data = (void *)raa_dmpvr2_2rail_nontc },
>> +	{ .compatible = "renesas,raa228943", .data = (void
>> +*)raa_dmpvr2_2rail_nontc },
>>   	{ .compatible = "renesas,raa229001", .data = (void *)raa_dmpvr2_2rail },
>>   	{ .compatible = "renesas,raa229004", .data = (void *)raa_dmpvr2_2rail },
>>   	{ .compatible = "renesas,raa229621", .data = (void
>> *)raa_dmpvr2_2rail },


