Return-Path: <devicetree+bounces-200464-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 19024B14CE1
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 13:17:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3B7E318A374A
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 11:18:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2719128C2C7;
	Tue, 29 Jul 2025 11:17:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JJvb/z67"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 921FC28B3ED
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 11:17:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753787869; cv=none; b=Id1ejHBCP3YIzJbIZMyG9b1Lfb7c+hNzmCoWBqyB8wCTfAz94iiZp78OU4QLNl/NpFwm8n/8SQo03NdATzjm0aC2JYGYi4TDTF/D+t9kNyLdhmM67T+sIbFaEgSAB1MdI1pE2nlq7CpYlIrIvcWfWmBUlJcdH4R4lTUwqjoeNt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753787869; c=relaxed/simple;
	bh=w5fSSjhlZE4kaSUhjPO0bjn6UL+qxNFnllPhL6OPLvA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=i77aqNBZY+ZVyK5qbGlGBI8ZP4qipjoFE2u0kajB8XbzHeg+g5COLKkTwQqHvochsnfkRrJmEqLVNOD/ebkAKp8YjPH+dSuvL5KhIcaJKjOKFlnePEkaGO6lbc1tLkMnUDw8KwLY1vsFA3a19c9ZUucmq1IakM8568JacIRqwvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JJvb/z67; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56T8EkkR005230
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 11:17:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JYLypgdlK6xbRh65r51fMOTrMAj5xEpWl/0YTtrCvkg=; b=JJvb/z67ZXOEaE5K
	/aMBVM25cxtou/PSxH4NgdnI3Qjd7ItDqfqjueg3qY+TeT2CytUhRTi9oFmqAp9F
	hbsHYs0CBWl8TyDuEqXtmmpmiFAw2GWsILSYR6/pB2uSs8CZf4ZkOq5Uo7PKIqjj
	Oi1ly92bAIK2WH0+o6VggFLza+JsAzvnjEdxUK5V9vMJ77EfaMzqIpnomTHsQU1G
	QnLl/W61rlzE6UmWwIqeD3/cAbmB54pwkW018lDuLecB0KwH/VvyHQpEkNpkeOa2
	pNchutBn14Chx763CGg7whjj3KKkLSUFjApxE/438YcuOrr+w576cO7nyGP9wnOa
	lIsqlg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484nyu043f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 11:17:46 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-7073b0e7576so10828396d6.0
        for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 04:17:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753787865; x=1754392665;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JYLypgdlK6xbRh65r51fMOTrMAj5xEpWl/0YTtrCvkg=;
        b=BZYG0lshLasYE2ymj5jk8koW7IcTXxz0KALydceEn5oPmuUl3MMil6YrPrZ2t+UPPi
         +PK4F+iMFFVvd+MDeUIKJR9xU57WuCr437EQah7lq8RgsARwgQ7J1zgUKeGeJdX2NBHY
         FGwmrXcl+FKg2MfWfAWmm9S9JSBXWhWta+DCi2PMfccE2DCllHWDBe/CQ29T8xJHQe47
         o4r0zQ6IoLJePPWgS1xJO1JS7Z6YT33Z9HMY74ExsW2Ws713DRt7bgvqL/JyOpIWOb+b
         jX911/4DvB5ggXtWIfnmystjfUKWCB3R7XAJPe4+0fp8LgjLQIkAEAjKTBQz4+kxRRUL
         222A==
X-Forwarded-Encrypted: i=1; AJvYcCWPtHw8NLAXYbX/7YSEarl6DpTiEWyHfzz2aVPVYIMvtMNxqAwPWpOtJGkdITMquX5frgOkzKlYYF5k@vger.kernel.org
X-Gm-Message-State: AOJu0YxEMlTo+MP86LjrEjR9TQytGCi1rJlR4D3KXr+HtUjV60BQoiI0
	hk5crulL0v8+ej7aBCWJL7K/p6GqGGCgN/r61p4MBZdtbkkPNdSFOmueJtcToSlan1ZFGJvH57F
	Cii5jU0g6V/SAwktab5FqNhFpOCVbNM3pfErkqYxn5E3pBOEEmiFq9ncwd/gieDmp
