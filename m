Return-Path: <devicetree+bounces-214510-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB68B496DD
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 19:21:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 12626188D82E
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 17:21:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D7693128A7;
	Mon,  8 Sep 2025 17:21:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bq0l7xzn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAF6231197B
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 17:21:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757352069; cv=none; b=GAeRfC6G/PcMNR6vXYxyBZKYbwjDKjl8S2Br/UDy9QkSMmdf5VXpiSSElUukJX5wVG8KobdncdijIjKPRzQEwawm4CJXK6LNTX70fiJpR0wgWl6qfd2ooQdb74ZGykvCHSToEwk+9xTvFN0HoIoVPAXuGxMhv3j4lc1iBbpZXf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757352069; c=relaxed/simple;
	bh=G4BrLvgleWaxxht72XKMAEEw2IxbTnc795ofruBpdCc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AjpPjb5KaqFGop8BLoKBD2Euv/QRew9TAofAKkimpgk5wq/VR+XAne7tXfCMvoQziurUiroke0UlKmBW38hPZ/6wl2oujKwWOGvxN0Q/ikjlK0rTMKVJGp+46df3KWMo0OYKaRlBa4TrHuxa9gaWRyWcyOBv7Br6V+hYc5rozXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bq0l7xzn; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 588HI0vZ029318
	for <devicetree@vger.kernel.org>; Mon, 8 Sep 2025 17:21:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ODZs9h0J4Tt9rKYM/lsBJZbKSKYYe/vF4vwiFuP4OVE=; b=bq0l7xznvGgqX4MF
	xG4StxRIL4s8AdMobbe01/TBgehMgPWm23PWSnnPksEcTPbDIQFf/rmLzlyhETcB
	DTS+nrNeSyEhrBMiV6d/baQyRKZ/qCg+nAjW/kf++s2qwAOnuO/G06zGWeqhSg7m
	MzEDCgoV/4CpWFqoOPW6lJ9ESFo7jX7N/tqoNqLqihEFaNVp6inuirYb+mF9IVAP
	RzbmuU9DPCep9rAdJU9xu456VsY7NwIvQ+ZK1MtKuwUuhGPVpyyEkz1cQsNcekeW
	t+W2TmHpPAt8z0v0HDU15WClPOhiOFmyrFVfJzRTkEw8vDcXDfNzv5gZDBQ5CbCz
	+K92Pw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490dqfw9r0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 17:21:06 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-24458345f5dso64666055ad.3
        for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 10:21:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757352066; x=1757956866;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ODZs9h0J4Tt9rKYM/lsBJZbKSKYYe/vF4vwiFuP4OVE=;
        b=rfVAjV0mFw3n/ZkXHTaNKQwUrWtWJZ51aoNokF+tDfEf6OJGXCLgSiPN09G3LVSUyF
         VTH5nUApx7+NsVd+FihjexxaRagLh/E5tZjoO07Jwdm5UY2H4wnya4NniEhO2sXetsBa
         4n2HajOrWi9fVu7QD79WaEG+6Sg1k0JCbGlrKYSdw3nJpbxsT4OoggeWRA1ZWJnYjOm5
         gDtVOpV2jl3ImzVXZj3uiGJGkXnvZnGs9gQdtGOzrvACwYtpsUHIo3COPlx1RsQgQsdX
         fIlF1pI+VH/f6b4czTXNQznSY2lHehGk7qkaZo2vdJvHbglvUac883rl7irjq1rAke4X
         DvhQ==
X-Forwarded-Encrypted: i=1; AJvYcCXdxn6JjZpo0d3xneCBtPIyKAM5Yjpn6fNDZn8rfLUacW6AKvs4gsiYuRqal7Po56mrypsrZKpQD3Jc@vger.kernel.org
X-Gm-Message-State: AOJu0YzfyVTohfuLgmwtSvLfkqzw6DBiYeP9jemP06xKRzG/HsDv3CK5
	P80yWSU3pB9Y6Ln9DHDUO00z92LYaFOjTYGpFHaCttKQdm2BOuw4IYSj3momF6vesRxPAp2c7FA
	sgfNXtYinXFyy5X4B76dEXlvitgxdObkp1tMjih/Mo3GznJNxp7oMdDDzsJPj560g
