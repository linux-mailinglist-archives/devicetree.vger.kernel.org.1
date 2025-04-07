Return-Path: <devicetree+bounces-163589-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 73EECA7D5F2
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 09:32:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C096118924D1
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 07:29:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50BCC238D31;
	Mon,  7 Apr 2025 07:22:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="R58rYfQ1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9FC222F389
	for <devicetree@vger.kernel.org>; Mon,  7 Apr 2025 07:22:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744010566; cv=none; b=LOXwvLtsD0hSSDG2xr5eOTt0O8/GZQShsX6GmPnzCF6r/GPF0R8+8IiM6RARuA52aRuk43/7rfWPxW8Y3MHOJtBxwEZ1lWMaHOFZx58ubs1cuWYyPdyXwwm/xeTCrRH+djiEzozC7oKJxSMAbMjgl18OCOyXm2EzgeSNpR7lH4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744010566; c=relaxed/simple;
	bh=73YjE4Mhwi0WBQCbMudtvvzxBf2NPJrusHjOYzLngE4=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=YXh8U5PFbPkdhMpXeK0sSkWIiuaDofmvE0BidNGvrDZK6ImKnMWv/zo5rQUkJQ1xN7R9cq1lY5oWzbtu/8FTWN30EsJlWYto6Fkl1ahj77lf1FDGroMVxYPkjXg4SpqWAdZZL1bzWF5MsDkWRD3ll4Jt2MvHL9iOw/L1rlMTetk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=R58rYfQ1; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-43cf257158fso26855625e9.2
        for <devicetree@vger.kernel.org>; Mon, 07 Apr 2025 00:22:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744010562; x=1744615362; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JuGZUnSASk10lNE/9ifp4v0eahsXlHOvwT8MRApN0Og=;
        b=R58rYfQ1+hkDL455DkI7Y3U66jSD4z4UcLpJ930NuCaHkUlfKLTrBH3EtUmHBei4C0
         /05xSRBUnDHqi2yNse/b3P8ztq3IKU9Y+8GYYZf5UsQP5xJuAGiH66ZRtDzzN/TocHmX
         v3b5oJCEMCt2Y+McMQV3oT0vE9U7ADqiP76oiGVRtKCtwUBSUqCYkh/XOHwjjJikfNLc
         EqvUrCzQA53YkSAaTfQLgLBhmoo6/VF6XN+Yizp6L81KUkLqRYsVpKBqoUbDP95JTQu0
         RD0cGC9ZcxQ9jnNmcryVWHO8j0cBGKqhejLvODu0O037Jd9g2nhD3J8y7ECZ8oxoL+RV
         TOqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744010562; x=1744615362;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=JuGZUnSASk10lNE/9ifp4v0eahsXlHOvwT8MRApN0Og=;
        b=sRhucoiZUA4fWFYV9WF0PN6sSUkpY/C6shK700jT/c75Ev9BPw/S4ORdObKoPssGGu
         F3TPt8AHSYpHHGiC2FKfUE0rFStgSh3BnhzojKEAG+E/Asufi69c0H0EP1tNVGrhefQ1
         hlBucwdDyUCRqyUHCP1aFVXIcdP44EiwCnb2PvNM50mXcj8XHVonmwxdphNPAxtLoFJR
         VZYWlXzCh/MjoBwTWUUFN/xiA1F96/O3PznhgNanqVyXRpdpTKNzS14TIFdAFyV2qn+I
         OnoP8bz6MGVhYAF0RmwtfYca0yAsvyoV4VFCpVexw8djvUacTQf03fS60som+tnUH5RY
         /oWg==
X-Forwarded-Encrypted: i=1; AJvYcCVAWpvKTIn4TlZ4t+THleKGCU8HQO6lzLvwiWgozt9+vg+/FMje+9JoRsJSei9B79zup5g1YdKq2New@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1k6juhE8GTj7AI2BXRjQH4/ZIfAv+QUzBAFDXvy+xVfO5Cx4W
	xo7ICZJ6Fo5pYGH6QEmUeBVRW7b+1zg1XIzIxL5kU0TgkMk4a3BXApOM+30EOZQ=
