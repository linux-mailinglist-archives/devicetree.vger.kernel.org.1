Return-Path: <devicetree+bounces-13676-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D0D97DFC65
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 23:28:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A8B941C20E83
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 22:28:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B44442232A;
	Thu,  2 Nov 2023 22:28:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hk65anI8"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A62252231F
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 22:28:13 +0000 (UTC)
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3AD4C10D4
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 15:27:35 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-50797cf5b69so1736185e87.2
        for <devicetree@vger.kernel.org>; Thu, 02 Nov 2023 15:27:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698964053; x=1699568853; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uXoVyVp5OG84zOQkOm7IQ+UVmBcdY/iCRvS4GnsnCOM=;
        b=hk65anI8DnLP6XYG32IVr91q+4QPdQesXNfZXu7n7Z3Oxi+hfPMVXiNp8uEYbFsrK1
         xUy7Ph1BQygU+6QJBNRzD2ickq7d9jF9sIX8Bp9xSOONDX+iGZmvSwHVJL6f56+stO+V
         qQjzdm4FuuZHbULaZd3vxuElst9M2ol2Jd7qJD0fGG8U/9y81xrG0qmXIY7onMetI+nk
         sV5Yeosqvk6PuW8fwvmgNknqENNY3L958R0WjoBWSV5w+J2zBNj8BBCD73iaZ3mPm6VA
         rMp8PxxI05rhHg1a68KVMy5Vb5h55M1o7UITCgRXr5dRqvBqmX41RXbaKcT2hloO9hhk
         9yGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698964053; x=1699568853;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uXoVyVp5OG84zOQkOm7IQ+UVmBcdY/iCRvS4GnsnCOM=;
        b=jhwfzNhbGv47krQVEJBl7IN6MmWlt3T1h4myJGcsAA0EZdzKBEAVFwY2TX5fzeEdpo
         VKbanKZZtOPd4aK5ZagpsQvvX6lK9s8uBItJ9gExozTKsWxz3EyRuiAjgtuat0X269MM
         Ain0LWN2WbckYyyqewkV5b+OkqSk2n5ahmgZG99RPV39b1wSy9YYaWOoJQ7En2N94ebV
         Tc9DfIUV8G8+kuYRlXx+YuCJfD/7WrPnWIo9Fp7sSTvesjJwY7nIO7/CVEIdmUQKqLrS
         nAYD8nTnrpyh/1Uj5M0cy03a+qfx5MU8yEKC92Mvm4X4uKJS3jqqLTSmCCVaDs9Dor+x
         Rp5Q==
X-Gm-Message-State: AOJu0Yx5sfmDPRrCVPT8Zo50ocffiLNpLGqow8NxL5yvc8AlX5nDYBgo
	Y2ozxOd6LQ+KANPkpflhmC99Qg==
X-Google-Smtp-Source: AGHT+IGZIa4vy0H7W4820zKGuRymjso9N+Sv8D8oIyx/tITMO+jQ1LtlzKMzvKe+5sCsCU9PktUBNw==
X-Received: by 2002:ac2:5304:0:b0:507:a650:991d with SMTP id c4-20020ac25304000000b00507a650991dmr14430457lfh.58.1698964053368;
        Thu, 02 Nov 2023 15:27:33 -0700 (PDT)
Received: from [192.168.1.118] (abyj199.neoplus.adsl.tpnet.pl. [83.9.29.199])
        by smtp.gmail.com with ESMTPSA id a22-20020a509b56000000b0054037c6676esm220608edj.69.2023.11.02.15.27.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Nov 2023 15:27:33 -0700 (PDT)
Message-ID: <1bdf3b44-8a6f-c6d4-e86b-ec4bc0fc871f@linaro.org>
Date: Thu, 2 Nov 2023 23:27:30 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.9.0
Subject: Re: [PATCH v1 1/3] PCI: qcom: Enable cache coherency for SA8775P RC
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, mani@kernel.org, robh+dt@kernel.org
Cc: quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com,
 quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com,
 dmitry.baryshkov@linaro.org, robh@kernel.org, quic_krichai@quicinc.com,
 quic_vbadigan@quicinc.com, quic_parass@quicinc.com,
 quic_schintav@quicinc.com, quic_shijjose@quicinc.com,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org
References: <1698767186-5046-1-git-send-email-quic_msarkar@quicinc.com>
 <1698767186-5046-2-git-send-email-quic_msarkar@quicinc.com>
 <e5ee7051-d867-453f-98a7-3a8aea402607@linaro.org>
 <73a332db-14d3-a5b6-331a-d52ffb27ee63@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <73a332db-14d3-a5b6-331a-d52ffb27ee63@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 02/11/2023 11:16, Mrinmay Sarkar wrote:
> 
> On 10/31/2023 10:20 PM, Konrad Dybcio wrote:
>> On 31.10.2023 16:46, Mrinmay Sarkar wrote:
>>> This change will enable cache snooping logic to support
>>> cache coherency for SA8755P RC platform.
>> 8775
>>
>>> Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
>>> ---
>>>   drivers/pci/controller/dwc/pcie-qcom.c | 11 +++++++++++
>>>   1 file changed, 11 insertions(+)
>>>
>>> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c 
>>> b/drivers/pci/controller/dwc/pcie-qcom.c
>>> index 6902e97..6f240fc 100644
>>> --- a/drivers/pci/controller/dwc/pcie-qcom.c
>>> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
>>> @@ -51,6 +51,7 @@
>>>   #define PARF_SID_OFFSET                0x234
>>>   #define PARF_BDF_TRANSLATE_CFG            0x24c
>>>   #define PARF_SLV_ADDR_SPACE_SIZE        0x358
>>> +#define PCIE_PARF_NO_SNOOP_OVERIDE        0x3d4
>>>   #define PARF_DEVICE_TYPE            0x1000
>>>   #define PARF_BDF_TO_SID_TABLE_N            0x2000
>>> @@ -117,6 +118,9 @@
>>>   /* PARF_LTSSM register fields */
>>>   #define LTSSM_EN                BIT(8)
>>> +/* PARF_NO_SNOOP_OVERIDE register value */
>> override
>>> +#define NO_SNOOP_OVERIDE_EN            0xa
>> is this actually some magic value and not BIT(1) | BIT(3)?
> we need to set 1st and 3rd bit. yes, we can use BIT(1) | BIT(3).
It would be great if you could explain what each of these bits means
separately, #defining them instead and ORing at usage time.

Konrad

