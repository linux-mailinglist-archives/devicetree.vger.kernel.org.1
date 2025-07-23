Return-Path: <devicetree+bounces-199023-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7107CB0F12E
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 13:30:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E902C7ADF53
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 11:29:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D24FF289E21;
	Wed, 23 Jul 2025 11:30:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aJZDle89"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443BB2E3713
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 11:30:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753270244; cv=none; b=R9UgHaqpdKp67PVzl8dN7hTNk32BsQlkEs8DH5/8ZA1hGdLvASUQIxEvSrWJv0utlJ1DSJWG+LBn/z87UtzTT0nM0AomRTnALtnnJCMXs81oRLIW6fCyiE1/yd/wsl76rN+zpomE2DhPsWW6a6TDVoMdV/4CaCvOWuDFq/kj6b4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753270244; c=relaxed/simple;
	bh=EWatrMv7fWUYR3nk40Qt126jSA2DEWg1MgTS3LGto4A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=T0d6VyBOL4n7dioGvPtgvjNmceVDUNV97rKxhGFSw7IQuRdZf4ZkTQMF3T2/LxeTTdDw6YJ05XSQkT0aZivDXymiOR+2gqbY2qpIs6cj4KQpHF4eY/BNM+gDQ8vQoqmbJ4AgZHjELwmFsjFCLlWUxznLK2WBiMVkshQg5D20S4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aJZDle89; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56N9YL2n005825
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 11:30:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=DAtScC9U2/LEXJjXO/aUFYiP
	mdGuZpX7tUt+7DQMPkA=; b=aJZDle89SyGyj19CclERgKtzLsiFbZdgHYAJoaec
	bfu1r57PbRZYjogk88Q6ZMC+yJUYYSSYy5CrOU0MuyG0bCUSwrF5oiMVNvLtFC/a
	3yhCoPl2snU9lPmnXSb8PG2yZxYWygTHhl92w2RaFoU6GSldFon1qMpIQLVrp+6W
	Tpg6AcPEPW03UonC99APNZQbLOorlyRDIUt9Z0EfdEQO2ftmMHsqS0pjTdSWFu4w
	M7QWAQMWAg0/9zvsHVZHdZ4RW5W0c0+8WC0Q0D31MNcmPBForsYLjeVL+uujs6a3
	PzlAlbP9yYU6cHZZSXkArgUudwt7ZrlBnCYhPY4jiU+ssg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 481t6w63vx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 11:30:42 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-706efc88653so36560136d6.0
        for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 04:30:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753270241; x=1753875041;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DAtScC9U2/LEXJjXO/aUFYiPmdGuZpX7tUt+7DQMPkA=;
        b=de0Vwd/KhJ9D/fkwGRxh02U4jeVKhIpFJ05uQI4pk7kpsbTrCPEkNbhhegDKHStV/Y
         oM92cNVthMZXAPKTRgydMK+cPZ+Nj+E0mLqpg9Kro/1/xtUa4vnhjUeakAJGVNhZeavD
         izNE4mBQg8HfWu/oIGQSSCrSI0TVBwDOD1BLnDRy7MZn7M+Y0phYzl/uIqv95xcZBKgO
         Q75ACmOcpzAZXQvH6Wvc9pSMkH+TZT43qCKThTvyY8jge3OBcRQb3WRl2g8yTKHxJLnt
         aRMOZGvLCciFXVp4rzMVLzezHKoCvp+gV00CVZhgaeMuAfk6Emb7Q100AOeRoMd9Dd13
         3fug==
X-Forwarded-Encrypted: i=1; AJvYcCXCsz+Fz8kLriobTjVxdbXA/6MJzqqsVTWcl4RhCxfrzKC9pfgfdzFHu8Ox3QEp7Kvn1x3FpxuijW0S@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9mIhF1glz/LlLC4V7RcHpUl/IcE9ClhoJuooYF9KTGGOpLgKX
	Tcr8P0pvuFfXsockeDMxZiqtCvSkHaikFGFWR3/j2WQKo0KMwKq5USoaLG0hIibmws+Nmfq5dlh
	25u2nnlVCedwpITfbTy5u1hH5pRyymM6jGKqrAOBuvEoJC9S3D/d2sMAWhudTuRxZ
