Return-Path: <devicetree+bounces-233117-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 712FDC1F323
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 10:09:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 64A1F19C0CC0
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 09:09:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B29733F387;
	Thu, 30 Oct 2025 09:08:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JocMXsx1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gTT95cfO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64ED033468A
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 09:08:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761815317; cv=none; b=b8xc/TIQH/LwsFIwMeKQZOcsuqkT3AYDFpqt1jtxrKWucRN2lBvSzlWjkRk+IMeQUgEiHTo2xIcgw+XwPESeiW7NBCdfzxrU9KenOOceaQy//dEBR4KFjCcOngtS7sh49FubnWwdx2uQBNa2zb5GSeu0CVVwmY1qNeJYco05TkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761815317; c=relaxed/simple;
	bh=ZbUSH8YEtVpK+SB1ksdbnsza3iM7iPgVjadp9NMUzMs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OX2wXJ7TejVpZ8xuIdDLlChCZ0F3XqEWPkwMnFW7KZfzRcnlLx48rYlbZx2MV1s5TFPWBNmhTt0GF+cd/0OE/f48+oIlDYTcZCyg37jwwb1eFBwPDzGyNlXE3cYxx4tMiYdVfeqaXZYWWDqWSDIOKa4wWQXqZg3+GRyWZq7xlPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JocMXsx1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gTT95cfO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59U8Pdot570118
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 09:08:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XfUwVbPs51AL4l2LdxpZRB9YbMrAh0PTO+r90p+nVoE=; b=JocMXsx1Mnl2mZuo
	IEnYdS5aSXbBRlPSRX6Ne+0uvSEfhF6k0OWSJKZA14XD9b/j02RQ4wT25ugmSUj0
	7aoxyGrQUFxxgv6iA0mfY1OX/c+20/wRjJFq3vtBs2fNqOhdj0LaJhry757tB+mL
	9Gdfk7nqHYDWQKvGGFGZ+2/pSUNpZLIq6l/UCUfkmh3+2iPEHc28ljWoc/RlakwL
	T2DklDuNCUNhOaSZ3kHWuA7eggdgk19qBmVFwi2v91VC4jxGcvMfO+ZR4t5tgskb
	VzfRT69lNaS08mDEOU5F8djDjZZBkr9/0yh+uv1bCKmm7mOl+SQrINwJSD9sQeMg
	/P/nOw==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a3m0bk6ue-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 09:08:34 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b6ce1b57b9cso636226a12.1
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 02:08:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761815313; x=1762420113; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XfUwVbPs51AL4l2LdxpZRB9YbMrAh0PTO+r90p+nVoE=;
        b=gTT95cfOi1G8r0d6VE/LK8QU0iRmiWUS1UwOwMowuzXmzaofCKvX0IXGj0Bf2Vj+8D
         Y+ihRugemqIpDeqTuzxbQvfQAHjFoBWtsBfIg7XG+GLKoWQ+TmGBYL5GybaYGcCIX+mC
         UqSf1PyUR+mGT1oEr6NHi/GQgu7Vtsk7YA1ZYKr11RxQtlECWYU0Fxfh+gYzQutjCmQF
         m25FmpJDqb92VKfGBeRX7tY/bQmMVPbkzF5fg4QLFLe8TL8vKoO70d+TXR3eZwCd7Yjl
         mrzDRfZXwLXNakxe82CEexIx4HEsOEMQzEdxR4vw9+ebGBoa3pjKWxoFq9ZQrfXYvDDI
         Le2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761815313; x=1762420113;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XfUwVbPs51AL4l2LdxpZRB9YbMrAh0PTO+r90p+nVoE=;
        b=iHIO+DTsLLTKsDrYhbzI8EeP64/BNWlLXVVRcg1aZjNi2vuAp/2wt9Tvetnp8yxBvt
         kXwMNR+vhUDEMd8fOjXHxMyvktHsI3Xt1sjCrA1F1Cxv93AGqpQbpGDXmf0yFu++udJG
         3F8uGrk1nTvAxznFplDsPUS40hKf0Mh4BcgvBQ23k3fjyhrXI3eH3m5DLTuu16DYCt19
         gvQCTwFiDOGtukSxpn3ge3MfRigKfHVmmN6zXlSDKd4Jeetx+Gn4cKCGfhdiFQ7z67np
         EozheWKs6DtIr0784ZnVBF6csd+Q0dVk9V2PH6ScntmwUMD44chFkA/i9RGSzRP3w9dq
         yxyw==
X-Forwarded-Encrypted: i=1; AJvYcCVy7EtS9DuUm7H+oleNqECIZUVL6vHgmBNy06STphIhQs76iEX6Ns57Vj24Sxn2St32gm1EzLzRNOde@vger.kernel.org
X-Gm-Message-State: AOJu0Yzpd3GFXO8jeSK4busGuDdQ3ZkovyvQtMN+MbUD0/nx/QVyvVND
	1bC+ax4GhKtSfIYV6kLTMGsStT54yFuPsvRTSfJS7XFtpDpjyuhq9m/e15fDG+lA0/MlU2xETGK
	UYB4TWDgECpvxHlSI4+jaF2aX98HUEd47Bxtvd2nOvK7yNf4dk3YI4y7vpGbE4QUrR9NDmRWr
