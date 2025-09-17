Return-Path: <devicetree+bounces-218248-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ACB5B7EBDF
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 14:58:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3D389582FCC
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 08:07:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3313B306487;
	Wed, 17 Sep 2025 08:07:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MIaj6d43"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C01F2303A23
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 08:06:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758096421; cv=none; b=iBFOmOK0PxeiXLSxuoFjZpR9+4MESqZEgK7PZZyWF9F8rbA9lxJQSXGi0kUAKzaEHpIPgWXuB1DOjegb9oCW+GQ+SWPidLDEhQkTzP8qKdUv4k6okpXxl4BkCQUh3VQPEBb/G6zcleDOwovDK4J4VOoXjn2+pGR3hlvkD8F0tBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758096421; c=relaxed/simple;
	bh=99E/Q8dl1z6a1fSwTsa33XnQl0e7pN1bDPF/vKPOGmU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ncJEdAPtDqpTTIQyZEX+KW7fNZXLv0TJAIKpgYrOO/CILGCi5RMr6TDtlPSxMjKHDWA3yoBW88Vwim89wHmpNwqwQRqcrOZkM3/ParPZTtlANsnorzNw7p4wBI1io7XR6rvDwl8K5K2B3I+oyBNaw2rWeZxED8fnpRWOfb6lND0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MIaj6d43; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58H5Qvi8013913
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 08:06:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	c4+1T7hrQrCbgIKXWS+wJqveQlpBa3wYZt9yOaHwkvU=; b=MIaj6d43UK9ZQSx8
	agM81e5wqoSWBC63D43WjsF1gm5IB6k/xb2BpVZo02QhE//HDj4YZ0HW4pKmu6K4
	aBDGT3bH/DZIWE5OLCyG7elAqlIIaR9pO5kL+zq2+Uaq/raR82fc0MvpWJOAC/A6
	I6qnI2kA6wvFxm+Iz42kP1C15JzKsqH5jKlFIvI7h7hhWtNLPcMcTdpZbXLQADtS
	y/3kf/z0catX7heqa8vF7T0miUEZknxZ99Sc7Jhry8IApYEKsozHOqTGI8vkraD3
	hrseruWwNV7XY02zlHATrDUAUvvXqkTdl/8tkjyZMWyc6W4rbvXFNx9vEo/cA8yH
	w/bkWQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fxyhhj1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 08:06:58 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2681623f927so4243515ad.0
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 01:06:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758096417; x=1758701217;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=c4+1T7hrQrCbgIKXWS+wJqveQlpBa3wYZt9yOaHwkvU=;
        b=XQf9FNGAz7+uAu/XJrKS72vMX8l+Pp/6R9U2gEVjfcIZ9/F7hXeoLDSC5ceOFePksl
         hXxDOCIzmJ2xOQK0DcP+ZZCwRB8856zZH3Ri2Z7qM2/jTySFauFOp7MVjvCvhOV552Az
         WrhkYDpYWJXbSPK4/HO8AicDEfYbpGWDK6jbuSvzQqOhQKk7m2tSvVEGskIhFt9V1sXF
         WjgxNNqnhh0gHLt+KS9BZ/wPZmhNLz7NELfqbscph8iIkQypu0yYtLh+Vwrdod+mB6WN
         pMEPaNio76jr4/DxoGteyNg8KaZPLGylXwHLE+rJCo8d/Ax1Es5gsLlf63LGC/LXL0+U
         MysQ==
X-Forwarded-Encrypted: i=1; AJvYcCUuPm4OTJsUVnrMsOD+AvYskuq+5t7bvxQIpHB1k2oXXkdqRQqmfIr/ysulWVjYlmSCEwGT3ghMm/sP@vger.kernel.org
X-Gm-Message-State: AOJu0Yzkx8Eh5UXjt6t7T+4Wb6YC2eLC0I9YUmIi65Z6IpgcvC3cwdx/
	d6kFDJ1RFgrKEoxYEU+m0bi3VJraTEdk21HLlTl1VfKIqFEwma8oCeOXIJj2KXQpcrCZpPlQUef
	QZ9NTxQVJuCkYhZYSnxqrh8U42GZXfu3cXGsdlGS+YDZLGS7eXfLgzoFis9dcUTOV
