Return-Path: <devicetree+bounces-217835-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 49D89B5956E
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 13:42:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B9C00189E788
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 11:42:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0953C307ACE;
	Tue, 16 Sep 2025 11:42:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eixz+GBt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E4533074BC
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 11:42:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758022927; cv=none; b=Cb1cpGo10JJ/VVjmsfq23zfE+phGb0nwkPYvy4etXUKH+EwWJg140ajseQWP7rp/HF+Z9bZKGy+kOFnl8t26M+E/gvDEm0QD7zSSGVtQn5+7TYWXeSk9kiH7jmRjX3Zf0gu8yErlU/n//RydI44ffB0eeJGesXBVnFJ7wK1upEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758022927; c=relaxed/simple;
	bh=ItCejKcUBQOoT9M8KlOYQZ3ktYfk/sp33f2g/MgsGMk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=O9w+TOFrKG7lQe04+A9OUj6TASg1cNXnIN/YGAD7tX6+2skyvQ8BDMjTSaKmIXmnP0EqIdYoWM9QfxE7qfMV8tNaZ4LGPhbO+LASlOQhoTyWhdR6Ffmh4n9uUYMtQagbD2attXgGbulNTNCY7EL9In54iEzeOh5GxTSz96Jndt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eixz+GBt; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58G9tHT3007954
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 11:42:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	28jT5eJY9ZKsO53A9rpLGgzTqembdzTWrpkXeaPHOvw=; b=eixz+GBt+PeG79J3
	oCb75uRzMSwaY/lLMulFmfqSANh2rFRGoTTjs1HveZCIoiu4jPoi6tzONPwYolos
	Xxo+RyCxgZzei1e1NPP01+LSQIzPUQclpvs5s0h4AazOjSxVL+F1gl4GxZ4DN8VV
	PXY+MYj7i8cWKZcMS6Bwh1/sigq/9//FWpoVV6xmMeoJCWAduU85pLSkEG19Qxw7
	TVpTsgxuqGTgs9haxIwTL4sZIfAvDyYIvvUfsidGPGFWn9+9Q0sLLGduoMwWsIQi
	ZHLNkV5VzNGBTOBvTnR+k0JMjAOSLtV1Jp5JwUsd9uhZIcYw56ijqp6gg/7eZdD/
	D8CjGw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 496g5n4cpg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 11:42:05 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-244581a191bso8667335ad.2
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 04:42:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758022925; x=1758627725;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=28jT5eJY9ZKsO53A9rpLGgzTqembdzTWrpkXeaPHOvw=;
        b=abqHBKxiw7tcd1C5mi/59HPZ+jwbPdpClnHP1WGHvd+PdYmrTsiFPJC32USa5OW8EJ
         2u2xTU+A+P94xzHDR1xluok5oSz7pUOctt2HjW8Bz9yfMcLOm3OQmXaR0CTw0f/WmGSe
         jTeZc11+1sGrBYUzhKSBp/yVkPzQs92KjmUZxVlbYZ5gXLLAs8X3FC65kqTnu10At7Nh
         lTatL3zcmcpaTa3DqPfY57ptA14bWwRlcvwdtS3q2QLZIZ8TnT3ypVj28ddimvKbfaSH
         IMTcS4uq5ngd4vxcH3l0ONnkrHcTE5ntuISV3QA/ZpT6cyzvO26y5stR79CnZqSSN7+O
         fsbQ==
X-Forwarded-Encrypted: i=1; AJvYcCWB85mIZ8c/srogprRxog0bmutg6MSbJNvbIeUwll6bSFamOzZgvcUr9NxMWydan08tAyadRz9nMaWQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yxf6HBAKRnXb6mOBLK7gFWQFDI711rlMCj2Z6ronSKgz97DQNxI
	s3vpM6EwVuQzX87oNMy3TCS7z3L6YgvoryHCV/4JEH0irJEIa2qYVDvzboQOvBtJXzK2Ak0XFl/
	Ccdocbuu1BiotVi28ixQ5MhBRartCSqYiqy8/yVVuZ1HFMWMNb7TaXIH2Cn6zhClZ
