Return-Path: <devicetree+bounces-215749-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C91AB52861
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 07:56:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 054F4460482
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 05:56:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C70F22517AC;
	Thu, 11 Sep 2025 05:56:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PwHnlDp/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3C923C50F
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 05:56:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757570206; cv=none; b=Zsu4iKq19FU2e+y+BtOnTAqt0vuNxPlH8blpAxR40Z3qxPuaFKu00Nd5KZ9K3NEqjkkX/EHkFgSpzYeJVtc8WCNWpPsQ7oWpuzjrwzy6k5beY+BlBmcIkMTZ4s1stblWNeBCrA8jRdV5xrM7lb6oMWUQ1bw6mpqXxMgsE514FKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757570206; c=relaxed/simple;
	bh=DmshXf/5scl3Pm/UJbDqoYcBADlVEZ5RAfxYLM+kk4o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MlmqVtHwzom7U6fEMCj/5gEEOwlI2jCz4y5yRbWHvGGPkaRB/kFi29koIO1cL6zZ+wUSz4z2LFQebp0gUfRJnKBpUR3Ztgn2w3C5f8d7y8Cs7SRkewBlhiorQds5bb4sGGis15GZeahOJADKOu/AKfiTU6ubnNsCuckEN6UcJHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PwHnlDp/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58B2IVjo008178
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 05:56:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Qrl5C0hT9w9e5dT2xeERuIRlc0KOrzACJwYdylUap00=; b=PwHnlDp/ETMk3YYU
	poO8JWPb67K5IavZXTuLwG9jh2l2IjAmMTrG5cBBCrhfbE761CfkGE3EV+Uyt+nC
	SdUk9JR34iezNr3YpVyOxIueASf5R86tfD4tP80oCgsUIND6KsfrhbY0QabWEX+L
	g/XNkVK03pIAODkXX024d/TOZgGEENfCrahBIT031EEfHKqVv2BP2CEZ+tnPVGfD
	L363AJllhbvILVG8kC36T4rkECu8zweElQPJJYA1x6xlDtzZDZ17wDcdQE3+moyn
	KkxrbviquK5hCJpP0szRw2xeNd2hWHHSYblshcVyaSfWQjn1rO1Zr9ZIjK4UCakv
	XBtUmA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490aapppqw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 05:56:43 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-72023d1be83so12914496d6.3
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 22:56:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757570203; x=1758175003;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Qrl5C0hT9w9e5dT2xeERuIRlc0KOrzACJwYdylUap00=;
        b=ALQlZ+/aEBKaQIy7Y+F+soOJuklwwdAXKe3jooHp8eWxjTnEB9qm8TFyIwIQHrXC7g
         U0Kw90Lc3dbk8iT1PKEjfOv5d1cA4f29Pt6W0fzD0+y2Si5Yw2fK5k4kYWot5QuBrRVJ
         e76/rumTbBqg8CkM6LgQYGlh6E7EX8+KpplkhLXfycnUEdWlJFCabY7MxxvajiBImKv1
         O9aj61eSqtTOqeeKBHmN4rCoVGzz94f9cI1E5NgjLm4292W5doPqf0T9v4LEQ94DZUZA
         nrRvTm5YXZP3J3D7QX2pfEK0ykP2BR129jCqwpyATe4s8k2MkOsCQBqMRCRTVJJ3d6i0
         B7ag==
X-Forwarded-Encrypted: i=1; AJvYcCWtnToziv6TmnYhqCmyNtsW2WfAMEkTAHP+dX04qJiGPEjKySt8XYPoIbeq8WFi8CoUMlI8M6kJ2Cwb@vger.kernel.org
X-Gm-Message-State: AOJu0YzWv88u8Y58fdKEDYlbYlROdYVAZae55IVOUtVnhy0ISHtIgNEH
	ryWl5BsQKf7SuDvBaoP22+hTr95DP8t6f0vOjwpwr5i8Nlh7Z0TBcEv1Gx2nD6O2kcrGLKmIONY
	ATsBuYaxGZJ07FpWR0U10OnzEQkK2Ux2cyRZ/i1dpeDeonp99r+lCc57XoYFj9Sp0
