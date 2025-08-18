Return-Path: <devicetree+bounces-205659-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CCB6B29BDD
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 10:18:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6F1B2175E02
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 08:18:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F3F12FE076;
	Mon, 18 Aug 2025 08:18:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="S+uX7YYj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 010DE2882A9
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 08:18:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755505088; cv=none; b=jUcdCqjfCzXsIfYjXfNM4e8yUfbH9F+lZ2MBOw0N+y6BvZCtpbSrr030zV/4OOqY5xyIFli8c51tvLSq8KCAB2/wnFUCvbZ0jC69Qs22uTnKiXHfcRbUEPDfDtiAxO+u2AV7jEtK4GabhJG35W/KQ4XiRj7OYy4BAlfgWsS3WQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755505088; c=relaxed/simple;
	bh=i42MxpHblmVuwVJ/gbO8Gr9xvuaq8dOxdNKlI7dRB2c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DjOwc6kG4ZY90nc1m/xTMjAAXzNmLBzmxIwG6ipWr5m/r838+rkXONlACEi5Xg7fKqMcStLBec9PIzEydlMKah4NkS8zWjm5K4MOHu8HlCzicGDQC67zoYRTck8r7CHd0m2LNBSJptRMeZQUBOGC1cMbccBc82cSiEpSEr7Z8Fo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=S+uX7YYj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57I1CM5j023680
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 08:18:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	y/6PqUZruvlLTGfXdzQffwxBhi8vwdKmBm+40lYCTVM=; b=S+uX7YYj27NBzMzU
	gox+Q0wEEfbF/GPGSqgNQXHYtYaRGFw41DaozrAMtjvbprVFjuiS24cK0aj04kus
	c7qA9OdSZb9nQ8TFUq8CIZ8PZ7VoS9hEGqPd6r0dcH7YeRdI2Zo6lq2sHe2ctjqe
	5d2HU6xiDH4W5QfTjNNGC9scW/BLH2NfjP2BsOs3qdWk+AzNPiHZW5ovL5Q3BB98
	JmcDvIakCbK6ICo4/4b61RfMztyJZKTUAOpuHGled4V29wUivXSKBWv4aWxw0l50
	r+2tY/nKsHOo5ShV3sxEVn9QxgdR1DxWvSmGHX0uy7qOWglQg0DKC063HgSxR9JR
	Gzl0yw==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48jk99ksme-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 08:18:05 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-76e2e8b4ab7so3224250b3a.1
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 01:18:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755505084; x=1756109884;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=y/6PqUZruvlLTGfXdzQffwxBhi8vwdKmBm+40lYCTVM=;
        b=cwduOofM+q0QYT9pCbJFofw90NwJOXLWgBnn/JITZuazz2u/NbnIzm97jlru49d1qF
         YdeVWf0Cj84EhoTqRENjrVJuTXAJe8d0CGbBopF1HcUMoeCDOZ4VZRaLu5OLlPPHcR0O
         QY7uDh+te5Kr3A2EqHTR4KrCNa196C5ekteMbemstRg/s+bGdKsHDNC4KbHThoMMWtFp
         4BzgaTjQA+nPfw2XJrj3NXvR9VSLnRgBnttVQ9bPMnJhBIIJ2oDa+Tnyc5QrqRqMWAbU
         A55n5yW+8Ml/IBkNkA81aYqithh34DOgd1GbjDKBKJoh/n6aXE4W53mlSPbtUZ7DpRPQ
         ePsg==
X-Forwarded-Encrypted: i=1; AJvYcCVksuGgMpg2UoZzuqbpWIfEGTp6RIY2Wk7WutI/p7Lpi1DyUFIu0l7tEj4NDRnpvk7rFWOxWMhU9sxr@vger.kernel.org
X-Gm-Message-State: AOJu0Yxh5hnpZXy2WpeKS1mrgKYLGeL5BODoauP1Itk9GoL7OSy6ADtq
	liKPSEJkbKzqSMIiukbUN2RGBWffCShRl5NiwqvPuszmy8/G4f/LVx4YP3zyygpDMPZy+fBd/yd
	BFgJbvN5e+u9V60ndMPMhwesmZqIMYgyrpBlZMR8llq8VMZKv6jE0EyJGYYO1ROzH
X-Gm-Gg: ASbGncsgSOW1aH7K4bQubTnkv5QqyTNm/uckypupMSPuTQsokQaJ436X7XI0gj63EFm
	5nMPdU1ruzb1od73MmIypz7cQUnPlFTJasBaotRzD/Na8hfqZyV7qKCpZk2lVM2iFCFDcbGv8Zu
	MpUeZNzrjgjqx+NHLL3PIG7m05CYYf69vtYvcjzU4YlnKxNDPItDiuN7sevtO5c2/+rMkGOpXjz
	stq5dTSYvWlUSpEeemyCZ3+GzV3zyR1AyBgEPTnG/czg0DpRxOuhh1N4euTh5oDe5DxqmvICcJe
	aGe2vAlzx9LGj/jKJtjR+P3w9fSOOT3LdrXYRck46Rt4ViOcxxv/2gYdZ48sKPXUgo5HSrWw4mf
	PsFqW5/8Fp+1cEijmKcDjs7aSu6qAxeDQ
