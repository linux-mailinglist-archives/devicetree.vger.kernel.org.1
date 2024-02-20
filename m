Return-Path: <devicetree+bounces-43829-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A67B785B9B6
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 11:56:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 420BBB23C09
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 10:56:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E109657D8;
	Tue, 20 Feb 2024 10:56:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="iGzX1dRr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31EE63EA88
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 10:56:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708426599; cv=none; b=Yaud+PmG73mkAisgzuuo6b8ffKl+9QSTtZfHH8VAopy/aq3THl2M7K4iA6sGBddG5SgyF46Dzug0EZjkellazWuV/67QlepQM+UTVLBdOc6T2iDQGCvycXQ9bTJ5NM83WYHKWEhvIT8BySfK/1qU7f03oytuBB5CmuLuGZDfVtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708426599; c=relaxed/simple;
	bh=ItcZXiwx0pn9pwbWyTyXC3iPYxq91O+Pq8jBE7oWMmw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PgrPijeJ8ibKQ4Ong2b+3AgFH4bIsYQzP572SVzQwc8BZimGGRkDAdY2U4mlZPderigFSBZxZbpuEEqJBW4nQ7Ihm/HDGmo3bSo6/C1dPI1yIFealo36z/3906vbHJE6YgCHEJ3W9g8s1KCjmEGXAe6CIGIGQCgWl2vARY0bn9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=iGzX1dRr; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-33d118a181fso2603960f8f.1
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 02:56:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1708426595; x=1709031395; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fI4R5r0KNJPe3HSPx51xZM8JsxxzPIp8jg35tmYYxDU=;
        b=iGzX1dRrOK7IDSuLaQ+iomD7+f8cEWldHokAyCrEGXVDogSgK/iuYPH6lf8G+Jq4yn
         qiHtX30RUuYaVC3tsJdoeh2ah0YXPYmN2Xqw2ajxnj3i5qQgPfD6MQr4j3OW40u0AHs2
         hhVFzizTwlG6O/fKhhPinjcPEILFYP+Q+m1+xi7gqMOACPqAA64uzojMu68gTHtcFqgk
         2zIVw/sdR90SJqotZtPeWxyT0xaYD3GwT7K8vZcKn/i/r/vsJiQ9AoBSK9p85nPsmwpf
         Qv5gI1Q1sITf4ZyWQ8M6sEI/EG0svj8fscNYTjWRuXwz5QsduQtm6kgfUQ8yHTK5fSj2
         oApw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708426595; x=1709031395;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fI4R5r0KNJPe3HSPx51xZM8JsxxzPIp8jg35tmYYxDU=;
        b=YXhbCuEXDdaDgl4hNS4GN4JWn+B+xVieUN+FA5x2uN5d0Utn/aaL1LzyC2zPVoY8Ph
         ldMdVBaYECUZ1SwgRwL4/VrKliQEWJwRk8DsOi4NMNaY5SeGkxcVU21kXE78e5p9y46Q
         68L1st1UxyYMYUkMemMuXn12C0cKlhitmbS13QmdnosuRA+M4hCWI4Ar1mEgXo2gsxkd
         Y3K1Z3vOUySBduHpyZYk0Ap+WNQyzwbsu2jz69pYjmFDquvcy8U8QpgHJaP5mBnpag7c
         Yt2EW6/tphRdhYvvDxyLXslGMyXrD6ukve+Llxnm9qoo2HGvGuBnbIj0xYoxmptohMBR
         Tamg==
X-Gm-Message-State: AOJu0YxWzceYiLje/LbNkd6aMn4xpUAQlnZz5f+2eZhmzZ1vFFvPWldq
	7KiObrPn0L+F3ZL/ArAK2nSLLGTGNNV5QhaMDjZQA4on67UuzEcjkXafw0nIpwtbf+xQEAm+/5x
	LPnE=
X-Google-Smtp-Source: AGHT+IGApatcDJbsg9w739dtr2C68EHiOexix3zbasgEM50vzI9etj5RWluvQJQh4ukw4yzcsKiaVw==
X-Received: by 2002:a5d:5309:0:b0:33d:20f4:def with SMTP id e9-20020a5d5309000000b0033d20f40defmr6830654wrv.59.1708426595328;
        Tue, 20 Feb 2024 02:56:35 -0800 (PST)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id df2-20020a5d5b82000000b0033d6c928a95sm1430407wrb.63.2024.02.20.02.56.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Feb 2024 02:56:35 -0800 (PST)
Message-ID: <b8325dbf-67c5-4898-bc23-ff093ae6e14a@freebox.fr>
Date: Tue, 20 Feb 2024 11:56:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC WIP PATCH] venus: add qcom,no-low-power property
Content-Language: en-US
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: DT <devicetree@vger.kernel.org>, linux-media
 <linux-media@vger.kernel.org>, MSM <linux-arm-msm@vger.kernel.org>,
 Stanimir Varbanov <stanimir.k.varbanov@gmail.com>,
 Vikash Garodia <quic_vgarodia@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Pierre-Hugues Husson <phh@phh.me>
References: <0843621b-386b-4173-9e3c-9538cdb4641d@freebox.fr>
 <f6e68756-72a1-4c32-968d-3d6adaa153c9@linaro.org>
 <CAA8EJpq=G21h87W69_4U-BZ=Sa5VEs15Y-zE-G5x9VxVx4qjsA@mail.gmail.com>
 <81dc6452-4039-4eb4-92ba-df248215fca2@linaro.org>
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <81dc6452-4039-4eb4-92ba-df248215fca2@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 19/02/2024 20:24, Bryan O'Donoghue wrote:

> On 19/02/2024 5:44 p.m., Dmitry Baryshkov wrote:
>
>> On Mon, 19 Feb 2024 at 19:29, Konrad Dybcio wrote:
>>>
>>> On 19.02.2024 18:18, Marc Gonzalez wrote:
>>>
>>>> On our msm8998-based device, calling venus_sys_set_power_control()
>>>> breaks playback. Since the vendor kernel never calls it, we assume
>>>> it should not be called for this device/FW combo.
>>>
>>> FWIW, this is also broken on other SoCs.. 8280/8350 and 6115
>>> to name a couple.
>>
>> Then let's just disable it until it gets unbroken?
> 
> Its functional on most of our upstream stuff though, why switch if off 
> unless necessary ?
> 
> Maybe it should be an opt-in instead of an opt-out, TBH my own feeling 
> is its better to minimize the amount of work and opt as per the proposed 
> patch.
> 
> Perhaps the qcom vidc team can give insights on 8280xp and 8350 when we 
> come to tackling new HFI6XX and later SoCs ...

I was wondering if the chosen property name might cause issues later...

Thinking "qcom,no-low-power" might be a bit too general?
Perhaps would need to mention venus somewhere in the name,
to limit this to the video decoder?

Regards


