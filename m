Return-Path: <devicetree+bounces-120345-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 103099C22A1
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 18:03:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2936C1C233D8
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 17:03:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0831F1E3DF5;
	Fri,  8 Nov 2024 17:03:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BYxgXR6n"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA4519884C
	for <devicetree@vger.kernel.org>; Fri,  8 Nov 2024 17:03:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731085408; cv=none; b=XeNKkun4Vvy/191tA4ykKdD3KovAvGdcR4Vh3QIS9kK3Oc82cmWGsPPwuc9qW5fRveXwQWyHuAFIwtOg7HE+FO0360QS6kAxkYffXmizbTaSPHJ1byPwmGKIRx22R0VMdrO1n9YjxDK4JeLmLOKCXRzC7IjaBUM4q3ndOmSmgYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731085408; c=relaxed/simple;
	bh=TVCxVOewQGfcTI2xFGmS6nhXBt2NWRKz5F/6lc6IRH8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=piS+xtiMuhU0vsCw7Cpsag7+Qr8dC8nPDLvfsWTJFq+Aw9npuIVCogFOhdAE2ENC6pEU3bzedJ4OkR6HiqJnV61Y9VsBK4gp8s0fi/m4+J9R5lryfzwuNqArjNibhNBv0JWKk5upIz6FLmddg4IXNVv4b0CfcUc08zx1D/b9778=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BYxgXR6n; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4A8EJdxi000731
	for <devicetree@vger.kernel.org>; Fri, 8 Nov 2024 17:03:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bb81KFW5ByO/n6LEctO/uyB6P605Q4mKU+pEM8orH8s=; b=BYxgXR6np/FUaLYW
	IB1ixBNc1mxabwHS1V5Hh/xHS5uj0nt4SQRTV1+F5Qc5+y2nbPDnY7SuF8apItSF
	QgAOLYHbud0HcUTFceCNE7BZrCKrzM6LpInzU3RD4R8lCLJzMQyWlPfC5q9vftUG
	SjHZsudecBSUlZOM5upUfcOHKh8dMz/LBai0YcEzoxqj3YwBGnt4NRmlU+eU2h/n
	XkZHUP9zY8h3lwISljIXrDd3MpDnBv18aALFOwa0QPhvqdu8lhQsYwQH4E4V5qKM
	EFyQE7YgeKvLBdWBAE5foTMpxIl5/zTfrQtsLa3/PyN7YcjMxx19QlRNOX0BOmJW
	pCnYvg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42s6gkt6yq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 08 Nov 2024 17:03:25 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6d37d9868b8so5550246d6.1
        for <devicetree@vger.kernel.org>; Fri, 08 Nov 2024 09:03:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731085404; x=1731690204;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bb81KFW5ByO/n6LEctO/uyB6P605Q4mKU+pEM8orH8s=;
        b=de3RpFtY6YL2EJ8ga+pnlBMYxr7sHPJR0EQgsCkcQpf/EAzWxYU2c1OiMgT+/RdQHa
         PWXWR6tS6+9s5V6p83L5qRViuk+NDuNj14XoLyLnVqv3vpmwm99OirSmxAS+nvBuk95z
         VfF13myKl3n9cJBypwVCiTSI99ao9BrjOMF14AZ1CluXTQE53ZlGBLTYzyKmGEozeX/T
         wi/IFEGsIo9n9ZX2VK90BbU1/AV1isywdbL4Qgwu1FT95TRjN/Ik+AtxFaF+1B0oP/iW
         zRZwlUa1vdRAoSNtc3h4xXB9EHAEzlZ8QUBL3ROC1BNoKp1X69flIzutQcF6dQAJqDyF
         ofnQ==
X-Forwarded-Encrypted: i=1; AJvYcCXAkWNhOHU9HyWOA+jN5FxgnZ2awyw5y7eQLDfB3trkMoBUtHBZf7iTDTtI5YB9W3GUbpkI+erReZhx@vger.kernel.org
X-Gm-Message-State: AOJu0YzBtFn+59rDbsimR8nUjS/Q8KiqdzIZr2jhFmjlmJLr4NGU1nkU
	bKUPZdm8BCDL44phJABLLov4g+SqdpnRvdnPbTXRSCf1ICRgx4uSxbgfLdW6sjajmBgMjAeJaB4
	yljeqDAnoV4SIDeW5aNf+cT3/LMSMqlow1iVTjwgo0JaB3x3EEdzURpYWn273