X-Gm-Gg: ASbGncvFCQtmArH7iivTDEOLFSCGKyHfB6cT2mQ4beQQdVY42a/yRy/O1PSRzi5DPy6
	72z9eapShkb5yeN/U+/V51jBz3DgT5UVJrBUw5LuUalWcJmhPmI8bXA84EV9RPESW3kF9+J6wef
	zWC5NPOqafOXZPrfsBplYXusbWdKcZg8472iFIEwmBq/N2uB7d/BOgR2huyJlWoSOdC5ULjJG9y
	wMLXVfw80u/dgEmQI5+5xh9lxF+NjWgvKdxP/D3vfCfAELCqHhMgSuGNr+AnNY4Ae47fJzcQX9y
	aSxfjY1FxEMlBcJbIyXp71p82MFVcEE16y2l/umLPG8SMvtEA8Saa7fWvTheSBOJzg5oQxHTEgw
	1T7w+ZNo0IWdYyhqbCQhQgs6TF9gn1aOZTdHjGl9DiNf8fNy26UVYk0qvdRKLMSS10wCllQ==
X-Received: by 2002:a17:902:db07:b0:264:befb:829c with SMTP id d9443c01a7336-294dedf483bmr67053205ad.9.1761815313030;
        Thu, 30 Oct 2025 02:08:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFu3xXjROAG0AbuxZKF8uMAd203m14ukKjCiRnjsSl7vJd3tLAM/xmr4opVRmTBwC3GqV5ybQ==
X-Received: by 2002:a17:902:db07:b0:264:befb:829c with SMTP id d9443c01a7336-294dedf483bmr67052785ad.9.1761815312406;
        Thu, 30 Oct 2025 02:08:32 -0700 (PDT)
Received: from [10.133.33.50] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498d0967fsm177213595ad.26.2025.10.30.02.08.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Oct 2025 02:08:32 -0700 (PDT)
Message-ID: <0cf2521b-8d05-42f0-aab8-35cd370e599e@oss.qualcomm.com>
Date: Thu, 30 Oct 2025 17:08:25 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: Add backlight support for eDP panel
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251028-hamoa_dvt_backlight-v1-1-97ecb8d0ad01@oss.qualcomm.com>
 <b5d9d47b-7fb2-4ce4-9bc8-0d28395b78db@oss.qualcomm.com>
Content-Language: en-US
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
In-Reply-To: <b5d9d47b-7fb2-4ce4-9bc8-0d28395b78db@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: R0SXZdy7RfiR-2KVBWW1j6Fg72yuntFr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMwMDA3NCBTYWx0ZWRfX4eDmA/cbb66T
 9yn4lPasgEy/WvN+vVQZU1kgiqYKuQK/pbmC1cCQs71PS6Dtnh81J3cbgqomkHhotxzVkMJHjYn
 2p9ItfR1TGOZsB6WlQjH89MNoBDT0EHLMN+U+xiVeHUo85ic8PnU6UHqWwARYlUdNEHqfLxBW40
 d6maP37FGZGxcG+1L3pZB3alMyBf0Qi59yfYQGizcIp49Tl3q2TGGunelj9zPsdYWhEu3hNfJXE
 jbj6mi+tMkrUX645zrVRc5UpoahnaBPsLgweR23obBRvjqYy9LI2btiUHFVeiWXB05XmAJi/lmG
 AsJWqbA1lSZ0r9eSYVktGBgpzm8XLNyh3WpjPUY0js814HoMnFB2kmVz+03aPnRfGqfrYhk3lCp
 V0W3lqmn8HU4bMo6nkp6ndQYsv82Xw==
X-Proofpoint-GUID: R0SXZdy7RfiR-2KVBWW1j6Fg72yuntFr
X-Authority-Analysis: v=2.4 cv=YLySCBGx c=1 sm=1 tr=0 ts=69032b12 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=81pMHEbCwSLrc7DcvnsA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_02,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 spamscore=0 malwarescore=0
 adultscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510300074



On 10/28/2025 5:08 PM, Konrad Dybcio wrote:
> On 10/28/25 8:04 AM, Yongxing Mou wrote:
>> Previously, the eDP panel backlight was enabled via UEFI. Added backlight
>> control node in kernel DTS due to some meta may not enable the backlight.
>>
>> Aligned with other x1e80100-based platforms: the PWM signal is controlled
>> by PMK8550, and the backlight enable signal is handled by PMC8380.
>>
>> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
>> ---
> 
> The subject must say "hamoa-iot-evk:"
Thanks and got it , will fix it in next version.>> 
arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 55 
++++++++++++++++++++++++++++++
>>   1 file changed, 55 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
>> index 36dd6599402b4650b7f8ad2c0cd22212116a25fe..fda1b3a3c7673be74832c27849231cba4bc1f25f 100644
>> --- a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
>> +++ b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
>> @@ -17,6 +17,16 @@ aliases {
>>   		serial1 = &uart14;
>>   	};
>>   
>> +	backlight: backlight {
>> +		compatible = "pwm-backlight";
>> +		pwms = <&pmk8550_pwm 0 5000000>;
> 
> Try adjusting the backlight value.. you'll find some funny behavior
> near the max level.. which reminds me I should send some fixes for
> some laptop DTs
> 
  I tried sliding the backlight between the maximum and minimum values. 
It seems that at a certain sliding speed, when approaching the maximum 
value, there is some brightness flickering. Is this the phenomenon 
you’re referring to?> [...]
> 
>> +	vreg_edp_bl: regulator-edp-bl {
>> +		compatible = "regulator-fixed";
>> +
>> +		regulator-name = "VBL9";
>> +		regulator-min-microvolt = <3600000>;
>> +		regulator-max-microvolt = <3600000>;
>> +
>> +		gpio = <&pmc8380_3_gpios 10 GPIO_ACTIVE_HIGH>;
>> +		enable-active-high;
>> +
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&edp_bl_reg_en>;
> 
> property-n
> property-names
> 
> in this order, please
> 
> KonradThanks and got it ,will fix it in next version.


