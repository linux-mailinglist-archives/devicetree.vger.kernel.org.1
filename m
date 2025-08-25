Return-Path: <devicetree+bounces-208789-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 559C0B3345E
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 04:59:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1D0E21631A6
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 02:59:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30E65231A21;
	Mon, 25 Aug 2025 02:59:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MAclPqQO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9376C1C4A0A
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 02:59:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756090748; cv=none; b=qmq0OJ7l0Bk/O/hcfrgnprV1PLYc2UqGZRL8FL497QsAMGCs4r3OR7SegHn5AKNGRPnBt4U/xwop1lT7gSgvVT2AFJ8FPf2NLDAFTOZDEKbfrIIivikKaycfehmrfFfpxlz2fWXuOBjyNAz6VK7s4yDyzynJbESQnN2hecjxu58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756090748; c=relaxed/simple;
	bh=5TMb1g85npFy35XP/6ZEqzFaGrqT59x8sgiDs2SLlmo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PE41YxydbIQtIwoo8BMhJxHfBRJV3D3tM6nJgKPrQC+ZrKLk2yhsQFKLxjHNfOG8ZpqITWxcDZ1a4bd1zeZhs/jkousoTKUwWsLhuqMlRnI2O7RfW4JstOjG+PSS/k+6vuKiclrHC1AhhQGB0zsRQAftsyC1zMfNM0CFLccAX4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MAclPqQO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57OLeMnW027709
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 02:59:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pla/QjB44tiQOdRaYME4jtbNLH66yKqPkqc6mc3uXLw=; b=MAclPqQOoaCcJrB0
	MOKE/I3Wu2WONO49XLCWibfXhyT4kk7HWz4BDdUXwcZGmJd43vDuIDOhmKOgSMsf
	rTPWw0qJOXmMHpwd8DlFzLdNo0r5HWxU3dafDTZVQWovELV04R1qTw4zGmFCQFTF
	09j0AAB7jUXLCrpoZiXX0KI4Rene+i4EgyvRqmhH6Q7JpYmUw1UntETvexbx9tBn
	gHtYTzrb+Gm9mnUp7IC2WalxkNXkMo82Rezpsiikz0g/1IfMzWMUCxpD0jE1kpEN
	C612To1uFvuNQxkFV/3tbYbV4lgbRFeRgN6BX5E+FdfNikbbyEdUvHUA+B7Ex7l6
	bZLmhQ==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q5wdudup-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 02:59:04 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-77053dd5eecso2009211b3a.3
        for <devicetree@vger.kernel.org>; Sun, 24 Aug 2025 19:59:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756090743; x=1756695543;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pla/QjB44tiQOdRaYME4jtbNLH66yKqPkqc6mc3uXLw=;
        b=xSRxVLxmTYsSKzeVvH5Fg5p0Ts+uQDObp4/zT9kWPjxHeHel1Gjs6OxejkhaKy1rvC
         6iuQNOf4uxzp59ByVqNSimlrCw5r6iB5yAfCVTP79F2TUyucE9juuZug/PY5EtbZjPD8
         /WwN/KrBJtByqEWnAlstgBlCye0cr3TRsT6qOB7ZkI+17p8WoyD3n+ORcx0o0FzMExhs
         GosjSD4WPwF1SZUBs/TYP14nMDvh/4mGoL99Glw7/ziHLmPhlaeE73z8CEzTeyu3g+yt
         ONXy/Q1N26U0wD1m/wRxfQpjXIIMSJmgPyoARdcJNrJ2WJjDhjJnqCulEZtXfubGSxkA
         OUhg==
X-Forwarded-Encrypted: i=1; AJvYcCW2D6D6uI7MdNEjYCNhxz3E7PBUKWiOWZMre6ydUl1Ts81FF6xvL7EFJ88W92B33NBaSAFSdMcYSca3@vger.kernel.org
X-Gm-Message-State: AOJu0YwIpDCicVFemslzWTmWQa8RiAONEsP2aK8gxApoppnz78eOvXMY
	0EGyf4doRoNUsIHJwKG1zFG67WN7y4ux6qQGQhzx6tQPjF5Z2/iHKsQAfV5r09fkDVhvDDVauYn
	80jxL5MXSOa0Uf13rOaQVG6Jq8tSuW0zfO9VY8KC39yxIkq95aLwf84x3/ahtNe3e
