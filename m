Return-Path: <devicetree+bounces-171679-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 02777A9FC1D
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 23:21:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 51CBA189C141
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 21:21:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D940207A0C;
	Mon, 28 Apr 2025 21:21:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AHc9ND22"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE981EE7BE
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 21:20:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745875261; cv=none; b=K8t+InLQ/fckrMysps0D92vWKquvVqr3NJL/CDqw5DZhqy+ZcM6EaihP+1LqQdSXDMZssqEEGBXvDGhtnbmP8blPw2iWYXke1RdXX7dW9aFzsnKlYDNd1efBdNWlnXzI8kJ8/7+lWxqitKxRJ1oSfZEleVLgVHVqUywWTDrSDEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745875261; c=relaxed/simple;
	bh=Tkk5MGAPaZWvRMF34kA/9GkFmW5b1voNin/0nEzEVEc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gs4U/+c8zo7sEL6rqI/ty47mCtGXP/jkXc+g/4P1jHIxPw8Q3TMgY1sxQnQLl85/zPD44NRlOogtUUfKiQ4COlcMXxgstb3tjODLBDKy+7YmZ01iqccemlLcpZh1W1wSiRu1fi9Wkytd5yuACTcn94VYKTPFlqX9iQr+AHw/Kx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AHc9ND22; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53SGLwaq010204
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 21:20:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vxVMtQIbYi7Qcd0bfFfAWSXGBUlXHwXMWO1ADOAGDTY=; b=AHc9ND22HnKrKGMl
	/7NZMmfx3/dqU2A5YAWuHnSxJrhfJtfR/3SMcPrVSYlV+4fGmF+/cQEh2taf20jS
	OcXT/IJvkG5lXjXkOAI3+jngrs6PnnrBNSkTkkiXymqdB4ixVdztWg3gUiNlDFR3
	EC7sDuKwm0vTF10ulFE3j2dr0Its86wzrtb8fw7UpuU5TEi+Mn+rJyKxRvuxrC5M
	GgbHVq936qLfUHT+Eax9D4edpnzfUNApdfhut6t0Vno0G4aUt+zgb8FqYkwo/Xxf
	kCzdzxc4CG2cag6slLlX1ufMHUJxU1iRs6dfykwLNA6QvInSRrJTwP6VcLUlVWe4
	BN1pIg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 468pevhh8r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 21:20:58 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4767b8e990fso4780591cf.0
        for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 14:20:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745875257; x=1746480057;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vxVMtQIbYi7Qcd0bfFfAWSXGBUlXHwXMWO1ADOAGDTY=;
        b=HC6dpahBawCk+hvO4Rfh6N8M2K18E/i7DyjKcKuIiL1MYIj0EHD5L0dwDexNzCVqEC
         xvpViTScNdbj0DnI4fVFxRR5PJtdR2By6qnqR+ASB+5Z7tx4kL4CWi36iw0HFqmOoYg4
         fIBQWNOy4BZU1+d6VXjjBNal4q1Vs9wgNhjxa2UAbfb36Exhc7HfXJI9c8ESHBxRbGV6
         I4VxOGM1MyyRJ9FzT6TUu888PVIBstgFEaksBmJWlA1qlcySvhYqy8RS6DPBQYSN7Afh
         xuFOcN9XTMInQszAD7QY/dAxkfJ8EtcaH9MbExSfF22pX2VvVPIrlFCIUWt4iYf9Mi9D
         jX2A==
X-Forwarded-Encrypted: i=1; AJvYcCUQkQuCA5LDaAyNlhdNiKNSEVGDN3GbhNCVF3BwS0cMFUIwd2NeN9PcvX3zEVSOfFwnKbEqdCmRHMok@vger.kernel.org
X-Gm-Message-State: AOJu0YwXNAx3AWLSSfLgD+DhpK8ToItAGdRAMhc+4KZr27pNfH4oclze
	rRrgBOj+pG0uvLZ6D/dGDZkqAznsvHXf5Zxee5UtmlWPJifMhCujh4w2UsKD4bYaLEeLDAzgUSz
	omZBs17uUMpaPpRhtiWaRzhwaUSSExct0gYDqvf7S+6apL5FMtJwpauZm1SAl
X-Gm-Gg: ASbGncsUfikXRv1Y38/T5s0qPDHXsROZEENYF1c7Dr+Uz94l4N77IQbxcPPVrAR8cun
	Epu7kT38flsShZBzCEfxkuJzJL80ZOZ9CYnWaF9/AWdI84WvDjodMH9Nx7Ius/Bsu+C8ShHrq23
	CIYx4KnZqwcbjcGXb+p+uyT7CJAszJCOBlVSv7cDz0HnVrxXPCfCkw4o+nQo6qJydHdLCwStu+U
	s2tvIO70A76tS8kqClWMSpu/IwGHSbH7p1lLyF3e8usZsU09wv7LVYCsDYitjhABSb/lCmNM29L
	RxVvrRTTFQ+AlAHWpCRPTI9UjgijR/bhtrBin5o7G8ib0V+rd6jBbHdnCZlaq4KoDQ==