X-Gm-Gg: ASbGncs3g7Vwx59nkdu2LoNOj9uDaFWy6csvpzateyq0j8Hhb5J0/z2Q1EI3CO+J0iQ
	YilA8cFRSpNJ72k62g7s4/pUU1drTM83PVbJPJj3EUIoV59echrM0DmPVmUe34bEnBVvGc6rlPI
	L80FBSsSL+MCOpYWzH5yVfLyWQGGTl6vsxMonnOHGFCyXbJFgCJ2gFLdzklLdrVO+STABmlqhyH
	4Xq1Gnsvmai8WW9LkJH6RGazbm+Bm+7xzoFxGvNw/OQ1o8gXLGfvbTbXq2o5BVMH6pLRf+hA4nZ
	EtoeHJwmSoNxlnxU8VaHcn47lEOPUcf93U2T0AaqnqSdTr95bHReUaQ=
X-Received: by 2002:a17:903:8ce:b0:24b:1609:5e2b with SMTP id d9443c01a7336-268119b3b6emr16788495ad.5.1758096417031;
        Wed, 17 Sep 2025 01:06:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE5UMbMaWJIzZ57Vql1tJjVuAN5j2QcuMqGy0y+1atO6oPbE3RHp/4BjwtArBerLWUYCCdoJg==
X-Received: by 2002:a17:903:8ce:b0:24b:1609:5e2b with SMTP id d9443c01a7336-268119b3b6emr16788085ad.5.1758096416585;
        Wed, 17 Sep 2025 01:06:56 -0700 (PDT)
Received: from work ([120.60.54.163])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-32ee223f2ecsm1177088a91.18.2025.09.17.01.06.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Sep 2025 01:06:56 -0700 (PDT)
Date: Wed, 17 Sep 2025 13:36:47 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
To: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>, kernel@oss.qualcomm.com,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        netdev@vger.kernel.org, linux-i2c@vger.kernel.org,
        Sushrut Shree Trivedi <quic_sushruts@quicinc.com>
Subject: Re: [PATCH v5 05/10] arm64: dts: qcom: lemans-evk: Enable PCIe
 support
Message-ID: <h2t7ajhtyq3vivbw67tifrn73i4zisicoktsgab76zptxre6at@vl2q4d6i3lms>
References: <20250916-lemans-evk-bu-v5-0-53d7d206669d@oss.qualcomm.com>
 <20250916-lemans-evk-bu-v5-5-53d7d206669d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250916-lemans-evk-bu-v5-5-53d7d206669d@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=e50GSbp/ c=1 sm=1 tr=0 ts=68ca6c22 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=zfGe9qrPU0lfmTaoSSnydg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=qGp1FZVzPMbQ2NxWyGYA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 4ObIMvNwRdiuTD7AWWO5VmTJN682gO8f
X-Proofpoint-ORIG-GUID: 4ObIMvNwRdiuTD7AWWO5VmTJN682gO8f
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX6oVhTeRV3ddb
 860w+hJybvOhUs3R6hx0Vckaahw5BolnM/KqSSpQMOB17Y/nKd57JfgZrG6xVcXPalpS0xBfwpA
 3UngVZXbV7tK5ice44XWO0cdwonDl+oa3yGazoxhsq/V+dJRse9TLNy3CCxisN4bax0rsnXWVyb
 11AYrutM4WfQ6nplQZU00yViquHc99dzLSfRl9W2RhUcWLIFlJIGD/ponnj4a0Kky/3zW6o4gXU
 urGwO9NZDtEbzpVKCf8nll+mCKD006a+0XGye5FlvCU82+/oVHRIFPy9NqaGKtHY1vyRe4l9/PI
 teepMfl0hvtFU95AxXRUEMNbwnenMAU+u8cPP5IYSQ+iL3khTBoIdfEQzTLvWBic2V1nfgprzA1
 EcWJuqcC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-17_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 clxscore=1015 spamscore=0 priorityscore=1501
 phishscore=0 malwarescore=0 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509160202

