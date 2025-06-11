Return-Path: <devicetree+bounces-184903-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ABF9AD59B9
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 17:09:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 62748174312
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 15:08:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6838B1E1DE5;
	Wed, 11 Jun 2025 15:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ku62Iyur"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336001A8419
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 15:06:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749654394; cv=none; b=ZZJ2i4Bc4MelH1tHKhEVhKMKHo1A3goLO75/R83Vwwjj+axlQU8VtEjHQtDrsH6u5Qzw6cdtv8QawBMcLZUKst2THLEDNXX6B3JQ7/Mg9LVFKvQsWTBQ/gpbF1smECYQ7Spr9bX1dXFcaNAqmrQDlzx1iDpSLxsVrU822bttFMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749654394; c=relaxed/simple;
	bh=ajchxbU7+AMklteL9pZzSBbNZx9h7w3GcNr0Mwics1U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eODO4FwS2txv8zmZWsp1LD7bOlPAV5YbeBj5G7ugkwEHkRqiSwnnE4JDidZFcXXScak67KojmYpHvAlwoQ+kh0KWBDuah9QUtbkXSc1qHfUobYGhcilTN2lVr9RuCKTyxgSwYHqyxV5LRXtAwTwFvr4/mzeeV5H6uykOLF8TTJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ku62Iyur; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55B9DSwh019928
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 15:06:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	77fKbdkYmtPlwXrxnM32o82p7ovrXrSQy4ozw1UOaUo=; b=ku62IyurvRzF4bk4
	miTbSYf251eZWFjTfr6u4uUEDRIOVhUQFH131bvCOhz1uizHvyiGNOTU7ynprf+J
	kB0XZbCw6RrLi5v4IKpF/bZdpbMBVPNr5s2WvBa0q+IGaASUwiiVEWW7IewbJp83
	8EU3/2PTb6mKCS5Ox8dvEnI2EUaxsfGflGZeKcmO5kMR+ZgOIr2VkNEgYQZqYAui
	+C8MfH8+btFfrKcV1sXLxVplJGc1Kokb02gIB70OniLMyh11sezM9VLFpDb4IcEO
	BwZtcJcHRu4aZpXqT5auropA6UsThPHsU7KQsapqdhB7JX+h06NWKIFT+g7nEeHs
	7I1Sxw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 474eqcnc9q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 15:06:31 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7d0976a24ceso21156685a.2
        for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 08:06:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749654390; x=1750259190;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=77fKbdkYmtPlwXrxnM32o82p7ovrXrSQy4ozw1UOaUo=;
        b=P+lWVkKKZFVGYNK2/fMlirhary9UN217NMaMQVv8NPVbWC11ucsQx/IHX2yO0g6lSh
         zBWZe6vhqzLk9SX8U2eWUtIx/wvOtc4UMythQ51KJq1lWYAR+eBZ8uQfTTgH95MlPUwz
         fdKfMk9R+1IIfWYmm9uvm9XM6fHx3jc3MuQTfNOXhL9KhWHaLBbOmzGuUXx9/sbxmVOJ
         WTvCokt6VcSb6J9TF0anC/LmcKfSxoHShs39CCzVjfblpYVsYvcPqt4lssre7BUotpTM
         kGx2BN1BX5guc2Ku/NaWWvBtSg/eRoJY8MUIhHCxP/SGkiUmtaHX6oXMts6Nkvdp728R
         a31g==
X-Forwarded-Encrypted: i=1; AJvYcCXPgNsgOfpgr2DKc5l0gXSgit3r7HYhoxUKe5WDr3ezICYMCWdb1Pox3eJyEY8B31R3hf1U/MT2yOQ+@vger.kernel.org
X-Gm-Message-State: AOJu0YybIXctvGX+Whdp5m4k/dn03M+NRFuf63bASaBYnHJ75yWlI/pL
	ddIR4gGamG2BU7moJsGp02V0K+dtrDmSUMzFAULKltgErloSde8dWbHIpNaVraoCT/+rrWOYPD7
	/QVBb7EMM9m5OVWc+eygt56JIvN28UTYkNLJtSehiM9r4BP2UpkDXjsJ8yD38whjT
X-Gm-Gg: ASbGncsL8hE8aHcTQMV+anvl8JzNerkzTzx7BOtIC6hVIPi0zhUFAL2PvPx7AI4SPXg
	Omk3+29nE+3laJ80BNObYz1j1S9wbWkxC2CSN4lt/FNE6+A2SSw8Ww048mwiEeOVKKh9xnGQXKw
	ZvpbnmNE6gP1ldxEi7DVdmyD5JvZOZQJjlBcMWH5Gt1M/aUBenX3GvnFc17bn8u0KpFBsmOdqLc
	S7VjZ1XJiCvhCl3dc6G04GSATOqAkd1qnEq7F+3bNtPA4ucmVAu64hodrEyTTTa83cic9A5pIxX
	tl6qt2oqf0Kc4NzELl8iyLZk8dMJyf1e8RcVfwZH7MGoi9HyCh1arDr7+YrGJ7fMwRyiBzA/kyy
	0DTA=
