Return-Path: <devicetree+bounces-243474-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DEED6C97F53
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 16:07:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6AE713A3C92
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 15:06:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F0F931D37A;
	Mon,  1 Dec 2025 15:06:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="o4h1g+m7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dfM0FPEg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7111244663
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 15:06:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764601613; cv=none; b=qjzgG8SiieNZQC9TY2gHmMZmQRQ2tAtB2Y25dyzWEs5WihnVjAXFY69QLUrsAD4FPzYWQuIA7A+4Ns5jnIRm7FKWirr3Ds2w6oPGJ+b4qS95AF5WjvzdODFVWeJPkPoMXvVQTe4ZPVE2sdJ9x6Wbm8OJIswDZdb/Ycmm9Rtgfpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764601613; c=relaxed/simple;
	bh=PThqKDlMOg91G9eF992kfltVjOsaxU5dxzmEfM1kCN8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hOUQVdC7F/cek7U3Bh2PYU961wbW8W6E6tKblpuMef9hWgm54T1yyavW6Wqm2xBa4lM1ufF3Agytylf5auM8DFce9uS202o95uOfMQFraah3a9N6wBGDz/SqBwpI6CA9uaJO5MHHQTzIKhiZcQfOx8vJCmO1Xx1l80BA2xdB+HM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=o4h1g+m7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dfM0FPEg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B19Zupb451718
	for <devicetree@vger.kernel.org>; Mon, 1 Dec 2025 15:06:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WN31XpVKAWNLpUrQxWKBO3fZgfcxLv8M2+uJRSw2WAM=; b=o4h1g+m79D7Y/C54
	/8ZiqwNjYEJmcnVRZaLzNf0rbmcjOw3pnb+n5xhqwxJp/0QHfCnnRtrTeEfHNAfL
	GG+T0vRr9AzUjtIiBBCDiQYZLOatwFOD0iU6qxD+GkJKM7UsEsu5Fp0+3ekIz6jD
	O0biRBwYPpNEjA5+7SxvI6OBrVgGDMPvU9ShJw0KxRzQt9fD7stNzqFy5T6j23qQ
	dkNFjdhu5R2kh3L23INdaZtgB9j7nmb/Ox3B2OsArnq/Cciu5+OwUbAD7MExH+kH
	DVxrjxv+Yp14sHeOvM8eoi+g+MKAQen3qMBY9oQ+AYOkR3llaLs9fVlOwksLSsbf
	Tw9fuQ==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4as8herwdt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 15:06:50 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-5dfa4d7ed54so447782137.2
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 07:06:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764601610; x=1765206410; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WN31XpVKAWNLpUrQxWKBO3fZgfcxLv8M2+uJRSw2WAM=;
        b=dfM0FPEgXFGvgY4y6yJ7slzXjywSDSTNLRHUC9soJlCdV9x1pgAkCZIowuhCB/VNPW
         wtwnxceMfjBSl7HQpvmTC7rFDEOqCacnnTCZmgv54FqETfXSG5IecQ77V1JIAYCHYTtd
         HUIwZ8W+q7zK5k3DW6U+drk3Bo6XioHOajWeBBAKDOK7wPs2gi7Uoj1JNlam3unhxp7e
         NlzgKRXbaKspBk2s7UDUOoAJROLwBC+sXkczEQVGZhUIyM7enOIfryv/Ksv7QcXTqd5Y
         seETnn4cblU/0isdz6+GsbypwCIfeRKe3a9DJNRGNYUy3INlBwOTCxY+7I2j4xNimZdM
         9D5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764601610; x=1765206410;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WN31XpVKAWNLpUrQxWKBO3fZgfcxLv8M2+uJRSw2WAM=;
        b=kfJ/+YteZglPJjuhzDypZ+bb63B153OnMEoEtWQvAl9T4//K2LplOeNraUOsQQkAoJ
         wNtPUWi1dNqhZ4RgjhQz4rRk0SoV8SPwsOuG0Ch3MWC9+QIKYLEKe0BVLbKWYV6LOko6
         7B+9vz1fnXnJyDJR2JeYVy2XYboV9tnWalte5xsqWRSuBvq9tdwv+8SqLnt7GtiZB3Qp
         hEGTBjDc4PnzzCDiSJSaqngnraoNkS+QKfGCiGWqpScG+gGLPSiy6kto+/Vx/DCNtIqk
         qb7iHKEZ2T36cLgzFZOuFkcE5KShg/kZ6YmwvpT7o7HiCpjc9GqjtlVkZ+miFdOIMkmD
         /WpQ==
X-Forwarded-Encrypted: i=1; AJvYcCVydz5QgdNyKUZVm9vU8k3pAPk1LGHviDv/a7L832+YcB80j33FiALLqR8SWaRk+2NAHTL7+Abxpw+Y@vger.kernel.org
X-Gm-Message-State: AOJu0YwREMLaTZLimB4TAPaGck+wKjBQo7M1lONcYkndxVHZgxvojhXN
	Hl/OFxRg4UY2waFf9PX1BWaOr5fdn9yuJXoHws+iDzNIT7DRDWbxY4NeSKwgGpu7rTAZADoEFEF
	s4guzAFvKL++3W61fz0SCZCzxU7FipPyxGkugTS83ngkQFFhS6MZm4cGnCApkPOyg