X-Gm-Gg: ASbGncurlDLZNVcUrZc8T7cr+/0frIn1Sc6SMCccu1sf8UsR6XvOOY55ip+15zcqUCJ
	fHpijZ+19GJ2GHQSiajZBIttpB3zA4h90swLwyt+P6qOxJWrh2fb/YrDprz1jrDxJ+e7BLvsPAE
	VZfxNF6TUz4FpO4WrQpfGy98QTmb/sJfaPfgByCzvQBaAAuvQrMNEcQI5sCF43zgPFF880owJmB
	s4rFGdD7YTb2Gpy9bo1Te60kYEiHbBq3dVmq8PEEi31HTGC+fITjKefsCJZt0Iy/tYsXJ6ZNb3L
	CHYq0qGlkozo4gJ3kfD6JHCnzkR6BplCBgKUED3/hUGkY+jOBDNn5clESbVuRqlJtHoV3vfB1mf
	4bDY=
X-Received: by 2002:a17:902:f545:b0:250:6d0e:1e4d with SMTP id d9443c01a7336-2516dbf1ec0mr110154025ad.4.1757352065833;
        Mon, 08 Sep 2025 10:21:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGQkPNfzkAlHEBiLtjeXJpfUmFQcP93l7F9njp/9qBA4losfZNr9ZSj7Wz9mErmHUlusFnO5A==
X-Received: by 2002:a17:902:f545:b0:250:6d0e:1e4d with SMTP id d9443c01a7336-2516dbf1ec0mr110153605ad.4.1757352065134;
        Mon, 08 Sep 2025 10:21:05 -0700 (PDT)
Received: from [192.168.1.5] ([223.184.71.210])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-327da8e71a8sm31147628a91.15.2025.09.08.10.21.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Sep 2025 10:21:04 -0700 (PDT)
Message-ID: <2f29addf-881a-4aae-9f3c-d8f20f8fbad4@oss.qualcomm.com>
Date: Mon, 8 Sep 2025 22:50:59 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/4] arm64: dts: qcom: monaco-evk: Add sound card
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
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
 <5bbe50f6-5fa3-4685-8f2c-67986c5171ab@oss.qualcomm.com>
Content-Language: en-US
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
In-Reply-To: <5bbe50f6-5fa3-4685-8f2c-67986c5171ab@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 4ZgtP3PAyFVA90WfABmuXldKKLfep1m9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzNSBTYWx0ZWRfX/XRfVthg1oIj
 qQT/P3SmVq80N+0dKCMVD5/LbWrmV1dGrladNkqR4PPYDxyebBbi3vNPAOdQab+fnWIRATBxTDL
 FEaamB2StWoKPpCmvrQnlBJR4bb6TlecAbjubApdz6PiVyCOYOihuQ8dGM4ZDCt2oSXsvdkO0kr
 qiNYJz9sS9RQgWpkUB/RrXkJBLzhaOSW8JlaN3QngQIM96iX21ScYF4paMpKOPzTAt7A94Y2bj6
 YXpe5ohpI4wCC9NFwk4M173puB7GC7ub/rQ/gVmTY+n3567FPMDI/jHItJDNrv2f+kSysAL9vsD
 vF2K4gC0uge7vqEXvn5PQ67tyq4RQGPzWHVgn6+/cL8pDNWTArvbguJAQFHzonTgJT5PtIOgvXB
 WtyBS3Xj
X-Proofpoint-GUID: 4ZgtP3PAyFVA90WfABmuXldKKLfep1m9
X-Authority-Analysis: v=2.4 cv=N8UpF39B c=1 sm=1 tr=0 ts=68bf1082 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=xi+emkTUnFkL6NAgZCPIgw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=lD4_i0t_BDgHsDeZWuoA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_06,2025-09-08_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 malwarescore=0 clxscore=1015 bulkscore=0
 suspectscore=0 priorityscore=1501 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060035



