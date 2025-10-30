Return-Path: <devicetree+bounces-233137-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B22FC1F5B9
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 10:42:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F1DE5188D2FC
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 09:42:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B9A7343D70;
	Thu, 30 Oct 2025 09:41:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="c+q61kk0";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fiOaS1Id"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C517A337BB8
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 09:41:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761817318; cv=none; b=oQdILCzAOiPN/AzmI5/QdIbF+E9exHH063TUySkMxltHItOsdcafv/YOVNSFw3424ZfL3XJu7stu9T9LB9CJI8u+rs5cTR917ZHD2EYla4SHETlg1NXYtKWADQ+ucQmCYvi/am+Ou4krFqi2hSndf68NDTClobCwkQ1pjamjRHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761817318; c=relaxed/simple;
	bh=xxO2m+K4+X6ZywsuL0npJO5qkxo6MOVOHSO7y5HDfbM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Myf1VYO72/RMF510SbuvlIHWYvJ6IWfxrGe8gwrnsRh2Y1j1kZfFyJnNi7QCh/sWMYqM6xmaMvMHqN4LiRzlhWq0+p7vrSS3cW9c7eOJHclWF8GbTXSh4BnOmb7x1WMpjroHBXBCjz3UShsr/oWxl5rwdKGZmGLN9W8YUcG3fts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=c+q61kk0; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fiOaS1Id; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59U4xhQ02623035
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 09:41:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Bh/NrdqFUpU9wVwB3r8i3vqn0tl54Ze3lOlTg9aA8Wk=; b=c+q61kk0F0tX/xhN
	1d9JzSJos6pXN7B3bV+DMQOcjZAo0iU/Y677CvVXMm3CSbBgTXKaG9ls4ZMv0+uf
	249Sr0OHPR0ni0JKEl5YHKto7uqsc0cz2cb4rsLmEwIXVwBeDsjC5w07Iv5wXhWC
	V1C/BIyfKkeFr5kJg4kLFZ6Ygi/7zehL+ra4Tor+B3Xp9kF7bv8dZANY0IdrXTY7
	CWN0D+ZsIgJEWEsjagGwfaqvCjWWVWxycRX9/XfbJ8/KXNZFS2diNlX2x1uKvInD
	E7n1QUlPb2JAFRENAz8VQI1cmA2xYqQ9dIx9J3SxYZ0S93Ye4Df7M4epCEv8wew1
	NXZtvA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a41fxgt58-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 09:41:55 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4e8a35e1923so2316611cf.3
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 02:41:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761817315; x=1762422115; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Bh/NrdqFUpU9wVwB3r8i3vqn0tl54Ze3lOlTg9aA8Wk=;
        b=fiOaS1IdZRCiEmI0lDBzrClscpZuQZNe53xEjWSk1cQlIebrZ4UrsZoW7rQuvk0HuC
         FWDiT3prx5DZ8Emo0A1bhNlfy2rnjjE5ZYZBCGv/CJ2myzTBu72csLFqEmKtVUbElQUs
         W13uueWkNEtIxnAFbbgfDi5Uye1uuMu6qu21Ool+lscLrvvsKvxwCJ1DkIDMLYVhrpxw
         rzWIHzguxVF/1jzCqwg3YlaWUdjTTV8wTQXO9XqxIYnSrokKgL5ULbRBk5g5RfUIId7N
         cOjOGG1R1AHqIcJoPgw4G/sR/a6GwdnhPu1sxRwyQmLFmugI9Qbk4T2ZJ80rp9iwmHhc
         esbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761817315; x=1762422115;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Bh/NrdqFUpU9wVwB3r8i3vqn0tl54Ze3lOlTg9aA8Wk=;
        b=hmaOckHT7KG8eReU9qGw+bYP9q1XMsyJrWl9dCwgILfQjyjnvtndbt8aLUBPi2KJju
         IggFnNMqiSjkMMwxNKlbrquvT0jWl59qmo/V8903OkZ89ucDVP3NJuL732zBS8OKoT8l
         2eiQ6ruC+FHHHu777GZ1bE16ffDP75bNltyETGDoNOo3kHJ0q4AgpgDdK2l7P+kLGSVP
         l+yfcZS5kVdsal7+1j3gsSTbDXr8lHLfrkN85g4xPKt+cxM1X6x7q2N2TLBETyLtcdDN
         ipIz3ZZV3vSwsjUh3RAbJBTv+s1CeTiJZjoKLO4RYpENLsHwvbg9yPuh+uggnl0h6jef
         sJ/w==
X-Forwarded-Encrypted: i=1; AJvYcCXJtONPrdFcC8lF8W0VX67aD1X2mBQrPh41zMLv+ooBCSgkdNX3v6hcX94wZEaExKXk0yGe/ZTDxCCi@vger.kernel.org
X-Gm-Message-State: AOJu0Yyq25Jsh4gvpMwaakzZTxtxREh7FTTRrlmYW/Otqg0F22i3LsSs
	Zi8QLMUr5MBejlJjda0aiadgE3BTTIwfktjyWEQMTr4nJ7SiWSFo2F5feZAiF2n++BFXqZ3gWk4
	o7s/GemqrRq1715x077qkIfBLonC3EPXlYPBvoIITPywE7JecAMq+sikfn+VBB14J
