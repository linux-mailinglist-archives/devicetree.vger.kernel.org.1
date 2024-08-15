Return-Path: <devicetree+bounces-93945-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5C5953662
	for <lists+devicetree@lfdr.de>; Thu, 15 Aug 2024 16:57:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AB0A3B241E6
	for <lists+devicetree@lfdr.de>; Thu, 15 Aug 2024 14:57:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 287D81A0733;
	Thu, 15 Aug 2024 14:57:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="b+vo27Fr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C7F329CE6
	for <devicetree@vger.kernel.org>; Thu, 15 Aug 2024 14:57:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723733868; cv=none; b=Rv+pJy+VJ9Ud5t5WEvMhsuEoYuVVsKlVwWpwbFoQPc0eP18wB8tr27SIOAODSQjNmIrPN4P7d0K4nPouzqLOdmJZtlLJ7mWL/IQHhbQypuQMXeCa0G2R1JRxAjkIswCDTKMsuoNkYE/9qi7A2/x07aL1K0gA4AKqDo+m9EWunC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723733868; c=relaxed/simple;
	bh=+5K/Btx/TwGZCJN/huQpo5khO0kRBU/fh04Hn9JE+50=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nGCLEVfSFSVgtgSXHg1zk1s+mrN6iM2Lmbcd5tquf2PkIcpH4a9eqG6eZbVFnOnaOGGuInM7FpuOr0Wi1xr1srBEHDGjYN+lQ1VeAllPHf/xBffz6sAp2UV6m/51Vd8TAS/6u6p3wdL+HR3usgN+gtKP7QZz+0hP8wFfXNMsEg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=b+vo27Fr; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2ef2e37a171so1996801fa.2
        for <devicetree@vger.kernel.org>; Thu, 15 Aug 2024 07:57:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723733864; x=1724338664; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MGewzlFvLMwY5F7O9ijRWl2bV2EJSq3cBPQq7BN41c8=;
        b=b+vo27FrztrN1/owcEfCVbl2ickVUEpNuCTMrNI78gl2XRvVjPnrVTZYeBBmCSVwuL
         7GJPhGBU/dwpyaePDqCW4mtUPWqFPI/9Bndj4nz1Pn0/7Lj0OowqkbFp+ji27A7ljL4f
         y6uTg234wLe1rrECWcn7F/ilC3c+elm59SVHoKJG5NWjWcpQPcHgk/zpvQW2gaOhopHr
         HX8q46cvYJUE+TXX7shZWcJCyiQ0i0DBO+UNC+MXRik7HBYO36uCpV/KH4++/0LPHcka
         MhMPt8CPMAO096Mat4V6BscUJR1A7ugHqBmQ2U2DYcaruoSVlH8D7TV1zyJIaVXdvrrq
         jchw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723733864; x=1724338664;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MGewzlFvLMwY5F7O9ijRWl2bV2EJSq3cBPQq7BN41c8=;
        b=sBBvnzqi+mCdWAM2KAuU/JcmDHtkdxTSyKwukn6P7ByY/mH1/6oDx3T8bihbjpq8Hd
         KQKsF0bArhVnFlFHB026bhmN9puAzGozmR6CTGVrQtfD6QPtnHYaONr9I8x7hZnRgoin
         TDPCImqfDePw1Q6sxp0C+8OHYhuYWXIqjAR9OZaBbZP1NObEmq6Lz3Xe3D+4MP3NJvaw
         5ZMJGPFXPbO2K/J7wHLETAayqTgJQ+sG08veRcXICB6pi+yGycXTF8ui6pJPL0f1Fcxd
         y/IpxdDiSfPqQez5sfgo1nf4p4sBbnoC5ObcQ8Ue1Rv9wVV3bf9d/ZNA7yzDeDyX9ATN
         ukGQ==
X-Forwarded-Encrypted: i=1; AJvYcCV1ZCojjDwtjYTrxPNbPxNmZWusAMPBqlZm8CsCVKIBJaariYBXpgWmsOE5Nu9aBP7IH4PQRl4ecryu@vger.kernel.org
X-Gm-Message-State: AOJu0YxqXmO2YvVbN7OH3qWjo+igaMGGdZlswB9Y5zJh3hXbZjlTqc0N
	DYVWVd+dDPDV5JO6pqpuwKQOIv+cMGhjxdnKlhLGgzm2dtEKGsYWUdxL+UDMK0Y=
