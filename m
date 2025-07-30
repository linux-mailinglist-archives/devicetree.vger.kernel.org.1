Return-Path: <devicetree+bounces-200802-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D6F50B160A8
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 14:50:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B051B3AE56B
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 12:49:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEA432951C9;
	Wed, 30 Jul 2025 12:50:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="V3GRwrrn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3763639ACC
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 12:50:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753879807; cv=none; b=aHG4H3UKwHgXouPw1jyQGEx7EhZY/IwzCNAGG2tlbkFOvli+/OKaNmLu1azCIML/bXN8EAnhEeycFYk+ji8GOuT8y+tb9fR+Nxpt9W2Phhv0ANny3JG7VOFJVuh0vdllArPY6ikmIUcVHRdqrlUzoY6cqkPGXLaouMoiLm4RHvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753879807; c=relaxed/simple;
	bh=BpUYlsgB1VKiMf3apeY4LZdFHLhgtdup26V6g6fFdCA=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=idavXlQvMT/wXQkrlapASxD2suOBUuGLphjXybzeYRnFmJHjdvXR2MqBjOC+FAX7qzShbF1p5rNRf9UNYTGNunO0i5pVvMzL05nS4dpEdD83XzG3EztTmy28OLKPvpzhZGGaJ8oRyYFV/X84473AEdGWtWHhRsot0ZXOYe4Oo5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=V3GRwrrn; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56UCb9Qh028090
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 12:50:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UpBcco7Rc/8Xs2/JgYINmRGquGxRapaUeGLl6KzOuKs=; b=V3GRwrrnj8w7/48q
	azJAclTeMzjNrYrQ9P0YKiEDCpRgnRrWrnSpeNDsSh0K35XiQuYffGkrA8+k163b
	kRVrP5UgjSrp1L2NIDslENYW0LMzoOJtgtJ0n/NlAe89Bo/jVVUgJ0bjfRUkN/v+
	cP5xeX6XKepNfCHheNgR2m4R45AcnLIbBVAII8X+Wa1Q2f8d7RJ1EPXsGYUkp5WN
	uG2XTGF+70C57/Yvum6qozE/5uF79oWCAPSUdkKGtZPghn5fS5BvHt80aRx8+v+m
	UDgvdYEIvNqwc2KcqtO42S9Nkiu+UCFjn2lnhTtWzTSbj7P49W6FKf9Pn7cuukFk
	XNVlbQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484nyu43ut-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 12:50:04 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-7073674bc2aso3371056d6.3
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 05:50:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753879803; x=1754484603;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UpBcco7Rc/8Xs2/JgYINmRGquGxRapaUeGLl6KzOuKs=;
        b=r4Gce7yJOnSx48jVxfYBo5w94oILS5pLEH58oCfOwNKk/THJaSAOotvQuYMepsdFpw
         OqESyRjgq6NQ+3lsBNVqU+WwGyz3ksDyd6fRopxKIMcFh6s4GXbOL7rd/uRi/7Q0g16y
         2Tlp16tqOhdaBPEJ7Jd2aYcKa8Lwkb2S/hISBXSO+t1gm4RhNV+w8MlqbjMKehcMnBIq
         J+T6tv9Eiltvn5SgD+IxfJRInfqSIPzTDe378iFUSVzTAIekMtl9JnqUkFUfrT8FvEa2
         4yzoYvCfr5o5Z0pSGESSbcuZVaD9yqdQvfry0imc0y4OCdKT974VEZWt7W5zGubUMJSP
         eMBQ==
X-Forwarded-Encrypted: i=1; AJvYcCVIS9qKchCqSrssmlhFFAJFZa18d2ZSck+IZFjhJtlmJ1/GAbWOWxFqBr7HBGgNOPOfnKgWWlDymPNb@vger.kernel.org
X-Gm-Message-State: AOJu0Yzb70e+HKyfcwfx/kTghcOVZXf63lFknWJM7EafVtZ6yo0AePGh
	l+EI7ukNpNiRoo0kfbCNiVHRskrtU3h8Raul7aHGwhdquOuTm/Hs67snJBM/DeRbmxJIE8uWMim
	B7iyBHcrQxY13KQYgzVwkuhFWSgLNpoprFDnrWHCYmtFbNs5VJBchXAWOsuCHwdYI
X-Gm-Gg: ASbGnctVz+5WEPV9N6khx2ZLPue8yTsWvKd8Vgjr4HGVrGGv6k4I8bdMlX9I1lS7EPY
	S6xWByc3ObH1NsijzkHbu7no+dU8Yqf8Yl7L/I2cko3gkQEUEK3yKFCG0yqboWWAWQorVGBiZxv
	aPzG+c/uaYmhOszGHCIkcWgZGkXWn/az1o+oNM5AETFq2PRzXPAF/vCs9goNBEgcTJQF17w2dQe
	FAvkZ07fI9rnwDhQTfOV+UfQA3UvgprvSvq/O79P4mpNhwK0OpIvvJRHYXxGBSyVo3Wm7cN8Jr6
	9Tp5aAe2sPSM1KgbCQRLsWupPp+PO9E39dkxOp+suCcynqV2JiAFp8EBU5po2tRXBI95pZeIL/p
	tWI94IdKSQGvmOxhq0A==
X-Received: by 2002:a05:620a:2546:b0:7e6:3c48:408e with SMTP id af79cd13be357-7e66eec65e9mr235046785a.0.1753879802922;
        Wed, 30 Jul 2025 05:50:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEwdAedMFfC/vSjWnLqys1XKVORwaWYuyYe8ZEXZWxtB9QHRD0jufBhueoA4BhBCTqEig+Glw==