X-Gm-Gg: ASbGncsGYN1I5Ok0TPNqTFOuGnWqfHLns+12K3t51ikXnK+PYbvXZJO/uVwj1yLdJcQ
	VOlmjSMxJLy+qdyu5IQkYJvqOcUC2HyT4f1PTbJ81NH14cg0MwL3E/9HDqksagswJFSmYz8jOUl
	/k2MsEIoiv4i2I+EfLTYJxIgl838cYhNz44DDnTlffSYKspSTrhJkMvDCrhEpjukjjxXZR/gGuE
	kxqcaDBOVUZbVFSPmrMPVCqJrXwXKwxWpsx8MBAN5wVb6TGz18OZ1b4Fl7164p1F0vB2y1VvDoF
	SAjhvW9KvOTe/2VGO6WnXo41ZuOfocIVmGVDiGqgzyxG5NU87UPfFUf8kTQMZBAnV67MpPPaijM
	9/+l9yG8Qj4z2KMsADqMksw==
X-Google-Smtp-Source: AGHT+IGpA9PaiK6p4H62d6eljIWg3SGWCwAKEJi8YPHrwmXIK87FySy7IShnB6R6GLTtXuuKMtPpxA==
X-Received: by 2002:a05:600c:35c8:b0:43c:f513:9591 with SMTP id 5b1f17b1804b1-43ecf86b406mr99142655e9.14.1744010561890;
        Mon, 07 Apr 2025 00:22:41 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:f2a4:b974:cba3:a605? ([2a01:e0a:3d9:2080:f2a4:b974:cba3:a605])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ea9a346e3sm109314875e9.1.2025.04.07.00.22.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Apr 2025 00:22:41 -0700 (PDT)
Message-ID: <58471b67-98ab-4452-8508-d6276d47695e@linaro.org>
Date: Mon, 7 Apr 2025 09:22:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 2/6] phy: qcom-qmp-ufs: Add PHY Configuration support
 for sm8750
To: Nitin Rawat <quic_nitirawa@quicinc.com>,
 Melody Olvera <quic_molvera@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>, Bjorn Andersson
 <andersson@kernel.org>, Andy Gross <agross@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
 Trilok Soni <quic_tsoni@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-scsi@vger.kernel.org, Manish Pandey <quic_mapa@quicinc.com>,
 Linux regressions mailing list <regressions@lists.linux.dev>
References: <20250310-sm8750_ufs_master-v2-0-0dfdd6823161@quicinc.com>
 <20250310-sm8750_ufs_master-v2-2-0dfdd6823161@quicinc.com>
 <1526d8a4-9606-4fb3-bb86-79bd8eb8a789@linaro.org>
 <430ed11c-0490-45be-897b-27cad9682371@quicinc.com>
 <731f1ad1-8979-49a1-b168-56e24b94f4fb@linaro.org>
 <7b08c860-e5f1-4665-8e5e-2a6a3e26a2fa@quicinc.com>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <7b08c860-e5f1-4665-8e5e-2a6a3e26a2fa@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