X-Received: by 2002:a05:620a:2a04:b0:7d2:89c2:eddb with SMTP id af79cd13be357-7d3a87bfb10mr208042885a.2.1749654389692;
        Wed, 11 Jun 2025 08:06:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGFQcyeTIefOmtTUXQ/DK1/6HF+P0px0MJoBSIH1JUCYT215zZQycMHgB/rDMBR3Qjc3+Rx8g==
X-Received: by 2002:a05:620a:2a04:b0:7d2:89c2:eddb with SMTP id af79cd13be357-7d3a87bfb10mr208041085a.2.1749654389233;
        Wed, 11 Jun 2025 08:06:29 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ade31cc25b7sm832539666b.66.2025.06.11.08.06.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Jun 2025 08:06:27 -0700 (PDT)
Message-ID: <9d966b32-d5ce-4262-b99e-900085648230@oss.qualcomm.com>
Date: Wed, 11 Jun 2025 17:06:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v12 2/2] arm64: dts: qcom: ipq5018: Add tsens node
To: george.moussalem@outlook.com, Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Sricharan Ramabadhran <quic_srichara@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <lumag@kernel.org>
References: <20250611-ipq5018-tsens-v12-0-a61374a5517d@outlook.com>
 <20250611-ipq5018-tsens-v12-2-a61374a5517d@outlook.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250611-ipq5018-tsens-v12-2-a61374a5517d@outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjExMDEyNiBTYWx0ZWRfX07welq1+eR+C
 CeWJxx/3Fs7SuARBP+p6dY9t+ao4iTNJp0Y5jCqFu5x7WcEql4bqBi99X9P+4Bmxl6mxC+SAul8
 6Vz6HJ4PziyQCDyMU2sEeCFPPERTUVqSFXMDQByAJJMPpBpZT3UPeeHpwZpKazSlPLtoo71/Cax
 hT6ulHwjTMdYGss7VS28Yn7SQC4CSpstazEgAZIyN78GH3gtD3eOsoAKMxtBsaU9OKoLltKWS1c
 nQ0uD+j7bgq/hxQjpJtmwDTB0D9BV0mfsxf8a3EkOHItzpThd7lfP6PP3byiRPSmW0ff9/Z6KYy
 3Zvpx4OVrrnTj42N3RjrLywySBptCq9sHa/vI/fiOrixKQYmapbV9JtShKLIthDICSfWPFhTN0y
 zSGYakmSG5/aePNigMNotcyttD11naObSJ5bb4U4paMZ0KxIRiZip/nwdMWnbQshgwF/jTgM
X-Authority-Analysis: v=2.4 cv=Q7TS452a c=1 sm=1 tr=0 ts=68499b77 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8
 a=UqCG9HQmAAAA:8 a=TIMhQzKtEeIAjNMpRogA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: hYzjR5l6eingzeV71VKyQd8zDbkrzBYv
X-Proofpoint-ORIG-GUID: hYzjR5l6eingzeV71VKyQd8zDbkrzBYv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-11_05,2025-06-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 mlxscore=0 spamscore=0 mlxlogscore=999
 bulkscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0 impostorscore=0
 priorityscore=1501 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506110126

On 6/11/25 11:33 AM, George Moussalem via B4 Relay wrote:
> From: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> 
> IPQ5018 has tsens V1.0 IP with 5 sensors, though 4 are in use.
> There is no RPM, so tsens has to be manually enabled. Adding the tsens
> and nvmem nodes and adding 4 thermal sensors (zones). The critical trip
> temperature is set to 120'C with an action to reboot.
> 
> In addition, adding a cooling device to the CPU thermal zone which uses
> CPU frequency scaling.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---

[...]

> +		cpu-thermal {
> +			polling-delay-passive = <0>;

0 is also the default value for polling-delay-passive


> +			thermal-sensors = <&tsens 2>;
> +
> +			trips {
> +				cpu-critical {
> +					temperature = <120000>;
> +					hysteresis = <2>;
> +					type = "critical";
> +				};
> +
> +				cpu_alert: cpu-passive {
> +					temperature = <100000>;
> +					hysteresis = <2>;

that's 2 milicelcius, consider x1000

Konrad


