Return-Path: <devicetree+bounces-224848-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 00400BC8579
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 11:41:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AEA993AF311
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 09:41:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68A9B2D73A5;
	Thu,  9 Oct 2025 09:41:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CbTF4WvT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E32742D6E7A
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 09:41:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760002869; cv=none; b=cYBAh3tOc2pOy/lESZrzKS1HBCx84NOzn2sBAhVjgl65F7dtkjbzweHsq2jY/UvQQ1J0gHzEKunqlVKM8k/5if2CDf384W4o7Ht02w9ilwHPHY7VSUiy+uV2Kd+tpm+PcQF8Wn9O5XtUb4XHrPU6/LEUyAgXCZidmO7HtKgRwhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760002869; c=relaxed/simple;
	bh=hjO46nWg5it8CbNTZJjSu9lbQry+Y0tbqwAr4+hiepI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=g/oKrt0gEcjYIdCN2tK8yRcG6HW4XxIO6tFKs2iUGks8KKoswhxur4n4PynKL1CAYjMa1FIjJfrP/kRiEmsWDVE0F2YMIGo/TyGRwYjB3awsb8pTHfZk/jrYtCMZ4Iu+fYxFssqaEc4nMxYGcEf1m6HtOX9GItlQ7GEVHG9c2xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CbTF4WvT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5996EGw4004144
	for <devicetree@vger.kernel.org>; Thu, 9 Oct 2025 09:41:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aGTlSSq+8eQOySdUbPi/aGR701kfDoEADHwTgeSc78g=; b=CbTF4WvToQvbh4fr
	pLV/hUHFHJzBIx3W/idPY/KAuGoosSiyrPRp5lDKYuEOl0t+q9NGJRUo4f7JEi2D
	szKjZo2iGIxmig12JUmRQm9pVbiQIoyxS+grEQvU4DgGNgPTLYltcT3Bj70xuTcW
	6Ntuxv2fOy9Y6cIo14nHbfratWmNB6XY73rMk84xl8P91YgHaWs5M0bS5uktJST5
	8kaBK2iIx5hOSfGjfCw8HgCO2K+A+ZWNqdm0BzX7sad9YCu2fmbC6ZKUrd3ArYpC
	Z0Z5GJW0pSCdUDXlxSlo/8C3uL5MakDixZkF5+RhmhnB6J5T/UD/dSC6iXt/e2hb
	96Am9Q==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4j29b1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 09:41:07 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b62cdd71290so2343015a12.1
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 02:41:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760002866; x=1760607666;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aGTlSSq+8eQOySdUbPi/aGR701kfDoEADHwTgeSc78g=;
        b=ldduysvIXPrIsN1LYf7m2TRAxte37ILk/fFuoz57LWgck9Yss6o7QR7j4ZbqX4Ll4p
         eY2QD1zLlBn9I9rTghExFnHYwbjUVN4tMTUE6b43aEJ/scKjWdGr08RDR2lP1VTIm1pO
         WH8K6siQJa0cBHph1ETbZ4eEpzjqyFbIMPJqW8Z4/dgazKfchY6x8XOw2b8chrPvxZFz
         imtlr5FPgFwuxkuuOHK8TtsvTahBw3yyuSE0MnFJJ+hsRgCZ4rsg424elTmQhK3/pxVa
         rGl7aYLi0lSJpxCK8B8tM1To0p2SxGPRVHdPQWXRxm1Yd3AspgWAkh8kOPi2xJ1AHvZi
         yg1w==
X-Forwarded-Encrypted: i=1; AJvYcCXeD7zWCNzQRxwmBRjE82LPwbCBHAQNWgjgwhuISXfZrDCgnnmRNk/8+MJcwpc7lVJFQX1HS5ehQWCQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yygu1AMvNTUO0IGNPPeMP8z7WPNWIjJCBd2eufk1rE6XkQVeJfE
	z8UsQ9pzqqpXrEY5HSSyNtb0nTIhm1oJTZLjqiQY3UGKpeqqJW7iHGmL9hDyGmwo68dShnBZBzA
	MOiOy96TLgpujfJ48siJkdIz4YGSptX9dJQJVdz4EG0jZnKuPpAjWZUkPrcjL6r7w
X-Gm-Gg: ASbGncsgqppzlOKvPMHOL9V5GKieVnPn6+7ifGJRAL4onXo9EPOhecykZn2eCSBbsYx
	PHe4L7HzomOoEr6PL/VVBVAmjlNmPeUi4BHpRDCa6TUYB+N9+QxK0+FU4hEXz6LNbz9wZWWREjB
	GUHX19Y0ZaHeW344JveI4xjOkm9XKeqg5eTxNXTjmZZ/DHHrCNi0+uaMmc76xAXjjsUwMFEkJYU
	u8qVWKYaGj/+K+KGIlZMZ4xSs/+G5/7PWPelNH+fwv9W2Jh26k3r598AfkiskQZ5B62L5qrMWWq
	31x3r1B2ih4giiSYY3vkeN7BeOm7ohkX1TSN4CDauaMYLm9Guq2MmgjsONLViY3v3j2RdyTLkfm
	yDPooXcz9bOf8qUgzOQnA8R7bFY4Ex+4=
