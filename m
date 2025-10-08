Return-Path: <devicetree+bounces-224528-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 690C8BC4CA2
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 14:30:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 45C644EE41F
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 12:30:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CEE9284690;
	Wed,  8 Oct 2025 12:30:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oI4DYbkW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE63927E1AC
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 12:30:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759926624; cv=none; b=uqCM9j4TORL+xsuFN/mSj5+GsXC7kJb82ePF3m8cGWuEx+Vg6HNMelfjduYtrRVPJNtkIPOrLpPITyibG5JQt45OP0fWP3kucxjxIqxOO2x9I+hQ3Mie2jYKEeJKkKcTN/LK8RaWYrzzu40GcGoZuGeO/69uueQ+gqUNmLayiQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759926624; c=relaxed/simple;
	bh=3NutFA/lGn0R2mNE8a1/k3ypM4Mn0sub0aw8bFRL2HY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AAi/5bOtOY0XyHCAzLJ78qn2JnZxrWkNb7/XQuMmgHQB7snsm4fVBkJ+aHp7L+Hbxv+3yDhYBPYiDOdoG+zKecw0DnkX7wU/BSxQpZlhuxQ6ptPKpKmNUTai3G0IwCKpzbqFyzxnfavcqBIDGaq9VRptHcdZDYqBpHAtJCKRYTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oI4DYbkW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59890iHE014448
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 12:30:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vYwOmmq6eh7c1BlgA/tZn39no0yivZDY9RCiDcAFj/w=; b=oI4DYbkWuaD6yH94
	nOZtDEflYZ5xYXXjFMhsljICpLt/7npA7QQoc66K/oRpaHpkYa8OgviwiXofRYBp
	08atq97uw49H8M7CEsDfpErHmHNcgQHOc6/fzjC6Np34FrxGo/zF0s2KzbEM+hhs
	w5ar8HUJZL9mucZ4KWnkdchApE9TCJLOh2ppNLO+J3uG46c5BeaqgGa5Nv9BQDY/
	KFZO0WRkztMRsQ1FJ+y6YcH/x+wxzSrQxU/S965lejl646L5GzQI1xjlMt1WXGla
	y9nGquhxWkbQECj089H/pYvNAKPwF2hdgbX6KAfuypGmczb025yeOJODkshfg14W
	xPaW3A==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49mgd0p67d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 12:30:21 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-873eac0465eso27245256d6.3
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 05:30:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759926616; x=1760531416;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vYwOmmq6eh7c1BlgA/tZn39no0yivZDY9RCiDcAFj/w=;
        b=BUIGmMoh2URRtVb/m/g5tfbpY3Hy2MyspddDaNLSplRZh961uIG2NLQo3ymtoy3l6N
         GMBkttO0uNnvJyUyU/huIyES4D5AWV/lScT5K22i957D5/pDF2P9eIEeKg0itVTJXMfH
         OSvdnfJ3+2imoMSJF/1QgLQeCC3V4yInlaijJ22HULQiIukyVi0CDQBQ2s4hg6Tb18C9
         rALJZ+oPunE/SIGMNDID6yD26hAv12RK8mPbliGKD+DNON/5+GQsVrfDqWwcE2rFRBhv
         v5+rMPqFJ2rm7GG6y5tnQ8m7ZLfq3Cl3kDK/Rrvtdx+xlQze1RPTpbGrE3g5L8QoxvcD
         oyHA==
X-Forwarded-Encrypted: i=1; AJvYcCVPQXO6TGw82O0BV+lDZSgqLm/dCkxbkpxeIOzGbkaprk/udUwa6K7snmixtYAc13jX9TMJQFqxaSqd@vger.kernel.org
X-Gm-Message-State: AOJu0YwFG8I2Jj1A0+aOUaar5UkiaXLig/enoM9hR69lSKAPiBCZgfwr
	1F57QTkA18Y6Drw4XjznJn2SXA10iEGG18FT1Mc2Jotj0ymDLyrqIEms7WoQcdRAEFBLB1jtp7B
	Rxf9BkKJRSpP666gyH4QGetfqLg2+wI9o/Yx/g3AF4j21CmLQCZrVL0rFcjS8i8dV
X-Gm-Gg: ASbGnct+aNJeIiEltl4Xmyp8RIWk2OU/rE4g05MDMytuu7CBAcXSsb/QUcdvlYQcNhu
	09nggQRHEzXWay/pJZuSosCTY5so6Qv0tYUgBqXx2n6YmIs2x3Y/UpbkLmj/08/8PvH6iuDT18D
	NAYMxe+GTjHV10pvhKhwQqHdEZ51qkRYVlPi5SU4ybc7Hy8ZUukQpipItyvBuVCpZpdWOP2FsQE
	rGIwCSjSeQ6luyh+RgN+fpfhKHMZRMZpwFBJTS3TqpPj4pg1FC9xHCD7CFzsATvRnrbI6WVknBZ
	/LkGYbpY7kAT4vJp0FLmkvejGWRAt2JobCRk/hXDbnrOOvXA4cMXDAZfaH/EqYP0mD6i8Zgf37/
	bKeEpoAeLNoYA9D39vGy83Yc4e3o=
