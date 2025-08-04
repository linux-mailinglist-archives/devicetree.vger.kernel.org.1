Return-Path: <devicetree+bounces-201646-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BCC3B1A178
	for <lists+devicetree@lfdr.de>; Mon,  4 Aug 2025 14:33:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8308817C9B6
	for <lists+devicetree@lfdr.de>; Mon,  4 Aug 2025 12:33:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9C9025BEE1;
	Mon,  4 Aug 2025 12:33:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WqxekJlN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6921825B1D2
	for <devicetree@vger.kernel.org>; Mon,  4 Aug 2025 12:33:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754310800; cv=none; b=f9JfgIEC/Sku04tNOa2mJc62ejY49h0SuOgiXrbzsWNrz4zDDDNab31DpMCUxCnesNaLglhc1KNtj36WGrACWlf3qm3l37BqX/B/QBrbRSUoZh8POth/j/7AIaVgmc7+F46cxKnee1j8D00BZbZyL03iXf0T0EXSw7ZUgGtzqOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754310800; c=relaxed/simple;
	bh=ANVmw6AeR0GHHCK/HKaHO5w+extSI4H+i3GF9Iz3jdY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RmOE+87QDvRGpDkSRw+RMfi4//N2IisgmTV9ZjBbAKhfsrD8fzi60gSXwxXecLWnxoP5qTBvAHPbmMcvyFYK2Hl6/MBlXujiqjlWDAWDQD98XvmxjI7PXAlm92rnQ0G4qlZzTLK+om83u0jbL8LrcyBFnE8tUA3zic/4nRXDh+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WqxekJlN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 574CSCLK010254
	for <devicetree@vger.kernel.org>; Mon, 4 Aug 2025 12:33:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	46HAWgvv2MxgQgdpENwkPzAKGo1621//AEpZFMkCwFU=; b=WqxekJlNtED++Z3q
	iLHSuYwBGbF7pe7KzYohu6uNqSSJYYbYzafcZWS9UQXLPbpqIRg/Tc7xsa26i3zr
	MArzxNX5otzPpYwrdZu0CvGzPCra9Nwghji3mVvVBlfxXtXjL+t55zNZT2TrVavr
	7hkdUuvOfjDPaml7shA/N1BaOvBzIfFD0zB9uKVUHHM37RuJmvR13MOFzPhnGYAT
	Nhkj8XB1hA09ET1Cs+55oeJA6o01LO0mgWTFqIjSxwbp6wqKOd0N9x11cNoRTrti
	X/26e3/xsywbzRjx0lUTi51IKv80JSGs9d8/j+7LSu1NLeO0OeDFzQdsUEcaD6Tq
	oRkp1w==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48avvu80c2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 04 Aug 2025 12:33:18 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7e800094c82so9153285a.2
        for <devicetree@vger.kernel.org>; Mon, 04 Aug 2025 05:33:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754310797; x=1754915597;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=46HAWgvv2MxgQgdpENwkPzAKGo1621//AEpZFMkCwFU=;
        b=Nyh5pSprKkH5WJSlKU7FC2afa4MguNpwHWGZbcjXgwxTC1xgPddwQG4kz5vJI9K+td
         ArWcygMn8Ud4URCf+NUDzPtOI8jSqVK8290k4BZacGgz3vU3OikfKFCxmagbs+f4DrPQ
         XDdoQnj7UX5F04nHVmmsjrDRzuEPDh4OKoM8VCJKbZFh84W4YMCv/22fPJrynkdTyQXv
         LYw6OUEQx790mZ4P1+fDWhyUgseosDns3nmCMz9leiPYmu0+4uMl5eE9PJKcCNVJiJye
         rcf6AcSFvb3spysdGNELmtZTRSpW8iSJ1PQdTapl/PzmZTnJUSmZzzyE+L6KcBIq95g2
         PKoQ==
X-Forwarded-Encrypted: i=1; AJvYcCW9arlDQHPCWXmddhcyzXr+W5KoTGDjt5JRkiZphp8m1vHJAuBbfZ5HIbZnDPCcttNasc4CYVr/d5hh@vger.kernel.org
X-Gm-Message-State: AOJu0YwvB2CBYv6pa89PZzntn6mP3uJt8soMfIrmphV+VwDg32FuzTMB
	g+74O2+1V0bgTZhQiIwcLIirONKC9yhxkeoh+dWAROAXBzsLbPyUcUKT7msIyXdxgf4duYqwmGS
	BXaB/f1sBUdNmgivrVE29VGLDmqOjlhfDW8SVaGmeaAdqJ4bT7gjHLMU0clz3kGdCwg5MCHSA
