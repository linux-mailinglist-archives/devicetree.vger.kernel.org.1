Return-Path: <devicetree+bounces-215414-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A147FB51603
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 13:42:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D074C5655FE
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 11:42:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55E0831158E;
	Wed, 10 Sep 2025 11:41:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NxVDaAsh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 807E830DEB0
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 11:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757504516; cv=none; b=VJP3J1TwGDyEvEpwdgMI1s2b3pjodftz+krfMqgCV+Z/eUwDYfD7ZImBySuuoZQowmv5nmLW/KN8lYLZs8vKTWieVr3pTy40ncxJY1OgP9usq4/9Lq7iaVaR46UNc9Z4M4ELRb8rg2wmzvU7dfxSDNz7W/7smqGSQJxyekq9iGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757504516; c=relaxed/simple;
	bh=R80lrQS1hQJF0roYzz0DTf0dlLu6IexIel/iumK3y4A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iCUnJ0eV0Tv+T5BKb/G77x3vCBEnrTMsv1HFTUq94fGUbNnFXVmLmQPLm3YN0gPGU9f6Ava3rKMlfA6+fQSunclnrPvWR1c9YFTyYxSqffvjgS8o7IOp62uTKUknHPX+/SA7Kl7y0daBFJeOvlklxqUs6gofs505Dej2DWFLiqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NxVDaAsh; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-45cb659e858so46535525e9.2
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 04:41:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757504513; x=1758109313; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=shZJxLtW9iAiaEf/F/KUNA4WoMg1VvumYYY6r6PZJkc=;
        b=NxVDaAshFsgaAK4X7xC9jxYSWMowcAJt7SLKmBRMmhNAQEr1YYAECr02V3Iewd3s2h
         S6X4FWxwRYoTbwwBqfC7M7+nc4QtEHfoE1qDena3ps3yUqC5QMZeNSVakbzDUUxbdUmd
         AHW5VBPcc5wTkG75SFllmTawOnCnrcKf8sPQJwIKgE5w7z8jWurQ3ULvVjTcfubU7ysT
         4ARK2gNFwpwSJo4dOHrTJq4Ch8J5JmKLlVY71tZT23h+Uj69vC5mNavLWLSHxuYp4Bz5
         +LFDsuFnMyQi0Zz9bjJ0AK0T8kBqCYc1TsgYbNVmUYoDCIrNyfKKflltQcHH30G8MX5F
         q02A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757504513; x=1758109313;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=shZJxLtW9iAiaEf/F/KUNA4WoMg1VvumYYY6r6PZJkc=;
        b=lMEyRCcidZViZFW85BKAPczprzgvIGbKUx5AlWfJqzGgS3zctRwNN2+aSVrhwB63c7
         +AQzAWT1Ok8PnVyiNlfLUZCDFFtBhBXwy9U8IHm2Gg52jI14WL3wT6RN3sYSdrPhRNju
         zjkEf17Oph75Vq+uUj+3r3TEfHIFzXYkdz+hvqFiqgcm3mnKdvwjHCCU9KqhnjwcrUk2
         fLFV6TMb2o+fml7bpa+CW00BpPVBHxMAirjEEi4MnZoePNAsm+72+xe5tg2j5PLQpyt6
         7cbXqFClCQtZF7f+ov6imyE40zIR+678w1G11HVIsWO3zYjkOdYL+MI0iLZeZy7efVTT
         prfQ==
X-Forwarded-Encrypted: i=1; AJvYcCUoNCRlAtUUnXetvFEVrDi6aW20ahb8CFYDVfIP1E+FI4C8J3qwziS733JBctEzQilp8+yr9xt+xDPl@vger.kernel.org
X-Gm-Message-State: AOJu0YwFK1xm8lEDWSPZFZM6bWK8kMp2REOZeugW/65SbgNVbvJ07bi1
	y4c0WNHQm0uxqWd9YE9wKhOPiTc/WzkDescPeqm4OcRn00ZQZ+Wm0VXzHAXZw0rDUVc=
X-Gm-Gg: ASbGncvTnG9P7rcFJmzCv0hBnlna53XH8wNZzxyKkPOZ2mfmWfHz1kFnuS9sfVjLrF3
	Y5vJqndWhWSxH/1I5LPfDvut/HXDt/G3A0iMHJua0nw6p46LPiW5axxz7RBTr2JN6S0SCcpUhZ7
	7X5TRPkkWM2gvr+awY7OKRmjFJYbuItDII9oXhKBX3pcfTS2/4po9MqCqIa7XcsstSZyrcEBtbl
	24lyVrTuvbWpiurefQ/Vpe6ivex9+StgdxqhVOEZ32NYHLL3vzhRT1GATxmOkfv3y7hNIk1F+jQ
	hsm3oqYuhSSEAZsbBTp9xPAi85cFE0+iuGSFLsk1mcuxNMPg/Y9wiKvILiVFrUzO9hi4onkesod
	YYatbCuWHj2yC83xnINKPq36VRXHbGByoRgx3B7isRaxwCuvuh25iPze7ZALqpKypQhaE2Ul2Vl
	2qFOjAYRtoz2X6Up5/Clw=
X-Google-Smtp-Source: AGHT+IGlxSt/xs7I3D7ZMakn9Gr+X1/Zuc0c5vvYIA/kLFFFxTaanjZmiqDr4kYOYkKHuiNeNUlj3A==
X-Received: by 2002:a05:600c:4453:b0:45b:9c37:6c92 with SMTP id 5b1f17b1804b1-45dddef02f7mr145102055e9.31.1757504512855;
        Wed, 10 Sep 2025 04:41:52 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45df8259524sm24547495e9.21.2025.09.10.04.41.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Sep 2025 04:41:52 -0700 (PDT)
Message-ID: <61b562ad-eb67-4917-a449-f5556c43ceef@linaro.org>
Date: Wed, 10 Sep 2025 12:41:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] dt-bindings: media: camss: Add qcs8300 supplies
 binding
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Vikram Sharma <quic_vikramsa@quicinc.com>, mchehab@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 andersson@kernel.org, konradybcio@kernel.org, hverkuil-cisco@xs4all.nl,
 cros-qcom-dts-watchers@chromium.org, catalin.marinas@arm.com, will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, quic_svankada@quicinc.com,
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250909114241.840842-1-quic_vikramsa@quicinc.com>
 <20250909114241.840842-5-quic_vikramsa@quicinc.com>
 <e4d3c2a3-e395-4f60-8cff-fbb9a1611ec2@kernel.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <e4d3c2a3-e395-4f60-8cff-fbb9a1611ec2@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/09/2025 08:02, Krzysztof Kozlowski wrote:
> On 09/09/2025 13:42, Vikram Sharma wrote:
>> From: Nihal Kumar Gupta <quic_nihalkum@quicinc.com>
>>
>> Add vdda-phy-supply and vdda-pll-supply to the qcom,qcs8300-camss binding.
>>
>> Signed-off-by: Nihal Kumar Gupta <quic_nihalkum@quicinc.com>
>> Signed-off-by: Vikram Sharma <quic_vikramsa@quicinc.com>
>> ---
>>   .../bindings/media/qcom,qcs8300-camss.yaml          | 13 +++++++++++++
> 
> There is no such file. Why are you not fixing the patches on the list?
> 
> 
> Best regards,
> Krzysztof

The easiest thing for me to do here is to take this patch and send out 
another PR.

I can fix the commit log too.

---
bod