X-Received: by 2002:a05:622a:30c:b0:4d9:5ce:374e with SMTP id d75a77b69052e-4e6f4acde1fmr5303681cf.8.1759926616109;
        Wed, 08 Oct 2025 05:30:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH/AlwhfCmrZxt1Uz+PeJCgLqUiBaGU6v5l4sYwpfDnGoDIJcA7elnm7lMZ7gtM4iXdb4tK9Q==
X-Received: by 2002:a05:622a:30c:b0:4d9:5ce:374e with SMTP id d75a77b69052e-4e6f4acde1fmr5303051cf.8.1759926615439;
        Wed, 08 Oct 2025 05:30:15 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b48652a9ea1sm1633510466b.16.2025.10.08.05.30.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 05:30:14 -0700 (PDT)
Message-ID: <c7848ee9-dc00-48c1-a9b9-a0650238e3a1@oss.qualcomm.com>
Date: Wed, 8 Oct 2025 14:30:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/9] arm64: dts: qcom: ipq5424: Add QPIC SPI NAND
 controller support
To: Md Sadre Alam <quic_mdalam@quicinc.com>, broonie@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org, vkoul@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-spi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dmaengine@vger.kernel.org
Cc: quic_varada@quicinc.com
References: <20251008090413.458791-1-quic_mdalam@quicinc.com>
 <20251008090413.458791-5-quic_mdalam@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251008090413.458791-5-quic_mdalam@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: lXYvQadpJCiW8bWEDXJ9SiKoqAqogkNe
X-Authority-Analysis: v=2.4 cv=T8aBjvKQ c=1 sm=1 tr=0 ts=68e6595d cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=COk6AnOGAAAA:8 a=-ept-RJRzOG-hoP0ccsA:9
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: lXYvQadpJCiW8bWEDXJ9SiKoqAqogkNe
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA2MDEyMyBTYWx0ZWRfXzJIl4x8QowYs
 4mRz2p6G27sm9LmTte/pYsg2+Db3RCVYKvG+YjSe9+mVyCaebEHGejZqTE4depyf5C0XvBuy5t3
 3cArEcUldou57p56HZ656oy2jwhX3GHIc7OwaNQyW4D2HkVR0XDbssqXaZ7BztbT4kTi6WZnsTI
 knCnAB9AYBAXbaAJJ62liq1CifWjJCoZhTLD/g/Tf06qvKk5afxPWG68uTSmt4e++KwXCBX6Shr
 hKuzwG9D3AhQCjd2cDnb/ipW0u/JS1QqzvsCilPpoHq1cfnvIVDtMGnENsPImfCwyyHR9iTE8Ia
 8ZRRsUELMSt8gzo5uXQSzY/Dhvhz2quUaphU7x53OgG3h5ppcHQJlAYA8rVSIhNju0Tao8MwB6g
 fCG5RXj6k84B/WKiM4JfCawamuUvmQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_04,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 phishscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 lowpriorityscore=0 suspectscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510060123

On 10/8/25 11:04 AM, Md Sadre Alam wrote:
> Add device tree nodes for QPIC SPI NAND flash controller support
> on IPQ5424 SoC.
> 
> The IPQ5424 SoC includes a QPIC controller that supports SPI NAND flash
> devices with hardware ECC capabilities and DMA support through BAM
> (Bus Access Manager).
> 
> Signed-off-by: Md Sadre Alam <quic_mdalam@quicinc.com>
> ---

[...]

> +		qpic_bam: dma-controller@7984000 {
> +			compatible = "qcom,bam-v1.7.4", "qcom,bam-v1.7.0";
> +			reg = <0x0 0x07984000 0x0 0x1c000>;
> +			interrupts = <GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&gcc GCC_QPIC_AHB_CLK>;
> +			clock-names = "bam_clk";
> +			#dma-cells = <1>;
> +			qcom,ee = <0>;
> +			status = "disabled";
> +		};
> +
> +		qpic_nand: spi@79b0000 {
> +			compatible = "qcom,ipq5424-snand", "qcom,ipq9574-snand";
> +			reg = <0x0 0x079b0000 0x0 0x10000>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			clocks = <&gcc GCC_QPIC_CLK>,
> +				 <&gcc GCC_QPIC_AHB_CLK>,
> +				 <&gcc GCC_QPIC_IO_MACRO_CLK>;
> +			clock-names = "core", "aon", "iom";

1 a line, please, also below

> +			dmas = <&qpic_bam 0>,
> +			       <&qpic_bam 1>,
> +			       <&qpic_bam 2>;
> +			dma-names = "tx", "rx", "cmd";
> +			status = "disabled";

Is there anything preventing us from enabling both these nodes by
default on all boards (maybe secure configuration or required
regulators)?

Konrad