X-Gm-Gg: ASbGncuVFYQb51Rz5pETT+NLXpiw7VazyoXxGQt+Os46zes4TJPwZiUJJHVCxXcOvKg
	nZyLt5toDbR+VHPPooQierYDIPEjeOTfnLQibVuKz4MQK4Rf/PF0yqXd4bycPcgrxrWYfue9FqL
	hM6y9yRB2zFxmeNLGmHCA+q9tSzOmIO58+M/5jL0dM/sKLEtDlDgHNv4mjy9hoXVtdegl6mVIC7
	/1CMNgTJ8vTr6uZppnOibQoxyyYYx6U4EPJAHogJtdgLnAGn3MmGTB4XS1AUsFvpxdoif3XCnVK
	rh0/T9wDPPuLRoYLtRgWR5V/cjRTVzXMJUgXzlsOqk+v9dYutemF20Nwcd90ZJ/w3H48tovi6kR
	0bsm2mF2xRcYtpxugyA==
X-Received: by 2002:a05:620a:6087:b0:7e6:9e1a:1d with SMTP id af79cd13be357-7e69e1a0795mr468468185a.0.1754310796939;
        Mon, 04 Aug 2025 05:33:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEIA4r05fZXfrH3ID5bH6u1l2Cc6ps0sG9WuleJWFvPFQHdK+8Dza/BZE8ttrEeY9KjyY/9Qg==
X-Received: by 2002:a05:620a:6087:b0:7e6:9e1a:1d with SMTP id af79cd13be357-7e69e1a0795mr468464085a.0.1754310796438;
        Mon, 04 Aug 2025 05:33:16 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af919e96050sm731035466b.0.2025.08.04.05.33.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Aug 2025 05:33:15 -0700 (PDT)
Message-ID: <4890c832-3b78-4294-aaba-b62735f7934e@oss.qualcomm.com>
Date: Mon, 4 Aug 2025 14:33:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/4] arm64: dts: qcom: ipq5424: Enable cpufreq
To: Varadarajan Narayanan <quic_varada@quicinc.com>, andersson@kernel.org,
        mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
        rafael@kernel.org, viresh.kumar@linaro.org, ilia.lin@kernel.org,
        djakov@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
Cc: Sricharan Ramabadhran <quic_srichara@quicinc.com>
References: <20250804112041.845135-1-quic_varada@quicinc.com>
 <20250804112041.845135-5-quic_varada@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250804112041.845135-5-quic_varada@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA0MDA2OCBTYWx0ZWRfX6gXpsmXmqEoj
 VnbMLxI7GzNDTOtDKBXnvspq7uADeGb3Gyi/9wE7EHnHJs3M4juBUGSdQLdxjbMmljYmwhbV8zq
 YPUEJVoHWCAQM/xsJKzGAD9I4WCgUeilnOYQctkzdSEUj7gIl1L4HnmnhWpCpKmwEEwAl6VVZTc
 nWnjpRv9zvraSnxQJrajAy8Xs9sstytK72UpN8el01R1pJ+Qvwk6i2hHHDlAJO2ACfZZ5MxlCYP
 8qBL7JUpUwckICbBNI0PMlCaqrJ1nhGFUFVnHeLreV+uNolXRy90/03mDvXBD1t7RaUluHsIiSL
 WNBHPQJnWQpCgNI5zgV6FtXtf0ICvcn1sKRniiW9stejuVfh3U2YzDBm4mVTLit4gBPVLaxJz2T
 JbodqUE5LwMOpCBpxXM1kmZ7y+IoTyj+7eAYg4GLxJTfhdB5prz2p6GDRMuqaLdrZ8cbXP4K
X-Proofpoint-GUID: sB4wt4EUp_kP8QHyyKwMMB-WcKvbt3pl
X-Authority-Analysis: v=2.4 cv=OYKYDgTY c=1 sm=1 tr=0 ts=6890a88e cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=vuI4R3Do2uEHNfh2jzQA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: sB4wt4EUp_kP8QHyyKwMMB-WcKvbt3pl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-04_05,2025-08-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 impostorscore=0 phishscore=0 spamscore=0
 priorityscore=1501 mlxlogscore=999 malwarescore=0 adultscore=0 suspectscore=0
 clxscore=1015 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2508040068

On 8/4/25 1:20 PM, Varadarajan Narayanan wrote:
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
> +		opp-816000000 {
> +			opp-hz = /bits/ 64 <816000000>;
> +			opp-microvolt = <1>;

I just noticed this.. I don't think we have CPUs this efficient just yet

Do we know some real values for these?

Konrad

