Return-Path: <devicetree+bounces-219991-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E86B90D5F
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 13:55:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 877A54238AE
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 11:55:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C22030595C;
	Mon, 22 Sep 2025 11:55:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XGiS6zrP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E6747464
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 11:55:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758542149; cv=none; b=gVHjMR1nvz0OgL4ILW5J13GN9rPngHfS5v9me03/aILJRSsjhq93HuVt52jM6173jOKaEwjAzoWSIF6mpHiIEYNPxsMm/QBAu4RCwwDqj7hz5UeS/zn0Iw0K1yovg2h6EGOx79fX7o+VbYCGQLg7goJegIwhhgmzDpvLo7NXsrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758542149; c=relaxed/simple;
	bh=V3vCxo5Cgje5WL9ElNkNC36Qu5ZLBZy2UwGuAojOlzU=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=MatSuWqph2lAVyVpaoVzq90cVmza36oeUGCFkU3KCvCahUtois1Gi2OqEurAAGeWcAPXm2dzNT/tK/mdTCiGCqLqg2lshu2DS5AZ7KKF34gPZdOOtzNQee0yPXayFTwDfZJnngDRsDaAF3/K/qrZB1e0MgYjrUEj+5u1ur+uSKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XGiS6zrP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58M92FjY031309
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 11:55:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	B064ovUC9zRSjoxUhu48/j44RavwR26F+CFaXe00C2I=; b=XGiS6zrP4UeJuJ2D
	vb6MLe2HlJcyeGuKLxxoVEnAy+Ih85ct1tGcjc3qgLCI3l38a9ZWpys7K0GrOtYa
	MWzru86L96mIXLNGVfs8CACGiF6pzaZOBj4NTGLhjUwkFfw7lDdUtJZ232H6q/UJ
	aGxz9jvQ8bD1sZuUttyfhy5oV+X9/kWEV06mfnwg+BPpPyx3jrRZBhdKm8BIpwx4
	bJTQIBjdTdXY/FpWTsHcoSkqF+z7V1drVd/AzYONs87U2mxdn4bq4ntCZh6CO0Y7
	16xJlWQnDaEoQVq6WMX6k7GxME5aJlVZR4R5sgJeZ7C2jr9bz6MwDPRnM+LJWNkM
	rykXcg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499mg34kww-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 11:55:40 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-7a758650abdso15307366d6.3
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 04:55:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758542139; x=1759146939;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B064ovUC9zRSjoxUhu48/j44RavwR26F+CFaXe00C2I=;
        b=OGA9a6RXtW10EAhUTFRVAaW0ASxU78qHOEecK9O3CD4nHv7zbEv/oi56g7fzZgQBLX
         Sk3PDly+1fcmSl98wRN9txmNHunujXus4xx7sRrLZfXFvHHF2Y5c5PZE8XiPiBfjGC4L
         lCyVXt1IAAZD7S5+5PqJUe/Twsx+j8pvHxdXjKW2mxAf+9hYW7Go7U7jo76XEP0S7zYR
         1nB69KrePOcboLaOjyxfR4oLOAVY791Wayaa/cNeGXFNq/n1YI3Aj4z9cz57zJa1M2HD
         PJ/ZNWa3PgjoH/DUtjWbBhmqeQbVgaFSLoTbX96Kl3cP3DbQoqVm+Z8wk+IT8bEqt52I
         NHhw==
X-Forwarded-Encrypted: i=1; AJvYcCWRqTAxSRXTm25CHZGzAHW/sVNGs3XG+K4pPK594SmvIaRe6w9KQwncLIkZxWEGyI69ViCq2gKskrkp@vger.kernel.org
X-Gm-Message-State: AOJu0YySUpAe8/H9mygFtiSJWuqYMzxzSxxVQkLkQWvkPDj6i8OoFsrJ
	qOKYONgULgcevyDNgdvg63kIP6kLKTvaBSq1bv+jB3KwANNo6N8HKd2XkdIteUAZIYl1QTwczjz
	P3mLD8JVT3+wLu4rBt18/Fe0tj+OqYbZ0hMIXHNVLQPMMkhSXC8hhiGZGGTkYuQXq
