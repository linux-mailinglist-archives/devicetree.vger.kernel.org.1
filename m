Return-Path: <devicetree+bounces-248723-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 14F3FCD5444
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 10:13:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 85C1B300E948
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 09:13:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF06430DEAA;
	Mon, 22 Dec 2025 09:13:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NNXk8MHW";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bmiVTqqn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5775530BBBB
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 09:13:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766394813; cv=none; b=Q4rbFukqWH1wnQsSJjtLNVB5H3a+ghUhu1VO4ie5TNl6L3+pjMAGXtXHCw+ey+acsKE0nLyRik2JOdNP0oD4l3eIISA48xXKO45xCHL3gdkGmUqdkyavTgQQRYGcah7D/JXbJb4CnIfqRFA7WP2VKkDwX2jhp5N5L/tvC2W4BmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766394813; c=relaxed/simple;
	bh=BJeOqXkJ+gmd4ey7vsHhoKygIOlUYG3FMgsO3Hglj5I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hE3LAscsDhDHiX+dQqPvpuf+/Qa0uI3SOyDbD4p4DqWVzJ6ERzaDxcxg6i/xBATG44PPMnzOvRq10uf4nnMZ8MaZCWahb1jFT7IKm/QkScxmoyAEiSjaN77spMkUifYxKI+wCk3hD19KVMl7WhTJf8YgEwLm5KXA8bLopUJ2Y1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NNXk8MHW; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bmiVTqqn; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BM7uFtA4090138
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 09:13:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IqF0tpex94rpEoICa6Aj75C9O9nCknYNwHd+NudJrug=; b=NNXk8MHWCtebpRqC
	M8Zghky+FRh469zAi+tkykKpj6fgrx3H17BU+MsyNGF5S/Tws0hPA73FygFTZ6nW
	URmKNvV3/yEDYiIXgBfVD5L8DYRPBG5HJY8hZNHcPRs6MdMsZ9jbTI1MXIa2Yhqq
	L/3UDzfedTj0no+0xurYBeIjWYqzYG4XxdErZfvLq2JD14kYN7mE7T/mQ0QNE/xh
	9t/JD0GXX9FPnW6v8v4/fjDNYcY/Wy4N6RpgKKMdd7p8OHunJ970AYZBNtIKxOad
	bmg+yc5ONttLC2sotabDwiZ/CO6NXTFOy5UK1eUhgno+qkarH0Uat8tpGJp4jhF3
	WdRSjA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5mvfmdrw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 09:13:31 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8bc4493d315so971394685a.1
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 01:13:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766394810; x=1766999610; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IqF0tpex94rpEoICa6Aj75C9O9nCknYNwHd+NudJrug=;
        b=bmiVTqqnVdfP1ObpOluOScGYkJBSxvqsi5LY7K5I3n1HLEqTdf+MpsiQcZdEM4MI4Z
         bRLX5+lPw1kzBiCYZ5IBJvVa9RXL4+4H8OEpDevY4YwO9i7F5M5CZEGl1ueZA6JDw3cR
         QVlDMx7E7RixkjDSAi/iYmW820tOF8Pj/bUxwyzzsTxC42qiCQOomkWnBWIQucMSiszY
         gv/HoTg4CosZplEjM1z6N/XKkN68oGOcNNHNIHVE6yn7T5NSpFrdMaVZfT98HMyX6JYr
         2ImE8Bs+fO/6T1H3N4X6ew+JUr3mm2YK+wjHZUqWwTK/uDD/gZ/cQoLUZc6oXZzOprI0
         897w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766394810; x=1766999610;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IqF0tpex94rpEoICa6Aj75C9O9nCknYNwHd+NudJrug=;
        b=A/QpK6dI5Nmavk5LzyYqwv9vRxYZCAMLfBnUaR568XQXkAwrEcAy7EsKXNdn5bEYKf
         1coM4rWEF4yB4mtjALzk7yth4TyMAWU55pVhtrp1Axm9k7ODRu6LH/gB2ZKPPyy2RJjW
         4gQtbWKfIRe8HLjCit+3AqIfL9YgChbFm5IreiHMens2iBXeD3kMPDX4OsYQluFGHpgl
         YvVqOdCy6b+LxwqxunyW4wygaOzwtBM9a+mNOpOsEhcRVoNj88MaTwQPbRY3IY2IQ293
         35GxSKEsySHfAbgihBGMZ6wn/8SZnyAEUYj7rxsJBvvu1BprGaDFwZfBY4kRqeIvjpgO
         ftWw==
X-Forwarded-Encrypted: i=1; AJvYcCUEppd29NDLrOK2mqps3hPoPAoShw4/SEti+HUHcR0IsQi9lukTwYaWpv05iEYeynXFvBYBnlNmrmhE@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2V4dMkmbniYaPNThFy7QDOqfKanXBTZIviQWaqZiUINXBu+K7
	jqla4VbkfM5hVX9OZUL2FcskNYCjs3vdpgZC0OgG7BS9IexNBngf24rxy9x9CCgcihosbHieReH
	tACfaS4pe4TwvFjHuF4dKDck233WbckSBMlEr9MCITu/ufW20TiIVn7oORdeIN6vV