X-Gm-Gg: ASbGncv7/6FLrQq6L84Nn74szqezZ+18zMSpiu52h9SfCM9DC0iDUh8ZlQ4b79xJTto
	A+b7f4kmh8sRTT1VrtHf0sSR5OznMX1p3zeCgj9sYrYcpLJ71FzFQoDKFfN6cTNhdSDuyUjYP0s
	LOTUJ7LMjvp0wyAbygsF2G2xfkLspzVaeZdBJdjiR5f3IUjKo8QI+C9WX65+agOAOVfk1/YF93m
	6sreyZXEjBzWDtglOmreGXUWZtxniYKC2OStECzVzsDIgk66vX3AUZ8iOH2WkxWZ2fInJYpnDfF
	OqYrBYSiW6A2cx2zoJ04DY9cFAl6ewbEQaVUzHy+zM/aR13lCHfLmLyBPIRLcwDxxAKckieZBdc
	tN55xbzlvJeSQcodfjvhCmhJ21nIWcVU=
X-Received: by 2002:a05:6a00:190e:b0:757:ca2b:48a3 with SMTP id d2e1a72fcca58-7702fa048d1mr14178796b3a.9.1756090743379;
        Sun, 24 Aug 2025 19:59:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGCpI9lwwPj/ghs95Ybuszk8ZhygB0e+mYXnTFXl3eSB1K0RxyvY+gmOa2bAJx/E+5Zx4Bxtw==
X-Received: by 2002:a05:6a00:190e:b0:757:ca2b:48a3 with SMTP id d2e1a72fcca58-7702fa048d1mr14178751b3a.9.1756090742854;
        Sun, 24 Aug 2025 19:59:02 -0700 (PDT)
Received: from [10.133.33.147] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7704000edeasm5911077b3a.45.2025.08.24.19.58.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 Aug 2025 19:59:02 -0700 (PDT)
Message-ID: <65dfd4c2-37bb-4d99-8753-ce17e17097d2@oss.qualcomm.com>
Date: Mon, 25 Aug 2025 10:58:54 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 2/6] dt-bindings: display/msm: dp-controller: document
 QCS8300 compatible
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250821-qcs8300_mdss-v8-0-e9be853938f9@oss.qualcomm.com>
 <20250821-qcs8300_mdss-v8-2-e9be853938f9@oss.qualcomm.com>
 <3ws6xfmmrnjybn4umbbnzjdksqberzuxslz6uxpabtsz2yzyss@jwblshilyx4p>
 <b86a1759-e49f-48b1-833d-fdc37b450f5e@oss.qualcomm.com>
 <ftazymlvq7rtbesx4keuek4avmmjq5cx4clewwpmem6ta7qmti@bn24prgszc2j>
Content-Language: en-US
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
In-Reply-To: <ftazymlvq7rtbesx4keuek4avmmjq5cx4clewwpmem6ta7qmti@bn24prgszc2j>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: Tsfe9rghGXK1vwkXE1Vu7VCiIs9XvsX0
X-Proofpoint-ORIG-GUID: Tsfe9rghGXK1vwkXE1Vu7VCiIs9XvsX0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzMyBTYWx0ZWRfX2CJvc4DH8ecz
 eA3vkDKZoNNTbcrlz7mdm7bApvALmo+WLz6Zj5GiSWr9iA/WO6zkN4tzR0Db9BEiqvoGBRjz4d8
 0mS30HYdbAVy1/lINhOXMVpfh+y9C5u1FjYGdHs8aQy5E2X1vxCO/lY55Zf8CfhrT1FnAUQbN41
 FELITII1Z3Qspn44ChmQqrzq1nCQawH0eww3YBb7eT3hTCbVhIpXrgd6Bg/N66vIamSc6zZhV/V
 pOKKDTVIav4vq/HsJo3zpnU/TVqsAICHtYbd5nzhtki6R2zEJZAXXRSFkPbib0JZxVSw1yc3KvM
 62wauJ2WNIt+H1mDESjCXPXuWKoSFgLzEM8LHCzjXJSBR77PvVO/QqDUPorXqh5SJuEfh/PbZud
 pKvgtXg4
