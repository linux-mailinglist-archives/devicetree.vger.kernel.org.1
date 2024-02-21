Return-Path: <devicetree+bounces-44213-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B50C785D1D9
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 08:55:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6982A28692A
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 07:55:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 596C33AC24;
	Wed, 21 Feb 2024 07:55:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cQZxuh7L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 896653B2AD
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 07:55:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708502131; cv=none; b=Vo0+sRx92Ec2kjA/5ztRtLM17YzKVkhW9fQf+eBZDXks0Q6ghmO+SVcGe/908HqkDCt4kC+yF+W+cfHNRZxjJdjOT870XaRn2IS4pH8Okt6+irMRKIC/BsDFbfp/bJTa4eEqNj//Y+1YefLEC1GOgZQRcRwJPs25bhuLrU4SkdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708502131; c=relaxed/simple;
	bh=5TsEUpn7l9kXZs8eqHcte+uejCFYBZDt8tvEWvA0gds=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=M4hjsbufWUYv1UJjS6IrU+2QHwwYApkOF56Qli7oN5g2XQkzzIBv+dynAsTEU73mthsZJ7bdEqBM0QUVtawjIp2xuLDGnBVCHfNa5cBckglLO5A/69f0wG3rVMH8a50i+sO+Ngn6W7t0+bQmiK50OfihxAQZYgm2kR4HDspHnR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cQZxuh7L; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-563c595f968so458507a12.0
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 23:55:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708502128; x=1709106928; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eeuXLgXuiJwfDx45aERme9WbYsuIUi7glOshXn+zDIo=;
        b=cQZxuh7L35HzEMEXDIlS2n0J0WolX/p27aAsP3urEr6Ac6NN81mbP72RmU7RGJafgI
         mPCL3Zb+7d7E499Nj5eh0ARGaMDNpXInjj0PPZKwtP/lqZA/501Bxk+4ogQXJ14grRHb
         EmR5BQ1TY8JvuE4h2zdJfgrSVXnEWHXmiejyC+n1zKrTWsV2KX1/h5s6vPhy5RdNLbwo
         eSZR3kDOyg4KxzxnTSUIDGsr+JvFvy9yhPbXjqe8e5l2ELDEeH/A7CEDeC7kw1umJvuN
         Qho4uV5SwRSIKC9egyAMh4TOfjVw7ccaUCCMa200DE9CzS0zQz3djJ0cu3+byPNWWpSn
         y23g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708502128; x=1709106928;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eeuXLgXuiJwfDx45aERme9WbYsuIUi7glOshXn+zDIo=;
        b=fACKE3j4bAG3waKq1Ai4DFYKP6sem5Qvx+z9/9Xs1GFW1Jg9YumJvWyeLq+LCglxq/
         2cdjGl0S1L8dNHcV6/S/XTzfldISkI7i+KUCk9gV4hEzQzSSdYjH4C9BflZuO65zH6Tm
         i3/0NoiI8jp6XmCy9I0PFYIu7i80T8IzEoGLyKfWimqAXJZkrn308g6gt9pq3/ADNzdg
         Np/WaXlUY+Gd4jbz0yLea+ZyJG7rSmxr3imVrH5BpwP86dSDga/GrjL1FkinqDPCosqH
         yYWAegzOqqVKI1Aw4wn/ApBzu8WY2lsRripw3c1VqBgIIqvQr4MkwqrXcmEIxhmTJu/p
         AqGw==
X-Forwarded-Encrypted: i=1; AJvYcCW6kVsprXGrwapx/A01fdiUsR2ni1CKN4+1QBhAY4XnyIKVnoBOZbp+U4giRM/o66SfjORYNgvtcaaErWCgCr2bvp+KFq66VXUugg==
X-Gm-Message-State: AOJu0YwrIHxb7uvuYK6eAT56/q9DqAo64T4Kbls26Zz1eaaLI6X/QPJZ
	Cmhp3AtZ2j1FJ48shkJsoEpkbeu/FUVeARfcjFdHDKcXApeSgv1vzGINqfEvU4c=
X-Google-Smtp-Source: AGHT+IFeH6piIUO8xZU7x01K7W1nHRNGmZ4FCrY57KfBJjFgcbK5bI9oItXwHP6GIuOuy5VWZ/XCvw==
X-Received: by 2002:aa7:d658:0:b0:564:652f:e767 with SMTP id v24-20020aa7d658000000b00564652fe767mr5826149edr.0.1708502127915;
        Tue, 20 Feb 2024 23:55:27 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id h18-20020aa7c952000000b00564ed2dc990sm559604edt.87.2024.02.20.23.55.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Feb 2024 23:55:27 -0800 (PST)
Message-ID: <6664c942-bc5d-40dd-9e2f-c0e297ba88c1@linaro.org>
Date: Wed, 21 Feb 2024 08:55:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sm6115: fix USB PHY configuration
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Clark <robdclark@gmail.com>,
 Sean Paul <sean@poorly.run>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Stephen Boyd <swboyd@chromium.org>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org
References: <20240220173104.3052778-1-dmitry.baryshkov@linaro.org>
 <c87d715a-d6fe-4ccd-adc5-d98d4837a120@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <c87d715a-d6fe-4ccd-adc5-d98d4837a120@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 20/02/2024 22:23, Konrad Dybcio wrote:
> On 20.02.2024 18:31, Dmitry Baryshkov wrote:
>> The patch adding Type-C support for sm6115 was misapplied. All the
>> orientation switch configuration ended up at the UFS PHY node instead of
>> the USB PHY node. Move the data bits to the correct place.
>>
>> Fixes: a06a2f12f9e2 ("arm64: dts: qcom: qrb4210-rb2: enable USB-C port handling")
>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> ---
> 
> So that's why UFS stopped working and I couldn't for the life of
> me guess why..

We discussed such cases in the past, because it is not the first (it's
3rd or 4th within last 1 - 1.5 years). I believe Bjorn should reject
patches which do not apply cleanly and ask to resubmit.

Mis-applied patch might cause issues which are tricky to debug.

Best regards,
Krzysztof


