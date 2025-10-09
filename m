Return-Path: <devicetree+bounces-224839-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 74BF6BC8485
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 11:22:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 52E661A6172F
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 09:23:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 503DE2D5922;
	Thu,  9 Oct 2025 09:22:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VnUtvOoY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF9312D63E5
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 09:22:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760001736; cv=none; b=YTUk4H9PLyW7orjOGjzrkW5hVuzLSIUxDNLmIO4jjOG1zWT3G5/KH8TTsj1n2BMouihgksM2RfvoIjNkC9MbQ2KPN4Rl4Lmh6ChPBAUehjf0WcnDnQ50haA2oONItd+eicogp+q6QqTcdE0MgnXO7HbkiDygnAwDIkF/VHgx2Lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760001736; c=relaxed/simple;
	bh=m7sGX8LqCBcYJzEU1J2asHkmcl3RgvVNGFVvSyqxM80=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KuzDjPqzSzIMVa2rzSeomQv+SlrKsOSYdXFYltuC8Fx8WymPDI6LSm8p1J1JKQfnlgXE0XEfJTxYoecBhsF3Wt1EiIUu+7bQAXFu5TTRMzDadm3fGshw3hLxejdh3bPfS1zG6Rs3Tg2tqEizd90OZ7ZUsRlx4qP06qkqZ/ZxF0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VnUtvOoY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5996ELSB012393
	for <devicetree@vger.kernel.org>; Thu, 9 Oct 2025 09:22:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3T3F6rzbdmMoNWAMnngme3yze4tyxfjIoIeOdL7FrsY=; b=VnUtvOoYef6BeyDh
	OTKFhLq3V9F1shdLdIxD8fVMC0o1z3NstclYDBqMCIa9xqApxl5ZnvvfcGw3rRbJ
	4u+iRhtnm5EwIaa6N48mDdYFeq7Y46G/0MhaEMvncRhLyTqFMPPjEopLkN5UTmvw
	xHUXJ8Qoe0vYCkDQW05hrZW2XK5rwxsz+EFGE0jIsIpwgSVM6mGUf1aLSbs8xX5D
	b6Ei8IzzW1+80we+b9r1oTPsGAqIDSQTc8E0RwJ9E40IPZDZRiGIdZK3wccJkLLa
	LqdnQ+XdphUDyLpiVTgDE2mZ4aeL3p8B8g3Z3V7OeqmNj8Dx78pfYHB/X3lbKM7E
	nZIsRg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4kj85f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 09:22:13 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4dd729008d7so2869581cf.1
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 02:22:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760001732; x=1760606532;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3T3F6rzbdmMoNWAMnngme3yze4tyxfjIoIeOdL7FrsY=;
        b=TNWZiB8g6b8swq/pLzQfENn0msx7HxSnLJ1ejTLC1BgFRyCtTa9Z7SRcl4xGJaK88l
         h2qimx+1wVvFZOKqhDVh1Puf93A2wp1nR8xCaZmY/lcJH4m2dxw3d5V5+NjePEgT+7m7
         bD7lLuOVT0k1XCwKSrUqmTTdS1+1m18hvcSTa/aTDAUk2e/uPSc+8p2U++kubMnh22tJ
         hNEFD92SKy6tHMrTzMsxTxNyjwGIVNrgmE+yMhV6k0gNIxep3bMfFCO4ugxjDiygy+dN
         68SOXx5ukG8vtcML540gjaTnalLjlK1tYM9XDu8DS+T8TE1voNQzV3ax35qK13mQcHje
         XvUQ==
X-Forwarded-Encrypted: i=1; AJvYcCUJESxJTNnV1ZfZV1vHf2Ztqdgi44MaLDHB4XNd0YfGpmPOQFUvnIkT0YvgX6gz1vOzG/j3wG86++G3@vger.kernel.org
X-Gm-Message-State: AOJu0YwXWm33Ste0vuseFmHTNOgm73e3TgKkm9uOg/yAd9dlMJkbMNo1
	Zikqnn39tgZOkldjHLSPyuBjgvkUB4CCy7Z8Cbvvsv7Pp/a3SrQ+RRETZQc5iuBF0ZCZ95X1lzp
	5epoTmFzb60fowyi3Wq52NQZfTNvYypDfZ6FTO5LKSseOxjuUFmV3tEUNu+TJ2+mD
X-Gm-Gg: ASbGncux/M/ugNsnNWSm8VN0n+EQkFxBODsr+qIyc0lHFjUAv46RpoGtZvqimoeix+8
	mcsMBGIhAeabF+XQDw54kxmwzSQ/67oNRupemTRAajslsi0Ayy9XFw6VELecFjfX/7O22HdGkOk
	y1ptC0yck+fw1bJGrYZ5huJSb5J2F7ANj+gZMuPCtrkMirpDvHWEKTn7NSF4AD30dWx1Vzugq8o
	Q2RFqmrHjy7MAjGRNK18VSaAbpolUDqV6eKD6tkPpVzTWSMgELgcdmeQDWacHRXt5xvDhq9641A
	dtahYv71WvaZpEhM1zjFLrB76J9g3tjqO2jxSqbX2dU1qTor+qlXNYvUSN71wbdKc9parJRVPEG
	COM2W8NT7cHc6MEGAWaBT+WwtuPE=
