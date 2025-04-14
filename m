Return-Path: <devicetree+bounces-166636-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F420EA87DA4
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 12:28:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EEB5C16778D
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 10:28:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6ED8126B950;
	Mon, 14 Apr 2025 10:26:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kTCW/Sp4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E974026B2B5
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 10:26:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744626374; cv=none; b=OJhMzZAO1gs4Emi9o4k6hptNDb2UY0WDoin9okpG6m7gDLqA0tWkVuld3ANZCvKjLUz/ADn06hCFoTtI43LUvStDBevEk8xdXNu9ufOZ+AaW5kzE0sZohZamc6xb9E3qUBrcYu44tyO4tdms7GFB2RaMtAw0UtTiMUNPhsz6veQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744626374; c=relaxed/simple;
	bh=axOkP6NTc205XhOa9w7TMVlJ2Ruy5u08gJeU2uxBXGE=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=ZLQANSYLv87cI5R9TSXm2mc51LUfu1wOiayBFyD+OX5aUkj8CwLHvOW/SkJ8T3b4PwrrKptAoNRatq1I8plhJkfMnO1oXxaDRWQE8dUoBoUcNxgME0TD1zEneol/XZf0yl7CcI1v+m15AzxDlcJo6nzkC+tLU3v16FLX/BNXYL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kTCW/Sp4; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-39129fc51f8so3546212f8f.0
        for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 03:26:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744626369; x=1745231169; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WAiRw+6AEMtqu5XLeIz/zqxIIUJ+4yNnfRZDXY2auok=;
        b=kTCW/Sp4xkfGdgBLOkHxvnhPuoF8FllcyVkTew7Zr4gKS24HP9qst5DftWUilXqq27
         OBOpZ4X0yWDQG6H/e1xa5NqXtFS2BIpaF38PGYFluRcEBq0VL/vcJhRvOJI5MH6KphgU
         H4cZxTdT0Oi+VBx482CFLRqbeYZG07SlzYf6WiYTKeLEGS96ptEcQ0+N64JDmmGTpIvt
         sm3xCmtcywFZoGVdpNL0vZrWt2OJuoVEVGGRT1GS26ZDPKfg4K4iaH1w1qkqPOfspQPw
         gnXzAeeWT55iyRI/roQHfFu0X4zLiC+zsYjRAWNoKubk+CyJplLhl7FgVvklEYoy43SQ
         UHog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744626369; x=1745231169;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WAiRw+6AEMtqu5XLeIz/zqxIIUJ+4yNnfRZDXY2auok=;
        b=wSaRfrVr+P5PEKKZjFGOA91VeHfL2wOH6GC0xYzPo11t8dmwwE0nUMICyTAXgNqZJA
         c5MJTzVAY70WaLHp+yZ/RFjap1ABUYWItAt6MEKRSkZZg9X/k0kHfAzorRMD2PUesQW4
         YCST8Mno05QglnIjFzjmyuRTQCjNYstkkXQ1O/TaDF17KHD/Qt1zjaOM+nbVhr6hGtbp
         w2dLB89wgrmJcF2azdDLmmlqp2aWakRnVL23Pa1gvLGHq1ZW/rbjuW7laRicc8pdVV5V
         UNPL8FIKsTOl11v8vNmRg9hEQLTsCGlkpAmYHhhmrZnP6A2BrPP9GEAjlX+kLTevx2WF
         6nSw==
X-Forwarded-Encrypted: i=1; AJvYcCX6LQDWc2t+aeXlQPBuJLmIUvk1QbHSQhASEyYcUCVqUn4KtRY73jmevulYjXQJS8B67F6O+pnbqvh8@vger.kernel.org
X-Gm-Message-State: AOJu0Ywrzbn7l6rO4CdLxfvN9vGoKkdp42tbkHAze5/32aJW7qiYgWHR
	bYwryjOcF1hr1RB6BftRVMbndSv33ayP3tlzILptdIoIX0CdWwTt2kuAUhc5VQM=
X-Gm-Gg: ASbGncs5Nd3fzgwQzi59Wqqxg+/2tFs4PWl5BkEtT7G2AmMuPDJ4u9lZfjVOajiXSXn
	nx7RpZYuRyZ6ywk3ZSLgEMT/oYURzVEe+dvMNyahq0OGays9xzUG4P2wTpwVHKdhSj2nXC1ydEl
	r8Ep+OxsyrtE3dtdeoBsPB0CwMBd0fRA/tOsc0AEZS14iEj00zxiEO943xJnN0uY2y7Ti1tiYyq
	wcMoAxE/Jkn2Tl2QTwwsfPV7+arUkuZqmJYTNyVHFmRVO2W6YeZrYrScifSJOJRijB7p5e2FGT6
	1DAZoP4+p30/n6LnvrYkYHRGCwRt+ddqXzaQdfrQAkg7f/N/pH98MJLes7u95jWo7n5wtPl54VS
	IncBcVrDqTDcPIKvA
