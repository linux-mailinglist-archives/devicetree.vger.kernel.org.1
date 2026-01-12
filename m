Return-Path: <devicetree+bounces-253864-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 610A8D12160
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 11:57:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 850F13041AE2
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 10:54:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62CBE34F26F;
	Mon, 12 Jan 2026 10:54:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LbY5DNcG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="J0CJtSLQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2E9634EEFC
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 10:54:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768215286; cv=none; b=FozhbUOP2QFw17m5Zfp9SJMgiYmNtdGxmuca72PvwPSjFJxzZI+7DrBb6YkFd3q3PjUA1ptbP+Fb5JAUVJkaXCJ2rUvyLehulnnmr37sJUAN2XH+ZrLJG75Z/+17Ttu1+WEPVhP7FrT8EL26Foa7efaCxPdatzWoDsSqLo36d2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768215286; c=relaxed/simple;
	bh=COopUAGXSaAoAyrLxSL8ntUC1NukjUyR2WkmMrC8pYo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=u7c0pmlxoqQwJxBLsZ/1mX7qj7KXTLSB0L4OIQ33yDefZt87liDT2FxV6M1qnmSq84KA+vV+7K3Ar4u/p0tPkJqrVnTZpbjnhXlYNCivMlA+ai/OtBYv1SmNCN2U9EWwxIahg7jJVCSVbX1mr8Txi3++21yRrAqeVkW9kaBOsag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LbY5DNcG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=J0CJtSLQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60CA6ppI1381374
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 10:54:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	b0uprtgifMy5b5m2H1PUKfX93suAbMgiy/DGdB68Qp4=; b=LbY5DNcG119BEMlF
	N0zl0yr//NX/Th1GZ9FgzqtBsn4Z3/qvDKdNH3xSrYo3rGoqmrodpe3vNArOVhzx
	uUR1533tKHHXjSRhQQ/UHH7V4neorzpIwqen0lYzxlS5zFoDap9rBIZRPiUr04GD
	LD/B7VFgNYJ18MF8YWWAXP4VdHl4U/L3ufKqGcBG4tXL2CObGYf6q8w8BPkh5HnW
	aLwEyIrtoQ38SXpmhjSvrO7N4X263vrkwggjcMhot/v1rrQHJSa3TEyZnpCIvPnQ
	fQiL9q9NAw0jwMIt88d/4dFfZ/4iRz/vkNDuEEprgI0h5PoofIzgZPN0iEvvoM3Z
	jDUH0Q==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bmxwv03w7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 10:54:41 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4f1e17aa706so32632641cf.2
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 02:54:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768215280; x=1768820080; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=b0uprtgifMy5b5m2H1PUKfX93suAbMgiy/DGdB68Qp4=;
        b=J0CJtSLQopmDwmvhZCW4zf3jl6V6i8nyT7oua4hq8d3bQT2YSm7DZTqo4TcJBZAmdP
         DjQAdhhn/gEsTWVyiYEKPaq262g7kB1SCBdt1EiOJqj/0sUqSxufdG81FJ23mviTfOpI
         BXYu6MyzW7AprUXe00L7ivcGZR/zYVKWh9Csr030UxcHBl/3XsI4mZILkZVuTttQmbd/
         EsitCRIwEykWX9+w5A6wwu9TSEO2DTEKalIgNCsVrYbsyUBWfGWr/rQgZzfGAIG5lVR1
         CvRwriLkPFwX0xF2yOBkcfJM18nJ01J1JDItF1pIHzxi6P1KTUFac6fGmuc0JRSnScVZ
         RJXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768215280; x=1768820080;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b0uprtgifMy5b5m2H1PUKfX93suAbMgiy/DGdB68Qp4=;
        b=izLggSRa5zhrfG9JKo2iSMNtjHZezRj6uAfbCfFYg2q1E92EIjq/LkNL4PLInBjAKT
         /ijWRJCO2BpdFDJ5G+MwWAhgV7xSl4YzgScd70p9RbIUb+5erdmCd3sE+3n0OsUqcRFA
         bDs2OABdjoyA0xAJIfL03GWHyFDS7XArcZletj+sK9UjEREDC9t+rrkVCpzBGzZZqkBG
         M/mKVnpLDFtOuylFeNcFfXu+p6xhcKenz4bG3m+Nvhx+iNhLwljgysLrUvE085ehk3dJ
         PSfKt+HBYjMyhOBSPVgyKnfUKLLfC70L8xXh1vxxoXeSWL5K0UtHEud6pocgkcCCGhbb
         ivig==
