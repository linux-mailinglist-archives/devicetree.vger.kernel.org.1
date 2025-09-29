Return-Path: <devicetree+bounces-222318-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D810BBA80C9
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 08:02:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3070E188C2CA
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 06:03:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E5C2236435;
	Mon, 29 Sep 2025 06:02:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QvCqcVRQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB6071FF60A
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:02:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759125763; cv=none; b=Ea2awVLQvGO5q8yBtbrKa6fNa9HAaFzRLs/Ak9/3M6829sgXXT3tBNtbA/x3+KGMo+JT5SemcS+jcevQ7ba0K1JlVH0ga3cxjyJwwlMt6sdT/w37o8OwY/a+v2nira0bO44ntY0bwbkrg7zoaaZflJ8SZgKgNH4qVCIQk+zam0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759125763; c=relaxed/simple;
	bh=EVwKZ9ffdaADDxMp/oxfmX/duyCcrAcbHorH6J6Cjhc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fMUkFerFFm/Vn2VL85/13lhw8jNbR0/8/e1J1PPg8TElVEgI0lbUE2EtmhCDFQ/PZHBFUETW9vZnNj4rmZE4HAYdD49Wvz+siBhKsga9p6o+Mh2JugFbpWQZAtItSvbM06vcMgLdUHj0duOJQFQN95RnpAk2+LU6boNVmoDZX3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QvCqcVRQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58T0TBoV012714
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:02:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	c84sJy294lRAsvdayLiR1jZLIpH9uaxLIGDdgwQe68o=; b=QvCqcVRQzLPsbawx
	s58RDUfGswe4txwaxDvqG8Rr0YstVhEvzpYtaw18yl+ljSv2A9AFa+gnvXerbPVS
	ogWP0HXpP7HPbpUieUNh6Fr4CpTbyPcOCEuFz9yaBW4x4p8QZkOIZ3koQlXRHJ5l
	GL5Du2iVZS81Q83/tq3gTb750URX8G/4dBtel4uNq4cCcU1aQMYq0GxPZ4oVqLgX
	ALSGbfLHApjQdhNXVCwzfiqgeFjX7OPYH/a3gIYtz6m4cfWVNQrdEtJeoIicJac3
	eY/HKQ0sUMxNTXEbjEYnCkGBpA6EFKdigFb3vR//5y6WNkOnLEYuOEXkW2avFOiT
	HDiHwA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e78fv3wp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:02:40 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-286a252bfbfso29753095ad.3
        for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 23:02:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759125759; x=1759730559;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=c84sJy294lRAsvdayLiR1jZLIpH9uaxLIGDdgwQe68o=;
        b=AxVQxBl7aqSosMO8d9AX3qH8v0o8fQE+1eCxKp87cX68OcwYW+KwqZvztdGOWGMzub
         Yw3+x+nzKynlXpiX7glxcsaVvg0bOJgLvlAo/J+pDieJnav4igK8oweGR+73sL6EnM6W
         fEbpBxARc5xEIl+c2joKnAj6tX87lTI1y1+DFxa317oyzxHKDcIziuJGwm3rk3knJpBJ
         fUzI+sP/cphFHplgLpdQYOhlkbetREKZAoxnus8m2HYh17KD96c0mgGHKQazI8oIsdLh
         Gq+YMWVFZPSStiFsEElR/ZqXt6tRntl/CRaEazRtRSxIkr/zBCLpW6N1xmGsiwlYzx05
         taRw==
X-Forwarded-Encrypted: i=1; AJvYcCXR61wk4jtjZxPTEfHvZFLQ7sFiJD56IQhGFJPA5w5EnB1KdInkTs3uhAwY/+uA2xDI35S/tAA0wA9d@vger.kernel.org
X-Gm-Message-State: AOJu0Yyaj6P5kJXYrQg+PN4EWWlnER/2LRUZXfvOGRYd4sxJWYTOQchy
	zN0RGZkwbGZZGMGMM50k/PjFH2Fx/NrKqgm5dgrpn1xME9tjQnZDhogOvCFN3/o9E7lF6JCbGgP
	XRQ20d3nQorUk8EpGl5M0nL7f7xWpk6u1H45Cqrogk6mPg3pX1rxp3Xs6Mot+CDyB
X-Gm-Gg: ASbGnct40EXPVkgSQBfzEizP8vjDRtwLZ8RFe3UM4bGtgOhI57h8uNdm4nvGlpFIMOH
	zA15/rq0/WZ6kKKp09EU6XxmOFHz8n+aid881ScvHb8drfqqXckVdxv0RWQoJ8NAbQJ2dUpy6HE
	yYZgn6fM3A7KH2DOwWsc3noxB0Ohav1JjDGnMKTy+gU5D8tT+4mT1wKpk1eL5Mh+pWuF/0/0xWT
	AQNdoixWS2YBGdHTUic/3CDpJpanOhjK2/kW1mD5EJbexIlJqOBMG3MKGBEiCNRW4e9eSB10sui
	mNGQ2J0DyGiEZy1B/cAgas9WLXCMH5meb4ukWbtZN0beAZwU53K7ZV4akg49qoXC0zV1PpgNwbd
	L7asEvGhYeXLiliMCsctBk2UkX71/x1liJYs=
