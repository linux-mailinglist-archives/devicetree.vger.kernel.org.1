Return-Path: <devicetree+bounces-262375-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YDaDBNU6gmmVQgMAu9opvQ
	(envelope-from <devicetree+bounces-262375-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 19:13:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 29969DD640
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 19:13:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 39F823004DB1
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 18:13:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6ACCD363C74;
	Tue,  3 Feb 2026 18:13:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="X9WKe7uU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D701E267B90
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 18:13:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770142385; cv=none; b=fGSI1JsQQoe2Tz9qWzp3dK+c3/Aet1v5cr/5EsHmwZ8XwVadFB1BAQR/iKiCij8noYboQ8bhPn0Dn0t8x855QDQam0ULKKM9ELoxIOTzqcWFG2cJ2c12/MMLBqT69SELrtsny4kuJlBfc0DZXyCUdc1zz2+rOEDf/J5G4blHt5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770142385; c=relaxed/simple;
	bh=12DizC0MRTUOsWMEXBP8KaJkARrW/TLZxDxEk8wmCso=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bvaMrYu4sVf2PUC79FWh17EscI/gtdyDA8NiilSDb4dtkZkgw4zZl6cv7b2wh7U8Z3cSMqEPdAGxDX/CeQgpkC/7ZVzn4HmxzaGkGolr0MVovn6nvvaSptAWQ8BwU4YxEKBmvG/j7zNmcgzCpe4c60V882NhCbkvuGM5zoEIbtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=X9WKe7uU; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-385d75e1a79so55652241fa.2
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 10:13:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770142382; x=1770747182; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=c0/ndP+Q6QYWzq22YHYUgQSQqkbwcgk08y+b5h1n8pQ=;
        b=X9WKe7uUJDQtnapoiqwwnU3N5rSb1rpHJNFAom8Y2WxfQ4mz6h/eKyZhr3Le/R1p0j
         vEMl28gyWb2rKHdqKPBLs+BBNydyADsTrM6XBaVOzboAxW4MePR5W9IWBmzlojMKQtZ2
         9YRlROzkVCk6SoXfZO0Vl0zxyRq2IgunaiEwo2BzWFSvP6FRNvzzOZM75q34yyaHqXBL
         AQwKgOL34dm0utb/B9gIdTRjkxU9IRaCroGmoMoqTVnxuoa64IGrpHPq+h2WkovAF8RQ
         i1f2XvgOwOlvzeri53vkcoF2CjEmVxNzY/NrAfax8J2fbS6OZ0r38UthySvuDoYXbiTp
         vslA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770142382; x=1770747182;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c0/ndP+Q6QYWzq22YHYUgQSQqkbwcgk08y+b5h1n8pQ=;
        b=dXkpHu2x2KjSa7ySGiDGNq+RVM63twxeALSKZN42tRaGYAPevfeBw+Ufzr1q4kVvHj
         cGnc7Dep57dm2CYX3A+mFHFh319K/ynFTcd9HLVzmjrRPS3M9RRGD3GMB0R75KE4S6R9
         0ZdDBZsnwppxnNqHxTLqpjrld3qk9mYc+bYJ4EH8cOJuNVz/f/6g5fzfWMOp9b5deiTM
         9ZYR+r8G6oNoZZjcuMFsq1hTQd/6PDtaFVOWb05GoQvhC5PyCGe30HRUgGUsYptPpS5O
         liZv6gVoEZDmHh5uPlVPHbkgPiBLnNYvbMONc0kKHH+ZC9YSMzFxKUDHlrN5UnA/thlC
         1Xww==
X-Forwarded-Encrypted: i=1; AJvYcCUkGgvCCtJItKL/Coa/eiBdeV3rGJFax2NM6rqQbINF1cTKwGqqCr8cuGzTPhYbtO0Q/QL9TnnvS5nB@vger.kernel.org
X-Gm-Message-State: AOJu0YySaWoYOV3aLcX2W/YV90PKyiTrV2onjetCdOtr4kutowMXTH93
	m2xALqJsMvdV8NmRvfojb/V89SuF49JCWnQLFxvVCL4RM1PxHI17lC6Y
X-Gm-Gg: AZuq6aLmXYjruQ1TLU6fOM16tnhe75zLQSWP4sdzczscp9BadEXlc1vXURCJRTYEI8d
	w7js9tpzMiUcOqsalzb7i6j32llSjm1Qtu1ceJCO0whnpVjIx155IW3CWVM8EjIQq6mCvjNp9QF
	D/Fd4n99Ui1M5OOLNVOfcp/zpzEYq+gATKfvgSYSTlncf/dKcw3KCK5is7HQ8uDu84Fbu4c3W4D
	ahFbvAWWmI5RDUnSbYMpQkHu+26Usmo76JwMd2bRDFj4DM57QUn7amuPpTRXiK89PcHKCHE8LLf
	40UJ8vg9bvcshKW8VaUqvfEaJUcTH4sEiIHvJM2+O62UCSmYZpD3q7FnvA+rGI8vp2FanF+AIID
	i76RlSgRNQJ387Z2whE4TMXByUSzCXECiaQkExiTDqEp8YCC4FSTfF4Ooq+03T6inO9jKd7GXhS
	/QfBYHePdHDT8ibe2HGElDJHp28TyTLkoVxLQIalB4v1lt8CMhk1/8b39Ae8E=
X-Received: by 2002:a05:651c:550:b0:383:f43:ed45 with SMTP id 38308e7fff4ca-38691db7f7cmr1903191fa.30.1770142381698;
        Tue, 03 Feb 2026 10:13:01 -0800 (PST)
Received: from [10.0.0.100] (host-185-69-74-59.kaisa-laajakaista.fi. [185.69.74.59])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38692040049sm477121fa.26.2026.02.03.10.13.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Feb 2026 10:13:01 -0800 (PST)
Message-ID: <66bedd88-8ac6-45bb-866d-edaf436ee359@gmail.com>
Date: Tue, 3 Feb 2026 20:14:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 15/19] dmaengine: ti: k3-udma-v2: New driver for K3
 BCDMA_V2