X-Received: by 2002:a17:902:e849:b0:267:912b:2b36 with SMTP id d9443c01a7336-29027f257f8mr80329595ad.23.1760002865826;
        Thu, 09 Oct 2025 02:41:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH6qD3Fez97NKxMLaWmN0Uk8mdrBcan/tESBp1DwEk4g/XwXSj//BKKzsIa66XuVcqn6lccJw==
X-Received: by 2002:a17:902:e849:b0:267:912b:2b36 with SMTP id d9443c01a7336-29027f257f8mr80329145ad.23.1760002865182;
        Thu, 09 Oct 2025 02:41:05 -0700 (PDT)
Received: from [10.133.33.54] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034f0713bsm22764545ad.67.2025.10.09.02.41.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Oct 2025 02:41:04 -0700 (PDT)
Message-ID: <392c5d4b-80a9-46e8-af98-496ed8837044@oss.qualcomm.com>
Date: Thu, 9 Oct 2025 17:40:59 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] arm64: dts: qcom: hamoa-iot-evk: Fix 4-speaker
 playback support
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@oss.qualcomm.com
References: <20251009072630.460387-1-le.qi@oss.qualcomm.com>
 <39ebaf4e-e91f-4568-8de6-9fc1f805a1e4@oss.qualcomm.com>
Content-Language: en-US
From: Le Qi <le.qi@oss.qualcomm.com>
In-Reply-To: <39ebaf4e-e91f-4568-8de6-9fc1f805a1e4@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 6zaZrOFen4JwErm7LywVgZop1kwT8Ll6
X-Proofpoint-ORIG-GUID: 6zaZrOFen4JwErm7LywVgZop1kwT8Ll6
X-Authority-Analysis: v=2.4 cv=f91FxeyM c=1 sm=1 tr=0 ts=68e78333 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=RyFr2WyApn2QNzaPLwEA:9
 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfXxjlv0O7Iugd8
 /q7lX7VGsViQtZa2KVkMVHJ0LDF8WqIpU/RrhWOsI8fW1a8ZmDnA80HoeDrgfZwuy9mBVuy6+hi
 yz8j2cGrLChWH9dzeJn3oEDcTpFB7si9sr/ay9MOtnteCfGCSc8VdJeOB4EW8b1DjwmnfQCGOJ6
 QCFqdAHDgVKj+iRJh2PO7E5f2KTBk0V2SKSWwxfIYScjIgShHOX6lPwiuazNCccveGk059zEh18
 BrtiMrkQKra+OcjeJWkCO1DCk2WMDf4j9bbbWOv04rve8uKAvPl5PixuGmeiZYz39oabVh/sZRJ
 3ONRZupJ4TTw6p3G9YjPH5/5n+1kYKo1NDfwfcxsoAQt+jG8HhVTXilg7RI4f8mCKgXVE4jiv7Z
 r1zxZhcplJBM2JADmS50l6LEjva+Kw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-09_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 adultscore=0 priorityscore=1501 malwarescore=0
 suspectscore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

On 10/9/2025 5:26 PM, Konrad Dybcio wrote:
> On 10/9/25 9:26 AM, leqi wrote:
>> On the HAMOA-IOT-EVK board only 2 out of 4 speakers were functional.
>> Unlike the CRD, which shares a single GPIO reset line for WSA1/2,
>> this board provides a dedicated GPIO reset for each WSA, resulting
>> in 4 separate reset lines.
>>
>> Update the device tree accordingly so that all 4 speakers can
>> playback audio as expected.
>>
>> Signed-off-by: leqi <le.qi@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 30 +++++++++++++++++-----
>>   1 file changed, 23 insertions(+), 7 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
>> index df8d6e5c1f45..de9af19be6e8 100644
>> --- a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
>> +++ b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
>> @@ -743,7 +743,7 @@ retimer_ss1_con_sbu_out: endpoint {
>>   };
>>   
>>   &lpass_tlmm {
>> -	spkr_01_sd_n_active: spkr-01-sd-n-active-state {
>> +	spkr0_sd_n_active: spkr0-sd-n-active-state {
>>   		pins = "gpio12";
>>   		function = "gpio";
>>   		drive-strength = <16>;
>> @@ -751,13 +751,29 @@ spkr_01_sd_n_active: spkr-01-sd-n-active-state {
>>   		output-low;
>>   	};
>>   
>> -	spkr_23_sd_n_active: spkr-23-sd-n-active-state {
>> +	spkr1_sd_n_active: spkr1-sd-n-active-state {
>>   		pins = "gpio13";
>>   		function = "gpio";
>>   		drive-strength = <16>;
>>   		bias-disable;
>>   		output-low;
> 
> output- properties should be removed in favor of in-code gpiod_
> function calls, otherwise the reset gets asserted by the kernel as
> the OF node is being processed, unbeknownst to the then-not-yet-
> bound driver
> 
> [...]
> 
>> -	pinctrl-0 = <&wsa_swr_active>, <&spkr_01_sd_n_active>;
>> +	pinctrl-0 = <&wsa_swr_active>, <&spkr0_sd_n_active>, <&spkr1_sd_n_active>;
> 
> Similarly, because these pin configs relate to GPIOs connected to
> the speaker amps, and not the soundwire host, these entries should
> be split between each individual device
> 
> Konrad

Yes, will modify and test, thanks for pointing out.

-- 
Thx and BRs,
Le Qi

