Return-Path: <devicetree+bounces-183457-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B4CAFAD0C0B
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 11:16:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DE59B3B100A
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 09:16:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 002A21FFC5C;
	Sat,  7 Jun 2025 09:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gnFYN7Da"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D113B2A0
	for <devicetree@vger.kernel.org>; Sat,  7 Jun 2025 09:16:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749287792; cv=none; b=lrVLhOgBcKKiye+2b9bwudlknlVaR0LJoKxa6pGnuxIl5mBlreILr7kQ6x6AeKHyzVVkkFM7Kwkc5LvN8z3WgSlsum6do9+04Z5wVjk7++jDpF5gwebXrLhlfavviSp8uZevohwJrXaa619kD9fUBGOYvcpu7gLKJETCr5yXwv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749287792; c=relaxed/simple;
	bh=6uCKdNG+RvUmHq81VMYy036iNoiJt2ExQMxgWhfmRfs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=B4CpsT6xrbZHmNII4oNiOzPvzXueojD977fLxZprGTbDDPUG/eqbQfIHgm54/DZIZLOQ9ORz01Rz6uvbe18zIU7dQv5Snq11ruGWjOscq2IkG8nvucWUka8Lrw+H4cpdjhPU011FlNv05DHrkBCfd9ZdW/rhjfFtmpAx8rua4y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gnFYN7Da; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43edecbfb94so32876675e9.1
        for <devicetree@vger.kernel.org>; Sat, 07 Jun 2025 02:16:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749287790; x=1749892590; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CjJ/5vs6vF4wRvE8/xfIzB8JpoATxp7vm4h1CJMyhgo=;
        b=gnFYN7DaQDWFkGHLy2cy+KJBAaXixEfrHq/KPm2qjspKJjxaL9tQ2N5NeBgQgRA+3U
         I7VEWxhHelo7T7u9yXu1SJd+A0lm+iP+cI9SPc8Fj5ZcJ+gdNEhkusZlpFNvPC7KyZ2M
         XufMB9wBlVc+FAEdaLbxlOos+jWKggig2CBfoRFbIi2Y2YS+hsU5ikjmGW/gFxsWhWC7
         6eeZ4nBXUD/DwyB0BRWmC8M0kUTDtAaSHaLGHJkCbGLmi96A5lzZUBciYU4YiL1FbmJt
         LpVdBoFFURQo1RfFdq3q5AjOE7/ef/djBN/V4ww1M0i0BpJmRuXCbg+L3vV0zQkEeBZX
         cV9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749287790; x=1749892590;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CjJ/5vs6vF4wRvE8/xfIzB8JpoATxp7vm4h1CJMyhgo=;
        b=meqLCyQt/3/8LtdJJT7gQJ+TvgxpZw8mjzwCqp/jV+cwjKYpRMLd5QKbHEEl7XVVXt
         rtD9rPisCA2F/6vJtfCx5aWwver0z2XnxhPFWusDv7X/kJ5cB843OdjDfJkRRlUHGF/N
         x7Ponb9TgvRRwlZ/zPCR8GLXEPxwDa4GLNIZc+6nIqfeblZ6BhKN+w8J48FOtrJmkdnJ
         dNbKED3BRfb58ayigy/GGH+34+S845xlq0/ZfdUo+Fams5IDlhzpJ0ixmL/GOj7m5gxp
         HeCeAPnGYHiKEBdQUi+DEvgh9aUlkFNEyfEDcUfnN0gl9LukH6g0Oc7anrV2ZPubOWq1
         Sp9w==
X-Forwarded-Encrypted: i=1; AJvYcCXwJw3sd2VMBRj2McEeJ9saPYQimdphuvesh7h2ckwGNe7h8BaLjAIuS9koCTb8JfqNINkHeFRvwdEh@vger.kernel.org
X-Gm-Message-State: AOJu0YzASvCJLD9/fU26WLjZVsGnFtOSigBBOcaoHTVyHaieREAama6L
	zvsvGA9Mcqwq3M3cHv3YWSUQhqvkdY2lN8zVzqY07izKk8CP/tK68Woh5V/+t7W7W7M=
X-Gm-Gg: ASbGnctwLaueWggLlb5eBLLny7FBWpIWh83I95HR2fU+b+V6sFmwlTjIuNic6GQxmM+
	2sdj105uNjgPNDiR2MuTehbIrM10jaWbb+EcqAzYOA7XBh41LdA1kPd4KsViTina54zdXupBWZz
	aA4pMeln/pCHbBomHslDFOSlhm5nWnomzV35xuLl/wdwpO4ovkKPAiKRTKbEp3WaGmpHEAvVpcd
	nGDvo4SGRxLGNRVH2fyGNFa2VxQiJykI0tGYMTO1y/uZX4qm/uvT6GCbJresV0WfMAoD3MZopjv
	fsnS6T04umT5npwalHPKVZn88EBGH2yILxOx8z5iACB8L1Eg2cHpvYc8NQhwuNiqPcQbmn9MM7D
	LwsiIzvJonTeBzJ5E
X-Google-Smtp-Source: AGHT+IEkUbJBSS2d4IS6QBShUgwU+ysgYvzacuZq/Zvm/z+BFpGTBKsmlusvq3rqz7YKM16GiF1BFg==
X-Received: by 2002:a05:600c:a101:b0:453:81a:2f3f with SMTP id 5b1f17b1804b1-453081a33efmr596565e9.30.1749287789633;
        Sat, 07 Jun 2025 02:16:29 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4521375b5e1sm51785485e9.37.2025.06.07.02.16.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Jun 2025 02:16:28 -0700 (PDT)
Message-ID: <e0405dea-bad2-408c-a65d-f9a3456dd92e@linaro.org>
Date: Sat, 7 Jun 2025 10:16:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 0/3] media: venus: enable venus on qcs615
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Renjiang Han <quic_renjiang@quicinc.com>,
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vikash Garodia <quic_vgarodia@quicinc.com>,
 Dikshita Agarwal <quic_dikshita@quicinc.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Nicolas Dufresne <nicolas.dufresne@collabora.com>
References: <20250530-add-venus-for-qcs615-v8-0-c0092ac616d0@quicinc.com>
 <wmri66tkksq6i3hfyoveedq5slghnnpozjzx6gck5r3zsiwsg6@xevgh54rnlqd>
 <285cae4a-219c-4514-818f-34c8225529de@quicinc.com>
 <5854a587-aba7-4e71-87f8-249ba00cbc59@linaro.org>
 <996c9a39-5520-4b43-adfa-06ce29223ba0@quicinc.com>
 <713b87cb-0003-4ee3-a599-9cd41629bb42@kernel.org>
 <7aa36a0f-6741-40c2-93f4-036823d245fd@quicinc.com>
 <247002c0-ee68-4d0d-857a-768bf68bce75@kernel.org>
 <d5aee491-3ba2-4beb-8b8f-4ba8372e6d16@quicinc.com>
 <fa6a7983-27bf-40db-9843-0891bdadf523@linaro.org>
 <a258433f-f1da-4be7-a0af-645571aab871@oss.qualcomm.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <a258433f-f1da-4be7-a0af-645571aab871@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 07/06/2025 03:13, Dmitry Baryshkov wrote:
>>
>> As we've established the fallback isn't a fallback because it falls 
>> back to wrong data, so lets fix that.
> 
> Why isn't it a fallback? With the driver changes in place, the fallback 
> is totally correct.

Its not a fallback _as_is_

I'm fine either way

- Apply 1/3 and then re-submit 2/3 3/3

or

- Enumerate a QCS615 table
- Apply 1/3 here

---
bod

