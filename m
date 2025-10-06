Return-Path: <devicetree+bounces-223834-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C3F34BBE0FB
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 14:41:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A19A63AE484
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 12:41:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DED5727FD56;
	Mon,  6 Oct 2025 12:41:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="T7ioULsY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 138ED26E70B
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 12:41:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759754486; cv=none; b=joJ7oeE3WofMYtxIYzji1vb0vVT1rLdCFDbuKRnBdXpphh2b4FVwfdwVjBs4JkazwmtP+RWShB+DwB+dsoD37vj9Ik48jOECCYiz66bSrCnZBEcLryZmZGrc1Qi+BhwDBZM3P6LxcOClZ8V2sNTZ+YTXDIOLlcr4et1Lsa6tnGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759754486; c=relaxed/simple;
	bh=0mkWvVdXxn2wUvjtU5oKLtZo4yzstBLNeZ/HFxFhqgM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gZUeUYl79FjZYVIYXwUSe7F+1eCxKmelcBakHDYtZE98BNdVifypj6/6+7jMFEDC18ZG+roix5caIG3bTUKDq+TJ4kxTIAzM+clphKSj/pc62BO+F/lgKopruouI/JqjF7rzpSXKC59QfI5hRImDiDGijieGffYCPZ89P3IPtSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=T7ioULsY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5962jUtY017673
	for <devicetree@vger.kernel.org>; Mon, 6 Oct 2025 12:41:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ylaB+oXrxe0+pgv6AwGh4kUHExSYxwOnq/WJa7AKAso=; b=T7ioULsYmZpcoJwl
	bC8S+pVrCYbMmhaPV6dFUQHJtctpi/LoYkP91rjmwV3BvKpciKUHkQubKkgV2ZmI
	8xQ3eWdI/uWlFja2MoprBXPKeC/TEywClVGLCw1eLKKa/JvkaENcBWTaTeDG4Lkq
	6uUIC/6LM2CWPdD7FbKkpYfUF5nbTmfq1W1e8NCXP4iybW5MuBHG7HAZN2whhD/D
	HbS1zNUTxUDReRQQ57CEkvlpNEJ7YlDp0V2N2FxCwt/8La4/VNMyB0mWT/IiU+VE
	RfBnfuMAWLb5z3cK4+WRNA6XPUqRKoWzTFgK5ri6TtV+X+LDcm3szTJlTteA17mn
	gvUP3w==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49juy6us3w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 12:41:23 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4dee3f74920so8407071cf.3
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 05:41:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759754483; x=1760359283;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ylaB+oXrxe0+pgv6AwGh4kUHExSYxwOnq/WJa7AKAso=;
        b=fNgyv+qXCxru323D1Q7K9rHd8+gmLv2zu8gwyGTh49rKkqryIrppo7o/jqL21gTkBW
         Wn8+OFwP/LARDQV+kVqVl49jHQYME8tgo4ykLcqi9naSyTQsDiNH/72cO3kso2pcp9wR
         32d5UugIJC7uOcbzq6AXnLQSqjKMWZLgJH1LNfhKqFLJujKyIIaVK6vpSj2LsHrX2/kE
         kv3Eq6Ev2ONRZIZoBcVEwzbr8Wq8L1I86epj0sv1MZhzjlB0x2cDPXqusUcgJaHV0fEX
         QNO/p4x2pU1eY9klQWTfHEMKL5rNeOoo7nR0bex06ihwMbOVmbt0thbHA84TQOTkOkpS
         UYUg==
X-Forwarded-Encrypted: i=1; AJvYcCWDMNd2v+mmEhQg4K6y+dt+GxvIVgkLLnJk3LXUE4RDM06gErnP34cRrZWIsyA+2A/XRsSAPIP5Y5yq@vger.kernel.org
X-Gm-Message-State: AOJu0Yx47tG/PWt9umYQsDdF+lbeOzMB4M922gv/WMJdhS9qWUqlLEui
	pfE2db5DE+7fJ9i8XAZX7BUE8PhsD1GvfWpeBADdNRWGWsw1z+XRfbFrcYdL2Tow8NMmjQXtafR
	LNFky8FTytgrInXipvf+Uhb38uGdT8M9V17mat/+W25oPkWWEr+l/YylcNJyM/F8ADxU8a6XC
X-Gm-Gg: ASbGncuELlT1CxxiCM0VfRz6W4G9knBCPKCYQJJ2A2NmxN2RcCWZoZAdXMr+LKHVnJn
	LphfTDj3aFCfLYvne/x5v94XzD1uTiHNtKCybyU3sN2MxsTJhIA9ceLqAYRqCQZv7WhkVDpumGc
	KfsfyqLhFJ4rScbA2HI9GSFAmgl/aLUpXFv0C9x9sGwPt4J+x/yI028DqHafMaO98o8tVGO2bBx
	dHNq+04Ty6UHlGKod6IoILGYzdilzKoK26dsiApTy0egp262tNtc/fOLEiFTMn21SpZ9PnzfDap
	242bjhtmY55GZ3aUomlPv/qJAgOXt0MyfGBkl0iyMRfYXqtpckeOnLo1o0Zyf8ADVKKGT5qpax2
	xdkKS9qJPxqcTaKR/f6EezQ1hIzM=
