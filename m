Return-Path: <devicetree+bounces-130287-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BB3A9EE836
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 15:04:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EBB63166A36
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 14:04:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBF8B2147E5;
	Thu, 12 Dec 2024 14:04:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lbuylqTb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04F242139A1
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 14:04:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734012246; cv=none; b=RmBRxeHW04R++fkEZ+268ETfB+sRdQ9SoDGLR+eX8qE2E7gEknfwu0Enadh1Zv0CWZ2uIO686987GXE9Dpk4Vk9Ey/otb5nMjdZoDzCQXBzgqsOS4LCPXWQBjwBo4mVC1GBxBx3ck0SftNIVnd7wmLoVBVAqIhs7CtUK/ssP+7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734012246; c=relaxed/simple;
	bh=0clCWrGBpSkpZ9aHSFW/0CsAHfJ3VaJRG8xLf2OnhZY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=H24H5daoQOjucK5NdwpXliey0uELyHwjTc8m7APuE4wFjXNhadoL4/LTUZmow1gYr38HRDBdvOyN2Utqfa0YH/6jMKC41oxnbZpqulSg3I6x2mWIo/KIU3630l1PTx2A97g8pUSajwDSf0pNXVmD7M4/IU4/O308x8PIZSHz01w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lbuylqTb; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-385e3621518so317893f8f.1
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 06:04:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734012243; x=1734617043; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4NTvOnHE1hh8uNaAY0Ob6P0uimOUvscrCyQDIQ9oqKM=;
        b=lbuylqTbIrc+jiCBds4t+bAk7nxwZKtX+e3480v3laYAuNWuCNTA29tVmy/RDL78Xa
         fKOd/AP6BY+ah79MP9ayxQuLAlWj4J64KJy3BadRYAER5wx2kJxRdxxJc4b+haiuK7Dy
         MLQLGJR+mdeNr488/yt4KaYzhGk+AP379RiVjE8KchIzeGv+geLyxcZlVfR+194pOHNE
         JBx3zWwQj5IwMajK2mMz2hAN6LSNf12PWJQl5b6zn1Yha3D26aRVtOOVGpaWkRXcvQha
         pggI1y22LS8ggmrGe5eAWbQ5H6VIqzeULflfArOVc6ULjU8HmUmiJ2rHEvkCf948gMqP
         60KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734012243; x=1734617043;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4NTvOnHE1hh8uNaAY0Ob6P0uimOUvscrCyQDIQ9oqKM=;
        b=bLCK0lAGI166gvthDzeAxkzPcFz0WdVfelkHtWjIXpCP2NObTia2octzanLR65Swap
         9zjsKgpBLrkuB5r1yEACJOerN6JV7p33qO04D9a40xRLsx6BL9g9Eo4DeMT2q2GZCEhV
         zzVd+zOsCgAzJ5Ou38dvMtkXgnVw8cGh6iAYA3mTBDebrfMH3bPd/G72MufSYhsJGk7U
         8rWZfBSPJfrcf2Gu0km1JLm2aVkgihS9TS2+Tzu90JHOyXnSSKFdp45KYHOFbA/n7Tv/
         JGunu8woaRkWCRXC6IPXAdzdps0gwewblPu+9aWwO8TOK9AsoI6IJLKUQySq6wbqfxZZ
         405g==
X-Forwarded-Encrypted: i=1; AJvYcCXCErJCLMy19l9IBkQqk7zpaH7H9ygTHkiEOOJYktbd0zakyqdotO0SMpHRdOVGmhyh51dcwCsyD+LT@vger.kernel.org
X-Gm-Message-State: AOJu0YwBJLB2PnVDGX/T/a2ZG78P5ipPvZg0VwDcfymn8venpZTqW88r
	uSLg1OzlVZm5Uz7+S0tJEWp4BCXZLpYnm6Mzta5KT+lFZKU4mPmV0ZtavadtvYI=
X-Gm-Gg: ASbGncvZCiCEyi+1EWhfTRAh2wgliPIkreM2lyGVZuiBvCYzfWiY9Iq2wh+L/U9y4/3
	wajCVdNUB8NswwCpJZc/cgpAm1Fik8Spvp+3xuwWHepzomU6ktn1lvUx/MV0XaqkkQTrFFMt3a2
	ZLvqY+ug8geCCnV7Wa5Po+o/0j3ccKMIMy2vAhrxu+LrfCDNfcZ3XDMhCrdW/bPnLZYBHfv+XuW
	qdqVz3/+GsdB//CmNrpfUgVr0rO4clU+b8a3OUA4Oo9OLRDK0WR8kjRqrrYkvfFm0teJg==
X-Google-Smtp-Source: AGHT+IHQhg1N3HLj54dub1op17V66eyUvO6n2hZgAgXvqBl/jqbmIbfHC/VhKCoRMTmzyfBX6zBl/Q==
X-Received: by 2002:adf:e18a:0:b0:385:e8dd:b143 with SMTP id ffacd0b85a97d-3878768e78dmr3259121f8f.19.1734012242852;
        Thu, 12 Dec 2024 06:04:02 -0800 (PST)
Received: from [192.168.0.40] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3878251c1ccsm4191693f8f.88.2024.12.12.06.04.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Dec 2024 06:04:01 -0800 (PST)
Message-ID: <dc7b546d-6746-4559-b1fb-0e6d768c3399@linaro.org>
Date: Thu, 12 Dec 2024 14:04:00 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 12/16] dt-bindings: media: camss: Add qcom,sm8550-camss
 binding
To: Depeng Shao <quic_depengs@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, mchehab@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, vladimir.zapolskiy@linaro.org
Cc: quic_eberman@quicinc.com, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@quicinc.com,
 Yongsheng Li <quic_yon@quicinc.com>
References: <20241211140738.3835588-1-quic_depengs@quicinc.com>
 <20241211140738.3835588-13-quic_depengs@quicinc.com>
 <d8b73275-a52a-4cfb-91d7-948686d3a5f1@linaro.org>
 <82f61951-89c3-4793-82c9-581f737b5303@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <82f61951-89c3-4793-82c9-581f737b5303@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/12/2024 13:39, Depeng Shao wrote:
>> Have a look at 7280.
>>
>> The parameters to the NOC should be named.
>>
>> https://lore.kernel.org/all/20241206191900.2545069-2- 
>> quic_vikramsa@quicinc.com
>>
> 
> Do you mean use QCOM_ICC_TAG_ACTIVE_ONLY and QCOM_ICC_TAG_ALWAYS?
> And, I will also remove the ICP and SF interconnects which are used by 
> offline HW, rather than real time VFE.

I was asking about the TAG names.

Re: removing interconnects that's up to you, provided the removal is 
tested on real hardware.

---
bod

