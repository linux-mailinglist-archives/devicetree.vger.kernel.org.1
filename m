Return-Path: <devicetree+bounces-236134-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 83C58C402B9
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 14:44:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3E9114E9656
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 13:44:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1287D2F361F;
	Fri,  7 Nov 2025 13:44:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fgloT27L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FE682F28EC
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 13:44:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762523047; cv=none; b=gcHH7Q+m9fDF6PzijdBHQ3YNO/eXti67nkdAgpPYnZj6bnjJp/Jb7WPP8xFDwV7nCwvUPAPUORG7pwS/la2UMdbwsDIf4B1LrSDnSykFhF8tEsuirsuTXXpprcc/lKxMro37/UyV4X3rewFKb4T1dL++6+QHjbD49YYsvM6Gmsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762523047; c=relaxed/simple;
	bh=Kek2ni9K7tlXAKMV2yxnaJRcPVXhJP6mmBKqRazXcxU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XLfIuFqZQanUOH/V0dZ4LccYogJr3pjvhW22rUfOurI3vYe/y2lPxDbFQ7cg2yYWwGKkYR79w/kTh164tzbXpECjyn5Kqa0oceQ28iyqzAG5J7H5ffmWPNTqAMKG1AuL77zthzuaDIEV192DE7t5MCVwXgeahjlW44RiiHewLSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fgloT27L; arc=none smtp.client-ip=209.85.215.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f179.google.com with SMTP id 41be03b00d2f7-b98983bae80so467053a12.0
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 05:44:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762523044; x=1763127844; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=T51sKGmzO5ESwXBqJuoshtIPtbH/U8t3k8P6xn6hgWk=;
        b=fgloT27LOWI0lrnwCSZ+TPo2ysIgzhsaJe7atO6MROOjr8STMdpBxA6hROblRwatJ1
         PzATAik3H8QnSO3I7nLYMRQFZ6OrlP5PHC2LUBqj8YBGPgMu+QSOvUKZkWlDc0eZI+Eu
         yAeXuoKv3zoibimpL6mBZMbOloF6dqLKNFeQCaA6291WUxD4iMe66JiO1XYm6czim2kq
         jTFv4Y7Cx3rBTim5W/GElrvU1eD7hrix7CX+QSSi3T9tyRZSyBgEsSeLXD3q5ESO4Wmx
         5brnhV/GAFs1TUyPJoCzoi0rG+dIt5fMt1FTqsvZRsAURbhYQfFxiKkSx9nhBD5OXhAt
         9lWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762523044; x=1763127844;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T51sKGmzO5ESwXBqJuoshtIPtbH/U8t3k8P6xn6hgWk=;
        b=FsNKo0Yr1iXdKEwX5zQ/55f5Gt32wz5Xx12ozK8brIJZHuSU2EpEV2PKgOEDAq4V86
         b2XxWXnZQHIchq1j2lgRqR5jxBJWk5qQM3rjh83f410j+WrLNO7xaJ4lyw7YDOdfGwAa
         Yez3o0CD6IHGR5kJtpHJLwianV2TySWSe9qcPekwtGXPkk7O3HH0oaD9AP2cAdWt/4u0
         UUgr/p8m044xFPyGRt3wwzp2VJQNIUkrwuSc0v12UmymcXTWj0GaOH8Bu4aZ3IIiq4oo
         iScUbSyyDy5BDHapGrz3OuMK3et7znl7Ex6hpnbpAQqAa6EuPISSzpvPKwAIpFE77nWL
         wa1A==
X-Forwarded-Encrypted: i=1; AJvYcCV3MD20Q88rvceIB/Z73H2axlt6oZVGPs3hAPg4GQ0MUetbIWwhiNAKUZE5LCXu8YZkh6uD74iIv4VP@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5bZ09QbHRnSQIO9XAGH8YAUVMQEgOVSMrNUI7fVUgAXWuDL9i
	08FhkarzCj8oAGA8M++Z5ltCUU3Az7fBFwcfnt/k/o3YzKoJaIMSLiycIWb9PhoXeP4=
