Return-Path: <devicetree+bounces-213135-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 162C0B44BE3
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 04:51:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 200DD1BC1925
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 02:51:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB93C220696;
	Fri,  5 Sep 2025 02:50:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aNLe7H+h"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ECD01A254E
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 02:50:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757040646; cv=none; b=avAPPPIYED89xNrT3qSONsi+uE+tDcKL45IpHwgMaLOqsPegOmTsLGN4fkx61U8PQx29ZJq1ixBfcWxy5x+fEzGkuBx40b8xIES8dnwq741kMd2a0or5Up9absyU1mm6IM3TNqRsZtbzZi3BWCDsUlnCDdPZeVct7QZQev21+Ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757040646; c=relaxed/simple;
	bh=ywqwE/0kOau86r8XZwZIK7UjuvYsbZQ8Ht21+odI/x4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jn/8AyKJfDon3FHmUbCguc0QDJz8D/CpJ1DeFB/UzbZVyOjeSYwoq6HM3P3v1QTucWz+wTzpdB5Wo4hcMlKi3V93AvqbLrIAzZ08acTz4o4BpOEkZ+nu9n85NUbjrrjCEIQSbt2QkKM7VFyRKhedEeoCjr/bAHvPB64ubWMhURU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aNLe7H+h; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 584J1Edr002359
	for <devicetree@vger.kernel.org>; Fri, 5 Sep 2025 02:50:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gwSiyfYynLhMebpZWXrp11DL3hQi8HGEtTbhMohLx0M=; b=aNLe7H+hIb+m//KV
	ylEP6nIvYZ55uhHhlFQYeywFTpy91q1Nf7jS731O+T8/9H4WJj4etV0BdXw8X9ej
	0px136uS7IO0ZBRIQc/MIKq9ACBwTC/k4LtaFi9r1bOtllkAcAk7mP+yn0H3d05E
	cFNwdf/YfnEyv4Aa18n6CfeQRLPnFNsOZcHG+txOqlygQRR69Ado6W3hWVCWgMJL
	nXU3YIS1240RfsXh4wjYOh8lZMkzgCWjBGpDJhheKjv5ZzDb/0mP28oSV5gtqJZk
	aBdgRFjYLSGUBDHiCwGoCaPM0vuKOaiErvV22Zv1bXJ6NS5woSjAZu1Jg1g9fDxV
	c/YNFg==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ush39edj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 02:50:44 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7722ef6c864so1581956b3a.1
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 19:50:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757040643; x=1757645443;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gwSiyfYynLhMebpZWXrp11DL3hQi8HGEtTbhMohLx0M=;
        b=phFgzgx+qDMNFF4JuJhLLDrB28aTaBDp5cae8w9ycN1hJq+tMqizDqTcYcWEfxEH98
         jQxMtIam7cKQIR57Ye80RJYq57C3VFXqGZd1NrI9wDt2j91h0uFt+kLj6lbAztz5rdFO
         mGd+f3KHyqRUIf75tWl15y1gU79Lg2AWJaenwSxdgct0K5PrI9D6I7G6etNSDkjzm5tk
         XeemXm4dV1hCSMAXeymQt+yu/sDGAbhQM6svMW4qVAppIt5AtXIntxViUZtm9qkSfMOg
         /Xie5Btc63BCZPiK8xAm0qYCyWK+Z3mJ3uXegjXuwDgqXh/909Xvup6iu25SZtiYzGtC
         h8Ug==
X-Forwarded-Encrypted: i=1; AJvYcCWuAtRfMuIqy4/eCN+g5wwSEk7Lfzgh2V7T/y+NGCtPXP56W5wvwd4NvN76TmFo2Oo2oTfZDaxKbTZ4@vger.kernel.org
X-Gm-Message-State: AOJu0Yxz/0X3iPrLQTYUQtu9PKh50RvJbnOwC6P/KChO/cIFaD7ke7ba
	l1kWXkZxyjTuUJaXnAtCyrFmvEmVZoGPn/n4P9i1T5b4S7kGLXylreFuXm3cXw2ZzSklyJfefi3
	c4Is7smjbv5OJcuz+deAIfwqLUHW7czZ/D7X+Iq56cANk4AIkiMjunz46u0DoKQOm
X-Gm-Gg: ASbGnctQI5ZbvPCDNsrimOj2zkZoCUwSA281se3CiJJzuJASWmHhbPO04RJ0wAJVst1
	6GVdXr2jW0CHSPqx1uDaA2+uUTRzqqkBtFJgUvg6nLmLSNmZxBb1CTOLnnstj0dSg/jUY1bRKu5
	EZ8/IeqN+mSxmaOGWRosax/EwbjxUFvwa6lgkZgmeQgOj6dsVoKiEoWPoIfBOFYHsTt8SvkqIY3
	IFYLh8Yr0xnwVHesNUkdXTYHcUc3HIQJrGWM1dsQAWT5tVNnmW99TfDcT0WBN+4G2o3ZxOQi2fw
	F4a8y5780KzPCvNCctL4JtrlxCFUzfWIoEZd1E2CTF6przI2BiJUQZXxPeuTbHoqpYUBq1rm71b
	riFPGQaZMOzr1roRCB8zvmpDcfiqrCg==
