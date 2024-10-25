Return-Path: <devicetree+bounces-115866-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 189149B0F44
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 21:40:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D0C68287D7D
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 19:40:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D216A20EA5A;
	Fri, 25 Oct 2024 19:40:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WyFonUoB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C232120EA50
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 19:40:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729885244; cv=none; b=HnkaFS8oMwiaXRLOSmpo/MEluY2XEU9ayf6jMNXfUIdyUJHSOj3aJYCdJAz4kcai0WaTJjzC0FiEvUvXY4tf5AdzaxJmFi0J3KdB17m7APOgj4aiFcsXP0SmytQRkUsiiJsU2Kmmtjqj89gzFPHGSRhF0kuAj265T6uwyhlaDF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729885244; c=relaxed/simple;
	bh=G/Z6Anw20AvLicT7TkmfUVlXSF34bsbnJfddMl4QaAM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=E8INCK6Ojbxpd7pgDn6yiHs4w3w3sL2W2uvWE+XS+id4cydZPesf/yfPYJSbpxfuqAPKKEsxaiC8YRU76c0JgQA9Wn3nWArygpH4GLZU0Xmv3djZz+v8IfqhbVex0LH17HJ58+m2BOQirCtHzyJPAccYqqytU3Hg9DULqDxT2AM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WyFonUoB; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49PBjvIp015240
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 19:40:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zkl9T2i4R+q+2wMdvpjq1/psZmqfc591SVz11qs6NLE=; b=WyFonUoBtbCzigZ9
	W24hSON4mBrdnMbZCq3zVw/yTdlX9f3hRkVhqOsLl/V3sR25rXeGFbNNEtRHQPLW
	5vBDJBQrm6MWsv6ST8eMRT+RYE1X11PNqlaXid0mXV2iPp4AeA2c2z8G7rxk1iKG
	pHetip4KxCnaeEXQGzZfBUjjEiaNhxv6ZXmXh0JYfsZAS3r81Des/28YUgCVlgdr
	dKywQaukkWJIZN4wZu7objL+JHQwwISysm4oUMph3w5Agc9vJNpmKWRuWNbDEMuQ
	jjjPGNX+G5aNXyYODfZXbWVFDXXoNWGSce3dvuMLKGxIXNPLWJuD079utpfc2/Zj
	MZeN7w==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42em43j6x2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 19:40:41 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-2e2ea8f92ebso325321a91.2
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 12:40:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729885240; x=1730490040;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zkl9T2i4R+q+2wMdvpjq1/psZmqfc591SVz11qs6NLE=;
        b=iHh2i741Msr5T6C7H7XP0bCNpIbDPjRBjLIYqwC1SRTNWjR8PSU/6wN1eurMPIxLeb
         veDXEdLX8I7C9FXxTHTwXy7zb6SBuS/kdVjTBcmbQseDW703vZMlD36yevv+q1oG8R3Y
         i0Q9btRTlkWQ3REic99L4jQwrH8x9pyycMrKK02QZnFI2wIo69e9OjyIUw9MSkAME/8N
         OiW0ZzcEjtM/7hDF31zqLDlNdrRQo9XoJ3cUJ4aGDeBU4oALR2/TW98rk8nqaty6G92b
         U1fQ4++TvWGoXVnilevXu2pJnRTBckoDLm/UNyJIywFz9Ckzenhb3gfJCaaPki1rtYnO
         25gg==
X-Forwarded-Encrypted: i=1; AJvYcCXnGCCHMWAs7C8OY5DgaZ8Bu14lRAsXiCNz+mPRrcpXa/Qf0bcg94x0jW/cU4cyNpp3Z6U6eFzXw3Kf@vger.kernel.org
X-Gm-Message-State: AOJu0YyF6ZgdqwTGrHqlFYOWx1sv+i/NPVzCge5RCQCnkXJi7/OJubOi
	BXIKJMEChzxiXzV/UCs0Mt15TQ3BY0qPeS9Ty32k8M4iIlhtREL8YjXp9qXNbwKQTp9rIPksGuV
	zwwe1j5m/QgayB4fw145DFXptAsUlEiR13oETL6lMmsol7BGAOh9T2vq5Zb9G
X-Received: by 2002:a17:902:ea07:b0:20d:345a:965b with SMTP id d9443c01a7336-210c6ae4767mr1609625ad.7.1729885240297;
        Fri, 25 Oct 2024 12:40:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFDbEkA9J7EzxFpUTffSKqSYZjdovy9ku+MQA7c1H4oUw/eZUXYvs1TG2JDRWh5H/JpYWW+Eg==
