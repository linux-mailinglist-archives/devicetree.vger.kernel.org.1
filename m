Return-Path: <devicetree+bounces-234090-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 0894AC285F2
	for <lists+devicetree@lfdr.de>; Sat, 01 Nov 2025 20:13:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7341E4E10B2
	for <lists+devicetree@lfdr.de>; Sat,  1 Nov 2025 19:13:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD1E62FE045;
	Sat,  1 Nov 2025 19:13:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YJXUXhzV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BOzShlIz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBE692FDC31
	for <devicetree@vger.kernel.org>; Sat,  1 Nov 2025 19:13:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762024396; cv=none; b=i2CMkT0HYb9tBmkWbVWXH3HXz+f47ninYBJHNt2nhnGVGuNkLjyLp7UMOMwpxdTP63H76mMAQZ1geQYd47TaL2kSrNLnCnTJoWYFMyWFafrsqMltq28CpwCM2pfjtguLsJFixyqLZb4XWrzBMctBjQ4GbbaNnc2RmDIogr9hxDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762024396; c=relaxed/simple;
	bh=ree5xBliAPSwH3cLBwb3J183HtAh8bF89iuAXDl0NIo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=q2rADuhyiqqv3ABVJqc3F+ltVAHPkc+M2KdqKA88Bdc1oQNh/qHdjBV8aHpm3BomUbblxTIYldGa1LOjo1QLntulw+wBVmf2w90SrbP7Tw2+yYeAfmYyD46eOFg/EyZT+nb3flqIJiQdY2F2hg/aYkx56EHSd3RHzzy6huYDFmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YJXUXhzV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BOzShlIz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A19sUoN1224043
	for <devicetree@vger.kernel.org>; Sat, 1 Nov 2025 19:13:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1KxtwwHqINJC/oT/sgGtlBrT20Bb14bn0iaNhZDPdSs=; b=YJXUXhzV4aF1J1ET
	gzqa1l4zIWe7Pj6se/+ts02Jcdw94tq0F+/PvBjse6MWaCZOB5UvDXoKQWSK1XS1
	PFphagaoTfwFdJNMiu8hNDZz4HV7s2ugeu+UK6fcf7IsDSy8Btxja2ySbBFcZjP8
	OpgmdjkDuVt5knACnMTKJQR7XgEBocS0ovzF3dcNrmATufAEbSo8hzqoQiYHNcV6
	rAfFFCWbIYqW+Vdn00Rqn9mjJc6Q+2T55Ag7g2oo3z6ATXAy4nJt2IsOBVDc3EvC
	88xsx5X2GIVZJ/LU886GXsI8WK69Cx8KbkGfKNLT30ktnsoMMUM46FSRurkau90R
	3p2imQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a57we99a4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 01 Nov 2025 19:13:13 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-295745a8640so2886765ad.1
        for <devicetree@vger.kernel.org>; Sat, 01 Nov 2025 12:13:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762024393; x=1762629193; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1KxtwwHqINJC/oT/sgGtlBrT20Bb14bn0iaNhZDPdSs=;
        b=BOzShlIzv7hTCbZD3gFX7A2P0KSg3b5TEbguueowLaxBfoIifxQeV9S5FkZM94mtRy
         ljvHLNLZk4C3Z5Td6Z7yMebJ/ulBonSW069cI2sgQExr7yf3JE1VSoluSxBPch89YGFb
         jke+BfTAUhGXapvRUyBMhgdvnQ1InTKeDWlZ3nzp6z98C72eHzjPxFhihh8KOuMzHkwu
         jum24l3gio1qRIGtxmL2MVo8+pNrmhyprMgXLTa6jpPPcMB52ivjWdbtruiEB0czolnq
         7f580g7bNW0i3L01zjt0wqTWP5/X0ag9QOrJN8B9eYvraQ6fVrOzyM2gbq0HbX8LhFbi
         Q7wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762024393; x=1762629193;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1KxtwwHqINJC/oT/sgGtlBrT20Bb14bn0iaNhZDPdSs=;
        b=iL65jDM4s2jSaM5ClEMp/W2bCeDPLjZVMscvqxRqjPySEzKsNR7ZBoeZBBVIChEFNQ
         aUEhXlC0ksOpViUt7cgzASWM6CYQoNPXbdTPbAFOH0gXQfWx6aug1LGUkT8V+pPnzZRu
         gNey/I5ZzfOR6LOn0uQ86dry2x4aAdxfLj6tiXG4JTFMkU8ywiufKnxhuxcVdA6HxDRY
         tge44olReaBieXJPIAb3TO4mZCUIrN5oEf+SE6oE9e3L2Yy2B3n4LBGSYbf1pBv8rUDO
         qVLLzm9lfPwz5BMMnI7+hjqMPQEQqhDRWgUiCsLSd+MtIIr+LBX2jw/2HLOB3/0Z5s0r
         C++Q==
