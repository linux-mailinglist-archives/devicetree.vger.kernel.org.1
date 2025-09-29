Return-Path: <devicetree+bounces-222388-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DEF4BA8C15
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 11:51:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F35A67B8FC3
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 09:40:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB69E2D641C;
	Mon, 29 Sep 2025 09:41:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VV7PQgLg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2B022D595B
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 09:41:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759138882; cv=none; b=al1KqagxpsZYBbOL4EhmBQ2GbtAsV3vVBuHxMdd7fNTeUaire7tNAelBgZ6tVhYqeAemlxz4qk7VT98n/nrJjXr3bBYgxRgpP1OLVJbmm9ElEILI/kkrJpjsj1SjbKdH3GOhFeiwMkg/EyG8ANaBegoEPwWeHkU9zAV1Lj+AJQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759138882; c=relaxed/simple;
	bh=XEaiSZYGUcaHCJQNcBQ9owyrPFLPILRn44ra83b033o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KbNL2BVNc+xm9qtkIfgOhuHq5UmjSxmCSgJJQH8qfRtM/AjglKSSB07IC3THSbKV+orpcgiGq64q4brfvRMA5HowzhyYUg/iCRI+Z4Si5H8fZZbiPbWSDk+TRS36m666aE8mGQ33kDlz4hF3boy4pq+Uc5DY7DZU3gm1ZVC29uY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VV7PQgLg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58T0Ombt020522
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 09:41:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	B0g50ZIP/+1LSITzGgzIqtGqdXOVUmvuN9/3KIaqoLs=; b=VV7PQgLg+TzEg9sF
	umY8mV7//iJLoQnUwkWk+pxSSXM8HmUabJtfq15djGGUoGop+33UvFyldGKK98ky
	61+djpax2r7jdaMPSLfRmcuBAhdOKAO6oGVkUJwR2/1EzPY2983L/IsziedUJieS
	utOjzTfHyFS2B3JfpGkDtzVb2AaOg7Y1IxKYPhtSknPbn/emuFJSSUz8AD1Sflcs
	HDe9o8tcdBt7w2VB5wEQdoYtPCmh2uiL1f/2qHGHCWYSEuQRYYjixXN7lykq4t8N
	ydG7Ivh2FN/pZNc+XtGmR3yooWnFv3sLjeqws+pLyOVVe+NqaHTbchcZFKtnPcn6
	7mgCkg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e59mw1kf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 09:41:19 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-27ee41e062cso39511485ad.1
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 02:41:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759138878; x=1759743678;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B0g50ZIP/+1LSITzGgzIqtGqdXOVUmvuN9/3KIaqoLs=;
        b=bJyFuekcJNHVzUCqAEMllevH8lh2q9JxYreFAw+rsuUfozfrzfw6hLwAovRIGf+HMn
         WM9VLzWZrU2Ype3DSqjwrWLU7sM3Vkx+jdNa+f47q5haXoee5t0nwnCIrb23dTQwWiz6
         Gh2mMCVwdGIOjSSbt3zJ1lJt4sJyogeRdnwsN+ewH8ENGQPCI7nMo1NnptCQNSfDDzxb
         UP+N+4Pl/vZCXwakbrPcRWuEniUQuKT8AFORr6+l1SkgY+U32PcZwKGmckaJmbigeha/
         4UMNhkHZckgAukR1ZiUV21LtQO7g4hPZMm6q/CyDraa9OmlONKlUwALqsdepZzjlrYSn
         UDng==
X-Forwarded-Encrypted: i=1; AJvYcCXq3UsSsdlgT3aF7pTRKZyJBozrIvy7rqQrbWf5B082xoeWKOjaNqcrSQGlYwI2F/zPMzg7zNM1njNn@vger.kernel.org
X-Gm-Message-State: AOJu0Yxg9MQTuBJXJlKvMPhUF0fZhj0Bm7X4TpYcztrZw7xtNlvbkrfN
	cLET8I6/FMWNJE8ZDDhmN1non/Plhq91u4rluOR+BLQHndPaNVY/BIpfth04PKA4CPOzYvVkkZQ
	08A1fdEH81Y3SeHBIm+mKoW0FirK5gSXMiM/R/0mP+DRjpKSkLOG5tVEGMS5n75Nn
X-Gm-Gg: ASbGncs/ObcK73ljLjNYACZBhe5vbZ9CXUWKg0rYVu0UWsNEViw8xNH6d8zGdVchwhO
	9g7i/fPBrc3pFgVUc5sOlj9lJH7pmMe7Ej3ajvMF7lvvx3ooPEtMBXyAAEKc+m4J2ySPKED1NiK
	ORt/xlTF+jPbafEiKMrFWauvAARYAB/BkOOACL5e2ljcubt4P40HPqb+aLRgt1MQS5+I8c5MUbE
	n4annQNv7zmZR0+cGD8LU6syF9PqcgQzapiS4/nCKRgN/jzJ+xyMTNyuf595UlB5ukYj5HOL0Kw
	rdkaHPQB0ICPnm4Ras72lWgaYInciWzB8Fw4N1uNDFWN0PJoDgQ9DMnU4nTWhtkIbdlXMjj4lRt
	6/G8Gy4bglpIVDp1VA/lGR9Do+JS4zBq5gfQ=
