Return-Path: <devicetree+bounces-13606-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC857DF3DE
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 14:32:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 57E13281BD6
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 13:32:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 313D917740;
	Thu,  2 Nov 2023 13:32:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="B9VQzk4L"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3832C18E01
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 13:32:44 +0000 (UTC)
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A287D181
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 06:32:39 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-540c54944c4so1896643a12.1
        for <devicetree@vger.kernel.org>; Thu, 02 Nov 2023 06:32:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698931958; x=1699536758; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TWqG2ztO/4Kq+r8e04N5c4GPpXVKxa7YE3LsI9aATO4=;
        b=B9VQzk4L4RKdJXGDEPgDhA7E6v9/G2StDHV4N1sYC9nil2RqE2pAS2wduP5+ILV7vf
         X/MrBazHwDJnZHKI5KMyuIpTQEH+mtWvc6mrYyN1rjM+UcINgdsGj+4l8HEG05uGawYr
         rptPitD0UHl/OIoTOUqGvk69MzZExkb/2bLx4XWpwUo53H+ZZ7xvrMtk4MVaXRKjdSJr
         QAwY3io1/POj/TXrUrMu2VNNLilU10wP3Sjdlc9Nwz5tkXL87op9wwmjImlTO2jEcHxR
         D6oLrKX77y+PRkb90rrsLl1LRJg5OPbMAezY+s99Y6+ZS3rXyjsM5AWyIhYyjSgM0NG5
         Sk+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698931958; x=1699536758;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=TWqG2ztO/4Kq+r8e04N5c4GPpXVKxa7YE3LsI9aATO4=;
        b=d2wa+C+7AfgDqs2SYm2m1dOFarsYiAgpvN9uBNmibOfto1z7KbynGD4U+zDVDpBzhG
         J6EZOozzr+1HmvnePodHELeR9rjZuNKqIYrxiF0SDN0Z5canNQZ6tdvBCkF/Q3gzU0No
         zgi8QvXZgbJntsnd1sn0OMxvvfHsugvfpNi+FutDmUrJenY5L212j+CbLCndz5dnUxux
         /YznhMpGiFWpozdaKe1gmXpy8sSO5NVt7bDANrdsEw70PoAtKhEABO33zzxt0m11E2t9
         pLrC2D7EE5pdYAXu4XL4dMDxdnem86C5t1HJh1s8TGQsLvj81j9vBlladulnE7TyEhCo
         qdNg==
X-Gm-Message-State: AOJu0YzEtz3h5fXOFerTvPPx3OK7WgtzhIwSIIGKhOg3Awh3ZCzoxhSd
	VtuS3cSvq5QPGeZdKKbXfRT5Eg==
X-Google-Smtp-Source: AGHT+IEAKMfeVnCg00V7ZQjJLGjgu3S7wbNyIyAKdOYKhJZ3Aq9axcEXnT3psGJCj1/BIPzRB86pcQ==
X-Received: by 2002:a50:aa92:0:b0:543:57dd:503 with SMTP id q18-20020a50aa92000000b0054357dd0503mr7029602edc.3.1698931958088;
        Thu, 02 Nov 2023 06:32:38 -0700 (PDT)
Received: from [192.168.1.118] (abyj199.neoplus.adsl.tpnet.pl. [83.9.29.199])
        by smtp.gmail.com with ESMTPSA id j18-20020a508a92000000b0054351b5a768sm2378891edj.82.2023.11.02.06.32.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Nov 2023 06:32:37 -0700 (PDT)
Message-ID: <30b4c424-39ee-7ae6-faf2-c5ba32dda07f@linaro.org>
Date: Thu, 2 Nov 2023 14:32:30 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.9.0
Subject: Re: [PATCH RFC 2/8] arm64: dts: qcom: add initial SM8650 dtsi
To: neil.armstrong@linaro.org, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231025-topic-sm8650-upstream-dt-v1-0-a821712af62f@linaro.org>
 <20231025-topic-sm8650-upstream-dt-v1-2-a821712af62f@linaro.org>
 <691f1781-906c-411f-90f6-e1cc71062253@linaro.org>
 <e86fa7b4-635c-4fd5-9b3c-ade96ddf5c0f@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <e86fa7b4-635c-4fd5-9b3c-ade96ddf5c0f@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 02/11/2023 11:54, Neil Armstrong wrote:
> On 25/10/2023 11:01, Konrad Dybcio wrote:
>>
>>
>> On 10/25/23 09:47, Neil Armstrong wrote:
>>> Add initial DTSI for the Qualcomm SM8650 platform,
>>> only contains nodes which doesn't depend on interconnect.
>>>
>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>> ---[...]
>>
>>> +            CLUSTER_SLEEP_1: cluster-sleep-1 {
>>> +                compatible = "domain-idle-state";
>>> +                arm,psci-suspend-param = <0x4100c344>;
>> I think this parameter signals the AOSS to attempt system
>> suspend and CLUSTER_SLEEP is a shallower, separate state.
> 
> OK, so downstream call this state "APSS_OFF" and the other state
> calling 0x41000044 "CLUSTER_PWR_DN"Well, the name APSS_OFF suggests that all clusters go offline so
that would be a bit more complex than a simple "cut power to this
cluster"


> On sm8[345]0 and qdu1000/sm4450 there's both states called 
> CLUSTER_SLEEP_0 and CLUSTER_SLEEP_1,
> and referenced into CLUSTER_PD cluster power domain.
> 
> I assume this is the same as SM8550, so what's the issue ?
It's just that we've been naming it in the most generic way possible
and that it could be more descriptive, especially given its
correlation with different things

Konrad

