Return-Path: <devicetree+bounces-189219-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A0CACAE72B6
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 00:58:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5ECF4188356A
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 22:58:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8087825B30F;
	Tue, 24 Jun 2025 22:58:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="g/LpIvVf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DEC1307496
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 22:58:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750805894; cv=none; b=oeCaXZytCARFML5YUs0Z/WbUDXI6zBJ/L7Gfe63uACUwce5Ug9/Vlq4675iab/9NwMQW0DKBhKUc8AOH3F6h8Ntk3+ep3MU19GQeaxsPD5JNkPwqDCnZuiaLzs4Sha0f2d8n0F0R6/8FIgxtRCWxE0Y/4WHog+W1p0AchYXEvKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750805894; c=relaxed/simple;
	bh=TrpLjI9MpzqQQnwGMH7aD9a8yeWdnD3EyQrey7s3Vj0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qtuq01Ls22eW2XlfU3kzulGPI7nJJaWB1nsND/v+9qJeF8vCBUMr1Acm0lkYLiRhnqp4CZJn2RhMnZZSVcceEFObdn0LxYW43xINt8xZxCK+0JDce/GbY0FHmcv1UZYOPhqU0gR6Od1MLjwTQR2lQnxDP6SUDDYzqK+RGgKXErg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=g/LpIvVf; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55OEmEdc013850
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 22:58:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/wVRFCalVNNE/Ec1WvsF4J2kOdrYCtJerJyzK82nnhc=; b=g/LpIvVfbDjAqVXz
	hb2R8nOcq9LexBZPOj//w010jShxxa6OosmwmL7EpuPVNmohHBv1sfYJI3rFLD49
	9BvV6Ki/5Tqwt6WJ5SwMsq+Ywyiv+JPIrKgrfTbIUQSP31PMB8Jm8XuzX1UFo5h0
	3LzGKnNywph6kHnjD4nwh6FQGny9eIPeRQcnM027WiiHv9MNMySwHaXDLK1HVD/V
	TZYGX+PttOnH7Yq8EVSbkz1E3S84Z3AhLflNZLdfzVdznPvgErMWYYKGCwTibchn
	FOHPXsLMsZdtXKN4m2ygFZ4t1Id3euuKo7YPaqjj73sQvG6BuLZVXAkB1KVJLJ5I
	hXbIOg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47esa4q3m2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 22:58:12 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7d3d3f64739so1313308285a.0
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 15:58:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750805891; x=1751410691;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/wVRFCalVNNE/Ec1WvsF4J2kOdrYCtJerJyzK82nnhc=;
        b=OWN3GtC9s44Y9YlElz5fne29JJsMl3JIY4ajYvA4ghi8IDp5SuUQ9aIR0V+unAfIDk
         QzRHriBu3pt4bEDN+P3EA5yEWKvYpdihjv9Qohi7rMqIKwqXu1p543X5dPJ/vuOoRpZP
         oTraja/UnG2Fu/u4246jKhUk8yOOtearrVa2c7ZSr5A6Dwq67yZJUPMXKPMz3ZDymXUi
         Xo/f3C27Panz4tfEWWDhGGl3NHy1BTUV4f0r8GcTG5t+4U51nCofJZ/6h1JQamxXBOTN
         EpJOeWem4NUf5gkRP1tjE781dF5vXbM5Jl0pM/HPGZJ5DkPWIA73+v8DB4BFOhZpaGPw
         Inow==
X-Forwarded-Encrypted: i=1; AJvYcCXU6yTdMIehii2dmmOGLFXXGarNIOCbHls06CLpiaiWIPQ5BnKfLhgPlLTYAGAliYl/zVaxHmJrejmU@vger.kernel.org
X-Gm-Message-State: AOJu0YwL8x9MilaXbiSZKf9VJm4tqPFCWav+tv0et1QnIEuIOuiAv6+K
	e91bBA4x4i9z0jf6gnO6sbZlzHIYXxbOZ2GylOWL+0VSG4n1sGPkvvm+abeEGCOsKgwke7xfC8h
	GQmJgXzgCrEyCmWGMSvHbC1IeXR+GIe6Add+v+58zzryFXbBTfDFs+mbBoiouYXDW
