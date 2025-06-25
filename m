Return-Path: <devicetree+bounces-189563-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DB72EAE84A0
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 15:27:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 45E9218857C3
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 13:23:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98C0A264F9F;
	Wed, 25 Jun 2025 13:20:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WmEJCt+K"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E604B260563
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 13:20:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750857627; cv=none; b=kFQlSSR60lRDwluQvbCC/MNtaxDXcXCWrZELVnpqIMEDFDIAX0KCmurbnl9Bj6385sbb+cYWljxf+j8DqGoxWmcgHQe9LwUpWIrIFIDqrHQ5Xa9dS6MfuzyiaX+8ZHE6aUhwkHt9OV7tr3LFUliE92sW6203LO9gCFqnmzrxLYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750857627; c=relaxed/simple;
	bh=J32uwR5PG6Pj/fkgodkU8NToknBPtoDkFd1PmBMP74o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bUfeCf2HtMxmvx1jslOIMQVBJTtZx5mcTyyzAqTIbeNuefhvi6U7axPpCT9TYkS1Tk2ROj9L4X4CaF2mTTFF8ajNssbwUYjPPQbPxOdw3Va2//MlZzhzRmGwGWMonfxLl+T45hO+0IB7grKwbRAAZRHxCEpGaA+MFizBzBHrDfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WmEJCt+K; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55PAm8cw022232
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 13:20:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4Wc6gS//yAoCzSiP++Qy1pCvIWUQ0H5tM6n71zaADIw=; b=WmEJCt+KShHamXWM
	DwQtRpdWj0ommS/ZUnTqMILSd46G8aIrPS2dHbUNg8QsD6ENqdrgsppZUkf1aqWv
	/7tukxP4ubFmNP0/A1lgRMc/0m4HrWcMbQlwVrvomLcsaFw42o198fZP/biNGa2D
	XFGsDnCLYsKEgBCn8DQ8CdnNciMy1R+AD/fCOtOQHAFPj+A8kJO32k+2vnP/YydC
	H/s7Uymw7CFZtlbvmaLzFt8JiZCl3aPu9iufhwPQh3nw2F0y0pWkRShNJ+I3tsWI
	JHP73zuL+ytXK9cJHa3k6RWj8+cQ0CuWYtvJsbnHWQLt+Keq6gHljgBeiayDY8lt
	GycS6g==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47g88f9rr7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 13:20:24 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4a5a9791fa9so20559091cf.1
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 06:20:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750857622; x=1751462422;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4Wc6gS//yAoCzSiP++Qy1pCvIWUQ0H5tM6n71zaADIw=;
        b=BK/pe0iyazdBwOHOVMMnAqj9GQ2VBPCQagC9+EbIVvKjKo2NBOkoJZOS/59iEtb9Nv
         z2wn2b/e3d9JISHpgk3fF5jLj8BoOq7vPTpi34UMWHzuaGh6LLWbCJj+IZElsLOlsB+d
         JafF8JheFpxQ1Ak0NLj37d1hSD6v6Y2mUpxyNbSikK62pjBaF/PXtk4iqUaXSHam+kSP
         LHcdijvDL4NmwuyS199RyCbtBnm/Y5wH6/Bvs2XMvRxOso+1O/vJXo0SozbJmHjvVDdQ
         p8Z0iStTYlRe6FabQGXTkcCadOx7K4wJz6ynJdMP/rAP/GJJTcOg7/0s6kymngPU7qjp
         wFLg==
X-Forwarded-Encrypted: i=1; AJvYcCXDFr7ulZspTQKTy62AOwHVItp3GTbYzPDbSqVqeqJtwjbS4m7z5DKN/99OqOi6dq9vYXuNjvVlkRmw@vger.kernel.org
X-Gm-Message-State: AOJu0YwnVPDVzkBV4p1s+li60kZ6wXUsW+gXYJ/a9v3qVnhIJ3k2nyE+
	giVMsgjO0tEX54BVm/5rNvl5FSY2pFTr2PYQTz+RXpWxFDHl1rN84eqTog1X7xDdsbreigXJiqs
	0c088PgxvmJwRZoTGsJiJTvMGgK7fDeo6EEZ+CzyWw4eJ9S1FcQpM0frXGCYUY+ak
X-Gm-Gg: ASbGncu9XqxpZoDuvdqx3FQ3R4I8pqyFllPDZcqjreXLUSKhJeTerjPeRQ8dd6FBFIk
	lV1V1TmSxWckAhsvRJyHXHZUA1R4GDUJdA9WcrnPEjNjudkFyCw9yy7AMaEDnHgMmipYZqR2ym9
	uTct+G63jrDRkNMHVosMs+oxgcLwPQOELV/JwkqZ84BVd5ffafCU8fhSXbyysU1gQk7jlYaZXVZ
	7bBti7DDnVuSYozesx1e6sJ1gg8adznaov58jMKlVeHP3JMH3LrGphV/Wcni6Jx9moqZ7V4N/kY
	hNlMolfTPCK/Vo+FBrF5s+vaZjcsjGR8FKqO19JvhY56OWsIHkK7Ff+Qg6n4+Dw7TD8QBpB6OiL
	QTdk=
