Return-Path: <devicetree+bounces-246603-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 630D5CBE1B2
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 14:41:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CED8B307B086
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 13:32:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A53E4330D54;
	Mon, 15 Dec 2025 13:22:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CZI+sL+1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A53930E0FA
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 13:22:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765804925; cv=none; b=pte+aqArRwpa7kGDm1iEakf7LNrf5EB/Kiy9bvECh2WUC5CPpH/z0fCogVjjuAT3RN2mPFbjgfaG6hHKcrxEwdkqUI7L/45sH/Ex8WRyDJv0ikFrmp3zJ4ek4ypclErO/kliM0HC2p/xRM56Egztzr2l+PR2YxzSWIFGcWBg3Ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765804925; c=relaxed/simple;
	bh=Onw8Vj/aDi3C22Ax82mPzLYQUuwXBUMjVocKxST25sU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pt21yXLZpzqXTwfrtTHnYv/K/eqKgsnZARQ/uf1BWs6bDEDpgdbcvvdlS0UYqczAyob+UGr651dU0df3xKIw4oQkah2Z8zeFkWKNI9DkClL8b6LGKczXPK2/DekIHEPn5uIR91ycm+EYsokuyB2wZySkURvlN81GJgROHwaoWEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CZI+sL+1; arc=none smtp.client-ip=209.85.216.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-34c565b888dso1667385a91.0
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 05:22:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765804923; x=1766409723; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XFQclEnkXOaGEQB1i5aZAavoFZmjLHt34fVvrMxQ7/0=;
        b=CZI+sL+1ovOsqaLU2+bZVqGF+P0/VNFjhDxkMZXxxzi0uHIHRqmYYVOYp6MHrIGkFe
         uK4XHR+y+qhRGFON8pfgW6/30AR51K2jaXCuDH3R1PsdmxeEgT/yjmUjrH5BbIDm8BOX
         4e9HDdyQ0H5KzgCxXpsvUCHnvnqfsxICEkGXr17bqPbjwTI/kuhJ5Y7A4x7QFldRhhJd
         5aISL252WWDBR0CJxWBxk/JKo84b5DGYcYK1LfEWZaloiIxMf8q0Pn7mfokNOLDA2d+S
         ai6UKWKpyjf+3N0Ui5r7IPx/YzYwg6nUJ5fOFihMATHkpaJAgzXs63Ly2/Fh8zFbynJB
         eXxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765804923; x=1766409723;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XFQclEnkXOaGEQB1i5aZAavoFZmjLHt34fVvrMxQ7/0=;
        b=VfhzhGVD0xxhG/e9tvvCFXVY4CpCpuHrHzBTgL1IGIqalfl2rQfIeDlWRVZjdaTWqn
         +jg2E9dmgZ2WmpAHFP1h07Qupxks1voz+fblymY3OOq1jTapAy39yaD/4J3AHbdicmUJ
         Xv99efmtVoFt4ZjDSrB/O8gYnE2/ETFv7yVIMZHmJC3ez4Qb4TVnAYWc+hdLriMm3+Lh
         Q3XeKxhrdQ91yNpGzwpSwN6Xsyz3BQ4RyoWdHyiBQuFZ6v58+546OuPnC5NUGQ8qM+No
         w7DXjQ58M3ml3biyo/evirlNQ8zA57Dw7gIBAfWXfV5t7z9cA5DT4VNiZTUxe91yyMb5
         cZcQ==
X-Forwarded-Encrypted: i=1; AJvYcCWSOpXLF1xnbh6YootvTIOBhH0AheKXwDuQu5Hkuzpce9XF201RmW9VoelmAuTQ7urSJrKTjkkae2aT@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+lqyFcEbj8AIaTaMum3j7imrnWk+/VySFq8hbftk6JbuEgleN
	qN5gEFCmFy1dRjRZuulr3vjt5Gj9zPL9WkPnJ6jzBuYTmr0vctNNt1ma
X-Gm-Gg: AY/fxX7SY0DbIeA+msiO4CrWtfStBPNY9W6gwNGxzw4OvRKs3u9FhSh2jgrmFx4WNZO
	rVVqLEp7p+ZB211r8sVPStLma7sswjOA1xUE9dries6HLkBlzZ8g0uxU7KfTXQrWML3s9yWhR3c
	tmNMZOKibhwz3RrEs/n87FglWLwA7ye02MmLouC/jeUaAbBu8maA9F3R2CltRQSMbfeNqUjjfFv
	//2doB0gub5tDkiDCmMprWn05QkroLwZ6cHcv/7cabQoviyLlORt5j2ltElIWC9kqwzzE3nxUHO
	gtSpOqO99sGZZqD9v5M3Dq8vUapDvwxyyn2aVhiXZQYnXCX4pt0tQJCTPMCQQuNiGORZeXYsgF8
	mIFgMyZrptcBoCJ+MGc9c1In7hdzGDtaFncI3SV3TJDFJGp18cRy/+XBeKNJ8fY2ZXP9A2vvGdJ
	suoP9UbbCOYZVLOl730uPT6QeNNhLH1Krpb/w=
