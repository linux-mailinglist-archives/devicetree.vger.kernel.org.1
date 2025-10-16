Return-Path: <devicetree+bounces-227695-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 860B7BE3B86
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 15:32:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 384C34204A4
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 13:32:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92DCA1DC985;
	Thu, 16 Oct 2025 13:31:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Lznjt33l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF7E523741
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 13:31:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760621519; cv=none; b=OeWuPqX7ankjNgMJ+H2PA6ryZktglu12Z9iV2v6tFjlAsq+acpllQbrC4GSZD4FzhepbH1iFUuZgkXEZrcCU6Ix3mbcjqsMNpe65t3aiR4R5KaZpaBaEj8y4s/Ww4wYh3+oSnVQpEIO5y1b2xv4f3uSvMU9YjzrB95VwSs+oXpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760621519; c=relaxed/simple;
	bh=RFh/gqvFYe3mrthIbrCFXM9FsiCYqUCmiQDRUcSGYj0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KAOpRJkl5+xCAuVrO3FvoMFFnwq7MKzyMMrSRUcPuP3Cs2jP+oqIMlLr4jLGgV/vVrpyZrxuCi+1ettXpcFna2BI+71Pyw9+sFqEkBWVoiV87OLFXUkrhVAu+ACCEKsne9f0EZFd80GiYBJuo0UUKUqu2eSYJp3qSW6Fic2jZDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Lznjt33l; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-58af7f8b8b3so87444e87.1
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 06:31:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760621516; x=1761226316; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XVVxXst564TPeNRQIV0Zrdb17qt+RXom9Ra+osC/9Kg=;
        b=Lznjt33lDzi8vg9xW3aQmvZ5FOGRz0ZA0fkxtRfF6xXDtriiqL6widdjmiFIH85+lz
         +2VSOO2vt50e2hhDmYGvaJmqElcspSdumVCf9uN/kUgK3tqXDxTnR4Hf1CUyXq9ucngB
         RXhu4oDSaZE2CQ0Ynxk5KdcNX32LI5CWRCr/iXD07xi55j9/ntVZuy0OSYTJwnSq8FV7
         KwsEOTcWmyMVv216hXzxKhamoR8210lKSnECqmDCNGNB0mWhvVG3n7ICrxOyGu1h0ryC
         Y8tP1ckgthMv0ZIzSiz7XCgDTj+rsVMjg0HnNdbgJ0dPROIpFKXA1r7uitDJt2hIXDmc
         Wlbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760621516; x=1761226316;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XVVxXst564TPeNRQIV0Zrdb17qt+RXom9Ra+osC/9Kg=;
        b=mNviGjcZxe4CWCnU2Rvfb+n/L3IfUAMu7islafUql4DxgiKbYPG9Gf6sI9k3Gqd++C
         Id9+/9PJGjmfDFd9mVWUs0ul6STTsTs7wf1kWhLLXzOJ34jLKUXoc5Dyn6GRjxL5Yxfg
         7ivlFfCnvyik8cdD2gvkOfflr9fNX+bRWSD+v8MHciaXNRaN5pmN2FVJsDxLx5MlScln
         dGtRCqTpYPl7CJC1OfMdqVVL1ca2hWUcczbr2i8pNh/4z3T6piiuJgIAtpci4o5gULa7
         KrN7mXGGyu5vI4CRxyVLCIQ5/eWl/+9jawFKVKADYMtsT8/65Q4iUVlZaESBiSEjUkiv
         uIiQ==
X-Forwarded-Encrypted: i=1; AJvYcCWQQ3vVK2P4EI6LSAwMPisyrgLqEdvPairyr0w1jLa6AMeP8L81/PmHcK01qqq2iDA6dZhKHvBpFqBG@vger.kernel.org
X-Gm-Message-State: AOJu0YxGK2Xd8ln78LbGq4Hzg1bRxZ0xMQZ+OWOn3NQKcAYPcA6OxJdq
	AWGU/QP/3W3YcLrZD8MhVqEjoDDOtdqpksMUA9bMjqUM+2FLlYSRLuY9Doxvo4Le56I=
X-Gm-Gg: ASbGncuan62GqrLpuWje+AEyH2zDcG3XSmjio22wZR2v/Z4Rtc3O1zBMUWD5jLEY8Pg
	mQo2Hy0mjBnT+cuNfIvxlWFxsDoGQrg2s4fmVKjlPOmNrOI23xYv+teCgDZ4Liqzwh6uUNMQxM6
	8r9xoLG4lLO0jSD4vEY0abKBJmcz4LWSTu9lCKza/H9G0QtNwdswzrir8WRwAWCq0972VKEDlfy
	iqMDLt6pjsczmSidWOfesw2M1QaaLD/FVjJUctiW+RArbWVqJwwqCf3KP7eWuBGIQWbovJZcjHA
	RUB26h258b6JoF0cQWf9bk0hg3lwg3ApvI/itlIY64S0wfse9Fb31n/YPqwwUo4T3Z7IE875d+l
	RjYJP+RjP5oF6pAMfi08/Z3rBCiXsraqEysLSfnD2RIiNBctQG+6tQcLuQNpLofKRtmrem+xYyj
	tHFUramzdbMHQIMK1NhKf8acjSKWKUOSJ4R6R8YvVp2zachqvyivc+nRgnIMjR6jNqjjldJg==
X-Google-Smtp-Source: AGHT+IE1afceVs8PBuaZj9exPtYlK0QfXyVjdYDJJxq6s9C8bQx673U2F0e4V3yJkwmn8me+a4KtbA==
X-Received: by 2002:a05:6512:2393:b0:55f:5965:e4e5 with SMTP id 2adb3069b0e04-591d85703bemr10189e87.6.1760621515969;
        Thu, 16 Oct 2025 06:31:55 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-590881f91c0sm7100030e87.41.2025.10.16.06.31.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Oct 2025 06:31:55 -0700 (PDT)
Message-ID: <fb491c3a-6786-4daa-b3ee-53756b3d9b44@linaro.org>
Date: Thu, 16 Oct 2025 16:31:54 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] media: dt-bindings: Add qcom,sm6150-camss
Content-Language: ru-RU
To: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>, Robert Foss
 <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251016-sm6150-camss-v1-0-e7f64ac32370@oss.qualcomm.com>
 <20251016-sm6150-camss-v1-1-e7f64ac32370@oss.qualcomm.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20251016-sm6150-camss-v1-1-e7f64ac32370@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/16/25 13:22, Wenmeng Liu wrote:
> Add bindings for qcom,sm6150-camss in order to support the camera
> subsystem found in Qualcomm Talos EVK board.
> 
> Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>

Looks good, please add my RB to the next version.

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

-- 
Best wishes,
Vladimir