X-Received: by 2002:a05:6a21:3391:b0:240:198:7790 with SMTP id adf61e73a8af0-240e619e927mr11347063637.10.1755505084215;
        Mon, 18 Aug 2025 01:18:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGi6hFRgCNHsg3moFg877y02xXaU+8ZCaqRa/xIfqEoaqdHAwhXHaMjGGnM0ajj1o6Qtjzn+Q==
X-Received: by 2002:a05:6a21:3391:b0:240:198:7790 with SMTP id adf61e73a8af0-240e619e927mr11347043637.10.1755505083762;
        Mon, 18 Aug 2025 01:18:03 -0700 (PDT)
Received: from [10.133.33.85] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76e45293ddbsm6539498b3a.49.2025.08.18.01.17.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Aug 2025 01:18:03 -0700 (PDT)
Message-ID: <de2b3a70-2e69-4d01-b7ad-38761fe18f16@oss.qualcomm.com>
Date: Mon, 18 Aug 2025 16:17:54 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/3] Initial support for Qualcomm Hamoa IOT EVK board
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Yingying Tang <quic_yintang@quicinc.com>,
        Shuai Zhang <quic_shuaz@quicinc.com>,
        Yongxing Mou <quic_yongmou@quicinc.com>
References: <20250814-hamoa_initial-v5-0-817a9c6e8d47@oss.qualcomm.com>
 <5reeryefhw7burzf2lymhg5wivaq2n4gq5hszvfp57dergvpyx@qehaf334gdrn>
 <7e5d39e0-115e-40be-b44f-0195a4827a0c@oss.qualcomm.com>
 <63ecde5c-8234-4630-97e8-5806b9ff3eea@kernel.org>
 <a56b3e85-0d42-4945-8b6b-dcff20c7b104@oss.qualcomm.com>
 <nruypjmek7f76m5nbv6vs63koscrwcqknswfm67rkcjtqxpwhe@3ijzkbbaxj2p>
Content-Language: en-US
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
In-Reply-To: <nruypjmek7f76m5nbv6vs63koscrwcqknswfm67rkcjtqxpwhe@3ijzkbbaxj2p>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: 4aAMd4umhXMbTYELiRdF_WXjBysP1wz8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE2MDA0NSBTYWx0ZWRfX0pSU/4/hyXKV
 3+dT7oo77+YaF4f7FVl380drnNMd5hWTCjhYPEhKdUFkop80Dq/cNk9f101abI9mji1QUy3jDXD
 gTVdSo+1PYikxygd3aGgbw7pb3Z0DMdWUfUE2Ys9iYTfJFouhsA+qe88Nq+6uHoK7S68H8hW7ZO
 1MpTxFTwz8/1tyxsyTGDA3Msdu4S7ehdFZakjRa/mK4jqXBq/Pec1LiKkz1yY3pEs3UgF588EnO
 vGyFmCw59Z97NzXkkMTS5LZ+uXzRXoH8k75J8SbMNxp6lCNa8nApIajSRpQigCmUUwyy+6Ds/pV
 7qahz8SALwmDF/5mb/xoxZBY3/JkwUh4daVkcuH08c3O3wwXm8+tFgFiztc4/8WIULCEiqtRXVu
 /vTGcbzA
X-Authority-Analysis: v=2.4 cv=IIMCChvG c=1 sm=1 tr=0 ts=68a2e1bd cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=FDvvkfF-Sd8HMvbO3OkA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-GUID: 4aAMd4umhXMbTYELiRdF_WXjBysP1wz8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-18_03,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 clxscore=1015 impostorscore=0 phishscore=0
 adultscore=0 malwarescore=0 bulkscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508160045



