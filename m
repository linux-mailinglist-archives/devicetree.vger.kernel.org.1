Return-Path: <devicetree+bounces-178263-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D121ABB2B8
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 03:01:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5AE7D171FAE
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 01:01:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AF6813EFF3;
	Mon, 19 May 2025 01:01:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mVTnjCUX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF408F6F
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 01:01:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747616493; cv=none; b=BMDRdj7pULvfzv8Ik3zwEzQD/ExjCLVDLZtJOnqH+LinmEE30RWp6InepzdSgdvYPrkbz6DLBA3p82/PreTG2RsIq7+JmPyGQwh/4SWMX6SwV6IIpIy15rOf+XOfn2LquSEx4usAigahLN5RDIeCW66DcPb0df9hhMdL1ogoIgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747616493; c=relaxed/simple;
	bh=J6/rcsiVJhVcljceiNS2TtvEcgPJA+QJNmMeQ6NBbk0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fPMF3Bzz4QoO7aSm4ZxrPl9Yc5YFBCXIw6/eGAs5VPKXlbqACbLQXFrOj1ibd4mEjeUPS6ssyory1J2pzUg1R6/02cLi0fqbpG/mJ0Cb+1yN8kduBaZPrD5s0PjxbfVHHRfXCziy1JxHr5sV0q8iEakGXr7NcCLqt7ZP1Kd+JBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mVTnjCUX; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54INOamU003168
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 01:01:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=qq9RXq9SVzhhh+kL9lJzrgG+
	A/t/p+ZZEkzTdEVAQYI=; b=mVTnjCUXa5nvUgocAAsfyqzqSHq0o/ZsrB7cSvyZ
	jFwEejGeYLsqI/9Y1hn7ZtgNMetBkmKgaCHqwfqCMQ+a6OCD4yplgMyd3OkJKHJ2
	k5xg916aQRkGOfnuapKCbpGLs1dF3cAJZwsUmVCwBIK9eNxMpY/ehodoYLm/ykh4
	deZ/V2DM7HlNWiJvEyUnaQv2uWsEmfl2CCL47Nwq8ZEujEqIULO2CII/oKKPE58V
	qUCFasPv2mUd5Zb6WKBfN+MwnvvI06F1b3ohcgrPoQoSagpUTJjRermeaj3uIqs7
	qXgkODFxX3Ko/j7aI8SYbRxDiuGxQNq5Bba9B0lbHkmiOg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46pjm4jn8p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 01:01:29 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6f8d47383f3so12765626d6.1
        for <devicetree@vger.kernel.org>; Sun, 18 May 2025 18:01:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747616489; x=1748221289;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qq9RXq9SVzhhh+kL9lJzrgG+A/t/p+ZZEkzTdEVAQYI=;
        b=WXVQVvWs9Vkf+DHEp8Lq4m5fxIL+lrRbcA1MR8dGwmIV9FX80glVlJmMMUBWLHnfBA
         z03csHG+1My7WMSNF8wvlDLjSvZnaM/RBNIXgMy4BrWGkhXFg933QlkDTWhPV5RQwxFJ
         ULyFlR/I49p3UY6U582tVB968KbNELhCkjmuOgCkBmLpwNueMW1fQUZgY/R9Lr5N7TCN
         WlgUT7JyJKSgSS/WCoRdTRVWkpxRjX4o3UHX1nftUdKU5cvNW9hRpgo99iueCc1V6rsw
         NENF65c6sYsSMl/H4Z+RlcPkHjSALSw8oWFkVeY3Ko3zwk53RqXd34bRgKJcUz/bMyLY
         Iw9Q==
X-Forwarded-Encrypted: i=1; AJvYcCWpbl6TbdUbOYPqjKDeGBj3ymM2aDoOGu3KNiYYxmpkPpl4n1+kdG8mVoiuK/QOjSBPhqK+3/Y/2zhF@vger.kernel.org
X-Gm-Message-State: AOJu0YzGu5E+5UOGHxF63g+wNdcx++8yrlpVTZUuh+1rtO1xskGJcwNu
	+n/DIOADSwv+zE3CX34E+JHjFTpOTc7HZtUCJXed030G6JzHztpLVo86nJh7fq4lYo4IaV7mh8l
	kiqHR6D3EsCbmCwFmjQ/u7wTK6DU6dU59In4hgaunimn4Bu0se06z5749pd4P+e7D
