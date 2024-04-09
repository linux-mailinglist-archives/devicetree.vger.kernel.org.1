Return-Path: <devicetree+bounces-57628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 36DE489E227
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 20:08:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CC2F21F2351F
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 18:08:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E9AA15696E;
	Tue,  9 Apr 2024 18:08:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MDvgS//y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FFB4156894
	for <devicetree@vger.kernel.org>; Tue,  9 Apr 2024 18:08:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712686082; cv=none; b=iyvmcRc5xavsAAEZhMQTB+nnbJ53x6LgT/CGLCC08K59v3wgiwMoK3Cj2vB3pzN06EcC7pfTVbGMmGfIwHOLPj42vNZHTGyaMEQc+z9sa52CbLOqnnxjtabCZaMtdcjCFlPytdSQ6T5y0mcaLQxuWCVCVEgNcEF4yWxuBKdsLWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712686082; c=relaxed/simple;
	bh=r0cBb6TC8kaxGaoj/nyQjZyd29xL4RD/be2AArxVvoU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ED9LpzN460O5YOG5/GWtL+iRUGkcZsxfNp+Nyf3wP5vG+MU+3+ysMImgv3ZWEF+rqr8SbC+y/M8vDgObYBh5qiNxERykpd08i1juojivu7wqMAwXPCopWm2x7F6O+ICSvSN7+D2Xbl7Yv+LkR1wzxaWk7CLcfazKYmIvk7bUw0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MDvgS//y; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-516d04fc04bso9125049e87.2
        for <devicetree@vger.kernel.org>; Tue, 09 Apr 2024 11:08:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712686079; x=1713290879; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VrZ8RYQWmS/u2XwLs8TYJcX0Juh8Ia0TqmDetkGlloc=;
        b=MDvgS//y9Z4Zuqi4JdBm/4iMxPujP2t3Ct+L/hCejNNvQyn96Z783Mp94+UpYCFCtv
         NzUfaYmxBW/qOmghZuNQCRF9n+WKTmfTXIcxPY62s2+Kj/JYHoZ5QGnYdEfHyaYePSpj
         +UYCLMgQ5Zjlr+RqtYmaSCI9TD5ihOo+jrBdPEyGGFUWkKfIeP6eAzv21ySG5MGsQsQK
         XAqiKvGeuN2XqULJB2Bm8MfopyboZtmTQeH1MjDJyX25ewzAdsOyULnD6d98O/QaVx4h
         eWTvbwkEKOytatHeVOybuH6nNEUcUgjX9EdF1GQ3YkupNgpSlDF/xUvmdrmYTbWRcHY9
         BWkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712686079; x=1713290879;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VrZ8RYQWmS/u2XwLs8TYJcX0Juh8Ia0TqmDetkGlloc=;
        b=DsHMeR8zXNfcDy+aMQ6tieM+fnFUvTVjk0QdhlnjulxjACkwTPfyx4yt54D29SXGBZ
         VjdnAUZdjvi3KzLJKD2iW+r8K9L8uCn2o8Kpw+Cir6+nCqUFKOGsADGu3UGee7TQk6Eq
         ZUyKRzyJUIgOys8G9zT6YDPvB3s4leE81HH2P3epc2bDYawSvZNiL8oIdXqceZ5MmAq6
         nrb5bMYDUJ13ypPQU/hrtdPCIe0DGbwAS3eSGTwawP6uCPEPMBvoIdurCfNHMz4aiA5F
         SBH5XY627K7EEEKfQYscvNqWkejHqSC1YuRjKwe5IYnn2FfbJiCdiovxxIQJO5+hYQ7j
         dZvw==
X-Forwarded-Encrypted: i=1; AJvYcCVzXVSsvgM0EFQb//6Klh7hF6PhfVjdx40qydEdB+uVJEfe6UTbp+LeYnK7Cdcj8f+qS7JQN8ugKiYtu4p2PORBEEh4nV3w81cATA==
X-Gm-Message-State: AOJu0YzvqaZuJ6kjVvJ27T7XbSj6fzD88HXvL1zI6sGB87PzlsvOI2db
	co7FN2ssbq1wSP3HCAv/W+XT9BZ8q14YINOJU5iAS8Wwmw2sojZTRTTlMpwWj4Y=
