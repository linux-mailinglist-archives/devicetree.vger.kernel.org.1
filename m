Return-Path: <devicetree+bounces-245467-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 21C04CB1420
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 22:59:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4A9CB300818C
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 21:59:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 257A02DF3C6;
	Tue,  9 Dec 2025 21:59:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MPqpmiBI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5B532DF121
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 21:59:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765317581; cv=none; b=frfZKEdOUFqtZpywQpp0kb9n6u3Du2lzBRxzp82Nao/aAm/s7xRxg8X8ouH8SSquagoOp1OQ9Ys/QhkF0fIHaFA4FUxP/DxrDDU1x3vh6AjoOpKlaOAfy3lSs1sEFcCboCoWRNw7Uyh/rN1JBYlTfT+DRBa8k58b8wnfi+KTB4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765317581; c=relaxed/simple;
	bh=RZD2/pljY97pmtmDsBmNKwERTDH+7KpDHpokSEfLiR4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RPbg7gdUKe5aII6G9zg4/XTUyl5EQqgcpbiho57CGcknmHTZpg3QmZrEG/DyNkRrN2e6qvAdfsjhgKy2EbUYrm7mQ80R/C/cKLLtoEpwSpLjzyawacWSwc1ZIUGoWKL0vnL8GKnptPWh00Tg4UxqXM/7jvcOhdwFU7r3ovgKGzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MPqpmiBI; arc=none smtp.client-ip=209.85.210.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f42.google.com with SMTP id 46e09a7af769-7c52fa75cd3so5849471a34.3
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 13:59:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765317579; x=1765922379; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DuZ2z2VCQmq7QpmkoDn96+JZ2qZdKN3RWULcV8zKlvo=;
        b=MPqpmiBIK3/7ZXuXExLpLLolXAc8q7t5BEZGbnJ+1gDwtOvzsS3Vxvojjz4o926QHa
         TaG8RJ/Nb2N/NYDjv6VZzbY7GgQBXEbRvZkkBugPB3/ztP03LlYl9CE/+0+90kii0H13
         oUWOQHj41wwCDVhJrcC2RP3DmuHqYZX4X308nGEkd7b5OelezX5w5lxwp4DmjbWr6J5m
         MtcdJhf8J/EsDd7x9QicdzArcD57np40linX2bWNFAfIaM47ILD88DLSkk5/kbw89Qcf
         2bMQOJgdt0br5YnziieWhJZSxtgtAfTYmDhrw4+Pi3cr5M2406CDsvwVEbtdb45wbomZ
         KrgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765317579; x=1765922379;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DuZ2z2VCQmq7QpmkoDn96+JZ2qZdKN3RWULcV8zKlvo=;
        b=didh5mM7cBbCsGGOqWbIoB9cVyPa8jxhbjrGVjsXcDwLwihd/LBoMGwV4t1VgrO5zb
         6RlvjChiSYya9r7GJqmZjIlDydUc0VGSNLqL5nB1kcy2vIPRmHu8HaCEROPzr6jqCnqN
         AGzUabhCgdEyR8hM/FZ5yZHFBsO++OeC413dvzLv7ACexwv0s1JvJOqrICWQZq+YgZJB
         3Q90OnfhCEzDa/LmvNJSojNQIlMmqzyj1Y+DnA+yWvoZlp5DfOhV6qTpFEt0isZvPlCD
         SglT+T8DJrZIYTpfn3Ii+G52MovQhjoVpAbhiRsJwqwK6/39r5+yZQGaTpcQselS9sK+
         8vYg==
X-Forwarded-Encrypted: i=1; AJvYcCX9rl6ztDmaE4EDSDJLh2J0vPGz0NWLpu0UOM90LLCMS40be2Tmfs3k80BVTrKmoIUbOPOkeS9LLcYy@vger.kernel.org
X-Gm-Message-State: AOJu0YyVI9aVIigYVN8tyYzbQnvZJMB0werkzqHWpWONC3bN9RhZxWfh
	QKLA0OBuiN9naZLmWafBXi0qYwhNm9QX7epdT/YCwVpHO8gv7qWSwanZ