X-Google-Smtp-Source: AGHT+IF3yfPKg4s1qCnN4GnM/8MBvLAVhWgFCy6k4OXusWu3X8aq2b3tylwXbrCicC8DSWVM4b6URg==
X-Received: by 2002:a05:6000:2812:b0:38d:d371:e04d with SMTP id ffacd0b85a97d-39eaaea70d6mr6538663f8f.34.1744626369174;
        Mon, 14 Apr 2025 03:26:09 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43f2066d6e8sm180459745e9.23.2025.04.14.03.26.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Apr 2025 03:26:08 -0700 (PDT)
Message-ID: <137c68d5-36c5-4977-921b-e4b07b22113c@linaro.org>
Date: Mon, 14 Apr 2025 11:26:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/20] media: iris: Skip destroying internal buffer if not
 dequeued
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To: Dikshita Agarwal <quic_dikshita@quicinc.com>,
 Vikash Garodia <quic_vgarodia@quicinc.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Stefan Schmidt <stefan.schmidt@linaro.org>, Hans Verkuil
 <hverkuil@xs4all.nl>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, stable@vger.kernel.org
References: <20250408-iris-dec-hevc-vp9-v1-0-acd258778bd6@quicinc.com>
 <20250408-iris-dec-hevc-vp9-v1-1-acd258778bd6@quicinc.com>
 <811cd70e-dc27-4ce0-b7da-296fa5926f90@linaro.org>
Content-Language: en-US
In-Reply-To: <811cd70e-dc27-4ce0-b7da-296fa5926f90@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 11/04/2025 13:10, Bryan O'Donoghue wrote:
> On 08/04/2025 16:54, Dikshita Agarwal wrote:
>> Firmware might hold the DPB buffers for reference in case of sequence
>> change, so skip destroying buffers for which QUEUED flag is not removed.
>>
>> Cc: stable@vger.kernel.org
>> Fixes: 73702f45db81 ("media: iris: allocate, initialize and queue 
>> internal buffers")
>> Signed-off-by: Dikshita Agarwal <quic_dikshita@quicinc.com>
>> ---
>>   drivers/media/platform/qcom/iris/iris_buffer.c | 7 +++++++
>>   1 file changed, 7 insertions(+)
>>
>> diff --git a/drivers/media/platform/qcom/iris/iris_buffer.c b/drivers/ 
>> media/platform/qcom/iris/iris_buffer.c
>> index e5c5a564fcb8..75fe63cc2327 100644
>> --- a/drivers/media/platform/qcom/iris/iris_buffer.c
>> +++ b/drivers/media/platform/qcom/iris/iris_buffer.c
>> @@ -396,6 +396,13 @@ int iris_destroy_internal_buffers(struct 
>> iris_inst *inst, u32 plane)
>>       for (i = 0; i < len; i++) {
>>           buffers = &inst->buffers[internal_buf_type[i]];
>>           list_for_each_entry_safe(buf, next, &buffers->list, list) {
>> +            /*
>> +             * skip destroying internal(DPB) buffer if firmware
>> +             * did not return it.
>> +             */
>> +            if (buf->attr & BUF_ATTR_QUEUED)
>> +                continue;
>> +
>>               ret = iris_destroy_internal_buffer(inst, buf);
>>               if (ret)
>>                   return ret;
>>
> 
> iris_destroy_internal_buffers() is called from
> 
> - iris_vdec_streamon_output
> - iris_venc_streamon_output
> - iris_close
> 
> So if we skip releasing the buffer here, when will the memory be released ?
> 
> Particularly the kfree() in iris_destroy_internal_buffer() ?
> 
> iris_close -> iris_destroy_internal_buffers ! -> iris_destroy_buffer
> 
> Is a leak right ?
> 
> ---
> bod

Thinking about this some more, I believe we should have some sort of 
reaping routine.

- The firmware fails to release a buffer, it is up to APSS/Linux
   to run some kind of reaping routine.
   We can debate when is the right time to reset.
   Perhaps instead of ignoring the buffer as you have done here
   we schedule work with a timeout and if the timeout expires then
   this triggers a reset/reap routine.

- Since Linux allocates a buffer on the APSS side, you can't have a
   situation where firmware can indefinitely hold memory.

- APSS is in effect the bus master here since it can assert/deassert
   RESET lines to the firmware, can control regulators and clocks.

So we should have some kind of watchdog logic here.

As alluded to above, what exactly do you do if firmware never returns a 
buffer ? Accept memory leak on the APSS side ?

Rather we should agree when it is appropriate to run a watchdog routine to

1. Timeout firmware not returning a buffer
2. Put the iris/venus hardware into reset
3. Reap leaked memory
4. Restart

I see we have IRQ based watchdog logic but, I don't see that it reaps 
memory.

In any case we should have the ability to reset iris and reclaim/reap 
memory in this type of situation.

Perhaps I'm off on a rant here but, this seems like a problem we should 
address with a more comprehensive solution.

---
bod