X-Gm-Gg: ASbGncufxis+TgxWHWoVXgMK3VxfaqrNvenxBr4lVeodw/W2jL/jigzqk5MVhVOlHWn
	wE2Vvsq8TgstBHiBLtBK/+FgRaly3TKU5viC8OXdHG3lMllMzJZ6WWbFuz2wfxiW0SQRDkA1J7k
	Q3f+0GsWKxBYXlFtiUL5oFJaFEjNdTJpDmEeuo4cwCKrDD4zDE+851Vl0ZZJW3d4PqgQn5vhC3C
	VcNRtsSjT7+32mVjmxn3EiLkRZdI7GpoSUaJA5MHqyCG2ZXV34TQHhv/7A7clAX+76XyQEX4JDL
	SuxdTUrxsa0rCgcHg0fJM2IHoPH7j8TGyrgp7yijktS6MRa3r4FlxsOrJxXoHwWH8Q2zd2Sa6KJ
	xZHzJURaayRpi6PBmCh72Y+cw
X-Received: by 2002:a05:620a:1a81:b0:7d3:8dda:3eb4 with SMTP id af79cd13be357-7d42978e85cmr119679585a.45.1750805891124;
        Tue, 24 Jun 2025 15:58:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF9dsENZOYptEEis7mF3P+kVAQrXssLynZ5FNmxoRHHAjhjn6zoyLuq1me+biIvSDfoEoHbrg==
X-Received: by 2002:a05:620a:1a81:b0:7d3:8dda:3eb4 with SMTP id af79cd13be357-7d42978e85cmr119676285a.45.1750805890680;
        Tue, 24 Jun 2025 15:58:10 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a0c3:3a00::4c9? (2001-14ba-a0c3-3a00--4c9.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::4c9])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553e41445b2sm1975823e87.26.2025.06.24.15.58.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Jun 2025 15:58:08 -0700 (PDT)
Message-ID: <c208ade0-0540-4100-9075-a210d2ab9c5c@oss.qualcomm.com>
Date: Wed, 25 Jun 2025 01:58:07 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: soc: qcom: qcom,pmic-glink: Add
 qcom,subsys-name property
To: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>,
        andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250624225535.2013141-1-anjelique.melendez@oss.qualcomm.com>
 <20250624225535.2013141-2-anjelique.melendez@oss.qualcomm.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <20250624225535.2013141-2-anjelique.melendez@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=eLYTjGp1 c=1 sm=1 tr=0 ts=685b2d84 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=SYwsbMu0la4PIs3mC4oA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: JkRiQhhAf2v5n-GnuTnAE63sZy7EmYrb
X-Proofpoint-ORIG-GUID: JkRiQhhAf2v5n-GnuTnAE63sZy7EmYrb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI0MDE4MyBTYWx0ZWRfX2lG5g7RRjWqu
 huCU0VgQH5Rk9uLN85Xvebk5uakGF4Th+APZRSDkh1tokmy3vf1gROBxvSqWlzwGmg0VsS4TFNt
 iluEZpYLtn4OvXJHS0jm+TowYtFMlZYmqPFvi6jZtyUh7gTNyKfOy87Ajo7s69qzmyQBaikaCat
 F1eHD1E8lCkI6z4rEB1bIIt+rG9lh4pxtdOjUTzhyxYa2Y+BESxWajMr2db9oPiwY+uIuM5Y1xi
 g9SDExa2zEoLIIPdus8XcSekwEfHUdzb7Xn0/L2wpMzQvKnrJSps7nkuBw3zOg/H2wnwAn/Wje7
 zKdaTOVK/nmRHfmZBNHAmqoRBDiTiFIIwfZnMdeZpWzIi+edLnPfT4cQoi60BFGkbZ3+FUu8Yq8
 O4ytXN2qgbBqLpokwx5oIywPAsXyxvXE+c1bLKkNV+eshnMgWNXcs48v6eLB0cpyhK61Hd1V
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-24_06,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 mlxscore=0 clxscore=1015 mlxlogscore=999
 suspectscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0
 adultscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506240183

On 25/06/2025 01:55, Anjelique Melendez wrote:
> Add new "qcom,subsys-name" property to set the name of the subsystem in
> order to get subsystem restart (SSR) notifications.
> 
> Signed-off-by: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
> ---
>   .../devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml         | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
> index 4c9e78f29523..0d1f30fdc579 100644
> --- a/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
> +++ b/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
> @@ -49,6 +49,10 @@ properties:
>     '#size-cells':
>       const: 0
>   
> +  qcom,subsys-name:
> +    description: Subsystem name used for subsystem restart.
> +    $ref: /schemas/types.yaml#/definitions/string

Why do you need to specify it in the device tree? Is it not static for 
all existing PMIC GLINK implementations?

> +
>     orientation-gpios:
>       description: Array of input gpios for the Type-C connector orientation indication.
>         The GPIO indication is used to detect the orientation of the Type-C connector.


-- 
With best wishes
Dmitry