X-Received: by 2002:a05:620a:4494:b0:7a9:ba9d:d24b with SMTP id af79cd13be357-7b331dbb71amr206864985a.1.1731085403882;
        Fri, 08 Nov 2024 09:03:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG0BxkJl+NAQG7XpcFGSrrFoGs4BQBBNk64wljjo4cqxd+i2RMZOS7DlKrjFnQrg6d8jPbEuQ==
X-Received: by 2002:a05:620a:4494:b0:7a9:ba9d:d24b with SMTP id af79cd13be357-7b331dbb71amr206862085a.1.1731085403453;
        Fri, 08 Nov 2024 09:03:23 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9ee0dee9besm255728966b.149.2024.11.08.09.03.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Nov 2024 09:03:23 -0800 (PST)
Message-ID: <0293b1c5-d405-4021-b9c1-205271107350@oss.qualcomm.com>
Date: Fri, 8 Nov 2024 18:03:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 12/14] arm64: dts: qcom: Add initial support for
 MSM8917
To: =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Lee Jones <lee@kernel.org>,
        Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, iommu@lists.linux.dev,
        =?UTF-8?Q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>
References: <20241107-msm8917-v3-0-6ddc5acd978b@mainlining.org>
 <20241107-msm8917-v3-12-6ddc5acd978b@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241107-msm8917-v3-12-6ddc5acd978b@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: w0WS2zjn0My7YySuvJIRuZGVv-rohN30
X-Proofpoint-GUID: w0WS2zjn0My7YySuvJIRuZGVv-rohN30
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015
 priorityscore=1501 adultscore=0 phishscore=0 malwarescore=0
 impostorscore=0 mlxlogscore=999 suspectscore=0 lowpriorityscore=0
 spamscore=0 mlxscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2409260000 definitions=main-2411080141

On 7.11.2024 6:02 PM, Barnabás Czémán wrote:
> From: Otto Pflüger <otto.pflueger@abscue.de>
> 
> Add initial support for MSM8917 SoC.
> 
> Signed-off-by: Otto Pflüger <otto.pflueger@abscue.de>
> [reword commit, rebase, fix schema errors]
> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---

[...]

> +		domain-idle-states {
> +			cluster_pwrdn: cluster-gdhs {

Please rename these to cluster-sleep-<n> and sort from shallowest to
deepest sleep state, in this case: ret, pwrdn, pc

[...]

> +
> +		l2_0: l2-cache {
> +			compatible = "cache";
> +			cache-level = <2>;
> +			cache-unified;
> +		};

Please put this under the cpu0 node

[...]

> +		restart@4ab000 {
> +			compatible = "qcom,pshold";
> +			reg = <0x4ab000 0x4>;

Please also pad all address parts to 8 hex digits with leading zeroes

[...]

> +			gpu_opp_table: opp-table {
> +				compatible = "operating-points-v2";
> +
> +				opp-598000000 {
> +					opp-hz = /bits/ 64 <598000000>;
> +				};
> +
> +				opp-523200000 {
> +					opp-hz = /bits/ 64 <523200000>;
> +				};
> +
> +				opp-484800000 {
> +					opp-hz = /bits/ 64 <484800000>;
> +				};
> +
> +				opp-400000000 {
> +					opp-hz = /bits/ 64 <400000000>;
> +				};
> +
> +				opp-270000000 {
> +					opp-hz = /bits/ 64 <270000000>;
> +				};
> +
> +				opp-19200000 {
> +					opp-hz = /bits/ 64 <19200000>;
> +				};

Does the GPU actually function at 19.2 MHz? You can check this by removing
all other entries and starting some gpu workload

[...]

> +		cpuss1-thermal {
> +			polling-delay-passive = <250>;
> +			polling-delay = <1000>;

You can remove polling-delay (not -passive), as we have an interrupt
that fires on threshold crossing

> +
> +			thermal-sensors = <&tsens 4>;
> +
> +			cooling-maps {
> +				map0 {
> +					trip = <&cpuss1_alert0>;
> +					cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +							 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +							 <&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +							 <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +				};
> +			};
> +
> +			trips {
> +				cpuss1_crit: cpuss1-crit {
> +					temperature = <100000>;
> +					hysteresis = <2000>;
> +					type = "critical";
> +				};
> +
> +				cpuss1_alert0: trip-point0 {
> +					temperature = <75000>;
> +					hysteresis = <2000>;
> +					type = "passive";
> +				};
> +
> +				cpuss1_alert1: trip-point1 {
> +					temperature = <85000>;
> +					hysteresis = <2000>;
> +					type = "hot";
> +				};

Sorting these by temperature, rising would be nice

Konrad

