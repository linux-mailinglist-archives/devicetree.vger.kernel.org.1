Return-Path: <devicetree+bounces-171683-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D1AA9FC69
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 23:43:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3237846783B
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 21:43:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 514D220FA90;
	Mon, 28 Apr 2025 21:43:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LtCtNG1/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0A6A20E6F3
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 21:43:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745876609; cv=none; b=bm1RpY76vySofCh4ihOZlvS/coX7m4/la72kC7X9tpuRguNGJI4Mmh5evxtuBQNWusR/R443979dSyW5RzOPyVecyY2wj2DedaGG6jx0SqhNPx9472Wtj7CiChVJTssd1NEODhWtcKmkdjdUwDXMhNd8cgvRXWzAt2TcBg+GC9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745876609; c=relaxed/simple;
	bh=YTnMjhzE/BjUN0TK1uZwvOxxyGpbZ9aQZQnvvzTr+X0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Or3fDzsoZb5X6nFpD9wpXt4Xx8Ae2Vid8//Fjg4J+Sy0xfbJv4l91HL7vqa0fUh31ZfRta1aJYTPH7bRsykPD69XEghQ7JBwShAQspN5+k//qqpyg0t9gvJsWfG/OF9dKKYK/Gz5RRhWq2lgrviVhRZc3YQEJb0CwCO8CpCTJkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LtCtNG1/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53SL35uZ027135
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 21:43:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mlNHPkDq8VtO2sN9kbS8a7K+7GptveuqapgS2ZKB1jw=; b=LtCtNG1/HwSWHBdS
	4mMMkVl+BOOdBiSvGrOBFUydhM6ktS3gC36g6q0ALV84mzpJmnXWrwAbeuuU7LCI
	kZMXysl/YuY2AVKAf5wzFM4Qva3EPIr6/Lh7ey60Yrkk86mqi9lo/EaKuJo6W+E3
	b+BM4tVFCIoU1wP/Etq41dwTrcnVsZAOosefbWpWDzOCWOfI4mLCarc6l3W+qPwc
	dFIhZ23d8e1mATwots197gql9CQ6vVN+Tz1LBcmmo+8JD2VuoJDSH+MfaK7K+dqG
	9DRTtRaf8CtI6UuN8Ph2VuanXJ+m4r9cvsnqSXrO4dGQOBisIAu3XcNVTjs4CJfL
	9EocaA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 468qjwtdrg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 21:43:20 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4767b8e990fso4814971cf.0
        for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 14:43:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745876600; x=1746481400;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mlNHPkDq8VtO2sN9kbS8a7K+7GptveuqapgS2ZKB1jw=;
        b=EO+Xbdil7+pv3DsEw786RZ9bLEjiCsG3/NyhWT2hZiBgZF8AiaBYSSy+AFKU6QWT8i
         hITGTOY26vwLXZ8WoV3Q8mjYYEv5w9uPZG2qgG/JL1f7f4/xqiPQiZfEBZlKVQe7oW3f
         N41AXGMxU5n13lBJXpGSKKAjjsboodrtmc8cjVP8q0fTSyOuPTNDSOgMJZE/266tyXXO
         cfGx5C5+X2Y4hbhMKZgEWCb8O/KdOYZj+f/lVNhJ2naLzrzVDRTHs6Nh4O2USXmN+nQO
         B1CQ4JQgTtwlBt1+08Kzz2oAcUNJuDtl34STpdVUmf7a/6+9rJnR7Ikm8cmWQ/Ep33X1
         H9aA==
X-Forwarded-Encrypted: i=1; AJvYcCWRux/llwltQiqf1gGSzeMHzgSmg01LQTG4CpH6aC1c7vSw08bkQqHz7W1RKJWn0xC8MNKP8GqQOq40@vger.kernel.org
X-Gm-Message-State: AOJu0YzGZWP0Dof5iYJzgWWJRTaaQxDmH3FzkiSqRUo1B8bAJJG+lsrG
	8t1qdzNZa5YEcB3xj5mNdZDHQWBvZzchBCcUnNxlnKEGwwbrG8QjHJd5JlD3JuSck08gvlx1ui0
	jP4r6aNusGddE9om/4+rETG5X14hdf1mENwHbnm5as/5y/m6U0fu+6rDU9GxL
