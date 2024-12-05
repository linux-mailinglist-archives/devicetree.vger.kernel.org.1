Return-Path: <devicetree+bounces-127585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C63AF9E5C4D
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 17:55:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 45275164E89
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 16:55:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BD5422577F;
	Thu,  5 Dec 2024 16:55:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hH3uGare"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9334D224B14
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 16:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733417736; cv=none; b=jwTjEQHw26QAIlTGAZoSL6Lz/4F+BoVP9a0tRv4eWEXVtCWauRulaNdKls4S+PYzfGruakmXDOrfoUS9l2Yy8vVeneDGc8U1dljXjiS3k16rECdrkgTfzP6mpE9a56eksBm1C9ly8z+FdTnIxU4xsAmc+4BBY19vcGTgCT2Rinw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733417736; c=relaxed/simple;
	bh=I+r7NyhBCySrHUmUTasjt7eybB4bk+66IFCAfbgb2Ks=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GewnhwXFfAEWU7R+2LWVSvHcDT4xV8no52YB0uzJgKrel6wGa/fJPSUPWjP6OIBR4twPbjxmjnu6ecN212pchstwSLL+1aD5gPyFvnvmUaFHcf5Uw8Obv2sXaH7kfRUyJ9Cd3FL91hLqtVcyueUuGQp3p/8tU6Wa8cIwKKnwfjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hH3uGare; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B5FEoLw003257
	for <devicetree@vger.kernel.org>; Thu, 5 Dec 2024 16:55:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VOFQylGJgYNMCJcUBcofUAuX/+VKBXcVVeUUlHN8vVk=; b=hH3uGaren9vGIINs
	j2WI3cccYIp5+se1M6em2KECJk7kR2vZz6OIlY/IpflNiTiuYAtyRxbl+OrAOn+t
	l0/K+xO8ZdylPDpgUmQQK3kbVFjdJ8GQs7Vojxoy02N9jm/1/tTRC1NTp3nV+2mq
	reumS8wt8cUtz8hwlZEme0OdSdeA0Y4euv5rf/vmahH0KReq4TBuAatGX3Y/K24s
	fUxAakPP1/9ra3Z9Mu8YFvLu5uVZhN/MU3fWAJDJvUCJxyl7V3zTJewQt6UnKtbI
	N8JddbJ86tf0VyHP+VXNqmA5cof4Wzj35ofsOE8UfYbYp2525rxxLyW68d95fdFP
	8YjmmA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43ben88a2t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 16:55:32 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-466c5605601so2539571cf.2
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 08:55:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733417731; x=1734022531;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VOFQylGJgYNMCJcUBcofUAuX/+VKBXcVVeUUlHN8vVk=;
        b=vou3rNGHIZA2TlZzvdN2pUWgSPQ5YJfBe+yZM/VI4XNihEpFxLau6sdf0Ip+KfdKhY
         7yrYTmq5sVYKUdZ+euP0PP9vSgThrxA6TLxjKP0Ur6zeEHwKOKrORqgEvnlrTFcSeqSr
         /6bfRBJFtZ6HRWuu3ktmtErIco0BhfKKkVDN5b+lL9nQgEvDBtVAB9nwn8frHEdAu3WT
         QMg8ZQ7qnvZzQgRDzJWUa4HbLX6gwQu2D43GETzzNf/jWULEyZgcfjB+PlRtoU2YIJsO
         iCS5qI+E3H6RHIM/Hr2Lk1zeHJu5ibeJx7ooZYakC2FLfOjatg0GXi4rthJDD9M4jpo3
         wMFg==