On Tue, Sep 16, 2025 at 04:16:53PM GMT, Wasim Nazir wrote:
> From: Sushrut Shree Trivedi <quic_sushruts@quicinc.com>
> 
> Enable PCIe0 and PCIe1 along with the respective phy-nodes.
> 
> PCIe0 is routed to an m.2 E key connector on the mainboard for wifi
> attaches while PCIe1 routes to a standard PCIe x4 expansion slot.
> 

Where did you define the supply for M.2 connector? We don't have a proper
binding for M.2 today, but atleast the supply should be modeled as a fixed
regulator with EN GPIOs as like other boards.

- Mani

> Signed-off-by: Sushrut Shree Trivedi <quic_sushruts@quicinc.com>
> Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/lemans-evk.dts | 82 +++++++++++++++++++++++++++++++++
>  1 file changed, 82 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
> index 97428d9e3e41..99400ff12cfd 100644
> --- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
> +++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
> @@ -431,6 +431,40 @@ &mdss0_dp1_phy {
>  	status = "okay";
>  };
>  
> +&pcie0 {
> +	perst-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
> +	wake-gpios = <&tlmm 0 GPIO_ACTIVE_HIGH>;
> +
> +	pinctrl-0 = <&pcie0_default_state>;
> +	pinctrl-names = "default";
> +
> +	status = "okay";
> +};
> +
> +&pcie0_phy {
> +	vdda-phy-supply = <&vreg_l5a>;
> +	vdda-pll-supply = <&vreg_l1c>;
> +
> +	status = "okay";
> +};
> +
> +&pcie1 {
> +	perst-gpios = <&tlmm 4 GPIO_ACTIVE_LOW>;
> +	wake-gpios = <&tlmm 5 GPIO_ACTIVE_HIGH>;
> +
> +	pinctrl-0 = <&pcie1_default_state>;
> +	pinctrl-names = "default";
> +
> +	status = "okay";
> +};
> +
> +&pcie1_phy {
> +	vdda-phy-supply = <&vreg_l5a>;
> +	vdda-pll-supply = <&vreg_l1c>;
> +
> +	status = "okay";
> +};
> +
>  &qupv3_id_0 {
>  	status = "okay";
>  };
> @@ -447,6 +481,54 @@ &sleep_clk {
>  	clock-frequency = <32768>;
>  };
>  
> +&tlmm {
> +	pcie0_default_state: pcie0-default-state {
> +		clkreq-pins {
> +			pins = "gpio1";
> +			function = "pcie0_clkreq";
> +			drive-strength = <2>;
> +			bias-pull-up;
> +		};
> +
> +		perst-pins {
> +			pins = "gpio2";
> +			function = "gpio";
> +			drive-strength = <2>;
> +			bias-pull-up;
> +		};
> +
> +		wake-pins {
> +			pins = "gpio0";
> +			function = "gpio";
> +			drive-strength = <2>;
> +			bias-pull-up;
> +		};
> +	};
> +
> +	pcie1_default_state: pcie1-default-state {
> +		clkreq-pins {
> +			pins = "gpio3";
> +			function = "pcie1_clkreq";
> +			drive-strength = <2>;
> +			bias-pull-up;
> +		};
> +
> +		perst-pins {
> +			pins = "gpio4";
> +			function = "gpio";
> +			drive-strength = <2>;
> +			bias-pull-up;
> +		};
> +
> +		wake-pins {
> +			pins = "gpio5";
> +			function = "gpio";
> +			drive-strength = <2>;
> +			bias-pull-up;
> +		};
> +	};
> +};
> +
>  &uart10 {
>  	compatible = "qcom,geni-debug-uart";
>  	pinctrl-0 = <&qup_uart10_default>;
> 
> -- 
> 2.51.0
> 

-- 
மணிவண்ணன் சதாசிவம்