On 25/03/2025 08:37, Nitin Rawat wrote:
> 
> 
> On 3/25/2025 1:04 PM, neil.armstrong@linaro.org wrote:
>> Hi,
>>
>> On 25/03/2025 04:12, Nitin Rawat wrote:
>>>
>>>
>>> On 3/24/2025 11:40 PM, Neil Armstrong wrote:
>>>> Hi,
>>>>
>>>> On 10/03/2025 22:12, Melody Olvera wrote:
>>>>> From: Nitin Rawat <quic_nitirawa@quicinc.com>
>>>>>
>>>>> Add SM8750 specific register layout and table configs. The serdes
>>>>> TX RX register offset has changed for SM8750 and hence keep UFS
>>>>> specific serdes offsets in a dedicated header file.
>>>>>
>>>>> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
>>>>> Co-developed-by: Manish Pandey <quic_mapa@quicinc.com>
>>>>> Signed-off-by: Manish Pandey <quic_mapa@quicinc.com>
>>>>> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
>>>>> ---
>>>>>   drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h |   7 +
>>>>>   .../qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v7.h    |  67 ++++++++
>>>>>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c            | 180 +++++++++ ++ +++++++++-
>>>>>   3 files changed, 246 insertions(+), 8 deletions(-)
>>>>>
>>>>
>>>> <snip>
>>>>
>>>> This change breaks UFS on the SM8550-HDK:
>>>>
>>>> [    7.418161] qcom-qmp-ufs-phy 1d80000.phy: phy initialization timed-out
>>>> [    7.427021] phy phy-1d80000.phy.0: phy poweron failed --> -110
>>>> [    7.493514] ufshcd-qcom 1d84000.ufshc: Enabling the controller failed
>>>> ...
>>>
>>> Hi Neil,
>>>
>>> Thanks for testing and reporting.
>>> I did tested this patch on SM8750 MTP, SM8750 QRD, SM8650 MTP, SM8550 MTP and SM8850 QRD all of these have rate B and hence no issue.
>>>
>>> Unfortunately only SM8550 HDK platform which UFS4.0 and RateA couldn't get tested. As we know SM8550 with gear 5 only support rate A.
>>>
>>> I was applying rate B setting without checking for mode type. Since
>>> SM8550 is only platform which support only rate A with UFS4.0 . Hence
>>> this could be the issue.
>>>
>>> Meanwhile can you help test at your end with below change and let me if it resolves for you. I will also try at my end to test as well.
>>>
>>> =============================================================================
>>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/ qualcomm/phy-qcom-qmp-ufs.c
>>> index 45b3b792696e..b33e2e2b5014 100644
>>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>>> @@ -1754,7 +1754,8 @@ static void qmp_ufs_init_registers(struct qmp_ufs *qmp, const struct qmp_phy_cfg
>>>                  qmp_ufs_init_all(qmp, &cfg->tbls_hs_overlay[i]);
>>>          }
>>>
>>> -       qmp_ufs_init_all(qmp, &cfg->tbls_hs_b);
>>> +       if (qmp->mode == PHY_MODE_UFS_HS_B)
>>> +               qmp_ufs_init_all(qmp, &cfg->tbls_hs_b);
>>>   }
>>>
>>> =================================================================================
>>
>> With this change the UFS works again.
> 
> Thanks Neil for quick revert. I'll raise the official change.

Any news of a fix here ?

Thanks,
Neil

> 
> Regards,
> nitin
> 
>>
>> Thanks,
>> Neil
>>
>>>
>>>
>>> Thanks,
>>> Nitin
>>>
>>>>
>>>> GIT bisect points to:
>>>> b02cc9a176793b207e959701af1ec26222093b05 is the first bad commit
>>>> Author: Nitin Rawat <quic_nitirawa@quicinc.com>
>>>> Date:   Mon Mar 10 14:12:30 2025 -0700
>>>>
>>>>      phy: qcom-qmp-ufs: Add PHY Configuration support for sm8750
>>>>
>>>> bisect log:
>>>> git bisect start 'ff7f9b199e3f' 'v6.14-rc1'
>>>> git bisect good 36c18c562846300d4e59f1a65008800b787f4fe4
>>>> git bisect good 85cf0293c3a75726e7bc54d3efdc5dc783debc07
>>>> git bisect good b2cd73e18cec75f917d14b9188f82a2fdef64ebe
>>>> git bisect bad b247639d33ad16ea76797268fd0eef08d8027dfd
>>>> git bisect good 9b3f2dfdad1cc0ab90a0fa371c8cbee08b2446e3
>>>> git bisect bad 8dc30c3e4cf8c4e370cf08bd09eb87b0deccd3de
>>>> git bisect bad 100aeb03a437f30300894091627e4406605ee3cb
>>>> git bisect bad b2a1a2ae7818c9d8da12bf7b1983c8b9f5fb712b
>>>> git bisect good 8f831f272b4c89aa13b45bd010c2c18ad97a3f1b
>>>> git bisect good e45cc62c23428eefbae18a9b4d88d10749741bdd
>>>> git bisect bad ebf198f17b5ac967db6256f4083bbcbdcc2a3100
>>>> git bisect good 12185bc38f7667b1d895b2165a8a47335a4cf31b
>>>> git bisect bad e46e59b77a9e6f322ef1ad08a8874211f389cf47
>>>> git bisect bad b02cc9a176793b207e959701af1ec26222093b05
>>>>
>>>> CI run: https://git.codelinaro.org/linaro/qcomlt/ci/staging/cdba- tester/-/jobs/229880#L1281
>>>>
>>>> #regzbot introduced: b02cc9a17679
>>>>
>>>> Neil
>>>
>>
> 


