Return-Path: <devicetree+bounces-199088-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 334ECB0F418
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 15:34:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0F9B0964EED
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 13:33:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDBE82E889F;
	Wed, 23 Jul 2025 13:34:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QQUR6D7s"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE142E7F19
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 13:34:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753277644; cv=none; b=M+suQ6G1HOdtv42GoXzODgRB4Apa8xI90vGnB3mG/61X6wqOIcBERc4xQfPJZ5B+ZVn1OwFI4IRIbLa8ATpbu+jsW7khdc1qOAk89iFW5D4xUUCN5DN+F2/pVlV4wh9a/02IIMg+y0O1zF2PstSk/V0LiMXXmnHNTgUvw12itHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753277644; c=relaxed/simple;
	bh=I/HwupANQZNrDN72YfoYISTR/jnhtFvcCce7OTyzEPw=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=D0lIGOPeL8HGBZMxZslG9LbvkAZS0wVhOuoDNNP5zsCPZcFApbC8nV1CBfPi1IFgE7PXwQl7Tl9lDE1+DJnwZrh0NFlf3VlZrDgMxw+V4A5mo4kBrJalKL8aOQocaMQv68URdyX6TQnk7EM9zXujMoyXq7N88HJ+ROJgdygEN+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QQUR6D7s; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56N9Z0H1024777
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 13:34:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cErycuEc1BPG/yLEfc2IRSm6016iTOA8t+hzUspH65U=; b=QQUR6D7sbLdLbO7d
	yk0ql2PNHiYYPDXcKRtlvJXdUeyMAX3dfjIr6QyFopjtEXCHWPxIDnXR5/PG3mPi
	5Se8D9MZ4f6/CRj8oe2kwsJCm2aqBIzXcdwcc2Xxyyc78f+1DHRFfmKJvE+uBHAG
	4gSa6iBRSdidOG3jn8QLG6w6DtK9dRGg7Ey92LLo1V5kwUnOgdSXDVRzGU3UL/cJ
	PpaVEhWllGgwv7d5V0tJLBkuv6UIDh2k3QBC0bM+1i5ZK2LYp35khqrADTVs24w4
	ules2YRfLEqpH4phg8zWziSpbgKWdnXSCnqmlD9x2HWepMHdeAkbMiFDOQX7T/Me
	kJNbjQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48044dn45j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 13:34:02 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6facbe71504so10139966d6.2
        for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 06:34:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753277641; x=1753882441;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cErycuEc1BPG/yLEfc2IRSm6016iTOA8t+hzUspH65U=;
        b=APsi5ePNDDcjgIQq8/J6rJ0A16vu+5B+vlSh2rpjyuCsxUNTz9wn5DjHE+sFALKtKy
         ufUjVvF7y4zij5SkFnyYsoWguAJocvnKnJpXQVYDcVhMrjd4kRB4690SnrQpCHDmkMDt
         8Y+CF3DP1LpruVys/kbP4Y7Urq7cFf+Dviqtti2Fkh0ap1Ur7q0xBXhzFqhWblHsmBJK
         YZzOMbU5dOAS2XfrEJG6wOLrIyY0JgN7POzNMpMdOQFV7iFwNpplrZeWe0osol3KJfal
         ane1QXiVSmjh4Ne2k4d7nfRbH54Gw6YulouFPSQfSOhUwNooLK0ggmV07ZFZgJUc31iV
         M3Kg==
X-Forwarded-Encrypted: i=1; AJvYcCVflT9Ccplknx0doNyp7AQiNmBf1p/lPEKNPqC+wcJcFc7a8uFYAiACO9q9nG16XS6t/cyEdBWarz2o@vger.kernel.org
X-Gm-Message-State: AOJu0YxCxk5V4hArU+aGA5mTdL0mA7H6pkw5f7jr9UhpJnWNEfSKqwnR
	bNXDaJSK85T9I3QbtSLZc7BOfUpgIDIC4kj4wclgiq7AKULv5mtsyAK0qyXTliLstRWhTpwRXa+
	tyCW/iaEDJQNSO/Nc6l/l6fHdYlwekaE1B9gxF1EyLvp8JX46JbWwICdYVE9a1B+E
X-Gm-Gg: ASbGncvhA40UZiJayl/4OQ6rR0khgkLWark+g6ba3O3GLwOL5OIZayra1F/WZo+aga4
	IB+7ki0DQR6qOyVN9+zt5F2WsnqFnfg3Z+RgoBVPWXPWrIkt+ZCs3QEBdwPaYB2mjP+/c/UMCRz
	BnuJqtFvyFUXW7Jq/0tuZE+Rf+TheQ/TXQAPHTxtjRxX0ZUV4vtYrLe+LQtPQHz+yeCtdQbKEJi
	bcwI7XJJGWLiAUqVYBmODt+GOof1ax8Qsb5yStPFbU1JfJIzYgl8COfctewhSeP36Ook5Jec5re
	lOnZo7UWkiLUbM/FoUednsh8QXVMciAqItQGrMAYKgXA+5fPCIXygPdFSTstdXzVI3MgzmUefdn
	qnbEj+mYxs8ztWc3CDg==
