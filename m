Return-Path: <devicetree+bounces-127618-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E79F69E5CE4
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 18:19:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B67E9161AB3
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 17:19:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45CCD22259A;
	Thu,  5 Dec 2024 17:19:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lMWjN/ih"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C68B121D5AC
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 17:19:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733419170; cv=none; b=pPTOZm5sZHyedPAqf+3w4Kwg6OiJ4q6JAlewIkQa3ELgwHmlUcFykH/H+al15/se8SKmtDDRkdof75UMS0C1dpHh3qz5sM2A0BddlybAkLzh03W7lfQfVI+NtjCjGAia7O21bHV61rOkwhZIqn3u70iF74gxPmpyBgtjD1Xbpq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733419170; c=relaxed/simple;
	bh=FGdLII5M2j68FMwyvtPhVuF7iwrg4WLaaHEdlGb8rF8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DJzHwAHStA3C7K4mgqbTsIoMx2ovuGQLipTiPCntFwjmFRyd5swYBaa+0V+rJIiUw4M/Bk72HR+KnxzCi/68yrgTRqciEKQXmwo+rSwlvAgN4zwp5fCoJHER66LrW6zCU71CJcgXYXbiV29zFThwH5Ma+wliTZwebiAjSt9fQr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lMWjN/ih; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B5FEktk003241
	for <devicetree@vger.kernel.org>; Thu, 5 Dec 2024 17:19:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	b2LZXubXxt0wXoBWUWDvvdcZjo8ptXI01DoAjxRfdtY=; b=lMWjN/ihVKDTbF27
	/9o7ls8/KzeIgN0rOdEyPVBdhVcQTuC+L473GzrXFYcs35I7Q3FPfIx21YWNL4Vi
	gO6K8npY5ApznvQtDKlEGdR/l/G2+JAUO8v/kUhRkbYIdPsib4YB0pKgdVlOdFg+
	yZjU+d1K+4j1x59OdFWROS6sg5X2cKGoW+msfvpOysVSPiNeu5FiRyWEO5TnP6n9
	kyc6JP8a6masegVwmZ32/brPpW7aA8ek9YL+s7hW/TwTlHZkiJj8G0Q8jJXyWU7Y
	MKFwHlKLqG4crLdAEUuPlijtXPDeK2zmLIa9Vhvg0mp3P4B1nGDII8TuBxIdumFw
	41RPqQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43ben88cm2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 17:19:27 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-46680667b3aso2783421cf.2
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 09:19:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733419166; x=1734023966;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=b2LZXubXxt0wXoBWUWDvvdcZjo8ptXI01DoAjxRfdtY=;
        b=ZT5NeC86XBa8wQlpvyrekq6bSk4PFfM00U/LICi60XBb/jrebipwJYGJfpJ/fCe3Pg
         6nRyVWFKY7jlj3gkq30vMpL3pAT+M1RxjHzrQ4MU3p7ZzQUJodpxUTIB/24wv3hvLPEJ
         jDErVq7tSOQecZDv3mH0E5HgyC3xYMSweUekhsO1iadIHak/49Vj9P+Ye0SHdhoDNIdi
         X3m3M9PbupikEWM8+kcVgbv2hWUI+LfjRzaLocitTm4IbaiXUQx+DIBgcX+5SSinJ1yh
         XW3j7OEfmIFsG/5LUu8F7bX6h56z6A5NkyNujH02WQJbGi1P0NAUIkfLwk1LpnRYe5vg
         AXSg==
X-Forwarded-Encrypted: i=1; AJvYcCVJiib0HVTDEP+/j0/JqD6itLJ4AytrNirON7tUpcvb6dkK+vKXs/38I7++7hXw0zQejuNSgPyptYFq@vger.kernel.org
X-Gm-Message-State: AOJu0YzFrO/kOq3itt5C9mW4kB+WAGkzLBLQV+KLbfQ6VsTDzKToRqm6
	f72EKJTo3tePzkEsW2TCiBbvx/BZ0COEBBX7+LBkwlJx9Ab7aNaLyQUIx2h1Y+DDGQDpaBWr2wG
	T158eQMv0I3JfCx+KNXr+KpTsaLqBpxtyfGH1aMMDlyCrVTreFbf8t9oXJPh1