X-Gm-Gg: ASbGnctxXLp+WqtLZY7cKlMZg7fjiVTCNiqogVgYXTqR1dcdRe+inAtowDRFSULQO9g
	28jQPGga8LjnjuYk2ilRJwB9akUf+jRticKQ69C7zovyJIHnaPKHEW65UBFjbOTGebJTXn/tjaR
	f/9b1W20Sf1/Qu46G0IQMmRGR2Bt2Aslje6dLql1WJDer58FAgeNWZ/pdVsz2s+KWxM5SujDvKK
	Q/uZaAsutQPNIlCtJVE2ufkBvldhFhKXgRIPIcsQsFjCSoAGVCPKKTjQkhck006qauCtSOtJLvC
	acP4zwVA0vYe1AVF4zo30odkn1yIJfBhA5mIxe06rYq0WtZTukjaTVa8ujG4R/DJUtqBAU/7Otc
	iPNjghnDOpO3931prDsEM+W6OvZJJK9utqZQ=
X-Received: by 2002:a17:903:1c3:b0:263:cd95:9c8a with SMTP id d9443c01a7336-263cd95a9f0mr71970895ad.3.1758022924694;
        Tue, 16 Sep 2025 04:42:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGWylWAJjgYMxeXH1aDjbmaNpm3PYB57mwZg670WRfZJndDsocIiuW1GfqYWyIhKbdR9hVdLA==
X-Received: by 2002:a17:903:1c3:b0:263:cd95:9c8a with SMTP id d9443c01a7336-263cd95a9f0mr71970535ad.3.1758022924093;
        Tue, 16 Sep 2025 04:42:04 -0700 (PDT)
Received: from [10.133.33.231] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-267b0bbab01sm35190095ad.116.2025.09.16.04.41.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Sep 2025 04:42:03 -0700 (PDT)
Message-ID: <7acd7bef-a70c-486d-a052-4a544d751d16@oss.qualcomm.com>
Date: Tue, 16 Sep 2025 19:41:55 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] dt-bindings: display/msm: dp-controller: Add SM6150
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
        Kuogee Hsieh <quic_khsieh@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com
References: <20250916-add-dp-controller-support-for-sm6150-v2-1-e466da9bb77d@oss.qualcomm.com>
 <5sg43rsun33i6bm3vz7io7yx2p4m7bmk5bnrnjg6u3zrulyofs@gyxtnfs4gvhz>
 <d302e71f-19bb-426f-a7df-c0d7854e97af@oss.qualcomm.com>
 <67a06487-001a-4af7-83cd-e9d05d848479@oss.qualcomm.com>
 <qnsxykukg3kigfiihdrrjkp6sbm4qte6lsga3as7eg3xaodtlt@skg5tcp4htii>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <qnsxykukg3kigfiihdrrjkp6sbm4qte6lsga3as7eg3xaodtlt@skg5tcp4htii>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: V28n3oKcWAhiLTLKcOww0zNyccHE3yxZ
X-Proofpoint-ORIG-GUID: V28n3oKcWAhiLTLKcOww0zNyccHE3yxZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE1MDA4NyBTYWx0ZWRfX6UhkZBBdmj3v
 n1Y0s3sEU+NtNFI26lEVwfcyFJFs5MP8Tgy8aVe3jgGcL4DkZ/vqD37k2vKEWxuCizkzEQTgEwi
 KscXM8UCtEKb+cRvKprG5bHDe8iwGsZmaExAg49iQYVAihq6X4NAz1RgeHnuU6xQdq8aYaV8Okw
 zLtBaqnpKfBM4p7qkoI7zmJTfCyMNiZmCM28bfIvOhdfM96rvMMTHhdXoZPZawx+KDcegHSQDM/
 y2aB1bzJ0j0LbLdxTF7hSA9baX/Mdjxts5EtWCzt681CZWOPRU/W3qVG7lPTp956vYPB78TKPSL
 VtwPRVaDajVRLmblkRiSk+aWxbsQZHyOOK2BES9ozswQu4uqg4Pvip9FHPDRXUPNPYcFCd8g6FL
 ja/eiyFV
X-Authority-Analysis: v=2.4 cv=SaD3duRu c=1 sm=1 tr=0 ts=68c94d0d cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=07YUQ-M1LMe7Y8jrGJMA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 malwarescore=0 phishscore=0 spamscore=0
 priorityscore=1501 bulkscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509150087