X-Received: by 2002:a05:620a:2546:b0:7e6:3c48:408e with SMTP id af79cd13be357-7e66eec65e9mr235041485a.0.1753879802196;
        Wed, 30 Jul 2025 05:50:02 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af635aa42cfsm737413066b.103.2025.07.30.05.49.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Jul 2025 05:50:01 -0700 (PDT)
Message-ID: <b51305cd-0e4f-49f9-adc1-fbe83b539e98@oss.qualcomm.com>
Date: Wed, 30 Jul 2025 14:49:58 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/4] arm64: dts: qcom: ipq5424: Enable cpufreq
To: Varadarajan Narayanan <quic_varada@quicinc.com>, andersson@kernel.org,
        mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
        rafael@kernel.org, viresh.kumar@linaro.org, ilia.lin@kernel.org,
        djakov@kernel.org, quic_srichara@quicinc.com, quic_mdalam@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org
References: <20250730081316.547796-1-quic_varada@quicinc.com>
 <20250730081316.547796-5-quic_varada@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250730081316.547796-5-quic_varada@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: zVmvph1NyoOS6TWJ0GtcTMJdv1YJib_p
X-Proofpoint-ORIG-GUID: zVmvph1NyoOS6TWJ0GtcTMJdv1YJib_p
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzMwMDA5MSBTYWx0ZWRfXwoUxN1e7TE6A
 x3Fth9PGtX57HnraffCEex+5D39/KZydrqXMReFWm4rFlxt7usESl9N9hsaNlFfqc2JCryEQkd3
 2VK2D7C7SxMQW2zYaq0Nga/oMJwk0P/nnqrJmR5kAstIttKE5ZTr7ussFUGMNmOsIsbER2gZIte
 v2WY/+DCcSyxpl2g/TFNp2l8ML2p3AlMUOSHDeYS1Ff9PwUBQbgZHrl5MAhh68GQ0kBOVaUfXPr
 ZdstJBArulNAMJwRTWObKnbcA6jLKv8k5jJ659qb5GlOQX3tEbdOHaWkeH1amXITToiZPS4iIdb
 otCL2SXGUXDKI2KpQvTl7WD0JHbeM26FjT4pcQQH9FY2KBWUzd9Fbr43jbki5fWkecvupQIRD78
 fRrAqjVl11kxuUpmOprqzC0hkKxpHbcHnDCd+5qPQAHZFFBWsA2FSJntCbhHpRyqAffbc3Wn
X-Authority-Analysis: v=2.4 cv=CLoqXQrD c=1 sm=1 tr=0 ts=688a14fc cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=Ba9YZRSbcvaFTVxKLYEA:9
 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-30_04,2025-07-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 adultscore=0 suspectscore=0 mlxlogscore=829 spamscore=0
 priorityscore=1501 phishscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507300091

On 7/30/25 10:13 AM, Varadarajan Narayanan wrote:
> From: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> 
> Add the qfprom, cpu clocks, A53 PLL and cpu-opp-table required for
> CPU clock scaling.
> 
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> [ Added interconnect related entries, fix dt-bindings errors ]
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---

[...]

> +	cpu_opp_table: opp-table-cpu {
> +		compatible = "operating-points-v2-kryo-cpu";
> +		opp-shared;
> +		nvmem-cells = <&cpu_speed_bin>;
> +
> +		opp-1416000000 {

These rates seem quite high, are there no lower fstates for idling?

> +			opp-hz = /bits/ 64 <1416000000>;
> +			opp-microvolt = <1>;
> +			opp-supported-hw = <0x3>;
> +			clock-latency-ns = <200000>;
> +			opp-peak-kBps = <984000>;
> +		};
> +
> +		opp-1800000000 {
> +			opp-hz = /bits/ 64 <1800000000>;
> +			opp-microvolt = <2>;
> +			opp-supported-hw = <0x1>;
> +			clock-latency-ns = <200000>;
> +			opp-peak-kBps = <1272000>;
> +		};
> +	};
> +
>  	memory@80000000 {
>  		device_type = "memory";
>  		/* We expect the bootloader to fill in the size */
> @@ -388,6 +428,18 @@ system-cache-controller@800000 {
>  			interrupts = <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>;
>  		};
>  
> +		qfprom@a6000 {
> +			compatible = "qcom,ipq5424-qfprom", "qcom,qfprom";
> +			reg = <0x0 0x000a6000 0x0 0x1000>;

The block is a bit bigger

On IPQ platforms, can the OS blow fuses directly without TZ
interference?

> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +
> +			cpu_speed_bin: cpu-speed-bin@234 {
> +				reg = <0x234 0x1>;
> +				bits = <0 8>;
> +			};
> +		};
> +
>  		tlmm: pinctrl@1000000 {
>  			compatible = "qcom,ipq5424-tlmm";
>  			reg = <0 0x01000000 0 0x300000>;
> @@ -730,6 +782,15 @@ frame@f42d000 {
>  			};
>  		};
>  
> +		apss_clk: clock@fa80000 {
> +			compatible = "qcom,ipq5424-apss-clk";
> +			reg = <0x0 0x0fa80000 0x0 0x20000>;

Let's make it 0x30_000 to reserve the actual carved out reg space
> +			clocks = <&xo_board>, <&gcc GPLL0>;
> +			clock-names = "xo", "clk_ref";

1 per line would be perfect

Konrad

