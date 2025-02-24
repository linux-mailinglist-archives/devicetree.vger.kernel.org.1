Return-Path: <devicetree+bounces-150619-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 87D69A42DFA
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 21:36:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 73FE3174D64
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 20:36:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EA7A1FDE0B;
	Mon, 24 Feb 2025 20:36:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bKBHwo0J"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79AFD24397F
	for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 20:36:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740429388; cv=none; b=e2S0nwbfFgz6POlQQjcSDtbMLYcmZ4DpBUt0d8H7GOf+LAp+jiedowmi5oC9kW4LymFnaYXTW94dUk9YxUR+QJJnuRoWQ13lnwOIGjaKgQ0goLQQjx1g+SeQ1LMkXZWqmf4vF0cH0leVoyFoNTrXTz6bpluF5y6Aw3hECSoXDag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740429388; c=relaxed/simple;
	bh=HPkSLGJBYmFJA9mJQQkNICigpu0LI4oAarzVYt68ync=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=ZTvaHYZT5yiA9LVfhvjoNwVuZGwIQ73D0x/3z7B1Rve6FGLQpwp/Xv6l/F3O4OO3WSnPJNcEluiQgO1r7JqZjo5t4mfgiI/41CKtvYOWoFNEeqbGB4TbcDMn3updmt0z8T6SVlzfh6pqDbzkNULnqzi+DvjgZWq6f5rlM9bRdNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bKBHwo0J; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51OKOvoY012918
	for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 20:36:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4tOgVvKsxWwEOF1c3ZSQHJJ3JdotIQtb1ZA1EsX7Z3s=; b=bKBHwo0JCv5k9xdU
	jpyA8hLiZ3FPNNG7U+04ow1LbPkBCz/tKkWGYC6sfxOUA0J2FN4BMfU3+9bIYM+W
	sjmkazAXGQFdQB9ZUqeU1qg9HJl5sV+RnIA/hAl9UF4IKDySYNInitzi8v4n+FSs
	nvDBZfoWs1IkKs/CDJ8C9xX2VMHft4LvboNmCYz8UjE5PPq9rUefde5+fngl4Dr1
	+vdAQbHtjWVnW02UdrX5Ks3rwxkiMDk+oL/phcRHOVZcZ7HzIiFxtfFNGazg5t2n
	LP/69W5mecGjuMp3rMCrxg6aUQwg3Tld/QnjB7DO8YJowEuats0/DoQ0hGP//lqS
	+g88Fw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44y65xxf1c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 20:36:25 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c097c2e602so96241585a.3
        for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 12:36:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740429384; x=1741034184;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4tOgVvKsxWwEOF1c3ZSQHJJ3JdotIQtb1ZA1EsX7Z3s=;
        b=Gx0zdVP4hKPEx0hVxsnouPbpBYtXDaQalurOjVXpFlZQz6Palx76XJsJIjNI9QGWJy
         w77EhQJkQzpdDl1b7v5IJjvirULFtMoeswbsjMpRZxlz+UbxnNYMfaMsyQI0M5Xz/4K6
         oDSU+hck+wpZ/iHzd38N5v2h5tiC1Q38MqxhJCKQoiIGn7HfdgdMIChc6VXeacBXKp7Y
         fIww1FRZhLdVm8+wj7d59ZwmJVdKDMMXlHVBNMcfsU2BMGTvUXRYkWM4K53OYWsEB64w
         LMX8HxDrv9KqWGqt4AEwMWPKfMzATysLEkGQYyhLkzJLDIKIHzAa0XpLBL5Ecgz2Ue3K
         4MVg==
X-Forwarded-Encrypted: i=1; AJvYcCWvv4YU/1ecBrAPflLZCRQOme73/LJKXhEBq5UcAtkvsGwmGLpl6u8hbZaGdQz+b3dEXmRLxzaDmrpo@vger.kernel.org
X-Gm-Message-State: AOJu0YwkJsGavOEo3YJFErglCt4Ydjf6J0+ztkXWiIRdY3hBbcm8lvV8
	y0beltQFPgQ/FDo7NjhjAdfl+lK1HUB4aBMgX5m9FvC0lk0TsxI/YzGEbaCET9wqx52iVPm266C
	tvoBjaBMoq4xpONGIifCmTeFB+7S2V3VT/VYW7lnO6KeyWTUmae0xmWZOMB5K