X-Google-Smtp-Source: AGHT+IHbaYhxvypHifIExhwZd3l2/ucRgBsyGvQHV3xb8nXjQoVtyds84IM8xW/n7EfLN2sBoGgpmw==
X-Received: by 2002:a17:90b:28cd:b0:340:d578:f299 with SMTP id 98e67ed59e1d1-34abd6cde3emr8712572a91.3.1765804922630;
        Mon, 15 Dec 2025 05:22:02 -0800 (PST)
Received: from [172.16.20.12] ([136.226.244.245])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34abe129a87sm9137934a91.0.2025.12.15.05.21.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Dec 2025 05:22:02 -0800 (PST)
Message-ID: <d9a91359-74a9-46ba-98eb-66f8b027bae6@gmail.com>
Date: Mon, 15 Dec 2025 18:52:30 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/2] arm64: dts: qcom: talos-evk: Add support for
 QCS615 talos evk board
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251107105735.1491273-1-tessolveupstream@gmail.com>
 <20251107105735.1491273-3-tessolveupstream@gmail.com>
 <badmoityubqmjsxune27vrh2e6htwkhvnak4uj7iiixnxhjpkm@qi56e6kilyt2>
 <db3edb31-4a1c-4512-ac46-ca3b4e9f187e@gmail.com>
 <CAO9ioeUVx_qf3no9aLgZ3OQQPQ7nG-2aTx8SHaEN5DUf02USWA@mail.gmail.com>
 <9b0c7cac-3577-4190-883b-7de26790b8bc@gmail.com>
 <luhtzwbic5a6a4tl5coa2zv3jxoo5f6sab7gv4gcxpubv3ioye@h7xlfx2bxcgr>
Content-Language: en-US
From: tessolveupstream@gmail.com
In-Reply-To: <luhtzwbic5a6a4tl5coa2zv3jxoo5f6sab7gv4gcxpubv3ioye@h7xlfx2bxcgr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 06-12-2025 08:13, Dmitry Baryshkov wrote:
> On Fri, Dec 05, 2025 at 10:58:56AM +0530, Anusha Ajithkumar wrote:
>>
>>
>> On 03-12-2025 02:36, Dmitry Baryshkov wrote:
>>> On Tue, 18 Nov 2025 at 12:16, <tessolveupstream@gmail.com> wrote:
>>>>
>>>>
>>>>
>>>> On 14-11-2025 01:38, Dmitry Baryshkov wrote:
>>>>> On Fri, Nov 07, 2025 at 04:27:35PM +0530, Sudarshan Shetty wrote:
>>>
>>>>>> +
>>>>>> +&uart0 {
>>>>>> +    status = "okay";
>>>>>> +};
>>>>>> +
>>>>>> +&usb_1_hsphy {
>>>>>> +    vdd-supply = <&vreg_l5a>;
>>>>>> +    vdda-pll-supply = <&vreg_l12a>;
>>>>>> +    vdda-phy-dpdm-supply = <&vreg_l13a>;
>>>>>> +
>>>>>> +    status = "okay";
>>>>>> +};
>>>>>> +
>>>>>> +&usb_qmpphy {
>>>>>> +    vdda-phy-supply = <&vreg_l5a>;
>>>>>> +    vdda-pll-supply = <&vreg_l12a>;
>>>>>> +
>>>>>> +    status = "okay";
>>>>>> +};
>>>>>> +
>>>>>> +&usb_1 {
>>>>>> +    status = "okay";
>>>>>> +};
>>>>>> +
>>>>>> +&usb_1_dwc3 {
>>>>>> +    dr_mode = "host";
>>>>>> +};
>>>>>> +
>>>>>> +&usb_hsphy_2 {
>>>>>
>>>>> So, the labels are usb_1_hsphy, but usb_hsphy_2? That's not logical,
>>>>> please fix one of them. Then please fix the order of nodes here.
>>>>
>>>> The node names come directly from the included talos.dtsi, where they
>>>> are defined as usb_1_hsphy & usb_hsphy_2.
>>>> To avoid breaking inherited definitions, we kept the same labels
>>>> in our board DTS.
>>>
>>> Please fix them in the base DT.
>>>
>>
>> The inconsistent naming originates from talos.dtsi, which is 
>> outside the scope of this patch series. Modifying these labels 
>> in our board DTS would break the inherited node references 
>> from talos.dtsi. >> However, I will reorder the nodes so they appear in a logical and
> 
> Please fix the base DT. There is no such thing as "out of scope".
> 

Okay, will take care in the next patch.
>>>> consistent sequence.
>>>
>>> This is a prerequisite, no questions.
>>>
>>
> 


