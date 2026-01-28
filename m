Return-Path: <devicetree+bounces-260473-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mGwxLoAjemmv2wEAu9opvQ
	(envelope-from <devicetree+bounces-260473-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 15:56:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C751A3576
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 15:56:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 311193017242
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 14:53:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA1012690F9;
	Wed, 28 Jan 2026 14:53:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="kx5uzCaZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 530DE29827E
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 14:53:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769611987; cv=none; b=kRyigIrzdX8xQwo4uI7dFRSQGCF06VRpEnkIulkswO6o7+jyDVlzg18OIWB9qjq0m0u0SOR+VuuV72NKvB2b7WU6km8MCCVws7x7+o2BUedGytUEiM1ZgryjzfhAfqK06+Sj2DXO58a0xh8wpaQX7hDHrlCnw2hHZ7HS+kkE7CE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769611987; c=relaxed/simple;
	bh=xv9s+K7w28yZvwvYmPs6K9uJJvb4PymXWZDgqXpzD5c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=V74B/3rIJWq25h4CVtN8RcFfuEVNktVWMkQ3dBfl74s57qbWGf2ynSbF88Rl9QynNRCA++GHtnmAL9onqcIdu1uqsu9Y9pcX3YwJ1yfKc/NPsRgPIGZCKNcmhK4GLzUhKb1Qi6OEnB+6BeRRV8RD9ZBgcHetZY02uj81WXp6VhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=kx5uzCaZ; arc=none smtp.client-ip=209.85.167.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-oi1-f171.google.com with SMTP id 5614622812f47-45effa36208so722988b6e.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 06:53:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1769611985; x=1770216785; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Qmii9fWK0qOIPGEwrFV10/Zom1WAYNaPXJlgvztgTOE=;
        b=kx5uzCaZ5HzNEbDs4t4zEfZVq8i7935+kuUXM2eZM3TgxQCSZKgcW4rvumRiFgpCFp
         zS4lOwA88GbOc8TOxfFQpIo8lff9R2Dsf8RalrSUgwKi1tfB88um/NwwbAAftrFuEtol
         kngDWHf5krErdGsDDqxnpUtHj6VdMYbF1/NKgNlOuV5vaaCQe5UoscW9q9ZVYkPKVUWf
         2TiivpDg8hfs9nXrAwoCZTpZp0yH/pyy47aUzbHShfzivuaG8tnYdbgZ5S1kzwz1kXUz
         i9bpGWE0ZOBFZU5T2RQRCLmeQHeP3iAY+ax/nxdHFynr7hh6wCPIud+Q1tcipMZ5wrYY
         Wtvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769611985; x=1770216785;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Qmii9fWK0qOIPGEwrFV10/Zom1WAYNaPXJlgvztgTOE=;
        b=RJ6E7ZTwm9zMSrOz97U0Lhz2Cx57LpZCct0/GLHAcX/qgoMs8mp47iC0zy1BENlixv
         1hUnEX34TQUtB7MTezGVyheURVrgD3gvjQ9b585dJF+hWrc7dDyp3OcH2n5OTC1OeCon
         tdKKdXk7yjPp1leNjRV0zvqBua9ZJQuoLgVnY9sZ7zQvGQR6I9n5fTlV/EvVqoNwiU0t
         SHn4PgRsMizmy8zu24fOEeFyUvY0rKP3QTKlRI8givLdQndaO61eNEgsicWUckfEiIqz
         zjxv5474wBBhEig3TYHOFeQuNqKdt56pOWfPcn/cQPX4hcjWJFU+mbkyPh1Q484Q+mUW
         kqTg==
X-Forwarded-Encrypted: i=1; AJvYcCVtEhbbaktzSvWMfBNQ9x2sw5jrwkrWVkRFY0EromurnVGDS3fPEDDKTUZtjo1O9KIO3wDH5GyVxtPo@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1neG0PMGgtcsdxZWSgVkO4MrINwfgLQHZDUe8XaT8T1L2pn+c
	Zqu4Y3BkNGazOpfGw61aIrrjPD/k2LvlCe6aKFgVrwmCoV1xtqgDW18cyBIc3O1WAwM=
X-Gm-Gg: AZuq6aI+UV8pKlz8pJqSzCjsk738dHVEV0ydcIFNFbRo7vrjGlLlLsPfoGg3mf8D7Xi
	xzSIlW4nDn3xz4OfMwrEfOk+6ofiBDHbtkvY/cHuAivv+KPGENi56Mqoca82ROOYjzGCqyo1xEG
	wrp9CO3Z+dHeW05VQ85pUe3w5vXnQLVmussPXWhnpdgF1C7Ju+04gucofhgRtLRVRyJyUr60MaZ
	eyaY3R+NqD5qTzfdlSVtVX7Geq6GQegH3vePDfEIwpkYeuUNrc9dz5hwvgNvHGW8hNUGFAx+E6a
	QFJ6XPGr+jHp8xATFYo7zrKq2tESqRsAkT/pLeD0R86vCvz0KASs39iBZ3RWUtQWNuybIlqEfxI
	MLxIO60AZJg9NMcD7pbZtkJig3d36FCrUyBcacqUNH9qqVqtakRZX+HFvEUuBaIIRRoU/5BzWIl
	A+a/HfxWjHpuR8O1OL5AglzraTvwcr7Iv/3teiRG1I3HoaWeUtzuwkAtZmC9A9xQ==
X-Received: by 2002:a05:6808:23cd:b0:45c:a28e:63a5 with SMTP id 5614622812f47-45efc49c5b9mr2979856b6e.9.1769611982108;
        Wed, 28 Jan 2026 06:53:02 -0800 (PST)
Received: from [172.22.22.28] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-45f08fb3887sm1365549b6e.20.2026.01.28.06.53.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jan 2026 06:53:01 -0800 (PST)
Message-ID: <4817d35e-cbca-4b59-ac4b-5f47bde86077@riscstar.com>
Date: Wed, 28 Jan 2026 08:53:00 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] regulator: spacemit-p1: Update supply names
To: Guodong Xu <guodong@riscstar.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Yixun Lan <dlan@gentoo.org>, Lee Jones <lee@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Troy Mitchell <troy.mitchell@linux.spacemit.com>,
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 spacemit@lists.linux.dev, devicetree@vger.kernel.org
References: <20260124-spacemit-p1-v2-0-2c86b06694ba@riscstar.com>
 <20260124-spacemit-p1-v2-3-2c86b06694ba@riscstar.com>
 <4395bea9-44d7-4f0f-81d6-c1e05976a308@riscstar.com>
 <CAH1PCMa_wxX_0YX0=3uMpKpE2FQ=COPafAL-tyJv3Y9kjdAujQ@mail.gmail.com>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <CAH1PCMa_wxX_0YX0=3uMpKpE2FQ=COPafAL-tyJv3Y9kjdAujQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.06 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[riscstar-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260473-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,gentoo.org,linux.spacemit.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[riscstar-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[elder@riscstar.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,spacemit.com:url,riscstar.com:mid,riscstar.com:email,riscstar-com.20230601.gappssmtp.com:dkim]
X-Rspamd-Queue-Id: 1C751A3576
X-Rspamd-Action: no action

On 1/28/26 8:47 AM, Guodong Xu wrote:
> Hi, Alex
> 
> On Wed, Jan 28, 2026 at 9:29 PM Alex Elder <elder@riscstar.com> wrote:
>>
>> On 1/23/26 6:20 PM, Guodong Xu wrote:
>>> Update supply names to match the P1 PMIC's actual hardware pinout where
>>> each buck has an individual VIN pin (vin1-vin6) and LDO groups have
>>> dedicated input pins (aldoin, dldoin1, dldoin2).
>>>
>>> The supply is a board design decision and should not be hardcoded to any
>>> existing power source. This allows boards to specify their actual power
>>> tree topology in devicetree.
>>>
>>> Signed-off-by: Guodong Xu <guodong@riscstar.com>
>>
>> These are good changes but I have a suggestion on the way
>> you define the DLDO descriptors.  I might be mistaken but
>> I think you should make this change.
>>
>> Aside from that:
>>
>> Reviewed-by: Alex Elder <elder@riscstar.com>
>>
>>> ---
>>> v2: No change.
>>> ---
>>>    drivers/regulator/spacemit-p1.c | 25 ++++++++++++++-----------
>>>    1 file changed, 14 insertions(+), 11 deletions(-)
>>>
>>> diff --git a/drivers/regulator/spacemit-p1.c b/drivers/regulator/spacemit-p1.c
>>> index 2b585ba01a93..57e6e00a73fa 100644
>>> --- a/drivers/regulator/spacemit-p1.c
>>> +++ b/drivers/regulator/spacemit-p1.c
>>> @@ -87,13 +87,16 @@ static const struct linear_range p1_ldo_ranges[] = {
>>>        }
>>>
>>>    #define P1_BUCK_DESC(_n) \
>>> -     P1_REG_DESC(BUCK, buck, _n, "vin", 0x47, BUCK_MASK, 255, p1_buck_ranges)
>>> +     P1_REG_DESC(BUCK, buck, _n, "vin" #_n, 0x47, BUCK_MASK, 255, p1_buck_ranges)
>>
>> That was a simple change...
>>
>>>    #define P1_ALDO_DESC(_n) \
>>> -     P1_REG_DESC(ALDO, aldo, _n, "vin", 0x5b, LDO_MASK, 128, p1_ldo_ranges)
>>> +     P1_REG_DESC(ALDO, aldo, _n, "aldoin", 0x5b, LDO_MASK, 128, p1_ldo_ranges)
>>
>> As stated before, I believe the 128 should be 117 here.  (If
> 
> I will explain this in another email.
> 
>> you change the earlier patch, make sure the change to 128
>> doesn't persist here.)  Same comment for the DLDO regulators.
>>
>>> -#define P1_DLDO_DESC(_n) \
>>> -     P1_REG_DESC(DLDO, dldo, _n, "buck5", 0x67, LDO_MASK, 128, p1_ldo_ranges)
>>> +#define P1_DLDO1_DESC(_n) \
>>> +     P1_REG_DESC(DLDO, dldo, _n, "dldoin1", 0x67, LDO_MASK, 128, p1_ldo_ranges)
>>
>> Why can't you use _n here like you did for P1_BUCK_DESC() above?
> 
> The naming follows the P1 pinout definitions in the datasheet [1].
> 
> Unlike the BUCK regulators, which have individual input pins (e.g.,
> VIN3 for BUCK3), the DLDOs share power inputs. For example, DLDOIN1 (pin 17)
> powers DLDO1 through DLDO4. DLDOIN2 provides power to DLDO5, 6 and 7.

Ahh.  I didn't notice that.  There are two *groups* of DLDO
regulators, and each group is fed by one or the other poer
input.

Now I get it.

Thanks for the explanation.

					-Alex

> Since there are no physical pins named dldoin3, etc., I can't use the _n index
> for the supply name argument like I did for the BUCKs.
> 
> Datasheet pin examples:
> 8 VIN3 PWR Buck3 power input (1:1 mapping)
> 17 DLDOIN1 PWR DLDO1~4 power input (1:Many mapping)
> 
> Link: https://developer.spacemit.com/documentation?token=T1Btw2BdiiSlSXkAdibcoMetnag
> [1]
> 
> Best regards,
> Guodong Xu
> 
>>
>>> +
>>> +#define P1_DLDO2_DESC(_n) \
>>> +     P1_REG_DESC(DLDO, dldo, _n, "dldoin2", 0x67, LDO_MASK, 128, p1_ldo_ranges)
>>
>> So this is generalizing the input, which is good.  The use
>> of "buck5" here was a Banana Pi BPI-F3 design and but it
>> doesn't have to be that way.
>>
>>>    static const struct regulator_desc p1_regulator_desc[] = {
>>>        P1_BUCK_DESC(1),
>>> @@ -108,13 +111,13 @@ static const struct regulator_desc p1_regulator_desc[] = {
>>>        P1_ALDO_DESC(3),
>>>        P1_ALDO_DESC(4),
>>>
>>> -     P1_DLDO_DESC(1),
>>> -     P1_DLDO_DESC(2),
>>> -     P1_DLDO_DESC(3),
>>> -     P1_DLDO_DESC(4),
>>> -     P1_DLDO_DESC(5),
>>> -     P1_DLDO_DESC(6),
>>> -     P1_DLDO_DESC(7),
>>> +     P1_DLDO1_DESC(1),
>>> +     P1_DLDO1_DESC(2),
>>> +     P1_DLDO1_DESC(3),
>>> +     P1_DLDO1_DESC(4),
>>> +     P1_DLDO2_DESC(5),
>>> +     P1_DLDO2_DESC(6),
>>> +     P1_DLDO2_DESC(7),
>>>    };
>>>
>>>    static int p1_regulator_probe(struct platform_device *pdev)
>>>
>>


