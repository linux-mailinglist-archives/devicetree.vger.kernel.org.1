Return-Path: <devicetree+bounces-230041-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D55BFF2BC
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 06:50:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CF3B93A2634
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 04:50:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9924242D95;
	Thu, 23 Oct 2025 04:50:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nIcSRWEF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5797A221F39
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 04:50:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761195021; cv=none; b=pv19MHfviNPLAHV7R9I8ewnHkzD+JNmTPQlE06UaLopyw5RLkQjvW4SlYDZ6wmAeP+N3DExezO1SfElFj5gEUvtGd2g+TdsynuK3L8bFaxgTM2au6Nc3PAlfuzcSy9V9UYV+vhYhVfT2XQx/juz2GfNV0Zpc5Im/uEszspjFpek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761195021; c=relaxed/simple;
	bh=pUxLY0dYOpUEVJeLtaYHGI3zA5xCDpr07EK9bK62Xg8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UChAEFqVt8h2C+STGZQEfMbRjvz6n5/eV+gvvcHIav6qa/1n0eNHSJtFIzbPBR4DeRNOgni0aLUvSLMI5Bm6G7grKMhPwA1WwVMhFJVIhtd5Kv+SsTGHMjsF6evxAdCBhAKedogZYsZsehZaXh00H46YI4AH8b3u5QzbxIHLKH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nIcSRWEF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59MIf3oU032246
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 04:50:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ILH2Noyb/0pcF89WfVFMs9McJHKzcr01cOg5psDy5yo=; b=nIcSRWEFb7aEhO+D
	q6Z+7bd6h3rxMt5LxnPxQbTmDBCYHOqF0a2m5IO2Vml819e6lWWsUDbj769GE+t7
	CF08aLfjQ7L7kOMh1odWpJKIfP9yMfnGanczhZ12rJ94HMu+5XiAS14Qgg3Oy52L
	d6BwRafCPlqhx8CM/S2fl7yUpxcENWIX8JGV0qhyKzdsdPq0ySH9aL3qau+/RKbI
	6fzTJGkcyjKkqlH39vRh/MMKnzcuIVNTkdgfhf683FlPFdyWYxDoTBZIgBZWOI9U
	CNcY4Gg57FZgQX2DK973udaTKSnCHW5h/C+hyxt+3FEjskbSCQ7/WUKZX7cARB+2
	JaPl1w==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v2ge70f8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 04:50:18 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-26b3e727467so2028555ad.0
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 21:50:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761195009; x=1761799809;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ILH2Noyb/0pcF89WfVFMs9McJHKzcr01cOg5psDy5yo=;
        b=XbHK0u/1O5RrRLr60QBx4DfL0ipvgLF3DUoCqVlCm4AjvqJYbYBz6kHME0LPT4HKju
         DVsdVvaH/FRpA7eHI4Klpn1vJvNBM11z3CK0gx1spvnqYkVESVT2lkRtxBcq64TshyoX
         JyZZRZQu4hnqCUnjeRoGRgC2dEUlTJymYbGi05w/SIXZ0NbyZyy/LUDFEVpHNtv46KFb
         B/mss/DyGBdvRbqcp2ERFZNsuQDJMzvJa1KEFYjIEZB73XDOFtVT+Xkq150bPsUzpPqw
         fduy13ZQ6IZcnnuKpgaTgmegbwamy7fi+EgwYosT7Ydm8hAOMYWwTfDqblpp9QRmmcs1
         YnDw==
X-Forwarded-Encrypted: i=1; AJvYcCXWqjwr4E5nbvro6uv89cqCWf9Sfm0J8STl1ud/wse85tKPWNfMYRtryVPTGuN8cK01hix0RRtVXhW2@vger.kernel.org
X-Gm-Message-State: AOJu0YzAt1N+Q75hy5+Jbm24wABm/OAKHc9MalXmVaW7OpH1xSOePjSU
	0r8ucMPKKt+9IDsiJkc636E59A5g20k7r7lStUWyWJp+qehntkkc8Y2BGyJXxENslNeWgA4n4CO
	GxBZwPaeorVIT6u8RS79+ENrHWym60z2qgtlRfZCukFZZTyjPTVb/PkJsKJ0xKxEV
X-Gm-Gg: ASbGncvbNJwMwsfLQGsv0g7j/sjc/sQ5EhTV8fO42nQirAIsSlF/3lRi2fOuPbASRln
	JvrxlDOj3qrKf63VY03Wwv2BhwNEfhC+QHUX/Y/1XYgd63GPpgBA/hZxwlp0/LjhEOE7jadMUat
	y/RnUX1bGgJsRmRty1kaxO3NrLhCRssXihh0cASKh6qmkv8T0+jhnFqwnqixtE0nT9/g36vxZ3/
	joPFJC5Bj3FUTPdD/bs3eEF4K0h56GqaM5/ofYFr+aIRECwMTgud4Hc0dMf+vrgEI9ipPldG+zr
	Mkm8GiOrRY3H1qVTVEJNVDhEmNgWE72hCCl6w0z8jlG8j5165+t/Cz18NlBdjkoLMt6dLejJbmX
	di6vvosVkK3X5ZEt3av8k86gILiFrKUQev0jwLa8ebIMUbbxd9XakDHcvcHCryX1I6Z49Ag==
