Return-Path: <devicetree+bounces-13675-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 60BC37DFC5C
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 23:25:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E3795281D4E
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 22:25:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99A8922315;
	Thu,  2 Nov 2023 22:25:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DprgNULt"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91D753D65
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 22:25:47 +0000 (UTC)
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4A5F138
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 15:25:41 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-507bd64814fso1837523e87.1
        for <devicetree@vger.kernel.org>; Thu, 02 Nov 2023 15:25:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698963940; x=1699568740; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=54Wcim5fexlmc9mArCvndyoCrdtUDnHz0mDm1jI0dOs=;
        b=DprgNULtrVXhddyAN6XzTpEO1fsbLbGVd+UmOPyBiE/ql5xUOo1DOmwFlX62Umo9A1
         JLa3mCla+uSrsEjwMo6IiMnZCfwG//LzhqLvrXrL7DFMF6Qk5jrCcDwdJc71OYbZ25FP
         8Pw4zh6YsWSw3y68/YEvNn17u9pykQlUK9CPAJHFsViaWPE3/qMsjXt2FrntXyxF1CLg
         Cx3J+2pum2CK8rbWQkmSwfvxcAbHIra4GAaqmt/yeb7TarGLCTFc4CVLO+d5J5khFMBO
         mZcoief24GbpHk79LhwDEs0PwsRZaAt5HRSuYD7n5Dt7jO4VDbusgEmgxpI/7KuLvboo
         TYEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698963940; x=1699568740;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=54Wcim5fexlmc9mArCvndyoCrdtUDnHz0mDm1jI0dOs=;
        b=CI1piqOHiKK623OWdsMvOGTs/fhmPgit5Ujzm161MWSbiWzMnaS0GuhkMQTpHTc6h6
         01WBP5IKHC5+utyGKplnoTXVpIns8B3HxmaI+jmucQ2YgYf6wGToVf94AixNQHQPOLnq
         1cSbFE4+ckYSLMiXaXGZ0GyhSKOYxQNwLMeAWrlEVvAiwbD9SdRF+bTaG+fG+6OSTHoF
         TUP3UMmR5Hn8dw3W65deDcWg1RU2f30lh9wL7BbbglEmRkHUmEFraRI4o12lmqbmyxPN
         l8Y5+YbKOuV/SZD0pO6BctZJTJbD8hfVXaMeNJFrqLUPz0Jt6iZd07H790juwYfu374h
         y0vQ==
X-Gm-Message-State: AOJu0YytwqMSt+ZQhqbDcZrDna4NF1dRIAU1Khy0cayc9j86riWqy52r
	gBYawvoqyjOpEq4JmmNgcDsk0w==
X-Google-Smtp-Source: AGHT+IHSGONoIXFIAX1bln/GiI+5YVcGA5y5RhNFo1k63KHMuS/vMRjTMbsTL6geTgdsLKzwXyHA5w==
X-Received: by 2002:ac2:4555:0:b0:509:4a55:f189 with SMTP id j21-20020ac24555000000b005094a55f189mr2343918lfm.11.1698963939548;
        Thu, 02 Nov 2023 15:25:39 -0700 (PDT)
Received: from [192.168.1.118] (abyj199.neoplus.adsl.tpnet.pl. [83.9.29.199])
        by smtp.gmail.com with ESMTPSA id y93-20020a50bb66000000b0053e6e40cc1asm218128ede.86.2023.11.02.15.25.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Nov 2023 15:25:39 -0700 (PDT)
Message-ID: <21dea74b-b802-2e69-af4b-07dfb68b7024@linaro.org>
Date: Thu, 2 Nov 2023 23:25:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.9.0
Subject: Re: [PATCH v1 1/3] PCI: qcom: Enable cache coherency for SA8775P RC
To: Manivannan Sadhasivam <mani@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Mrinmay Sarkar <quic_msarkar@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, robh+dt@kernel.org, quic_shazhuss@quicinc.com,
 quic_nitegupt@quicinc.com, quic_ramkri@quicinc.com,
 quic_nayiluri@quicinc.com, robh@kernel.org, quic_krichai@quicinc.com,
 quic_vbadigan@quicinc.com, quic_parass@quicinc.com,
 quic_schintav@quicinc.com, quic_shijjose@quicinc.com,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org
