Return-Path: <devicetree+bounces-224861-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DD3EBC874D
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 12:21:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 099C8188074A
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 10:21:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D6392DE715;
	Thu,  9 Oct 2025 10:20:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VwYe9X3k"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8657158DAC
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 10:20:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760005239; cv=none; b=sp4RX1DSAkrjl6TYKmeTyj3tcOScWPxJpk6EVMtfQk6dhLBeJjoAZYNKOA06loDLYH6yHRoyszr5pHAEDCjni/VsBo7ZpkN081A49j4SMsHy7OGbY7ZtqoQTsCf5lKBbpjyYB0nJTantDr3SvSuGqLcobNDo0Ximt3duasZi1eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760005239; c=relaxed/simple;
	bh=K37MmL7/1knWfZpqAjC7VyGj0WgB4toUK/rvH/6AVuw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UxZfNeyyIZueyHDrLeUBJvJJDxFEMgcGHevSpR71FfgDC82hEHpPuVgFUDX3rSCSfr/74DrlTQl12Kf+/tlya001esunUV0xLHhIsAR3bmSg92Lm43U/qegwKs0Ruzbu/d5YXssh3e1QMwVbDZ+yhxH6dpvWd0OYb7dEBOBp8As=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VwYe9X3k; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5996EOqF010849
	for <devicetree@vger.kernel.org>; Thu, 9 Oct 2025 10:20:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	McJC3WBPnlc0I1un1QBKJblLnyeXwKFcDmt3ARASHhI=; b=VwYe9X3kQKCE0VY2
	B/LrpVNIHSQGg5AxMmVc26f+09QYFl7rWkQSs6Y/lMziXa+Fqs98PItIuvvUj0Xe
	fdbrUl6UC46jLOBti5mJnzyOI3Dj9IBeOH+6aT62VqsxY0z5Z+khuJYjiHjyTgQ7
	90UDTnhUuN+Q2zez8sbu376yVWWbC2WIgKnBPEJG0TqWz51STKXaKl5LKFL/XCc/
	wbKq1+AOZyPn737ktZ4F0ju8C70u+j5zQGsUnZ3HG541hLLEx1Q3rocOj8DvTQwa
	lIFTOn/Ft5FxPlXbTmDDM9oj1fjek/naJDNaqXWZ94oexi81ur3lVXGxVoFDEqLK
	9ueulg==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv9aacg0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 10:20:36 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3305c08d975so1517509a91.3
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 03:20:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760005235; x=1760610035;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=McJC3WBPnlc0I1un1QBKJblLnyeXwKFcDmt3ARASHhI=;
        b=wUUE5l6WlAitWz43yZw2KRyTSale5dXPDO83OiMV4nJWG4Xm/jQQBITda3Ps4REhuG
         zC38P96URE43+16qOadSOZCeg+cez3bhXXWaRnLanDvoPzghEz/3t1AW8MGJ8cwWmWIK
         GiKC+aIigKnzKtev0okTwpZOv/m4MmOXHXAzAz8IEKDkWgaO3G1OoGBwsWTNliZJ+s6x
         ncfOFfRhby/sctr9pTYx+coeiOqxPkvNnswW8TOvFEks43h4S4cq8YVxZw/jD+7tL9OU
         B1w9PqalDyLXeJbvFbLr7yPEPI8t0r2hdgzXjJ8C8rqND00IVQlLKRiaTVDKUGqt0uMX
         YEKQ==
X-Forwarded-Encrypted: i=1; AJvYcCX73sbQJZiRaBv3lideCNeWaXTolNT/+4FEZZ450jizl7OGH1VRalCST09qL7wBkipOcsL1VIaeud8z@vger.kernel.org
X-Gm-Message-State: AOJu0YznyvQsPKOFOEJn62BLgj7JXiCNKRHmNnlp0OVWsJP7XISLT8sv
	vcmzM712J5UfcEtaXqIA6PjSj3jOGFjayLizPfr298Rvd6Xdt1YKMzFcm+OY8JAr6aqWm8U9Eoz
	7t+rXVVbALUGI/4RZ4J3L20UaOaIBOMrlXl9C/cg4AwB2MKKJWkVz+iqdvNgd6MxGFRIPPNkq
X-Gm-Gg: ASbGncsXySjJM6tQzyAVaqh97mt37pjrNOMNG12nnhrKpFajal2Ohr2nzlC+H1kni+I
	MorhynaGzDU823oxHvjnSEW7NPr7es6zGoDkJHE1sJEKOGyUqEoKbUUZCttJnH3M8B6FN8m44gI
	O24z8jRLKzENnhYUcYWk1PZKEGHz1gj8KgZfWhPDxzoD277fgGXgYSAz2KUR1rYYxrdNgP7KdfL
	B9TafYFPQ4zmMzbcL49mZWrCJZOdlEfiVKOmVmeefAvmEflxU1esN/jxnfaJk5SKsLlkjLvLFLq
	VYVyCNxWH5IvPyMAH8+JItXSjA5HzidaVgq/D9RKr7oiDtfOfdQdkjNNX6b99+sIm7JEy4fz+5B
	6tBIkJhLdS7IRbMZ3Bx2nVTj/z4fn9ytqT+PbOR2jG3+ARMYbzeAnDx5HmWQ5Kaw=
X-Received: by 2002:a17:90b:224a:b0:332:3515:3049 with SMTP id 98e67ed59e1d1-33b5112504amr8841819a91.4.1760005234835;
        Thu, 09 Oct 2025 03:20:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHjmkHk+Xpo0FMp+98rv204MUsFrcQiQ5EbgjRmNJOiLVFcIkJzOGaBvbgkVK5j/k+/+gSQ3A==