X-Forwarded-Encrypted: i=1; AJvYcCW/gjXo5HEQ39qjqAZ+Xqlvxw5n7JnoWsG8eB5U0ND6LrTNfVPigxy2fiCS2uqCgi23Cck6Mb1ILTQN@vger.kernel.org
X-Gm-Message-State: AOJu0YylT/3v75J0fBNml46QiSezQ07gU2/GmtroKe1c12D3WFZaYyMp
	KfuhGQh0pXcpsaYAJQt7YdCuDZ28gSusJhKSlD4N1rqQNhTD2qf99NKIbELj9MMxyj6P6Y8jVcS
	idvAr68K98rM8BYEuU3g8nWfEFXCJyU63Goi80QsOpd2zfquRp44DNJsUNySa
X-Gm-Gg: ASbGnctXSgRz6LfWOvlkwEr5fmMPiDgL5LI6vM/4kooURVmTfKQBwbHHNKM/CtzND4b
	WJqjKhRGB+yE9A7zoXHR7GMq1Xjwa0DHOh0Ls0e+WU18Z3FB1bH0MRkkHEorOw6gIbN5iFi3uAS
	P3kTsyXiEF8P47q35Kw2b7YNvpD1F+SaG605bIg57AV67QaeEggHNwz5YOEwG+8p5HxYD2XC7/9
	p0KaKpX6XLGrBS0yKlsav08f/akx+IZu7rPGwrxudz/YWjSH/+CpGAUgMc3bGzSBtmQ74Qjik5i
	hj/OMGkE3KZ9My/tozMIAkyBshOSgh8=
X-Received: by 2002:a05:622a:58c:b0:466:92d8:737f with SMTP id d75a77b69052e-4670c0c19d8mr67579471cf.8.1733417731320;
        Thu, 05 Dec 2024 08:55:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGpOyIz3ExEZb6pa6ljRFBJV3XGl7gjiUagmYMxGVfn+2598vcJKlgl8xXch7qaXTeppX9Nrg==
X-Received: by 2002:a05:622a:58c:b0:466:92d8:737f with SMTP id d75a77b69052e-4670c0c19d8mr67579291cf.8.1733417730950;
        Thu, 05 Dec 2024 08:55:30 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa625e4dc95sm115378266b.38.2024.12.05.08.55.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2024 08:55:30 -0800 (PST)
Message-ID: <6fe09de4-c94c-495d-92a4-aa902d2519ef@oss.qualcomm.com>
Date: Thu, 5 Dec 2024 17:55:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/6] arm64: dts: qcom: ipq5332: Add PCIe related nodes
To: Varadarajan Narayanan <quic_varada@quicinc.com>, lpieralisi@kernel.org,
        kw@linux.com, manivannan.sadhasivam@linaro.org, robh@kernel.org,
        bhelgaas@google.com, krzk+dt@kernel.org, conor+dt@kernel.org,
        vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, p.zabel@pengutronix.de,
        quic_nsekar@quicinc.com, dmitry.baryshkov@linaro.org,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
Cc: Praveenkumar I <quic_ipkumar@quicinc.com>
References: <20241204113329.3195627-1-quic_varada@quicinc.com>
 <20241204113329.3195627-6-quic_varada@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241204113329.3195627-6-quic_varada@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: -s5f8dgc0CZEVq4Xy9CzbbQUYrRi8voo
X-Proofpoint-GUID: -s5f8dgc0CZEVq4Xy9CzbbQUYrRi8voo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 phishscore=0
 priorityscore=1501 impostorscore=0 mlxlogscore=999 clxscore=1015
 malwarescore=0 suspectscore=0 spamscore=0 mlxscore=0 lowpriorityscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412050123

On 4.12.2024 12:33 PM, Varadarajan Narayanan wrote:
> From: Praveenkumar I <quic_ipkumar@quicinc.com>
> 
> Add phy and controller nodes for pcie0_x1 and pcie1_x2.
> 
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---

[...]

