Return-Path: <devicetree+bounces-181329-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B8855AC6E98
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 18:59:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D7343A26AF5
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 16:58:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 202AA28DF48;
	Wed, 28 May 2025 16:58:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IdQJuX77"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9BF28C869
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 16:58:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748451496; cv=none; b=PUqKx735H4nVNh9vAIdwb1VlbXHvOGTa9m7QRcXLbA8GzGcy59CZ/e6Vavi/GSouURl5TeVtzHUMKi5CMO7Jx1YmTiXIcmbtkRzIWDSUnPv91tA0YcqtEyjEfF3bWvEFv8TmAN4AL/TfSNm0ljI7lLo8aj2+vrQM/V2KPTb5k3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748451496; c=relaxed/simple;
	bh=C/ggDr2U3zgPwsBNLbn/6E0DwqeLz9NmTk3loAa748w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DDTZ4pzy68oOg3nEnhp6r/cwCHk7RiAuVePqoxzTl5P4t6HKX/SdHIKxvrQa7mb+niQoXXdS5S2TVYWDyFTuG8+Cu8aTd0BPwcRu++WAlgDYocZRUa3HApwp2pr1j3+jEhrU5PXVRQu0oxv3IluQ1qS8Jm54eLeeu7pIq9sfdTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IdQJuX77; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54S8F3Bk020171
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 16:58:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qPuMK5jZFsmnypBiTqJe5zYuFHyiejNpkSdvHBAX+qM=; b=IdQJuX77asAFx/L9
	V9dExB1SzToC288lqlo7biqGHva3PbRcVejs7s2klOYoNqPpzUswLaVaayzdourC
	f6ZBK+R+SxZqnUn5Ivaknt0kqfg2JtOeZxo7uF/KKOOTQuLiafB8hKLkI0iogjQQ
	dknU9bBD9+wA5UrUfhfiHB9EEvyeqHEk4cOj69NWgDBDI1RQIH2sWhCGotCrWnzv
	KDurIHQhb6gXzv5nT9qzCsrDs2waLDJhpztub/2/TSRRhljzR+YFYKD6IFgoDlM0
	4IPOs66w2VZhjC+l7jUSxSKjwHmOlH6Ofq0CbNQ4IEUB4egVfCEZN6ATZFL+5CBS
	2xiw4w==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u3fqb4m4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 16:58:13 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c552802e9fso113748885a.0
        for <devicetree@vger.kernel.org>; Wed, 28 May 2025 09:58:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748451493; x=1749056293;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qPuMK5jZFsmnypBiTqJe5zYuFHyiejNpkSdvHBAX+qM=;
        b=klTewDgUEaEafP/f5PVGcltY3se9zRr/b1csYkQZythpdNHM6/i/YCxqPaJwUspxyZ
         y5TA9G3EABMbwuO5hJp3sokQOKfDmJPAjds7C/ILesWOGWMjnv1gOTWh1KoMr/vIvelf
         IFgSdFEo/7WLRz2jaA4RoCTry8cGOyLjP3ACYWVPZmHgzWjNL8sYqbEENVv5nn6ijUOD
         fU3P1WpixlaCw8DVXiuDGyLnZkJdb1e2yaanFecAacofCTuzBFqKEALr0DiTZo7Wswv7
         Aigv2Qax2i7JDHzBpSena8lmy67CiqaugIpMfTlNp4SEGJi1AXPTwa4kNyyd3DrofIwB
         U+1g==
X-Forwarded-Encrypted: i=1; AJvYcCUfQV8NGlJQ/+0QQyKEqH3XmqcecZqDZkhC/4WndDEvV3C4sYHlsJHCx+1LelHVWdNEhYtxZBywRKiA@vger.kernel.org
X-Gm-Message-State: AOJu0YxwOqp9kjAZuPQ5mvdgmbFQ/xQNuub17uaNlHMA0hAPS+/JEr3Z
	liSTtliiJrUJyfvc5qnzp+NN8BDl1Hv4UU4F1q7EPnIRU/lczHbmr9uqHFv3jm8f8DcDNwQWMH1
	FBUq7uUZ5umEl55fc3ClVhC8sNe79qDT+m5ZGDCYJnWe/eFhOd+vI5v5eSKCVKrVp
X-Gm-Gg: ASbGncu2viJfWntGZR8dpGeMVn47Nrcw6lytvVKMvdG0vMO9EMGgON7AzpxpC5R2Ysk
	Ym4IFH6n8sg23orrpG5y6vDu3l4+QJWXLkRNaWtjUFETB39R1HfFRqYZDwmRzBZlGcS35XKpOff
	JJ/e4ueXnkQkEWM8T6Qm5q5AKMKIux89ZnZ6cEt5jJ10asf1jAeQKsX7gDGHr7sxp13h9cX+kEp
	E5bc9uiaLFnUj4PGj7QyU/6t3wDZDZzVSc1xwR5p04CWdbjWScRSldXUzwlCj1LMR84XUa57SrG
	6bF0DnQ3MG6f8vfERt7+Lr6ZuYqU/n40wIe0M79MCPbMbuZ9evMVZsmpAXA1xcKbVg==
