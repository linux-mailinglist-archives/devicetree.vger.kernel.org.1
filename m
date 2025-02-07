Return-Path: <devicetree+bounces-144109-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD26A2CE1F
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 21:30:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7EA9F188F370
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 20:31:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA55A19AD48;
	Fri,  7 Feb 2025 20:30:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="N6tCmssN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5344F23C8C8
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 20:30:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738960252; cv=none; b=BWMXNGAQhuEo18ezWiPSbv04Fmx7z91O00JHXO0D2O06w0rpGcY7a7jx8DCTTjg4jCf2haBMXNle0y8ixzVm5O83N7hHVg0xZxSV7wjHrelT6VuHofkF3Q93+EzQ3CHNhUdj3d37MAxf4k1FTLPlbJf7rbA9cVHky/00sAozTRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738960252; c=relaxed/simple;
	bh=IFMgb2Twtp3Ix5oDbd0zFvdGJcCB+Omt610xaW1yL9Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RfzjN6WJXzT3OfErPKRTrx4qRms6tCerbw5s89garAFBgi7PmjT4DgVTrHZtN6B7c/cldwtFYbMaNfYfXBTRA6lvpLlMB4zMkQLfx1tsgMsxWJp+YzbFVlKhtPwnbVHjFE33t04q9t77BmOsP69Dm0LK+RQ0ixhAFaYiJRRPCNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=N6tCmssN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 517Fs0Q2004887
	for <devicetree@vger.kernel.org>; Fri, 7 Feb 2025 20:30:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ExD9ltWz3c2Y3/SMiQ3HiISolJICJWzYaCFE2C2UWQY=; b=N6tCmssNPK/HHC1I
	oQngbaoV5a8YNovFxjEGcGALJQC2eSdLK33Ea8XbnkYK4dajPaLAU4+kXiAQjlr6
	8xDBUZOfH9VX8m2xrguOhRK6B2bYB00s3VvJ5UQz5X55UTQBx/XaB98uPROAdX3Z
	rzPV/CAwnMdh76ony3tm2TMRvHqSDpBhFr4rJrJAXdlJpP7Cs7tVROGFBT3xjJe+
	5tMJ9p8A7Gt388scb6L0vxTdo0fmCNUmQzDMhDGlHFCVpk4N/1S6cK/WBoFl9eLr
	2hwk2YNyRYDv5wtVYhNtO/9n2358Y3/RmPUFJrzIG9CiT1pldtfLJOO9bykTPE/d
	AfQSJg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44nn7frmpv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 20:30:50 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7b6f28dc247so65193485a.3
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 12:30:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738960249; x=1739565049;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ExD9ltWz3c2Y3/SMiQ3HiISolJICJWzYaCFE2C2UWQY=;
        b=o6X9deXiUOPfe5gNsOMRQyvXItfv1R+FHENdyMGjM+caX7HikrWWMxizdIYEonPXr2
         2JFWZkIdRwPmNc8FdLcFaMUGdr7sZFkzG8MSstWV/+pjZC5qBL85t/kmrT1thSvQRL8P
         iOutFouM6w0pphriOTQJ9F+IgNewK0A5KhUPpjS1RbsDVJI6nm1iZuXv+sbFWHjdBZ8k
         oAQJNXzmULupllv0EcyutfOqdOHckCQBvewXgcAG9EInLAxfcYnNk8R0BJtqKBdnDUvb
         tH0YK+9oY4Ic+l5+tBqJ4P8EUqCm7gKTG/WovtIzsPL+UTO6kcwbsvROtkxn/oggy18G
         UfFA==
X-Forwarded-Encrypted: i=1; AJvYcCXeuEIt4i6V0Qr1FRbIJ+UQWErm5E9ZNMRUrLJKxR452YMPGHTwXs0+UvGUyM2Q1wIXzCT3NC7E6JE3@vger.kernel.org
X-Gm-Message-State: AOJu0YyWr3LZIa0+FGjEreCyinFsczKulaL1ZaOEXpTav6UGB20fpATd
	22iI+WC1HF4k6iej7CwHh8r0begZGcEK2A68AmIs3Mq2/9ycQQnB2EGtYRh8HQXIYUi8Q8Ovz+x
	ONOTa4H7j8oZufis4x5tSEyS1Qt8KJjjb/Gnx0xtQnUB/Q+1NFjnjJyo4eddu
