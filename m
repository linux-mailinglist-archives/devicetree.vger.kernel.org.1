Return-Path: <devicetree+bounces-130861-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A06609F115A
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 16:50:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D635D1883F6C
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 15:50:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 598481E3768;
	Fri, 13 Dec 2024 15:50:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ldGQ9MtP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D66701E0DB3
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 15:50:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734105047; cv=none; b=RCXXAegtaB5wmmWNVQiwwpFkAI7O4B5byX+ALRikO37IH4ROZAyd5RD5H4oDIokIheAYj9/tpaCUSw3pyFCajUksIzC35XwORVoaPOqEEKBBAl7RamNoE9tnf5uZNfGBETgznFw8yen75CcrxDLQiM17q+18psp7CHNOWS7pUVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734105047; c=relaxed/simple;
	bh=AH4YC3G4oAqm/Dy3ioJZ79XaboCBCeJ5Sqlc8mVdEvY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=o0ATgvawxC3B1x15giuOxCanQ6ArVxjdDkbTqML+bMLKuPAkCdAeRVF/gzEgMOLhIJcFw5KIyNENPkFNeThIfZN3n/1zOrMNqZQcs4K2IPqLD0RPfn+Cf7uWMMOqJVavkSmZ5r7iXP6OvA2oGZXeHxuMcSDKKASSvv+SZNgKkEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ldGQ9MtP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BD7AZje027708
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 15:50:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4lWamNQAIDfM3yyUtey6LSacCJIPjLImwXtS4zXm6hU=; b=ldGQ9MtPJZ2QCo2F
	RrlTV+WYdn25DDHsj2e3mZI049VVUyl1EIgquJhPbXwWBnVw30GQ8SpqpOE0tjfv
	OxFLtcJ1iJs9a0qTp8Xxr6R6DCfdld+o+mkLV0dVEe3wrazbbzkJ6WSnIu3V1+zY
	PklmGuuL5g/l5gQUlkyD3R5xM6nvswao9FTVG0sobvYQPj3SEQKlans3hhJFpNA0
	qrKS2qBbots7YBYRduiD5TPOtkF4ghQ4uapPBDVvcw0yYcYfFjDav8Oh4BJDtyzK
	1GMHo90qrqd0fM13cR2x4SHy55CrfF/8CnsUsh565zCFzdHSgjKsqJ44QeFjXlDt
	Uy1oYA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43fd40pvs5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 15:50:44 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6d881a3e466so4632226d6.3
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 07:50:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734105044; x=1734709844;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4lWamNQAIDfM3yyUtey6LSacCJIPjLImwXtS4zXm6hU=;
        b=QtzhinHBRoUwp1E9uDeVRi79aHs2MrKCTYgUKH4g6WTs7cRuCtraMA6k9QrGvn3KnP
         twWihcLhQmosS6swlnPb9PAF8bwkLRcXfsx4cmBfUNHS1Db8aMGaANCqm6m5NcLSActK
         C+kRQz+fzYbgmuLxWbLJFyna8yJzOzxzAM/WizDYYUudoJbtSahPDGoPjLhD2DmtP1gP
         jOh/Oc+SaM3gk1BbNet3j48pftlnATg9XO1XhqAwAQ5ey6ct3ej3xNZlaqFz7+ETcFro
         Gf+SXhwrYBfDo3/5CmnT4FwURwmhVfClaRvVeYweW1xsKSV1GtwVpaKQbO2VRfy90ACO
         TOmA==
X-Forwarded-Encrypted: i=1; AJvYcCUgFBSBe3eXvQClnzUOcpaRDSqwG5cV+SdTmbwnzK5tw3A24WkKmLSunQD2IWw6xWWFdej+L042olLm@vger.kernel.org
X-Gm-Message-State: AOJu0YzDVMi8Euxef8gO56lQvTh7ClQCn51H/o6Tj3h0dt2YztBV82YK
	3ycXsNbfyEEEBdojuZYscHCKFzytVMRO+0RxEJXyTG9QRsHfyTkeif9EHBSm5v8bxohs2QxM4qI
	t0sg6+2MDaSNNVbruDorA7NC7bBz5RdPrr0kXOWc3halVG23XgD5cWGlVn83L
