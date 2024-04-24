Return-Path: <devicetree+bounces-62173-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 096EE8B0314
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 09:23:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2E8FBB256BD
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 07:23:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AD9615885D;
	Wed, 24 Apr 2024 07:20:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="Z9EneyE5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0439E157E6C
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 07:20:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713943241; cv=none; b=aohFK3p9c8J4f/pYZJGFVQ3L7OyO5Dc0ZFVrve4Z9EuIM7x3d720/irv4drXuAWiFzUnmIHx9Lm1cUazbXAOF3XTe0Nuvo6HiUqMNrvBXMkZnDT9pVJoLcKaLXc5kg0tErgfy3nmqxAAkoItzUhQNOguIH8rjKuTgDlTxZ9Xfq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713943241; c=relaxed/simple;
	bh=t3TbzOqA7E+eFzYv9oGOP/XFW9qZXbepsxkHkMCQRpU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TGrhMwd0oDduOrrhkqUssCAp2IoF8PU58q+ZwHJzQpzL83+4vE+NwoVlbCzUd2BvaGf9GG0dj/UBLAlGHIveLLvV2YY54ZNvHHGZBQTdHhZWAPVCeLflaonIiqCAZ4UQ3nrWXpWUWjfSRG1CpHFgwh2SReyzP3/H6RkvFHijUkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=Z9EneyE5; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-349a31b2babso965592f8f.2
        for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 00:20:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1713943237; x=1714548037; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Wh6IUVzLnqPSctdxo0NfypwPQgB70lPKXDdkbVAdAck=;
        b=Z9EneyE5VzEG/QWTAtwB7lBp4+GbcK3li0Wr1IiPP3UQ4KJea1Y01aIUd2MbUax2np
         WvBijtAajL099LBTaAKFvYYs16yHf+jNjVM0h7t3/LpYjAjYGgxiTEfsjky5lkHMVM0M
         QayoyiM8g4AzlE1QdRg6rKdxvAN1QAPKP7cEAui/kjgvO4OniC03QRgtwG/o0nEedEAk
         s79p8ZArN2iN1xzVjekNZzeIW419PW9aSo1kChpGlMxRU9UZt/eGinQhyExOm43V+ryF
         JFulyXMVkOwp6bL8BZ7rkMY37AKFzKho9uUGHu9RYnH3GpMKdmvneNfUHDQQKK9uN+cK
         Gr2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713943237; x=1714548037;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Wh6IUVzLnqPSctdxo0NfypwPQgB70lPKXDdkbVAdAck=;
        b=iNO/BpKkRwGKiXxXQqRv1Mrs5sVOhtXe5FfxilAXZ80DlQmLZWLez0JAoarT1K8B+K
         G3ZBcf6KoqqHlWL64msnF9x3ZBm6YikNsxJBlaIrQnkYhqr/rD5d8D9pYmZ234GPr5b9
         ZfAwju3KFapEDG2C6J3HY9hOUbWCErYF+YLwLoGa5SGz8OEpzvnV1sf7mbL8O/+Aq3Fw
         W0EZt+mFAxpYhUq33nZNWAgjPxsk0ShwSG2/LJ7jEwN9LLpY9HizMru107evmUj7+/m/
         qLKSOtjcUAMQ8BQn8pMgfWF8LFszVx+5ayVvVxYvJ1rJ5cIcLh41ixx1k9CJ/LaOInsY
         rptw==
X-Forwarded-Encrypted: i=1; AJvYcCWlZByl+cdEcNEvSY4onQQIr48VKVjHPtZzjhnyVvKRqBHooUWTm/aM97/Suii93YBpisDF6kfkFYfmH6qDMlRzq5+kO14gG69vmg==
X-Gm-Message-State: AOJu0Yx+DJwbBez0+9pg3n62IyD93eazNjNfCEGx67uWrXIB1zYvRpS1
	qmKnYtS+DMb+qfiNDbpcoPnaUztf7NYz45WRQNhLMxB/aNMLJ35Rwv1CHVSiOLo=
X-Google-Smtp-Source: AGHT+IHP+69RlO5qIlo2n+3DPXpuAbjWbkk3HWWythfI/NUvNEynCKTR9B5rbrkI3aaY3f989CRFvg==
X-Received: by 2002:a05:600c:46cb:b0:41a:b9a1:3ecc with SMTP id q11-20020a05600c46cb00b0041ab9a13eccmr1021588wmo.3.1713943237148;
        Wed, 24 Apr 2024 00:20:37 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:999:a3a0:6057:6f32:d1e5:d4d7? ([2a01:e0a:999:a3a0:6057:6f32:d1e5:d4d7])
        by smtp.gmail.com with ESMTPSA id t6-20020a05600c450600b0041a3e724fc5sm10907059wmo.19.2024.04.24.00.20.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Apr 2024 00:20:36 -0700 (PDT)
Message-ID: <e39f2fea-868a-4a79-b7a5-bef8f15de688@rivosinc.com>
Date: Wed, 24 Apr 2024 09:20:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 2/7] dt-bindings: riscv: add Ssdbltrp ISA extension
 description
To: Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Anup Patel <anup@brainfault.org>, Atish Patra <atishp@atishpatra.org>,
 linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kvm@vger.kernel.org,
 kvm-riscv@lists.infradead.org, Ved Shanbhogue <ved@rivosinc.com>
References: <20240418142701.1493091-1-cleger@rivosinc.com>
 <20240418142701.1493091-3-cleger@rivosinc.com>
 <20240423-poser-splashed-56ab5340af48@spud>
Content-Language: en-US
From: =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>
In-Reply-To: <20240423-poser-splashed-56ab5340af48@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 23/04/2024 18:30, Conor Dooley wrote:
> On Thu, Apr 18, 2024 at 04:26:41PM +0200, Clément Léger wrote:
>> Add description for the Ssdbltrp ISA extension which is not yet
>> ratified.
>>
>> Signed-off-by: Clément Léger <cleger@rivosinc.com>
>> ---
>>  Documentation/devicetree/bindings/riscv/extensions.yaml | 6 ++++++
>>  1 file changed, 6 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
>> index 63d81dc895e5..ce7021dbb556 100644
>> --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
>> +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
>> @@ -147,6 +147,12 @@ properties:
>>              and mode-based filtering as ratified at commit 01d1df0 ("Add ability
>>              to manually trigger workflow. (#2)") of riscv-count-overflow.
>>  
>> +        - const: ssdbltrp
>> +          description: |
>> +            The standard Ssdbltrp supervisor-level extension for double trap
>> +            handling as currently defined by commit e85847b ("Merge pull request
>> +            #32 from ved-rivos/0415_1 ") of riscv-double-trap.
> 
> I see the proposed ratification for this is Sept 2024, and is marked as
> "Freeze Approved". Do you know when it is going to be frozen? Until
> this, I can't ack this patch. I had a look in the RVI JIRA
> https://jira.riscv.org/browse/RVS-2291?src=confmacro
> and it looks imminent, but it's unclear to me whether it actually has
> been or not.

Hi Conor,

Yeah, this series is a RFC since the spec is not yet ratified nor frozen
and its purpose is actually to get to a frozen state. As to when this
will be ratified, I guess Ved can probably answer that.

Clément

> 
>> +
>>          - const: sstc
>>            description: |
>>              The standard Sstc supervisor-level extension for time compare as
>> -- 
>> 2.43.0
>>