X-Gm-Gg: ASbGncvvW5HMNq2wKXfpcLUBwhUvM+7Vb6NREI2n4R8r5hGYVrleHxnUIbl+436dzQ/
	IFgXcFJm1kiCmcbogqPCYlBSw2VbR+bD8bjawVCYujrVQdPc7NWOPLOg+qrWIYQuhAlhuQq5F2I
	4V7fITOusTOVZDNqLNO+MLqKZGq3zkfpQnEPoACWhR085ZSaxwLRnF6k07WaB+OPiYfoE5vCGDK
	AJnAcUECAN67MLKmd3/y7/PVnGSQiBF60Z7dxJ10z46EMY2XDdbO5gOXoRm0TXoERGrURC+N+yX
	5DIw0Q8sLxnEbD4xELaiYlMwP6/EnT2v2z7fX23NkzFua51/7nqfQXbG01BC1ydZvz60Z2jbZ4W
	YE3dmvmvTB5CJa7BzdXmoMZ08g0ui3ZucSPIrYo7ocTvw3WKZI/qm
X-Received: by 2002:a05:6214:500d:b0:6fb:4e82:6e8 with SMTP id 6a1803df08f44-7070051b347mr30980486d6.14.1753270240715;
        Wed, 23 Jul 2025 04:30:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGZ+GLEEib9onDeXbPXYW5/AUdlXc10aPzgae7rtBYPCKLr2fEo8PRMQxKOYdVJN7ScBBPsKg==
X-Received: by 2002:a05:6214:500d:b0:6fb:4e82:6e8 with SMTP id 6a1803df08f44-7070051b347mr30979846d6.14.1753270239974;
        Wed, 23 Jul 2025 04:30:39 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-330a91da0dbsm19146101fa.89.2025.07.23.04.30.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Jul 2025 04:30:39 -0700 (PDT)
Date: Wed, 23 Jul 2025 14:30:37 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] arm64: dts: qcom: ipq5424: Describe the 4-wire UART SE
Message-ID: <kad3hqxufsdescelmjhwy45ggnukh435wmo5wbbl6pfz2gq5ge@ycfsgtuwdkcl>
References: <20250630-ipq5424_hsuart-v3-1-fa0866b12cbc@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250630-ipq5424_hsuart-v3-1-fa0866b12cbc@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=SPpCVPvH c=1 sm=1 tr=0 ts=6880c7e2 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=tshmjInBByzUM6WNTOAA:9
 a=CjuIK1q_8ugA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIzMDA5NyBTYWx0ZWRfX2Vyp19iDx/nT
 8kbgTcheagBJhy3+CSqXBGZsaVhh2mVSJPiqlXDP58i1FcN7jcH7eIOj98F4S9FFOL3QhFjfPft
 CmsbzoAsF73YKmMyuwMCVH8Bft0PJaoFctl98vD8QXQZFS2drE6zej+fI0xnT16hfouAvPXNCEo
 zTGyvdZWWVNnTaozW9+0NR9Hv2qAAw6Kl2dkqiK83KRPmEnxUgT0uE5LdohXCDmJzD3T/sUiEXt
 8VbY6RnxNRJnbi7LqyQIFIc9JUwe6JTuV0dUEDgsS6t5Uq46QxN5zliPGPthDHpAFeW3UUGEmPg
 r0zHkuJj1HqnKe4GiJBLXL2kUrOfI8zZ0ODQbH9RZBeC4Y0vTuEZiW8pdJaKhZv7nDl58v+20b2
 CQcfu7gVLiGKu+8AC3gMFSw9pCwjiPLK/fGJdOz6peXIR4MAhGfESUgDvA63r9ViXgvtHRHX
