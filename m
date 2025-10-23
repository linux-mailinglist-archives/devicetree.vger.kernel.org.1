Return-Path: <devicetree+bounces-230366-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DACD0C01C11
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 16:27:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8763218830A8
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 14:27:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA27B3093AB;
	Thu, 23 Oct 2025 14:26:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="L8K8R2Qz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F72931355B
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 14:26:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761229603; cv=none; b=VoaLOixQFh2XelqZZrmMez24S9YxnIphbtNCiHxjpByowXQkyHjrdxmwIRmVKyv2B3j2dTqjzIRCqZzGuq8B1oo9GXMUWQtE/KtuhSJUCLGjWdOS5Ql9YMCJ3wnlt5hELFtYGqbPN9qbC1C8Gp0aa4KceucygHkIIBMXhi3IBWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761229603; c=relaxed/simple;
	bh=6Dh7Yg0+vP21f+60Nq7W/bN/03nnTxIu+SP1Lecg8Ls=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YuXvhqNQ49TLJTjSF7XujGnBsQkS85bR2rcFRQmUeIAKpJHvw9nRcXM2pFLXumu+hkUfbwLtjwEWbrcbbzdS/gBoo+b6BmGc845mf4fSV30Tex+wikYAacdiTurkvXEnHeGGcoUKfOOiHa2ozCaYQ7d/NogxoppgEC63jF60DcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=L8K8R2Qz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59NCKoUK022586
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 14:26:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3WpAc+PUCG+PgTasZqEo6/+en3vqm4BKm8HG4lD3pyk=; b=L8K8R2QzWt5ejcux
	w6dtflrM4NxCFS6nDJqWNVleFx9XEbpxOoCma+8UvbOVsAG/ZbXKXNJr/OmdI+in
	N2E1QttneS0PlC1XkLkfAStjbqNFyBppQ+GfGEdUS7GSc0Kcg+SvkgTVoe1sk7ni
	coOp5rgkg4l0GJ15U2xKRqqbzx1fU6udTIYUkshywybrw2QUNyS10CIVrewIUKqF
	rxEjSZ+aRLsJyT20Ch+41JcoVB4Ef4rzyyI0xmv2UVMgXaxQbD4n3uq+Aob5ygP9
	ZN+54t4jgDgFNizM6y4ZENOSjipGQFwyF7vjLJwxmOCCSqlTPkXU/K8LqYcGQ9c6
	feAoJg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49ym9j0bm9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 14:26:41 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4d6c3d10716so1430091cf.2
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 07:26:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761229600; x=1761834400;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3WpAc+PUCG+PgTasZqEo6/+en3vqm4BKm8HG4lD3pyk=;
        b=ichEaFeqNT9fDQL7hjrDvuZNFmRRcVMbRPB5jXep4JIctANPaH+xTbh2X79lfz9t62
         wDCXAM4+yxpzRU0JWyLTgExb8rEuPQI3ut+Fgx6zDx5E1eiWxcihhj8PFD6ED+Av8QYX
         nKK3WKlMKiNtF53wiwHH5smSxvwGsQ95Ck0STgBEEi9JsUsL+9bhrvz/czWkk4dHMuHZ
         bGzoAlWwqJh4hjT75g7MgCQHXnARCLYOsUwDMKJBbNsDNvn33WYnH4M4/7ioH4PbaLq8
         ByxrQ4/UkYG4zSK5DNYVF2tz2QW9r8rKf7MWALlpi2SChBDnEha5xQRnKuE/YVYepkNZ
         c41g==
X-Forwarded-Encrypted: i=1; AJvYcCU+yNwLk6Exb2NQZRtwAKVvJRqZKpMM9Ex9SKbVKcnrBSLUZ01ykLmPITZJgFhMDqMbla0spT0pmCIj@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8c0Z4U1VFAbNDoDe9LtB86URFeZseZdVu1jEPzOZDnWJVuLAt
	EcXyiQSmXfbIwp2EQgEt2g93/sqa5V0eBdT5iolSbJ6Sj8AtDkKmKAXUN9xLpJmB5iImJubqRc+
	/YWCFKMU2KedY4YHYbJULuov0Xdwc+9y+O/iXuydZC09JaN9V14pe0C60To0tmjHf
X-Gm-Gg: ASbGncsbQL0RrxfPKDYDXxYOzeCB3w+k61GD8DXnVK7eqOLqjkXhve2m1o8ibdf+WqP
	FM1wGmScLu2gcR3MbM+LDZ6+h0E+MmZKwwxEMvlpn2bBo8OFLOb9eldrKy9ADu/qIvvQHI9V5W2
	vImdSkD9tkVZS61SVwdp2K4YCv+bw3N8UVvsUrQ+iTjjzw1Etqo2yMcpfKa7nzNnDhckhFwlKUu
	Ohmxiej2k4i3typcNtfQTM0oGUATUHsA9NIUbxv6XwE/US31Ui/5AgCJtxS14coqBCtdBP82Z5e
	2Vx6v1t9A9/uwh2ZND+F2bsGcATQEc1jfk0kfPn3/P07zNtyHmGxam+BaSrOfCminqQTPsSh0sB
	nNnBugErSprsfn1Wg7evuenabRafxozzHfxdLE+/fyUJJMp7p9CzjW3UD