X-Received: by 2002:ac8:5f91:0:b0:4b7:aa56:c0f8 with SMTP id d75a77b69052e-4e576a4b14emr99167261cf.4.1759754482417;
        Mon, 06 Oct 2025 05:41:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGWf8WDHwf7+GFY86q3ArprOZHi6q5sn356YIXo0h3Tx0U51KUsNyxrt2pDL2G4L8m5exlggA==
X-Received: by 2002:ac8:5f91:0:b0:4b7:aa56:c0f8 with SMTP id d75a77b69052e-4e576a4b14emr99166921cf.4.1759754481760;
        Mon, 06 Oct 2025 05:41:21 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63788111f1fsm10279311a12.36.2025.10.06.05.41.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 05:41:21 -0700 (PDT)
Message-ID: <2e4b995e-57ae-412f-ae88-c3708a5f67ee@oss.qualcomm.com>
Date: Mon, 6 Oct 2025 14:41:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: Add support for Pixel 3 and Pixel 3
 XL
To: david@ixit.cz, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Amit Pundir <amit.pundir@linaro.org>,
        Casey Connolly <casey@connolly.tech>,
        Joel Selvaraj <foss@joelselvaraj.com>,
        Sumit Semwal <sumit.semwal@linaro.org>, Vinod Koul <vkoul@kernel.org>
References: <20251005-pixel-3-v1-0-ab8b85f6133f@ixit.cz>
 <20251005-pixel-3-v1-2-ab8b85f6133f@ixit.cz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251005-pixel-3-v1-2-ab8b85f6133f@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=IrITsb/g c=1 sm=1 tr=0 ts=68e3b8f3 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=ev71qlw1QQQPEuQK8qEA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: moIRmfeeCFeJRJVDgmqmnhrkaq326lwy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAyOSBTYWx0ZWRfX1Izx3m2E5/E7
 P2UYW7Beao7Qkxo8X+f3pqQq8KSmOxiIIFrzY1wbrhCqT5VpiL0BqQUherCfC76cdF1/KzCMb9I
 zIAl/09/SAtpSQP+8m47VEORE06TB+G17N91eHltFyO31F3A/nJez0vaqLLM4tCnFAl/iilb/5G
 jleGRHO4OFxdO1CdOvjCqZxLE1uqtGPqWUfd9+aeWS1kbafcD9wEdZoDzI+KOHGJWnVYg2fcGgd
 LYEChYkuGzzrwmep8P77Yx0eZYqbvOIbK/j+DD7EUhp9ETbzGYyaxLFk0dzIUofc/RQJZ9iKTLe
 R4zpVxYzM7XZW7RUIh0IJ2OwwHHUZ0ToCtHIYbHcHRH8jh1wXLTgaRokQ9XdKCqUUQmgHEYXNrB
 5K0lU2sX7aGo05j21xzTULODnB1vcQ==
X-Proofpoint-ORIG-GUID: moIRmfeeCFeJRJVDgmqmnhrkaq326lwy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_04,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 bulkscore=0 clxscore=1015 malwarescore=0
 spamscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040029

On 10/5/25 3:16 PM, David Heidelberg via B4 Relay wrote:
> From: David Heidelberg <david@ixit.cz>
> 
> This adds initial device tree support for the following phones:
> 
>  - Google Pixel 3 (blueline)
>  - Google Pixel 3 XL (crosshatch)
> 
> Both phone boards use the same identifiers and differ only slightly
> in their connected peripherals.
> 
> Supported functionality includes:
>  - Debug UART
>  - UFS
>  - Charger
>  - USB-C (peripheral mode)
>  - Display (Pixel 3 only)
> 
> GPIOs 0–3 and 81–84 are not accessible from the application CPUs,
> so they are marked as reserved to allow the Pixel 3 to boot.
> 
> The rmtfs region is allocated using UIO, making it technically "dynamic."
> 
> Its address and size can be read from sysfs:
> 
> $ cat /sys/class/uio/uio0/name
> /sys/class/uio/uio0/maps/map0/addr
> 0x00000000f2701000
> 
> $ cat /sys/class/uio/uio0/maps/map0/size
> 0x0000000000200000
> 
> Like the OnePlus 6, the Pixel 3 requires 1 kB of reserved memory on either
> side of the rmtfs region to work around an XPU bug that would otherwise
> cause erroneous violations when accessing the rmtfs_mem region.

[...]

> +&gmu {
> +	status = "okay";
> +};

