Return-Path: <devicetree+bounces-247057-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E9234CC3606
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 14:58:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5350A3028FF9
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 13:56:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F4BC3A1E6A;
	Tue, 16 Dec 2025 13:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Q6eAv7Ph";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OUp0X56Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73788346AF1
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 13:56:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765893381; cv=none; b=dl6a1v+buslASHo/luQfRKYNUa10mDiM7lhxNYTLcSVU9XsVtUbtiwu6pQXcXWSStA+rVkjj02lUMtcRi+40yN1X6OOEBDsIllMbfU4+CNwIf1gMYqmzfW+wLxRcwco8ojPxsIZnipnBptecojoZ4mvEd/Uc3OozUWTNVYxD3DA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765893381; c=relaxed/simple;
	bh=8FjMM2DD5knHDvTobbcP/zz0Bm12uALhLS7xCXUSXdQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hUz7fpTyqW2iQ66U6EAKqDZ96qeqUjt2rGfp3Hun2Dcj+2HDEl/zlCS1vYy3kLc9VS6Qzx/5FTLnk2ThkSYTK427MudytM0gND/IWn0axC38X27FEoQTyiYVBLLbuCrjkvPNuk1yF4blK/QqMkJrU2OiGZneq22zfU/o+ab4Tfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Q6eAv7Ph; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OUp0X56Q; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BG9Zpjp3349309
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 13:56:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SbhsZ0OGYPgaad9zJuJhqIqA++MwVqQPiy0O3X5duD4=; b=Q6eAv7Ph+ff5uKYX
	aeCHya+aAFzzUA5bTCYx0/vsLjoTlUokkiQEHjl5/5ebeks95CF3+Kd3wSPqSKbQ
	3bfNvGZFYJkgdRheGV5AKTNtSSBkq+Rj1VmLqz9s8qASVpJlwNNkCXGIMbZ7wD3e
	EumpHBR2J+bJvE/4s+OJWZQQiD0mpW022ga2C+RBXq1qyI1kN+zKDSRVEGYunEyz
	rvpLMUbSK3xds7gLRoM463uYK/hoR/OmzSdVxLtU3K/afMOsEfWjmr2vm9f4byks
	jALM2/JAOryNaxb9OGJ4MRN5K+NYOhU7vtUJg5hEXT5BHrSWO5wKN18A++Inutls
	2VA7yA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b34xd0yk6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 13:56:19 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4f1e17aa706so12573801cf.2
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 05:56:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765893378; x=1766498178; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SbhsZ0OGYPgaad9zJuJhqIqA++MwVqQPiy0O3X5duD4=;
        b=OUp0X56QytV/Cb8kk2gE4mQaXcl3RooRqHUbkgCRcejRF/KBlZ/LKJxd+Vgk0NZop3
         qGtqjK/MRu793rkgwhYoo4SbsXKU6CBX1wjapPAfL7fxT2wibvGkp+Y1xmgcMpFGPClW
         iSVtauja4r0acMp4oIBCCPdgW6r/UWqEcrP+dCFDmOQi1wemxEJrmeW5XPTff8Y/HDZk
         HMK31kVY7opUekdvTUYAfXJNXlM3lec5qRF8eGsmA59QxFmQIWRCZF7T5bg0S4HZwJ85
         J5JyTH9ti2PuW+uDJIpoPC8M9xZdxa/2vPFk2md0qhtIyo71GVnWqmHLNnaAI+F1XSY/
         GccA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765893378; x=1766498178;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SbhsZ0OGYPgaad9zJuJhqIqA++MwVqQPiy0O3X5duD4=;
        b=jiITvfV23U/oBUyoGWFWSBbM1HS95F+lJaon/392/7zxB1DoG79ZWUi9TAVz/crO5W
         gAXZScmhwz7uHwCWRlbiR9X2Hs+eNfMAAQl8zHLDdJX3P8dzrbqot3ajTnalImr9+qy6
         dMzXQMDf0Z3fw9timYOi/idk5nX5KxxnouDkDY3kh72U0zkjRfS9UKjINBYkWHk+0ZPd
         zV01Dgw7Fs2EuWv76o3ummiP1Quz7TP4ITKKW3JwQwqbe0GxkFm5bfc/jlD5BKm/rPxF
         Wbb0B477DLexvtyi+XciVm0twvJ87KBWGKzojL9/DTZsmtW43BtTyHgPH+oXV8j7FPMx
         mmgw==