X-Gm-Gg: ASbGncuUF5bc7uc3lwSL8bH47qeSNs7PbJ6uNI0HDeqzcsGHo/Jm/IQZ8eArc7znYGG
	uNLYQfbTUd8HiqaeH28XHO6GhABG1lUA8AKdnCWhyzKLgyq6LwdsvKg7AC2YeCmCftYSuJCTCgO
	R90ZA57kV2yFKrEUxPYpcMOPCBT7qgdddAOGIlLujzUL5duTqpcDaX5UdAH7BUfJ8IL709Q1IEx
	U5XhkpkwdzMp0Z1f2UAfXHpVKoW84+EAQselYucXtjvcogg3zdIY50CvtuPoovOEI60Ep7mq5Hy
	Dxjvq0Cl4Xly+/2PlZQfCMzJJE2GEAdcPevZXpFjPKmSt1IUKi+nPmIF5Q2PqesPTIr6/YvmOu1
	hECJwrWXRPGTLr+yhmg==
X-Received: by 2002:ad4:5f4c:0:b0:707:4dcc:4f56 with SMTP id 6a1803df08f44-7074dcc58e3mr33456866d6.8.1753787865058;
        Tue, 29 Jul 2025 04:17:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFVL/ipLCTE3KQBvxK0+K5+RyTudhg4FnfX6zILSoy/F5vK3nKlWwkqe0t7Ugz+vuHVlx/Q5A==
X-Received: by 2002:ad4:5f4c:0:b0:707:4dcc:4f56 with SMTP id 6a1803df08f44-7074dcc58e3mr33456586d6.8.1753787864544;
        Tue, 29 Jul 2025 04:17:44 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af635a63116sm577931366b.90.2025.07.29.04.17.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Jul 2025 04:17:42 -0700 (PDT)
Message-ID: <1f6fc7ce-5826-4f59-89d7-ac691a3ae785@oss.qualcomm.com>
Date: Tue, 29 Jul 2025 13:17:39 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/2] arm64: dts: qcom: Add display support for QCS615
To: Fange Zhang <fange.zhang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Li Liu <quic_lliu6@quicinc.com>, Dmitry Baryshkov <lumag@kernel.org>
References: <20250718-add-display-support-for-qcs615-platform-v5-0-8579788ea195@oss.qualcomm.com>
 <20250718-add-display-support-for-qcs615-platform-v5-1-8579788ea195@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250718-add-display-support-for-qcs615-platform-v5-1-8579788ea195@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: P05DHfTynq3wQ1BGjsUrX7-tEenYFMFT
X-Proofpoint-ORIG-GUID: P05DHfTynq3wQ1BGjsUrX7-tEenYFMFT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI5MDA4NyBTYWx0ZWRfX/5LWCydd4u5Q
 T/WM1GFKOyT2Fb+1BxftLvunCYFfIRG1fARhQlikzAK3cJDojiaQUDeWl4jvBYe9yCvEvez2KdP
 USVhDYGEGyQXs7Sip3FQAXfWnehZyYDf9YvWT7LJMAbnLVJxfmxB5vtDrOAc9PLqhaGLv9LZZSC
 JRVfccW8FsQmA+rfyxCRUOJ5ijcOyi5dl2nsqX3DuDhwDI07Lj2yr+1n+D2Kx0HYTmREwVLy80J
 MwBuWdKOMBEFIZaabEDYICiNREOMA0+uDijeBTmKSHfjSb4oWeq+Qr5I0Jj75ZKpWbyBtvqO0a6
 zYgs+lrJMRAeqvG+tZ0jCMg3PwLMzXVOicyp6vLX6hli7akNDDAxYcAKgk5aaDoY1oeUWYvrJwt
 /IqdcX8ERvBPMypk5OTj39mF7zkLCHWtpY3NzvZxyQJEKcoiS0SLwk9ET+Cww44BqwVag3XW
