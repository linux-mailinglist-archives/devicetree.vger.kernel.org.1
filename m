Return-Path: <devicetree+bounces-4677-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8803B7B36A5
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 17:23:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 3A14D286173
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 15:23:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D988A51B9B;
	Fri, 29 Sep 2023 15:23:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 740C318631
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 15:23:55 +0000 (UTC)
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1112B1B3
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 08:23:52 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-523100882f2so17804652a12.2
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 08:23:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696001030; x=1696605830; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2fI3NjIu6ibVXMaxV4978aYW3D2t6y3JPV/QUFnUxmo=;
        b=ZPQ9VYJ+15VPxsnTR09neqcsHSnXZcCc+Jb6CH0ODjvpUJjoOmlsYG5Hg+gWxvtKRe
         5N8YtNCWtNJA6dCN4bySrCC7DVuIyUzjfC1ZiPXJs1mq/VEmQP4aOW57QSmiQ6GlL6lx
         h+ZW6V7TdfkXEqQLlqEi3AoZ9FofWgZj7rEAZPfGkBFXagpsSf/xlnzUvMG/5J7NvC8A
         umWl+TViQU7DcOm4CDfIx010zT5zQG37LEY7tA/DFl9h8B0sTG0zmb9ndEIr7FviA3V6
         H92fI7ESikNs/Nxat7/u2Qmcrsz87i41AmsbHGTGQBqvv2D4SKCjuuLqZC1CMJYK7D0e
         9liA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696001030; x=1696605830;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2fI3NjIu6ibVXMaxV4978aYW3D2t6y3JPV/QUFnUxmo=;
        b=Z1slIqDmsKobkGkFwKYeH1mbtNXY7vSJ8ZktI4GE1LQLaU7pGd0TUnTmuyxps3pdAc
         CfFMdobAWZ5Gag5rUaztbL9IHA1A4tGTuhiSHI+ac+swoM6Muqd64H8EjmqdEcp4N+sd
         n/Gx7zas8rE7+ykgxg0U3hschzV+kEORU3kIDHREOslKzUqf8oMGvlby7RW8g3CJdxHY
         4FJZOMieGI2uLsdnJ4MMehVBy6rRN/80yAf/bGd94jyRvHjk0TTGyl7qxAVleDu3TUSv
         mq0g6AGaaZF+vOGxQ/zCRNucfLhS3B+5ObOzbYy0I5hGy6/Fb7OMtVJMJqbZyx42fXgW
         QhiA==
X-Gm-Message-State: AOJu0YyCoxU1RbsWXrdVuh6mfqrZHgAbqSyeN+bDqQnVLpuMagTtDcEt
	gdHQXVOGQEohpQQ7MzlN99CueA==
X-Google-Smtp-Source: AGHT+IHqjsMK8Y/1artQAJrs2qGFuOW/UMoC3/PfEtSCGEWb9tEWh7FxqAROm23llsdyFcJ72ozYwA==
X-Received: by 2002:a17:906:3117:b0:9b2:be4e:4940 with SMTP id 23-20020a170906311700b009b2be4e4940mr4620126ejx.61.1696001030407;
        Fri, 29 Sep 2023 08:23:50 -0700 (PDT)
Received: from [192.168.33.189] (178235177217.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.217])
        by smtp.gmail.com with ESMTPSA id s2-20020a170906354200b0098ec690e6d7sm12604845eja.73.2023.09.29.08.23.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Sep 2023 08:23:49 -0700 (PDT)
Message-ID: <1610f135-f1a0-4c0a-8776-3e56371b58cc@linaro.org>
Date: Fri, 29 Sep 2023 17:23:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/7] dt-bindings: interconnect: qcom: Introduce
 qcom,rpm-common
Content-Language: en-US
To: Rob Herring <robh@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Georgi Djakov <djakov@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawn.guo@linaro.org>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20230721-topic-icc_bindings-v2-0-e33d5acbf3bd@linaro.org>
 <20230721-topic-icc_bindings-v2-1-e33d5acbf3bd@linaro.org>
 <20230811164814.GA3587580-robh@kernel.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20230811164814.GA3587580-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 11.08.2023 18:48, Rob Herring wrote:
