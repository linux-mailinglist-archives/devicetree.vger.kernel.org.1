Return-Path: <devicetree+bounces-180800-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C4877AC4DB7
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 13:38:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1BD49169C5D
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 11:38:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85131269CEB;
	Tue, 27 May 2025 11:36:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ozuEJlbG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEAAC4A0A
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 11:36:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748345817; cv=none; b=ei2lt/xtgOxRASfwQykW/YIlUCQU/pW3OYrMEPPVa9tccQIkZRnE0PTbsclh7HRtJVsQciEspFZRp+US/YXA8dzBGNtR9GiQjRAEmx5XSZ+6XOiCKb1Gs4VzeFF/7ygSrABxIn1PDthCR/NEp4VhibBaRQu7JljNFd9GUI4fp4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748345817; c=relaxed/simple;
	bh=fvEjZ/8XvmiIw/x1T49zRGL66s1CZIgvsgbv4p02D5Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=K87NY8Dc7ppqHuiwexWDIBItf/w2i88xbZFB9SD/G+Yo1yS4HhAgCuG0wcg77efyvimRAKS9vFwKC5oJ1EdE++OILrPln6DBbySE/tGoG8pHCCZXQNId7NJsE+ERRLW+HZ+np7h+DQTam3vKptTfITPwFPWkW9dRUfT7dBdLGCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ozuEJlbG; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54R9ewrB022291
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 11:36:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mLM+GWekrBtrawNMm2D4lJztX2o4sPffJMDli9j9kAM=; b=ozuEJlbG24ADssOl
	uWUZZ/KEib2FdpiwXYbHvI6ct2aj2WaVAfNQNrrcuB4F9JvzMbVuRCS+t7fCFJh2
	GZulqrY4WSSBlAnTpGT6aR2vBKuYcv2nR7StyUg7JZYfp3BFeLqzYo4MOECFuI2h
	LY9qEEm233lZYigL3v466Q+XhrM1eFCisGhBH+EjyGYduzBONiQj4BrxIIcMb6AI
	V5VNtQ5ra7K5bxylbN+xoORE/n6sm5VzCWl6NMXIL4wcP7RmBXzqfBJWp4Lbr96v
	PnjqiCQT0wdVod1YvDyjx+T4W9ErvpprGnAHV7rLi5qdQrFPuegfxgKfF3dFbr0U
	gvhgcw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u6g8xp12-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 11:36:54 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6fa9cc8eb70so1346306d6.0
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 04:36:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748345814; x=1748950614;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mLM+GWekrBtrawNMm2D4lJztX2o4sPffJMDli9j9kAM=;
        b=Aas+cJuvX/Eumrf33JcQzgQ8dilzLwSGEyGGmuBLUbq2mia3TFwvbIjGBhmoR4RYsO
         QDxLQgspc17ibpBA55h797mQRFnb2vc94P0z5Z1PvI2WyAhOIFqi8nhEFJC7OGOlw0wy
         evHPbtR9+jVU9G/WsZdM+rvEfii1WTrBmaM+1nQkjzG1bkIO8LT7p40LNHIRb9ghwmuS
         4Rf7lMKFkFc6ru7ZTqzsW67WTDnTfR5gFNMDjsEX/Rzdufc31FEt4olz0NE8T1HMILPo
         nwVcZkupdYyza5ix6wV56gFVnLxyuYuZlpG/DeFIZnltxbOr/az/3SkVLtK+zIR3pNUt
         cGDQ==
X-Forwarded-Encrypted: i=1; AJvYcCXG762NszPjLU6wnaCrn6NFgSSoQpD60wangz/5nYaumOHS8IrZ6RZCXyK/IiXT8HaCCbjguxbVReP8@vger.kernel.org
X-Gm-Message-State: AOJu0Yxwcgq0rCp0OV5IFdLFt/ujrOJSdfdMq0JLCE4QSszc/pJOHzji
	hNbnpvNQIUHSSoQ5fPNaNxrSswaLUwk0qVgDfGpqAa4BcAU4yPd7jzKqkZIsOo9urExTJmhy3or
	Gx2wfxaGiE3DGBXuOTQWcO/gzi1VutEFCGqBiGFIlBrmyo7hg9Z7f00utv403TMVGbLlm2SmL
X-Gm-Gg: ASbGncvtioN0Tr0nForkQBnYMPazNmPf/ezpgCO+fa97bDF7d82IuIXrOdJUbOhNa5E
	vfxRnOMV96+HrsuKxJxLp21/ohGPzqStWChqS+7rV6dz3tHHiswDKkkwtiAR2fUP3NYwhPooGxh
	tScAB1oYnHPdnwlPSaN5ZC3LC1NzqSWZ+P7SBO9eGtZcAkJeB3h347zImr9m3QTdh8+7piN97ee
	QjK5dzH30v7jNFzDkuwsxOcZB5z58hWRo3BcFKwa176j/zR1ZoHmYDjWOUO77CvwAS0XHmAUCsp
	/3hv6DM4Xf+LvImcQEGoiKXsJW8Ux8n2PJcT1PgrvS4sIAPF1Xt1Hv36ncKPK0T6LQ==