X-Proofpoint-ORIG-GUID: bEU8YogDpoDHHr7dlqCmWdcHW2_qh8Vw
X-Proofpoint-GUID: bEU8YogDpoDHHr7dlqCmWdcHW2_qh8Vw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-23_02,2025-07-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 adultscore=0 phishscore=0 malwarescore=0
 mlxscore=0 bulkscore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507230097

On Mon, Jun 30, 2025 at 02:20:15PM +0530, Kathiravan Thirumoorthy wrote:
> QUPv3 in IPQ5424 consists of six Serial Engines (SEs). Describe the
> first SE, which supports a 4-wire UART configuration suitable for
> applications such as HS-UART.
> 
> Note that the required initialization for this SE is not handled by the
> bootloader. Therefore, add the SE node in the device tree but keep it
> disabled. Enable it once Linux gains support for configuring the SE,
> allowing to use in relevant RDPs.

What about documenting it as status = "reserved" + comment and then
enabling it once QUP patches land?

> 
> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
> ---
> Changes in v3:
> - Add the pinctrl configuration for the SE (Konrad)
> - Link to v2:
>   https://lore.kernel.org/linux-arm-msm/20250624-ipq5424_hsuart-v2-1-6566dabfe4a6@oss.qualcomm.com/
> Changes in v2:
> - Correct the interrupt number
> - Link to v1:
>   https://lore.kernel.org/r/20250624-ipq5424_hsuart-v1-1-a4e71d00fc05@oss.qualcomm.com
> ---
>  arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts | 12 ++++++++++++
>  arch/arm64/boot/dts/qcom/ipq5424.dtsi       |  9 +++++++++
>  2 files changed, 21 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts b/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
> index 1f89530cb0353898e0ac83e67dfd32721ede88f8..8dee436464cb588fdde707b06bd93302b2499454 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
> +++ b/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
> @@ -224,6 +224,13 @@ data-pins {
>  		};
>  	};
>  
> +	uart0_pins: uart0-default-state {
> +		pins = "gpio10", "gpio11", "gpio12", "gpio13";
> +		function = "uart0";
> +		drive-strength = <8>;
> +		bias-pull-down;
> +	};
> +
>  	pcie2_default_state: pcie2-default-state {
>  		pins = "gpio31";
>  		function = "gpio";
> @@ -239,6 +246,11 @@ pcie3_default_state: pcie3-default-state {
>  	};
>  };
>  
> +&uart0 {
> +	pinctrl-0 = <&uart0_pins>;
> +	pinctrl-names = "default";
> +};
> +
>  &uart1 {
>  	pinctrl-0 = <&uart1_pins>;
>  	pinctrl-names = "default";
> diff --git a/arch/arm64/boot/dts/qcom/ipq5424.dtsi b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
> index 66bd2261eb25d79051adddef604c55f5b01e6e8b..2b8499422a8a9a2f63e1af9ae8c189bafe690514 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5424.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
> @@ -417,6 +417,15 @@ qupv3: geniqup@1ac0000 {
>  			#address-cells = <2>;
>  			#size-cells = <2>;
>  
> +			uart0: serial@1a80000 {
> +				compatible = "qcom,geni-uart";
> +				reg = <0 0x01a80000 0 0x4000>;
> +				clocks = <&gcc GCC_QUPV3_UART0_CLK>;
> +				clock-names = "se";
> +				interrupts = <GIC_SPI 339 IRQ_TYPE_LEVEL_HIGH>;
> +				status = "disabled";
> +			};
> +
>  			uart1: serial@1a84000 {
>  				compatible = "qcom,geni-debug-uart";
>  				reg = <0 0x01a84000 0 0x4000>;
> 
> ---
> base-commit: 1343433ed38923a21425c602e92120a1f1db5f7a
> change-id: 20250630-ipq5424_hsuart-0cf24b443abb
> 
> Best regards,
> -- 
> Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
> 

-- 
With best wishes
Dmitry