X-Received: by 2002:a17:903:38cd:b0:27e:d4a8:56ad with SMTP id d9443c01a7336-27ed4a85a82mr165732305ad.61.1759125759077;
        Sun, 28 Sep 2025 23:02:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEJ70u453/jxOUh+G0kG8uuIYknKfil7i8PuspUU15QgIdesSV8W24AVurbFTeHJcYwjL3wwA==
X-Received: by 2002:a17:903:38cd:b0:27e:d4a8:56ad with SMTP id d9443c01a7336-27ed4a85a82mr165732105ad.61.1759125758595;
        Sun, 28 Sep 2025 23:02:38 -0700 (PDT)
Received: from [10.133.33.234] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed6882133sm120557875ad.89.2025.09.28.23.02.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Sep 2025 23:02:38 -0700 (PDT)
Message-ID: <7f4bcb3e-2469-41d0-b3a7-392ffcbba515@oss.qualcomm.com>
Date: Mon, 29 Sep 2025 14:02:33 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] dt-bindings: phy: qcom,m31-eusb2-phy: Document M31
 eUSB2 PHY for Kaanapali
To: =?UTF-8?Q?Krzysztof_Koz=C5=82owski?= <k.kozlowski.k@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Ronak Vijay Raheja <ronak.raheja@oss.qualcomm.com>
References: <20250924-knp-usb-v1-0-48bf9fbcc546@oss.qualcomm.com>
 <20250924-knp-usb-v1-2-48bf9fbcc546@oss.qualcomm.com>
 <CAJKOXPfVhixCk0_Xh=9XokjHObM=P+SP=itaXHv7xTr69pc3_Q@mail.gmail.com>
Content-Language: en-US
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
In-Reply-To: <CAJKOXPfVhixCk0_Xh=9XokjHObM=P+SP=itaXHv7xTr69pc3_Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=DZAaa/tW c=1 sm=1 tr=0 ts=68da2100 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=nQufxc_MvbZzznxDM0EA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAyMiBTYWx0ZWRfX1cObS4lLOZUo
 0CCQ89TxmA8lYxn4bopTZ1na0s9ydLjsGQriak0D4PsB70Kb3ySuPnPJeiRDgGshvM6r/sAjLm5
 tkAppSMpRnn7vElEW4aZCvakFugomQ0nNmNbRKbhMFzRYiPzMtWexTmpAwSxrPOwy+LTJ/eZ/zM
 qepv8GviScP7hDGC4dMA3b6AsnBpIJY8LxTJIoZwxsTtqzO03XchTF9ai1UIB7q77N/iuNruO4t
 7+UHoRtYEKzm+FcCwbN6kAr1cHZ8/1G4tZAyTGYHzPtFLnyymcjlGG0ot7drHjRmZKsWR8LyB4X
 FExRswqwMuJllhUC0rLjH1uYGz/TBnEiaBHgTqx89Xo2JOPJG80UtFbdZ8s7D3cBgA0Gk9ZwfD6
 65CiO70PfTVHC4CR8KP1Eftw46F4XQ==
X-Proofpoint-GUID: bWVFaDoffA5qsvqO0z0HwrVfYawJieR4
X-Proofpoint-ORIG-GUID: bWVFaDoffA5qsvqO0z0HwrVfYawJieR4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-29_02,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 bulkscore=0 clxscore=1015 adultscore=0
 impostorscore=0 priorityscore=1501 lowpriorityscore=0 suspectscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270022



On 9/25/2025 9:46 AM, Krzysztof Kozłowski wrote:
> On Thu, 25 Sept 2025 at 08:35, Jingyi Wang <jingyi.wang@oss.qualcomm.com> wrote:
> 
>>  Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml | 6 +++++-
>>  1 file changed, 5 insertions(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
>> index c84c62d0e8cb..ab1cdedac05c 100644
>> --- a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
>> @@ -15,7 +15,11 @@ description:
>>
>>  properties:
>>    compatible:
>> -    items:
>> +    oneOf:
>> +      - items:
>> +          - enum:
>> +              - qcom,kaanapali-m31-eusb2-phy
>> +          - const: qcom,sm8750-m31-eusb2-phy
> 
> This time maybe without HTML:
> 
> There's no such code AFAIK, because original work was never resent and
> never merged
> 
> You create some convoluted big dependency chain and I suggest first to
> finish upstreaming previous project, because otherwise it's difficult
> to review and impossible to apply.

The SM8750 USB support was partly merged,
The qcom,sm8750-m31-eusb2-phy binding was merged in commit 1166a2ca0900beafbe5b6d1bb357bc26a87490f1,
Link: https://lore.kernel.org/r/20250527-sm8750_usb_master-v6-2-d58de3b41d34@oss.qualcomm.com

Thanks,
Jingyi