X-Gm-Gg: ASbGncuOGEBxaY0/DB0IAzv5SDMhTYUy8m2IV+2WsqpkCNnGrcMny7Gj/fg3H+6GIsF
	pm63JdKnaO4tWhx29woxbD7m7kLomQZUCFEAdVJFzp0J87sEaI7/ND2sFpc8P86AcLgp+QFLY7b
	ztIGpBrjzMF7jsjJg7i166XvIPRCfDKEJDrwH1XqpjrGLqAhOkFFizWsXjujNo7SdaKsZc+U8Va
	oaeWbooyL8Vj9DPr0QEk0OUPy0jXEpSD5MbMNQ7inkZeyJGvhuIMcUcjWK8DYpipKTGgl1xG6Hs
	yBubFfLUX62ng+v0kVjMnxj01WJvGcpn0fm+fBx3brSk/FdZnGrnaSPB5vDSUhrsLi/tffBf4M1
	I2bRNzk7jtfhlpjkHOsLsIPQdA6sexqWkKb3v0FYPHpybhEbLDOrVB6tw
X-Received: by 2002:ac8:5d44:0:b0:4ec:f9c2:c200 with SMTP id d75a77b69052e-4ed15c4618bmr51538151cf.11.1761817314922;
        Thu, 30 Oct 2025 02:41:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEPSY2Bg5pdYdfgMg5cODIfPC2xkNzl0pPizTea4lv1QOx7SeLeYOM+cfOYw/kdroIHDn+x6g==
X-Received: by 2002:ac8:5d44:0:b0:4ec:f9c2:c200 with SMTP id d75a77b69052e-4ed15c4618bmr51537991cf.11.1761817314386;
        Thu, 30 Oct 2025 02:41:54 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d85308cb0sm1743866166b.9.2025.10.30.02.41.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Oct 2025 02:41:53 -0700 (PDT)
Message-ID: <8caa1cec-d881-4e77-8d77-be043f8d13d6@oss.qualcomm.com>
Date: Thu, 30 Oct 2025 10:41:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: Add backlight support for eDP panel
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251028-hamoa_dvt_backlight-v1-1-97ecb8d0ad01@oss.qualcomm.com>
 <b5d9d47b-7fb2-4ce4-9bc8-0d28395b78db@oss.qualcomm.com>
 <0cf2521b-8d05-42f0-aab8-35cd370e599e@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <0cf2521b-8d05-42f0-aab8-35cd370e599e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: iss0B4K_dPC1KDl9pv-btYVHE-AQ9ifK
X-Authority-Analysis: v=2.4 cv=UJrQ3Sfy c=1 sm=1 tr=0 ts=690332e3 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=gZJ2WMP_fuF1vj9OyeAA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: iss0B4K_dPC1KDl9pv-btYVHE-AQ9ifK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMwMDA3OSBTYWx0ZWRfXwfXYEGJUVN26
 SsX11oy536mw+C1kTGAAWtonVWDyFSDOuP31LNbc/47+MBJcqCbPBQDsjl8PnimQDwSGOVDht7s
 S3Wh8AmVNP/k8sNbQht3fSwuJ87cQv9ZMM586u8uCwm4Ns+QPGMhDUj3Tnw1Q1wMcSCvI0ZgBH0
 XSwILaS6nnt2YrYDKlvpyqfvtD/29VFjD+CraIrliu+9VKBjXEcZkuXaYHmA1ZFjMdAywGl3W67
 Qlbe9CRF2PnHc4fP6bPZc+IVNhO4qO3EjQK/uktW58qBQRZQcu/kI3dUsGi5XBRRH6RvmHWPKkS
 yVtU0N88+asreJkQOsHAaX5QOE9fOrf0TKXIvK+yrMcSnbAY+ALwhXIcruaJuw3+PL/X8jQ56t6
 oVhqVUBjvp0eRiYSfIgLK35HDj5I9Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_02,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 impostorscore=0 phishscore=0
 priorityscore=1501 malwarescore=0 bulkscore=0 spamscore=0 suspectscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2510300079

On 10/30/25 10:08 AM, Yongxing Mou wrote:
> 
> 
> On 10/28/2025 5:08 PM, Konrad Dybcio wrote:
>> On 10/28/25 8:04 AM, Yongxing Mou wrote:
>>> Previously, the eDP panel backlight was enabled via UEFI. Added backlight
>>> control node in kernel DTS due to some meta may not enable the backlight.
>>>
>>> Aligned with other x1e80100-based platforms: the PWM signal is controlled
>>> by PMK8550, and the backlight enable signal is handled by PMC8380.
>>>
>>> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
>>> ---
>>
>> The subject must say "hamoa-iot-evk:"
> Thanks and got it , will fix it in next version.>> arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 55 ++++++++++++++++++++++++++++++
>>>   1 file changed, 55 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
>>> index 36dd6599402b4650b7f8ad2c0cd22212116a25fe..fda1b3a3c7673be74832c27849231cba4bc1f25f 100644
>>> --- a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
>>> +++ b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
>>> @@ -17,6 +17,16 @@ aliases {
>>>           serial1 = &uart14;
>>>       };
>>>   +    backlight: backlight {
>>> +        compatible = "pwm-backlight";
>>> +        pwms = <&pmk8550_pwm 0 5000000>;
>>
>> Try adjusting the backlight value.. you'll find some funny behavior
>> near the max level.. which reminds me I should send some fixes for
>> some laptop DTs
>>
>  I tried sliding the backlight between the maximum and minimum values. It seems that at a certain sliding speed, when approaching the maximum value, there is some brightness flickering. Is this the phenomenon you’re referring to?> [...]

"maybe" - for me it was the brightness actually going down beyond ~80%

The issue is that the PWM hardware can't really do a period that's
== 5000000 ns

But it seems like this is no longer an issue since the driver now
rounds up to the closest supported value, see last couple commits
to drivers/leds/rgb/leds-qcom-lpg.c

Konrad

