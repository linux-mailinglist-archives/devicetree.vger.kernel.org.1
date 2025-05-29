Return-Path: <devicetree+bounces-181612-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9729FAC80F4
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 18:35:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DBD543A9A88
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 16:34:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3076122D7B8;
	Thu, 29 May 2025 16:35:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="K66QYJmM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67CBD2288C3
	for <devicetree@vger.kernel.org>; Thu, 29 May 2025 16:35:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748536502; cv=none; b=XI+vN/u1yoqQ/+W8i2FZ/vJ5crC3uTqe1h/EeiAQv5ODyHaPabndoVp1oXCjp5jwwAuZB5xNMCZJlVzlWKQbdCOxsyhdIXgTDqTFRsKyL+2WZ6Rn4hf6z4n4iILLOGhULbyEXsU4TelEMhWNl+nUNzo7JqwzOkKnLLBdIwjuOmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748536502; c=relaxed/simple;
	bh=ejWgNmNYardDVPgxRviRlja6u2fQbh1NpGtXEbvlda0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Z8gDBOXZSISVJ0al3XmXsUB4u5xNs2E8TmB/HED3MbVFEhSPLsw6SOteK/V+HYwXMQ/gYgvgSKTfowhWIVWkZyTQprEGc/euqYRibT1ZtRWv1PnnrOwRj/kaOHj0zuSv5PSoY+kwZqsVPkXXBjFV5TL09J7L92qPkBzCJH9KvsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=K66QYJmM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54TC1lOr005270
	for <devicetree@vger.kernel.org>; Thu, 29 May 2025 16:34:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rIQYsd49PJi3Pc8vfrZCnRgJdFHlsZ5iOjOney/LHNo=; b=K66QYJmMnaBFGQuK
	Ssr88wVX3OYOKVlI75o2YuvM8FxuK5VsTt+tldIiuJgEQMO5ZE8rjqmJpS9HFG5c
	uOlkbi81MFRXqa+5Oo071J5OJiJTPaAMgovWhWdW4SZA/hJukBorrXTpzHft+vIW
	97rR0xhamVUzyeJ47ZmcJZ0XlnvbONFZPlXnV8nol9oeHPjlgyOYrXE9czhGlR8j
	z2o0DwVo6ya3VxkwlEIiTQT9YD9aIQfhgLW/tuB741RDDTx5/RGr8NHgJ8iGUf8U
	xvpPZMftdlgChFXmHF1XSn5+UoI5uUnQ/6FGJLNJF7DSzq/8Yj2K5AhXY9OyoUNx
	iypY3A==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u5ek66d7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 29 May 2025 16:34:59 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-49452798bd4so1820771cf.1
        for <devicetree@vger.kernel.org>; Thu, 29 May 2025 09:34:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748536498; x=1749141298;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rIQYsd49PJi3Pc8vfrZCnRgJdFHlsZ5iOjOney/LHNo=;
        b=NvC9LMOKf73IKseAdVGWGwqUT6yLG25q/4NYGR22iMc30vgbriBTWC/d1zEjjrAkLS
         l/aeIgslbaSMdzbDWS/wv1PvKK7HtSSCodFGGyqbeX9a5KtjfpGwutBnfxmJprYqtBcL
         Nkl9LuoGJksYVrXGnYRl5hMws9YjOzDgpyNQGXDnlkl7o+MuJzeCvR6Y8yiBC6oYw4a9
         YdDCItfxyrjfg3lfNCqnGTN5T8EHo/2nnQVHZ6H6cNAjVQVN8I9Y+x6fR31idTXHqH5c
         6k2HligBLolVuy1gdCyvE32x05J1gjL2HW8+c+y0t9R3s5nMbFi7OIXFdreUuG8KKeQ9
         czfw==
X-Forwarded-Encrypted: i=1; AJvYcCXpsRHF6Rwh39SVQXmZ6n4c97aWEfA+ZcDbCuEIUXK8+4os6DwPexTGYOb/bH8ZDDyDIoguYznncAz5@vger.kernel.org
X-Gm-Message-State: AOJu0YwmuTPElXlbFrc0Am/HQwhJvCf90eOYN2BTf8kld0O1mpqhfv/v
	Ib9C5Zz3UlzxGkTdlI2rCvMfAu2X8E5h9rhZygUr/ORCA1Xv7eHq2iLvLPb7JOudQyKpmmJFFgf
	wEXyaM+JWjEi1yoopCokd6OZklbQ+aSMAhK9Da0SjHdFQLuDAbqDlOrWWYhDmQO7n
X-Gm-Gg: ASbGnctleV1LuLavGrOFxYmNknsLOBI+rl4QYW9t1cXkKsi8f8jiNfcp2znNAobK1+K
	FRqIP82GXJoDpC9LHi0yxGO/ML8SYbre6eS1RDPGgWsD4HOXX0r31tP1LI9ZWItSp2cEPecZt5G
	ppElB1DsH+PL1Yg5O9zf7cawiueM3vVe4pHQWs+yrn/S/3mscNnB4O2eIQKzHA7yUSUAYIWykEG
	OLiD8sqUbUGE9X/S6fgyYeE80Sbz1S4nvNdUR5GEj+zy2Z4rIdfH8JzjntI8LgUT2g/LP86o7Yb
	ugJJ1S+D+xjjz7ia32mcQqk3cG5fRMfRC8as3wAHNAfr6KsaOvVrQzNosYTG4+n4hOA4Qybr51T
	O