X-Received: by 2002:a05:620a:48e:b0:7e3:3c61:564a with SMTP id af79cd13be357-7e62a1da96amr124749685a.13.1753277641285;
        Wed, 23 Jul 2025 06:34:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGzYMNLS1GUA8u7+fQK+6rKxw7iDDU93TXDtPnP5+2dDFuZKetwr7kiUpYLhhOQk9KpRqg1Eg==
X-Received: by 2002:a05:620a:48e:b0:7e3:3c61:564a with SMTP id af79cd13be357-7e62a1da96amr124746785a.13.1753277640829;
        Wed, 23 Jul 2025 06:34:00 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af244a659a4sm236451266b.22.2025.07.23.06.33.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Jul 2025 06:34:00 -0700 (PDT)
Message-ID: <277971b8-09d5-444d-b0eb-1e658b68029f@oss.qualcomm.com>
Date: Wed, 23 Jul 2025 15:33:57 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: ipq5424: Enable cpufreq
To: Varadarajan Narayanan <quic_varada@quicinc.com>, andersson@kernel.org,
        mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
        rafael@kernel.org, viresh.kumar@linaro.org, ilia.lin@kernel.org,
        djakov@kernel.org, quic_srichara@quicinc.com, quic_mdalam@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org
References: <20250723110815.2865403-1-quic_varada@quicinc.com>
 <20250723110815.2865403-5-quic_varada@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250723110815.2865403-5-quic_varada@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=BJ6zrEQG c=1 sm=1 tr=0 ts=6880e4ca cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=R0CBZZInQid6lz33ABQA:9
 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: wkhNYwCTw-rV6l-H2kEEQENI92iyInzg
X-Proofpoint-ORIG-GUID: wkhNYwCTw-rV6l-H2kEEQENI92iyInzg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIzMDExNiBTYWx0ZWRfX8DaI8IkfYj6y
 DgLufae3IlbzBW7c/ELn1SOxGJUWIsFtFTYOYVwpzUsj/Fsw5Sknt1TlfMxesyLO9xY4oGzWyFJ
 z4gOCjo/ReXHDjrTHXT7zH/sjdheep3QXJSBrLuQmnOZ6qcN2RVaHw5o1qBmKQMj4+iOENIUv6C
 sPCm9fCend7Mp+7br5DKoZd1wFIvRZjnEl7av2RlAhZwih7naM4E0b3nCoxXYRW+Kkw1dhl9l8E
 jGZSfgVYlL5O48FH+jFzpGO+gye3mDqe1gq0PPC0M29Z50jwySuDc/XDXZnhSb+TlITxdtdSZlf
 drGj80UnKT+oNxrTqJcdLjVLEaRzh5zjjl7thVxu50nYJeA7ckoYCBLmNIdldOy+jtRVus2x2fe
 +4QbTE8AvQkIckVRipaFDki0c8y0EYQY/HV8f4IorgcXrCy9ZKEUwPctIrPg8Ur1NkmFSuqr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-23_02,2025-07-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 spamscore=0
 mlxlogscore=999 suspectscore=0 impostorscore=0 phishscore=0 adultscore=0
 mlxscore=0 malwarescore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507230116

On 7/23/25 1:08 PM, Varadarajan Narayanan wrote:
> From: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> 
> Add the qfprom, cpu clocks, A53 PLL and cpu-opp-table required for
> CPU clock scaling.
> 
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> [ Added interconnect related entries, fix dt-bindings errors ]
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v2: Add 'interconnects' to cpu nodes
>     Add 'opp-peak-kBps' to opp table
>     Add '#interconnect-cells' to apss_clk
>     Remove unnecessary comment
>     Fix dt-binding-errors in qfprom node
> ---
>  arch/arm64/boot/dts/qcom/ipq5424.dtsi | 65 +++++++++++++++++++++++++++
>  1 file changed, 65 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5424.dtsi b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
> index 2eea8a078595..39d394f49789 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5424.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
> @@ -7,6 +7,7 @@
>   */
>  
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/clock/qcom,apss-ipq.h>
>  #include <dt-bindings/clock/qcom,ipq5424-cmn-pll.h>
>  #include <dt-bindings/clock/qcom,ipq5424-gcc.h>
>  #include <dt-bindings/reset/qcom,ipq5424-gcc.h>
> @@ -52,6 +53,12 @@ cpu0: cpu@0 {
>  			reg = <0x0>;
>  			enable-method = "psci";
>  			next-level-cache = <&l2_0>;
> +			clocks = <&apss_clk APSS_SILVER_CORE_CLK>,
> +				 <&apss_clk L3_CORE_CLK>;

You exposed the latter clock through the interconnect framework. Now,
every set_rate/set_bw call will be fighting for whoever completes first.

Konrad