X-Received: by 2002:ac8:5991:0:b0:4dd:1a2f:4881 with SMTP id d75a77b69052e-4e6eacb81b2mr64073881cf.6.1760001731551;
        Thu, 09 Oct 2025 02:22:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE2X7icy3lg+xeOQgJOky5fWzmyU3gLm0qGfVSTXdz1EXkq1QfNAExgoimdotZtxhJlPB+i0g==
X-Received: by 2002:ac8:5991:0:b0:4dd:1a2f:4881 with SMTP id d75a77b69052e-4e6eacb81b2mr64073621cf.6.1760001731041;
        Thu, 09 Oct 2025 02:22:11 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-639f2d60816sm1934249a12.0.2025.10.09.02.22.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Oct 2025 02:22:10 -0700 (PDT)
Message-ID: <8e452e51-3a95-49e6-91e3-53aa46fcfe2e@oss.qualcomm.com>
Date: Thu, 9 Oct 2025 11:22:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] arm64: dts: qcom: qcm6490-fairphone-fp5: Add
 VTOF_LDO_2P8 regulator
To: Luca Weiss <luca.weiss@fairphone.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250930-sc7280-dts-misc-v1-0-5a45923ef705@fairphone.com>
 <20250930-sc7280-dts-misc-v1-2-5a45923ef705@fairphone.com>
 <ac1c0d1a-36a9-4542-b879-06c017f7f2c4@oss.qualcomm.com>
 <DDDOF3F8K5WQ.FTJ0F6E6DLPG@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <DDDOF3F8K5WQ.FTJ0F6E6DLPG@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=dojWylg4 c=1 sm=1 tr=0 ts=68e77ec5 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=6H0WHjuAAAAA:8 a=-BH9GnAZmLL9hDugqCUA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-GUID: 6DzsjOEXRHwQO_177BR1DcI8cpBcurSh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX2qbt5VJyQ7rm
 oM0GSdeT7Fe4ahpAUgvWXqgX+dgUDcOEgJHtZE+t7TFOuh1HX+Jz3SKvY4aKe8COhOblXIY+G2k
 67dUAYgTnfmOSV3CQIw9QwJquy96Dd1/Kb3IVoIcir1GHuet0J1LwivLUxkqqQq5+jgKNGrkxum
 Fa2ftIibdwWFEx7O/GsWScD/IN3S26Sbf8uMx8zgp5AClqlwhNlV8E6/qwXTiJBznAQcbsfrf0E
 5ToBjaAF7xpJvsByRunFIZplvTXQ6NsyKBnKFfI1DEzosocDJjK5LxLrBp3eKxZMrZdT//35hpK
 U3eEp9uzVGRikjOldmXfH1t0J4kd1I9owIT+EjMkgTp4lOGlhK07YRVLM1034uOVIEAmz8+wNvz
 IzCmR6ERiXmcfHUikD7dNGCdysxltw==
X-Proofpoint-ORIG-GUID: 6DzsjOEXRHwQO_177BR1DcI8cpBcurSh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-09_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 suspectscore=0 lowpriorityscore=0 adultscore=0
 bulkscore=0 spamscore=0 priorityscore=1501 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

On 10/9/25 11:16 AM, Luca Weiss wrote:
> Hi Konrad,
> 
> On Wed Oct 1, 2025 at 10:30 AM CEST, Konrad Dybcio wrote:
>> On 9/30/25 3:57 PM, Luca Weiss wrote:
>>> Describe yet another regulator-fixed on this board, powering the ToF
>>> sensor.
>>>
>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>>> ---
>>>  arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 13 +++++++++++++
>>>  1 file changed, 13 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
>>> index 36d5750584831d66b4c2faf6042e4cbb3274eca7..0a64e5721e092d1f3e4bb7329335704eee567761 100644
>>> --- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
>>> +++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
>>> @@ -195,6 +195,19 @@ vreg_usb_redrive_1v8: regulator-usb-redrive-1v8 {
>>>  		pinctrl-names = "default";
>>>  	};
>>>  
>>> +	vreg_vtof_ldo_2p8: regulator-vtof-ldo-2p8 {
>>> +		compatible = "regulator-fixed";
>>> +		regulator-name = "VTOF_LDO_2P8";
>>> +		regulator-min-microvolt = <2800000>;
>>> +		regulator-max-microvolt = <2800000>;
>>> +		regulator-enable-ramp-delay = <233>;
>>> +
>>> +		gpio = <&tlmm 141 GPIO_ACTIVE_HIGH>;
>>
>> You may want to define the pincfg/mux config for this gpio too
> 
> While I wouldn't say it's not good to have it, there's plenty of GPIOs
> that have no pinctrl for it. Downstream doesn't set anything for gpio141
> either.
> 
> I honestly wouldn't even know what the 'default' for a GPIO is in the
> first place, or could I query the runtime state from the kernel? Is
> /sys/kernel/debug/pinctrl/f100000.pinctrl/pinconf-groups trustworthy to
> solidify this in the dts?

I normally use /sys/kernel/debug/gpios

> 
> 141 (gpio141): input bias disabled, output drive strength (2 mA), output enabled, pin output (0 level)

but this seems to be formatted very similarly if not identically

Generally it reads out HW state, via (among other things)
msm_config_group_get()

Konrad

