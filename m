Return-Path: <devicetree+bounces-190379-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 18DE5AEB956
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 15:58:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6A05F64140E
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 13:57:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD47E2DA766;
	Fri, 27 Jun 2025 13:58:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="p6mlJ+Z8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D28D1552FD
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 13:58:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751032687; cv=none; b=dRurwo809DFCJHqLOb40LYHw2nJNZ59tgvDEkEwcKPHRCp8RHbjXT7JkBiqp0AtirQQ50IHiUmb63d+GGL7VVhANlilMe1TJgpaDhPn22s4C2Pwz2j3KHHUQMjaNZMZiFXo5lBG3vwP5cbXfg/Iqx2qDExdeCukXR66MgBqeFOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751032687; c=relaxed/simple;
	bh=PbW+EBtMztzzi8ICMRD/REkIEiRuhchOsk7eMRuZuBo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PqSwxRlaE/PZtVtg77QVEswUnfOtimtLCJC4F+p43Xx2fGuGChCHaKk8HSJRJUDKnWK9pcr3SqQzo1pZ8Kijwvxe/+BzWJPvrDnDk/sulpp7tFP0dfYAFzz9TPsvBiDznT5GcAnO6GkTNOtQkyu1xZ2m55I3sQBvhrrbGv8x7Ds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=p6mlJ+Z8; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55RCilVP017705
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 13:58:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8f9O0TugmOaHYNQ6bPlsLyE5Zw/b0P1alMxsrUiNUbk=; b=p6mlJ+Z8/Mn9RTiu
	zP89Q+yg5MlMjJgCTmhPia3MawoftVFvRTBG3Cbu6lTTeW3nSRmHLOfV/eAzBKJS
	l/z4dfdNOCuu/drw2CPhWpTiu6a2LIaBEk/oWRIIDNKRQzisZyR7owTrWqZLaTOl
	sOqnhG62sCoxduAS1OXEi9XA/2qsHiWc8QK4p9TGOaFVlWNYy2XhaRHQLiNsPK+V
	Y8AijlKN+LUb+3446GZImtZAwfpYtiS9n24FPRw7BLkxCL97biOxqR1Cxvj2oqJq
	mLyQWuecK1mxYDaPlrxdsHs6zQwxLgm/QDYEj/c3FCPKKUpi8GbyEDWbSCSrF0ip
	NdNnVA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47fdfx5c1u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 13:58:04 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7d094e04aa4so53152185a.1
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 06:58:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751032684; x=1751637484;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8f9O0TugmOaHYNQ6bPlsLyE5Zw/b0P1alMxsrUiNUbk=;
        b=H3e7bVsMYrwxF7v9RcJLIc1vd+EKjxlKNVaREAkIoML2lReg/7emVf06BRJjaDPbZp
         bQu2t/9aEDKXBTJWCTsu60tqNflwt++PjGetWlDfuMdkwLvbUNdOkrrjZKGPjRQ9QTk5
         uPYN8yl4902Y49qMFkqoD5RtLxogCxTpoFif8xzuk9JbUITaIfdUmx7MrmDc7MpTLAol
         JozUsIH5VAUiM5Qq5+gnKPV1dU02tLcxBQtfsAcbDYwI0xcAnOiZrbl9cZ1GYKGecjqM
         1I+I6dOD/Ug1XGy9eCiqZAReKxBp0MdBskrHJQDE9NUH+B2cLU3GkE6TIE7cBrEUZ+ow
         DVtg==
X-Forwarded-Encrypted: i=1; AJvYcCU0HTigOSfZFWqeu7x7AScmzirb/7pL7wnFMjVYajwTdJhlBEeI7YO8+u3KWrUa3OY4qCFrL92btiZ7@vger.kernel.org
X-Gm-Message-State: AOJu0YzrVFHpWiF3+G17qIkmUofCqp5HQ7ebEliqv6qj5p87Oi2BveCI
	xTQL1/GrOjXHMAkV9uidfvYiT1KfQYUovMvsyyjZG/UypBSCCFMI9fk5xtgbaB3ZmuBAjTM5NEQ
	FlKGPFLufToR8jNITGMo3UgZ+lTsiHvypKvBRdgFZkmV0T89pAHS+8EbP6khg6W62
X-Gm-Gg: ASbGncuixMIhiiVSfK8YffIkxKwqyInRYsQnLE+AcqGOaIbX1ECCYdZNDRvkAMh9Iqp
	fvdS7P+R4KIuibs+xB8ML/xrF6slLmxjpdRy9tFF+p8/dSALGU5q3IVYy3jAqIyYRIUBcOjgwJZ
	ozue5vxMCAmXH1avYYDrKcG6c8Jpqg1qVNM6kkdP13iXxmAFSoZVbyCaQYncNoMvZZ5Zmhe/sQa
	ZegNMOT1jIOZoiKGI/drYltSlrsGTU9IAMbvdDSSbJcVEc0syLmpOJLRZFEk1egShao/ZH5vMDA
	b/svSuOfVkAaRf6hrvF8dXJuLy/Z/rzcNTcDVDjXPVMHN2BKq/bUXOyNfWl43Sz3wS56BEiJ65t
	kAH0=
X-Received: by 2002:a05:620a:4606:b0:7cd:14b:554b with SMTP id af79cd13be357-7d4439a5828mr185947585a.10.1751032683945;
        Fri, 27 Jun 2025 06:58:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEsqCNx5b/ikeBt7ufEGaLEu1rBhGNo0bQDVX9XSB7OyW/vrELCoJjxuw9x+u5urdhndBoKUA==
