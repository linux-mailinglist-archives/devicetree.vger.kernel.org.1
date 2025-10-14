Return-Path: <devicetree+bounces-226372-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 373A1BD777F
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 07:43:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DDC533B83F6
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 05:43:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F0E8299948;
	Tue, 14 Oct 2025 05:43:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TouYZXAU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7B101C1AAA
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760420635; cv=none; b=ijFlYHLj/Af2XJZnLx+fmCgwZdbkvPHj1CM4qiohRfo7ndkPhUq+VpHshwf5b85gmyMrRN+93LW0VedsOa7VvWKHD83YOCD0kzF9JD6O9lJAk4NiIGKBLfhysr0ZyrJtHT69kmozhuKgpiBIn5tZfsp8aagIBV4HXT+qkGLUiNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760420635; c=relaxed/simple;
	bh=E9ngMPpY0495YcRNIkMm3Z3r/sRF71WMCHTr09dpriw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=C4PdoQ+LovVtucgEV89Er3jI62MQN8ccTCcVm97lPsEaqurHiy8/Ca1ToIOyk2QUtJyaUKq4NADDa8u9ExRgLFxE5gVY0Gdq0ojitoliuSKyEWOOmV1ZQw4ZUg769WD77Pd+Xv3GrNq3C27AZUGmkPF7DtzVAkbJK4/QB/7vtik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TouYZXAU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59DHDGha021072
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 05:43:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9D4EEKufXMXkKelCHysJYJduF8pemtJ6oblHi3EHsuE=; b=TouYZXAULvQYEuTq
	NdqyM1jsslyIuxM/et06k9vIoAeQw3vETY4vbTQ1+SKOlmVQXk/ZJ33Bl9+fE1H4
	HWyMgO4vyqIukO6Dc+hPMmQlJpefIpwcHz/Cn04vCQTqOwTUcWb5zt7TxrIueYre
	RDJtrBAiZfxY6Us3A9QSslwzyqXlzYf46LSd/xFTy/5bF7S04Mdv6y+fB/5C3JEz
	kYsngKLZvXkOmiGcKK3nlCh2oI/7f/qIyg6lddLh9PJ2BIC5PxT0646Cv38KnvMa
	XJnzuHUbw6JtMJtKkD0cBrroOz08VN8Rh2REMp6fZ1/er8oybTwuJWjFlcwCgGm4
	UuN/Qw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qg0by89m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 05:43:53 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-32ee4998c50so9209470a91.3
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 22:43:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760420632; x=1761025432;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9D4EEKufXMXkKelCHysJYJduF8pemtJ6oblHi3EHsuE=;
        b=Qe16rDHuW1p3Uf/3m7aodF2a/YO1RK0TKHuPIOfm+Fp/EUi1MWHzVZWZOb6vW9FHGD
         LF9ubsOBHaMSuw2+OypW872fsVKJhxR/KzHr0pMrdNmbwyrWkz9XHXHgwzDBWfHTxGuM
         c/wENSYwsJNuXxS2tF+9pESWka8EQNQEyPAdZ3ctgYb9XMRBUH3SYDJK3w+5JvE2NkZk
         Pmelh9MsnEsN9AolKcZ9GfJWdYTyGfV7gzdMZukI8MkjV0kqHO4gmXbpmydFVK6K2juL
         zYqnYwjQw81ASduBaRx2vTHdfdN5aTzeHtAKViCyaCp4hMYmBjDBGF4JRDRI7NX92LTp
         uJYA==
X-Forwarded-Encrypted: i=1; AJvYcCVSHARdyo+/BUaZK75uVQLci7wv+u0pikrHh0B2Mnsz09iLFjntSwy3apYUcKIsq+V4Q7iPSgef34Jt@vger.kernel.org
X-Gm-Message-State: AOJu0Yyemym/6qSpLbDcidy/nsHCgIiPwQYy2dWXkwMKVgsuOqEqDI6V
	GAktxWTI1JapD9EyyffM6GiS9WTKm5T3/etjD8FI4qwa46f3b9KTEF5ROfhZCvs56KzN1GEE4P1
	M5/tQgzNzxieQ129pNK/lzHZDl5Pvq2Z+qZcD7eXcnG3XxorUpL3kILQFefBMjpqc
