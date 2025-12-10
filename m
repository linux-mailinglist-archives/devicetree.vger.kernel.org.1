Return-Path: <devicetree+bounces-245676-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 04933CB40DE
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 22:26:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E0CA3305B7F1
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 21:26:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6441324B2F;
	Wed, 10 Dec 2025 21:26:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FH0LPmbJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 016243019D8
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 21:26:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765401999; cv=none; b=WZHSohIUbha6EfcJY6JubJrEXU3tXpwVYuw6nhdQex77SekkvQuWcd7CrJt/DDgbrrtxV23AqcOF1/33jC3JC0LYyHoi+qOyLE0v6j+lhcb9F0RjXCnCJutKNbBXOmKkZjJ4ys8jP9wfSI9UAScnTD0/LrMUV7V+XPvt5gpByxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765401999; c=relaxed/simple;
	bh=p3TIbq0R04u/FpENpp+SgAGS/YPFFARo8ydHHOWFLVg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WkxGdmx0miDu/ObONanIfL2XsGuuG27Z+csIzGqv2cCHKDVm+BSSKOVazPNTWGSyOwMq9xuiH+l6GmiRGOW2S6Ae8do/AM97/wsuUyzMcgr8hpUEF66lLmmzkO+tZFImZccJhNApt7Ao3fx+vxQi7IzC0p7GoiX2BJt0rRFMLl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FH0LPmbJ; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-297ef378069so3327075ad.3
        for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 13:26:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765401997; x=1766006797; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DnAZV48Qb8Z1eRTAl/r3BNX0BH8DNBEAh/DYRdoY1zA=;
        b=FH0LPmbJWq/2TghmzPXQWhUeE5XXcIARIm/ijhteKGB+Cb9+brpWkso4RmmAkhuf6s
         Jrzvr09N8Ramo3Ia9NmqY9psj2tdviXPA3dStZFs1vyqK0i+MfktSQHrzyEIV2JJtfEn
         idP0ALV2ikJlfU4svAZixylmFlPfqHLUAEWGLLd28xp64XKqGS8QeoVKTi3ETGgRVYR4
         6NtQendyfOblOHHz/rJ/lI9kNkTzkOIWluxcBal7JeAJq3bfTc1acLamAlBsjaS08sHi
         wiR/NOR/Tj5tztDW99vgUFnAeiqfYGGJdxH1/JxQ/4S1FQnVUYd2l3TMb1/2TjSLNRiF
         1KFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765401997; x=1766006797;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DnAZV48Qb8Z1eRTAl/r3BNX0BH8DNBEAh/DYRdoY1zA=;
        b=v02G7kVzh7hR580nD218/griew7j5fqM/8ptkdN4QA58958G2+AM/Q5a71LrMSQOc9
         h+V4plhI/0H5v07l5jFjtaqp9W30KIsDmGh1GbcR1DqnoSruzo25QhsN7v5XVNu1WORr
         5+DrBqIqnf+/E/cj2war+EvBcoFnUdNc7z/xLPFFxXxyYm2yBSXp0y28rIfrSj0Ec9c0
         T4R/NYHGo0fJuRrxTbwgX4R4/f4FIeb8RRX3IY5C1/iZMPHQdT7dOOXqQEpKACzfN29u
         ki/2vJXwQWh4kpZLLAR3cgDZ4OisUdaobsrZr3SNSelNzT5W2T9CTIupqXEZRptsU2mG
         vknA==
X-Forwarded-Encrypted: i=1; AJvYcCU04AC+6dbigqLz40T0jTQyjnV9wlPSmhMQXEmUKuHHbXTPqNKG6rnL75vFXWwcH6wZT2O8byQWT0Ht@vger.kernel.org
X-Gm-Message-State: AOJu0Yzv+jqPxD2PpUIM+jdFQVwPo9SwZaeWC+y0QPl4DLB3jF4y9ruz
	2I/0Z/NUX7tjwsrCaY1WD06NAaMke/d2xzL3o7sq1/vQdTokvDl4PTRGz5O57ZnSpAE=
X-Gm-Gg: AY/fxX7ezR65kzqeWzbWsIZjAf+dJU4nStxJNn7ZPVrQG8npFacOxyVnGUH3CTM9z/d
	UHJhQUzLzV+4butYxue44EnkV9psMRdK2lXxyXLCxl2vQSGpkUS7HdRn02+hS7GUrgZvx4P25hQ
	27LkEGFankPCr/TcuIxnkw2Nr9LMYCD6afvg/qxZqZtqBvO1cbNqLu+Ia+b5aknVX7zrzyhHNcm
	3YuQ5mSiUTxWsQIT3R/A87jPEYdD4xJZf9xMmxQEnJADwY4gLO8oHjSEBTNVdfjDGrIL0KvjFJF
	OO+d/hVhELrv4GX9Khj9jBO4m6foOKkOXrxfcRCNNY/9VZd6TLgzsvRaTW/6euUJBJ/jRnLCK+l
	APyriTkeuuA2l+NsNCkrVQdd7DHlmlDHtz3ZrEgW4yTuszSN92DIvyb3qXeLehFY0nGW0UDbsjK
	mfqr3sNZFGaZgt+DwsWUVtBTenVfaRdRPY2PML8hyCcGOKd5WCSTdHEbaX/No=
X-Google-Smtp-Source: AGHT+IEzNSdU/YLLXpbFyGQxKDrGLYDcehreWFcYn2Qp+Tm1TZgR9cIY5gNkUR7m6V5ePuEYYhm8UQ==
X-Received: by 2002:a17:903:3c65:b0:295:59ef:df96 with SMTP id d9443c01a7336-29ec22ca939mr38293055ad.13.1765401997270;
        Wed, 10 Dec 2025 13:26:37 -0800 (PST)
Received: from [10.237.118.45] (M106185144161.v4.enabler.ne.jp. [106.185.144.161])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29eea040376sm2629855ad.72.2025.12.10.13.26.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Dec 2025 13:26:36 -0800 (PST)
Message-ID: <bc7784b8-b63f-4739-ba22-2fd7e2c23928@linaro.org>
Date: Wed, 10 Dec 2025 21:26:26 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/6] media: iris: Move vpu register defines to common
 header file
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
 Abhinav Kumar <abhinav.kumar@linux.dev>, Bryan O'Donoghue <bod@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
References: <20251210-knp_video-v4-0-8d11d840358a@oss.qualcomm.com>
 <20251210-knp_video-v4-4-8d11d840358a@oss.qualcomm.com>
 <4pxuzfdcwr56gtt4rjgodvtmf6cgprpb3czyrqjktx6qk5kryb@njj7xwtnnjpi>
 <4411f6ee-478f-487e-8f95-bf0959363e97@oss.qualcomm.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <4411f6ee-478f-487e-8f95-bf0959363e97@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/12/2025 15:47, Vikash Garodia wrote:
> 
> On 12/10/2025 8:33 PM, Dmitry Baryshkov wrote:
>> On Wed, Dec 10, 2025 at 06:06:02PM +0530, Vikash Garodia wrote:
>>> Some of vpu4 register defines are common with vpu3x. Move those into the
>>> common register defines header. This is done to reuse the defines for
>>> vpu4 in subsequent patch which enables the power sequence for vpu4.
>>>
>>> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>>> Co-developed-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
>>> Signed-off-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
>>> Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
>>
>> You have missed my CdB / SoB tags here.
> 
> Sure thing.
> 
> Bryan,
> 
> let me know if you can add while raising the PR, or else i can send a 
> new revision.
> 
> Regards,
> Vikash
> 

Its fine b4 trailers --update will pull this.

---
bod