X-Gm-Gg: ASbGncvxP5fhoqjj64XHb2NkzAdyJmQ0S1hSqi7Cl5mqHWOjv3xjCp4INy6DUsSz4Mk
	a2zMLobkBaH12DrnGok5sar/SgKqs9ql4rGVNpZBa6ynuAkXupL37W6UiT/9sjEQ/VsB25FwYB2
	Dv4i4h7leihLl2nBbFvT9Nz/6oLPhnhyyx82QDU9+uktvwrkTyjwpndS2pdnu425g8opmCAf9Wd
	6+EfFaEcleVMo5QU3hZSp62afTCZr61To8f4dCvlNZjqITSM3FE/VhxWllE+qhQnjkbcNvvuOFH
	zx9coi4SrtMnK/KHPq03yWT3Z3AbgM4=
X-Received: by 2002:ac8:5f07:0:b0:461:6599:b9a with SMTP id d75a77b69052e-4670c3742e7mr76163441cf.11.1733419165702;
        Thu, 05 Dec 2024 09:19:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEU+qJE6QKbgG5HlW99mhr99xiUoytBvTGuUz4N/wFy5f4STO28PHZ+UXuC1vGJjl+c0VW2ow==
X-Received: by 2002:ac8:5f07:0:b0:461:6599:b9a with SMTP id d75a77b69052e-4670c3742e7mr76163011cf.11.1733419165176;
        Thu, 05 Dec 2024 09:19:25 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa625e4db84sm120014166b.41.2024.12.05.09.19.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2024 09:19:24 -0800 (PST)
Message-ID: <4c1fe789-5190-465d-bb41-3fe1534d2523@oss.qualcomm.com>
Date: Thu, 5 Dec 2024 18:19:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 7/8] arm64: dts: qcom: ipq9574: Add SPI nand support
To: Md Sadre Alam <quic_mdalam@quicinc.com>, broonie@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org,
        miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
        manivannan.sadhasivam@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org
Cc: quic_srichara@quicinc.com, quic_varada@quicinc.com
References: <20241120091507.1404368-1-quic_mdalam@quicinc.com>
 <20241120091507.1404368-8-quic_mdalam@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241120091507.1404368-8-quic_mdalam@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: mFgVEvauVEkFilpSCm-kd1XI87PYw2wC
X-Proofpoint-GUID: mFgVEvauVEkFilpSCm-kd1XI87PYw2wC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 phishscore=0
 priorityscore=1501 impostorscore=0 mlxlogscore=999 clxscore=1015
 malwarescore=0 suspectscore=0 spamscore=0 mlxscore=0 lowpriorityscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412050126

On 20.11.2024 10:15 AM, Md Sadre Alam wrote:
> Add SPI NAND support for ipq9574 SoC.
> 
> Signed-off-by: Md Sadre Alam <quic_mdalam@quicinc.com>
> ---

[...]

Feel free to put dt patches in a separate series after Miquel picks
up the mtd changes

>  &usb_0_dwc3 {
> diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> index d1fd35ebc4a2..45fb26bc9480 100644

board and dtsi patches should be 2 separate ones

> --- a/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> @@ -330,6 +330,33 @@ tcsr: syscon@1937000 {
>  			reg = <0x01937000 0x21000>;
>  		};
>  
> +		qpic_bam: dma-controller@7984000 {
> +			compatible = "qcom,bam-v1.7.0";
> +			reg = <0x7984000 0x1c000>;

Please pad the address part to 8 hex digits with leading zeroes

> +			interrupts = <GIC_SPI 146 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&gcc GCC_QPIC_AHB_CLK>;
> +			clock-names = "bam_clk";
> +			#dma-cells = <1>;
> +			qcom,ee = <0>;
> +			status = "disabled";
> +		};
> +
> +		qpic_nand: spi@79b0000 {
> +			compatible = "qcom,ipq9574-snand";
> +			reg = <0x79b0000 0x10000>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			clocks = <&gcc GCC_QPIC_CLK>,
> +				 <&gcc GCC_QPIC_AHB_CLK>,
> +				 <&gcc GCC_QPIC_IO_MACRO_CLK>;
> +			clock-names = "core", "aon", "iom";
> +			dmas = <&qpic_bam 0>,
> +			       <&qpic_bam 1>,
> +			       <&qpic_bam 2>;
> +			dma-names = "tx", "rx", "cmd";

Please make clock/dma names a vertical list, like clocks/dmas

Also, is it okay not to use any of the GCC_QPIC_BCR/
GCC_QPIC_AHB_ARES/GCC_QPIC_ARES resets found in GCC?

Konrad