X-Gm-Gg: ASbGncv7ECtyyqCuC+eGmALzFe8P+yxghvZbtjzHRyo2N9c0z/pDpm2mibHK2a669sz
	Yvcy0CsA60BIP3oVaEn1pO/IzCVYTUfXis0lBrJ97ceKaja1yZNUIAVNNpGn6TEcXWeh6R7zQ8V
	jysleZDBgbIyPqlF4R/kLGtPZrvDpF9IF0RfcwxWWlzMcs5qZ+6CRNLg02pT9zOdDEP0aPTO7VP
	9W41D01H8IThh6R2B72FcsQ2v6jW1iqieWZUWLULPOa3k8uJV/R7wJsPT4QAK6xQVDYrn+ZM8BX
	H27NIaQoxujCZ8GVpppEdeQREVX1+++WWaJJGw1m0RvSYWXbGcbTFk8z06vD7n8eXaRuGyqshA=
	=
X-Received: by 2002:a17:90a:e7c7:b0:32d:601d:f718 with SMTP id 98e67ed59e1d1-33b51393502mr30831471a91.31.1760420632535;
        Mon, 13 Oct 2025 22:43:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH3trdEiZsOPClRk6Dsifi/viN4KHN7PYNnvGAEG9JdzBt9jMbgdpd2Oj5WQlapWC0s77Wzcw==
X-Received: by 2002:a17:90a:e7c7:b0:32d:601d:f718 with SMTP id 98e67ed59e1d1-33b51393502mr30831433a91.31.1760420632058;
        Mon, 13 Oct 2025 22:43:52 -0700 (PDT)
Received: from [10.218.42.132] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b678df48a83sm11470944a12.31.2025.10.13.22.43.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Oct 2025 22:43:51 -0700 (PDT)
Message-ID: <cd84f10e-c264-43fb-9e3d-20338d85de19@oss.qualcomm.com>
Date: Tue, 14 Oct 2025 11:13:42 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 3/4] arm64: dts: qcom: Add PCIe 3 support for
 HAMOA-IOT-SOM platform
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, jingoohan1@gmail.com, mani@kernel.org,
        lpieralisi@kernel.org, kwilczynski@kernel.org, bhelgaas@google.com,
        johan+linaro@kernel.org, vkoul@kernel.org, kishon@kernel.org,
        neil.armstrong@linaro.org, abel.vesa@linaro.org, kw@linux.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
References: <20250922075509.3288419-1-ziyue.zhang@oss.qualcomm.com>
 <20250922075509.3288419-4-ziyue.zhang@oss.qualcomm.com>
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <20250922075509.3288419-4-ziyue.zhang@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: Nf07tVjdSvTCgX6_q8OmAGpNcEXaKpQe
X-Proofpoint-ORIG-GUID: Nf07tVjdSvTCgX6_q8OmAGpNcEXaKpQe
X-Authority-Analysis: v=2.4 cv=eaIwvrEH c=1 sm=1 tr=0 ts=68ede319 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=kM70mR4GnouSU5tgWfoA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyMiBTYWx0ZWRfXzwYfanwDZSdo
 n7sRnIQAZn4p6icum7Vq8vqRWehmiUlfL4VYmysQQoZcprAKEzkcoI00GCQ0BC1L62Sy9y7Xmj7
 v48YVDu1Jow2due0Iha+WGijn7ypQeJGr982HYTQBC3SFleEXDUGJPzFkEvYEQSyskGBB3tiBO/
 n751g37BPVXFECxbzrNd+gHHtSQGGQG8Sm6QqSig92l7AFyMp528o0HfzCh+DkPqtpiYaZjMxwM
 syCjPU3pqWfei+0upKuJAbDNtd13V4FYpQPyeqpjnmqt4p7DDvvsLBPmr5ULp74JTJfySGEULYH
 SQ6/RobhYU6xFtbH2uJl8CllIh3THQHek9KFhXNRzMNXJ3KY0eQTfq4UEByvEiIUcLxVnp6I1Rt
 ngH4ECTHMjsRxERY1mqanEJ1MaaAjA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_09,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 spamscore=0 impostorscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110022



