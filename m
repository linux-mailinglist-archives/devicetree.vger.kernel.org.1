Return-Path: <devicetree+bounces-181624-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CFEECAC8188
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 19:12:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1B4CC3A8835
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 17:12:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55AB422F16E;
	Thu, 29 May 2025 17:12:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lQDMahUK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A74AF22D797
	for <devicetree@vger.kernel.org>; Thu, 29 May 2025 17:12:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748538769; cv=none; b=XpAsWwAFFG8jaPVRaTt6A0F1zaUdsBP+PRfF/0+mOToG/PFv25ckO13/4S2trkjEU1qGlqxwCJ2oCJB8LX2MVJ4CWtiLjSuK0yk4P7yfmk5gWjgxzlNle8qNRJoU7vQjMTMvpi4M54FnlXSAwnwTwJJptc0cmOOGJteOdmXcl24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748538769; c=relaxed/simple;
	bh=Ug2jIoRzLCA5oUM8D+OSRBMvv7WFUOA/cp+F1k5Cq4E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dhaLj3P69MYoVN2xyrtpbAQvyspTz5zcZFXICgmpwXVIvtMPIDX5Vgaa4/mrHHk268pEWAsBehnc7LomvDI0tdfH5K3eaWb2mZ71EkW8wd376gK8PvckbrZpRXduyK+L2JYeLSwEkS8+CFrUn5yCM5U9+HsLVNtknOvg6d1yjrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lQDMahUK; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54TC1OtC013716
	for <devicetree@vger.kernel.org>; Thu, 29 May 2025 17:12:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ys2JmP4bbvIcdLdQv1yBN6mYrOG0ArjDO9LWrdrX7ns=; b=lQDMahUKRG5MwAU8
	TalKAq/XrTZrRm4pLM8EGdHxgqUDTVUsMXkJsuUtPHKbvF3/bhnmOb719H9KJbxJ
	2L8ihzNBBM4NEKk/4bNw1b4Z5bD4w3zc8oEaEuaOiLYumQt4/1Ac1iKqjqevXv/k
	Yimik3EVKrO9BQ7edxg1+sT1WuSWGZGRGHiCmqHF9GqAdy0GnG5rMqLFosFvpx3R
	eJBNpLpqL/00atL2+VMk9YcnvTXTIY9tH3PjSZb8n69aXAHrEpf/lpFyh6hVf4Va
	pEhk+e7SP7iUx7Fk4luYLWEPfD1qAAci5HFyjUH4aDcm06W+RmDZhHHVRMpT1ImD
	tyBmsw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46wavm09je-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 29 May 2025 17:12:46 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7ceec331273so22624185a.3
        for <devicetree@vger.kernel.org>; Thu, 29 May 2025 10:12:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748538765; x=1749143565;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ys2JmP4bbvIcdLdQv1yBN6mYrOG0ArjDO9LWrdrX7ns=;
        b=X+JwckKCqVlJfl93ey6P91ZdGpLzThVtjH8od9zlj/ejgvOcfhz+7GC7Lb7MP3FaNh
         sgnvxkKp9jtRLrJrbahXcOKI/gmAdpIaYquIn/oI3SFdKUKEcF33NgE+1k8/+SWjtzCc
         Wabu6bu7FydCYjzldybXMSYWoDXXpTsjS3gRF9AXW2Q85w+ZU33QHRkJwe82SW/pwI11
         8Ne0wNQeaUy9w4UQdEHUXRYJtU54o2O94GILKhjHOrtlY9SZhEffBctT5bFKf1XWiOkt
         dxxCvfYYZqeJbWNvkxud1A24jzTFtXg8xQlvhGN9NUPTvDHMV9iq2QpDvIlVaoDf42K4
         vqJA==
