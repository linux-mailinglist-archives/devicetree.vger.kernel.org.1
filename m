Return-Path: <devicetree+bounces-214488-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 71E9AB49482
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 17:58:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C4B323B1E07
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 15:57:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C02C31159C;
	Mon,  8 Sep 2025 15:56:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="U97Th268"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B560231158E
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 15:56:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757346963; cv=none; b=LMUGayMJ9AphtNzPAqXSJNQm7HdEE4SWT7Nd/8tB0uK4DqdJrKwKrD63USRTeNVBe1o2HvPILAw/GiUCq/vQbsK7e5Lokdb+TI5in5FCQ34Bo2RUd5/u9hIQeruesnz+q8p8lAIt5tVn/hNzev4IvtwEj117/HN5If04469cO1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757346963; c=relaxed/simple;
	bh=KAC3wN1aJK43E+9u9yRPapQ08U4z5xBJ5LwIPKP+JAs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=r1cQju6OETE7prJHUoUM+GY5j036YI5gs+dIQyxMou7pyjUg8NY27lTx2xOrydGumT+EeEDZBuJIgkHaO5SUus+8gFBIzZJsYgu/3v9gpbP8FYcrNWixRyhvnr7nreaDsrXwME4DtTHlLja3NRqrsO8WZDifiEQhuR9y+jLLtts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=U97Th268; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58891GTg000478
	for <devicetree@vger.kernel.org>; Mon, 8 Sep 2025 15:56:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2xaA2EzI7/V6N3p3V/3RVjm7H6QsTCKQ0e8YQDvM8Sk=; b=U97Th268gp41E2h7
	/woc3CRWfZfL6VAWfnAUpxGirfUDSm28ol7dYOZQghd8IjyDO2BpK9QYsvD05Tp2
	qSHbDzYzK6URki9H+SpQ/duaklPkbwwEXDw3K+DDfxn7ru1guHiFS0JTdMtynkS/
	7CFkoyRGNXv9l7XKLIxJmok2cLkTqkLp44tQA4yhbN3zx1+M18AUbGfncUojLzDe
	2PiH1HWxqznrelpKdtgcoxnNWxLxxHsUwle+M5OKyZtR5HpTDAE6heo8sFVvze2w
	PJzfFSIgiu08PHD+8OPJCAl1H9Wi2MYF5Spx6j+4pSgWsxpBLQZ6+LnPFOQEsnl7
	0apnTw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490by8w66n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 15:56:00 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b4bcb1e32dso24075921cf.1
        for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 08:55:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757346958; x=1757951758;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2xaA2EzI7/V6N3p3V/3RVjm7H6QsTCKQ0e8YQDvM8Sk=;
        b=kHAuKFZsN5vwEkvuwIB4thMCaSnwY2S4xXNXc9NuIMug+b9KQmcBcp3B+hIxzZFxr+
         WR9/O1XWNTxu2ODYCoNTQH3Tn8g63fkX4NyBPbbkeHEk0rDFvTauJvGnfXguqlM/g7Xr
         RtDztx2IFxQ9rjia4pczyErlqa3vXdSkzf58Md5uv7kiGKp4JiVDj9zGcGrqlyPPd9eM
         GQXM9sa3UnB3eVPVkcXz1JvKHfZyYc3GUVeLN+rspO3OVBL1LHdCgal8x40tM4Db71Mn
         J4JHnWfy+JfBJnApo8SIgQp79Re9tMG87iJZlfJzgM9wfebWALHC06psY7Wzq1uCw6Sa
         sIzg==
X-Forwarded-Encrypted: i=1; AJvYcCWQUf+AKCDQcKITWf7MxX3Jk8SVHFZ9E0JnDr71yGJfh3AUoo9Sar8Jj4jVQioRkmZt53l0D3YiHweU@vger.kernel.org
X-Gm-Message-State: AOJu0YxS2lkTBwaMlNsPbVhFF2kDqCEinM26N/ZEsBuznUqQvp6RBXJm
	+W8OTF9NRIGuISY/Ea6FekSxLJeh/dGyii94X3ayC4V5V3nQ44if9sWON24HHxISusb6DBZqJch
	xx6aTRLq7+xah9n2FVv0pfP1lVm9TFUMV4CGNO3s3GMpvIGFb/0hQUSY03PRwQ4sJ
X-Gm-Gg: ASbGnctKSUkT+TOitpmcGEqYFiAVvFaGws+3ie5RWH3IN+UK8pc7TgB+pcWdFU3pN67
	9ugd/LyccXQ6ZEzH2zKpV9cFZ4Hae+exZnBlcvpo3doOcMhK0SJRO7tBgvvbm8cRVSE5t7tbzb1
	AJCb0caJbzGneSrXojWAQCkJhGjllKejciYkdBlnMw2HIbermP0c19Qx9CcQiq2vdoRVO/H3vxR
	0u7CX4E9//+1y8I1XjW8NJaaOSklH6/F0ir9qm/70fcHMrakGgm4qcwCE1eTNgqH9CgU+dkZNbz
	TIWMPT3ubHdlOiQyZaBlUsOwgsz/J0rkAKTMDgHiG8H1TzWbnCptT+NSOlqrISYoL/UsmKCPU0w
	+dPFnyb1RyHyUqag3m5JvMQ==
X-Received: by 2002:a05:622a:350:b0:4b5:eb40:b1c4 with SMTP id d75a77b69052e-4b5f842e182mr68367801cf.10.1757346958216;
        Mon, 08 Sep 2025 08:55:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF+m3DUDT2VOeoBUBd/sfW/1V6KtiWmR40kAcM7D0XaeflwxuM4VlQhxuoiXlAywg4NPIPM7g==
