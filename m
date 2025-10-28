Return-Path: <devicetree+bounces-231912-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A0F31C12E90
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 06:07:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B06B23AA580
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 05:07:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D078327056B;
	Tue, 28 Oct 2025 05:07:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="n4xIB97U"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 525061F4E34
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 05:07:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761628025; cv=none; b=GrBwcg3DUwnoJPRcsi3BqtcK0BIaXkwnULdl5cMpDBEFoYurB6yOtaUWTqizc/jwV8Q2/juRVW/insy1c9HV4rH1xh7Y/I/k/hv6s+xv5qzn08zBQ9GwvT6nj7BuQ4SB1ia/MczoGeNWRXcz/cc7zrSQ5LyjBayrmpjH101ShCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761628025; c=relaxed/simple;
	bh=7WS0GW5x6SfWasTVXVpP4R8gG91SxqEQc2K3YufypYU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AOi94E0GkmUELS+lECShuM53yhi636Gp74RkPUbkua64ismgepcEFUFoiiSx76/ELTGI4BzK+NmOUk8mPgSQG498zbbf8P75ljCn9Ffmdzii0LE0eR8EslLDdHrrhoiroCgSLMQX8Sv2+EZ6oI35MmbMZiK7C4oG1GlV9FllfY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=n4xIB97U; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59S4pNCv592015
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 05:07:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MZNW1TFGtDAWcNhp/IoE4ZPcy7N00ZT6ylN3xTPhhGE=; b=n4xIB97U2mqcnhkU
	6P5VQ680nYuUHSx4WyZJFu3ysqwpt53eRQ8DrqX3jqRyrNL36EJN+/CDWef59N7X
	Y0JookWEvHRpWEuPjg5mMwYtF3fKZghUYNSmibXPyGBwl6+ByAyess6X+KhSNk8s
	gELQfjF0aR8g0RKNWqrklLqhcvKAgteY0m8Dz6ZOnY7E77yclRr/YuE8ObqddpGC
	jwaM0LYqHwbKvWPtCV7cI5gs9bLpsp+JenjXIX5D1K+8b7uZgomAmIvaFN/QJb7n
	sMS6SrsGu7ejRLHV8lgyC4AVvYSa22bhWO3qBvoRsD1cZbAF2e12v8Y+IQYkWDCA
	x8bh8Q==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a2q5u8114-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 05:07:02 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2698ede62c2so24407465ad.1
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 22:07:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761628021; x=1762232821;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MZNW1TFGtDAWcNhp/IoE4ZPcy7N00ZT6ylN3xTPhhGE=;
        b=DmOIzxM+bFDXxi1On+dy6ZTd56gzcPXLHl3WPlBR3stj6EaL4jHCYdth7bLI3NG7fk
         WhRBXxxlkzF8oR4Q2EDiVi/1XGqAeayK7cdwZN2/jdSzYZs+HG5qsGmFSr/0Jb7yEUdz
         gw8FeiKhH2XKgAIZjipfheUGxa1/K4YS4cVDItVGE3akXp/DwIHkmWRe1AJY3x2ZGl1W
         UjptRlwm90kXZcH04708Y7BLA8Z7GVEdLhVCi1NgPlOZ5hBWlD0bradqsWiNLkdeH+6V
         ILuWatsJ5vrtlsdjcAIkwLHGDbLs60HlE1ol5AgrmlxvrjLTqpx9uWkEjL6wKJbFVNHh
         9vAg==
X-Forwarded-Encrypted: i=1; AJvYcCUwBhdR+SBzajDGjm1mzJKVk3SodT1EGtbl0fwC5BEQ1XuCiLbCEhZuIrjgZSUQoPUm5hmR23zyDx6q@vger.kernel.org
X-Gm-Message-State: AOJu0YyXVBl4mBSNPHBpcqwi5YexYpnCAe58U2v+voMb3kBOTuadG89K
	MJUBoR2uEc9Kjpz29t6un8YFzon60lldyZ528qM7f82S8DYdWDNyBoZhubtSVJTpc99zQJyaVTT
	jqv4sDyIxctsOruBQbIEe15c2Zp//VmRzvimJigirUq0IFbN0934SGjBYwMxnxz4x
X-Gm-Gg: ASbGncsRl0Ogat7E95AG5sVDs8+AyCUN8YJlLmsTgkoVJwAz546SVIg1+LOc/QNDChN
	zH3MmFL/P3J/lBA3rPDVMj1iFudT/srQjcdE5kY/mU2RF0y8EHkdDaOfFGS0YfMaL01czwqoow0
	IDD7JELWn+itfKBXHDTPGTnoCdZlWKbm7QPiv3sy0w6dmp/7PLNYYouH5iwn1vLsHKKY8FZnCFe
	4+tHMGSVPVMI9YY4d+KIQc9HaPct9uXkGGBJ+XhofFQyn47JrXCayrm8H8MeUD8PucgpfxaN5qD
	t1AraLmvOV75nGZebJFkSD2TBBnzDgoCk9+lZG/Nn68e/jSKAWxwJpF+ANPFXmgVFNVCxsLahdU
	lQENv8+CAoefGaRItu24pV2FhNHNqN5Db0Z3hSO0zs9Q4DqHEl/S6iMzuLg==