X-Gm-Gg: AY/fxX6aGkMaKOsV1NEMlJqDl5jt5bAsz0us2OUXNIMiHdj8+O+FTHeKNGKhvURzM/Z
	jpVIkDfjioisTjUcoeDakACoEi5RF7aCD78u9XPY/Mhb+QtWZB1l8zpbP2hUXKqS/USpRiJYk7h
	QKJuuryoqSU1iWj30Ou+kGY298Dmkp+UgXYs44VW4EgGor8K8mqQjag4mob6UIMCWz5scqEK0tb
	Z+sS46nXdecfnDn+Ali/uPs6BidSByXGZqUQefKm4HQOZkMz6vTSx1tDTxrKmtwMWGpiY0AWr86
	Bmap8s9X8UhR418wdSudeDkn4qDBRwkHZmgLtyh48HmPOP+YKOOZvEZP8iu3CBp13jOdfamPhrr
	KhDh+xOyqy4IIFK1p942jjXBqGWysqKd4o4RXuNmLa6jBVDILP5RxHO+wtMVUyfScYxelA4oA
X-Received: by 2002:a05:620a:488d:b0:8b2:e8c8:671d with SMTP id af79cd13be357-8c08fab8c1fmr1561110685a.60.1766394810484;
        Mon, 22 Dec 2025 01:13:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEAJFOrhua+PwEuHCg/SaU/Wr+jBLNxn41/9mdZDkJu/5KHT1a6R2NUsCuFMyeB3zWinmh0jQ==
X-Received: by 2002:a05:620a:488d:b0:8b2:e8c8:671d with SMTP id af79cd13be357-8c08fab8c1fmr1561109085a.60.1766394810076;
        Mon, 22 Dec 2025 01:13:30 -0800 (PST)
Received: from [10.38.247.176] (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c09678afa6sm802747285a.2.2025.12.22.01.13.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 01:13:29 -0800 (PST)
Message-ID: <68dffe33-fe4a-4c4b-890e-87e0229d84bf@oss.qualcomm.com>
Date: Mon, 22 Dec 2025 17:13:21 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: i2c: qcom-cci: Document sm6150
 compatible
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org
References: <20251222-sm6150_evk-v1-0-4d260a31c00d@oss.qualcomm.com>
 <20251222-sm6150_evk-v1-1-4d260a31c00d@oss.qualcomm.com>
 <43efa6fd-53c3-4680-8aca-7b37089ca295@kernel.org>
Content-Language: en-US
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
In-Reply-To: <43efa6fd-53c3-4680-8aca-7b37089ca295@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=H8rWAuYi c=1 sm=1 tr=0 ts=69490bbb cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=3ub0lqJSln3tGTLoGTkA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: ttMYiFbupUWzPxutyQSCFhzC8dGmsefH
X-Proofpoint-GUID: ttMYiFbupUWzPxutyQSCFhzC8dGmsefH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDA4MyBTYWx0ZWRfXy0UtI5sk9XIQ
 sjVG/H/zq8/8mhl35Yew8Iq0CSZC9ycaGdXwHqPhwoSKs45G/ojVa+tF1xRdC0oF4UlRWTtRnYS
 9WRVCHyWNgh7nm/P5IwVV2Y1Cxr0tqG9hsWAVn2+DdDP/iL+BBdtPm2Od/ytXPUmaNo38W9FLCZ
 xWkX57YqYVKQ0ecuYeT4XPSyL+eA1NB6uAWsqn5ONs+fTw/NYSfeb6lA1BrdP85iqhX/rRuiIdT
 i+revThlapAiQyjeAR/XEa06sZfVqo9lkQwoA2YxH+dkNfAT7AY9zb4IwCF8of8swbcdXNxuieo
 CRBBylAWZ954efoo/w1+BqfSJBrvavQpcKe7hVDv+0a8G+Me9tcYDeRE3E8Y4qYT7R54I832zFY
 5Cx1pezG0TMauCk3ArnVf8kh1uQ5VM3GJ/tLW93hes5isX+VABB/hFuzTywtbFK+svAqeIf3RxK
 omboKW3nKz0dyLcoAmw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_05,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 bulkscore=0 spamscore=0 adultscore=0
 clxscore=1015 phishscore=0 lowpriorityscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512220083



On 12/22/2025 4:58 PM, Krzysztof Kozlowski wrote:
> On 22/12/2025 09:44, Wenmeng Liu wrote:
>> Add the sm6150 CCI device string compatible.
>>
>> Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
>> ---
>>   .../devicetree/bindings/i2c/qcom,i2c-cci.yaml          | 18 ++++++++++++++++++
>>   1 file changed, 18 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
>> index a3fe1eea6aece9685674feaa5ec53765c1ce23d8..cb5e6fd5b2ad1de79a9b29d54869d093c952d778 100644
>> --- a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
>> +++ b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
>> @@ -33,6 +33,7 @@ properties:
>>                 - qcom,sc8280xp-cci
>>                 - qcom,sdm670-cci
>>                 - qcom,sdm845-cci
>> +              - qcom,sm6150-cci
>>                 - qcom,sm6350-cci
>>                 - qcom,sm8250-cci
>>                 - qcom,sm8450-cci
>> @@ -263,6 +264,23 @@ allOf:
>>               - const: cpas_ahb
>>               - const: cci
>>   
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - qcom,sm6150-cci
>> +    then:
>> +      properties:
>> +        clocks:
>> +          minItems: 3
>> +          maxItems: 3
>> +        clock-names:
>> +          items:
>> +            - const: soc_ahb
> 
> 
> Isn't this just camnoc_axi for this device (pay attention: to this device)?
> 

On this SOC, both soc_ahb and camnoc_axi exist.
Is it suggested that I use the existing ones below?
  - if:
       properties:
         compatible:
           contains:
             enum:
               - qcom,sdm670-cci
     then:
       properties:
         clocks:
           minItems: 4
           maxItems: 4
         clock-names:
           items:
             - const: camnoc_axi
             - const: soc_ahb
             - const: cpas_ahb
             - const: cci


Thanks,
Wenmeng