X-Forwarded-Encrypted: i=1; AJvYcCUV8DlCqt4HC3CdWfwGBIngF3dcBD/6robwTJ9cAYoEDJZjwbseiyOgCpCqXHG1EyPo/RHfRbeHhs5O@vger.kernel.org
X-Gm-Message-State: AOJu0Yzflx1otK7ZeAo7CqBQ4/qQxB0BpmBxRTZkzcnbyet75bqm5InZ
	vxcMr3nAV2HkAovF2hekccPVRt5cRbbpJJNlk8yuQwTfS8tso+fLzYh+Q+EHOaLtyLPdYbPGISv
	wS35nBC2Fk0xp2CI+SaEuzCbDObB12qUN1AO6FLsVJIvlZ6Rt6NSdi5vOCjKVzu+d
X-Gm-Gg: ASbGncsw9TvNxoHgBcFgDuWuA3VCZ4yBMkJ/MyhxYktVlSmMI0+KrvQFh4kZ7dnLvaD
	axfS4JwC1xres92+mRrCffMPmsAQki9Lsgpm2UNDFvgMFXt0qaJlzCenpzj65ywxdDHNtmf6yy2
	/4xw8N+4LUa6G+CQHtTXHsf1Q85RCL1cH3dEBIPjB9TAcDJ9WcHDvA0UbfJAd2KqOuudYsIjUM+
	lbBOhOfS9RUwnfB8W1Iu/fJ7Mqm2JZCQRia1qFO6r5hEFj0RQjdz5Q4m2pUm42BFvLw8CedPNR9
	MpETaosHpsFX4ewGdEirAEHfBYF4NutdfvGpfFDPr84o8AxZlkg93bLU1EhDAL9kA2Kj5k7LZqX
	8n+U0bbYns3mt3Q37Jn/r8qM=
X-Received: by 2002:a17:902:da89:b0:295:5945:2920 with SMTP id d9443c01a7336-29559452ee2mr32835515ad.34.1762024393251;
        Sat, 01 Nov 2025 12:13:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHUO9pw7Zgswco7QdkHAkcpr4GEgxDLTBLinAsQbpoSb2Ze6bLK2HtFCjzI4dp7VjYDUSva5Q==
X-Received: by 2002:a17:902:da89:b0:295:5945:2920 with SMTP id d9443c01a7336-29559452ee2mr32835275ad.34.1762024392709;
        Sat, 01 Nov 2025 12:13:12 -0700 (PDT)
Received: from [192.168.1.6] ([106.222.233.132])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-340924a0e4bsm5818883a91.1.2025.11.01.12.13.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Nov 2025 12:13:12 -0700 (PDT)
Message-ID: <f2724aed-c39c-4793-9522-bae08ea97a05@oss.qualcomm.com>
Date: Sun, 2 Nov 2025 00:43:07 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 1/3] arm64: dts: qcom: sm8750: Add USB support to
 SM8750 SoCs
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20251101174437.1267998-1-krishna.kurapati@oss.qualcomm.com>
 <20251101174437.1267998-2-krishna.kurapati@oss.qualcomm.com>
Content-Language: en-US
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
In-Reply-To: <20251101174437.1267998-2-krishna.kurapati@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=M85A6iws c=1 sm=1 tr=0 ts=69065bca cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=rTtKBu4o5onlnI9juXDqsQ==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=fj3ciZ1XawlKQuAvidcA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: iyLthK_0BfAg2bGQp8Smfghrx9dORPgu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTAxMDE2NSBTYWx0ZWRfX8KUdQY3O+UbW
 JbyCUzRC7ZCJtzEs0S2Hu3vyVHErQ7OW+260t9kHlLJ8v2lR7XiLFfWM/Cn2wRalVtNVyc3BJ/m
 pJIv78NsqT0hx38nzVvYTCwY0uv7KLaHl52aW2UDP9KaIajoKK4een1bd1On43Q+kAM6PirzKlL
 ma+LmIjcs9Yf/VcsYfG2hFefezVQnofZ06q2aRtPxl2pbZjrLHh/401DYpE1TX/+1oG6AyuArJP
 b4HjmuKi2EmRyM2gntGcbfdmqL+j2LqCY28ilxQRUDxG9GJCQiA5/UzXo263XuF7AuVpdHRxfxL
 ZutWXZvch1Q047PBCk4S+nA6ZY5XMoU1Lf1TRYXeHRExR1gbK2bQ9JSxb2p/7qcDIi6A/re/THq
 apSstESqnX+8uwVTXQlu30T65XJh1g==
X-Proofpoint-GUID: iyLthK_0BfAg2bGQp8Smfghrx9dORPgu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-01_04,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 malwarescore=0 bulkscore=0 lowpriorityscore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511010165