X-Gm-Gg: ASbGnctsgdizLTb4rR1ovt/UzkuMLD/LmKG+/uqE8eQnPJsi4SqTpH0PJfxCtcXJ6gv
	667HalUU5ybJORxO7Jv7ouU5Bp8EITmG47nj7ciPmP7XrOnkHTKKLQt9shQW8hlpnhAhsMlHFLl
	jYEmzWXQwfeQrWpOQC/up6IVR4ymQ7y3uataZp/3bOpaeuXELcigwu/nZGcRSZ9bSZ6G4mui3Ya
	o4ljVS1tUoyRJxmL1oTI6Eq9GsBKKPC+MfbYNVh5xTSyHIfLUaekKoCR/BPVbab0JI4WAMqJ6fP
	TPn095p3x/ydWzEYdiCEBCGSHD3332g9KST2t0UVrNNXXZOEfsSn3zaj14i8gT95PkPJTdGd+3k
	=
X-Received: by 2002:ad4:5f0d:0:b0:6f5:748e:c6f4 with SMTP id 6a1803df08f44-6f8b087097dmr211392846d6.37.1747616488532;
        Sun, 18 May 2025 18:01:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGtM9T4XNbEFF8ECRVL2nou27yxJUbqWcJOM1bWrwp+s7uIIKSfzncgHPn8YqJw4vvYzHTGmg==
X-Received: by 2002:ad4:5f0d:0:b0:6f5:748e:c6f4 with SMTP id 6a1803df08f44-6f8b087097dmr211392356d6.37.1747616488039;
        Sun, 18 May 2025 18:01:28 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-550e6f161b1sm1638412e87.16.2025.05.18.18.01.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 May 2025 18:01:27 -0700 (PDT)
Date: Mon, 19 May 2025 04:01:25 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ayushi Makhija <amakhija@qti.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Ayushi Makhija <quic_amakhija@quicinc.com>, robdclark@gmail.com,
        sean@poorly.run, marijn.suijten@somainline.org, andersson@kernel.org,
        robh@kernel.org, robh+dt@kernel.org, krzk+dt@kernel.org,
        konradybcio@kernel.org, conor+dt@kernel.org, andrzej.hajda@intel.com,
        neil.armstrong@linaro.org, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, quic_abhinavk@quicinc.com,
        quic_rajeevny@quicinc.com, quic_vproddut@quicinc.com,
        quic_jesszhan@quicinc.com,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v7 1/2] arm64: dts: qcom: sa8775p: add Display Serial
 Interface device nodes
Message-ID: <tjp2pfescczqikbu2tzylx4ecb3n6trixvhbdwbpz6y4jc52wk@fmkdxrelun3i>
References: <20250513102611.1456868-1-amakhija@qti.qualcomm.com>
 <20250513102611.1456868-2-amakhija@qti.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250513102611.1456868-2-amakhija@qti.qualcomm.com>
X-Proofpoint-ORIG-GUID: -ky_oI2oDqNtbkh4tmGWEt9Lf2PVbTOo
X-Authority-Analysis: v=2.4 cv=C4bpyRP+ c=1 sm=1 tr=0 ts=682a82e9 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=sOAf8FZNR29loNffVzUA:9 a=CjuIK1q_8ugA:10 a=iYH6xdkBrDN1Jqds4HTS:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: -ky_oI2oDqNtbkh4tmGWEt9Lf2PVbTOo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE5MDAwNyBTYWx0ZWRfX9TK9JUbMBhRl
 2zIILtiI1nnmsgiwTnpWcai2YrbC6b6iA3o06IiD1KnLAsBNdmnJgW/NeS0Yw2n99lu9unZmLK5
 CyILKYCnY/HEwrJNRnQxy7To079QD9ZqAzqnTirf1TkESKu2kNU3IJgv3PIzAvQDLiHPW0qZ7oG
 ghcwULG8sMyi3DLdEv1uPMgeLUG9eRMuPeBPA4+e/CVfNMinEeftrmoZ7WqmWT60QDVbxwTT3QL
 hhH7Oz1Bkf9fPOeTTXdXu+JxOG0R+HakXqFPLYhgU/jXjCFX1L6PwN3Cl+FHfBk9/0WWjYswlND
 KwC//3AiWW4k4kUmOFUMaFdFxtf1EM/XaiesV6KXVec/bORftzr2LSROBDq6J/g72wdWAphRwLk
 /YWOjQbgKtjAVEUPD0vG00ocqGQJNRhfv07RVv+UDZc7KNXUNiDylf04/IcYwXFbWPJWTiS3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-18_12,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 suspectscore=0 impostorscore=0 adultscore=0
 mlxlogscore=999 spamscore=0 lowpriorityscore=0 phishscore=0 mlxscore=0
 bulkscore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505190007

