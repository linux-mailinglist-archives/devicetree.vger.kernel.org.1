Return-Path: <devicetree+bounces-130271-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 396EA9EE6E3
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 13:41:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D11D016583F
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 12:41:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DBBE213252;
	Thu, 12 Dec 2024 12:41:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KwHOg104"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62F01212FA1
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 12:41:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734007273; cv=none; b=qER4xdDSnYEs5EpF796GeWsievU9M+DWDLbHXqw1hfpJoobs+HNETQQjTW7Qr8qUlU+SxQqFSuwmj3DFTNdAl+RghUvPCVZs6cT3Y4+ss11TR74+R3qXj4tDYfYQJy2x1waZB0kC1jpTf3WNXcYTuzIAvHRBDxpAOiXxMECsIqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734007273; c=relaxed/simple;
	bh=Tu/dFKzeet27GmDqbtWEt4iGTBlq3wEZqSveNunZQyY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pCMULXyeEMLa80+gH7UiiM0nnAUnmXs53fRdPSMTaPjvr+q6jJsahFIZmcrqio3J5ZqW7Qm8SIRZr44+YQsATgyn7NbtoKOEjodTnRhBtx6IOvZNIcq1mP1hEHOF9d0lac0OYGF6qfiVIigBo6qOReM4tgX0/r7fMZOtrXDcZXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KwHOg104; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5d3f65844deso876210a12.0
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 04:41:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734007270; x=1734612070; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8bkw8aLWhg4IdC3Iyd2UGPgLYgTX4eLLSzr6WZhm6c4=;
        b=KwHOg104tECUeLCic1AROAit2IBxU/WGSotQgXtsXdvytz1q/epPlaZQVKNnQCIheK
         FsfkCXS6s6trGXfAChurRlz7DDJcbKH6yemZgn8f8kIFq9+DvnsAHNT4ZuZhlTFy+GG/
         jJcxoIXrphCH1gr+fiUDjbT9aQaVHqdw3Ldf97Am+c99blwgiZCJjT5aDkuJ6tXY6XUe
         ChMMrimbnQcMTBxkOazSjqS3dvkS/fpLFzlPbloC7LdnutPsmP033JNyqtoKUj//UZLs
         2MGqAdkEMMoAx6txP4aon8iGMdpbv+THKqc6Al9RJcEzZNXN1R4427ZNXoTPJxieFEjj
         mMbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734007270; x=1734612070;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8bkw8aLWhg4IdC3Iyd2UGPgLYgTX4eLLSzr6WZhm6c4=;
        b=kV4FOUEuPu5BNcURDcrVd1XtbMT0zs49EBjfJY46JBS3lcICIhz5Jh9Usrju6J+7GA
         cBF66WQYGv3nflCxvP+oHU7YWO2GXnFeP8+ULMgvXQW/J8PPQM264EQN3r4ZEwBTKBja
         pq2s4olpqm/rASJyqeFEzR3HDqWU7gfjEo3BHM0PqvxSnxh6949AajzhDbyNEcrrgmC6
         25bxl7uNaViQmUYrfwYiHM0aYNOt0SVwQWgU73SOKTRpxSa2MNeSOF+sbdrSi8E46GUO
         EINu+fkeFa+ve1/TzZbfIYCPzdO0GGjK8lB1/zZEOb9I3ByIXxkbGeWuOYCLjJV7ft+Y
         G6Uw==
X-Forwarded-Encrypted: i=1; AJvYcCXpPm7ZYNW/ch5vIUrFZwCtTmAEdIY+N88cz3TP0TA/WPU5K4C98eeTucSRbBj0upplPUXu/fnIDwGt@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/mRG32mqGR8aYwfhKvIKVsgjAGbP4sHzV06SfwAGOVnr2m6BM
	DzWjWmlK+3gbqFw6BJ97XhbplB5eVutqqhvb8w9Mgqih7MWEIZqJokDtMci6S0H3IMZuL43jDJn
	Z
X-Gm-Gg: ASbGncs2VTHWtXcoJDTypj0ZaklQ0WFwcrNtIis05NhhrvTEAp6v4gJoJBNx53eEWUK
	NjKOe1XtFoUZHlPeDYUipvSFAVYgZ0LEJtm1kpypXsFmPzyARAwR0/hBWa8Ih3uDp7rsz0rnIZ7
	1Wo1uJm3lxRsjC7qpatQrJ3qLIQpvrTd4G5INgU28WV5znMavVSwbE8dsPwicTYzL41rn19eMxZ
	tgB1BrpwMW8reR9DH4uA4mgQdngkYGU+kpSSxxm3/YtT/NNg/TCExbqEGVIqRyfVw1qVg==
X-Google-Smtp-Source: AGHT+IFur+anvIPrRfunzJYLh6wEtqp7DK5VjkUBpxyuQDBjTbkTiH5jVNJtu8OGD0/LBKO7AI5Oow==
X-Received: by 2002:a05:6402:2396:b0:5d3:e766:6140 with SMTP id 4fb4d7f45d1cf-5d6337e00a8mr76871a12.24.1734007269761;
        Thu, 12 Dec 2024 04:41:09 -0800 (PST)
Received: from [192.168.0.40] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d42a754cb0sm3172232a12.88.2024.12.12.04.41.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Dec 2024 04:41:09 -0800 (PST)
Message-ID: <b4afb2ea-eb5e-404b-9df8-3e11d08a6bff@linaro.org>
Date: Thu, 12 Dec 2024 12:41:08 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 15/16] media: qcom: camss: Add CSID 780 support
To: Depeng Shao <quic_depengs@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, mchehab@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, vladimir.zapolskiy@linaro.org
Cc: quic_eberman@quicinc.com, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@quicinc.com,
 Yongsheng Li <quic_yon@quicinc.com>
References: <20241211140738.3835588-1-quic_depengs@quicinc.com>
 <20241211140738.3835588-16-quic_depengs@quicinc.com>
 <138cc2e5-6b31-49d9-b70e-400a3f3c3bfa@linaro.org>
 <28b1c828-f338-4d57-bcb7-b0a8652c82fb@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <28b1c828-f338-4d57-bcb7-b0a8652c82fb@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/12/2024 11:28, Depeng Shao wrote:
>> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> 
> Vladimir suggested to add a dummy "return 0" function [1] for the 
> unsupported interface. So, I added this empty callback, will keep the 
> empty callback if no other concern. Thanks.
> 
> [1] https://lore.kernel.org/all/b1e1ff88-5bba-4424- 
> bc85-38caa85b831f@linaro.org/

Go ahead.

---
bod