To: Sai Sree Kartheek Adivi <s-adivi@ti.com>, vkoul@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, nm@ti.com,
 ssantosh@kernel.org, dmaengine@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 vigneshr@ti.com
Cc: r-sharma3@ti.com, gehariprasath@ti.com
References: <20260130110159.359501-1-s-adivi@ti.com>
 <20260130110159.359501-16-s-adivi@ti.com>
 <98c254c5-94c1-49b0-b361-617639b781d8@gmail.com>
 <7abbd45d-e688-41b5-bde4-5d97877f3267@ti.com>
From: =?UTF-8?Q?P=C3=A9ter_Ujfalusi?= <peter.ujfalusi@gmail.com>
Content-Language: en-US
In-Reply-To: <7abbd45d-e688-41b5-bde4-5d97877f3267@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262375-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[peterujfalusi@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 29969DD640
X-Rspamd-Action: no action

Hi Kartheek,

On 03/02/2026 10:22, Sai Sree Kartheek Adivi wrote:
>>> @@ -632,7 +641,8 @@ int udma_configure_statictr(struct udma_chan *uc,
>>> struct udma_desc *d,
>>>               d->static_tr.bstcnt = d->residue / d->sglen / div;
>>>           else
>>>               d->static_tr.bstcnt = d->residue / div;
>>> -    } else if (uc->ud->match_data->type == DMA_TYPE_BCDMA &&
>>> +    } else if ((uc->ud->match_data->type == DMA_TYPE_BCDMA ||
>>> +           uc->ud->match_data->type == DMA_TYPE_BCDMA_V2) &&
>> Have you thought of adding a version member to struct udma_match_data
>> and use that instead of distinct different types for BCDMA/PKTDMA?
>>
>> Here for example you would not need any change as the code is common for
>> both v1 and v2.
>
> Hi Peter,
>
>
> I'm preparing a v5 and wanted to align with you on the handling of
> different dma
>
> variants (udma, bcdma, pktdma & v1, v2).
>
>
> Frank suggested moving toward feature flags (capabilities) in the
> match_data,
>
> rather than checking type. [1]
>
>
> I want to get your thoughts on Frank's suggestion before I proceed. Do
> you have
>
> any strong objections to using feature flags? I see merit in that
> approach for
>
> scaling to possible future DMA variants in K3 SoCs.
You have several differences here and there (small and big) between the
v1 and v2, if you want to feature flag these out you would need to have
a meaningful flag for each and every one of them.

I find this a daunting task to be honest, so I would go with the simpler
way to just use version to cover _all_ differences in one step.
How one should be handling things if
A) feature = FEATURE_1
B) feature = FEATURE_2
C) feature = FEATURE_1 | FEATURE_2
D) feature = FEATURE_1 | FEATURE_2 | FEATURE_3
E) feature = FEATURE_1 | FEATURE_3
...

I think this might get out of hand easily, but you know the hardware
better, which way fits better, which will scale better for the future.

Also, you set a FEATURE flag for V2, but it might be that in V3 revision
the same thing must be done in a third way, so you would need to
allocate a bit array to say that this feature have this three ways of
handling, etc.

Either way will help to make the code a bit cleaner, which is already in
good shape.

-- 
Péter


