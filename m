Return-Path: <devicetree+bounces-10911-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 437B07D373A
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 14:53:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 058202813EC
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 12:53:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BA1215E83;
	Mon, 23 Oct 2023 12:53:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="z23NC1wV"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38821637
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 12:53:54 +0000 (UTC)
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1083E102
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 05:53:52 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2c514cbbe7eso44792581fa.1
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 05:53:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698065630; x=1698670430; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8TOj21DpFla94B3lrezd2m5FW2M9cR+LJFLebJcZV5s=;
        b=z23NC1wVaz34BCqtA40QAperMFvZmB7BOxefq4W7hduS3dFmx5J58L7w3aRiNCg/FD
         zpEjfNcTvoOh3DINOIxlH707OaoojK3f3pJtjHvxIdpyYXzAsP/QTnVvp7k1RZgDbHIx
         NV9ddqAV7ubFWVUZTo6eR2dwB7uM5ll6RDJ+rvbv25NuPxp43O4XIKMJ5lR2SOm8ea6x
         +mPubpgJ9tEAODWOqQ+jcFonLHBssDpHixpW6e1xUCzHYXVuIwvqTCAcnCV/NTUZtzoa
         VQuDGmvJWVnTwHFPQM7zxG542uLr5+HzwipaCXVkAGxe/cVOM/ZrxMjhEKFbA+GG9jox
         TaeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698065630; x=1698670430;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8TOj21DpFla94B3lrezd2m5FW2M9cR+LJFLebJcZV5s=;
        b=Y+wcnJg4j1xx6yBl2FUOcpWtyBT5pdxUD8gfvuq0sPiJrhLeA8uzYMMKz8nRGZsbko
         zOVrCii5A8ijojTz5ZK5ecztvVp+O66EwLboncEqD29BR26boYM5Sih8D7OSWoCXnxh7
         m3547yCar2altZl5+45dzID1DWo5qPFoTSTrvEXSIA372JnZBA1WOAYRH3qltFruMJow
         Jwdg+WhAHNoE9HERRxGKDW7L70oE7LtEu56fpkAEL9g0E5EmVpEzmackiRsRN45knrGp
         QIOjIfBe22atqVwviaBAIvAF1BNOghPcBuhSSUL2SZEJlItzrICwRmL4vDuke2pZkLd+
         JFPw==
X-Gm-Message-State: AOJu0Yym8+RLZceFm/J74F3D0nuRwODGuJeUbeVs6xya4fyOAlXBBG1O
	BOHxhLqPdr+KOlSPdamv4pcxTQ==
X-Google-Smtp-Source: AGHT+IFJPdsoqx2RrcTYIQaWdx7rxWWMGcczasupIxWfHMHGwXQMYXjL9Vwq0Y/tOuhz8xM/sEuiEQ==
X-Received: by 2002:a05:651c:1413:b0:2c5:cc7:d18a with SMTP id u19-20020a05651c141300b002c50cc7d18amr5649932lje.13.1698065630046;
        Mon, 23 Oct 2023 05:53:50 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id i21-20020a05600c355500b00405bbfd5d16sm9509384wmq.7.2023.10.23.05.53.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Oct 2023 05:53:49 -0700 (PDT)
Message-ID: <2c8cc463-84dd-4f28-812d-f5eea922daef@linaro.org>
Date: Mon, 23 Oct 2023 14:53:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 3/5] soc: qcom: memory_dump: Add memory dump driver
Content-Language: en-US
To: Zhenhua Huang <quic_zhenhuah@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@quicinc.com, quic_tingweiz@quicinc.com
References: <1698052857-6918-1-git-send-email-quic_zhenhuah@quicinc.com>
 <1698052857-6918-4-git-send-email-quic_zhenhuah@quicinc.com>
 <5bac8188-7d27-4efe-9493-dec4393fbeb0@linaro.org>
 <b455d4f7-0347-ac07-6d41-32b3f06c4f0a@quicinc.com>
 <454c4267-6bb7-456e-8dc1-cba83ffd1641@linaro.org>
 <1a5b2381-8987-2f92-d018-29fdbc23b826@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <1a5b2381-8987-2f92-d018-29fdbc23b826@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 23/10/2023 14:19, Zhenhua Huang wrote:
> 
> 
> On 2023/10/23 19:46, Krzysztof Kozlowski wrote:
>> On 23/10/2023 13:43, Zhenhua Huang wrote:
>>>>> +
>>>>> +			mem_dump_apply_offset(&dump_vaddr, &phys_addr,
>>>>> +					      size + QCOM_DUMP_DATA_SIZE);
>>>>> +			if (phys_addr > phys_end_addr) {
>>>>> +				dev_err_probe(dev, -ENOMEM, "Exceeding allocated region\n");
>>>>
>>>> ENOMEM? Does not look right then.
>>>
>>> ENOMEM means the memory allocated not enough? any suggestion? Thanks.
>>
>> The error code is okay, but we rarely need to print error messages for
>> memory allocation failures. Core prints it already.
> 
> It's not same as below case. Allocation is successful here, while the 
> driver used more than allocated size.

$ man errno
ENOMEM means: Not enough space/cannot allocate memory


Best regards,
Krzysztof