X-Received: by 2002:ac8:5e46:0:b0:476:addb:c452 with SMTP id d75a77b69052e-4801c98384emr67635771cf.6.1745875256932;
        Mon, 28 Apr 2025 14:20:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHwFlUGiKJqtoSSSMgEbasdl1dq9bofa/6X3soNz43ekcNfED3Fjt1UCrbZacjbXAHMx8UTaQ==
X-Received: by 2002:ac8:5e46:0:b0:476:addb:c452 with SMTP id d75a77b69052e-4801c98384emr67635671cf.6.1745875256586;
        Mon, 28 Apr 2025 14:20:56 -0700 (PDT)
Received: from [192.168.65.47] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f7035462c2sm6323065a12.58.2025.04.28.14.20.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Apr 2025 14:20:56 -0700 (PDT)
Message-ID: <c2b490b5-9e8d-4da0-84c2-8c68d78920ca@oss.qualcomm.com>
Date: Mon, 28 Apr 2025 23:20:53 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/6] arm64: dts: qcom: sm7225-fairphone-fp4: Enable USB
 audio offload support
To: Luca Weiss <luca.weiss@fairphone.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Felipe Balbi <balbi@kernel.org>,
        Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org
References: <20250425-fp4-usb-audio-offload-v1-0-f90f571636e4@fairphone.com>
 <20250425-fp4-usb-audio-offload-v1-6-f90f571636e4@fairphone.com>
 <5c4ed073-45fe-4938-b25b-8979d96b456d@oss.qualcomm.com>
 <D9I3OWQF8T3Y.1Q5U9E2RI5YZX@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <D9I3OWQF8T3Y.1Q5U9E2RI5YZX@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: eMlILmen8BQmXu6wVTO1cAsRr1ag2WMp
X-Authority-Analysis: v=2.4 cv=aeBhnQot c=1 sm=1 tr=0 ts=680ff13a cx=c_pps a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=ZSjAytOJdz4hxISQkR8A:9 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: eMlILmen8BQmXu6wVTO1cAsRr1ag2WMp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI4MDE3MSBTYWx0ZWRfX1JCkRHT98k06 H10aWG/Wvf9F9OOaO5gRO3p1dwpIT/TpKizv7gTNnlC6v+vBvUuwfjvmQ+/xARse5j0zYBgQGtL SvA78yHqKquS+6mBL7DTPxa7ikJt5Qk4Q0DI6k9EmtbV9h8dg/8mqz0iy535kuzelac7K1PIfwo
 u9L25WOGWTvG/NkfiyGUf+bFnGIdoMyl0GmneIgvqsGomRsuEbqtIa5OnsZTOiOGepPLW7XnDEE UOU73XHlArG5o++cAUCU3+UmYwEgYHiHZl6Upt//qxxivtYhlDKrlh0I6zTe4cuKHqKEkuGXLSq +ff+AG8otwxPDy3/1lYp3lkipU1nzdU77ZKCkz+F5WU9SvtIJV5NdrEP/9xRSYvRLUNMjwKdFCe
 UCW62Ux39dcV8dUnqUHdAZAObMgZZ/LfnS0fERGL5OKYWwlzqEH1GDof1/fQ2Ru3iP1xA5Ta
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-28_08,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 clxscore=1015
 impostorscore=0 bulkscore=0 malwarescore=0 priorityscore=1501 spamscore=0
 mlxlogscore=999 phishscore=0 suspectscore=0 lowpriorityscore=0 mlxscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504280171

On 4/28/25 9:41 AM, Luca Weiss wrote:
> On Fri Apr 25, 2025 at 11:06 PM CEST, Konrad Dybcio wrote:
>> On 4/25/25 12:44 PM, Luca Weiss wrote:
>>> Enable USB audio offloading which allows to play audio via a USB-C
>>> headset with lower power consumption and enabling some other features.
>>>
>>> This can be used like the following:
>>>
>>>   $ amixer -c0 cset name='USB_RX Audio Mixer MultiMedia1' On
>>>   $ aplay --device=plughw:0,0 test.wav
>>>
>>> Compared to regular playback to the USB sound card no interrupts should
>>> appear on the xhci-hcd interrupts during playback, instead the ADSP will
>>> be handling the playback.
>>
>> "should" isn't very optimistic - I assume this works for you? > 
> 
> Yes it does!
> 
> With 'should' I meant to describe the expected behavior from using this
> since most people are probably not familiar with how this works.

ah, ok!

Konrad

