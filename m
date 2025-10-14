Return-Path: <devicetree+bounces-226369-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 94287BD7758
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 07:39:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5F4284EEAE7
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 05:39:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6096299943;
	Tue, 14 Oct 2025 05:39:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TK3lcttp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394A42749CB
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 05:39:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760420361; cv=none; b=BOkixs+vNYljgGQdSA65XR7HCi/9N/mZheyWGlOFf5XNH+DJo948VQX9FCSt4avpNjl4scoxzAyyiwavA+eFZGmlMwjEIQuVX3LWj/Z59upThJQDRm+p+LsGxJjIk2KWwp9JntutA5TLPIEyxIj6rixAkUbvOTG88ITn82uuo2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760420361; c=relaxed/simple;
	bh=7KgKJc1vvZ2vlF4uE4gLCM9HlQYZ30Nnc5tPPVSSt3w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oMPYp9sh8Q58I6GnIamM32BKjhsRnTx5xQcG0+Z6mfj+FvUi6ghmS0ypi+wLOHgwOgAYd3sBh/46IR3aFy6SpjQarTwm6xwl4Avpag2kzEspPQlMAATPR5Sr7VQeDjyUXlNtzIDG2MGdyWewwM9mOrgN63cCjP01iKFtda501xA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TK3lcttp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59DHD8ZZ031148
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 05:39:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1oMp6ReUGAkcuBWeYGGdepJL5VR/gD4ESMqxea/8SyE=; b=TK3lcttpFIRz3G+U
	v/MwFeIIk6gv4Ykggf78sHebrlnhp5UIjF9NTTQRQfdq5IvFE1DuAGhzB3rMMWRy
	bA9pgKfoB15sDv6UBsN0gVrZd2vFwlNVt1Basj8LD1ZVj9/WlytwEx3xtAk/Wa6D
	jDC+XClOjyXkK0GXgf9S2IcpGgjZaeo1mEEP9GjhCBvyiFDiztPma9lUy4KSdNaV
	DRv5ydspvetHfgMOdwmWTL+1yJJ61q1nDIe2468fbILr0DxTu2V/NDoWvYIn8axx
	Khz8hyYiXqghkYGhsBOzSwaiEdbjz6Wo1ycSa0nmukVHCM0qzviiqRt23Itcwsct
	IpGONg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qgdfy4r1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 05:39:19 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-28bd8b3fa67so81214225ad.2
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 22:39:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760420358; x=1761025158;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1oMp6ReUGAkcuBWeYGGdepJL5VR/gD4ESMqxea/8SyE=;
        b=C4OSUzsSL3mk/lrvGDcNMBRSHXGga6jvGnCTL2mTJD/e47OySd2vBJ5ZrE6Q4pgqME
         5jnfH4TIBcBsZbD4fnbZgXqOvXHbo5kv99tAWOoKXEeEU+QgzNDvZQRbEGUtnsV2yDEZ
         ou/Wt78Wf5+eBaEJov8fm1D7QT2Kc7pODdl+neU6+bKoUzy38mns9IlgxgD5VCvHpvr3
         xugJ57Ci/8koD3ptDtmfd0QzZ5od6anPRqEt+y+sELfGlZwz1Vzo25vyo3jicVmpcFgR
         lVTr5sW0/OSiIpbn/0zWQPAec7dWltKFE++U5I19zi5Upx0RPN5xAo2/zrC9Jt4XgSNC
         NDtA==
X-Forwarded-Encrypted: i=1; AJvYcCWn4h4cnM5ucJPao+G49EROr0GdTjuBv8N+v7Ew9amuOrBxzj3CYm9wXhdH8hWX3dWjmDnPczF88tWu@vger.kernel.org
X-Gm-Message-State: AOJu0YxlvEARpJRo3eZ5PcefD0ry5X4KxT8ijp60q3eaktn+8+bvcYHB
	7YVqyAcRR6dDwnH8pjMOZGHdBK+g20NqRibh+kEV1wpARdS+rAWYprDowKAgld8DptS1CdomQov
	FGRiMHoVQbflqDYQpfyfvlImJYIMbVWQRVVqL+35Fs9W1aCaaowDgQ5PHrJkWcPGX
X-Gm-Gg: ASbGncusliktS5psBkfSO+cWy7n7PpDUz0wM3WSHk8cjpEiKFAWXnug+epjwAssYeK1
	WTtD/ZvTEEtytxlTPL44ORn4hwoWM/GGyb7gzCF1ac1mHhvcJzi1eouaP2YAiyyTeJlvlCOF5eg
	JYU3yCnk/8V9lgajcU6XbdVatEHnrp8xgNaWos8ORg1Iz5Zv31WA8jRgap7rFDW+8TXQh0HF9HP
	fCevI5zDXiZAp6mnT7cuFD92W43LFAA4cw4DGyBHZ+XDB2UDwd2Ms0qbCMhmSEG3VXmQJyVTgYt
	YgoMRlIusl//9Fg7IygFh2+sRvR2EkLJBdTrGDnoA8gBiHmQuSdlCx186y0sALZ0pSMOaVO6eQ=
	=