X-Received: by 2002:a05:6a20:1595:b0:24a:b9e:4a75 with SMTP id adf61e73a8af0-24a0b9e5423mr7186331637.47.1757040643449;
        Thu, 04 Sep 2025 19:50:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG202+hHYdYs+StM7sqddV46k8lCxOuVmORinbn6w3E3iPnOnrsT3F7nWJ+yDrEZS7E2co12w==
X-Received: by 2002:a05:6a20:1595:b0:24a:b9e:4a75 with SMTP id adf61e73a8af0-24a0b9e5423mr7186312637.47.1757040642973;
        Thu, 04 Sep 2025 19:50:42 -0700 (PDT)
Received: from [10.133.33.41] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b5209ccb174sm566277a12.19.2025.09.04.19.50.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Sep 2025 19:50:42 -0700 (PDT)
Message-ID: <d8aaff46-9e3b-4b53-a690-351253753edd@oss.qualcomm.com>
Date: Fri, 5 Sep 2025 10:50:33 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 2/6] dt-bindings: display/msm: dp-controller: document
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
References: <20250904-qcs8300_mdss-v11-0-bc8761964d76@oss.qualcomm.com>
 <20250904-qcs8300_mdss-v11-2-bc8761964d76@oss.qualcomm.com>
 <p2okyfwfl23bip65koaqezlvhyo3z47bnugojcieuspr37xc7b@s3qwgbqmts4l>
Content-Language: en-US
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
In-Reply-To: <p2okyfwfl23bip65koaqezlvhyo3z47bnugojcieuspr37xc7b@s3qwgbqmts4l>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzMiBTYWx0ZWRfXxqCw2jkNBq64
 lKbOzpDlRN//YdlEnfaBy9KJrzXbpDxGyb4x0iZSCBHIVC6YSPDlhVJAByCkyCtpIhUhFv241d0
 zQucL6n1OXlMmZwqtjIZGexjUQDokf7zb9GNHWbLa4Q0/6ZB3iOKXWE6/COVI0S3HNKNxFkgNjo
 ChE/mJgHEht9QJaXL2XYBNSFbniXhwSqVphIvntYQuYKJ/wNw0TZAn51uW/Hh9MHBUHAQLOUoio
 fQbhvE/i+P+HOtvZFHYuODIXEWcGvhNrY1z8B+l/0lKrmHOzsK8iQJbhsylxrQHkzRBP8A7QRBh
 /3G5VQQ0oWx+3gf7rE2jAOiUWhiRiU5BfTZqGskRAlYv/6CsEnRAp6Uo0lnpXOs2nFCWDMqWyJ6
 t4AsLUCU
X-Proofpoint-ORIG-GUID: qg5bEeDRRPI1ySvXEBfiBE9hDAx2FCLD
X-Proofpoint-GUID: qg5bEeDRRPI1ySvXEBfiBE9hDAx2FCLD
X-Authority-Analysis: v=2.4 cv=M9NNKzws c=1 sm=1 tr=0 ts=68ba5004 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=LzpWVPJsz2Mq4VjTse8A:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-05_01,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 clxscore=1015 suspectscore=0 phishscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300032



On 9/4/2025 9:43 PM, Dmitry Baryshkov wrote:
> On Thu, Sep 04, 2025 at 03:22:37PM +0800, Yongxing Mou wrote:
>> Add compatible string for the DisplayPort controller found on the
>> Qualcomm QCS8300 SoC.
>>
>> The Qualcomm QCS8300 platform comes with one DisplayPort controller
>> that supports 4 MST streams.
>>
>> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
>> ---
>>   .../bindings/display/msm/dp-controller.yaml        | 22 ++++++++++++++++++++++
>>   1 file changed, 22 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
>> index aeb4e4f36044a0ff1e78ad47b867e232b21df509..ad08fd11588c45698f7e63ecc3218a749fc8ca67 100644
>> --- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
>> +++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
>> @@ -18,6 +18,7 @@ properties:
>>     compatible:
>>       oneOf:
>>         - enum:
>> +          - qcom,qcs8300-dp
> 
> Can we use fallback to qcom,sa8775p-dp instead of declaring a completely
> new one?
> 
I think we can not use fallback to sa8775p, since we don't have DP1 
controller for QCS8300. SA8775P actually have 4 DP controllers (now only 
2 really used). So in the hardware, i think it is different with SA8775P 
and we need a new one.>>             - qcom,sa8775p-dp
>>             - qcom,sc7180-dp
>>             - qcom,sc7280-dp
>> @@ -195,6 +196,7 @@ allOf:
>>             compatible:
>>               contains:
>>                 enum:
>> +                - qcom,qcs8300-dp
>>                   - qcom,sa8775p-dp
>>                   - qcom,x1e80100-dp
>>         then:
>> @@ -295,6 +297,26 @@ allOf:
>>             minItems: 6
>>             maxItems: 8
>>   
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              # QCS8300 only has one DP controller that supports 4
>> +              # streams MST.
>> +              - qcom,qcs8300-dp
>> +    then:
>> +      properties:
>> +        reg:
>> +          minItems: 9
>> +          maxItems: 9
>> +        clocks:
>> +          minItems: 8
>> +          maxItems: 8
>> +        clocks-names:
>> +          minItems: 8
>> +          maxItems: 8
>> +
>>   additionalProperties: false
>>   
>>   examples:
>>
>> -- 
>> 2.34.1
>>
> 


