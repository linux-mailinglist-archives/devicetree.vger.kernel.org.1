Return-Path: <devicetree+bounces-166642-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A1E6A87DEF
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 12:47:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7AE69188C60B
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 10:47:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82BBD277001;
	Mon, 14 Apr 2025 10:47:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VwHz/LfM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5061D276040
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 10:47:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744627662; cv=none; b=PLz89HPN9d3FeXOQfPjH2Y7sucWZfl4pGbG+z+CxF2QX0RRlyPk60RELVSr+ydt8tdVDvc3cRzygxkBhhbqzaR0u0bzqUuVDyjILciAjVwVcCkeOaH5w/aohExch49fmR0zQjskXdZrOla3Er+fhooqaweIUeo/38zvHYVAJw/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744627662; c=relaxed/simple;
	bh=wxuBbqGByqSECpl/rppsp33LJpWUnwZMAHdHED9K2W4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AZVExvyKRkrFshxSDtpnjfTbJ3atbOUVmGX3ndNCSxm7VNv953uXGaWdoKg5nA/vONBf0Ct1PRMk74muJ92SSDD6dx8XFvoe8g9DAJcVsZGagbr//MfRdR1ZX+hoEgzHr+aAAi3mh4nX3RKHN7keRK6sjhJ2fMQECCNx2wLmKOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VwHz/LfM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53E99qoG031444
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 10:47:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bM2RV+Suw/zbUWzXn09cRjN5HRnOqD2gtwnQ2MvP//E=; b=VwHz/LfMJr68b0g5
	D/uyNEG9msNUIWBa4XjaeNk3JLDyCqnHD/rpIJupzzOfAEga3PQz/Il2P0+dTrAu
	HmKniWCT/DtopJ4teirBhf5ohQ9s+qsxerQGXta3Z21zlGMC0NHgYWmzmhe2JySi
	krJuEyKtSnqR9LHAZTS7ZupRiwVDi5N26K22kWCzgWdzEqqTHyHB6ElXnxHZrNTL
	PkYOKag2gRTZgGfoWe/mhzivAOU5CO2hA6XET3xXeJc46lb3pYLam1zee/cwuTrP
	gF2u0sDpV/SZ7kJAz5B0jE1d3Og2XQ57vVAF0Lm6239i9DSHQrZNuQrSlMLuYyLc
	q37uKQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ygxjv5nv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 10:47:39 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6e8f3766737so9774656d6.1
        for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 03:47:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744627658; x=1745232458;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bM2RV+Suw/zbUWzXn09cRjN5HRnOqD2gtwnQ2MvP//E=;
        b=aS100dltaI2o+O5aFS4KysHtRmErHL6gdI7xy2SmePabDhBoHUjsHLwShIAjkWMw97
         HaOjBqID3l6p6C2+lP5EXN0GNogl4va5eMZGQptXFACUgU7OGb+w3bmN8J60VIll6aKo
         iG7WMpDajeGQz5jmHx+bagtXAFccvrGQTr0ReXqYYdTPac84ENoyVlxwCq0/AuwDyjDa
         6mYHq0TcwT0McaGNy7tHAs5apzweVTZW/7bi8ehxahxL1gmWBU/L/IdI2wTS6pzOjtKH
         tTg6Ku5RWkaGAznWEDbFJg1lqEdxEGojYScEzSK5ETPH1TeyAMT7Xw7kXwpG/Hfh5gmk
         k9QQ==
X-Forwarded-Encrypted: i=1; AJvYcCWFaLS1si7IAByoZ8GZwtdUmO0maUzyvGyNT5CDzKquSUfc49dfKz2L9+xnW4xjiM3sLDM7UlHVnjAk@vger.kernel.org
X-Gm-Message-State: AOJu0YydM1UhaO8FiaM6U/DztNGZFxOLle6efpJ6P9tG55Jc/TJ9XURL
	EPg4DXhS7NW+Yprn4ibf3ekD+zyFQidbyZ9idLZpkhWQXUUtAgtqIJ1LmW9VCA7mH3RB1QrZgJ0
	0lTqOqS7y6im2RqlBI6CyX+6nQPOmD82yxws9gWwg5yco1M2N43xRoTa0Sx8q
X-Gm-Gg: ASbGncvtv3jU0qf2lDM43VQWIAwCWHvvfunnsCKKifeNINefY/e3P75e1cklifIZZJS
	8yBhS034fiHkydFypABRtYTXtgpdE8tsC8IiAPszI4gfMytNNMaCFtok8y2iyMKTLlha3Dc8aal
	B+PriEkQRL4gscY9khQdyhBnMclOefgA/zjrNsOoYpOK0ZRtyBWVaqHEp6z/xGptMBmgm/IZCrN
	7j30luTsIoqK7z6s0UatcEKlu28qDp7VvVEu2RcY7L149mLyieJlCtaD1nv1z/EfqD8q1SPkTAt
	6ON7UETIbwdRdfc/fnT9lOL6zTIyFxXBtHvvkFKrD1uIGDGkBEbFog89IkTjqroyQA==
X-Received: by 2002:a05:6214:c2f:b0:6e8:fbaf:fad8 with SMTP id 6a1803df08f44-6f230d993ccmr60971526d6.5.1744627657913;
        Mon, 14 Apr 2025 03:47:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFu72AAkR/AXWzXk/CwAV6q6at62CYqDKg85ggMLzHIgAENoMhkZ9LxzZcd/K/JgZzp/29Hdg==