X-Received: by 2002:a05:622a:350:b0:4b5:eb40:b1c4 with SMTP id d75a77b69052e-4b5f842e182mr68367571cf.10.1757346957675;
        Mon, 08 Sep 2025 08:55:57 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b040a410817sm2197805766b.101.2025.09.08.08.55.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Sep 2025 08:55:57 -0700 (PDT)
Message-ID: <5bbe50f6-5fa3-4685-8f2c-67986c5171ab@oss.qualcomm.com>
Date: Mon, 8 Sep 2025 17:55:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/4] arm64: dts: qcom: monaco-evk: Add sound card
To: Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Umang Chheda <umang.chheda@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250905192350.1223812-1-umang.chheda@oss.qualcomm.com>
 <20250905192350.1223812-5-umang.chheda@oss.qualcomm.com>
 <7bzlof2wyqqorhh4xck46wd43zlehm4vhej2oaxajo4dxn5p7p@oc3vikzxcwke>
 <nphea3rtl3z2tgpyn4g4hf7ticbg4kyhgv4ht25etfxspsgkv6@dm67wp7x4mdt>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <nphea3rtl3z2tgpyn4g4hf7ticbg4kyhgv4ht25etfxspsgkv6@dm67wp7x4mdt>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Yv8PR5YX c=1 sm=1 tr=0 ts=68befc90 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=MWXjAKqjvAffJSE-xswA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: XngV9V6sUm8CKjGPzzhhO_gwSIYBdAWH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAxOCBTYWx0ZWRfX7UV/GQOSYSaN
 OWYTrmA2tAGh1bXBbhiaf3ImG7N87GozeVMJB7pr8+IHbxfMIxTlz8ql3yUA4BpthLc9G1svgY7
 Tbpg1BXxYilMCJO259ntg8hp5WRuuHZYagF7laJmLSr74WsZDpnFFBy3FTZAAd0C7ZxZE4/Qrbh
 XoQ7aiJdaqYRdzxXU7M3cWZCS5f0KDpZAJPChD5TbRpSuLf+sZV2qV+Q7nDp73+5KVBrprWZmcq
 YuKWti9IomC1OXTIfkwYfZJcVFpBkCPCKL7BtEd7tFgXpRI1bNu61K79RoldbgUJeLPt+F2rFAx
 l5hYaJrnfDstJk1nm/YnQZvaMyM2fwgAeaLc7a/uSLuHWlIos+BibNqbmUe9xkHLHzZBCG4JazC
 /YzJsZ8V
X-Proofpoint-ORIG-GUID: XngV9V6sUm8CKjGPzzhhO_gwSIYBdAWH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_05,2025-09-08_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 suspectscore=0 phishscore=0 clxscore=1015
 spamscore=0 priorityscore=1501 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060018

On 9/8/25 4:55 PM, Bjorn Andersson wrote:
> On Sat, Sep 06, 2025 at 10:26:23PM +0300, Dmitry Baryshkov wrote:
>> On Sat, Sep 06, 2025 at 12:53:50AM +0530, Umang Chheda wrote:
>>> From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
>>>
>>> Add the sound card for monaco-evk board and verified playback
>>> functionality using the max98357a I2S speaker amplifier and I2S
>>> microphones. The max98357a speaker amplifier is connected via
>>> High-Speed MI2S HS0 interface, while the microphones utilize the
>>> Secondary MI2S interface and also enable required pin controller
>>> gpios for audio.
>>>
>>> Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
>>> Signed-off-by: Umang Chheda <umang.chheda@oss.qualcomm.com>
>>> ---
>>>  arch/arm64/boot/dts/qcom/monaco-evk.dts | 52 +++++++++++++++++++++++++
>>>  arch/arm64/boot/dts/qcom/qcs8300.dtsi   | 37 ++++++++++++++++++
>>>  2 files changed, 89 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/monaco-evk.dts b/arch/arm64/boot/dts/qcom/monaco-evk.dts
>>> index 93e9e5322a39..f3c5d363921e 100644
>>> --- a/arch/arm64/boot/dts/qcom/monaco-evk.dts
>>> +++ b/arch/arm64/boot/dts/qcom/monaco-evk.dts
>>> @@ -6,6 +6,7 @@
>>>  /dts-v1/;
>>>
>>>  #include <dt-bindings/gpio/gpio.h>
>>> +#include <dt-bindings/sound/qcom,q6afe.h>
>>>  #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>>>
>>>  #include "qcs8300.dtsi"
>>> @@ -24,6 +25,57 @@ aliases {
>>>  	chosen {
>>>  		stdout-path = "serial0:115200n8";
>>>  	};
>>> +
>>> +	dmic: audio-codec-0 {
>>> +		compatible = "dmic-codec";
>>> +		#sound-dai-cells = <0>;
>>> +		num-channels = <1>;
>>> +	};
>>> +
>>> +	max98357a: audio-codec-1 {
>>> +		compatible = "maxim,max98357a";
>>> +		#sound-dai-cells = <0>;
>>> +	};
>>> +
>>> +	sound {
>>> +		compatible = "qcom,qcs8275-sndcard";
>>
>> qcs8300
>>
> 
> If the Monaco EVK actually is QCS8300... But, I presume qcs8275 and
> qcs8300 are identical when it comes to sound?
> 
> @Mohammad, if this is the case can't we just support the
> qcom,monaco-sndcard instead to avoid this confusion?

Commit 34d340d48e59 ("ASoC: qcom: sc8280xp: Add support for QCS8275")

Unless we choose to ignore that compatible and add "monaco", but I don't
think dt maintainers will love that

Konrad