X-Gm-Gg: ASbGnctPwDLB1XeI2F6wTc6knIoE9SMFOVdzWL9yPlZcFjRvYG9zdbQQ18zfMnqFQpr
	QFoifL6u1sDfu6BMfQCxpPWAmDBuaEftCoNCix4z9x7rnb6/+oRKPB0q4cab/VjiOOpW5Wqh8VJ
	hTA1VrgS1AJ412qJc7i99UyKDvGnkBtsU6dTIDwm8HIvb8YBe04GXACMztxcG9uzPRn+Pq+PMyR
	Wq9Otu9L9itYbKUyBQ4Nd3L4Du5dzwUy3jZUpzYBKEU/yrAJbyQl8qoxgqjCaNS5Ao0e2pRKNAK
	x3NvYfIexRXBlRPMkqmdxgRaRZ+0B+mVAd4joPUkFaPDW8ELFSE1TzQ1VN9qFcgi9/gwnD8amO3
	1re9tHkS37U0Fv+80DvAjzjVMg36bXexs3q9iZ/StRAreuSiwMUSZPH/Kjp1VKuvfCg4=
X-Received: by 2002:a05:6102:dd2:b0:5dd:c3ec:b76 with SMTP id ada2fe7eead31-5e1e66f4505mr8267354137.1.1764601609985;
        Mon, 01 Dec 2025 07:06:49 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEfVlN7RdzDAkpjv08QNbaMbaegno0fcNkNHVYzQ7+oy8pVcRZH27l0E3h3aEvMozx/stlEug==
X-Received: by 2002:a05:6102:dd2:b0:5dd:c3ec:b76 with SMTP id ada2fe7eead31-5e1e66f4505mr8267225137.1.1764601608838;
        Mon, 01 Dec 2025 07:06:48 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b76f59e93c4sm1215866966b.53.2025.12.01.07.06.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Dec 2025 07:06:48 -0800 (PST)
Message-ID: <5fcfbd5a-bd08-4549-9846-29c3da888a84@oss.qualcomm.com>
Date: Mon, 1 Dec 2025 16:06:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] interconnect: qcom: qcs8300: enable QoS configuration
To: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>,
        Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mike Tipton <mike.tipton@oss.qualcomm.com>
References: <20251128150106.13849-1-odelu.kukatla@oss.qualcomm.com>
 <20251128150106.13849-3-odelu.kukatla@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251128150106.13849-3-odelu.kukatla@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=LewxKzfi c=1 sm=1 tr=0 ts=692daf0a cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=mjAHdMWAtFLaYi06n1EA:9
 a=QEXdDO2ut3YA:10 a=gYDTvv6II1OnSo0itH1n:22
X-Proofpoint-GUID: Q_mb3r2nToHVIdder-OFf8Y_MgETfPys
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAxMDEyMyBTYWx0ZWRfX2bGKKQI9eb33
 b0iRSnGCMD1eKjq5F20IAuIsHJLxRnD6P4Ce5xzDIYNScP7Z0UxAgjuoNfK2ja0ABpGkbfPaZqI
 DGLpK695QvnHOPt4ev/58U0h4JIDQkqz5txUjE0GD5L6SRTeHy+GC3/ZNIpBUpSbv+IIIwzhcFa
 p0dKR0x2PEMa/A0NfHaYh3xiNx4aCPwRfLJWjg+OO4JPxIVzOyO6Eh9EwOebu/cKlgZEcBv9d9I
 6rN6eZetxGOoS4pwodMqL2ER8yxRLhbM23udZ9dXEs89OCHusE1UZSc2oi1386leQHi7o03DWtQ
 OH6Xyl6mXz6nFIhFjuuQDF5A86kmIxU6jjl8Fq88ZRyJ60j59mpAbrsR8CjugN19G37kFRxDYvp
 cFIXKIsf+QSGkrupPgsSXiRMBvRi/g==
X-Proofpoint-ORIG-GUID: Q_mb3r2nToHVIdder-OFf8Y_MgETfPys
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_08,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 adultscore=0 priorityscore=1501
 lowpriorityscore=0 clxscore=1015 suspectscore=0 bulkscore=0 malwarescore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512010123

On 11/28/25 4:01 PM, Odelu Kukatla wrote:
> Enable QoS configuration for master ports with predefined priority
> and urgency forwarding.
> 
> Signed-off-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
> ---
>  drivers/interconnect/qcom/qcs8300.c | 375 ++++++++++++++++++++++++++++
>  1 file changed, 375 insertions(+)
> 
> diff --git a/drivers/interconnect/qcom/qcs8300.c b/drivers/interconnect/qcom/qcs8300.c
> index 70a377bbcf29..3f4fe62148d3 100644
> --- a/drivers/interconnect/qcom/qcs8300.c
> +++ b/drivers/interconnect/qcom/qcs8300.c
> @@ -186,6 +186,13 @@ static struct qcom_icc_node qxm_qup3 = {
>  	.name = "qxm_qup3",
>  	.channels = 1,
>  	.buswidth = 8,
> +	.qosbox = &(const struct qcom_icc_qosbox) {
> +		.num_ports = 1,
> +		.port_offsets = { 0x11000 },
> +		.prio_fwd_disable = 1,
> +		.prio = 2,
> +		.urg_fwd = 0,

FWIW prio_fwd_disable and urg_uwd are booleans, so true/false would be neat

I checked a couple nodes and things seem alright, hopefully the .max_register
values you set don't clip anything

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