On 2025-08-14 19:27, Dmitry Baryshkov wrote:
> On Thu, Aug 14, 2025 at 05:28:01PM +0800, Yijie Yang wrote:
>>
>>
>> On 2025-08-14 17:05, Krzysztof Kozlowski wrote:
>>> On 14/08/2025 10:54, Yijie Yang wrote:
>>>>
>>>>
>>>> On 2025-08-14 16:24, Dmitry Baryshkov wrote:
>>>>> On Thu, Aug 14, 2025 at 03:27:27PM +0800, Yijie Yang wrote:
>>>>>> Introduce the device tree, DT bindings, and driver modifications required
>>>>>> to bring up the HAMOA-IOT-EVK evaluation board—based on the X1E80100 SoC—to
>>>>>> a UART shell.
>>>>>> This patch set focuses on two key hardware components: the HAMOA-IOT-SOM
>>>>>> and the HAMOA-IOT-EVK carrier board.
>>>>>> The HAMOA-IOT-SOM is a compact System on Module that integrates the SoC,
>>>>>> GPIOs, and PMICs. It is designed to be modular and can be paired with
>>>>>> various carrier boards to support different use cases.
>>>>>> The HAMOA-IOT-EVK is one such carrier board, designed for IoT scenarios.
>>>>>> It provides essential peripherals such as UART, on-board PMICs, and
>>>>>> USB-related components.
>>>>>> Together, these components form a flexible and scalable platform, and this
>>>>>> patch set enables their initial bring-up through proper device tree
>>>>>> configuration and driver support.
>>>>>>
>>>>>> Qualcomm SoCs often have multiple product variants, each identified by a
>>>>>> different SoC ID. For instance, the x1e80100 SoC has closely related
>>>>>> variants such as x1e78100 and x1e001de. This diversity in SoC identifiers
>>>>>> can lead to confusion and unnecessary maintenance complexity in the device
>>>>>> tree and related subsystems.
>>>>>> To address this, code names offer a more consistent and project-agnostic
>>>>>> way to represent SoC families. They tend to remain stable across
>>>>>> development efforts.
>>>>>> This patch series introduces "hamoa" as the codename for the x1e80100 SoC.
>>>>>> Going forward, all x1e80100-related variants—including x1e81000 and others
>>>>>> in the same family—will be represented under the "hamoa" designation in the
>>>>>> device tree.
>>>>>> This improves readability, streamlines future maintenance, and aligns with
>>>>>> common naming practices across Qualcomm-based platforms.
>>>>>>
>>>>>> Features added and enabled:
>>>>>> - UART
>>>>>> - On-board regulators
>>>>>> - Regulators on the SOM
>>>>>> - PMIC GLINK
>>>>>> - USB0 through USB6 and their PHYs
>>>>>> - Embedded USB (eUSB) repeaters
>>>>>> - USB Type-C mux
>>>>>> - PCIe6a and its PHY
>>>>>> - PCIe4 and its PHY
>>>>>> - Reserved memory regions
>>>>>> - Pinctrl
>>>>>> - NVMe
>>>>>> - ADSP, CDSP
>>>>>> - WLAN, Bluetooth (M.2 interface)
>>>>>> - USB DisplayPort
>>>>>>
>>>>>> DTS Dependency:
>>>>>> https://lore.kernel.org/all/20250724-move-edp-endpoints-v1-3-6ca569812838@oss.qualcomm.com/
>>>>>>
>>>>>> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
>>>>>> ---
>>>>>> To: Bjorn Andersson <andersson@kernel.org>
>>>>>> To: Konrad Dybcio <konradybcio@kernel.org>
>>>>>> To: Rob Herring <robh@kernel.org>
>>>>>> To: Krzysztof Kozlowski <krzk+dt@kernel.org>
>>>>>> To: Conor Dooley <conor+dt@kernel.org>
>>>>>> Cc: linux-arm-msm@vger.kernel.org
>>>>>> Cc: devicetree@vger.kernel.org
>>>>>> Cc: linux-kernel@vger.kernel.org
>>>>>>
>>>>>> ---
>>>>>> Changes in v5:
>>>>>> - Update base commit.
>>>>>> - Drop an already merged patch:
>>>>>> https://lore.kernel.org/all/20250804-hamoa_initial-v4-2-19edbb28677b@oss.qualcomm.com/
>>>>>> - Link to v4: https://lore.kernel.org/r/20250804-hamoa_initial-v4-0-19edbb28677b@oss.qualcomm.com
>>>>>
>>>>> Please keep full changelog rather than trimming previous iterations.
>>>>
>>>> Sure, I will restore them.
>>>>
>>>>>
>>>>> Also, is there a reason why you didn't pick up audio and display chunks
>>>>> as it was requested on the corresponding reviews?
>>>>
>>>> Display-related changes have been merged into '[PATCH v5 3/3] arm64:
>>>> dts: qcom: Add base HAMOA-IOT-EVK board' and are already present there.
>>>>
>>>> Audio support is still under debugging due to unresolved issues, and
>>>> it's unclear when it will be ready. Would it be acceptable to proceed
>>>> without it for now?
>>> Audio was sent to the lists, so this is confusing. What was the point of
>>> that posting? It clearly said:
>>>
>>> "Basic test is good in Hamoa-IOT-EVK board."
>>
>> Additional issues with audio were discovered during further testing, and
>> the current audio series on the list is not suitable to be merged into
>> this series at this time.
> 
> What if the maintainer had picked up that series, with the issues?
> If you uncover an issue, please respond to the patchset, descring that
> it should not be merged (together with the reason and the description of
> a problem).

Quill has provided an update on his series. What should be my next steps 
regarding this series?

> 
>>
>>>
>>> So was that true or not?
>>>
>>> Best regards,
>>> Krzysztof
>>
>> -- 
>> Best Regards,
>> Yijie
>>
> 

-- 
Best Regards,
Yijie