X-Forwarded-Encrypted: i=1; AJvYcCVjcUnjAjGU9Wjjf9CBXwa00a7rFGKhwpFYIMiTWT71yXKy2GITNWIDbRejyBej5vq7M54q4hjSUafW@vger.kernel.org
X-Gm-Message-State: AOJu0YwTtpz7RGyyCk2CwVasMOCEVoYyG5xslGf35c/8cPlaRlnn7bZk
	CYVXQu9skH2F8Asoi9k2Cvj3dexy7BFzi37FtwDQzuQ0n+q4v2fb6GhxMZjx5KyZVqSVpK11dQ6
	hN3pSGJM1kYnrsak0CNBS2x4D7IZx9f0iED4MQxedaqIwma2gNN5Dz9oMpcwnwpRV
X-Gm-Gg: ASbGncvBEOs2Dtrkvj/E5vXylO89lZuaJ6MBDy1Okizx2xODHKtg88MLcRH59vf9ZAF
	RQM/LC9Rc9OJ+Fw409A/doFVjUIpR4GO32DVRFOCNoLBTrUBhY4FOgwUKKFf7LO/TYEj6VwXhTO
	zr6S5L6LQZZufCYA5UWpUFU4XmUdh96SFLNKeNHa/E3sXfO5rdVvGmAlMnhyexJI8nG6THjao5N
	NUFrOOXObsJuLFwvLDunLRBH40M2MTLnFOte37CnHh69oHF3XBy6ORxeriSOzIsDQjDZdPoump8
	Ggm0WojS5iSXWCVgWYePJta3iLG/qYObpVlCsJINXqIQMAdgmfCEefLIj9XPI+b3pQ==
X-Received: by 2002:a05:620a:2908:b0:7ce:e72d:8d34 with SMTP id af79cd13be357-7d0a1fa6ee7mr16073985a.3.1748538765278;
        Thu, 29 May 2025 10:12:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEnHYWW2OFnp9a7ve3itNdjg5U8YXwmFgEwtPb5z3CzLgcPkiN+vLMT8pOGqxmuto+sCPYqkQ==
X-Received: by 2002:a05:620a:2908:b0:7ce:e72d:8d34 with SMTP id af79cd13be357-7d0a1fa6ee7mr16071485a.3.1748538764700;
        Thu, 29 May 2025 10:12:44 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ada5e2bf051sm172255866b.122.2025.05.29.10.12.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 May 2025 10:12:44 -0700 (PDT)
Message-ID: <d02dc31f-1031-4950-b8e4-5df38b8806f4@oss.qualcomm.com>
Date: Thu, 29 May 2025 19:12:41 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 02/12] dt-bindings: arm: qcom-soc: ignore "wsa" from
 being selected as SoC component
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Alexey Klimov <alexey.klimov@linaro.org>
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
 <7938374e-85fb-42b9-893c-ec3f7274f9c0@oss.qualcomm.com>
 <9c8fe115-97e8-4966-b332-6de94015f832@kernel.org>
 <b4235317-97c0-4225-b6af-f79358cbf508@oss.qualcomm.com>
 <a0b381ac-3280-42df-bff1-1998e0b9c154@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <a0b381ac-3280-42df-bff1-1998e0b9c154@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: oIHmcvAulak5V9-y3EZa9XQjPOQN0sXS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI5MDE2NyBTYWx0ZWRfX34K0C/ImxX5f
 TQ3TZlfgnTSA+UywfL6kfDfiO25EG/T4gVLXrxz1imUuIOH5bTvcZfvKeU+LHRIB3nRulIMzDGJ
 Q1Hr9BlkbdfG7lzskS+8g1PcWTIbkcwNDLghkCWj/sDalLO/FmzkwCSuJJq2BWhJMRdAuGk0ME+
 T8Yi9Y30/Rl9cQ2nsNmIlV6z3goFOIsWeU0KYdKyv2HodZuiYUPwIKPsScrBmPIF2QDH2LOZk8k
 PSlOvZafc4/In1bTOKfWIvJR1LK3iUeqMLxHH1PMlO0rYa5jRMjkGjEZeb7Qbyw8qQmsIWiNSvs
 XKt1xP/78pkLGsSjRrricxaqg+AyEbzd34dOpEbekGe8ewghrmVvAW4W2cD30Wv4hYQeJlk/5Wp
 a14uksn05rDgFYtCqMEhKzOjGH5Xi1nFfWHG7pOdeAoFeZjSXr0+oIkx/6IqpxS6lkeal1pe