X-Google-Smtp-Source: AGHT+IG6UXjW3gQWoJfqhuj9Xu0bOae1WV5QF+HqKnFmE97G1WBc7kgrwR0nF9RBjNnwMELJQCJrvA==
X-Received: by 2002:a05:6512:b1e:b0:530:ae09:f2f6 with SMTP id 2adb3069b0e04-53309db8dfcmr994064e87.4.1723733864137;
        Thu, 15 Aug 2024 07:57:44 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5330d3af9f3sm224026e87.56.2024.08.15.07.57.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Aug 2024 07:57:43 -0700 (PDT)
Message-ID: <7130beef-7787-42a1-85c8-f27574241ba7@linaro.org>
Date: Thu, 15 Aug 2024 17:57:42 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 13/13] media: qcom: camss: Add support for VFE hardware
 version Titan 780
Content-Language: en-US
To: Depeng Shao <quic_depengs@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, bryan.odonoghue@linaro.org, mchehab@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@quicinc.com, Yongsheng Li <quic_yon@quicinc.com>
References: <20240812144131.369378-1-quic_depengs@quicinc.com>
 <20240812144131.369378-14-quic_depengs@quicinc.com>
 <4b745c1a-33d9-472a-97af-153a2a7c8721@linaro.org>
 <2de0b7a8-b879-49e9-9656-ec86f29ce559@quicinc.com>
 <b0787142-0f85-4616-9895-72e33f21c2da@linaro.org>
 <82200889-a98d-4815-bc31-f81b15d02513@quicinc.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <82200889-a98d-4815-bc31-f81b15d02513@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Depeng,

On 8/15/24 17:42, Depeng Shao wrote:
> Hi Vladimir,
> 
> On 8/15/2024 7:20 AM, Vladimir Zapolskiy wrote:
> 
>>>
>>>>> +void camss_reg_update(struct camss *camss, int hw_id, int port_id,
>>>>> bool is_clear)
>>>>
>>>>> +{
>>>>> +    struct csid_device *csid;
>>>>> +
>>>>> +    if (hw_id < camss->res->csid_num) {
>>>>> +        csid = &(camss->csid[hw_id]);
>>>>> +
>>>>> +        csid->res->hw_ops->reg_update(csid, port_id, is_clear);
>>>>> +    }
>>>>> +}
>>>>> +
>>>>
>>>> Please add the new exported function camss_reg_update() in a separate
>>>> preceding commit.
> 
>>>
>>> Thanks for your comments, I will address them in new series.
>>>
>>> But I have some concern about above comment, you want to add a separate
>>> commit for camss_reg_update, maybe camss_buf_done also need to do this,
>>> but I guess I will get new comments from Krzysztof if I make a separate
>>> change, Krzysztof posted few comments in v3 series, he asked, "must
>>> organize your patches in logical junks" and the code must have a user.
>>>
>>> Please check below comments.
>>>
>>> https://lore.kernel.org/all/e1b298df-05da-4881-
>>> a628-149a8a625544@kernel.org/
>>>
>>> https://lore.kernel.org/all/d0f8b72d-4355-43cd-a5f9-
>>> c44aab8147e5@kernel.org/
>>
>> Krzysztof is absolutely right in his two comments.
>>
>>   From what I see there is a difference between his concerns and mine ones
>> though, Krzysztof points to unused data, which should raise a build time
>> warning, and I asked to make a separate commit for a non-static function,
>> I believe it'll be removed by the linker silently...
>>
>> The potential runtime logic change introduced by camss_reg_update() in the
>> generic code is not trivial, which opens an option to update/fix it lately
>> referencing a commit from generic domain rather than platform specific one.
>>
>> If someone for whatever reasons wants to merge a new generic and shared
>> camss_reg_update() function within a the platform specific code/commit,
>> I won't strongly object, let it be merged together then.
>>
>>>
>>> Or I don't add reg update and buf done functionality in
>>> camss-csid-gen3.c and camss-vfe-780.c firstly, then add them in a later
>>> commit.
>>>
>>> Could you please comment on whether this is acceptable? Please also help
>>> to common on if one commit to add them or need two separate commits, one
>>> is for reg update and the other one is for buf done.
>>>
>>
>> I would prefer to see two more separate commits within non-platform
>> specific
>> code, however as I stated above if it causes anyone's concerns, including
>> your own, let it be kept as it is done today. Eventually we do discuss
>> a non-functional change.
>>
> 
> Thanks for the confirmation, even though I add the rup_update and
> buf_done function in later commits, it is still called in platform
> specific code(camss-vfe-780.c), so I will keep as it is done today.

let it be so.

I have another ask about it, please move new camss_reg_update() out from
camss.c into camss-csid.c, and camss_buf_done() from camss.c into camss-vfe.c

Thank you.

--
Best wishes,
Vladimir

