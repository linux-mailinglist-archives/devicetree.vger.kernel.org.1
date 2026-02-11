Return-Path: <devicetree+bounces-264784-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iOkjEFuFjGmfqAAAu9opvQ
	(envelope-from <devicetree+bounces-264784-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 14:34:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A6946124CCF
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 14:34:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F35043019515
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 13:32:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B969269B1C;
	Wed, 11 Feb 2026 13:32:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UJNrpWfA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED5B51FDA61
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 13:32:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770816769; cv=none; b=lm5I7+v3HIld9oMKTvu9kx21tjVrXwo/52K2DyJBNpt1Whmkyp7EHZ6uMvKYzf7Ft0b/ODDonm999cfgl4sv7DYQXqFoIw+7kjaA1n+8aQLhqbTMqAUU5b8+44EogHTaPym3q/HW4hsKDK7BXKtW7uvucdgHB0OGWuSqjXZpl/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770816769; c=relaxed/simple;
	bh=nO4RyeFHjHYIJrJZLaxwdROhYOsIjOdlkOslHNR92Eo=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=DSpxHtzvoJiUxUfYuZfi3FGU8Ke6ityUsYRgpNbNjJKlo/rvAojZv5aJFzn5rUM1kkK68FNWhs+JbEDbxZ5FhQpZ7ipf8HBWeeY23pKtdQ5e83jW4Z0j7W5aeWdP0n4xTV+DHT4H8swmcPss+RaCQDYwuZXR2EWEMD1WEVr4vSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UJNrpWfA; arc=none smtp.client-ip=209.85.128.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-79088484065so20098097b3.1
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 05:32:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770816767; x=1771421567; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KNjtiUKn9uwrlqe6xzKXcs6lWXAK19SBBem7iPc2udY=;
        b=UJNrpWfAC2RMn7VzuXlIKslf9yPpovbq1IdGTjYzOq44dp0vTCurHIVTP4v0wNGMsx
         2fd78RJazbNRY3bRfnY/w9R0QKwxwOvAD2jrLu6D9e0/Ho/C6lq6leQK8loxRb+1WPAb
         99RjR9L6IME6Pr8rbmY0H2fnfCm1NFyFdxv463m5II6LDpjODNkr0CaajrueqGusCObd
         qMYruQUL5cHChYvOgppuLVYoa1cublJxJgJ/BryXxFTrQugbAh+E+E8ePVxhnSTGMfaO
         IEt/Wv9exg8uE193ijN6v2YdXAbSkSq2VoBmY403mFepoEb5xYmMkB1AuwIfLLMCvlMZ
         59TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770816767; x=1771421567;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KNjtiUKn9uwrlqe6xzKXcs6lWXAK19SBBem7iPc2udY=;
        b=Lj+mfraazoBdDnHsjcADS+xcwaNGKGJhmi5AdC7ZZRiIkBhzZ3zVvWwDJ8JzX+LDkk
         xJChOLQyVWUsHtvQBXDO+aBCYdppyGPyqf4YXCeuVrIdogEORAY6BZniT/bUXFRXAD06
         QnYVKMsgSyYxnJvCuGb4grMZDNvIyaszrrJJkjukCJW2Tr28cGw7vYqQ6KMZkraeyEBj
         1Oe7zRinC44Km6sOZ4Z53add9SlZeBj0+r+NzGxmyAxH7lMP8w9rA7lcK6SaUDr6PtrY
         +pH98mzLkagXoXH4iIj1HZhtyMAJAPqBnG4KaRO20DsJPjEtxB5+Pk4ymAkuwEEjrySX
         0VeQ==
X-Forwarded-Encrypted: i=1; AJvYcCWN5ycrEN/RQPSyAa1ql0T9IsKpO7pAyQfozH4G2JHB0qasDnNye2etj0UuPXgS7zQKNyKtstLmYyov@vger.kernel.org
X-Gm-Message-State: AOJu0YydHFlpCFgX4eEelQagFMAYeSLCcckP6KhLyEaRr4OjTRvQ+QZs
	KjWKwfxqFkHItxRmhao3Gji6LSkmON8Jip4SFZaHddMLe0zR976lcLCOcNwUpA==
X-Gm-Gg: AZuq6aLn2E5rf5odXobef+TKh/d8JOEJ22HlcND1UECmZ+iHd6PNIx2H7hvDLwGKMgu
	mUIj+JW4joxh5bA2JBhZXdAa4P4Z0rxeNe+NKJBqEpfEKzczvGzGfufVLPFZjDzIoHRnXXAdszv
	fu9Hil99tHWSSTmJBfLp0QE30lXO6eG1HqnqaCZ4GHs9rrdfFMtlTexOB/h8hA4mdj+dF67n4Xx
	2PfcwuqYPomx7fhM6ZgXkU4xH5PzVWkvOa0hzDweqkQuWW7vr700XBaWAOsRJFpDSoUMEg3K8Ca
	2gSre3lfNfp/wPn9nAlrE/uIaubT1GVIEgZMqYXmk9Enz1tpMYzSZC/KgIAvAycJqclqPzXtual
	bBxZJRL2Yved9FXM9qmXJSnRTqQl5ZOzNYa+LLooCs7psu2uN9E676NTEOiVqHkrqD7fd34rqL1
	b49ZXYQIqS3fhyyJWvoar2tU/Z+g==
X-Received: by 2002:a05:690c:39c:b0:794:ef94:1222 with SMTP id 00721157ae682-7952ab57b30mr352057867b3.55.1770816766817;
        Wed, 11 Feb 2026 05:32:46 -0800 (PST)
Received: from [192.168.0.40] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7966c267ba3sm15525077b3.48.2026.02.11.05.32.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Feb 2026 05:32:46 -0800 (PST)
Message-ID: <242d5502-bf58-4e25-8258-8a6c75ff3623@gmail.com>
Date: Wed, 11 Feb 2026 15:32:41 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Erikas Bitovtas <xerikasxx@gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: iio: light: vcnl4000: add Capella
 CM36686 and CM36672P
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner
 <dlechner@baylibre.com>, =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
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
Content-Language: en-US
In-Reply-To: <6f97c68d-0236-4d04-8199-768ecee7c4dd@kernel.org>
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
	TAGGED_FROM(0.00)[bounces-264784-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A6946124CCF
X-Rspamd-Action: no action


>>>
>>> Please implement previous feedback.
>>>
>>> Best regards,
>>> Krzysztof
>>>
>>
>> Since I am making changes to the existing driver instead of creating a new one,
>> I introduced a new patch series. As I mentioned in the cover letter, cm36686 is
>> fully compatible with vcnl4040, so instead of creating a new binding, I create a
>> fallback compatible for the device. I probably should have named this patch
>> series something else.
> 
> That's fine, but that's v3 of previous patches. Your work was to add
> CM36686 support. How you do it, evolves, but patchset/work is one
> continuous work. When you rework approach next time, you also start from
> v1? And then you go back to previous solution of new driver it will jump
> from v1 to v3?
> 

There has been a misunderstanding. I assumed that since I will no longer
be developing that driver, this warrants a new patch series. I apologize
for this.
Here is the changelog since v2:
- Remove the previous unnecessary proposed driver and bindings.
- Add a fallback compatible for cm36686 of vcnl4040.
- Add a new compatible for cm36672p.
- Add channel info for cm36672p.
- Remove redundant information in the dt-bindings commit message.
Here is the link to v2:
https://lore.kernel.org/linux-iio/20260209182432.00006c3c@huawei.com/

I have received some feedback regarding the changes I made to the
existing vcnl4000 driver. Shall I submit the implementation of it as a
v3 to that series of patches?

