Return-Path: <devicetree+bounces-84194-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BA9892B50E
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 12:21:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EBC181F23C0F
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 10:21:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A63B156227;
	Tue,  9 Jul 2024 10:21:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="azewGR1F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3A1F155C83
	for <devicetree@vger.kernel.org>; Tue,  9 Jul 2024 10:21:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720520466; cv=none; b=uqL0Q3NkVFhz7WwCpMA+VsFBfbM4wfFTeTriNWhuDJDU8CKXumbFRnuvsPtYNwbpUcvhmOntCewqAeygyqxzTOmqBHwX1mS9UpAbaqGh2xTtcDXPdWP2oXoUfyTq4oSLxRMS9rCp9GdqWhm9S8qyyzyjQdfMD9oAncKYQWAFRvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720520466; c=relaxed/simple;
	bh=FI8Ai9at4PJrxIU/sJac80olr10NbpFwsfq+R3rThC8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hXyLMWwfqjH3bjaxPHwAnI/txI3r55zLQOFmfm/0Hj1hQRs+sd8jROnuHC28OIsNts3swRuftfvR7WbGCmdblS+yE6Prc9PS5Mxe68ssHqh4U5AcyIAnC5DZeVuqFlJTg2RHOrpZkLam8tLyoy/mXuAcrJ9gWu/mAUwrYJE7pic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=azewGR1F; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-58b3fee65d8so5482377a12.3
        for <devicetree@vger.kernel.org>; Tue, 09 Jul 2024 03:21:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720520463; x=1721125263; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=G+hQCp/WCknSoDGq7wdhhIY0ZHD5OUQb2BcFzfGm0fg=;
        b=azewGR1FQjTS2Khk+Mq7A0axycscNFRmF53K04vavVdeygYO0pr+XHAxCqfYg0y/AS
         Gxx+rPdQmi3pokdGcroj2Z83BWGUUmnS9wRAoS2+dCMyPbVbkKkQD1zqYXZM8h0p3OZT
         LXsu4WNKHkD61rPrF+yqecFskRmP4OWMAQwFcZYkdyR6lrGBNglan7Y31ERQy4QWvXbn
         ErVXJhBPljDyaeGDuHlSIu9tvhuYjNBmdP6yVPRwQ9l/qNolvGJloE9zf8nNTRZJqCW1
         G2v8RnJkudpOcv9Xd8qyWTHgIbBMj17o0otQu4AhNCssog8f0mJW04BqlLse7lDzUbYA
         Muag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720520463; x=1721125263;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G+hQCp/WCknSoDGq7wdhhIY0ZHD5OUQb2BcFzfGm0fg=;
        b=j1m1uoBy+HR2IObROKJVRaES27qTprLqtCzT+q7Pi57n1+HwXqds/0oqQSvyzxy6h8
         ypthKrnNQ0Ej6fF43xEBRA2Ns09m4OPVEdVXp3CZ5z3fgMPX4yf7X/6xTUzixRY2Wq1M
         0tjzNNbSdCWAePW4XpI+g4lI9tdTG0x1GZMOHWPTp6oYxkNGU1COvZl+QWfIATaD3+x/
         9RKGQukhoQRVwjVzUerkGspJslP8ThJjr209QvhBHa63kpPpKp8feawr+bNPiF8u9ZwV
         d9rN8mPMSh4F8ezky45JVTFKt09eJIa7I08e53qVkuDEIlXkY50ssi/JpI9Ck1kdg26w
         7pqw==
X-Forwarded-Encrypted: i=1; AJvYcCVV0tGQnu62G3Le/5BveM1IjsRCkA2hgk0K9aY8HRqt2qmB+FvYYKKfqZuJK1RU9c/KB3mq3KthnONUPQtlqi5Q2X3DLb9EMqPKWg==
X-Gm-Message-State: AOJu0Yw768XscCSCo9pUe7x+eaw4Ms9Qu9geDQQc0STW4UsxzTA8a0EL
	DqZizDmD0MHzpFC/EP0hsg93PU/31JsCEvEseE/pvBW6aRhr8cy8ATiCmXKdrK8=
X-Google-Smtp-Source: AGHT+IE8wRZVW5baYXcFgEod6huJCvs7buDOLjTRsbZJLUCRnhrR5H9aEISZRauj8dj9XbSi2DU2Sg==
X-Received: by 2002:a05:6402:2742:b0:57c:610a:6e7f with SMTP id 4fb4d7f45d1cf-594baf8719fmr1848926a12.11.1720520462835;
        Tue, 09 Jul 2024 03:21:02 -0700 (PDT)
Received: from [192.168.105.194] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-594bb9605c2sm893973a12.13.2024.07.09.03.21.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Jul 2024 03:21:02 -0700 (PDT)
Message-ID: <6c79bb76-d865-4b77-b877-f7dbae6ce362@linaro.org>
Date: Tue, 9 Jul 2024 12:20:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/5] drm/msm/adreno: Redo the speedbin assignment
To: Akhil P Oommen <quic_akhilpo@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Marijn Suijten <marijn.suijten@somainline.org>,
 linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20240625-topic-smem_speedbin-v4-0-f6f8493ab814@linaro.org>
 <20240625-topic-smem_speedbin-v4-4-f6f8493ab814@linaro.org>
 <20240630102955.uencakbjiugszphw@hu-akhilpo-hyd.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240630102955.uencakbjiugszphw@hu-akhilpo-hyd.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 30.06.2024 12:29 PM, Akhil P Oommen wrote:
> On Tue, Jun 25, 2024 at 08:28:09PM +0200, Konrad Dybcio wrote:
>> There is no need to reinvent the wheel for simple read-match-set logic.
>>
>> Make speedbin discovery and assignment generation independent.
>>
>> This implicitly removes the bogus 0x80 / BIT(7) speed bin on A5xx,
>> which has no representation in hardware whatshowever.
>>
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>> ---

[...]

>> +
>> +	/* Traverse the known speedbins */
>> +	for (int i = 0; info->speedbins[i].fuse != SHRT_MAX; i++) {
>> +		if (info->speedbins[i].fuse == fuse) {
>> +			supp_hw = BIT(info->speedbins[i].speedbin);
>> +			return devm_pm_opp_set_supported_hw(dev, &supp_hw, 1);
> 
> Can we do this if supp_hw property is not present in opp table?

No, but this is also the case without this patchset (a.k.a. no change in behavior).

We shouldn't add code complexity to support that case, as having speedbin data
in the driver and not the dt means the DT is incomplete, which is not a case we
should care about

I can however try and add a clearer error path that would perhaps not crash the
kernel in this situation.. in a separate patchset

Konrad