X-Authority-Analysis: v=2.4 cv=fMk53Yae c=1 sm=1 tr=0 ts=6838958e cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=nd4FsyV9s3kkAaokxrwA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: oIHmcvAulak5V9-y3EZa9XQjPOQN0sXS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-29_08,2025-05-29_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 impostorscore=0 phishscore=0 suspectscore=0
 spamscore=0 priorityscore=1501 lowpriorityscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=999 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505290167

On 5/29/25 6:58 PM, Krzysztof Kozlowski wrote:
> On 29/05/2025 18:34, Konrad Dybcio wrote:
>> On 5/29/25 8:58 AM, Krzysztof Kozlowski wrote:
>>> On 28/05/2025 18:58, Konrad Dybcio wrote:
>>>> On 5/28/25 4:37 PM, Alexey Klimov wrote:
>>>>> On Fri May 23, 2025 at 9:12 AM BST, Krzysztof Kozlowski wrote:
>>>>>> On Thu, May 22, 2025 at 06:40:52PM GMT, Alexey Klimov wrote:
>>>>>>> The pattern matching incorrectly selects "wsa" because of "sa" substring
>>>>>>> and evaluates it as a SoC component or block.
>>>>>>>
>>>>>>> Wsa88xx are family of amplifiers and should not be evaluated here.
>>>>>>>
>>>>>>> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
>>>>>>> ---
>>>>>>>  Documentation/devicetree/bindings/arm/qcom-soc.yaml | 2 +-
>>>>>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>>>>>
>>>>>>> diff --git a/Documentation/devicetree/bindings/arm/qcom-soc.yaml b/Documentation/devicetree/bindings/arm/qcom-soc.yaml
>>>>>>> index a77d68dcad4e52e4fee43729ac8dc1caf957262e..99521813a04ca416fe90454a811c4a13143efce3 100644
>>>>>>> --- a/Documentation/devicetree/bindings/arm/qcom-soc.yaml
>>>>>>> +++ b/Documentation/devicetree/bindings/arm/qcom-soc.yaml
>>>>>>> @@ -23,7 +23,7 @@ description: |
>>>>>>>  select:
>>>>>>>    properties:
>>>>>>>      compatible:
>>>>>>> -      pattern: "^qcom,.*(apq|ipq|mdm|msm|qcm|qcs|q[dr]u|sa|sar|sc|sd[amx]|sm|x1[ep])[0-9]+.*$"
>>>>>>> +      pattern: "^qcom,(?!.*wsa)(apq|ipq|mdm|msm|qcm|qcs|q[dr]u|sa|sar|sc|sd[amx]|smx1[ep])[0-9]+.*$"
>>>>>>
>>>>>> Why dropping front .*? Are you sure this matches what we want - so
>>>>>> incorrect compatibles? To me it breaks the entire point of this select,
>>>>>> so I am sure you did not test whether it still works. To remind: this is
>>>>>> to select incorrect compatibles.
>>>>>
>>>>> Thanks, great point. I tested it with regular dtbs checks with different
>>>>> dtb files but I didn't check if it selects incorrect compatibles.
>>>>
>>>> Maybe we can introduce a '-' before or after the socname, to also officially
>>>> disallow using other connecting characters
>>>
>>> It is already there.
>>
>> Pardon, but I don't see it, only in the 0-9 group
> 
> Then maybe we talk about different things? Because the one to fulfill
> your request - to officially disallow using other characters, which is
> part of the goal of this binding - is here:
> 
> "^qcom,(apq| <snip>  |sc|sd[amx]|sm|x1[ep])[0-9]+(pro)?-.*$
>                                             -----------^
> 
> That's the hyphen after soc name.

Aaaah ok it simply wasn't in the email context

Konrad