X-Gm-Gg: ASbGncuUS2S7SIpWCwhivTVqKU42KulKMoo/5CwjscampixwxSINggv7zip3NOUdVej
	SJyv73fOaA+sQdUHN3Ox87Hujlkz7oU97b4IpOS7sG0a7jaNEUCr/5f/GLr+6A8GefIKBbGUCEA
	nMTkmfCCxxnU2aOVBqDElVbZnRErSQLpQF73P6oO6bGMKoTHnVhEebIrFRcZJO8oFOTtymmt7aZ
	p5UrWRN3tcX2MZ4i6WHs1/+nYgbS389hzUWhJuFYiOaz1w5nSTuWa9DKmdOvrGMYbbbIz5DVg0p
	q7ffNA8X5u3nOjUMyG3ZZUQvWQgbOgUhx5v4szzPlPhZMroQ0URTxS1MxKU=
X-Received: by 2002:a05:622a:1901:b0:46d:e2b9:c4c with SMTP id d75a77b69052e-4716799308emr26709521cf.3.1738960249279;
        Fri, 07 Feb 2025 12:30:49 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH0sznoMW8Gr6aAQcdDwsAOxR9nzSI3Nl0mGCEXlqe4zxuLzaWnRKyZ/iuY+0HhMqgW2aaGfg==
X-Received: by 2002:a05:622a:1901:b0:46d:e2b9:c4c with SMTP id d75a77b69052e-4716799308emr26709231cf.3.1738960248855;
        Fri, 07 Feb 2025 12:30:48 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab7832a02fcsm238343166b.94.2025.02.07.12.30.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Feb 2025 12:30:48 -0800 (PST)
Message-ID: <ba546075-cfc0-4b17-9129-f99054e2e1ae@oss.qualcomm.com>
Date: Fri, 7 Feb 2025 21:30:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sm8650: add PPI interrupt
 partitions for the ARM PMUs
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250207-topic-sm8650-pmu-ppi-partition-v1-0-dd3ba17b3eea@linaro.org>
 <20250207-topic-sm8650-pmu-ppi-partition-v1-2-dd3ba17b3eea@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250207-topic-sm8650-pmu-ppi-partition-v1-2-dd3ba17b3eea@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: xtq8lCMhCOOOwK7kzl38_SsX8L7PTu-0
X-Proofpoint-ORIG-GUID: xtq8lCMhCOOOwK7kzl38_SsX8L7PTu-0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-07_09,2025-02-07_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=770 adultscore=0
 spamscore=0 priorityscore=1501 bulkscore=0 mlxscore=0 lowpriorityscore=0
 clxscore=1015 phishscore=0 impostorscore=0 malwarescore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2501170000
 definitions=main-2502070153

On 7.02.2025 11:31 AM, Neil Armstrong wrote:
> The PMUs shares the same per-cpu (PPI) interrupt, so declare the proper
> interrupt partition maps and use the 4th interrupt cell to pass the
> partition phandle for each ARM PMU node.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---

> @@ -5309,6 +5309,20 @@ intc: interrupt-controller@17100000 {
>  			#size-cells = <2>;
>  			ranges;
>  
> +			ppi-partitions {
> +				ppi_cluster0: interrupt-partition-0 {
> +					affinity = <&cpu0 &cpu1>;
> +				};
> +
> +				ppi_cluster1: interrupt-partition-1 {
> +					affinity = <&cpu2 &cpu3 &cpu4 &cpu5 &cpu6>;
> +				};
> +
> +				ppi_cluster2: interrupt-partition-2 {
> +					affinity = <&cpu7>;
> +				};

I'm not sure this is accurate.

I *think* it's cores 0-1 and 2-7, but I can't find a concrete answer

Konrad