On Tue, May 13, 2025 at 03:56:10PM +0530, Ayushi Makhija wrote:
> From: Ayushi Makhija <quic_amakhija@quicinc.com>
> 
> Add device tree nodes for the DSI0 and DSI1 controllers
> with their corresponding PHYs found on Qualcomm SA8775P SoC.
> 
> Signed-off-by: Ayushi Makhija <quic_amakhija@quicinc.com>
> Reviewed-by: Dmitry Baryshkov <lumag@kernel.org>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 186 +++++++++++++++++++++++++-
>  1 file changed, 185 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> index 5bd0c03476b1..f8777f17d24a 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> @@ -6,6 +6,7 @@
>  
>  #include <dt-bindings/interconnect/qcom,icc.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/clock/qcom,dsi-phy-28nm.h>
>  #include <dt-bindings/clock/qcom,rpmh.h>
>  #include <dt-bindings/clock/qcom,sa8775p-dispcc.h>
>  #include <dt-bindings/clock/qcom,sa8775p-gcc.h>
> @@ -4034,6 +4035,22 @@ dpu_intf4_out: endpoint {
>  							remote-endpoint = <&mdss0_dp1_in>;
>  						};
>  					};
> +
> +					port@2 {
> +						reg = <2>;
> +
> +						dpu_intf1_out: endpoint {
> +							remote-endpoint = <&mdss0_dsi0_in>;
> +						};
> +					};
> +
> +					port@3 {
> +						reg = <3>;
> +
> +						dpu_intf2_out: endpoint {
> +							remote-endpoint = <&mdss0_dsi1_in>;
> +						};
> +					};
>  				};
>  
>  				mdss0_mdp_opp_table: opp-table {
> @@ -4061,6 +4078,170 @@ opp-650000000 {
>  				};
>  			};
>  
> +			mdss0_dsi0: dsi@ae94000 {
> +				compatible = "qcom,sa8775p-dsi-ctrl", "qcom,mdss-dsi-ctrl";
> +				reg = <0x0 0x0ae94000 0x0 0x400>;
> +				reg-names = "dsi_ctrl";
> +
> +				interrupt-parent = <&mdss0>;
> +				interrupts = <4>;
> +
> +				clocks = <&dispcc0 MDSS_DISP_CC_MDSS_BYTE0_CLK>,
> +					 <&dispcc0 MDSS_DISP_CC_MDSS_BYTE0_INTF_CLK>,
> +					 <&dispcc0 MDSS_DISP_CC_MDSS_PCLK0_CLK>,
> +					 <&dispcc0 MDSS_DISP_CC_MDSS_ESC0_CLK>,
> +					 <&dispcc0 MDSS_DISP_CC_MDSS_AHB_CLK>,
> +					 <&gcc GCC_DISP_HF_AXI_CLK>;
> +				clock-names = "byte",
> +					      "byte_intf",
> +					      "pixel",
> +					      "core",
> +					      "iface",
> +					      "bus";
> +				assigned-clocks = <&dispcc0 MDSS_DISP_CC_MDSS_BYTE0_CLK_SRC>,
> +						  <&dispcc0 MDSS_DISP_CC_MDSS_PCLK0_CLK_SRC>;
> +				assigned-clock-parents = <&mdss0_dsi0_phy DSI_BYTE_PLL_CLK>,
> +							 <&mdss0_dsi0_phy DSI_PIXEL_PLL_CLK>;
> +				phys = <&mdss0_dsi0_phy>;
> +
> +				operating-points-v2 = <&dsi0_opp_table>;
> +				power-domains = <&rpmhpd SA8775P_MMCX>;
> +
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				status = "disabled";
> +
> +				ports {
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					port@0 {
> +						reg = <0>;
> +
> +						mdss0_dsi0_in: endpoint {
> +							remote-endpoint = <&dpu_intf1_out>;
> +						};
> +					};
> +
> +					port@1 {
> +						reg = <1>;
> +
> +						mdss0_dsi0_out: endpoint{ };
> +					};
> +				};
> +
> +				dsi0_opp_table: opp-table {

mdss_dsi_opp_table: opp-table {}

> +					compatible = "operating-points-v2";
> +
> +					opp-358000000 {

Is there only one entry? Usually there are several.

> +						opp-hz = /bits/ 64 <358000000>;
> +						required-opps = <&rpmhpd_opp_svs_l1>;
> +					};
> +				};
> +			};
> +
> +			mdss0_dsi0_phy: phy@ae94400 {
> +				compatible = "qcom,sa8775p-dsi-phy-5nm";
> +				reg = <0x0 0x0ae94400 0x0 0x200>,
> +				      <0x0 0x0ae94600 0x0 0x280>,
> +				      <0x0 0x0ae94900 0x0 0x27c>;
> +				reg-names = "dsi_phy",
> +					    "dsi_phy_lane",
> +					    "dsi_pll";
> +
> +				#clock-cells = <1>;
> +				#phy-cells = <0>;
> +
> +				clocks = <&dispcc0 MDSS_DISP_CC_MDSS_AHB_CLK>,
> +					 <&rpmhcc RPMH_CXO_CLK>;
> +				clock-names = "iface", "ref";
> +
> +				status = "disabled";
> +			};
> +
> +			mdss0_dsi1: dsi@ae96000 {
> +				compatible = "qcom,sa8775p-dsi-ctrl", "qcom,mdss-dsi-ctrl";
> +				reg = <0x0 0x0ae96000 0x0 0x400>;
> +				reg-names = "dsi_ctrl";
> +
> +				interrupt-parent = <&mdss0>;
> +				interrupts = <5>;
> +
> +				clocks = <&dispcc0 MDSS_DISP_CC_MDSS_BYTE1_CLK>,
> +					 <&dispcc0 MDSS_DISP_CC_MDSS_BYTE1_INTF_CLK>,
> +					 <&dispcc0 MDSS_DISP_CC_MDSS_PCLK1_CLK>,
> +					 <&dispcc0 MDSS_DISP_CC_MDSS_ESC1_CLK>,
> +					 <&dispcc0 MDSS_DISP_CC_MDSS_AHB_CLK>,
> +					 <&gcc GCC_DISP_HF_AXI_CLK>;
> +				clock-names = "byte",
> +					      "byte_intf",
> +					      "pixel",
> +					      "core",
> +					      "iface",
> +					      "bus";
> +				assigned-clocks = <&dispcc0 MDSS_DISP_CC_MDSS_BYTE1_CLK_SRC>,
> +						  <&dispcc0 MDSS_DISP_CC_MDSS_PCLK1_CLK_SRC>;
> +				assigned-clock-parents = <&mdss0_dsi1_phy DSI_BYTE_PLL_CLK>,
> +							 <&mdss0_dsi1_phy DSI_PIXEL_PLL_CLK>;
> +				phys = <&mdss0_dsi1_phy>;
> +
> +				operating-points-v2 = <&dsi1_opp_table>;
> +				power-domains = <&rpmhpd SA8775P_MMCX>;
> +
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				status = "disabled";
> +
> +				ports {
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					port@0 {
> +						reg = <0>;
> +
> +						mdss0_dsi1_in: endpoint {
> +							remote-endpoint = <&dpu_intf2_out>;
> +						};
> +					};
> +
> +					port@1 {
> +						reg = <1>;
> +
> +						mdss0_dsi1_out: endpoint { };
> +					};
> +				};
> +
> +				dsi1_opp_table: opp-table {

You don't need a second DSI OPP table.

> +					compatible = "operating-points-v2";
> +
> +					opp-358000000 {
> +						opp-hz = /bits/ 64 <358000000>;
> +						required-opps = <&rpmhpd_opp_svs_l1>;
> +					};
> +				};
> +			};
> +
> +			mdss0_dsi1_phy: phy@ae96400 {
> +				compatible = "qcom,sa8775p-dsi-phy-5nm";
> +				reg = <0x0 0x0ae96400 0x0 0x200>,
> +				      <0x0 0x0ae96600 0x0 0x280>,
> +				      <0x0 0x0ae96900 0x0 0x27c>;
> +				reg-names = "dsi_phy",
> +					    "dsi_phy_lane",
> +					    "dsi_pll";
> +
> +				#clock-cells = <1>;
> +				#phy-cells = <0>;
> +
> +				clocks = <&dispcc0 MDSS_DISP_CC_MDSS_AHB_CLK>,
> +					 <&rpmhcc RPMH_CXO_CLK>;
> +				clock-names = "iface", "ref";
> +
> +				status = "disabled";
> +			};
> +
>  			mdss0_dp0_phy: phy@aec2a00 {
>  				compatible = "qcom,sa8775p-edp-phy";
>  
> @@ -4267,7 +4448,10 @@ dispcc0: clock-controller@af00000 {
>  				 <&sleep_clk>,
>  				 <&mdss0_dp0_phy 0>, <&mdss0_dp0_phy 1>,
>  				 <&mdss0_dp1_phy 0>, <&mdss0_dp1_phy 1>,
> -				 <0>, <0>, <0>, <0>;
> +				 <&mdss0_dsi0_phy DSI_BYTE_PLL_CLK>,
> +				 <&mdss0_dsi0_phy DSI_PIXEL_PLL_CLK>,
> +				 <&mdss0_dsi1_phy DSI_BYTE_PLL_CLK>,
> +				 <&mdss0_dsi1_phy DSI_PIXEL_PLL_CLK>;
>  			power-domains = <&rpmhpd SA8775P_MMCX>;
>  			#clock-cells = <1>;
>  			#reset-cells = <1>;
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