On 9/16/2025 7:37 PM, Dmitry Baryshkov wrote:
> On Tue, Sep 16, 2025 at 07:34:52PM +0800, Xiangxu Yin wrote:
>> On 9/16/2025 7:25 PM, Xiangxu Yin wrote:
>>> On 9/16/2025 6:22 PM, Dmitry Baryshkov wrote:
>>>> On Tue, Sep 16, 2025 at 03:31:35PM +0800, Xiangxu Yin wrote:
>>>>> Add DisplayPort controller binding for Qualcomm SM6150 SoC.
>>>>> 'qcom,sm6150-dp' uses the same controller IP as 'qcom,sm8150-dp'.
>>>>> Declare 'qcom,sm6150-dp' as a fallback compatible to 'qcom-sm8350-dp'
>>>>> for consistency with existing bindings and to ensure correct matching and
>>>>> future clarity.
>>>>>
>>>>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>>>>> ---
>>>>> This series splits the SM6150 dp-controller definition from the
>>>>> '[v3] Add DisplayPort support for QCS615 platform' series and rebases
>>>>> 'dt-bindings: msm/dp: Add support for 4 pixel streams'.
>>>>>
>>>>> The devicetree modification for DisplayPort on SM6150 will be provided
>>>>> in a future patch.
>>>>> ---
>>>>> Changes in v2:
>>>>> - Update commit message and binding with fallback configuration. [Dmitry]
>>>>> - Drop driver patch since SM6150 is declared as a fallback to 'qcom-sm8350-dp'.
>>>>> - Link to v1: https://lore.kernel.org/r/20250912-add-dp-controller-support-for-sm6150-v1-0-02b34b7b719d@oss.qualcomm.com
>>>>> ---
>>>>>  Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 1 +
>>>>>  1 file changed, 1 insertion(+)
>>>>>
>>>>> diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
>>>>> index aeb4e4f36044a0ff1e78ad47b867e232b21df509..82481519005a1b038a351aa358b9266239d0e8a9 100644
>>>>> --- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
>>>>> +++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
>>>>> @@ -46,6 +46,7 @@ properties:
>>>>>        - items:
>>>>>            - enum:
>>>>>                - qcom,sar2130p-dp
>>>>> +              - qcom,sm6150-dp
>>>> In the review to the previos iteration I think I was a bit explicit:
>>>> "qcom,sm6150-dp", "qcom,sm8150-dp", "qcom-sm8350-dp". You seemed to
>>>> agree to it. Now you didn't implemet that. Why?
>>> Sorry, I misunderstood your previous comment.
>>> I thought the recommendation was only about the commit message, not the
>>> binding structure.
>>>
>>> Does the current implementation mean that qcom,sm6150-dp and qcom,sm8150-dp
>>> fallback to "qcom,sm8350-dp"?
>>>     - items:
>>>         - enum:
>>>             - qcom,sar2130p-dp
>>>             - qcom,sm6150-dp
>>>             - qcom,sm7150-dp
>>>             - qcom,sm8150-dp
>>>             - qcom,sm8250-dp
>>>             - qcom,sm8450-dp
>>>             - qcom,sm8550-dp
>>>         - const: qcom,sm8350-dp
>>>
>>> Do you mean modifying it as below?
>>>     - items:
>>>         - enum:
>>>             - qcom,sar2130p-dp
>>>             - qcom,sm6150-dp
>>>             - qcom,sm7150-dp
>>>             - qcom,sm8250-dp
>>>             - qcom,sm8450-dp
>>>             - qcom,sm8550-dp
>>>         - const: qcom,sm8150-dp
>>>         - const: qcom,sm8350-dp
>>>
>> Or this?
>>
>>     - items:
>>         - enum:
>>             - qcom,sm6150-dp
>>         - const: qcom,sm8150-dp
>>         - const: qcom,sm8350-dp
>
> Yes


Thanks for clarifying, and sorry for the confusion earlier. 

I will update the binding to use this format in the next patch.


>>
>>>>>                - qcom,sm7150-dp
>>>>>                - qcom,sm8150-dp
>>>>>                - qcom,sm8250-dp
>>>>>
>>>>> ---
>>>>> base-commit: c3067c2c38316c3ef013636c93daa285ee6aaa2e
>>>>> change-id: 20250916-add-dp-controller-support-for-sm6150-525ac2ed8c86
>>>>>
>>>>> Best regards,
>>>>> -- 
>>>>> Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>>>>>