X-Forwarded-Encrypted: i=1; AJvYcCWsdT3RQdCgKWiyZt9bv8pRYip8t5OWwY8FQyGoZtV7Y3PTXqJf+dOcsGPFZ4aKxZPaU5eq6TAg8MRi@vger.kernel.org
X-Gm-Message-State: AOJu0YxGwCWM6nV19SpU9e88vgR44yK1LkT49D3eQewhOQS12OUQpXti
	BtbsR4hPYdCxyrOV/n0LEewK1uO8ZLItyKqOfCp19yt5tzMIHlTFcS6nV/hMh337Rx9oS57RIwB
	nv9bojTdsuuDDLj9bFWw2Ld5qob2fjxzlikv1Qym7zj1fCaA5Ion+IKgqSj5I4IoP
X-Gm-Gg: AY/fxX68TYzvvUfE39sz6dxgrLPRDIZC1X8jAhN6nKO0DybAO4UZEjng843+HAWs7sP
	kD1fdj8NKE7yrDdvGy6zhtPByYnqUllaB9pXGamfAwX65KYqBhGoYOhpXmWarW2NLnbMYXCpX7x
	rIWHjw4HQqZNmIxu4UNOdiS2H4vslHwJgbNPGh8UIYZEUrIbDeY2/VTcex+IBUiOPdKiUHABs5V
	cYC6JTNn52zdOQAH9aTZPX3avunlR3gKGDSm1pLOolib0pVd83MPTcRXfZMq1TiUrrGsOLjqVMT
	/tMRP8/BIw0th8NBhYhhtr4WxB2ZpjPXE1y9732p6WqWgmcVLdu//w2yooa7bOic7hAvN0+7kEN
	RqIr+p00jIxTTCQnRMfETqmCSz5dTmW++xi2wIHMTyiuTbFs/r9WQvsBB18/kvZsC1IM=
X-Received: by 2002:a05:622a:8a:b0:4f1:840a:c90f with SMTP id d75a77b69052e-4ffb47e3b0dmr199932021cf.2.1768215280578;
        Mon, 12 Jan 2026 02:54:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG2FwZIO3oVO26TRUjgJxn7OhSt90ZEbczdbB9so0GVa+Ly2JZVTPkr2ynLZyLjkKS0Mnx6bg==
X-Received: by 2002:a05:622a:8a:b0:4f1:840a:c90f with SMTP id d75a77b69052e-4ffb47e3b0dmr199931891cf.2.1768215280152;
        Mon, 12 Jan 2026 02:54:40 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507bf6648fsm17277585a12.28.2026.01.12.02.54.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jan 2026 02:54:39 -0800 (PST)
Message-ID: <36d3ead4-69c3-4bb5-b29f-25e9b7182618@oss.qualcomm.com>
Date: Mon, 12 Jan 2026 11:54:37 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: Add base PURWA-IOT-EVK board
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Yijie Yang <yijie.yang@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        krzysztof.kozlowski@oss.qualcomm.com
References: <20260109-purwa-v2-0-f39ee10684cb@oss.qualcomm.com>
 <20260109080000.606603-4-yijie.yang@oss.qualcomm.com>
 <6e8e6583-033f-439e-bd92-b24fe432fb96@oss.qualcomm.com>
 <3959a318-aca3-43e2-a431-4a9ae40f911f@oss.qualcomm.com>
 <ak6xsow3cobhe64y2koa4v7w5dkdc4v3zlmpokws4nxmu5c6rt@kdgm2oqxxvcl>
 <d5d1d6c0-87ab-42a8-9816-359a64b9112e@oss.qualcomm.com>
 <CAO9ioeUTPopTg+S-6uASXa=L4DQaVVEJ_CYRGzKbJR3MkcZMFQ@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CAO9ioeUTPopTg+S-6uASXa=L4DQaVVEJ_CYRGzKbJR3MkcZMFQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: Z8dDy0QsvkjefHIW0f5Ba6TjfLVkjYo2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEyMDA4NiBTYWx0ZWRfX2/CF8Wsv6JI7
 54TpGKhMed54tPostxK2oAHCsIbIOyDxFjtNsGKJdUuVA8UoPGq5SoTyTMpEqtFriracQeFMa1a
 R8Y93Oqu+XtBXdSh4IzoCf7RAq1KMpRk2h1gItf3FrgmjG787cSStnIUrnSyyUUqaU/eiP4fYmG
 mk4IVm0ZSEhWxwgrRxs15b/hn+LChP3AP/TxYItawkPGLXW7qWbph+8blvSqInn+1r+/PLc68ez
 p3SMm+HjIFXHa5I6AIJJKCQ+Eoh7kgbipIzvNGKdGYw5KEnnNLZmpDOUx58jlOhThxSxeYRW0wn
 BObX8Q1KMjy8C7uLeHgDev54aAn3rXyYnlOu7PU5dTNyz0rD++1OqMTKQAgyFfLFjf88WU8MW94
 X3T7M6vcMS375BFvuQNRX5zi8MQmPy/bdzyabGNOIfX542MkOcLxaP4mVfs6Jimm2FtP1xQQDq6
 FFy884jZVf1J0aatPzw==