X-Gm-Gg: ASbGnctj/MUqfpvyJ0FnTWEP/Zgy9Oa94nXcD5OFuyHMO6kDrxJeij/u9sb6Zo4r9bM
	nPPPQsxNR/F1kWBChNhNTrmr7Lv309shXh3T2d1pvkonCHtywtnewGAs+RoVZ87dYQPSk/UiEx5
	whY120A6v9znKTZ95t9lLjy2bQjRQEVUKBgOstAUednhkJL4VOEy8Dx2l32W9wuXxEgjdXRLJrC
	zjZc0yTaLTRMFm+k9FfySnTKxtma70vpxo9XuqlA1C1Oiuf8Z1zDUJxD+p3oDXIXNG2SJgtsSOq
	rqeU6DE1RUlKHWY5B27jWtIhOjGPvhs4x6kM1GD/Spp/4JTurcZMxTBVxsyKNOxz0YHWCQ==
X-Received: by 2002:a05:6214:300e:b0:6e1:8300:54dd with SMTP id 6a1803df08f44-6e6ae7f3e05mr73462576d6.3.1740429383311;
        Mon, 24 Feb 2025 12:36:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHsC1gRy/skFV1LRBlwOrK8U0hR8g3pgyqbqXMuy5mkyw16Vqh1ciJdH7RJP6yUYcsCpJE3fg==
X-Received: by 2002:a05:6214:300e:b0:6e1:8300:54dd with SMTP id 6a1803df08f44-6e6ae7f3e05mr73462386d6.3.1740429382861;
        Mon, 24 Feb 2025 12:36:22 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e462d92521sm113894a12.81.2025.02.24.12.36.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2025 12:36:21 -0800 (PST)
Message-ID: <6980c805-92b8-4011-af94-a701a8218548@oss.qualcomm.com>
Date: Mon, 24 Feb 2025 21:36:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/3] arm64: dts: qcom: ipq9574: Add SPI nand support
To: Md Sadre Alam <quic_mdalam@quicinc.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250224113742.2829545-1-quic_mdalam@quicinc.com>
 <20250224113742.2829545-2-quic_mdalam@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250224113742.2829545-2-quic_mdalam@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: BDkZN2VhTRhW0oHISvE-P3Jqz3fJRYUl
X-Proofpoint-ORIG-GUID: BDkZN2VhTRhW0oHISvE-P3Jqz3fJRYUl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-24_10,2025-02-24_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 spamscore=0
 bulkscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0 malwarescore=0
 priorityscore=1501 adultscore=0 mlxlogscore=872 impostorscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502240132

On 24.02.2025 12:37 PM, Md Sadre Alam wrote:
> Add SPI NAND support for ipq9574 SoC.
> 
> Signed-off-by: Md Sadre Alam <quic_mdalam@quicinc.com>
> ---
> * Moved changes in ipq9574-rdp-common.dtsi to separate patch
> 
> * Prefixed zero for reg address in qpic_bam and qpic_nand
> 
> * For full change history, please refer to https://lore.kernel.org/linux-arm-msm/20241120091507.1404368-8-quic_mdalam@quicinc.com/
> ---
>  arch/arm64/boot/dts/qcom/ipq9574.dtsi | 28 +++++++++++++++++++++++++++
>  1 file changed, 28 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> index 942290028972..acbcf507adef 100644
> --- a/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> @@ -447,6 +447,34 @@ tcsr: syscon@1937000 {
>  			reg = <0x01937000 0x21000>;
>  		};
>  
> +		qpic_bam: dma-controller@7984000 {
> +			compatible = "qcom,bam-v1.7.0";

v1.7.4

> +			reg = <0x07984000 0x1c000>;
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
> +			reg = <0x079b0000 0x10000>;
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

Please make clock-names & dma-names a vertical list, like clocks and dmas
and shift the nodes so that they're sorted by address

Konrad