X-Received: by 2002:a17:903:1905:b0:290:c5c5:57eb with SMTP id d9443c01a7336-294cb37baf2mr13570855ad.3.1761628021360;
        Mon, 27 Oct 2025 22:07:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGIHYfyFAfOxSLKOcwg5AGIho0OEXAci87txVeGZ9/S1disJk2HryFaJBGudHTWVhJDhYB5lg==
X-Received: by 2002:a17:903:1905:b0:290:c5c5:57eb with SMTP id d9443c01a7336-294cb37baf2mr13570515ad.3.1761628020813;
        Mon, 27 Oct 2025 22:07:00 -0700 (PDT)
Received: from [10.133.33.251] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498d0ac07sm101578395ad.43.2025.10.27.22.06.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Oct 2025 22:07:00 -0700 (PDT)
Message-ID: <207641b8-c272-46d5-a459-eb720a4b94a6@oss.qualcomm.com>
Date: Tue, 28 Oct 2025 13:06:52 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 1/4] dt-bindings: display: msm: Add SM6150 DisplayPort
 controller
To: Rob Herring <robh@kernel.org>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com
References: <20251024-add-displayport-support-to-qcs615-devicetree-v6-0-c4316975dd0e@oss.qualcomm.com>
 <20251024-add-displayport-support-to-qcs615-devicetree-v6-1-c4316975dd0e@oss.qualcomm.com>
 <20251027152647.GA915648-robh@kernel.org>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <20251027152647.GA915648-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI4MDA0MyBTYWx0ZWRfX0i27dDOJwMaJ
 1tfawVx92crev5MUGsrKT6mU9zyyG+0jyRcb0kTFJXqpMq4rPUYQRjqMEoNedr4hACOYnZlpREC
 GQCLfP2RLopohQhtxhZAkmr67YWzv/9EJfAtZAIUICT78/K7/Zx415niaUfqiQfCKo6qtNrRsP5
 5UrrewLXXnb9pacwyq32WtgHA+PfSHIAL1eq9GPly9otsR1FLjohjys6QCRRi/HzNLnJ0pOfe5e
 zp0wknNQctqZl1+w4PX4/HlgZVWUmUKkHteEbwn388DRnAi2X4xRbOHI+ijgoZDelN7h4SwRTJV
 PZ4DJDk07pRtbPwophl3czktcTc9l6RNRfYlCworMm6JmLhcFZfXybQdI14eQ4aLVGpnIpfp7IF
 +7cbcUtIXRnjPfCQ7yKNyJ0IkpArYw==
X-Proofpoint-ORIG-GUID: FtlQdHgVYOixPDE_K7iGtOOfflj11qKG
X-Proofpoint-GUID: FtlQdHgVYOixPDE_K7iGtOOfflj11qKG
X-Authority-Analysis: v=2.4 cv=c9CmgB9l c=1 sm=1 tr=0 ts=69004f76 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=z2EatxdDDGNeVA2bIAQA:9 a=PRpDppDLrCsA:10
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-28_02,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 priorityscore=1501 adultscore=0
 clxscore=1015 lowpriorityscore=0 impostorscore=0 phishscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510280043


On 10/27/2025 11:26 PM, Rob Herring wrote:
> On Fri, Oct 24, 2025 at 01:21:01PM +0800, Xiangxu Yin wrote:
>> SM6150 uses the same DisplayPort controller as SM8150, which is already
>> compatible with SM8350. Add the SM6150-specific compatible string and
>> update the binding example accordingly.
>>
>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>> ---
>>  .../devicetree/bindings/display/msm/qcom,sm6150-mdss.yaml      | 10 ++++++++++
>>  1 file changed, 10 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm6150-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm6150-mdss.yaml
>> index 9ac24f99d3ada1c197c9654dc9babebccae972ed..ba0dea2edea98cee0826cf38b3f33361666e004a 100644
>> --- a/Documentation/devicetree/bindings/display/msm/qcom,sm6150-mdss.yaml
>> +++ b/Documentation/devicetree/bindings/display/msm/qcom,sm6150-mdss.yaml
>> @@ -51,6 +51,16 @@ patternProperties:
>>        compatible:
>>          const: qcom,sm6150-dpu
>>  
>> +  "^displayport-controller@[0-9a-f]+$":
>> +    type: object
>> +    additionalProperties: true
>> +    properties:
>> +      compatible:
>> +        items:
>> +          - const: qcom,sm6150-dp
>> +          - const: qcom,sm8150-dp
>> +          - const: qcom,sm8350-dp
> The actual schema will check the order. Here, just:
>
> compatible:
>   contains:
>     const: qcom,sm6150-dp


My initial plan was to use only `qcom,sm6150-dp` with `contains` as suggested.

But when I tried that, CHECK_DTBS schema check failed:
‘displayport-controller@ae90000:compatible: ['qcom,sm6150-dp', 'qcom,sm8150-dp', 'qcom,sm8350-dp'] is too long
from schema $id: http://devicetree.org/schemas/display/msm/qcom,sm6150-mdss.yaml’‘

So, I have added all.


>
>> +
>>    "^dsi@[0-9a-f]+$":
>>      type: object
>>      additionalProperties: true
>>
>> -- 
>> 2.34.1
>>

