Return-Path: <devicetree+bounces-251292-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F2824CF0F8A
	for <lists+devicetree@lfdr.de>; Sun, 04 Jan 2026 14:12:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 20684303294C
	for <lists+devicetree@lfdr.de>; Sun,  4 Jan 2026 13:11:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 385802FD1B1;
	Sun,  4 Jan 2026 13:11:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LaitkZen"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EC4D2FBE1D
	for <devicetree@vger.kernel.org>; Sun,  4 Jan 2026 13:11:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767532301; cv=none; b=gKeS1C0yMCxZRiIUKWwi4RpAoYl9e1ogJ452EDB/ef3pmDW0KolmFzeyDAMYd+eA7IDXM6gst8R+DlfIW0vTg5Pf9o3gUnNIpuN8g5h6dtHdsPG5oHBTP3FcBdwiHnkc4UdcpBH1iIs2/FzJ+AoDHMwoo/XtOODfgXV0uuA3myw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767532301; c=relaxed/simple;
	bh=VJZpShq8bBRB1Lik7KHqd9TCYpB1jo8XV3QyZlKbldM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PcGP/cWd3K6wumQJVhDmTHEkDXXjsrw0NZge7trk9DDkP+F7+Uiij214eEaK9vp2+nuNFa+k41Am32AXBc/g3O6GyJXnAZQyr1bpQah79qY/OwkLa7ZC2+Av6CZp6FTo19U9KeBjS9DyT4gfBRG70qg3JqXMZeqn24LBXsjCr40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LaitkZen; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2a110548cdeso178715305ad.0
        for <devicetree@vger.kernel.org>; Sun, 04 Jan 2026 05:11:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767532299; x=1768137099; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/qTyygG5/o7qaoK0/PThRHBBj4/zlp1eAtD/QV9Abjg=;
        b=LaitkZenhkTrGw/+Q7eKzoQ28dXgxyAiwQ1cv2u2lHc1qMI5a818ck95QM322L2PZa
         O85In3JJaT8NlI66RkSVJ2LpPaqDTMBtlj6mUN71CrdS3j1qi0V5FN0le4mqafkOhCS7
         36uHd8nnpRZDhHO7txsi1nlLL7BP3BSaZEsBYlNypmda/41xxwrU5XchronUuDY+ZY31
         o4xNxtwdv4frOuC0Odlz0TmPnuBVBTQ7eFLXwk5FnOgOVvFXmamLQxqWsEtThcuFYgJt
         wEXBtpA+fhWwJUyYvVbYHJxAa5TFvF+v4q3FtDWQ+DuEjtj2mXjHT6LaRZLhbUznbpW2
         ucLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767532299; x=1768137099;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/qTyygG5/o7qaoK0/PThRHBBj4/zlp1eAtD/QV9Abjg=;
        b=CNxyaATwqPuDZNpcMJx+rvdMwyq4xycVcFaOmixLYJXY0OxRBC3qBQV3PZSnlBneA9
         d44k27B5DNJgQA85ATRYhomJOEa5xgvzHyDkMBQuZUqqnC/AzYvwM4Wc87ndA9o00uSr
         fINIgIEGTPKNGl+HtZ7uDU1rj+BIzIszRFFHRumLR5t6nhgth4DWfIQ6+/dLma+DTSL9
         n9SPYab8L3Qos6JVaEY/utrTl3/ZyRF4G+fCuWUmv7tRDuTnDSeOm8NEbn1GFGPm2Kqs
         aMQs4904rzrfTei2wnYBReBg7Yd8j+zTNDT/hXm2eMWIBbx3qnkOtOTkhgYMDzK2//MA
         /Flw==
X-Forwarded-Encrypted: i=1; AJvYcCUgDgJIGK5pyj5giRojn/ao7FxxKREroCPoTzkaC51kVjIBNV14qhmd2LSHouFo9/ALUMmektQbPJh/@vger.kernel.org
X-Gm-Message-State: AOJu0YxaGcw4sri76p3J93s8LIqcNfdxvXnK99F2bxATieg0NRCXRpeM
	prmrIVe3SD5Ye6pdec/+iN1Ar34MmElDfaOow2XmQQmEmgLYCOKrM7fK