X-Received: by 2002:a17:90b:224a:b0:332:3515:3049 with SMTP id 98e67ed59e1d1-33b5112504amr8841784a91.4.1760005234244;
        Thu, 09 Oct 2025 03:20:34 -0700 (PDT)
Received: from [10.190.201.224] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6099f729c3sm20743077a12.46.2025.10.09.03.20.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Oct 2025 03:20:33 -0700 (PDT)
Message-ID: <f681829c-1cec-40aa-a5ac-8fc8a2d8ea8e@oss.qualcomm.com>
Date: Thu, 9 Oct 2025 15:50:30 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: remoteproc: qcom,pas: Document SoCCP PAS for
 Glymur
To: Bjorn Andersson <andersson@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        jingyi.wang@oss.qualcomm.com, mathieu.poirier@linaro.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20250925002034.856692-1-sibi.sankar@oss.qualcomm.com>
 <ydfiugeifs5c6v7dzms5tlkkmhf26q42pav2ugfuxjytugr5nc@ppxoiize27ug>
Content-Language: en-US
From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
In-Reply-To: <ydfiugeifs5c6v7dzms5tlkkmhf26q42pav2ugfuxjytugr5nc@ppxoiize27ug>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMiBTYWx0ZWRfX7A/PPuIijvDw
 lYtXsXlgK8zTwodFLoHIlSV5xIkw+x01+DHEuAXM1bETKcZ6QhZBuT0Fs5zIKDeMiEA1Ar97Mim
 eVQxyIp1dQQ7tcVb8Gxm/FYueZOiO2opFmmLZ3eHLSsvo41gKaHx5ZKpL51eLnZG2iXsiCT9Ot+
 8um6Dn8YgN+7JP/T5iUdSNz34OAdXFZoKmNEVDjD5XXqLljeg4B0dlzdWTsuAlXFi2Hstm3J3ls
 fwwZBIfC8D37fMR4RoANteOowvDQureO18LORIKUdt+E9lKcYoz48/UTOsMY8duLPX9vDNPQkGt
 0wMIO5fVCvtp+md+ZX6WRB2+MaijPETFodfllZQvMufN0SgY//TYjjOx3f+KlFv4M2B/WO98tKv
 T21agjdAZo+JogSnxSWxgjBHVI9Y+Q==
X-Proofpoint-GUID: OaSX5KDdbU5gdhXv_xAyEeLZtsIYtCzd
X-Proofpoint-ORIG-GUID: OaSX5KDdbU5gdhXv_xAyEeLZtsIYtCzd
X-Authority-Analysis: v=2.4 cv=JPk2csKb c=1 sm=1 tr=0 ts=68e78c74 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=TLHODx2UBI06x3BL434A:9 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-09_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 spamscore=0 clxscore=1015 impostorscore=0
 phishscore=0 suspectscore=0 lowpriorityscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080122


On 9/25/2025 10:52 PM, Bjorn Andersson wrote:
> On Thu, Sep 25, 2025 at 05:50:34AM +0530, Sibi Sankar wrote:
>> Document compatible for Qualcomm Glymur SoC SoCCP (SoC Control Processor)
>> PAS which is fully compatible with Kaanapali.
>>
>> Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
>> ---
>>
>> Dependencies:
>> [1] Add initial remoteproc support for Kaanapali SoC
>> https://lore.kernel.org/linux-arm-msm/20250924-knp-remoteproc-v1-0-611bf7be8329@oss.qualcomm.com/T/#t
> Please don't send out patches that depend on other patches sent out the
> same day. This just assumes that the maintainer will keep track of
> dependencies and figure out when a future version of that dependency
> meets the needs of this version.
>
> Work with Jingyi to handle dependencies on your side.

Hey Bjorn,

Thanks for taking time to review the series :)

Ack, will make sure it's included in the other series.

>
>> This patch depends on patch 4/5 of ^^ series
>>
>> [2] Add support for remoteproc early attach
>> https://lore.kernel.org/linux-arm-msm/20250924-knp-remoteproc-v1-0-611bf7be8329@oss.qualcomm.com/T/#t
> This is the same link as above and what you call "early attach" that
> series calls "late attach".

Ack, my bad will stick with late attach.


-Sibi Sankar

>
> Thanks,
> Bjorn
>
>>   .../bindings/remoteproc/qcom,kaanapali-soccp-pas.yaml    | 9 +++++++--
>>   1 file changed, 7 insertions(+), 2 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,kaanapali-soccp-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,kaanapali-soccp-pas.yaml
>> index 79f678f5f7d9..8089e0869ed2 100644
>> --- a/Documentation/devicetree/bindings/remoteproc/qcom,kaanapali-soccp-pas.yaml
>> +++ b/Documentation/devicetree/bindings/remoteproc/qcom,kaanapali-soccp-pas.yaml
>> @@ -17,8 +17,13 @@ description:
>>   
>>   properties:
>>     compatible:
>> -    enum:
>> -      - qcom,kaanapali-soccp-pas
>> +    oneOf:
>> +      - items:
>> +          - enum:
>> +              - qcom,glymur-soccp-pas
>> +          - const: qcom,kaanapali-soccp-pas
>> +      - enum:
>> +          - qcom,kaanapali-soccp-pas
>>   
>>     reg:
>>       maxItems: 1
>> -- 
>> 2.34.1
>>