X-Forwarded-Encrypted: i=1; AJvYcCVQK/qLroaH1jEqFcXo9O68nGGsB0Z+HavOHqWDdfNYAcYOq3kIQD2xflkB2sjQS+zBJUCYzOQ8VkAC@vger.kernel.org
X-Gm-Message-State: AOJu0YyE5qKPBqIcWJXUHUJbDXBCD0+n547qAwBwMbW/M45taXdWPTas
	OQ1eAo/7uKWxKiiGUUL7+DO0psXxP+LlLuLNKWwZHYmLwKvkwcZCBSNW1n1WwmVyNAITL8JfxSa
	vsiLNZgBe0TY5efuQhleG9MkmKWBmPYYGbTAyo8IBeTnzF5TEfIfqgJRB0HghPlsO
X-Gm-Gg: AY/fxX447AmC7qczm+kyljbh4k5peDR001P3TbaRMPuyqa4X6WXGOi9Qg8Qi5qcohWY
	wbruXDV1dPl7r/3Qp9KOigOZnEiZazvnK5MhlgoJzpEancidGBnhnHoRvYdp78xJPRhs24ctM5D
	c1iAfUCXGFX0PP/jTM+yVeT8WUPDhNHCKL23RKTvB7ku24j5dxXqM7M0H1xMbLNYCws9JFEe7Pb
	rOvXG5f9kUWGTmOKO3/yFQdto1axccETP1vSwrEIsVhR+DyTXUXv7X5eEZRf4bhFPrdLGNUV7Mq
	kHYz/n04NOecxufYZY4hBmRU4h46+iPmv8KDanMHQ5/jM4McJxgKqVvU2Iqrt2IQ8thtWlu1PI3
	HjKqgf645XAEp5WKr247o6dB/SadCWCSHHWlq3ixRO9A9cG/QZxhLYsii74HoSzmHAg==
X-Received: by 2002:ae9:ec15:0:b0:8be:7dd7:f041 with SMTP id af79cd13be357-8be7dd7f178mr28298585a.7.1765893378357;
        Tue, 16 Dec 2025 05:56:18 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGePisB4XYZbY+ZncYC+wZkSePP6j5Z8Hy2GQUKQW+33GwQePycCDqs3B2BjhcozU4/kzxU7g==
X-Received: by 2002:ae9:ec15:0:b0:8be:7dd7:f041 with SMTP id af79cd13be357-8be7dd7f178mr28294985a.7.1765893377546;
        Tue, 16 Dec 2025 05:56:17 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7ffde57adfsm103712866b.1.2025.12.16.05.56.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Dec 2025 05:56:16 -0800 (PST)
Message-ID: <341012f3-18bd-4f96-98c1-f964d1fedb8f@oss.qualcomm.com>
Date: Tue, 16 Dec 2025 14:56:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/5] arm64: dts: qcom: sdm670-google-sargo: add imx355
 front camera
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Richard Acayan <mailingradian@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Tianshu Qiu <tian.shu.qiu@intel.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-media@vger.kernel.org, Robert Mader <robert.mader@collabora.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
References: <20251211014846.16602-1-mailingradian@gmail.com>
 <20251211014846.16602-6-mailingradian@gmail.com>
 <wwpqaecvz42jopgaboasbh353ieelctpvgo3yj6y5tnxoem5oz@j5sbx3yxntot>
 <aTtkwQb2gOeWAFuv@rdacayan>
 <d7jcawzugobqern6zlo5jwcnximtsroxywix53v2yp2isvzo5r@ymxicmgfjmzq>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <d7jcawzugobqern6zlo5jwcnximtsroxywix53v2yp2isvzo5r@ymxicmgfjmzq>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE2MDExOSBTYWx0ZWRfX/LUAJIo7ABwL
 qqty8oM1nv/Ao2nAmzksFy5WRlTxKY16WH4O6d9/eXdTiZYENZq9ngHA/wIxJYGeVV+UdmYZ67z
 F6hLkfnX0kfTcZBq3EmP8LYu4BzNEcGmu6Z3x+jZVHZ6ICOUjZ5MYUio48Bf9Tqh8xQfCz6+Kh3
 h7UDxDNz7h1LQ5ThUf0lMgYkcVGmZnW5Iy9+bNrfj+69i6uC5K7juPP9J3/cYFW3IIdbzxqPHvG
 u5TEhK5tg3jRR3KODPQRZylIh7mOPGqaQyPmYrL3sXV8yqWQ8/IDlN4pCqwRd8O2R5UOIy1r4u9
 V8ZjAxGJBVK/TvHMhVBhzGQH2JZBkZ3CvdgHCt4S2ixIjHzgjXdkjDkUPA9FqhIC4W0fX4sicUN
 I1F52Dpf/ixwP/cpTwB/LhgsuKa+eA==
