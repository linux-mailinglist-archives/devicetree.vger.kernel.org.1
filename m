Return-Path: <devicetree+bounces-215832-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A78B52C9A
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 11:05:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2BABA1B24747
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 09:05:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91D902E0411;
	Thu, 11 Sep 2025 09:05:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Dnh/VZZT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 124AF20297C
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 09:05:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757581516; cv=none; b=GjyV3rvAca3Jn474HRhlkj25weFt35BGuQoknSmdsxT1fv2rp0yitccQEnSDB49+Pwm8QmpMGImKzldQTn7mUKjZVSENb3zidOWyXtV6UVuaq3YtsmzmsCs8hegusiE9PQSerpUM6eOsRFMNeCIg/IUase0RJF8JPQydrdTSNv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757581516; c=relaxed/simple;
	bh=PZ8cckgNLhYYSqzwCtFOQJIyga//MtRxNtnEtkwBpCc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dyD/UvoXw59Z/Q0vtGh70VINnizDH/1Sc2mNyS4MODFzexBLfnnGcVYQLxbCBp5BF0vQZFgu4xCDMPBsVG6JQX+AazEFVtyvukVOoinkYO8NOOnJQGZH40NRiLkvGwDipeHwNEZrtfLM7HoC5LrGE6K5n0fKRA8ZIdw7KtRrofE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Dnh/VZZT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58B2IgEk016119
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 09:05:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0u2naj8CCXUbRQi7woSxwORKajIczkY9v1F3cpnGx/U=; b=Dnh/VZZTQKh1Rdqu
	0X5UxNGHllPcqNRjwml6dRoIhoqJUx4V7ToAh58BeaP4YS5OtQgPI8jenX+2mrnM
	RNYfk8k7MtX+gVYy8jF01jdzyrcyKhnp7RKQnjJ+hEeqyum8ZPPrYfTCtKHQqDuo
	+Ptncou5HZngXTrUHWzDjDpfBYoHUB1kiH/Nv0vmDRmUFj0f4cexYO0RrLLb7/yZ
	/CmgX8c1OUwk2rPjaXXiSubUCTXUzaQbgt/gGdRtQ+K85lyIY+4CUwgrie5t2jxp
	OlYwc+nH50huLhsHJGEEgAf4WV5z2cVFqUKFsN0cq/JLyusTC2RQwOOSJdTGpUWe
	Vrg6wg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 491t383fav-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 09:05:14 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b47b4d296eso13070121cf.1
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 02:05:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757581505; x=1758186305;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0u2naj8CCXUbRQi7woSxwORKajIczkY9v1F3cpnGx/U=;
        b=N4FvoURGOJd2NrAXAnwYZWNslV/5owFl7CjSSemslTJhSE3UYhu8BX/X9O1ixC7qgt
         YYLq9xPcwKhPDtRQn78z5KR7CE2NzLb10uB8xYAF7a7e/Lg3A4XCYTm3HcrwmVH4Vs3L
         G4Py6rZHVs6aHpEQrEm26wXidIuL4egxoXbmhg+HjvMdfU7cn+XT9bPdtNS4nRZafHa3
         iSNfT36x3v46qCn4ZyS7nZ7whjvGBn+G4OmAhUBO4dnTtG1Ij9bhPVTDtkt/0kyybAP2
         bNuQNCmYS9v+Xia/AxpSV3wKzxa0AgXXD4UXmDhZCerrB8CfQBfCAsnJYfhdXoCFypBk
         qdbA==
X-Forwarded-Encrypted: i=1; AJvYcCUH6OkdM6dDZi1naC99pWHVy065BvW5x8UDM8xZfXEEraiEq69pXrqgxTBIcxhWMZV23dA+hEWE0SPz@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2rzg9SG5mKvL4ZgzaeUKApJiVTEKbQvE9PxndhusulpJ1yoTw
	lvmkse63RPkv1bG6KJEzpke5mIdR9ZsUVPtMEtPtVsE3sZr016ACQJUOz3vu+g4TU6gZl0t4GsJ
	CM/aySBwD6l0oQfRQ3K0LGqFboyZ8Kc3Ku3mol9MPrc9jIyFwhV+8c872YQWBej5wfuaj99tn