X-Received: by 2002:a17:902:ea07:b0:20d:345a:965b with SMTP id d9443c01a7336-210c6ae4767mr1609495ad.7.1729885239890;
        Fri, 25 Oct 2024 12:40:39 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9b1f296c66sm100369966b.109.2024.10.25.12.40.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2024 12:40:39 -0700 (PDT)
Message-ID: <15238992-4ede-4b85-9947-391baaa4c8a9@oss.qualcomm.com>
Date: Fri, 25 Oct 2024 21:40:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] arm64: dts: qcom: qcs615: Add QUPv3 configuration
To: Viken Dadhaniya <quic_vdadhani@quicinc.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: quic_msavaliy@quicinc.com, quic_anupkulk@quicinc.com
References: <20241011103346.22925-1-quic_vdadhani@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241011103346.22925-1-quic_vdadhani@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: K1EunFPFrNuKCAHxn3nNhYg3VfYFHjg3
X-Proofpoint-ORIG-GUID: K1EunFPFrNuKCAHxn3nNhYg3VfYFHjg3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 lowpriorityscore=0
 adultscore=0 mlxlogscore=999 spamscore=0 malwarescore=0 impostorscore=0
 phishscore=0 bulkscore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2409260000
 definitions=main-2410250151

On 11.10.2024 12:33 PM, Viken Dadhaniya wrote:
> Add DT support for QUPv3 Serial Engines.
> 
> Co-developed-by: Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>
> Signed-off-by: Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>
> Signed-off-by: Viken Dadhaniya <quic_vdadhani@quicinc.com>
> ---

[...]

> +	qup_opp_table: opp-table-qup {
> +		compatible = "operating-points-v2";

opp-shared;

> +
> +		opp-75000000 {
> +			opp-hz = /bits/ 64 <75000000>;
> +			required-opps = <&rpmhpd_opp_low_svs>;
> +		};
> +
> +		opp-100000000 {
> +			opp-hz = /bits/ 64 <100000000>;
> +			required-opps = <&rpmhpd_opp_svs>;
> +		};
> +
> +		opp-128000000 {
> +			opp-hz = /bits/ 64 <128000000>;
> +			required-opps = <&rpmhpd_opp_nom>;
> +		};
> +	};
> +
>  	psci {
>  		compatible = "arm,psci-1.0";
>  		method = "smc";
> @@ -392,6 +427,24 @@
>  			#size-cells = <1>;
>  		};
>  
> +		gpi_dma0: qcom,gpi-dma@800000  {
> +			compatible = "qcom,sdm845-gpi-dma";

You must define a new compatible for qcs615, sdm845 is used as a fallback
(so that we don't have to add new driver entries). You will however need
to submit a separate dt-bindings change.

> +			reg = <0x0 0x800000 0x0 0x60000>;
> +			#dma-cells = <3>;
> +			interrupts = <GIC_SPI 244 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 245 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 246 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 247 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 248 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 249 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 250 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 251 IRQ_TYPE_LEVEL_HIGH>;
> +			dma-channels = <8>;
> +			dma-channel-mask = <0xf>;
> +			iommus = <&apps_smmu 0xd6 0x0>;
> +			status = "disabled";

Any reason?

> +		};
> +
>  		qupv3_id_0: geniqup@8c0000 {
>  			compatible = "qcom,geni-se-qup";
>  			reg = <0x0 0x8c0000 0x0 0x6000>;
> @@ -400,6 +453,7 @@
>  				 <&gcc GCC_QUPV3_WRAP_0_S_AHB_CLK>;
>  			clock-names = "m-ahb",
>  				      "s-ahb";
> +			iommus = <&apps_smmu 0xc3 0x0>;

This looks like a separate fix

>  			#address-cells = <2>;
>  			#size-cells = <2>;
>  			status = "disabled";
> @@ -412,13 +466,377 @@
>  				pinctrl-0 = <&qup_uart0_tx>, <&qup_uart0_rx>;
>  				pinctrl-names = "default";
>  				interrupts = <GIC_SPI 601 IRQ_TYPE_LEVEL_HIGH>;
> -				interconnects = <&aggre1_noc MASTER_QUP_0 0
> -						 &mc_virt SLAVE_EBI1 0>,
> -						<&gem_noc MASTER_APPSS_PROC 0
> -						 &config_noc SLAVE_QUP_0 0>;
> +				interconnects = <&aggre1_noc MASTER_QUP_0 0 &mc_virt SLAVE_EBI1 0>,
> +						<&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_QUP_0 0>;

Why?

Also, please use QCOM_ICC_TAG_ALWAYS instead of zeroes

Konrad