On 9/8/2025 9:25 PM, Konrad Dybcio wrote:
> On 9/8/25 4:55 PM, Bjorn Andersson wrote:
>> On Sat, Sep 06, 2025 at 10:26:23PM +0300, Dmitry Baryshkov wrote:
>>> On Sat, Sep 06, 2025 at 12:53:50AM +0530, Umang Chheda wrote:
>>>> From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
>>>>
>>>> Add the sound card for monaco-evk board and verified playback
>>>> functionality using the max98357a I2S speaker amplifier and I2S
>>>> microphones. The max98357a speaker amplifier is connected via
>>>> High-Speed MI2S HS0 interface, while the microphones utilize the
>>>> Secondary MI2S interface and also enable required pin controller
>>>> gpios for audio.
>>>>
>>>> Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
>>>> Signed-off-by: Umang Chheda <umang.chheda@oss.qualcomm.com>
>>>> ---
>>>>   arch/arm64/boot/dts/qcom/monaco-evk.dts | 52 +++++++++++++++++++++++++
>>>>   arch/arm64/boot/dts/qcom/qcs8300.dtsi   | 37 ++++++++++++++++++
>>>>   2 files changed, 89 insertions(+)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/qcom/monaco-evk.dts b/arch/arm64/boot/dts/qcom/monaco-evk.dts
>>>> index 93e9e5322a39..f3c5d363921e 100644
>>>> --- a/arch/arm64/boot/dts/qcom/monaco-evk.dts
>>>> +++ b/arch/arm64/boot/dts/qcom/monaco-evk.dts
>>>> @@ -6,6 +6,7 @@
>>>>   /dts-v1/;
>>>>
>>>>   #include <dt-bindings/gpio/gpio.h>
>>>> +#include <dt-bindings/sound/qcom,q6afe.h>
>>>>   #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>>>>
>>>>   #include "qcs8300.dtsi"
>>>> @@ -24,6 +25,57 @@ aliases {
>>>>   	chosen {
>>>>   		stdout-path = "serial0:115200n8";
>>>>   	};
>>>> +
>>>> +	dmic: audio-codec-0 {
>>>> +		compatible = "dmic-codec";
>>>> +		#sound-dai-cells = <0>;
>>>> +		num-channels = <1>;
>>>> +	};
>>>> +
>>>> +	max98357a: audio-codec-1 {
>>>> +		compatible = "maxim,max98357a";
>>>> +		#sound-dai-cells = <0>;
>>>> +	};
>>>> +
>>>> +	sound {
>>>> +		compatible = "qcom,qcs8275-sndcard";
>>>
>>> qcs8300
>>>

ACK,

>>
>> If the Monaco EVK actually is QCS8300... But, I presume qcs8275 and
>> qcs8300 are identical when it comes to sound?
>>
>> @Mohammad, if this is the case can't we just support the
>> qcom,monaco-sndcard instead to avoid this confusion?
>

The Monaco-EVK board is based on Qualcomm's QCS8300 SoC.

Although the Monaco-EVK platform was previously associated with the 
QCS8275 sound card, the QCS8275 re-use was based on existing coverage. 
However, according to the naming guidelines, sound card compatibility 
should be based on the SoC rather than the board.

Therefore, it's necessary to use the SoC name in the sound card 
compatible string. I will update the DTS to use qcom,qcs8300-sndcard to 
align with the convention and avoid confusion.


> Commit 34d340d48e59 ("ASoC: qcom: sc8280xp: Add support for QCS8275")
> 
> Unless we choose to ignore that compatible and add "monaco", but I don't
> think dt maintainers will love that
> 

Agree. We used the existing qcom,qcs8275-sndcard compatible string 
instead of adding a new one, but this needs to be changed.

The sound card compatible should be SoC specific in this case, qcs8300.

I will update the patch with qcom,qcs8300-sndcard.


Thanks & Regards,
Rafi.


> Konrad