X-Received: by 2002:a05:6214:c2f:b0:6e8:fbaf:fad8 with SMTP id 6a1803df08f44-6f230d993ccmr60971346d6.5.1744627657290;
        Mon, 14 Apr 2025 03:47:37 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1bea588sm899736466b.67.2025.04.14.03.47.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Apr 2025 03:47:36 -0700 (PDT)
Message-ID: <218c9580-de47-41a6-a3ae-8b7477fafe30@oss.qualcomm.com>
Date: Mon, 14 Apr 2025 12:47:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 1/2] arm64: dts: qcom: ipq5424: Add PCIe PHYs and
 controller nodes
To: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: quic_varada@quicinc.com, quic_srichara@quicinc.com
References: <20250402102723.219960-1-quic_mmanikan@quicinc.com>
 <20250402102723.219960-2-quic_mmanikan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250402102723.219960-2-quic_mmanikan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=WecMa1hX c=1 sm=1 tr=0 ts=67fce7cb cx=c_pps a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=xjS2aVtHvALSJzGC0oAA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: L7Rb4MCqEWUrhkV4nTunYXtNpgkj2yxf
X-Proofpoint-ORIG-GUID: L7Rb4MCqEWUrhkV4nTunYXtNpgkj2yxf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-14_03,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 suspectscore=0
 adultscore=0 clxscore=1015 lowpriorityscore=0 phishscore=0 mlxscore=0
 impostorscore=0 mlxlogscore=999 spamscore=0 malwarescore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504140078

On 4/2/25 12:27 PM, Manikanta Mylavarapu wrote:
> Add PCIe0, PCIe1, PCIe2, PCIe3 (and corresponding PHY) devices
> found on IPQ5424 platform. The PCIe0 & PCIe1 are 1-lane Gen3
> host whereas PCIe2 & PCIe3 are 2-lane Gen3 host.
> 
> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> ---

[...]

> +		pcie0_phy: phy@84000 {
> +			compatible = "qcom,ipq5424-qmp-gen3x1-pcie-phy",
> +				     "qcom,ipq9574-qmp-gen3x1-pcie-phy";
> +			reg = <0x0 0x00084000 0x0 0x2000>;

This is 0x1000-wide

> +			clocks = <&gcc GCC_PCIE0_AUX_CLK>,
> +				 <&gcc GCC_PCIE0_AHB_CLK>,
> +				 <&gcc GCC_PCIE0_PIPE_CLK>;
> +			clock-names = "aux",
> +				      "cfg_ahb",
> +				      "pipe";
> +
> +			assigned-clocks = <&gcc GCC_PCIE0_AUX_CLK>;
> +			assigned-clock-rates = <20000000>;
> +
> +			resets = <&gcc GCC_PCIE0_PHY_BCR>,
> +				 <&gcc GCC_PCIE0PHY_PHY_BCR>;
> +			reset-names = "phy",
> +				      "common";
> +
> +			#clock-cells = <0>;
> +			clock-output-names = "gcc_pcie0_pipe_clk_src";
> +
> +			#phy-cells = <0>;
> +			status = "disabled";
> +		};
> +
> +		pcie1_phy: phy@8c000 {
> +			compatible = "qcom,ipq5424-qmp-gen3x1-pcie-phy",
> +				     "qcom,ipq9574-qmp-gen3x1-pcie-phy";
> +			reg = <0x0 0x0008c000 0x0 0x2000>;

So is this

> +			clocks = <&gcc GCC_PCIE1_AUX_CLK>,
> +				 <&gcc GCC_PCIE1_AHB_CLK>,
> +				 <&gcc GCC_PCIE1_PIPE_CLK>;
> +			clock-names = "aux",
> +				      "cfg_ahb",
> +				      "pipe";
> +
> +			assigned-clocks = <&gcc GCC_PCIE1_AUX_CLK>;
> +			assigned-clock-rates = <20000000>;
> +
> +			resets = <&gcc GCC_PCIE1_PHY_BCR>,
> +				 <&gcc GCC_PCIE1PHY_PHY_BCR>;
> +			reset-names = "phy",
> +				      "common";
> +
> +			#clock-cells = <0>;
> +			clock-output-names = "gcc_pcie1_pipe_clk_src";
> +
> +			#phy-cells = <0>;
> +			status = "disabled";
> +		};


> +		pcie3: pcie@40000000 {
> +			compatible = "qcom,pcie-ipq5424", "qcom,pcie-ipq9574";
> +			reg = <0x0 0x40000000 0x0 0xf1c>,
> +			      <0x0 0x40000f20 0x0 0xa8>,
> +			      <0x0 0x40001000 0x0 0x1000>,
> +			      <0x0 0x000f8000 0x0 0x3000>,
> +			      <0x0 0x40100000 0x0 0x1000>,
> +			      <0x0 0x000fe000 0x0 0x1000>;
> +			reg-names = "dbi",
> +				    "elbi",
> +				    "atu",
> +				    "parf",
> +				    "config",
> +				    "mhi";
> +			device_type = "pci";
> +			linux,pci-domain = <3>;
> +			num-lanes = <2>;
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +
> +			ranges = <0x01000000 0x0 0x00000000 0x0 0x40200000 0x0 0x00100000>,
> +				 <0x02000000 0x0 0x40300000 0x0 0x40300000 0x0 0x0fd00000>;

I think the BAR spaces on all these hosts are only 32 MiB long

Konrad

