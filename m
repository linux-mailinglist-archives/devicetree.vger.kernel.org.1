Return-Path: <devicetree+bounces-132728-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EAB29F7EA2
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 16:58:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 442757A2EBF
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 15:58:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A158228C81;
	Thu, 19 Dec 2024 15:56:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="p2D4kreb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B37F2288E3
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 15:56:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734623791; cv=none; b=emn0fVwBlrFnMSSleNfpK7vh4+ASIy6FmXvwKYQU0nBbB6BapYHWZjG2Dhu+MjbjJ2161Epp5Uu/D5dFsmstlnSW7HLCDs+QU5qqK4TS36KhT8iCT22yG4P+/H7icY4/X1Zg/G/tybj79D7VYLO5R8ck+UZ1GbzrCfCMQmvWh30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734623791; c=relaxed/simple;
	bh=X+7eCtuuAFOT+5f71rAISxWG4VVudlHgu6ncmGs90f8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UCkqx7xnCyqiu43QWNmkO3sji5qVuL1hPB3PBAUX3Yp/NHx9e0WQ/GFZR2s8EybUlh5leXOMWzJeXLtlZyyfgCKgwejGLvhn0UVTKQyk8sN5G2L1BP+5V39EVC+kv7zAKKGw9+Cte0hYCodQNPxf58TPwAHMw+v8guTUrfevm6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=p2D4kreb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BJ9gbG5008346
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 15:56:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KQVZ+St8cP/DMwgY6b7CIegBtD91hcvRSJsrCeCGi8E=; b=p2D4krebvJwnh1rn
	sUTqDYhIiAO2IH54PyVIT0jOYLl6ZpDxfFl6/s5XvzWSJg/4HXA6b+jtmiD9xUc1
	08JQvjEy9czKkYd3WOrfK0jLW1dR0tB0WXBDJnkF493XVoVNzmuUJL+jbt6lC94w
	E8bsfcOUSnhnD1aaVlgPviCfFzKKMxmfixYDe+CQz+G8i0VHxxagaWo7sxy2vBw0
	zrtPkYVknSCieSvFsl4ROgQrfqdVvkP57YPVlUv8M9EF7NlGFYtwITzUbjBj1tYw
	VXAwjT7Iq7hZb1dT+lb0NsCYDufIH3dmByGFmLVRgtDCWkEKPKAU1BEVgZ/RsKKt
	xC0jbg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43mh3hh09d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 15:56:26 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6d8f15481bbso2675396d6.1
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 07:56:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734623776; x=1735228576;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KQVZ+St8cP/DMwgY6b7CIegBtD91hcvRSJsrCeCGi8E=;
        b=bv4F/Vo6SZ5M3VDu1bhnpiyC+iXEiL6feJK+ewBPD4hOKTlgBp/oiALRPWc8Ag6gB7
         yAy/SDcLcBqkW88v5fLsRvGBE0F9GizXZV0RSja/4Brl4nvc2yXRBkVGSGPGJD5kRP2Q
         7RnN6f5ZGmlBu29VcNwgPPl3WZpyfuUkZEPyABtYsiyJhUCysSsxRfice6NM4J4kV20s
         MuTiQcmmFj+RDajmwxHKGr8qpettbzLkuX5iZA31RxKS/iCXSWDSmvCTSW4XrB+A/RJD
         tYwACVaaX3cWapudj23uYprLSgD8kRNB4meWfWTZtUz649EoiSwS7lO1KEnxSiG97okl
         /K0w==
X-Forwarded-Encrypted: i=1; AJvYcCUFJkmJWzRUw2bNk6DraLzBGp+K6fXgeO7+QLZLBzXN9WvdX4uNe3XmIqqRnPg9ANYk66vNZ4c9efoo@vger.kernel.org
X-Gm-Message-State: AOJu0YyhXwU+5eGiplCRukSmZ691h3zYmw1c6l4r6EabyDyvuCTkwR7J
	dKd0rVhvIaFdAbK4IWxDAu/nMr0XgbV8CurbQb/M1tZR5ajXSc8u3XTlE6RJf3reAZbGS1UNLhW
	x2ywP6YUYaq5C1un681dzm04AN97W1LfEKgyrNnHQkibH2Qm0e3/dZ+FrUuUu