X-Received: by 2002:a05:6214:2586:b0:6f7:d0b9:793b with SMTP id 6a1803df08f44-6fa9d34ba15mr66049916d6.8.1748345813620;
        Tue, 27 May 2025 04:36:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGwP18XRKy8jlsk+tWNpk1oV00GPmvN6UNYhfqRCLVDbAvK7pSH3h1WanmxrHiy5RUbYnfabQ==
X-Received: by 2002:a05:6214:2586:b0:6f7:d0b9:793b with SMTP id 6a1803df08f44-6fa9d34ba15mr66049676d6.8.1748345813242;
        Tue, 27 May 2025 04:36:53 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d439655sm1854813666b.92.2025.05.27.04.36.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 May 2025 04:36:52 -0700 (PDT)
Message-ID: <e7ee4653-194c-417a-9eda-2666e9f5244d@oss.qualcomm.com>
Date: Tue, 27 May 2025 13:36:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v2 1/3] dt-bindings: sram: qcom,imem: Allow
 modem-tables
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S. Miller"
 <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>, Alex Elder <elder@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
        Alex Elder <elder@riscstar.com>
References: <20250527-topic-ipa_imem-v2-0-6d1aad91b841@oss.qualcomm.com>
 <20250527-topic-ipa_imem-v2-1-6d1aad91b841@oss.qualcomm.com>
 <97724a4d-fad5-4e98-b415-985e5f19f911@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <97724a4d-fad5-4e98-b415-985e5f19f911@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=d4b1yQjE c=1 sm=1 tr=0 ts=6835a3d6 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=ee_2aqc6AAAA:8
 a=zoJKnCTf_W_lU4eZxPEA:9 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
 a=VOpmJXOdbJOWo2YY3GeN:22
X-Proofpoint-ORIG-GUID: keqxjsakjv1rPCzm1PHitsijctUwLEWp
X-Proofpoint-GUID: keqxjsakjv1rPCzm1PHitsijctUwLEWp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDA5NCBTYWx0ZWRfX/0zhBp4V3kj7
 E3NauG3qO2/Pk6NdO2sZRcPfKeI1sBBDA8mQxg+xESEjoEANbMI3E1aF9kmS0g7o9oI/PYE0YhF
 NnhlMKwqFO+opkXcrL6e2HCvDi1TJdBtmewQ32AtmYp8lbvxnFDMsA9s0Ap/Lmn7vwuw3mhaghf
 Dxs3WNyzINt4emLFlyjHecuZNDQj+ysbe+jThl3R/SWYdrSqb07ZYqxR9xaiwSu6u9+uSOfIpeA
 IIgJCFF6H6uRZG4Pt8WY3ty56WRxyeGzngOQ9aQhcOMPa/7DH4HHyUYThzfYPf0/vgoZX5jLYZd
 XvOYVsvn13RYMRb8uRBU7PuQs92HR6na9VO83HbHApT/hjy0aFbT20Mg3Id7N5UPzLBhY4jPwHQ
 ncoQ9V6Zv2b41AMAd87L+phyoWRNBysL5HVnzYbzTQR9C9/eOXVP1fixAd4Eu98gPw9Om2kg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_05,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 malwarescore=0 phishscore=0 mlxlogscore=999
 lowpriorityscore=0 priorityscore=1501 bulkscore=0 spamscore=0 clxscore=1015
 impostorscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505270094

On 5/27/25 1:35 PM, Krzysztof Kozlowski wrote:
> On 27/05/2025 13:26, Konrad Dybcio wrote:
>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>
>> The IP Accelerator hardware/firmware owns a sizeable region within the
>> IMEM, ominously named 'modem-tables', presumably having to do with some
>> internal IPA-modem specifics.
>>
>> It's not actually accessed by the OS, although we have to IOMMU-map it
>> with the IPA device, so that presumably the firmware can act upon it.
>>
>> Allow it as a subnode of IMEM.
>>
>> Reviewed-by: Alex Elder <elder@riscstar.com>
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> ---
>>  Documentation/devicetree/bindings/sram/qcom,imem.yaml | 3 +++
>>  1 file changed, 3 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/sram/qcom,imem.yaml b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
>> index 2711f90d9664b70fcd1e2f7e2dfd3386ed5c1952..7c882819222dc04190db357ac6f9a3a35137cc9e 100644
>> --- a/Documentation/devicetree/bindings/sram/qcom,imem.yaml
>> +++ b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
>> @@ -51,6 +51,9 @@ properties:
>>      $ref: /schemas/power/reset/syscon-reboot-mode.yaml#
>>  
>>  patternProperties:
>> +  "^modem-tables@[0-9a-f]+$":
>> +    description: Region reserved for the IP Accelerator
> 
> Missing additionalProperties: false, which would point you that this is
> incomplete (or useless because empty).

How do I describe a 'stupid' node that is just a reg?

Konrad