X-Received: by 2002:a05:620a:4606:b0:7cd:14b:554b with SMTP id af79cd13be357-7d4439a5828mr185943185a.10.1751032683377;
        Fri, 27 Jun 2025 06:58:03 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae35363b1fdsm131221366b.14.2025.06.27.06.58.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jun 2025 06:58:02 -0700 (PDT)
Message-ID: <99b9e6aa-36b4-456c-ba46-6e1207cc1019@oss.qualcomm.com>
Date: Fri, 27 Jun 2025 15:57:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 1/4] dt-bindings: mmc: Add dll-hsr-list for HS400 and
 HS200 modes
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Ram Prakash Gupta <quic_rampraka@quicinc.com>,
        Sachin Gupta <quic_sachgupt@quicinc.com>,
        Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Adrian Hunter <adrian.hunter@intel.com>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        quic_cang@quicinc.com, quic_nguyenb@quicinc.com,
        quic_bhaskarv@quicinc.com, quic_mapa@quicinc.com,
        quic_narepall@quicinc.com, quic_nitirawa@quicinc.com,
        quic_sartgarg@quicinc.com
References: <20250122094707.24859-1-quic_sachgupt@quicinc.com>
 <20250122094707.24859-2-quic_sachgupt@quicinc.com>
 <72b02fd1-5195-4bb0-b01d-5481b49a5680@kernel.org>
 <379e9199-4a9e-cd38-20cb-0fbd76fa33b3@quicinc.com>
 <abdde4ff-eae2-44c4-8608-89c762790549@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <abdde4ff-eae2-44c4-8608-89c762790549@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: fb7WccItQJaGPGNAmcY4rpjdWOiPgOqW
X-Proofpoint-ORIG-GUID: fb7WccItQJaGPGNAmcY4rpjdWOiPgOqW
X-Authority-Analysis: v=2.4 cv=MtZS63ae c=1 sm=1 tr=0 ts=685ea36c cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=COk6AnOGAAAA:8 a=v25VQKkRDONtiw5Uw7IA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI3MDExNSBTYWx0ZWRfX7yqg/sl7RV0t
 E7rfI4H0mrAgP2n1MhL7YTWRRX2QkI5HbCLBntX0f4MOqq3agag3Px6R5Fu3qMCsgqxOATXvTJs
 qUTJKUVs3V0rlkpekh66uNYTvfMJjJNWbn+9lTEr0a3RQLEuK6G+ctjgDfeApC4dl97f/SGD/1X
 lVw3D3XfDpPmTO640D75/DVwCFtD3E9goToL1AqjCLg5kMwekWZiQlUPZ0xOvXbmtYBGb9AWjWz
 OmpBAQSI5AhNfLo8N1l2wkdVC1HhpyI2/6r7OWUHDfG340pf8icrfkuFn4IhvLV0DYd6sLj9bRL
 7wqth0yMG1leanOqYyx7IPvVsYLG5p3yB1iUXGLXh06acBGjYK9jsrmwyzIhDE4V3Tm1WMcR3qg
 AAgvIIXmryj7I6SiJg+8ZI6oDhpYNNaD/3UBLkg5PNejvdgy7yaNaHcAmYyHflkKcYu2JDmM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-27_04,2025-06-26_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 suspectscore=0 adultscore=0 phishscore=0
 mlxlogscore=999 spamscore=0 malwarescore=0 priorityscore=1501
 lowpriorityscore=0 clxscore=1015 mlxscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506270115

On 6/26/25 7:42 PM, Krzysztof Kozlowski wrote:
> On 26/06/2025 16:16, Ram Prakash Gupta wrote:
>> On 1/22/2025 3:56 PM, Krzysztof Kozlowski wrote:
>>> On 22/01/2025 10:47, Sachin Gupta wrote:
>>>> Document the 'dll-hsr-list' property for MMC device tree bindings.
>>>> The 'dll-hsr-list' property defines the DLL configurations for HS400
>>>> and HS200 modes.
>>>>
>>>> Signed-off-by: Sachin Gupta <quic_sachgupt@quicinc.com>
>>>> ---
>>>>  Documentation/devicetree/bindings/mmc/sdhci-msm.yaml | 5 +++++
>>>>  1 file changed, 5 insertions(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
>>>> index 8b393e26e025..65dc3053df75 100644
>>>> --- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
>>>> +++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
>>>> @@ -133,6 +133,11 @@ properties:
>>>>      $ref: /schemas/types.yaml#/definitions/uint32
>>>>      description: platform specific settings for DLL_CONFIG reg.
>>>>  
>>>> +  qcom,dll-hsr-list:
>>>> +    maxItems: 10
>>>> +    $ref: /schemas/types.yaml#/definitions/uint32
>>> uint32 has only one item. Anyway, there is already DLL there, so don't
>>> duplicate or explain why this is different. Explain also why this is not
>>> deducible from the compatible.
>>
> 
> 
> Timeline still amazes me. I will be grumpy on this thread.
> 
>> I will change it to reflect array from uint32.
>> There is change with artanis DLL hw addition where it need total of 5 entries
>> (dll_config, dll_config_2, dll_config_3, dll_usr_ctl, ddr_config)
>> for each HS400 and HS200 modes, hence the new addition in dt. And these values
>> are not fixed and varies for every SoC, hence this needs to be passed through
>> dt like it was passed earlier for qcom,dll-config & qcom,ddr-config.
> 
> 
> Eh, no. That's not a valid reason. It's still SoC deducible. Don't bring
> your downstream practices here, but remove EVERYTHING from downstream
> and start doing things like upstream is doing.

QC SoCs have between 0 and 4 SDHCI instances, each one potentially requiring
different tuning, let's keep this data in DT

Konrad