X-Received: by 2002:a05:620a:3198:b0:7c3:c9d4:95e3 with SMTP id af79cd13be357-7ceecc09f86mr921829485a.10.1748451493045;
        Wed, 28 May 2025 09:58:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGkAjuwttwsySAmNXr3cyWyVH5nivsVuo17QQGa94DXhh90c8s++PqJyE2HPepyHAHWSRNEhw==
X-Received: by 2002:a05:620a:3198:b0:7c3:c9d4:95e3 with SMTP id af79cd13be357-7ceecc09f86mr921827385a.10.1748451492681;
        Wed, 28 May 2025 09:58:12 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad8a1b5b865sm135090966b.168.2025.05.28.09.58.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 May 2025 09:58:12 -0700 (PDT)
Message-ID: <7938374e-85fb-42b9-893c-ec3f7274f9c0@oss.qualcomm.com>
Date: Wed, 28 May 2025 18:58:09 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 02/12] dt-bindings: arm: qcom-soc: ignore "wsa" from
 being selected as SoC component
To: Alexey Klimov <alexey.klimov@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Srinivas Kandagatla <srini@kernel.org>, Mark Brown <broonie@kernel.org>,
        linux-sound@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
References: <20250522-rb2_audio_v3-v3-0-9eeb08cab9dc@linaro.org>
 <20250522-rb2_audio_v3-v3-2-9eeb08cab9dc@linaro.org>
 <20250523-fancy-upbeat-stoat-e9ecbd@kuoka>
 <DA7VC87A0OMF.1X5XEWVCHFLE5@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <DA7VC87A0OMF.1X5XEWVCHFLE5@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: folzyK9o-ZvzOF-9smsk-_nU7qbrHFPt
X-Proofpoint-ORIG-GUID: folzyK9o-ZvzOF-9smsk-_nU7qbrHFPt
X-Authority-Analysis: v=2.4 cv=X8FSKHTe c=1 sm=1 tr=0 ts=683740a5 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=RZIJFy7CuqSkVLaUGaMA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI4MDE0NiBTYWx0ZWRfX1Z0wyCA9ud+y
 yrTO+zlL+8vNIjgq4HG9jscn9oQbuDG8O/P7KN3kWW+5f5zXANQCdxzukaWlfe8sD7HW4UZqxnj
 u6+2v65olxOvUNysuziG2HxtFryEQ11pUSaQrEHoYQ/trWCXbUmzttYjUvCBwIWtF8RFocaLum7
 4VqVLyYfKiJldPD6ldKHQvtZQxvyTtIBHD2eadXYV+hfcYkanxnjsa2L8YM6oSkBopqBaplR6by
 MSOlYNKGShjORYWbRon4iaTNVqiCRT5OiNuo/coPUhTVEQpV6L08NERtzSDx001s0BOhUW+xyRV
 4nelmTt+8Fk09OHNlYunosaVp3aKOjTAqqlDvE2wyn1hVesbofIv3Y+fjlUYMVHClIBE1ZefQlV
 m0JTty6bzSipdz63a+HAH6n+IKrpzNituUd4lOt7Xl4A9seztVP5ge92SQ/KzPI8uXIPq2Eh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-28_08,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 phishscore=0 bulkscore=0 mlxlogscore=999
 mlxscore=0 clxscore=1015 priorityscore=1501 spamscore=0 adultscore=0
 malwarescore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505280146

On 5/28/25 4:37 PM, Alexey Klimov wrote:
> On Fri May 23, 2025 at 9:12 AM BST, Krzysztof Kozlowski wrote:
>> On Thu, May 22, 2025 at 06:40:52PM GMT, Alexey Klimov wrote:
>>> The pattern matching incorrectly selects "wsa" because of "sa" substring
>>> and evaluates it as a SoC component or block.
>>>
>>> Wsa88xx are family of amplifiers and should not be evaluated here.
>>>
>>> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
>>> ---
>>>  Documentation/devicetree/bindings/arm/qcom-soc.yaml | 2 +-
>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/arm/qcom-soc.yaml b/Documentation/devicetree/bindings/arm/qcom-soc.yaml
>>> index a77d68dcad4e52e4fee43729ac8dc1caf957262e..99521813a04ca416fe90454a811c4a13143efce3 100644
>>> --- a/Documentation/devicetree/bindings/arm/qcom-soc.yaml
>>> +++ b/Documentation/devicetree/bindings/arm/qcom-soc.yaml
>>> @@ -23,7 +23,7 @@ description: |
>>>  select:
>>>    properties:
>>>      compatible:
>>> -      pattern: "^qcom,.*(apq|ipq|mdm|msm|qcm|qcs|q[dr]u|sa|sar|sc|sd[amx]|sm|x1[ep])[0-9]+.*$"
>>> +      pattern: "^qcom,(?!.*wsa)(apq|ipq|mdm|msm|qcm|qcs|q[dr]u|sa|sar|sc|sd[amx]|smx1[ep])[0-9]+.*$"
>>
>> Why dropping front .*? Are you sure this matches what we want - so
>> incorrect compatibles? To me it breaks the entire point of this select,
>> so I am sure you did not test whether it still works. To remind: this is
>> to select incorrect compatibles.
> 
> Thanks, great point. I tested it with regular dtbs checks with different
> dtb files but I didn't check if it selects incorrect compatibles.

Maybe we can introduce a '-' before or after the socname, to also officially
disallow using other connecting characters

Konrad