X-Gm-Gg: ASbGncscp6pA+H+32oM5DEB/Ypqsxqg1ir8nK3dLxWymhr0Sz9fronoiwMg7JcZHNqS
	BPr27ansWt5UHtmDsxSiN9NT0FIwXJ+PZZhbeuUsEI6Oin1sgDYx69/qvaDRM43ADa6kmFnB8lT
	W6oHnupnrdhxdFAKEOCngKqnhlJRX2E/FT7T6I3I4qfj/XHzd4AF5Xr8qq2mqQ+8+PevjbXGnov
	YC43WDHJ6bhCOvm80xcBcl3TEyGgZIxPnP7dNRhyDuwIFJGr+3q/CHlEH/4c3/PGKxKM7Q+JBMe
	TzwMsmBK430M//HIaPYxe0F1ekUgLry9sSkDDvjCMUG4QCXus2CM3l9Dv/sN0KbHp0g=
X-Received: by 2002:a05:6214:224c:b0:728:a449:2187 with SMTP id 6a1803df08f44-7394587e1d2mr211055256d6.62.1757570203144;
        Wed, 10 Sep 2025 22:56:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEctnZbvL6Nob+WnC7gYxO6xEq3FJkrxhfSF7sRsmUMyUoMSDUtaNN2Zbm0L9GTtQcYr+zoig==
X-Received: by 2002:a05:6214:224c:b0:728:a449:2187 with SMTP id 6a1803df08f44-7394587e1d2mr211055146d6.62.1757570202741;
        Wed, 10 Sep 2025 22:56:42 -0700 (PDT)
Received: from [192.168.68.120] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-45e03718c64sm10121535e9.3.2025.09.10.22.56.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Sep 2025 22:56:42 -0700 (PDT)
Message-ID: <947514af-5039-4ed7-9d24-893e8e6a436f@oss.qualcomm.com>
Date: Thu, 11 Sep 2025 06:56:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/7] soundwire: qcom: add support for v3.1.0
To: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        Alexey Klimov <alexey.klimov@linaro.org>, vkoul@kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, srini@kernel.org,
        yung-chuan.liao@linux.intel.com, pierre-louis.bossart@linux.dev,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-sound@vger.kernel.org
References: <20250904105616.39178-1-srinivas.kandagatla@oss.qualcomm.com>
 <DCPK67SQ5DEI.2AFDVRKZSEWTS@linaro.org>
 <7b7db1d2-5f53-4b08-920d-67a57d975313@oss.qualcomm.com>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <7b7db1d2-5f53-4b08-920d-67a57d975313@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=eMETjGp1 c=1 sm=1 tr=0 ts=68c2649c cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=1gS6Q4nU2R3-upBo_fUA:9
 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: AipKc6j_ziGyn0YeiYdCtVU-Z1jrCx4c
X-Proofpoint-ORIG-GUID: AipKc6j_ziGyn0YeiYdCtVU-Z1jrCx4c
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAwMCBTYWx0ZWRfX+hm1KQsoklWk
 SLWIy4y4iTsBzkrnUDQJX612MucS1bZQoxGAQWLBVEdS8v6sJwlEYt+34F33pYCrEJ+zKi8hMoT
 06eS4skJTtyK26dqCAjeuJNZo54oq5RO05U2nUrIQTVbXGK/A1ZLgJQmCtgxvalgZ/c6eAfX3FA
 ZVGb6fs0uo4Enx3XWkal5+yzmxCsl7BmoSiF4sErQAY8fy0vxHBCZQvxVqDVIsLXEvaBodZiQJU
 gBFkr7ieWCYOmP61x92fW3fL4UgUkcPvonfP2KmD3UDAblq8n35y+HG+DVgH0g+ozATzbzZBQvH
 63t0Mvbyye7SKUpNDL92pO5g5GGrhmFsM7PXHy/g8QOTiQ501we6KOVhneQD5Z9No9hRWwZ1w2o
 xiBGVvE+
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-10_04,2025-09-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 malwarescore=0 clxscore=1015 adultscore=0
 bulkscore=0 phishscore=0 spamscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509060000