X-Received: by 2002:a05:620a:2552:b0:7d3:c69e:267 with SMTP id af79cd13be357-7d42976a0cemr149810085a.12.1750857622596;
        Wed, 25 Jun 2025 06:20:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGhWy2dsS1LyGigZ4Dt8bnXgAs0PhlY9HNqrotGcZ/DU5sSn6FMsWkf7WES+YXghkiMky5/Bg==
X-Received: by 2002:a05:620a:2552:b0:7d3:c69e:267 with SMTP id af79cd13be357-7d42976a0cemr149807385a.12.1750857622105;
        Wed, 25 Jun 2025 06:20:22 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae0a06ed21bsm373251666b.29.2025.06.25.06.20.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Jun 2025 06:20:21 -0700 (PDT)
Message-ID: <bced42f0-bc9a-47e6-bbdf-c49657d2e18b@oss.qualcomm.com>
Date: Wed, 25 Jun 2025 15:20:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: Add PMXR2230 PMIC
To: Luca Weiss <luca.weiss@fairphone.com>, Lee Jones <lee@kernel.org>,
        Pavel Machek <pavel@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Fenglin Wu <quic_fenglinw@quicinc.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-leds@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250625-sm7635-pmxr2230-v1-0-25aa94305f31@fairphone.com>
 <20250625-sm7635-pmxr2230-v1-3-25aa94305f31@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250625-sm7635-pmxr2230-v1-3-25aa94305f31@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI1MDA5OCBTYWx0ZWRfX5WZwq/bM9YZx
 iirDVh0bpTSZ/NQ5YjQtm+NyGJqjkTidURpje14F+cVGb0XQBGDRsT9TirzdedZ0kByZQpfsXc1
 LRw1R+ZRD3tKwPD9KGwSnA7rT1U78WR2g6GOpnwyzGF2q7q9Ie3b7ig91lnOuGQskA5hCMEiCYt
 9tC6ldH5JSZMoLTCC/QdVoAY4TbC1Y8Lq5kvVr7CmPvZaif8EhR/a0L6DlqHUSS2YcCsWH/i3bg
 UNPStN87WC4ve6ctNr211f0PbxIiZqejKIQWvd2ojlldJxvFi0Jvi9VrBh9D2DixNDjW4kUDKvn
 XXyNGCxKXcR6p/3NfDTnwyvvErVutyw7h2o8qOzgjYiLzwIEBcQ9MHLQZLfiaHRYFW8eXUKxEn3
 GcZZu6uAiU6I4Nv1nTYOYuIpx+5p+DnKU0XgJ0NHttY7dsU1Y7OP40HM8G5F9fPyWc9WQ7FC
X-Proofpoint-ORIG-GUID: qbIB0wqMbq503ONwzWQK3Kgd9IFL57cD
X-Proofpoint-GUID: qbIB0wqMbq503ONwzWQK3Kgd9IFL57cD
X-Authority-Analysis: v=2.4 cv=LNNmQIW9 c=1 sm=1 tr=0 ts=685bf798 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8
 a=1Wqoc7Fd06vDnn7CWGcA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-25_03,2025-06-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 bulkscore=0 mlxlogscore=999
 impostorscore=0 mlxscore=0 clxscore=1015 adultscore=0 priorityscore=1501
 lowpriorityscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506250098

On 6/25/25 11:18 AM, Luca Weiss wrote:
> Add a dts for the PMIC used e.g. with SM7635 devices.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/pmxr2230.dtsi | 63 ++++++++++++++++++++++++++++++++++
>  1 file changed, 63 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/pmxr2230.dtsi b/arch/arm64/boot/dts/qcom/pmxr2230.dtsi
> new file mode 100644
> index 0000000000000000000000000000000000000000..a7650f3230c01422b76ef78e897e5e7ae2f20cc6
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/pmxr2230.dtsi
> @@ -0,0 +1,63 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) 2025, Luca Weiss <luca.weiss@fairphone.com>
> + */
> +
> +#include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/spmi/spmi.h>
> +
> +/ {
> +	thermal-zones {
> +		pmxr2230_thermal: pmxr2230-thermal {
> +			polling-delay-passive = <100>;
> +
> +			thermal-sensors = <&pmxr2230_temp_alarm>;
> +
> +			trips {
> +				pmxr2230_trip0: trip0 {
> +					temperature = <95000>;
> +					hysteresis = <0>;
> +					type = "passive";
> +				};
> +
> +				pmxr2230_crit: pmxr2230-crit {

This name is "meh", please change to tripN

> +					temperature = <115000>;

Unless there's some actual electrical/physical SKU differences,
downstream lists 145C as critical for a PMIC carrying the same
name

with that:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