X-Gm-Gg: ASbGnctYvtTLw4oeNp1Gj9PfwPjbaSr4YkrInkUeZPPKtIJJWJ97+FyfojdtJkHSg4M
	zUrFrkZSo/vE8iaKtS5QdT+Y8OrIy/NEM6Tdu25psvAuimJiF2t49LUcDZ3eR0stk1s6GQWjuos
	MKn9ZnTpTE3kOelG5ztIlVzXbi+ZLeeiJHmPDSI4yLEAJwTKsPpr54IIb5Q2I6sFqEmlidtzAcZ
	lqgkn+pyQdyHgx4I7av+7F40iTL4/zr8BOCKhB7d8VP02B6RLDIGoDJ4Ra7i1fxGvLJGvydIzkJ
	qFasPfB5jE1iuuZjGivB9igTz+1IAkmwM3ib7lirGy2gtP0opZYo0PPVQLy9AIW6o3I=
X-Received: by 2002:a05:6214:d66:b0:78d:ae5d:961e with SMTP id 6a1803df08f44-7991aee9f65mr144999536d6.44.1758542138762;
        Mon, 22 Sep 2025 04:55:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHrx2lQ8bUfjHVQDGTjtp+MxJxXk7lSkdCbj3n4NA6HStBZYgiH6151jpAgDfcIO+25QIVapQ==
X-Received: by 2002:a05:6214:d66:b0:78d:ae5d:961e with SMTP id 6a1803df08f44-7991aee9f65mr144999136d6.44.1758542138177;
        Mon, 22 Sep 2025 04:55:38 -0700 (PDT)
Received: from [192.168.68.121] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3ee0fbd5d65sm19081222f8f.46.2025.09.22.04.55.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Sep 2025 04:55:37 -0700 (PDT)
Message-ID: <8ff537c9-efa0-4aeb-987d-150bef8b7c00@oss.qualcomm.com>
Date: Mon, 22 Sep 2025 12:55:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: Re: [PATCH v6 2/6] dt-bindings: nvmem: qfprom: Add sa8775p compatible
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Connor Abbott <cwabbott0@gmail.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: Gaurav Kohli <quic_gkohli@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20250910-a663-gpu-support-v6-0-5da15827b249@oss.qualcomm.com>
 <20250910-a663-gpu-support-v6-2-5da15827b249@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <20250910-a663-gpu-support-v6-2-5da15827b249@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAzMiBTYWx0ZWRfXx8a7jh9Hqycx
 tKRydbhITJ9JsOJ/iNitWmmyZV4FFwdLFGv2o5fTZiH+sq5gcw/OX8PiAZh7mSqgRx58olZpAlw
 roq6rMYqqaN+Crddvcq38h7rxvIpclDXSKnNNfz19o403ewWSe38/1Idh9D8tzZ3G58iE8o3Ye9
 yLUvxiKFVtM9i6R64Og3KeylUcxMZcPLNn+moYevU7LIokq6bONpS7zFlSWNba1vfd07S7pn1zS
 Fr+1dkj9/HQTc/hJ8LuOHiqhx3g0et8xvVTG+Ct3WmagG4j7drzN4gqgWkx6T//vDRIBqx/bE8l
 SvEyLSBHkqD0x7Bm8h/Edox//lTfRpR/zSQGrr4BtdfPMUs3Ev4sWLj/dcNJguzWgZfKSSmGpQW
 KTEMJNhZ
X-Proofpoint-GUID: N4FdAtlgBKDEbrLqMMn8gb1fPZCxnePQ
X-Authority-Analysis: v=2.4 cv=UvtjN/wB c=1 sm=1 tr=0 ts=68d1393c cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=NhMKqwY3GOx2pceMi_EA:9 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: N4FdAtlgBKDEbrLqMMn8gb1fPZCxnePQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_01,2025-09-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 adultscore=0 impostorscore=0 bulkscore=0
 malwarescore=0 suspectscore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200032

Hi Bjorn,

On 9/10/25 12:25 PM, Akhil P Oommen wrote:
> Document compatible string for the QFPROM on Lemans platform.
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---

In case you plan to pick this up.


Acked-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>

--srini

>  Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml b/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
> index 3f6dc6a3a9f1adc582a28cf71414b0e9d08629ed..7d1612acca48d24c3b54c4d25fa8a210176d3bb5 100644
> --- a/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
> +++ b/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
> @@ -39,6 +39,7 @@ properties:
>            - qcom,qcs404-qfprom
>            - qcom,qcs615-qfprom
>            - qcom,qcs8300-qfprom
> +          - qcom,sa8775p-qfprom 
>            - qcom,sar2130p-qfprom
>            - qcom,sc7180-qfprom
>            - qcom,sc7280-qfprom
> 