X-Proofpoint-GUID: bjIf1o9e6_CIq94F9njWNz__xPf8GPVU
X-Proofpoint-ORIG-GUID: bjIf1o9e6_CIq94F9njWNz__xPf8GPVU
X-Authority-Analysis: v=2.4 cv=T7mBjvKQ c=1 sm=1 tr=0 ts=69416503 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=QX4gbG5DAAAA:8 a=pGLkceISAAAA:8
 a=_D9cum97ibiHH1HWyuYA:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-16_02,2025-12-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 priorityscore=1501 malwarescore=0 phishscore=0
 clxscore=1015 bulkscore=0 spamscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512160119

On 12/12/25 8:22 PM, Dmitry Baryshkov wrote:
> On Thu, Dec 11, 2025 at 07:41:37PM -0500, Richard Acayan wrote:
>> On Thu, Dec 11, 2025 at 07:16:30AM +0200, Dmitry Baryshkov wrote:
>>> On Wed, Dec 10, 2025 at 08:48:46PM -0500, Richard Acayan wrote:
>>>> The Sony IMX355 is the front camera on the Pixel 3a, mounted in portrait
>>>> mode. It is connected to CSIPHY1 and CCI I2C1, and uses MCLK2. Add
>>>> support for it.
>>>>
>>>> Co-developed-by: Robert Mader <robert.mader@collabora.com>
>>>> Signed-off-by: Robert Mader <robert.mader@collabora.com>
>>>> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
>>>> ---
>>>>  .../boot/dts/qcom/sdm670-google-sargo.dts     | 107 ++++++++++++++++++
>>>>  1 file changed, 107 insertions(+)
>>>>
>>>> @@ -392,6 +420,64 @@ vreg_bob: bob {
>>>>  	};
>>>>  };
>>>>  
>>>> +&camss {
>>>> +	vdda-phy-supply = <&vreg_l1a_1p225>;
>>>> +	vdda-pll-supply = <&vreg_s6a_0p87>;
>>>> +
>>>> +	status = "okay";
>>>> +
>>>> +	ports {
>>>> +		port@1 {
>>>> +			camss_endpoint1: endpoint {
>>>> +				clock-lanes = <7>;
>>>> +				data-lanes = <0 1 2 3>;
>>>> +				remote-endpoint = <&cam_front_endpoint>;
>>>> +			};
>>>> +		};
>>>> +	};
>>>
>>> This would be much better:
>>>
>>>   &camss_endpoint1: {
>>>       clock-lanes, data-lanes, remote-endpoint here
>>>   };
>>
>> I'm not sure what you mean, there might be some typo.
> 
> My point is that you are duplicating `ports { port@1 {.... }; };` from
> the base DTSI here.  We usually try to avoid this kind of path
> duplication. If you can't have an empty endpoint in the base DTSI, I
> suggest adding necessary labels to port@N nodes and then extending those
> nodes in the board DTSI.
> 
>> If this is about using the commonly-defined endpoints, Vladimir broke it
>> in commit dcf6fb89e6f7 ("media: qcom: camss: remove a check for
>> unavailable CAMSS endpoint"). If I do this again and go full circle, I'm
>> afraid this could break a second time before even making it to
>> linux-next.

Quite frankly I don't think that commit was valid, given it's conceivable
that an endpoint could be unconnected..

Konrad