X-Authority-Analysis: v=2.4 cv=BJazrEQG c=1 sm=1 tr=0 ts=68abd178 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=2PmUQm8wz_2Da7m3RkIA:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-25_01,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 priorityscore=1501 clxscore=1015 impostorscore=0
 bulkscore=0 phishscore=0 suspectscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508230033



On 2025/8/22 18:34, Dmitry Baryshkov wrote:
> On Fri, Aug 22, 2025 at 11:06:58AM +0800, Yongxing Mou wrote:
>>
>>
>> On 2025/8/21 18:28, Dmitry Baryshkov wrote:
>>> On Thu, Aug 21, 2025 at 11:35:57AM +0800, Yongxing Mou wrote:
>>>> Add compatible string for the DisplayPort controller found on the
>>>> Qualcomm QCS8300 SoC.
>>>>
>>>> The Qualcomm QCS8300 platform comes with one DisplayPort controller
>>>> with same base offset as SM8650. It requires new compatible string
>>>> because QCS8300 controller supports 4 MST streams. And 4 MST streams
>>>> support will be enabled as part of MST feature support. Currently, using
>>>> SM8650 data structure to enable SST on QCS8300 in the driver.
>>>
>>> Bindings describe the hardware. There is no point in discussing the
>>> driver here.
>>>
>> Thanks for point it.. "The Qualcomm QCS8300 platform comes with one
>> DisplayPort controller that supports 4 MST streams", do you think this
>> description will more appropriate?, only discusses the DP controller, not
>> referencing the driver or SM8650..
> 
> Yes
> 
>>>>
>>>> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
>>>> ---
>>>>    Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 5 ++++-
>>>>    1 file changed, 4 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
>>>> index 68a6fd27506fda004e53174db5bcc88a29e8d2a6..ac44abfdd2853393ae199387c9ae2c37e1c48f52 100644
>>>> --- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
>>>> +++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
>>>> @@ -18,6 +18,7 @@ properties:
>>>>      compatible:
>>>>        oneOf:
>>>>          - enum:
>>>> +          - qcom,qcs8300-dp
>>>>              - qcom,sa8775p-dp
>>>>              - qcom,sc7180-dp
>>>>              - qcom,sc7280-dp
>>>> @@ -179,6 +180,7 @@ allOf:
>>>>              compatible:
>>>>                contains:
>>>>                  enum:
>>>> +                - qcom,qcs8300-dp
>>>>                    - qcom,sa8775p-dp
>>>>                    - qcom,x1e80100-dp
>>>>          then:
>>>> @@ -217,8 +219,9 @@ allOf:
>>>>              compatible:
>>>>                contains:
>>>>                  enum:
>>>> -                # some of SA8775P DP controllers support 4 streams MST,
>>>> +                # SA8775P DP0 and QCS8300 DP controllers support 4 streams MST,
>>>>                    # others just 2 streams MST
>>>
>>> QCS8300 has only one DP. As such, it doesn't belong to this clause.
>>>
>> Emm,thanks, i got this point. So here need add another clause only work for
>> QCS8300(one DP controller with 4 streams), and i put codes before
>> "# Default to 2 streams MST", is this the correct place?
>>
>> -          # Default to 2 streams MST
>> -          properties:
>> -            clocks:
>> -              minItems: 6
>> -              maxItems: 6
>> +          if:
>> +            properties:
>> +              compatible:
>> +                contains:
>> +                  enum:
>> +                    # QCS8300 only have one DP controllers support 4
> 
> typo, controller.
> 
Got it.
>> streams
>> +                    # MST, no second DP controller.
>> +                    -qcom,qcs8300-dp
> 
> Missing whitespace, drop the "second DP controller" phrase.
> 
Thanks for review and point it , will update next patch.
>> +          then:
>> +            properties:
>> +              clocks:
>> +                minItems: 8
>> +                maxItems: 8
>> +          else:
>> +            # Default to 2 streams MST
>> +            properties:
>> +              clocks:
>> +                minItems: 6
>> +                maxItems: 6
>>>> +                - qcom,qcs8300-dp
>>>>                    - qcom,sa8775p-dp
>>>>          then:
>>>>            properties:
>>>>
>>>> -- 
>>>> 2.34.1
>>>>
>>>
>>
> 