On 9/11/25 6:49 AM, Srinivas Kandagatla wrote:
> 
> 
> On 9/11/25 1:52 AM, Alexey Klimov wrote:
>> On Thu Sep 4, 2025 at 11:56 AM BST, Srinivas Kandagatla wrote:
>>> This patch series adds support for Qualcomm Soundwire Controller
>>> version v3.1.0.
>>> As part for adding this support, a new macro of_property_read_u8_index()
>>> is added so that we can remove the qcom,din-ports and qcom,dout-ports.
>>> As v3.1.0 supports more than 17 soundwire ports. Also due to change in
>>> the register offsets, new entries are added to the variant data.
>>>
>>> Tested this patchset on X14s and Glymur reference platform.
>>
>> Well, I don't have any Glymur devices and no idea what is
>> x14s (I guess some laptop), but I picked the series locally to test
>> on sm8550, it seems there are some generic changes, and
>> qcom-soundwire probe failed:
>>
>>  remoteproc remoteproc1: powering up adsp
>>  remoteproc remoteproc1: Booting fw image qcom/sm8550/adsp.mbn, size 8364
>>  remoteproc remoteproc1: remote processor adsp is now up
>>  qcom,fastrpc 6800000.remoteproc:glink-edge.fastrpcglink-apps-dsp.-1.-1: no reserved DMA memory for FASTRPC
>>  PDR: Indication received from msm/adsp/audio_pd, state: 0x1fffffff, trans-id: 1
>>  platform 6800000.remoteproc:glink-edge:fastrpc:compute-cb@3: Adding to iommu group 12
>>  qcom,apr 6800000.remoteproc:glink-edge.adsp_apps.-1.-1: Adding APR/GPR dev: gprsvc:service:2:1
>>  platform 6800000.remoteproc:glink-edge:fastrpc:compute-cb@4: Adding to iommu group 13
>>  qcom,apr 6800000.remoteproc:glink-edge.adsp_apps.-1.-1: Adding APR/GPR dev: gprsvc:service:2:2
>>  PDR: Indication received from msm/adsp/charger_pd, state: 0x1fffffff, trans-id: 1
>>  platform 6800000.remoteproc:glink-edge:fastrpc:compute-cb@5: Adding to iommu group 14
>>  platform 6800000.remoteproc:glink-edge:fastrpc:compute-cb@6: Adding to iommu group 15
>>  platform 6800000.remoteproc:glink-edge:fastrpc:compute-cb@7: Adding to iommu group 16
>>  qcom-apm gprsvc:service:2:1: CMD timeout for [1001021] opcode
>>  platform 6800000.remoteproc:glink-edge:gpr:service@1:dais: Adding to iommu group 17
>>  va_macro 6d44000.codec: qcom,dmic-sample-rate dt entry missing
>>  qcom-soundwire 6d30000.soundwire: probe with driver qcom-soundwire failed with error -75
>>  sched: DL replenish lagged too much
>>  platform sound: deferred probe pending: snd-sc8280xp: WCD Playback: codec dai not found
>>
>> Are there any dependencies I am missing?
> 
> Looks like there is a bug in sm8550 dts, its adding incorrect number of
> ports, which is why we are seeing this error.
> 
> Its good that alteast this series is detecting some of the bugs.
> 
Am suspecting there might be other platforms which could hit this issue.
Eventhough allowing old way is prone to errors, we could check the
existence of those properties and allow old behavior, may be with some
message or warning that incorrect ports are being setup.

--srini

> 
> --srini
>>
>> When I reverted the series the audio started to work again.
>>
>> Best regards,
>> Alexey
> 