X-Received: by 2002:a17:902:cec2:b0:261:500a:5742 with SMTP id d9443c01a7336-292d3fd9a38mr72509025ad.10.1761195008599;
        Wed, 22 Oct 2025 21:50:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEJqjQ5VJXt3VI85Iu5u10F0hg2Fj8UlcAw7hs/Onz/30KSLJIC0RZtQJ73mpgOW8HVaN7wLA==
X-Received: by 2002:a17:902:cec2:b0:261:500a:5742 with SMTP id d9443c01a7336-292d3fd9a38mr72508645ad.10.1761195008139;
        Wed, 22 Oct 2025 21:50:08 -0700 (PDT)
Received: from [10.133.33.163] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2946f681eabsm7873065ad.15.2025.10.22.21.50.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Oct 2025 21:50:07 -0700 (PDT)
Message-ID: <8d4184a8-4e32-43ce-a487-a195e97fa874@oss.qualcomm.com>
Date: Thu, 23 Oct 2025 12:50:00 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/3] dt-bindings: display/msm: Add SM6150 DisplayPort
 controller
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com
References: <20251021-add-displayport-support-to-qcs615-devicetree-v5-0-92f0f3bf469f@oss.qualcomm.com>
 <20251021-add-displayport-support-to-qcs615-devicetree-v5-1-92f0f3bf469f@oss.qualcomm.com>
 <fh7daiy5p5taaz7ifymbivfktjqngs5oashhd3osrtzspsac2z@nswaeyh3kkhi>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <fh7daiy5p5taaz7ifymbivfktjqngs5oashhd3osrtzspsac2z@nswaeyh3kkhi>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyMCBTYWx0ZWRfX3vwc1TDc8zl7
 JGPj+S8globJZQil9ukhgvrlxuhUGGLq7aYCmRl5WUAxR7hAnbjsoD3+QYhHpXpmxHvSgwSsBiG
 9PT9IJ6g6+Mwl+VPaA2yAiPdau4VfzMO2Jt0l4wMQH7wZBc1y1RvT5iaa3IMc7yKhE5DGMsHqma
 Ui7pb7RCveStrjwHTiS1XJXEXIXUAAbX60PFtQH428kQ6tGNxeLmB+Y68tJBfueNKbiA7zhBevf
 yHYTxOYvLQ0loNXO0Yhqx/wfa6pxypm7Ok+Xur3lepMggPB2nTLiQfCIPcF/U4H7eUkNgmsVGY7
 1CBJOKmKAH/KQnDbV3X4FQCEG/Iju+rv4Kor1HoCMzG/ThexOrxIsi9Y7QY4fDBXbmor9vY9V8+
 GxXiScWtwGDFjQtMG+3IKHzDyTgngg==
X-Authority-Analysis: v=2.4 cv=KqFAGGWN c=1 sm=1 tr=0 ts=68f9b40a cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=WzllQ2DKJnOsbc1lEq8A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: tW803gDbwMSx9tb4RqrMN60uMQQZNUKs
X-Proofpoint-ORIG-GUID: tW803gDbwMSx9tb4RqrMN60uMQQZNUKs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 phishscore=0 malwarescore=0 impostorscore=0
 lowpriorityscore=0 adultscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180020


On 10/22/2025 11:07 PM, Dmitry Baryshkov wrote:
> On Tue, Oct 21, 2025 at 11:18:07AM +0800, Xiangxu Yin via B4 Relay wrote:
>> From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>>
>> SM6150 uses the same DisplayPort controller as SM8150, which is already
>> compatible with SM8350. Add the SM6150-specific compatible string and
>> update the binding example accordingly.
>>
>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>> ---
>>  .../devicetree/bindings/display/msm/qcom,sm6150-mdss.yaml   | 13 ++++++++++++-
>>  1 file changed, 12 insertions(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm6150-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm6150-mdss.yaml
>> index 9ac24f99d3ada1c197c9654dc9babebccae972ed..89852af70de97a9025079107b838de578778c049 100644
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
>> +
>>    "^dsi@[0-9a-f]+$":
>>      type: object
>>      additionalProperties: true
>> @@ -132,13 +142,14 @@ examples:
>>                  port@0 {
>>                    reg = <0>;
>>                    dpu_intf0_out: endpoint {
>> +                    remote-endpoint = <&mdss_dp0_in>;
> Why?


Oh, I think I misunderstood the “messed up indentation” comment from Krzysztof.
It seems the two-space indentation under port@X and opp-x is the actual issue.

However, that part was not introduced in this patch.
I will split a separate patch to fix the indentation there.


>>                    };
>>                  };
>>  
>>                  port@1 {
>>                    reg = <1>;
>>                    dpu_intf1_out: endpoint {
>> -                      remote-endpoint = <&mdss_dsi0_in>;
>> +                    remote-endpoint = <&mdss_dsi0_in>;
> Why?


Ack.


>>                    };
>>                  };
>>              };
>>
>> -- 
>> 2.34.1
>>
>>