X-Gm-Gg: ASbGnct6/z4L/ZL8pvOqIi4jLVGdcaptnTgreqEnd5Esys+Rkv8iUeqKUk74TfvZYDZ
	LBxqZUhj9lNMYgTWRyR2a6J5TQ7FSQK8fnr7cLqPs2/TRk23Uno8XJmLeBCNvo9mmYXuNC0jIZc
	YFYFEsp8vWfX+GnDDfNMyKjMwa6JyWV0kAgWn1kcKrjCck+1IW8y7pp3unI9yL9QAQZFcUtU6HK
	59fLmRdYyj4gMhwbLKJjcCSk5zMTRSyG42rGR5VJM3Se/ZY4cC08H4J5mcPR/FWViLiL5bv8YGm
	bcK6JoI0AimyXJz5daTAsbwGoUt5xl2F1bJG5eXUTT+kX38k06JCVkBsyy06MjL6cAPRyCllI7L
	KfLMWtSGOnDgo1IEnGrE/FD7BfQ77pkMXkMBhBH4+G6kg7EEu4yc/c0/XNFaMLzFqV/BVXjnk09
	Ii4i6WXRLtyMNIHQlmZB+j/qzghnlTxMtbMZJs9ozCvdDUdKnjy7OGfGHx3hjc7mnIe80UtKpC9
	omegLl7cfmlHPGTZPiVIvfF2FGbdPigN+MFl3IWDw4eJ00UIWIPuOTiu3Ly63BSQUdeqOazJ7kJ
	YY7d1+ZF
X-Google-Smtp-Source: AGHT+IEQTc9ird2Of3/UqLYc19J1u7EOVDH6cqhobpLuQc6M3Vc5JPZ+PlHeMA3ePxLyPNMmC8Ej7w==
X-Received: by 2002:a17:903:287:b0:292:dca8:c140 with SMTP id d9443c01a7336-297c047a762mr40598415ad.44.1762523043769;
        Fri, 07 Nov 2025 05:44:03 -0800 (PST)
Received: from ?IPV6:2402:e280:21d3:2:b586:93ae:6db3:2abb? ([2402:e280:21d3:2:b586:93ae:6db3:2abb])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-296509683easm61055775ad.15.2025.11.07.05.43.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Nov 2025 05:44:03 -0800 (PST)
Message-ID: <8ab11fa8-defa-47f5-a9cb-e3e95b5b32ca@gmail.com>
Date: Fri, 7 Nov 2025 19:13:56 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 3/3] MAINTAINERS: Add entry for TI ADS1120 ADC driver
To: Jonathan Cameron <jonathan.cameron@huawei.com>
Cc: linux-iio@vger.kernel.org, jic23@kernel.org, dlechner@baylibre.com,
 nuno.sa@analog.com, andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251030163411.236672-1-ajithanandhan0406@gmail.com>
 <20251030163411.236672-4-ajithanandhan0406@gmail.com>
 <20251030175510.00005af8@huawei.com>
Content-Language: en-US
From: Ajith Anandhan <ajithanandhan0406@gmail.com>
In-Reply-To: <20251030175510.00005af8@huawei.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/30/25 11:25 PM, Jonathan Cameron wrote:
> On Thu, 30 Oct 2025 22:04:11 +0530
> Ajith Anandhan <ajithanandhan0406@gmail.com> wrote:
>
>> Add a new MAINTAINERS entry for the Texas Instruments ADS1120
>> ADC driver and its device tree binding.
> blank line before tag block.
Noted.
>> Signed-off-by: Ajith Anandhan <ajithanandhan0406@gmail.com>
> Just bring this in along with the code, it doesn't need a separate
> commit.
>
> Thanks,
>
> Jonathan

I will add along with the code.

>> ---
>>   MAINTAINERS | 7 +++++++
>>   1 file changed, 7 insertions(+)
>>
>> diff --git a/MAINTAINERS b/MAINTAINERS
>> index 3da2c26a7..1efe88fc9 100644
>> --- a/MAINTAINERS
>> +++ b/MAINTAINERS
>> @@ -25613,6 +25613,13 @@ S:	Maintained
>>   F:	Documentation/devicetree/bindings/iio/adc/ti,ads1119.yaml
>>   F:	drivers/iio/adc/ti-ads1119.c
>>   
>> +TI ADS1120 ADC DRIVER
>> +M:	Ajith Anandhan <ajithanandhan0406@gmail.com>
>> +L:	linux-iio@vger.kernel.org
>> +S:	Maintained
>> +F:	Documentation/devicetree/bindings/iio/adc/ti,ads1120.yaml
>> +F:	drivers/iio/adc/ti-ads1120.c
>> +
>>   TI ADS7924 ADC DRIVER
>>   M:	Hugo Villeneuve <hvilleneuve@dimonoff.com>
>>   L:	linux-iio@vger.kernel.org



