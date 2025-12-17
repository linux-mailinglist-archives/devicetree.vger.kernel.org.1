Return-Path: <devicetree+bounces-247237-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E1BACC5E71
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 04:29:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 67BFD30122C1
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 03:29:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6C5E2C375E;
	Wed, 17 Dec 2025 03:29:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="E4W6ua6a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 038E72C0287
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 03:29:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765942144; cv=none; b=M1brq2wCOuvORU59adjGLPY0ByVUMJNAJpM/Ch4L2of0CjIWNlOcJ7JaVHArW3FRkAQACjSdfLbM3y9Y7kSs3kGSmt9wImydtFhER2cn4Dsx6C7PJ4vLKm3D88BSZla9UoT1Xx1dWSjS53nUayRJTxX3K6mODc+ghzO+JiUkSPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765942144; c=relaxed/simple;
	bh=V3kmA2E9ohZVX3m+GKcNpy8+AR6Kqr7yMcKgMsOJbAU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hkPSPd9ux01mxaFkcLWZyObkPPoeMOOLBIakI3qUgEug+pH/RybztJIY9NbqBBBgRXHG7kXfkv5TPZRzAzykyzgLOpN88mXd7v5VQXsAP+uefSb4D2Et+UsVg8XEfJpTppbm9GaK8y9SmRIBRR2it5hQGGdXM613Enjegw0iJBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=E4W6ua6a; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-477ba2c1ca2so58113745e9.2
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 19:29:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765942141; x=1766546941; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8f8X3JIRm3Pu78dQiBeWf0yThxM9A+ZJVpoSaOPU8dI=;
        b=E4W6ua6aDA4BtJpJ6OBL6gwj2MvsT8Ci7RLLq0AiJwXyFJEdkLUQzkqhTcBsaEN8rp
         +TNJVwAz8TkMRMz7e77R5YrBlqMCO3MwZa8jS+R5DcNte/T4LznH8hOkrK/DzacF/BWu
         X9cjj9RY29JGbjaMHZnyQ8nBokSe+z+UD2Xco7XUnWZ9blYHEprWF0WphhYxfy92YrPM
         eCIlHr2FgoSAB0NZqlXP8tzoWmkYWNYFeHtzDsPzBthto533xZxzRWwWsyS56MkCAeNC
         HOU3IuFD66aL6/DWdkadR/OiBZ5AA/cQaVvr4AxHJIF5+Dc52OxMEwK4cugfHBSa/VbJ
         1x0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765942141; x=1766546941;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8f8X3JIRm3Pu78dQiBeWf0yThxM9A+ZJVpoSaOPU8dI=;
        b=qLho7FRlwzL6gIFebJofYEsY4VbFEk+ZwY+Sr478/j2IzX2YXBHxFhS4PmY+HBmLdo
         JuQTEC+WaYO7S0Vv+5McvZt9Taq7FOmbPwl+CQ+25XXwLb0XHvvZKKEDefQQBVisoDKx
         g5qwB1bqI5mC51rdGbvfSexnycsSix32JtGS+ES1N765pXv6Bmmu2x4wWx/l9J4UENQ2
         /Fv2wGxQGADMJaMkLid+WhnkfqzAWLnOAif69JpWMu8Ozc+VoOeGwL4M09Yv7WrQtQV7
         XzDfUAT/baMtlzex4C7VxiDZfPLIc49oEKzo3ra3rYBU/KA/EtJzv3Y0JGPa3/48kxS7
         WJnw==
X-Forwarded-Encrypted: i=1; AJvYcCXka8DE05HMzImK8h5BEGr7DJEfPxZ+loO3TkOresVxgyKonPmytiy6UgNfFWSsPLbDpBgivpHJCmkc@vger.kernel.org
X-Gm-Message-State: AOJu0YzuE81hX9D91VwkqDeq1PL6HWQWtWRN8lkVXzpcl3rFtTVKR4EW
	oEZVIwyG+O+nIZ1ANhpWjqrn9N/dDokedBcGoWhyYhC8WxmL0lpFXikwlNgTwzXv1MU=