X-Received: by 2002:a17:903:1209:b0:27c:56af:88ea with SMTP id d9443c01a7336-27ed4a60a90mr138735825ad.60.1759138878268;
        Mon, 29 Sep 2025 02:41:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHX2BDwLAFP5L6LqaHh38rh3/eLF8M2OlCmhN0N94ebznHjZi+EX/zj/NGuCgKmw15fA/eRzw==
X-Received: by 2002:a17:903:1209:b0:27c:56af:88ea with SMTP id d9443c01a7336-27ed4a60a90mr138735595ad.60.1759138877800;
        Mon, 29 Sep 2025 02:41:17 -0700 (PDT)
Received: from [10.133.33.234] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed6882140sm122815465ad.70.2025.09.29.02.41.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Sep 2025 02:41:17 -0700 (PDT)
Message-ID: <540b1de6-c959-4911-925f-8163f5fa5147@oss.qualcomm.com>
Date: Mon, 29 Sep 2025 17:41:10 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/6] dt-bindings: remoteproc: qcom,sm8550-pas: Add
 Kaanapali CDSP
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: =?UTF-8?Q?Krzysztof_Koz=C5=82owski?= <k.kozlowski.k@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
References: <20250924-knp-remoteproc-v1-0-611bf7be8329@oss.qualcomm.com>
 <20250924-knp-remoteproc-v1-2-611bf7be8329@oss.qualcomm.com>
 <CAJKOXPc57_0pJ2ZWf2cKSKAcQMc3S_mHKQxJDzWH7t=mgim3CA@mail.gmail.com>
 <5820a9a9-4474-4c4d-905c-0efd9442e5e1@oss.qualcomm.com>
 <o6dzhmlicwiezmxlb5uqitx7e3pjpyuhbjqfumivbdkru42hvn@r4ksfa6m5nd2>
Content-Language: en-US
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
In-Reply-To: <o6dzhmlicwiezmxlb5uqitx7e3pjpyuhbjqfumivbdkru42hvn@r4ksfa6m5nd2>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: TryuO0uVo4msHOgoy5dJFYXwcOrQ1suG
X-Authority-Analysis: v=2.4 cv=O4g0fR9W c=1 sm=1 tr=0 ts=68da543f cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=RABRrLoboZg1DbT1noAA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: TryuO0uVo4msHOgoy5dJFYXwcOrQ1suG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAwMSBTYWx0ZWRfX+UNMYDt1UHeu
 p1QMGQa8MHMLfb0oUsanX4pc4grNCyKd0qIWeXzgoN6o74taBUb0GOgshbZA7cZM+EeVMovifPH
 pOSyh8fW70xQwWG5/hOsyYpUneIftYhILCjTMVdBD1lp3sgZZs+hjtvogYbv2G7fkD0caae6vhE
 9FvQpLayClXG0aVcc11mNsBCsW0biwIaQSvLk56cddLaCQwN2QSyrsOlF69qIm+GcquHgQI7fZl
 6aey5TX+dDWhA0COcUUOKxPd6ClGHXyDf8Csl+2pehlA7z2l6WCvzHfQW1F+bNciIUX7ESMgh1a
 4TAeK0xM5KGXao3dgYmIMj4xTQq6qms/FqRmwq4saqeDXNiy3Va2ics497PpdGMiAq76mHofcih
 YrdaHLEn80y5XZkpUzytjERFawx0MA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-29_04,2025-09-29_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 clxscore=1015 priorityscore=1501 lowpriorityscore=0
 spamscore=0 impostorscore=0 bulkscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270001



On 9/29/2025 5:34 PM, Dmitry Baryshkov wrote:
> On Mon, Sep 29, 2025 at 02:20:54PM +0800, Jingyi Wang wrote:
>>
>>
>> On 9/25/2025 9:48 AM, Krzysztof Kozłowski wrote:
>>> On Thu, 25 Sept 2025 at 08:37, Jingyi Wang <jingyi.wang@oss.qualcomm.com> wrote:
>>>>
>>>> Add remote processor PAS loader for Kaanapali CDSP processor, compatible
>>>> with earlier SM8550 with minor difference: one more sixth "shutdown-ack"
>>>> interrupt.
>>>>
>>>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>>>> ---
>>>>  .../bindings/remoteproc/qcom,sm8550-pas.yaml          | 19 +++++++++++++++++++
>>>>  1 file changed, 19 insertions(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
>>>> index be9e2a0bc060..031fdf36a66c 100644
>>>> --- a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
>>>> +++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
>>>> @@ -35,6 +35,9 @@ properties:
>>>>        - items:
>>>>            - const: qcom,sm8750-cdsp-pas
>>>>            - const: qcom,sm8650-cdsp-pas
>>>> +      - items:
>>>> +          - const: qcom,kaanapali-cdsp-pas
>>>> +          - const: qcom,sm8550-cdsp-pas
>>>
>>>
>>> This time maybe without HTML:
>>>
>>> This looks wrong. This is not compatible with SM8550.
>>
>> Could you point out what is the difference from your perspecetive?
>> it is the same as SM8550 except for there is one more interrupt,
>> which is also described in this patch.
> 
> I'd second Krzysztof here. Your description points out that it is _not_
> compatible to SM8550.
> 

Here is the binding for sm8750 cdsp. Fallback to sm8650 but describe the
difference in interrupt:
https://lore.kernel.org/all/20250221160036.159557-1-krzysztof.kozlowski@linaro.org/

Thanks,
Jingyi