It's already enabled> +
> +&mdss {
> +	status = "okay";
> +};
> +
> +&mdss_dsi0 {
> +	status = "okay";
> +	vdda-supply = <&vdda_mipi_dsi0_1p2>;

'status' should be last, with a \n before it

> +
> +	ports {
> +		port@1 {
> +			endpoint {

&mdss_dsi0_out {} instead

> +				remote-endpoint = <&panel_in>;
> +				data-lanes = <0 1 2 3>;
> +				qcom,te-source = "mdp_vsync_e";
> +			};
> +		};
> +	};
> +
> +	panel@0 {
> +		compatible = "lg,sw43408";
> +		reg = <0>;
> +
> +		vddi-supply = <&vreg_l14a_1p88>;
> +		vpnl-supply = <&vreg_l28a_3p0>;
> +
> +		reset-gpios = <&tlmm 6 GPIO_ACTIVE_LOW>;
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&panel_reset_pins &panel_te_pin &panel_pmgpio_pins>;

property-n
property-names

in this order, please

> +
> +		port {
> +			panel_in: endpoint {
> +				remote-endpoint = <&mdss_dsi0_out>;
> +			};
> +		};
> +	};
> +};
> +
> +&mdss_dsi0_out {
> +	remote-endpoint = <&panel_in>;
> +	data-lanes = <0 1 2 3>;
> +};

(as mentioned above..)

[...]

> +		/* rmtfs lower guard */
> +		memory@f2700000 {
> +			reg = <0 0xf2700000 0 0x1000>;
> +			no-map;
> +		};
> +
> +		rmtfs_mem: memory@f2701000 {
> +			compatible = "qcom,rmtfs-mem";
> +			reg = <0 0xf2701000 0 0x200000>;
> +			no-map;
> +
> +			qcom,client-id = <1>;
> +			qcom,vmid = <15>;
> +		};
> +
> +		/* rmtfs upper guard */
> +		memory@f2901000 {
> +			reg = <0 0xf2901000 0 0x1000>;
> +			no-map;
> +		};

qcom,use-guard-pages instead

[...]

> +		vreg_l14a_1p88: ldo14 {
> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <1800000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +			regulator-boot-on;
> +			/*
> +			 * We can't properly bring the panel back if it gets turned off
> +			 * so keep it's regulators always on for now.
> +			 */
> +			regulator-always-on;

Sounds like your panel driver is not sequencing things properly

[...]

> +&uart9 {
> +	label = "LS-UART1";

This is a 96boards-ism> +
> +	status = "okay";
> +};
> +
> +&usb_1 {
> +	status = "okay";
> +};
> +
> +&usb_1_dwc3 {
> +	dr_mode = "peripheral";

Are you sure?

[...]

> +&usb_2 {
> +	status = "okay";
> +};
> +
> +&usb_2_dwc3 {
> +	dr_mode = "host";

Does the phone actually have something connected to both USB hosts?

Would that be the weasel(?) security chip?

[...]

> diff --git a/arch/arm64/boot/dts/qcom/sdm845-google-crosshatch.dts b/arch/arm64/boot/dts/qcom/sdm845-google-crosshatch.dts
> new file mode 100644
> index 0000000000000..dc9938ffc0ab8
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/sdm845-google-crosshatch.dts
> @@ -0,0 +1,137 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
> +/dts-v1/;
> +
> +#include "sdm845-google-common.dtsi"
> +
> +/ {
> +	model = "Google Pixel 3 XL";
> +	compatible = "google,crosshatch", "qcom,sdm845";
> +
> +	battery: battery {
> +		compatible = "simple-battery";
> +
> +		charge-full-design-microamp-hours = <3480000>;
> +		voltage-min-design-microvolt = <3600000>;
> +		voltage-max-design-microvolt = <4400000>;
> +	};
> +
> +	chosen {
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		/* for u-boot */
> +		framebuffer: framebuffer@9d400000 {
> +			compatible = "simple-framebuffer";
> +			reg = <0 0x9d400000 0 (2960 * 1440 * 4)>;
> +			width = <1440>;
> +			height = <2960>;
> +			stride = <(1440 * 4)>;
> +			format = "a8r8g8b8";
> +		};
> +	};
> +
> +	reserved-memory {
> +		framebuffer_region@9d400000 {
> +			no-map;
> +			reg = <0 0x9d400000 0 0x02400000>;
> +		};
> +	};
> +};
> +
> +&gmu {
> +	status = "okay";
> +};
> +
> +&mdss {
> +	status = "okay";
> +};

I'm sure you can push some of this into -common

> +
> +&mdss_dsi0 {
> +	vdda-supply = <&vdda_mipi_dsi0_1p2>;
> +
> +	status = "okay";
> +
> +	ports {
> +		port@1 {
> +			endpoint {
> +				remote-endpoint = <&panel_in>;
> +				data-lanes = <0 1 2 3>;
> +				qcom,te-source = "mdp_vsync_e";
> +			};
> +		};
> +	};
> +
> +	panel@0 {
> +		compatible = "samsung,s6e3ha8";
> +		reg = <0>;
> +
> +		vci-supply = <&vreg_l28a_3p0>; // downstream

which supply should /* upstream */ use then? :(

Konrad