X-Gm-Gg: ASbGncuqdQkOZwB6E6xbllsATOtazr34aPV7NS9ZQoQf0NpOkc9rAOR697Sb0l98Ty0
	71on/eyJPBK/RlTHXqCPI2HnZKR9QT16+1OiiV7ofjWGbmMT/speJMWwuE6h8i5VY2nIddK+P1L
	oNdroE85MzoUQYRp1dU4NrDcBN4emPGsEUXXfaTpkHjOkwzDzNN+gCrcWbTCAzEByoDenHFcfN6
	+N+yEWkwtsAvRun0IaIHZZU/FgH8l85C+/5jeZwNO8QahsBeNqmmjRrs3ZAwdOoIfwNlG3o0uZB
	IGk0den+7/tgO+/cX0rT1Vn/lyDZeROvSWCDdj73qIF33S+GitQjY9ffRcCeelupWNwBNMOWag6
	VsDdci3XpPerNubl21lx9JNTqmiOn91j0bFKkTtmd7n8tMPwI06rtgx4E99t/tj5VLhYGO+9fq1
	i3/ozcWjiPtckqe9CJ/WtxFOOGVP242aHhLWKuC2hcDGvT5WeF2X11nOMPMXrWte/X/bKI7sXr2
	R1EDP00h9YzEBnCYfimhf3kc4lV8c1WhcFyPT0Dc691
X-Google-Smtp-Source: AGHT+IE4Gbwa3W9A/LyUYK0KU0rzXxcf4YOHEus7H8/fV0hevhduGimk6KLCjCZwgujIyaa2uRoaZA==
X-Received: by 2002:a05:6820:2224:b0:659:9a49:8ffc with SMTP id 006d021491bc7-65b2ad359bfmr187014eaf.41.1765317578652;
        Tue, 09 Dec 2025 13:59:38 -0800 (PST)
Received: from [192.168.7.203] (c-98-57-15-22.hsd1.tx.comcast.net. [98.57.15.22])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3f50b5ed5a7sm11327996fac.22.2025.12.09.13.59.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Dec 2025 13:59:38 -0800 (PST)
Message-ID: <b167f406-c5e6-437d-bb34-57f253258f54@gmail.com>
Date: Tue, 9 Dec 2025 15:59:37 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: ipq9574: Use 'usb-phy' for node names
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251209160755.3878878-1-mr.nuke.me@gmail.com>
 <xmserprghzwpcxt7ionh2ju7o3cudj5emtkycvurbz5obztzr5@lkllnnsag6ri>
 <23d3bc82-0909-42a4-b4a9-742834faec76@gmail.com>
 <959b3e2a-c11e-47b3-8d8a-03dd9ae18254@kernel.org>
Content-Language: en-US
From: mr.nuke.me@gmail.com
In-Reply-To: <959b3e2a-c11e-47b3-8d8a-03dd9ae18254@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 12/9/25 3:48 PM, Krzysztof Kozlowski wrote:
> On 09/12/2025 17:26, mr.nuke.me@gmail.com wrote:
>> On 12/9/25 10:17 AM, Dmitry Baryshkov wrote:
>>> On Tue, Dec 09, 2025 at 10:07:54AM -0600, Alexandru Gagniuc wrote:
>>>> The devicetree spec allows node names of "usb-phy". So be more
>>>> specific for the USB PHYs, and name the nodes "usb-phy" instead of
>>>> just "phy".
>>>
>>> Why? "phy" is more generic.
>>
>> Hi Dmitry,
>>
>> The goal is to be more specific. I find usb-phy, ethernet-phy and others
> 
> We do not have such goal. Where did you find that goal documented?

If the goal isn't to be specific, clear, and readable, what is it? Why not be generic, and call subnodes node@, or dev@ ?

Alex

