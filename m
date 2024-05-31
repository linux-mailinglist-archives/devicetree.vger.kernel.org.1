Return-Path: <devicetree+bounces-71211-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E75A28D60D3
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 13:38:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 18A54B212D3
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 11:38:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E47C15749B;
	Fri, 31 May 2024 11:38:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PFhkgnfH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C979415748E
	for <devicetree@vger.kernel.org>; Fri, 31 May 2024 11:38:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717155491; cv=none; b=CUJ6SeKa95f5z2lXQPncQWotWBeO9LV18WuDOqLmVb8icH8XlfLNTwivRqzmEXVc3DzDZKR7/cnJB7/2rvjlnwTLx7qOzJVRtViXIRhQV4yw0n2bkJF5nabrSbZw3soW/uK5bq9CJu+uD263KGJMcS+ZGR7ReVfYIod3DNrwCBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717155491; c=relaxed/simple;
	bh=KzxFueSVmNEoiNc+OTEKRiu2AQKgXCyeCA4qnKLprZc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CBrLpo5AX9gSPUj2bYV0S0yKouLHyVfkH1xtFCotGXcW3xVmn32+IpFmAvFAVOwPfinQcdTylIRzdVE9hSUX7dkz98601vXheKiQFc4bM0u2D5BXbL5aNfLjfOZLYqEBAbQuosln884aiY34YmkBv+m53UjowKFH5/jZ/qbe+tQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PFhkgnfH; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-57a32b0211aso880083a12.2
        for <devicetree@vger.kernel.org>; Fri, 31 May 2024 04:38:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717155488; x=1717760288; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=iNuoN1tAu0HSQS+G/RZ/dRXYB+icJAiyT6fdiYq4XYA=;
        b=PFhkgnfHWvhYlM+tc6WQUxT3KRnN6ytevyTiVH/7UC84D9IFioM+zP5c+cLP042Hao
         JeX1gHMF+9RhtMs/heZoG0g1wPJVoF7/22K4JLfJEDrHzWvCE1HkICIGIb5/7SmBTKiM
         KH/idONQCDKI/7VQQgBv360zbqJ2uO0934pttwkcANOK4vLkyA8Tq4yRWmEcBFsAMb9D
         RSsNFZc06w/mSfD2kUfSy5PnmHQqHk1LNnZ6lwYM0s1Q3jS3hz1domwOhQaS+51PyRdx
         ZmEd4+ev7uVkNp/dvyYrg0UrhSZ6vS2D4PFBOm7H54kq9eOJvDzM61ofxw05qVDgIyF8
         /aiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717155488; x=1717760288;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iNuoN1tAu0HSQS+G/RZ/dRXYB+icJAiyT6fdiYq4XYA=;
        b=psLuJaSNyNY0lOnSkpMo2ix5eBR+NMk3vt3pFn3o9PGyls6WY4gaLdiGoMpxGo7rjB
         Jy1g0+Jq7AJ7LX4LqIBg/0eqq5zLbV6K8Wc+DcuGRpqo7RFNNl2/VI0PIfZmcCZvMB8S
         kvPkHB/zKOSamRymvd7sC9I+bkmXoCxAh3T48CKrZ9fPy5coU4rMTAL2fiu/zJfYlDna
         2heMVSmotqqgbo2bXayepnAYmxGKNV9ng72khHBTRpgScwvi1En0YrQIYe5E6chA5o9Y
         d6cvbUNeYmT5/Vnsqy9u101Q7Sc/7PJBaDDLfOjXeqTAkrsDLt7WBcTV8pM6zNaTNzed
         oV8w==
X-Forwarded-Encrypted: i=1; AJvYcCVQCZ2oNEz8gcwZMAVrl8y7zi52/rHc2NTfPmu5FSjSvnaB7F1kCfGr7XwLpOLEVp30VZpLbvwv4OR/7I2Gli+IlaUQfIPKvHd44Q==
X-Gm-Message-State: AOJu0Yy1RKcXAHOkx3e6thqKN2KWnPLc892owji0aWWSYC8QPkdQbsEM
	W/W3HcU4CnYqWf8eoXvCKb0v2grxHUsuAATp6SgubIeHa8jtwmWlwgWaericCxw=
X-Google-Smtp-Source: AGHT+IEB9Zjhm+bJIPzNKCbqEzPDhy6cnhe6m1N9nggGknOW+0Col3bm16ru72Z75E4WiduBDf84Zg==
X-Received: by 2002:a50:874f:0:b0:57a:27f5:1273 with SMTP id 4fb4d7f45d1cf-57a36571e62mr1041811a12.37.1717155488119;
        Fri, 31 May 2024 04:38:08 -0700 (PDT)
Received: from [192.168.128.139] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57a31c9bc79sm915069a12.89.2024.05.31.04.38.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 May 2024 04:38:07 -0700 (PDT)
Message-ID: <7beb86d3-2d80-4c69-bad9-c0b050b73c79@linaro.org>
Date: Fri, 31 May 2024 13:38:04 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: (subset) [PATCH 0/3] arm64: qcom: SA8775p: Add llcc support
To: Rob Herring <robh@kernel.org>, Bjorn Andersson <andersson@kernel.org>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org,
 Tengfei Fan <quic_tengfan@quicinc.com>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, kernel@quicinc.com
References: <20240529101534.3166507-1-quic_tengfan@quicinc.com>
 <171703961686.615222.7092607304287257293.b4-ty@kernel.org>
 <20240531014151.GA3684019-robh@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240531014151.GA3684019-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 31.05.2024 3:41 AM, Rob Herring wrote:
> On Wed, May 29, 2024 at 10:27:00PM -0500, Bjorn Andersson wrote:
>>
>> On Wed, 29 May 2024 18:15:31 +0800, Tengfei Fan wrote:
>>> The SA8775p platform has LLCC as the system cache controller. It
>>> includes 6 LLCC instances and 1 broadcast interface.
>>>
>>>
>>
>> Applied, thanks!
>>
>> [3/3] arm64: dts: qcom: sa8775p: Add llcc support for the SA8775p platform
>>       commit: 809c20b1ffc80200bfcbbeceb0d946a3e0eed3a4
> 
> I'm confused why you didn't pick up the driver and binding?

He did, although to a different tree (qcom/arm64-for-x.y vs qcom/drivers-for-x.y)

Konrad

