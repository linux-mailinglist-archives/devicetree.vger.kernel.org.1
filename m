Return-Path: <devicetree+bounces-222319-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2859FBA80EF
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 08:06:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B6E077A5782
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 06:04:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0ECC423C4E9;
	Mon, 29 Sep 2025 06:06:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RUR6oTCR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 526CD23909F
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:06:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759125979; cv=none; b=aY9wNEhxZ01UuHGquyrJjkrulUtMMFcIqhwWff9qX6+Xz/Dna+n83nViRoCbSnSzCMujKCATFQKPIcCkTcdHkJtsA4xfHXp+yjbNkCA2MKgOzJdw5MYPE7uqj1Vr2oksTR/Ugan9BCARos8Sp+KlOaXOyidUEEkYFnktHPTZTVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759125979; c=relaxed/simple;
	bh=R1hOZFlZFY7ahQICoW9mfCD5k6/twe3bR2ww9vrXT3k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AgE/mmaJlyNO9IqE0q64wEdz7x+oPmu9SSrJtFJ14xSYrtGRVlNn5U9iwdooPM8kzumAOISp8JCM/Qf+HDktC7JAV668g0HrvXNvoq9/ZxPcyzf28qqb4hkU0QkCNtKhU5js6Phaj9wC1sjTjAa2uJFZ2f3TEOnAIjqhRsRodOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RUR6oTCR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58SNJ3Q3004221
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:06:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Q0XpjhlKCQT5F8kJy8PyiFfpDsgcYYWrp+FmjNI18ME=; b=RUR6oTCRZ6j8OWTe
	v9adyTFiwTSoxot/syatb/FF3ga2I64NuyGOo9SWYM+Ek8ACA1Z60RE3qz6BuEo2
	K4YFA9pW4r/NM++KHDMxns5/E8XekFWRw2b1vXSi1L81uB4doin5jaNELEegAXtF
	rpy0dK2sgL+Om4dVsKlVqdVtj6dftwlBFDvCXHFdsSNYAnlUI3BupaGHt9zdV9+V
	aQwQxe1iYq/z25oFzje2Uf8cDUGZPcAte0yn2JewRsFbQEzSEkAy5Dn42jF/EKV+
	nTCOziE30UDvXFbA5M5M2pEg7r3zUhaycNJlBEwjlmYBvLN0HDyhslw/ISp7yYbx
	uFngAg==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e93hbu8f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:06:17 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-33826e101ecso719750a91.1
        for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 23:06:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759125977; x=1759730777;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Q0XpjhlKCQT5F8kJy8PyiFfpDsgcYYWrp+FmjNI18ME=;
        b=E/Q3Yp+kwjDUeATu7vydwYBYgAizlHeYxmHXO+W8OAQBtbs4P9+nFd4Pq/Eqgrp35H
         j8WhfFHUd4UDcN/KCthtSVLzabLnCOqY61kvlmby1KPFso4injKsUn1YH64WJDjm1Wde
         3RRR9yq6ydXbk72pXVWfeL036pENG9/4NZGwtOb+e77AmfgJHrM7Fx7Ke+4L0SyA1k0F
         90CfrZWrGdW7JEirP7hZKwOPiO4gEfySD5mEX4NPK7KNoOeKG2Y8N1ux2lu4RjXFp9q3
         xzs/MQLUzEM9E5ocsdZQ0lS3q+vg+zETcNc0l4eaPWnnYWvcMkphY8ls5iuaA124047D
         iunQ==
X-Forwarded-Encrypted: i=1; AJvYcCWCtcGbPVRwlvbGYNH34tzbahQrVk9yA9kKLWTCrFBR9QlKO+UiZywXok5iSSZJrbJEdRTr0/VvVi9w@vger.kernel.org
X-Gm-Message-State: AOJu0YwqstbonIFiVj1LxeZ2f9jj2x4wfheI0b/xMKQmMnmXeeOdlVhz
	C6mrLZggvuV+ocjXznHIpu6NNMz4jTpN73vhTgal0SAZW9I4nUXuI+hreUZCipVh2EgbES5jWmR
	eBbIGi9iQbADlNwwhs6FacohMK1ra3sK0p0WFBLOhRF8K0GN6H2bj6HgaZkvtbd26
X-Gm-Gg: ASbGncvAc/L7T3pM2OJkIeoExthSBVO6bcZtdi4igYaDZoFSZmtzLDV1B9Ga5/gcs5M
	EJ5ebbtP/qsH/50TPT4dh4O9T/n9pTq2ZmP53weXqjSHEDjyopnFM9gMh9A0LHxYqC/Zs4PU6a8
	G+8tUuoJTu3EjvPj5kgsrfpHe/v5AFyGssMaM/MQ2CLm35VToEoJAb9gLvrshxMJcrogzEWX7oO
	7onyMEyVI1Kyzquf/jPJkCZ0mTKYIRn1Uj7n3QQ0ijHTiPaZ2jBFx3hbPq1hpbtKJ+PsXdGz2ki
	TuB4Ap+5xBVWZvgM59wGLwUyEQGc1LNn3zNN5DAWfELxrhiSyScvNkxpQLXA7LetVrR5SGfESZ8
	zoLXicVbrtSYBXcG7/Ds6RoUipBXqDl4wQPM=
X-Received: by 2002:a17:90a:dfc6:b0:32d:fd14:600b with SMTP id 98e67ed59e1d1-336b3c40429mr8314076a91.7.1759125976471;
        Sun, 28 Sep 2025 23:06:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHQVPf+oBaonVnZ99jEvDhUwui7DGxCtnmjbrzMR45Ek6O6rY2D4syi0FnP3OVmzqjbKW12UA==
