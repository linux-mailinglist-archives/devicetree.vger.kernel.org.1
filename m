Return-Path: <devicetree+bounces-10773-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EAE07D2A8E
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 08:38:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3E863B20D66
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 06:38:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 277DC63C0;
	Mon, 23 Oct 2023 06:38:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="B8crCurO"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 886806FCF
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 06:38:10 +0000 (UTC)
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03D54D67
	for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 23:38:07 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-9adb9fa7200so613553166b.0
        for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 23:38:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698043085; x=1698647885; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=T7XZOJbmcr0RaWPfe6jHZ8JALukOiHP/eJGLtX3nla0=;
        b=B8crCurO9zCpnwr+nwm1Kn1YnTAJlbLuPJ3McYAnU7CeKqSk0noUGul7HpVJ/rc+b0
         bMV5o3lmlSwCSilEZH4HsF1kCuKKS3s2Jn6r5cC+80IVN6mq4LYeYiABtikGA+x42Ajd
         4tRUs8+oFHsPlZJINjkWiivZw+FUX/30zQwmH5cojq/r6rLVtaqTYSPYYdmMqcYLJ4Nt
         /fjqLZS7gq1bXjeqPx+cmvyAeSIuYJmiklBavjFFiOGm+6/kPS1hOUO/qtzCo/Sj34We
         a30+n+V4tKgVAv8fyafADcPfNFsjzsGedcgrSiQ6Ru0QOtucHfATSZtgOiN+aqLbDO+P
         Caqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698043085; x=1698647885;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=T7XZOJbmcr0RaWPfe6jHZ8JALukOiHP/eJGLtX3nla0=;
        b=g9AJL+pojDAbnuAC6u8PQM0wdJ5Fxk2LbCRQ31lxRttXBlZku60A1uTBHyoVrthzAi
         03mo0rKg7jpl2o63AiCGvhPlZ4+cm6EQ9IJ6JSJiiiSDD5wrc4lVgRF5BwtatWgKxHZq
         +HtA/0E4vHvSjcLIKxw27k3Vt7k0gVUXN4LUf5XwudU0u4WfJTgNltvLlG648N3V0pM+
         hUZkwYsEIJPfNVRUSNzhxamCWiAJLsmnQDFo7aqMLpOyrOTgz6CMdL6cLTxolCCHn0w7
         1oCECsEFNAtiI4sZ1vyGCxJLdELN5v8PRNZ1+wgXT/gT+jYgHggTMoWnSTyLCnNzpaE+
         8tlw==
X-Gm-Message-State: AOJu0YwVebF1pss5Nd2NnJ2CcfTe1ypAeyofFxvdLRTunpRPOeFnL3Lw
	UuSivASWHJstu9S0FpJTLQPwqw==
X-Google-Smtp-Source: AGHT+IHOaUVGw1BjNcTEVbMWkiJ65wp2GqtHZWkfDrFznTqk+0trlNAo98r+Ue2XBv1wB/G955bpjg==
X-Received: by 2002:a17:906:fe06:b0:9a9:f042:deb9 with SMTP id wy6-20020a170906fe0600b009a9f042deb9mr7973153ejb.19.1698043085513;
        Sun, 22 Oct 2023 23:38:05 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id f25-20020a170906561900b009920e9a3a73sm6154197ejq.115.2023.10.22.23.38.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Oct 2023 23:38:05 -0700 (PDT)
Message-ID: <c8389dd9-4041-4d8d-b17a-f9d59cb287d1@linaro.org>
Date: Mon, 23 Oct 2023 08:38:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/11] ARM: dts: qcom: Update devicetree for QCOM ADC
 bindings path change
Content-Language: en-US
To: Jishnu Prakash <quic_jprakash@quicinc.com>, agross@kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linus.walleij@linaro.org, Jonathan.Cameron@huawei.com, sboyd@kernel.org,
 dmitry.baryshkov@linaro.org, quic_subbaram@quicinc.com,
 quic_collinsd@quicinc.com, quic_kamalw@quicinc.com,
 marijn.suijten@somainline.org, andriy.shevchenko@linux.intel.com,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org,
 linux-arm-msm@vger.kernel.org
Cc: linux-iio@vger.kernel.org, linux-arm-msm-owner@vger.kernel.org
References: <20230708072835.3035398-1-quic_jprakash@quicinc.com>
 <20230708072835.3035398-11-quic_jprakash@quicinc.com>
 <59ea565c-93ad-e8e3-10db-ae3ba481ebe9@linaro.org>
 <706d3b7e-a9b5-081c-52b2-7cce4f0d5f10@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <706d3b7e-a9b5-081c-52b2-7cce4f0d5f10@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 23/10/2023 08:18, Jishnu Prakash wrote:
> Hi Krzysztof,
> 
> On 7/9/2023 10:56 PM, Krzysztof Kozlowski wrote:
>> On 08/07/2023 09:28, Jishnu Prakash wrote:
>>> Update ADC dt-bindings file paths in QCOM devicetree files to
>>> match the dt-bindings change moving the files from 'iio' to
>>> 'iio/adc' folder.
>>>
>>> Signed-off-by: Jishnu Prakash <quic_jprakash@quicinc.com>
>>> ---
>> Your order of patches is incorrect. DTS cannot be before bindings,
>> because this indicates you broke ABI. Please keep entire patchset
>> bisectable and split DTS to separate patchset (linking the driver and
>> bindings).
>>
>> Best regards,
>> Krzysztof
> 
> OK....so you mean I can move the dtbinding files and update 
> documentation and driver files for this, all in one patch and then make 

No

> a second patch for updating devicetree files for the file paths?

No. And this proves the patchset is broken.


Best regards,
Krzysztof