X-Gm-Gg: ASbGncsK39iHEma5buFzG2mvzgL3LUfDSTZcIHwMGlSUBQWPSYUmKnbAeJCpi0Undn3
	EPeZtEvdWHMj8XVIJ0dmPT1PSq/XJTR1oaWGXLQhTlMPAJejoJnC5AQ65J/D4WJRZkNYtPP3EWs
	b7eFE5WVP6nI8OuAIC5U9sMJZyR7GR0pV5bHDSTcQZTYvQAbk8WLQpDemsJuH04DN4co7s39jgn
	2v79tOByumlw8nGHiAHXDP8toGdFm4v7eRXbeF2djEhSCabI0lxwdsnpQTRlqV8GFusgjMrvJyP
	RsYEwVE38HSATxNMgfwUjb+p3Loe70awXU73AZ/OXBYU2Jevd4upLtIoLjiA6s2t+s4=
X-Received: by 2002:a05:622a:4a8d:b0:4b4:92b7:d4ad with SMTP id d75a77b69052e-4b5f843bfb0mr226558271cf.45.1757581505165;
        Thu, 11 Sep 2025 02:05:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHTnS3BYav3uc5wJMafVF0tQOozNnyOpz5mhr6CAmgA4gxSAct3x4qONCiVS/C4iKC/Cu/vQA==
X-Received: by 2002:a05:622a:4a8d:b0:4b4:92b7:d4ad with SMTP id d75a77b69052e-4b5f843bfb0mr226557401cf.45.1757581504418;
        Thu, 11 Sep 2025 02:05:04 -0700 (PDT)
Received: from [192.168.68.120] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3e7607cd329sm1640115f8f.31.2025.09.11.02.05.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Sep 2025 02:05:03 -0700 (PDT)
Message-ID: <3e0de4f3-2815-4912-a528-16147803a7c8@oss.qualcomm.com>
Date: Thu, 11 Sep 2025 10:05:02 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/7] soundwire: qcom: add support for v3.1.0
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        Alexey Klimov <alexey.klimov@linaro.org>, vkoul@kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, srini@kernel.org,
        yung-chuan.liao@linux.intel.com, pierre-louis.bossart@linux.dev,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-sound@vger.kernel.org
References: <20250904105616.39178-1-srinivas.kandagatla@oss.qualcomm.com>
 <DCPK67SQ5DEI.2AFDVRKZSEWTS@linaro.org>
 <7b7db1d2-5f53-4b08-920d-67a57d975313@oss.qualcomm.com>
 <cbb57a2d-c64e-448b-87dd-688458f87900@kernel.org>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <cbb57a2d-c64e-448b-87dd-688458f87900@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 1_58ljudorxIXTQR2SBfa7rwZLFt0U6B
X-Proofpoint-GUID: 1_58ljudorxIXTQR2SBfa7rwZLFt0U6B
X-Authority-Analysis: v=2.4 cv=NdLm13D4 c=1 sm=1 tr=0 ts=68c290ca cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=vF7HM7XGAAAA:8 a=EUspDBNiAAAA:8
 a=vORUVIV6M-B3JFilGG8A:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=bNn2QJc11pDkoTYzAKk6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA4MDA2NiBTYWx0ZWRfX/eBm5GG8SyZy
 annEkFS9r7+jtkvhtQ6oF7grG+5L3AZD68C+YY+LB6JDnrOdHj0V8mfmPMlylCY0K5qvTD7nKX3
 wWmrtJQz6eNt9V/S5q/zOcoMKpuw4Qyrc9Q8BHfhx6OYvdvJEBBF+PSmUsBDCtnNmmi0fYDZoh0
 d/XUA2EK5XZzB+IWUCb5keXFI30MXzR3Cn/ba0SFXgngbwQWjBOKC92lG1LFIdALArMpxqM96qX
 v2FbzN1OWBUGvZxs6gOQMPX0y4U6JRjvp0L0MA+ecHM+ZeB74N/+7IZHxkOtLzasZ6ILw2gbzZC
 1bClf2ihLHXWvuYYZSglSAZin0ZX3of57Ree6BaLBwUuMQL95WDyRLiColjxANjKuruG8yDvhX2
 ch2/QTH7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-10_04,2025-09-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 adultscore=0 suspectscore=0 phishscore=0
 clxscore=1015 impostorscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509080066