X-Received: by 2002:a17:90a:dfc6:b0:32d:fd14:600b with SMTP id 98e67ed59e1d1-336b3c40429mr8314045a91.7.1759125976021;
        Sun, 28 Sep 2025 23:06:16 -0700 (PDT)
Received: from [10.133.33.234] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-334326758f3sm6481957a91.2.2025.09.28.23.06.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Sep 2025 23:06:15 -0700 (PDT)
Message-ID: <d374036c-1263-42f4-b9ae-13b21427b01d@oss.qualcomm.com>
Date: Mon, 29 Sep 2025 14:06:11 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/6] dt-bindings: remoteproc: qcom,sm8550-pas: Add
 Kaanapali ADSP
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
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
 <20250924-knp-remoteproc-v1-1-611bf7be8329@oss.qualcomm.com>
 <h4lk5psnwx3ma3um2sozhcdccwhmgmbje2lgjks2czcrzn4mre@svtnbyzvrivw>
Content-Language: en-US
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
In-Reply-To: <h4lk5psnwx3ma3um2sozhcdccwhmgmbje2lgjks2czcrzn4mre@svtnbyzvrivw>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDA0MSBTYWx0ZWRfX+PPWyUD8CDZF
 2eqNAufEwhNTHqz2JhDGdEH3rzX/msQBKMdbLhuSHOcsciJ1uEBMvSNlHgaOpzmpVMGxRxS1PZd
 sxlB9Ae26jBrRml7F4B72Z3U/pELS81pehFTK9xbvfkK5ZVp4Jmqc0u6XaFD8vNJygN0h0jJFLh
 BJxBmJ0ZcXrXvPOPXXlvNhc7yMR0jczklEaumj2TuoBeqza+cHX3lTR9jJDijcVdQhvlaAW0Sth
 4yrLccAa3RP/XNYlPUR0MyZsBDMVapx0TJyuXS8QwWwgrId0lN270mbjLmQgfy6MPTKHvKC3IA5
 1W7dAxHgt7fIzIj2aS+9G2yhjRiEduk1vJq24t5wqADvzlupI7PVCn8Z4preAZfkzZxGrAcy26+
 jl7c/Oq6n/4eXKHazjmCL2mo2PD82g==
X-Proofpoint-GUID: _KkF3fFNmnoAyyZ0SIjCaHtq33Bu16DV
X-Proofpoint-ORIG-GUID: _KkF3fFNmnoAyyZ0SIjCaHtq33Bu16DV
X-Authority-Analysis: v=2.4 cv=Rfydyltv c=1 sm=1 tr=0 ts=68da21d9 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=VpiTcBU3MjFUXm55aNAA:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-29_02,2025-09-29_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 bulkscore=0 adultscore=0 lowpriorityscore=0
 impostorscore=0 clxscore=1015 malwarescore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270041



On 9/25/2025 10:19 AM, Dmitry Baryshkov wrote:
> On Wed, Sep 24, 2025 at 04:37:22PM -0700, Jingyi Wang wrote:
>> Document compatible for Qualcomm Kaanapali SoC ADSP PAS which looks fully
>> compatible with SM8750, which can fallback to SM8550 except for one more
>> interrupt ("shutdown-ack").
>>
>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> ---
>>  Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml | 6 +++++-
>>  1 file changed, 5 insertions(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
>> index 2dd479cf4821..be9e2a0bc060 100644
>> --- a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
>> +++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
>> @@ -28,7 +28,9 @@ properties:
>>            - qcom,x1e80100-adsp-pas
>>            - qcom,x1e80100-cdsp-pas
>>        - items:
>> -          - const: qcom,sm8750-adsp-pas
>> +          - enum:
>> +              - qcom,kaanapali-adsp-pas
>> +              - qcom,sm8750-adsp-pas
>>            - const: qcom,sm8550-adsp-pas
>>        - items:
>>            - const: qcom,sm8750-cdsp-pas
>> @@ -95,6 +97,7 @@ allOf:
>>          compatible:
>>            contains:
>>              enum:
>> +              - qcom,kaanapali-adsp-pas
> 
> This one and the next entry are redundant. Do you see why?
> 

This one describe the interrupt:

  - if:
      properties:
        compatible:
          contains:
            enum:
              - qcom,kaanapali-adsp-pas
              - qcom,sm8750-adsp-pas
    then:
      properties:
        interrupts:
          maxItems: 6
        interrupt-names:
          maxItems: 6
        memory-region:
          maxItems: 2


>>                - qcom,sm8750-adsp-pas
>>      then:
>>        properties:
>> @@ -185,6 +188,7 @@ allOf:
>>          compatible:
>>            contains:
>>              enum:
>> +              - qcom,kaanapali-adsp-pas

This one describe the power domain

  - if:
      properties:
        compatible:
          contains:
            enum:
              - qcom,kaanapali-adsp-pas
              - qcom,sm8550-adsp-pas
              - qcom,sm8650-adsp-pas
              - qcom,sm8750-adsp-pas
              - qcom,x1e80100-adsp-pas
    then:
      properties:
        power-domains:
          items:
            - description: LCX power domain
            - description: LMX power domain
        power-domain-names:
          items:
            - const: lcx
            - const: lmx


>>                - qcom,sm8550-adsp-pas
>>                - qcom,sm8650-adsp-pas
>>                - qcom,sm8750-adsp-pas
>>
>> -- 
>> 2.25.1
>>
> 

Thanks,
Jingyi