X-Google-Smtp-Source: AGHT+IG3MqgBS+mPe51VGcruWuPwb8VmWczbzg+K2q9SMydDRG5mtJeurSgvPU0XHt+YSYXpUbL4rg==
X-Received: by 2002:a05:6512:2313:b0:513:7e83:b3f2 with SMTP id o19-20020a056512231300b005137e83b3f2mr178345lfu.45.1712686078563;
        Tue, 09 Apr 2024 11:07:58 -0700 (PDT)
Received: from [172.30.205.99] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id i10-20020a0565123e0a00b0051723af85casm629871lfv.238.2024.04.09.11.07.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Apr 2024 11:07:58 -0700 (PDT)
Message-ID: <b77a3161-9a18-4523-8528-31c2f2f4f476@linaro.org>
Date: Tue, 9 Apr 2024 20:07:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/6] drm/msm/adreno: Allow specifying default speedbin
 value
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Rob Clark <robdclark@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
 Neil Armstrong <neil.armstrong@linaro.org>
References: <20240405-topic-smem_speedbin-v1-0-ce2b864251b1@linaro.org>
 <20240405-topic-smem_speedbin-v1-3-ce2b864251b1@linaro.org>
 <pncr7ecf4eir36skul3iwt2nf5bpuwd5zjfzzfwwnxjwe4hoes@6z2xe54crijp>
 <d8a2ef87-f29e-4bdb-a9b8-591b8bd5d2b2@linaro.org>
 <tkcbl2iwcy3feoggbk737gx32qsxe5p4ad6lfrujy2pazccrhm@kif3guuzay6h>
 <CAF6AEGsg2xCCC27t_Gqu=MMQ6tckVw=Zj90p4x7EuOm+VKA=ig@mail.gmail.com>
 <quil2y6tbilihgont2xekay4joxgnsanu3khgo77omtwkolslp@ozuaajpv5uon>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <quil2y6tbilihgont2xekay4joxgnsanu3khgo77omtwkolslp@ozuaajpv5uon>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 4/9/24 20:04, Dmitry Baryshkov wrote:
> On Tue, Apr 09, 2024 at 10:12:00AM -0700, Rob Clark wrote:
>> On Tue, Apr 9, 2024 at 8:23 AM Dmitry Baryshkov
>> <dmitry.baryshkov@linaro.org> wrote:
>>>
>>> On Tue, Apr 09, 2024 at 05:12:46PM +0200, Konrad Dybcio wrote:
>>>>
>>>>
>>>> On 4/6/24 04:56, Dmitry Baryshkov wrote:
>>>>> On Fri, Apr 05, 2024 at 10:41:31AM +0200, Konrad Dybcio wrote:
>>>>>> From: Neil Armstrong <neil.armstrong@linaro.org>
>>>>>>
>>>>>> Usually, speedbin 0 is the "super SKU", a.k.a the one which can clock
>>>>>> the highest. Falling back to it when things go wrong is largely
>>>>>> suboptimal, as more often than not, the top frequencies are not
>>>>>> supposed to work on other bins.
>>>>>
>>>>> Isn't it better to just return an error here instead of trying to guess
>>>>> which speedbin to use?
>>>>
>>>> Not sure. I'd rather better compatibility for e.g. booting up a new
>>>> laptop with just dt.
>>>
>>> New speedbin can have lower max speed, so by attempting to run it at
>>> higher freq you might be breaking it.
>>
>> Usually there are some OPPs in common to all speedbins, so picking a
>> freq from that set would seem like the safe thing to do
> 
> Well, the issue is about an uknown speed bin. So in theory we know
> nothing about the set of speeds itsupports. My point is that we should
> simplfy fail in such case.

Or we could allow e.g. the lowest frequency (or 2) which if often shared
across the board to work, giving a compromise between OOBE and sanity

Konrad