On 9/11/25 7:31 AM, Krzysztof Kozlowski wrote:
> On 11/09/2025 07:49, Srinivas Kandagatla wrote:
>>
>>
>> On 9/11/25 1:52 AM, Alexey Klimov wrote:
>>> On Thu Sep 4, 2025 at 11:56 AM BST, Srinivas Kandagatla wrote:
>>>> This patch series adds support for Qualcomm Soundwire Controller
>>>> version v3.1.0.
>>>> As part for adding this support, a new macro of_property_read_u8_index()
>>>> is added so that we can remove the qcom,din-ports and qcom,dout-ports.
>>>> As v3.1.0 supports more than 17 soundwire ports. Also due to change in
>>>> the register offsets, new entries are added to the variant data.
>>>>
>>>> Tested this patchset on X14s and Glymur reference platform.
>>>
>>> Well, I don't have any Glymur devices and no idea what is
>>> x14s (I guess some laptop), but I picked the series locally to test
>>> on sm8550, it seems there are some generic changes, and
>>> qcom-soundwire probe failed:
>>>
>>>  remoteproc remoteproc1: powering up adsp
>>>  remoteproc remoteproc1: Booting fw image qcom/sm8550/adsp.mbn, size 8364
>>>  remoteproc remoteproc1: remote processor adsp is now up
>>>  qcom,fastrpc 6800000.remoteproc:glink-edge.fastrpcglink-apps-dsp.-1.-1: no reserved DMA memory for FASTRPC
>>>  PDR: Indication received from msm/adsp/audio_pd, state: 0x1fffffff, trans-id: 1
>>>  platform 6800000.remoteproc:glink-edge:fastrpc:compute-cb@3: Adding to iommu group 12
>>>  qcom,apr 6800000.remoteproc:glink-edge.adsp_apps.-1.-1: Adding APR/GPR dev: gprsvc:service:2:1
>>>  platform 6800000.remoteproc:glink-edge:fastrpc:compute-cb@4: Adding to iommu group 13
>>>  qcom,apr 6800000.remoteproc:glink-edge.adsp_apps.-1.-1: Adding APR/GPR dev: gprsvc:service:2:2
>>>  PDR: Indication received from msm/adsp/charger_pd, state: 0x1fffffff, trans-id: 1
>>>  platform 6800000.remoteproc:glink-edge:fastrpc:compute-cb@5: Adding to iommu group 14
>>>  platform 6800000.remoteproc:glink-edge:fastrpc:compute-cb@6: Adding to iommu group 15
>>>  platform 6800000.remoteproc:glink-edge:fastrpc:compute-cb@7: Adding to iommu group 16
>>>  qcom-apm gprsvc:service:2:1: CMD timeout for [1001021] opcode
>>>  platform 6800000.remoteproc:glink-edge:gpr:service@1:dais: Adding to iommu group 17
>>>  va_macro 6d44000.codec: qcom,dmic-sample-rate dt entry missing
>>>  qcom-soundwire 6d30000.soundwire: probe with driver qcom-soundwire failed with error -75
>>>  sched: DL replenish lagged too much
>>>  platform sound: deferred probe pending: snd-sc8280xp: WCD Playback: codec dai not found
>>>
>>> Are there any dependencies I am missing?
>>
>> Looks like there is a bug in sm8550 dts, its adding incorrect number of
>> ports, which is why we are seeing this error.
> 
> 
> Yes, the DTS has incorrect value for number of ports. Few others have as
> well. It's known (for me :) ), but I never bothered to fix it because it
> is not that trivial - need also port config for missing node.

Thanks for confirming, This will need fixing at some point in time,
however for now Am happy to add some flexibility to the driver so that
it does not break things that were working. This will however result in
a new kernel message about miss match in dt, which should bring some
attention for fixing.

I have shared small patch in this thread for try.

https://lore-kernel.gnuweeb.org/linux-devicetree/b7a637d1-8868-40f3-8f82-8f5ab0684d52@oss.qualcomm.com/


--srini

> 
> Best regards,
> Krzysztof