X-Proofpoint-ORIG-GUID: Z8dDy0QsvkjefHIW0f5Ba6TjfLVkjYo2
X-Authority-Analysis: v=2.4 cv=C/XkCAP+ c=1 sm=1 tr=0 ts=6964d2f1 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=OTrRQFjmG71tW0adYG4A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-12_03,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 spamscore=0 suspectscore=0 bulkscore=0
 adultscore=0 lowpriorityscore=0 priorityscore=1501 phishscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601120086

On 1/12/26 7:01 AM, Dmitry Baryshkov wrote:
> On Mon, 12 Jan 2026 at 07:51, Yijie Yang <yijie.yang@oss.qualcomm.com> wrote:
>>
>>
>>
>> On 1/12/2026 1:00 PM, Dmitry Baryshkov wrote:
>>> On Mon, Jan 12, 2026 at 11:12:09AM +0800, Yijie Yang wrote:
>>>>
>>>>
>>>> On 1/9/2026 7:29 PM, Konrad Dybcio wrote:
>>>>> On 1/9/26 8:59 AM, YijieYang wrote:
>>>>>> From: Yijie Yang <yijie.yang@oss.qualcomm.com>
>>>>>>
>>>>>> The PURWA-IOT-EVK is an evaluation platform for IoT products, composed of
>>>>>> the Purwa IoT SoM and a carrier board. Together, they form a complete
>>>>>> embedded system capable of booting to UART.
>>>>>
>>>>> [...]
>>>>>
>>>>>> -  backlight: backlight {
>>>>>> -          compatible = "pwm-backlight";
>>>>>> -          pwms = <&pmk8550_pwm 0 5000000>;
>>>>>> -          enable-gpios = <&pmc8380_3_gpios 4 GPIO_ACTIVE_HIGH>;
>>>>>> -          power-supply = <&vreg_edp_bl>;
>>>>>> -
>>>>>> -          pinctrl-0 = <&edp_bl_en>, <&edp_bl_pwm>;
>>>>>> -          pinctrl-names = "default";
>>>>>> -  };
>>>>>
>>>>> Is the backlight infra different on the Purwa IoT EVK?
>>>>
>>>> As you can see, this Purwa file was copied from the latest
>>>> hamoa-iot-evk.dts. However, not all nodes have been verified on Purwa.
>>>> Therefore, I need to retain only the functions that work correctly and keep
>>>> them aligned with the nodes from my initial version. The deleted nodes will
>>>> be updated later by the respective authors from different technical areas.
>>>
>>> Please, only delete nodes which are not present on the Purwa IoT EVK.
>>
>> This isn’t a deletion—it’s just not ready yet. Why do we need to include
>> all the nodes like a mature Hamoa platform in the initial push?
> 
> Purwa seems to be mature enough. What exactly can't be enabled at this moment?

Right, I'm in the same camp. Since you already have the board at your
disposal (because I trust you tested this patchset on hardware), why
not spend the extra 5-10 minutes verifying that e.g. the display lights
up and you can control its brightness?

Konrad