> +		pcie0: pcie@20000000 {
> +			compatible = "qcom,pcie-ipq5332";
> +			reg =  <0x20000000 0xf1d>,
> +			       <0x20000F20 0xa8>,

Please use lowercase hex

> +			       <0x20001000 0x1000>,
> +			       <0x00080000 0x3000>,
> +			       <0x20100000 0x1000>;
> +			reg-names = "dbi", "elbi", "atu", "parf", "config";

Please also add the MHI region
> +			device_type = "pci";
> +			linux,pci-domain = <0>;
> +			bus-range = <0x00 0xff>;
> +			num-lanes = <1>;
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +
> +			ranges = <0x01000000 0 0x20200000 0x20200000 0 0x00100000>, /* I/O */
> +				 <0x02000000 0 0x20300000 0x20300000 0 0x0fd00000>; /* MEM */

Please drop these comments
> +
> +			interrupts = <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "msi0",
> +					  "msi1",
> +					  "msi2",
> +					  "msi3",
> +					  "msi4",
> +					  "msi5",
> +					  "msi6",
> +					  "msi7";
> +
> +			#interrupt-cells = <1>;
> +			interrupt-map-mask = <0 0 0 0x7>;
> +			interrupt-map = <0 0 0 1 &intc 0 0 35 IRQ_TYPE_LEVEL_HIGH>, /* int_a */
> +					<0 0 0 2 &intc 0 0 36 IRQ_TYPE_LEVEL_HIGH>, /* int_b */
> +					<0 0 0 3 &intc 0 0 37 IRQ_TYPE_LEVEL_HIGH>, /* int_c */
> +					<0 0 0 4 &intc 0 0 38 IRQ_TYPE_LEVEL_HIGH>; /* int_d */

And these too

> +
> +			clocks = <&gcc GCC_PCIE3X1_0_AXI_M_CLK>,
> +				 <&gcc GCC_PCIE3X1_0_AXI_S_CLK>,
> +				 <&gcc GCC_PCIE3X1_0_AXI_S_BRIDGE_CLK>,
> +				 <&gcc GCC_PCIE3X1_0_RCHG_CLK>,
> +				 <&gcc GCC_PCIE3X1_0_AHB_CLK>,
> +				 <&gcc GCC_PCIE3X1_0_AUX_CLK>;
> +
Stray newline

> +			clock-names = "axi_m",
> +				      "axi_s",
> +				      "axi_bridge",
> +				      "rchng",
> +				      "ahb",
> +				      "aux";
> +
> +			resets = <&gcc GCC_PCIE3X1_0_PIPE_ARES>,
> +				 <&gcc GCC_PCIE3X1_0_CORE_STICKY_ARES>,
> +				 <&gcc GCC_PCIE3X1_0_AXI_S_STICKY_ARES>,
> +				 <&gcc GCC_PCIE3X1_0_AXI_S_CLK_ARES>,
> +				 <&gcc GCC_PCIE3X1_0_AXI_M_STICKY_ARES>,
> +				 <&gcc GCC_PCIE3X1_0_AXI_M_CLK_ARES>,
> +				 <&gcc GCC_PCIE3X1_0_AUX_CLK_ARES>,
> +				 <&gcc GCC_PCIE3X1_0_AHB_CLK_ARES>;
> +
Ditto

> +			reset-names = "pipe",
> +				      "sticky",
> +				      "axi_s_sticky",
> +				      "axi_s",
> +				      "axi_m_sticky",
> +				      "axi_m",
> +				      "aux",
> +				      "ahb";
> +
> +			phys = <&pcie0_phy>;
> +			phy-names = "pciephy";
> +
> +			interconnects = <&gcc MASTER_SNOC_PCIE3_1_M &gcc SLAVE_SNOC_PCIE3_1_M>,
> +					<&gcc MASTER_ANOC_PCIE3_1_S &gcc SLAVE_ANOC_PCIE3_1_S>;
> +			interconnect-names = "pcie-mem", "cpu-pcie";
> +
> +			msi-map = <0x0 &v2m0 0x0 0xffd>;
> +			status = "disabled";
> +		};
> +
> +		pcie1: pcie@18000000 {

Same comments as pcie0

Konrad