References: <1698767186-5046-1-git-send-email-quic_msarkar@quicinc.com>
 <1698767186-5046-2-git-send-email-quic_msarkar@quicinc.com>
 <CAA8EJpoMoUvF8R3PjgCNijS6-8Gs5FjvC6dYerNBVBuYW3FmPA@mail.gmail.com>
 <20231102163619.GA20943@thinkpad>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231102163619.GA20943@thinkpad>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 02/11/2023 17:36, Manivannan Sadhasivam wrote:
> On Thu, Nov 02, 2023 at 05:34:24PM +0200, Dmitry Baryshkov wrote:
>> On Tue, 31 Oct 2023 at 17:46, Mrinmay Sarkar <quic_msarkar@quicinc.com> wrote:
>>>
>>> This change will enable cache snooping logic to support
>>> cache coherency for SA8755P RC platform.
>>>
>>> Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
>>> ---
>>>   drivers/pci/controller/dwc/pcie-qcom.c | 11 +++++++++++
>>>   1 file changed, 11 insertions(+)
>>>
>>> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
>>> index 6902e97..6f240fc 100644
>>> --- a/drivers/pci/controller/dwc/pcie-qcom.c
>>> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
>>> @@ -51,6 +51,7 @@
>>>   #define PARF_SID_OFFSET                                0x234
>>>   #define PARF_BDF_TRANSLATE_CFG                 0x24c
>>>   #define PARF_SLV_ADDR_SPACE_SIZE               0x358
>>> +#define PCIE_PARF_NO_SNOOP_OVERIDE             0x3d4
>>>   #define PARF_DEVICE_TYPE                       0x1000
>>>   #define PARF_BDF_TO_SID_TABLE_N                        0x2000
>>>
>>> @@ -117,6 +118,9 @@
>>>   /* PARF_LTSSM register fields */
>>>   #define LTSSM_EN                               BIT(8)
>>>
>>> +/* PARF_NO_SNOOP_OVERIDE register value */
>>> +#define NO_SNOOP_OVERIDE_EN                    0xa
>>> +
>>>   /* PARF_DEVICE_TYPE register fields */
>>>   #define DEVICE_TYPE_RC                         0x4
>>>
>>> @@ -961,6 +965,13 @@ static int qcom_pcie_init_2_7_0(struct qcom_pcie *pcie)
>>>
>>>   static int qcom_pcie_post_init_2_7_0(struct qcom_pcie *pcie)
>>>   {
>>> +       struct dw_pcie *pci = pcie->pci;
>>> +       struct device *dev = pci->dev;
>>> +
>>> +       /* Enable cache snooping for SA8775P */
>>> +       if (of_device_is_compatible(dev->of_node, "qcom,pcie-sa8775p"))
>>
>> Obviously: please populate a flag in the data structures instead of
>> doing of_device_is_compatible(). Same applies to the patch 2.
>>
> 
> Not necessary at this point. For some unknown reasons, the HW team ended up
> disabling cache snooping on this specific platform. Whereas on other platforms,
> it is enabled by default. So I have low expectations that we would need this
> setting on other platforms in the future.
> 
> My concern with the usage of flag is that it warrants a new "qcom_pcie_cfg"
> instance just for this quirk and it looks overkill to me.
> 
> So if we endup seeing this behavior on other platforms as well (unlikely) then
> we can switch to the flag approach.
This register reads zeroes on 8250, can we confirm it works as
expected there? I guess some benchmarks with and without
'dma-coherent'?

Konrad