On 9/22/2025 1:25 PM, Ziyue Zhang wrote:
> Update the HAMOA-IOT-SOM device tree to enable PCIe 3 support. Add perst
> wake and clkreq sideband signals and required regulators in PCIe3
> controller and PHY device tree node.
> 
> Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com
> ---
>   arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi | 70 +++++++++++++++++++++
>   1 file changed, 70 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi b/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
> index 0c8ae34c1f37..7486204a4a46 100644
> --- a/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
> +++ b/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
> @@ -390,6 +390,53 @@ &gpu_zap_shader {
>   	firmware-name = "qcom/x1e80100/gen70500_zap.mbn";
>   };
>   
> +&pm8550ve_8_gpios {
> +	pcie_x8_12v: pcie-12v-default-state {
> +		pins = "gpio8";
> +		function = "normal";
> +		output-enable;
> +		output-high;
> +		bias-pull-down;
> +		power-source = <0>;
> +	};
> +};
> +
> +&pmc8380_3_gpios {
> +	pm_sde7_aux_3p3_en: pcie-aux-3p3-default-state {
> +		pins = "gpio8";
> +		function = "normal";
> +		output-enable;
> +		output-high;
> +		bias-pull-down;
> +		power-source = <0>;
> +	};
> +
> +	pm_sde7_main_3p3_en: pcie-main-3p3-default-state {
> +		pins = "gpio6";
> +		function = "normal";
> +		output-enable;
> +		output-high;
> +		bias-pull-down;
> +		power-source = <0>;
> +	};
> +};
Either squash patch 3/4 with 4/4 or move these pin configuration to
patch 4/4.

- Krishna Chaitanya.
> +
> +&pcie3 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie3_default>;
> +	perst-gpios = <&tlmm 143 GPIO_ACTIVE_LOW>;
> +	wake-gpios = <&tlmm 145 GPIO_ACTIVE_LOW>;
> +
> +	status = "okay";
> +};
> +
> +&pcie3_phy {
> +	vdda-phy-supply = <&vreg_l3c_0p8>;
> +	vdda-pll-supply = <&vreg_l3e_1p2>;
> +
> +	status = "okay";
> +};
> +
>   &pcie4 {
>   	perst-gpios = <&tlmm 146 GPIO_ACTIVE_LOW>;
>   	wake-gpios = <&tlmm 148 GPIO_ACTIVE_LOW>;
> @@ -471,6 +518,29 @@ &tlmm {
>   	gpio-reserved-ranges = <34 2>, /* TPM LP & INT */
>   			       <44 4>; /* SPI (TPM) */
>   
> +	pcie3_default: pcie3-default-state {
> +		clkreq-n-pins {
> +			pins = "gpio144";
> +			function = "pcie3_clk";
> +			drive-strength = <2>;
> +			bias-pull-up;
> +		};
> +
> +		perst-n-pins {
> +			pins = "gpio143";
> +			function = "gpio";
> +			drive-strength = <2>;
> +			bias-pull-down;
> +		};
> +
> +		wake-n-pins {
> +			pins = "gpio145";
> +			function = "gpio";
> +			drive-strength = <2>;
> +			bias-pull-up;
> +		};
> +	};
> +
>   	pcie4_default: pcie4-default-state {
>   		clkreq-n-pins {
>   			pins = "gpio147";