X-Received: by 2002:a17:902:ce88:b0:26a:8171:daf7 with SMTP id d9443c01a7336-2902723f086mr388952455ad.16.1760420358149;
        Mon, 13 Oct 2025 22:39:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGzNWsTvFSwkJcmErpReie+BnX+Tvcx5O8Z7ZWO1k+OYQIw6XA2734NpxW3Pui5uE9foskOWQ==
X-Received: by 2002:a17:902:ce88:b0:26a:8171:daf7 with SMTP id d9443c01a7336-2902723f086mr388951955ad.16.1760420357620;
        Mon, 13 Oct 2025 22:39:17 -0700 (PDT)
Received: from [10.218.42.132] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034f4ae6csm151903735ad.108.2025.10.13.22.39.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Oct 2025 22:39:17 -0700 (PDT)
Message-ID: <e146e351-ec42-4980-b41e-56bfd7dcc0fd@oss.qualcomm.com>
Date: Tue, 14 Oct 2025 11:09:08 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/4] arm64: dts: qcom: Add PCIe 5 support for
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
 <20250922075509.3288419-2-ziyue.zhang@oss.qualcomm.com>
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <20250922075509.3288419-2-ziyue.zhang@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyNSBTYWx0ZWRfXx9fWghmc0AD6
 uQWWjMf2Wn7Q2pEEYEkDpQXBI2KGGuaJFhakbHopuHUluCQ8Xd0nNQxk6yBw0Hq0hoIbD1VBYOm
 qReK0MEVNks1iTM7yy2NWAgEEqVgMPSW1nd2UXGa28ZXer+g07NvG/1YPISAf4UnD6dhLt+exqG
 JHMOXk4/2nrv7w9jZvE8R0jPo020X8JIVISyNr9r6CjpCj4kSqgtaSHSzFt43wuY71vtHcEhoku
 ZcurO81ZvFBAkbFY1kCqT0KWMKe3QDzF/BBseVKL4rWgmtZQzMPG3t8+kKQAb813q8kkoaJKZiy
 jMvHo+LhGagVX1ZnK4qZzBRVIHkGglVqkxRgpdg6dTML7Vi1Ic4tSj3pcaYjbJ3GgGb/NnjgQen
 U+yUzo4rMx4khSB4cIDgF4Iahrse4Q==
X-Proofpoint-GUID: nXIvid2E1VuYgyFC63AjU4HcD3Bowjrm
X-Proofpoint-ORIG-GUID: nXIvid2E1VuYgyFC63AjU4HcD3Bowjrm
X-Authority-Analysis: v=2.4 cv=J4ynLQnS c=1 sm=1 tr=0 ts=68ede207 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=zv_5qE797hUBxoToDSIA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_09,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 adultscore=0
 bulkscore=0 suspectscore=0 clxscore=1015 phishscore=0 spamscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110025



On 9/22/2025 1:25 PM, Ziyue Zhang wrote:
> Update the HAMOA-IOT-SOM device tree to enable PCIe 5 support. Add perst
> wake and clkreq sideband signals and required regulators in  PCIe5
> controller and PHY device tree node.
> 
> Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Reviewed-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>

- Krishna Chaitanya.
> ---
>   arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi | 40 +++++++++++++++++++++
>   1 file changed, 40 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi b/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
> index 1aead50b8920..0c8ae34c1f37 100644
> --- a/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
> +++ b/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
> @@ -407,6 +407,23 @@ &pcie4_phy {
>   	status = "okay";
>   };
>   
> +&pcie5 {
> +	perst-gpios = <&tlmm 149 GPIO_ACTIVE_LOW>;
> +	wake-gpios = <&tlmm 151 GPIO_ACTIVE_LOW>;
> +
> +	pinctrl-0 = <&pcie5_default>;
> +	pinctrl-names = "default";
> +
> +	status = "okay";
> +};
> +
> +&pcie5_phy {
> +	vdda-phy-supply = <&vreg_l3i_0p8>;
> +	vdda-pll-supply = <&vreg_l3e_1p2>;
> +
> +	status = "okay";
> +};
> +
>   &pcie6a {
>   	perst-gpios = <&tlmm 152 GPIO_ACTIVE_LOW>;
>   	wake-gpios = <&tlmm 154 GPIO_ACTIVE_LOW>;
> @@ -477,6 +494,29 @@ wake-n-pins {
>   		};
>   	};
>   
> +	pcie5_default: pcie5-default-state {
> +		clkreq-n-pins {
> +			pins = "gpio150";
> +			function = "pcie5_clk";
> +			drive-strength = <2>;
> +			bias-pull-up;
> +		};
> +
> +		perst-n-pins {
> +			pins = "gpio149";
> +			function = "gpio";
> +			drive-strength = <2>;
> +			bias-disable;
> +		};
> +
> +		wake-n-pins {
> +			pins = "gpio151";
> +			function = "gpio";
> +			drive-strength = <2>;
> +			bias-pull-up;
> +		};
> +	};
> +
>   	pcie6a_default: pcie6a-default-state {
>   		clkreq-n-pins {
>   			pins = "gpio153";