X-Gm-Gg: ASbGncsQeKumKi1jbdHt8CZLWjHj/sBJxNhB7HiAiFvU5gQ0XqarY4UTnko6RauA83g
	5S13ejwJX2QoyrjAJFORKFg4Q8vJ6eo9cziv7Y6x6pLLfNTxn7xGJXqYGSFOEZcM+r9WTF11RoS
	Jc2yVaLHtB3kM0vkPuKv+kvsWdrfDezswsMJYEjl0N+asXv/kxN5MH8jLXIRs3x2d8b5ku1jwya
	MASd9xFMLetqCUI15tYujXs2S3olWGcXB7HLSV+Ka/lP42JT0lQa1wTyNVgn7/KoPXWTzVFvTvX
	oGgBirj2zPeteX2VQsLCYUrGhZZppr7EurQbvdfZU0F1NQG1szuEE+0cqFf0s4X4hA==
X-Received: by 2002:ac8:5f12:0:b0:47a:e6e1:c071 with SMTP id d75a77b69052e-4801cf53297mr89377171cf.7.1745876599666;
        Mon, 28 Apr 2025 14:43:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGB14JfdvwUEuts397Yzw1zfG/EZZ6u2NY8Lwvpyqt/0PuxJTkGDBKBH4rJkTKOaxHlOXgrcQ==
X-Received: by 2002:ac8:5f12:0:b0:47a:e6e1:c071 with SMTP id d75a77b69052e-4801cf53297mr89376901cf.7.1745876599300;
        Mon, 28 Apr 2025 14:43:19 -0700 (PDT)
Received: from [192.168.65.47] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6edae042sm677449966b.169.2025.04.28.14.43.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Apr 2025 14:43:18 -0700 (PDT)
Message-ID: <8e152cf1-24a5-4883-8c5a-887d3c4bd888@oss.qualcomm.com>
Date: Mon, 28 Apr 2025 23:43:15 +0200
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
X-Proofpoint-ORIG-GUID: i5s986klYqz1Qhd7Om1PleLtB6ojWQGb
X-Proofpoint-GUID: i5s986klYqz1Qhd7Om1PleLtB6ojWQGb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI4MDE3NCBTYWx0ZWRfX3jt6dTNZ8547 NxvQTAvpvtmcJXecsxhg7OEnVxDlT872TkjqgoGRpN4CNzRvKELUWKUzsMGnH5APy2HL3kMZ0ua qXmK7hemaoiwRWUKW/IAJk9+Rji9XpfBi0VcX7jNiwqqMe28cK1qxttV6A9fC/LLySTGwOx+oyZ
 3+ghfwloT1WmtZIwvSBKxHCsgmcciR/k63EK7pX+Mts+zW4M+9QQfb0O2Aox/lU/2WBZ+RdXs7A LEsOcqxddF+CiiPsS34r2Ao3KLxvtsxx9+rqLwHLohnXZXLour9a7Nz3e5/uyIRUU+WecmjY6B0 O8a+mjlip2VobSCAaeMH6sRQE7n0aWm46RsbuDMI2zSA1yXrwlsKeBbBAS8wcwfy1QH2ymJB+fT
 /KcbsKV8iINVApzTlcSGALy7jeVVycG9Np/C+l9WvCzovhUPNv3Ydy1aieJphsXx5B5h4gvC
X-Authority-Analysis: v=2.4 cv=c/urQQ9l c=1 sm=1 tr=0 ts=680ff678 cx=c_pps a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=6H0WHjuAAAAA:8 a=u-BiFtGUy6h0pWOPBk4A:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-28_08,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 mlxlogscore=958
 phishscore=0 lowpriorityscore=0 impostorscore=0 mlxscore=0 malwarescore=0
 clxscore=1015 spamscore=0 adultscore=0 priorityscore=1501 suspectscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504280174

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
> 
>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>>> ---

[...]

>>>  &usb_1_dwc3 {
>>>  	maximum-speed = "super-speed";
>>>  	dr_mode = "otg";
>>> +	num-hc-interrupters = /bits/ 16 <3>;
>> Where does this number come from?
> 
> I'm honestly not 100% sure. As far as I understand it, with
> 'qcom,usb-audio-intr-idx = /bits/ 16 <2>;' in the qcom,q6usb node (which
> I've checked against downstream) we declare which "XHCI interrupter
> number to use". Without the num-hc-interrupters property we get an error
> that not enough interrupters are available (I assume only 1 is then), so
> this value practically needs to be higher than the <2> from earlier.
> 
> Why it's this value and not a higher value e.g. 4 I'm not really sure.
> Downstream code looks somewhat different and "max_interrupters" in
> drivers/usb/ doesn't come from a dt property. I'd need to check more in
> details what this code does - or maybe Wesley can help.

I got word that it's simply hw specific - please move it over to the
soc dt with the value of 3

Konrad