X-Authority-Analysis: v=2.4 cv=CLoqXQrD c=1 sm=1 tr=0 ts=6888adda cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=Frto0rYOkVf98Gw2rTwA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-29_03,2025-07-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 adultscore=0 suspectscore=0 mlxlogscore=999 spamscore=0
 priorityscore=1501 phishscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507290087

On 7/18/25 2:56 PM, Fange Zhang wrote:
> From: Li Liu <quic_lliu6@quicinc.com>
> 
> Add display MDSS and DSI configuration for QCS615 platform.
> QCS615 has a DP port, and DP support will be added in a later patch.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Li Liu <quic_lliu6@quicinc.com>
> Signed-off-by: Fange Zhang <fange.zhang@oss.qualcomm.com>
> ---

[...]

> +
> +			mdss_mdp: display-controller@ae01000 {
> +				compatible = "qcom,sm6150-dpu";
> +				reg = <0x0 0x0ae01000 0x0 0x8f000>,
> +				      <0x0 0x0aeb0000 0x0 0x2008>;
> +				reg-names = "mdp", "vbif";
> +
> +				clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
> +					 <&gcc GCC_DISP_HF_AXI_CLK>,
> +					 <&dispcc DISP_CC_MDSS_MDP_CLK>,
> +					 <&dispcc DISP_CC_MDSS_VSYNC_CLK>;
> +				clock-names = "iface", "bus", "core", "vsync";

1 per line please, everywhere> +
> +				assigned-clocks = <&dispcc DISP_CC_MDSS_VSYNC_CLK>;
> +				assigned-clock-rates = <19200000>;

Is this necessary?

> +
> +				operating-points-v2 = <&mdp_opp_table>;
> +				power-domains = <&rpmhpd RPMHPD_CX>;
> +
> +				interrupt-parent = <&mdss>;
> +				interrupts = <0>;

interrupts-extended

> +
> +				ports {
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					port@0 {
> +						reg = <0>;

Please keep a \n between properties and subnodes

> +						dpu_intf0_out: endpoint {
> +						};
> +					};
> +
> +					port@1 {
> +						reg = <1>;
> +						dpu_intf1_out: endpoint {
> +							remote-endpoint = <&mdss_dsi0_in>;
> +						};
> +					};
> +				};
> +
> +				mdp_opp_table: opp-table {
> +					compatible = "operating-points-v2";
> +
> +					opp-19200000 {
> +						opp-hz = /bits/ 64 <19200000>;
> +						required-opps = <&rpmhpd_opp_low_svs>;
> +					};
> +
> +					opp-25600000 {
> +						opp-hz = /bits/ 64 <25600000>;
> +						required-opps = <&rpmhpd_opp_svs>;

This and the above frequency are missing one zero (i.e. you
have a 10x underclock)

[...]

> +			mdss_dsi0_phy: phy@ae94400 {
> +				compatible = "qcom,sm6150-dsi-phy-14nm";
> +				reg = <0x0 0x0ae94400 0x0 0x100>,
> +				      <0x0 0x0ae94500 0x0 0x300>,
> +				      <0x0 0x0ae94800 0x0 0x188>;

sz = 0x124

> +				reg-names = "dsi_phy",
> +					    "dsi_phy_lane",
> +					    "dsi_pll";
> +
> +				#clock-cells = <1>;
> +				#phy-cells = <0>;
> +
> +				clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
> +					 <&rpmhcc RPMH_CXO_CLK>;
> +				clock-names = "iface", "ref";
> +
> +				status = "disabled";
> +			};
> +		};
> +
>  		dispcc: clock-controller@af00000 {
>  			compatible = "qcom,qcs615-dispcc";
>  			reg = <0 0x0af00000 0 0x20000>;
>  
>  			clocks = <&rpmhcc RPMH_CXO_CLK>,
> -				 <&gcc GCC_DISP_GPLL0_DIV_CLK_SRC>;
> +				 <&gcc GCC_DISP_GPLL0_DIV_CLK_SRC>,
> +				 <&mdss_dsi0_phy 0>,
> +				 <&mdss_dsi0_phy 1>,

#include <dt-bindings/clock/qcom,dsi-phy-28nm.h>

Konrad