X-Gm-Gg: ASbGnctgaSEkOmxbGy9kTWJofhOKn7NKuE3pXmhvda2MgCz/Z+BkudvjaeJfL9wIEeE
	IgDgwaCY9T1m1wJldOj+dttxxgnSEJzZIaIx/8Ff0XOd5iOQuFEE2EtzelH9mrRnHvaFFsXyU3d
	Tt43rSPbFKZFcLqH4V89Ci3/43rWoWfivxYHIYW11E7SUHcR22gnp7W0w1hzStnWRloIxH+yA6v
	CEglRNpdIV6qMpwdkbuVvoq672Prr3LdIDkD4PkR/ZoQqcokEl/1yTuWbHhkxYvcrfzo5mNtSgx
	9mnPBi2C2TVqDROrN5wUhohB/C7Z/ZQ+XhM=
X-Received: by 2002:a05:6214:2387:b0:6d8:adb8:eb8c with SMTP id 6a1803df08f44-6dd092640e4mr49331496d6.10.1734623776533;
        Thu, 19 Dec 2024 07:56:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IErWtDjFEcXFh240vEg6t5u8w+n+H+TIsZjcBAGfXirJYi8k3mR+zpREt2LW2BDL8Ct5Dmb9Q==
X-Received: by 2002:a05:6214:2387:b0:6d8:adb8:eb8c with SMTP id 6a1803df08f44-6dd092640e4mr49331346d6.10.1734623776174;
        Thu, 19 Dec 2024 07:56:16 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0efe4c1dsm79222966b.109.2024.12.19.07.56.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Dec 2024 07:56:15 -0800 (PST)
Message-ID: <97277ffb-137b-4958-9c3c-e3d4973332d0@oss.qualcomm.com>
Date: Thu, 19 Dec 2024 16:56:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: x1e80100-lenovo-yoga-slim7x: Add lid
 switch
To: aruhier@mailbox.org, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Maya Matuszczyk <maccraft123mc@gmail.com>
References: <20241219-patch-lenovo-yoga-v2-1-4932aefcb9c8@mailbox.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241219-patch-lenovo-yoga-v2-1-4932aefcb9c8@mailbox.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: myUg3QpmAxgZwgpJnFa_1EWXAiwFFV0d
X-Proofpoint-GUID: myUg3QpmAxgZwgpJnFa_1EWXAiwFFV0d
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 spamscore=0
 lowpriorityscore=0 mlxscore=0 clxscore=1015 adultscore=0 suspectscore=0
 priorityscore=1501 bulkscore=0 mlxlogscore=999 malwarescore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412190128

On 19.12.2024 4:49 PM, Anthony Ruhier via B4 Relay wrote:
> From: Anthony Ruhier <aruhier@mailbox.org>
> 
> Add the lid switch for the Lenovo Yoga Slim 7x.
> 
> Other x1e80100 laptops use the GPIO pin 92 only, however on the Yoga
> Slim 7x this pin seems to be bridged with the pin 71. By default, the
> pin 71 is set as output-high, which blocks any event on pin 92.
> 
> This patch sets the pin 71 as output-disable and sets the LID switch on
> pin 92. This is aligned with how they're configured on Windows:
>     GPIO  71 | 0xf147000 | in | func0 | hi | pull up   | 16 mA
>     GPIO  92 | 0xf15c000 | in | func0 | lo | no pull   |  2 mA
> 
> Signed-off-by: Anthony Ruhier <aruhier@mailbox.org>
> ---
> Changes in v2:
> - Fixes patch format.
> 
> Tested-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> ---
>  .../boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts  | 38 ++++++++++++++++++++++
>  1 file changed, 38 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
> index ca5a808f2c7df66a861a933df407fd4bdaea3fe1..311202aa9015a30f1d70108bb214d427f811dc3b 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
> +++ b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
> @@ -6,6 +6,7 @@
>  /dts-v1/;
>  
>  #include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/gpio-keys.h>
>  #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>  
>  #include "x1e80100.dtsi"
> @@ -19,6 +20,21 @@ aliases {
>  		serial0 = &uart21;
>  	};
>  
> +	gpio-keys {

If no better sorting key is present (such as base register), we tend
to sort the nodes alphabetically, so this one would go between
chosen and pmic-glink

With that:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

(you can use `b4 trailers -u` to pull tags automagically)

Konrad