> On Mon, Jul 24, 2023 at 04:06:27PM +0200, Konrad Dybcio wrote:
>> The current RPM interconnect bindings are messy. Start cleaning them
>> up with a common include.
>>
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>> ---
>>  .../bindings/interconnect/qcom,qcm2290.yaml        | 18 +++++++-------
>>  .../bindings/interconnect/qcom,rpm-common.yaml     | 28 ++++++++++++++++++++++
>>  2 files changed, 36 insertions(+), 10 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/interconnect/qcom,qcm2290.yaml b/Documentation/devicetree/bindings/interconnect/qcom,qcm2290.yaml
>> index f65a2fe846de..df89f390a9b0 100644
>> --- a/Documentation/devicetree/bindings/interconnect/qcom,qcm2290.yaml
>> +++ b/Documentation/devicetree/bindings/interconnect/qcom,qcm2290.yaml
>> @@ -13,6 +13,9 @@ description: |
>>    The Qualcomm QCM2290 interconnect providers support adjusting the
>>    bandwidth requirements between the various NoC fabrics.
>>  
>> +allOf:
>> +  - $ref: qcom,rpm-common.yaml#
>> +
>>  properties:
>>    reg:
>>      maxItems: 1
>> @@ -23,9 +26,6 @@ properties:
>>        - qcom,qcm2290-cnoc
>>        - qcom,qcm2290-snoc
>>  
>> -  '#interconnect-cells':
>> -    const: 1
>> -
>>    clock-names:
>>      items:
>>        - const: bus
>> @@ -44,6 +44,9 @@ patternProperties:
>>        The interconnect providers do not have a separate QoS register space,
>>        but share parent's space.
>>  
>> +    allOf:
>> +      - $ref: qcom,rpm-common.yaml#
>> +
>>      properties:
>>        compatible:
>>          enum:
>> @@ -51,9 +54,6 @@ patternProperties:
>>            - qcom,qcm2290-mmrt-virt
>>            - qcom,qcm2290-mmnrt-virt
>>  
>> -      '#interconnect-cells':
>> -        const: 1
>> -
>>        clock-names:
>>          items:
>>            - const: bus
>> @@ -66,20 +66,18 @@ patternProperties:
>>  
>>      required:
>>        - compatible
>> -      - '#interconnect-cells'
>>        - clock-names
>>        - clocks
>>  
>> -    additionalProperties: false
>> +    unevaluatedProperties: false
>>  
>>  required:
>>    - compatible
>>    - reg
>> -  - '#interconnect-cells'
>>    - clock-names
>>    - clocks
>>  
>> -additionalProperties: false
>> +unevaluatedProperties: false
>>  
>>  examples:
>>    - |
>> diff --git a/Documentation/devicetree/bindings/interconnect/qcom,rpm-common.yaml b/Documentation/devicetree/bindings/interconnect/qcom,rpm-common.yaml
>> new file mode 100644
>> index 000000000000..1ea52b091609
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/interconnect/qcom,rpm-common.yaml
>> @@ -0,0 +1,28 @@
>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/interconnect/qcom,rpm-common.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Qualcomm RPMh Network-On-Chip Interconnect
>> +
>> +maintainers:
>> +  - Konrad Dybcio <konradybcio@kernel.org>
>> +
>> +description:
>> +  RPM interconnect providers support for managing system bandwidth requirements
>> +  through manual requests based on either predefined values or as indicated by
>> +  the bus monitor hardware. Each provider node represents a NoC bus master,
>> +  driven by a dedicated clock source.
>> +
>> +properties:
>> +  '#interconnect-cells':
>> +    oneOf:
>> +      - const: 2
>> +      - const: 1
>> +        deprecated: true
> 
> I think this is kind of questionable for a single property. Do you 
> plan to add more properties here?
My best answer is "we'll see". Not in the forseeable future, but
this hardware has a never-ending queue of surprises..

I like this file for the broader description, but ultimately up to you.

(FWIW Georgi has queued this up for icc-dev (not icc-next) and I'd like
to flush my icc patch queue, but that's just my lazy €0.05)

> Also, if you add a new user of this 
> schema, then it's going to allow the deprecated case when it could just 
> start with 2 only.
I see your point.

Speaking of this keyword, shouldn't the dt checker start spitting out
warnings that would urge dts maintainers to update their trees?

Konrad