X-Gm-Gg: AY/fxX5wSAPefPfDj/9jtU4NaU67/XowDTbWW/8w9UXgJgswRzp0fnsz+S2BAWcwfbf
	H4/ew1RnH/NSAETNxvnXbSIlsTCEr1Q93rgEqOuQ1db/q+1uPj15N2J5C7pGNnAeJWt7o3QhU7j
	cH47QWaJ0Y4Via+C+GkjElSyb+Os5th7IUJnz+5gB10luXvWCb6ksymfttQni1yR2KeUciVmTZj
	dYKiy6slf6i/ee1CkB3Z+/3AIxXc2THGDKs+GRB+XH7fD6YGt9FOUy9U+uSfHFqLg7gtE4na14R
	n+C9PWe7q1yjhUBJeAXBfRJimk3LGVYIYbEcOF6Ikmpn1Sp/aWnxX96TJAA4r7gAAeAy62Jybjc
	zwxktQ1Kl4GT64/Tl4oY8/TsysKPOcSGccJQn8jAY++vpiJjOS2BAdMWz5PqRRYQeqn81jH5pup
	rSHzmTaHsD7xUCPVHPPiKws07g7uGtHh4pvsiYLc3xXKbMej8=
X-Google-Smtp-Source: AGHT+IHePctFlLcSlAy7erM/DvmylqsXn1Hu92E9o0E6BRcrSD397KbRiasrImtJD1K29Gz8rAeezA==
X-Received: by 2002:a17:903:2f0b:b0:2a0:9970:13fd with SMTP id d9443c01a7336-2a2f293cf1emr405004855ad.43.1767532298695;
        Sun, 04 Jan 2026 05:11:38 -0800 (PST)
Received: from [192.168.31.239] ([167.103.54.183])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d4d36esm429359175ad.63.2026.01.04.05.11.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Jan 2026 05:11:38 -0800 (PST)
Message-ID: <f6ff2086-19f2-46cc-ac89-d8ef3847b9f0@gmail.com>
Date: Sun, 4 Jan 2026 18:41:57 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 1/5] dt-bindings: arm: qcom: talos-evk: Add QCS615
 Talos EVK SMARC platform
To: Krzysztof Kozlowski <krzk@kernel.org>, andersson@kernel.org,
 konradybcio@kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251230130227.3503590-1-tessolveupstream@gmail.com>
 <20251230130227.3503590-2-tessolveupstream@gmail.com>
 <2e533b51-399a-47e8-bc3e-ab61797d6762@kernel.org>
Content-Language: en-US
From: tessolveupstream@gmail.com
In-Reply-To: <2e533b51-399a-47e8-bc3e-ab61797d6762@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 30-12-2025 20:33, Krzysztof Kozlowski wrote:
> On 30/12/2025 14:02, Sudarshan Shetty wrote:
>> Add binding support for the Qualcomm Technologies, Inc. Talos EVK
>> SMARC platform based on the QCS615 SoC.
>>
>> Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
>> ---
> 
> 
> Why did you decide to drop the tag and where did you explain that?
> 
> <form letter>
> This is a friendly reminder during the review process.
> 
> It looks like you received a tag and forgot to add it.
> 
> If you do not know the process, here is a short explanation:
> Please add Acked-by/Reviewed-by/Tested-by tags when posting new versions
> of patchset, under or above your Signed-off-by tag, unless patch changed
> significantly (e.g. new properties added to the DT bindings). Tag is
> "received", when provided in a message replied to you on the mailing
> list. Tools like b4 can help here. However, there's no need to repost
> patches *only* to add the tags. The upstream maintainer will do that for
> tags received on the version they apply.
> 
> Please read:
> https://elixir.bootlin.com/linux/v6.12-rc3/source/Documentation/process/submitting-patches.rst#L577
> 
> If a tag was not added on purpose, please state why and what changed.
> </form letter>
> 

I apologize for missing the Acked-by tag in this version.
I will make sure to include all received tags in the next patch
as per the submission guidelines.
> Best regards,
> Krzysztof