X-Gm-Gg: AY/fxX5xXD8hqY5L/B9DVyxfqnGwqWP6nodEIV8YvjOy0sgr1Pc0FhMFaB58hEFkLES
	/lSdm1KtavbPzeEc3lfIDfOXXFrM2YjAYLtLncQ8YagSZljZY6ID5FcYPqZOS832nvKhxxCGIlW
	gpRy+r4uxW1P7kyQXhb4O5UmGcc4qQaQ9xyDJ9hYrvJsM1HTluOrScS9KRms8avum+AVxC1DYok
	uD9IXxuDv04NcbgVBFZ9oJykbFdbQihKZ5mE/Z95ZCIndluLdCBzhoEy5aoGIOPgcKCQ2igzFOP
	09Dna8tO4RE8vF0VDe4pM5GFl5XCqvgdi/G/s6qlqZlpfGmktxz9hIIEEiRSCFjW+7CsijqrhEX
	oFnoOrIo0crpw9m3sY5erBB8keo6LA/Flja+IGXhn5Sqv/dbnf9psW+11nP0JKrb0yCnQ0PuEI7
	voLKffK2eFEnRUNQRxRAsov0oxxRXHEs0N2OPe39vf6AdvGeA/ZJHA
X-Google-Smtp-Source: AGHT+IGvo+/r8DGxAk+Qp2jL/mIEcx7HGJlSXwVwowUCWWlLWmWtzRam145/XnamXOC9odGtDbhRnA==
X-Received: by 2002:a05:600c:828d:b0:45b:7d77:b592 with SMTP id 5b1f17b1804b1-47a8f8c05e7mr190963935e9.12.1765942141400;
        Tue, 16 Dec 2025 19:29:01 -0800 (PST)
Received: from [192.168.0.40] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4310adf6eabsm2191990f8f.38.2025.12.16.19.29.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Dec 2025 19:29:00 -0800 (PST)
Message-ID: <2ce4e296-701a-4354-8988-87525769ccac@linaro.org>
Date: Wed, 17 Dec 2025 03:29:00 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 1/5] media: dt-bindings: Add CAMSS device for Kaanapali
To: Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
 trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
 Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
 Atiya Kailany <atiya.kailany@oss.qualcomm.com>
References: <20251113-add-support-for-camss-on-kaanapali-v6-0-1e6038785a8e@oss.qualcomm.com>
 <20251113-add-support-for-camss-on-kaanapali-v6-1-1e6038785a8e@oss.qualcomm.com>
 <bd899586-f714-4d2e-95e3-6abf124e75a4@linaro.org>
 <37d0f89f-69be-45a7-90fa-347d6a3800bf@oss.qualcomm.com>
 <2d7ac7e8-ab69-44a6-b732-3657abf3a5a6@oss.qualcomm.com>
 <ceeee542-a319-4ad9-ada8-3dc769599dec@mleia.com>
 <d1fb4d8a-608e-44f5-834f-fa92d487c75b@oss.qualcomm.com>
 <eff759a7-06ee-42f5-a3a6-860956d7ae84@linaro.org>
 <c2125dbf-bbef-426e-adf9-7767ad822ae1@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <c2125dbf-bbef-426e-adf9-7767ad822ae1@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 17/12/2025 00:46, Vijay Kumar Tumati wrote:
>> I don't understand a reason why to do worse for the upstream, when 
>> there is
>> a clear and feasible alternative not to do worse, thus my 
>> misunderstanding
>> and my grief for upstream CAMSS are my concerns.
>>
> Thanks for the comments, Vladimir. Bryan's and Krzysztof's argument was 
> that the bindings are required to describe the full hardware regardless 
> of the driver support and either way not modifiable in the future, so 
> they preferred having the HW properties of the key functional blocks in 
> the bindings. And we were specifically asked to add the properties into 
> this node in this patch series. Having said that, my knowledge on how 
> the bindings are handled upstream in the long run as the requirements 
> evolve, is limited. So I will look for some expert advise from Bryan 
> here as he strongly advised for these. Thanks again.

I see no technical reason why describing the whole hardware block 
precludes any further work. How could it ?

Anyway, I'll repeat my ask to describe:

- The full register set
- The interconnects
- The clocks and resets
- The SIDs

---
bod