X-Received: by 2002:a05:622a:1b8b:b0:4d8:8b29:228a with SMTP id d75a77b69052e-4ea116853e4mr97534761cf.3.1761229600074;
        Thu, 23 Oct 2025 07:26:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF5ZP14A8wZovVdz+EeQ60VU6uSydX3ml/L46LeJtOIXp78YopylnEKIB1ItmdcpXxyu8VsNQ==
X-Received: by 2002:a05:622a:1b8b:b0:4d8:8b29:228a with SMTP id d75a77b69052e-4ea116853e4mr97534421cf.3.1761229599431;
        Thu, 23 Oct 2025 07:26:39 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63e3f322e30sm1795042a12.27.2025.10.23.07.26.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Oct 2025 07:26:38 -0700 (PDT)
Message-ID: <a58956a3-b9cd-408f-98af-7ec31f2277dd@oss.qualcomm.com>
Date: Thu, 23 Oct 2025 16:26:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] arm64: dts: qcom: ipq5424: add cooling maps for CPU
 thermal zones
To: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: quic_srichara@quicinc.com, quic_varada@quicinc.com,
        kathiravan.thirumoorthy@oss.qualcomm.com
References: <20251023043838.1603673-1-quic_mmanikan@quicinc.com>
 <1039aea3-47c6-4205-826a-636e595f127d@oss.qualcomm.com>
 <053cdafd-1abd-4f1c-8f48-9da38591fcaa@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <053cdafd-1abd-4f1c-8f48-9da38591fcaa@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=CLknnBrD c=1 sm=1 tr=0 ts=68fa3b21 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=b9mZcHlmi3zSiLOk7sAA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIzMDExMiBTYWx0ZWRfX6P1tUGjrCMzs
 HRO+Cmi7g1DmKQWscy/TG7/Vlo6+B8TeX9buDBny5torIkl31BTvAGmneboRnyjyLmw+wJXv6fX
 Ih1njMSwv9U2Rv1RxINep/rE+kV8rUTF7is/ccdE0Q/uJv4ETBh3TRzd+l45QJKHyAZK2ZVir1S
 zaXFqyoGpCvkXIpv/7xeAa3bjcpoclOcnvYHrM8FcRh1Yv0MlpAd8zM18OZX/LlEYN+80n1I8/1
 wzkgY3NswoEhtccsT4dM0X7PHNLEefBhSPI0/HgH1TBCfvinUKEWjuU/2lYLpeEPBzJvVdWEIqy
 WDIoP0ZujyaDiEZsx8kMOcuYM667zRFGbQwpOQlm4NYdKkgeD0ItXi5K8jCFn7l1hWiP68AP2Oj
 0pcCPGWyMoY04qwpG+HbAEYz/43XWA==
X-Proofpoint-GUID: X3D_5DkmueX6MGtOIlBN5Vfwzucol3RF
X-Proofpoint-ORIG-GUID: X3D_5DkmueX6MGtOIlBN5Vfwzucol3RF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-23_01,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 spamscore=0 phishscore=0 bulkscore=0 malwarescore=0
 suspectscore=0 clxscore=1015 impostorscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510230112

On 10/23/25 2:21 PM, Manikanta Mylavarapu wrote:
> 
> 
> On 10/23/2025 2:09 PM, Konrad Dybcio wrote:
>> On 10/23/25 6:38 AM, Manikanta Mylavarapu wrote:
>>> Add cooling-maps to the cpu1, cpu2, and cpu3 thermal zones to associate
>>> passive trip points with CPU cooling devices. This enables proper
>>> thermal mitigation by allowing the thermal framework to throttle CPUs
>>> based on temperature thresholds. Also, label the trip points to allow
>>> referencing them in the cooling maps.
>>>
>>> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
>>> ---
>>
>> [...]
>>
>>>  		cpu1-thermal {
>>> @@ -1254,18 +1269,28 @@ cpu1-thermal {
>>>  			thermal-sensors = <&tsens 12>;
>>>  
>>>  			trips {
>>> -				cpu-critical {
>>> +				cpu1_crit: cpu-critical {
>>>  					temperature = <120000>;
>>>  					hysteresis = <9000>;
>>>  					type = "critical";
>>>  				};
>>>  
>>> -				cpu-passive {
>>> +				cpu1_alert: cpu-passive {
>>>  					temperature = <110000>;
>>>  					hysteresis = <9000>;
>>>  					type = "passive";
>>>  				};
>>
>> This means "software will start throttling the cpufreq at 110C"
>>
>> Is this what you want?
>>
> 
> Hi Konrad,
> 
> Thank you for reviewing the patch.
> 
> Yes, the intent is to initiate software-based cpufreq throttling at 110°C.
> 
>> Also, is there nothing like LMH on this platform that throttles the
>> device way earlier, without OS intervention?
>>
> 
> IPQ5424 platform does not support LMH.

Thanks for confirming

Usually it seems like the trips are ordered by temperature but I don't
think there's a strong preference

The hysteresis value is a little high, but I'm assuming that came out of
some internal tuning

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