X-Received: by 2002:ac8:5982:0:b0:494:b4c4:8d7e with SMTP id d75a77b69052e-4a4400c62a3mr1397131cf.12.1748536498227;
        Thu, 29 May 2025 09:34:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF/9fsTD2pnZau6Ubyd/7evR4/8s33kyWi2oDxzEfxdv+Ya4C4RYdlxwwfrfdKsXHXkWhuWqQ==
X-Received: by 2002:ac8:5982:0:b0:494:b4c4:8d7e with SMTP id d75a77b69052e-4a4400c62a3mr1396721cf.12.1748536497701;
        Thu, 29 May 2025 09:34:57 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ada5d7fed0dsm170873466b.9.2025.05.29.09.34.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 May 2025 09:34:56 -0700 (PDT)
Message-ID: <b4235317-97c0-4225-b6af-f79358cbf508@oss.qualcomm.com>
Date: Thu, 29 May 2025 18:34:53 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 02/12] dt-bindings: arm: qcom-soc: ignore "wsa" from
 being selected as SoC component
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Alexey Klimov <alexey.klimov@linaro.org>,
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
 <7938374e-85fb-42b9-893c-ec3f7274f9c0@oss.qualcomm.com>
 <9c8fe115-97e8-4966-b332-6de94015f832@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <9c8fe115-97e8-4966-b332-6de94015f832@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=GIgIEvNK c=1 sm=1 tr=0 ts=68388cb3 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=wjVnlRVulhwI95BqwIwA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: OJAqmnV5jQI_r1czGJ73YgFslOFjdFqP
X-Proofpoint-GUID: OJAqmnV5jQI_r1czGJ73YgFslOFjdFqP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI5MDE2MSBTYWx0ZWRfXxR+GwwXsaHEU
 B2qs9ymiJpEQVtJ0vJ/ppRKh/8PTJfqFzTL06HBrvF1CS6ePPlWJTrYSoUqnIXAGgDo8uYZXPmF
 5ZGmQou2wjKHwHt5l8QaI/kvX4dltatpc92ch8NEAvgOuJiZe8emmHa2jWfKpXXrJ6W1hZLXtD+
 ZSEqZk9z6L//0n51yw96upB1VPR1GQ/PjtT/Ur6J25dp1eyBSoZgU4U4bG9oCayI42xwHvCD1Ei
 g0E4BeJhtLPipVdz9IQU5nl6Ij4i2sWUt1fdwZSwD1rNJGVXP4t+qfCWlglA8vCd6pVubGu7tXy
 XdJqvf5O/OuexTTUKKWSoJhlNbfppcDGFTZ/2Yzwe3ZEF6VI+2k0t8A9f4mfcfNbNpGk41MaTxc
 ZYKSZOn9ez6xlKLUPdtX5J7MbjXj4Ic8qZyfuQ3KGOA4iYiclfcxanPvnf/1QFpl0E3e/c8n
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-29_08,2025-05-29_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 bulkscore=0 clxscore=1015 lowpriorityscore=0
 adultscore=0 priorityscore=1501 mlxscore=0 phishscore=0 spamscore=0
 suspectscore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505290161

On 5/29/25 8:58 AM, Krzysztof Kozlowski wrote:
> On 28/05/2025 18:58, Konrad Dybcio wrote:
>> On 5/28/25 4:37 PM, Alexey Klimov wrote:
>>> On Fri May 23, 2025 at 9:12 AM BST, Krzysztof Kozlowski wrote:
>>>> On Thu, May 22, 2025 at 06:40:52PM GMT, Alexey Klimov wrote:
>>>>> The pattern matching incorrectly selects "wsa" because of "sa" substring
>>>>> and evaluates it as a SoC component or block.
>>>>>
>>>>> Wsa88xx are family of amplifiers and should not be evaluated here.
>>>>>
>>>>> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
>>>>> ---
>>>>>  Documentation/devicetree/bindings/arm/qcom-soc.yaml | 2 +-
>>>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>>>
>>>>> diff --git a/Documentation/devicetree/bindings/arm/qcom-soc.yaml b/Documentation/devicetree/bindings/arm/qcom-soc.yaml
>>>>> index a77d68dcad4e52e4fee43729ac8dc1caf957262e..99521813a04ca416fe90454a811c4a13143efce3 100644
>>>>> --- a/Documentation/devicetree/bindings/arm/qcom-soc.yaml
>>>>> +++ b/Documentation/devicetree/bindings/arm/qcom-soc.yaml
>>>>> @@ -23,7 +23,7 @@ description: |
>>>>>  select:
>>>>>    properties:
>>>>>      compatible:
>>>>> -      pattern: "^qcom,.*(apq|ipq|mdm|msm|qcm|qcs|q[dr]u|sa|sar|sc|sd[amx]|sm|x1[ep])[0-9]+.*$"
>>>>> +      pattern: "^qcom,(?!.*wsa)(apq|ipq|mdm|msm|qcm|qcs|q[dr]u|sa|sar|sc|sd[amx]|smx1[ep])[0-9]+.*$"
>>>>
>>>> Why dropping front .*? Are you sure this matches what we want - so
>>>> incorrect compatibles? To me it breaks the entire point of this select,
>>>> so I am sure you did not test whether it still works. To remind: this is
>>>> to select incorrect compatibles.
>>>
>>> Thanks, great point. I tested it with regular dtbs checks with different
>>> dtb files but I didn't check if it selects incorrect compatibles.
>>
>> Maybe we can introduce a '-' before or after the socname, to also officially
>> disallow using other connecting characters
> 
> It is already there.

Pardon, but I don't see it, only in the 0-9 group

Konrad