On 11/1/2025 11:14 PM, Krishna Kurapati wrote:
> From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> 
> SM8750 chipset contains a single DWC3 USB3 controller (rev. 200a), SS
> QMP PHY (rev. v8) and M31 eUSB2 PHY.  The major difference for SM8750 is
> the transition to using the M31 eUSB2 PHY compared to previous SoCs.
> 
> Enable USB support on SM8750 MTP and QRD variants. SM8750 has a QMP combo
> PHY for the SSUSB path, and a M31 eUSB2 PHY for the HSUSB path.
> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> [Konrad: Provided diff to flattened USB node]
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8750.dtsi | 161 ++++++++++++++++++++++++++-
>  1 file changed, 160 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> index a82d9867c7cb..3f0b57f428bb 100644
> --- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> @@ -12,6 +12,7 @@
>  #include <dt-bindings/interconnect/qcom,sm8750-rpmh.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>  #include <dt-bindings/mailbox/qcom-ipcc.h>
> +#include <dt-bindings/phy/phy-qcom-qmp.h>
>  #include <dt-bindings/power/qcom,rpmhpd.h>
>  #include <dt-bindings/power/qcom-rpmpd.h>
>  #include <dt-bindings/soc/qcom,gpr.h>
> @@ -635,7 +636,7 @@ gcc: clock-controller@100000 {
>  				 <0>,
>  				 <0>,
>  				 <0>,
> -				 <0>;
> +				 <&usb_dp_qmpphy QMP_USB43DP_USB3_PIPE_CLK>;
>  
>  			#clock-cells = <1>;
>  			#reset-cells = <1>;
> @@ -2581,6 +2582,164 @@ data-pins {
>  			};
>  		};
>  
> +		usb_hsphy: phy@88e3000 {
> +			compatible = "qcom,sm8750-m31-eusb2-phy";
> +			reg = <0x0 0x88e3000 0x0 0x29c>;
> +
> +			clocks = <&tcsrcc TCSR_USB2_CLKREF_EN>;
> +			clock-names = "ref";
> +
> +			resets = <&gcc GCC_QUSB2PHY_PRIM_BCR>;
> +
> +			#phy-cells = <0>;
> +
> +			status = "disabled";
> +		};
> +
> +		usb_dp_qmpphy: phy@88e8000 {
> +			compatible = "qcom,sm8750-qmp-usb3-dp-phy";
> +			reg = <0x0 0x088e8000 0x0 0x4000>;
> +
> +			clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
> +				 <&tcsrcc TCSR_USB3_CLKREF_EN>,
> +				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
> +				 <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
> +			clock-names = "aux",
> +				      "ref",
> +				      "com_aux",
> +				      "usb3_pipe";
> +
> +			resets = <&gcc GCC_USB3_PHY_PRIM_BCR>,
> +				 <&gcc GCC_USB3_DP_PHY_PRIM_BCR>;
> +			reset-names = "phy",
> +				      "common";
> +
> +			power-domains = <&gcc GCC_USB3_PHY_GDSC>;
> +
> +			#clock-cells = <1>;
> +			#phy-cells = <1>;
> +
> +			orientation-switch;
> +
> +			status = "disabled";
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@0 {
> +					reg = <0>;
> +
> +					usb_dp_qmpphy_out: endpoint {
> +					};
> +				};
> +
> +				port@1 {
> +					reg = <1>;
> +
> +					usb_dp_qmpphy_usb_ss_in: endpoint {
> +						remote-endpoint = <&usb_dwc3_ss>;
> +					};
> +				};
> +
> +				port@2 {
> +					reg = <2>;
> +
> +					usb_dp_qmpphy_dp_in: endpoint {
> +					};
> +				};
> +			};
> +		};
> +
> +		usb: usb@a600000 {
> +			compatible = "qcom,sm8750-dwc3", "qcom,snps-dwc3";
> +			reg = <0x0 0x0a600000 0x0 0xfc100>;
> +
> +			clocks = <&gcc GCC_CFG_NOC_USB3_PRIM_AXI_CLK>,
> +				 <&gcc GCC_USB30_PRIM_MASTER_CLK>,
> +				 <&gcc GCC_AGGRE_USB3_PRIM_AXI_CLK>,
> +				 <&gcc GCC_USB30_PRIM_SLEEP_CLK>,
> +				 <&gcc GCC_USB30_PRIM_MOCK_UTMI_CLK>;
> +			clock-names = "cfg_noc",
> +				      "core",
> +				      "iface",
> +				      "sleep",
> +				      "mock_utmi";
> +
> +			assigned-clocks = <&gcc GCC_USB30_PRIM_MOCK_UTMI_CLK>,
> +					  <&gcc GCC_USB30_PRIM_MASTER_CLK>;
> +			assigned-clock-rates = <19200000>,
> +					       <200000000>;
> +
> +			interrupts-extended = <&intc GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>,
> +					      <&intc GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH>,
> +					      <&intc GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>,
> +					      <&pdc 14 IRQ_TYPE_EDGE_BOTH>,
> +					      <&pdc 15 IRQ_TYPE_EDGE_BOTH>,
> +					      <&pdc 17 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "dwc_usb3",
> +					  "pwr_event",
> +					  "hs_phy_irq",
> +					  "dp_hs_phy_irq",
> +					  "dm_hs_phy_irq",
> +					  "ss_phy_irq";
> +
> +			power-domains = <&gcc GCC_USB30_PRIM_GDSC>;
> +			required-opps = <&rpmhpd_opp_nom>;

Probably I am missing something, but which power domain associated to a
rail is scaled to NOM corner here?

-Akhil