X-Gm-Gg: ASbGnctM6eJYGDh0pzPw6Avewe+pqWKbSBNJrH8pFjraq0KL+F689lvmP2jWdSGDfou
	Qr6XLwBoyOUaAgwaOlnB2y28YnXZyVHTBRH8IuTuqleMCcvk4fiD8TdzKMU+BRY1IzkVGlcjKN8
	AXvbIAfzumtb/8rY3drPrVwLOsVouL+5nBNVijaS4NRkSY1ftV8Mk4V+heqTM4FaDi9dZc6VUvx
	dhGnR0jh5cgX2JHieKCY2qzY8IHVyolWgpWbE/4O/kq5wjSDqwckWkPXj5kXk5nYuwm5kmqFbzm
	Ld+tu5blEkKkbYSmZO93fLFwyCStuuGcwajs
X-Received: by 2002:a05:620a:4593:b0:7b6:dc5c:de2 with SMTP id af79cd13be357-7b6fbf402e6mr165105985a.13.1734105043609;
        Fri, 13 Dec 2024 07:50:43 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEm8l6zBqCg8QGl9x4UXubkofdFN5ahIp8JE2QujG9aG5B1WdYVDkhDOOL+l9SSQJV+oU85hQ==
X-Received: by 2002:a05:620a:4593:b0:7b6:dc5c:de2 with SMTP id af79cd13be357-7b6fbf402e6mr165102485a.13.1734105043193;
        Fri, 13 Dec 2024 07:50:43 -0800 (PST)
Received: from [192.168.58.241] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d3df2fc65bsm8769201a12.54.2024.12.13.07.50.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2024 07:50:42 -0800 (PST)
Message-ID: <2911fa29-1ecb-4d2d-a89b-2068f6fe3022@oss.qualcomm.com>
Date: Fri, 13 Dec 2024 16:50:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC v2 1/5] dt-bindings: thermal: Add MBG thermal monitor
 support
To: Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>, Lee Jones <lee@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>, Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Taniya Das <quic_tdas@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>, quic_kamalw@quicinc.com,
        quic_jprakash@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org
References: <20241212-mbg-v2-support-v2-0-3249a4339b6e@quicinc.com>
 <20241212-mbg-v2-support-v2-1-3249a4339b6e@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241212-mbg-v2-support-v2-1-3249a4339b6e@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: THXka7hykf0V52ZEzd2HFylfuTJ_M8iP
X-Proofpoint-ORIG-GUID: THXka7hykf0V52ZEzd2HFylfuTJ_M8iP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 spamscore=0
 suspectscore=0 impostorscore=0 phishscore=0 clxscore=1015 bulkscore=0
 lowpriorityscore=0 mlxlogscore=999 priorityscore=1501 mlxscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412130112

On 12.12.2024 5:11 PM, Satya Priya Kakitapalli wrote:
> Add PM8775 ADC5 GEN3 Channel info and bindings for the MBG Temp
> alarm peripheral found on PM8775 pmic.
> 
> Signed-off-by: Satya Priya Kakitapalli <quic_skakitap@quicinc.com>
> ---
>  .../bindings/thermal/qcom-spmi-mbg-tm.yaml         | 86 ++++++++++++++++++++++
>  .../iio/adc/qcom,spmi-adc5-gen3-pm8775.h           | 41 +++++++++++
>  2 files changed, 127 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/thermal/qcom-spmi-mbg-tm.yaml b/Documentation/devicetree/bindings/thermal/qcom-spmi-mbg-tm.yaml
> new file mode 100644
> index 0000000000000000000000000000000000000000..909373eb758e4a8b7c2bbd0022c56ab2e823ca13
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/thermal/qcom-spmi-mbg-tm.yaml
> @@ -0,0 +1,86 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/thermal/qcom-spmi-mbg-tm.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm Technologies, Inc. SPMI PMIC MBG Thermal Monitoring
> +
> +maintainers:
> +  - Satya Priya Kakitapalli <quic_skakitap@quicinc.com>
> +
> +description:
> +  Qualcomm's MBG(Master Bandgap) temperature alarm monitors the die
> +  temperature and generates an interrupt if the PMIC die temperature is
> +  over a set of programmable temperature thresholds. It allows monitoring
> +  for both hot and cold, LVL1 and LVL2 thresholds, which makes it different
> +  from the existing temp alarm peripheral. The interrupt comes over SPMI
> +  and the MBG's fault status register gives details to understand whether
> +  it is a hot/cold and LVL1/LVL2 violation.
> +
> +allOf:
> +  - $ref: thermal-sensor.yaml#
> +
> +properties:
> +  compatible:
> +    const: qcom,spmi-pm8775-mbg-tm

The bus the chip is connected over shouldn't be part of the compatible

Konrad

