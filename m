Return-Path: <devicetree+bounces-128761-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DABA9E95BB
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 14:08:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8A5432814AA
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 13:08:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E19362248B0;
	Mon,  9 Dec 2024 13:02:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="Xwt9b/DN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD1A21E0AE;
	Mon,  9 Dec 2024 13:02:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733749368; cv=none; b=AbnyjfLQu74xLwGRQZCArvP58hHm+Ri1efdBhiIBJpAu+wy3SPLdC9u2x89jSWLuIqy2la0rw2j3P8gAHq6NB60VS9QvlqM+XZTgHglLxZcOT1skzQahxNFmrT4127SksAw1k8nuoH+iWS7fW+9SJplEaDDYJa813BM55qhw+yY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733749368; c=relaxed/simple;
	bh=ZikVcRmZy6lHiyopf4A1q4IovI8GbfYxzgWqAn5HPbg=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=dvVv8el6aDkMXnNktL8OiZIPhTwfdDBRzCQP+4rcA2gk84yKCqMFPgJk2ywsHNknP1LD9+pZi7jmW8kD8xdRbbCIUDDdopFzNNtkEiZDZxhAlpbfBYplFhT+ZkH8aMsAbNrvXTOk8jIJwuk51tAUYBOFEq9OViD6FKY3AtjQNg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=Xwt9b/DN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B9AWqV6002489;
	Mon, 9 Dec 2024 13:02:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vLWyBLXjHp0qGDwVZhj/Q4Yo2eVBBoQ/oa+eI4VehSM=; b=Xwt9b/DN1+2B6en+
	VVtN/vHRDPUig6B2IpnbmKM4XbZnXejFBkEp3Q6X0Jb82cR8BPJOL92jtdS2bGH+
	xQ/S2ZVQzaVu9wVKW3YHx5EMiOHgjzguvPiuyjjO0opM1WYAkkbTpihStf3KJf3u
	7u7CYqR9oVZ4xQPv/milYZHFKLs1HFD/BknoamF9DLKoEkALEnqWvAJnb7OJdOwW
	sqySAInl3q/X3XDyEKWDDeFvCYj8NSmtcJhfO/sIvQZW7ITdhFK3kSnuwzekfjPr
	F1KIU31vwonAv1mlqk4oghKMWEchd7DoYskwYyHYV0CSdfnARuxHzKXnHmMKALcZ
	kYjiRQ==
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43dxw40ku9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 09 Dec 2024 13:02:38 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4B9D2ZNW023787
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 9 Dec 2024 13:02:35 GMT
Received: from [10.216.3.14] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Mon, 9 Dec 2024
 05:02:30 -0800
Message-ID: <e56cd9bf-8fa7-44b0-b00f-45cedb73e194@quicinc.com>
Date: Mon, 9 Dec 2024 18:32:26 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 6/7] arm64: qcom: dts: sm8550: add interconnect and
 opp-peak-kBps for GPU
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Clark
	<robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio
	<konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        "Dmitry
 Baryshkov" <dmitry.baryshkov@linaro.org>,
        Marijn Suijten
	<marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, "Simona
 Vetter" <simona@ffwll.ch>,
        Bjorn Andersson <andersson@kernel.org>, Rob
 Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor
 Dooley <conor+dt@kernel.org>
CC: <linux-arm-msm@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
        <freedreno@lists.freedesktop.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>
References: <20241205-topic-sm8x50-gpu-bw-vote-v4-0-9650d15dd435@linaro.org>
 <20241205-topic-sm8x50-gpu-bw-vote-v4-6-9650d15dd435@linaro.org>
Content-Language: en-US
From: Akhil P Oommen <quic_akhilpo@quicinc.com>
In-Reply-To: <20241205-topic-sm8x50-gpu-bw-vote-v4-6-9650d15dd435@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: mGz5ZhSyilZBHNO3DmG9QYBVwTGynjgo
X-Proofpoint-GUID: mGz5ZhSyilZBHNO3DmG9QYBVwTGynjgo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 bulkscore=0
 suspectscore=0 priorityscore=1501 adultscore=0 mlxlogscore=940
 clxscore=1015 spamscore=0 mlxscore=0 lowpriorityscore=0 phishscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412090102

On 12/5/2024 8:31 PM, Neil Armstrong wrote:
> Each GPU OPP requires a specific peak DDR bandwidth, let's add
> those to each OPP and also the related interconnect path.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>

I haven't checked each bw value, still

Reviewed-by: Akhil P Oommen <quic_akhilpo@quicinc.com>

-Akhil

> ---
>  arch/arm64/boot/dts/qcom/sm8550.dtsi | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> index e7774d32fb6d2288748ecec00bf525b2b3c40fbb..955f58b2cb4e4ca3fd33f1555e36a15cfc82d642 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> @@ -14,6 +14,7 @@
>  #include <dt-bindings/firmware/qcom,scm.h>
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/interconnect/qcom,icc.h>
>  #include <dt-bindings/interconnect/qcom,sm8550-rpmh.h>
>  #include <dt-bindings/mailbox/qcom-ipcc.h>
>  #include <dt-bindings/power/qcom-rpmpd.h>
> @@ -2114,6 +2115,10 @@ gpu: gpu@3d00000 {
>  			qcom,gmu = <&gmu>;
>  			#cooling-cells = <2>;
>  
> +			interconnects = <&gem_noc MASTER_GFX3D QCOM_ICC_TAG_ALWAYS
> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
> +			interconnect-names = "gfx-mem";
> +
>  			status = "disabled";
>  
>  			zap-shader {
> @@ -2127,41 +2132,49 @@ gpu_opp_table: opp-table {
>  				opp-680000000 {
>  					opp-hz = /bits/ 64 <680000000>;
>  					opp-level = <RPMH_REGULATOR_LEVEL_SVS_L1>;
> +					opp-peak-kBps = <16500000>;
>  				};
>  
>  				opp-615000000 {
>  					opp-hz = /bits/ 64 <615000000>;
>  					opp-level = <RPMH_REGULATOR_LEVEL_SVS_L0>;
> +					opp-peak-kBps = <16500000>;
>  				};
>  
>  				opp-550000000 {
>  					opp-hz = /bits/ 64 <550000000>;
>  					opp-level = <RPMH_REGULATOR_LEVEL_SVS>;
> +					opp-peak-kBps = <12449218>;
>  				};
>  
>  				opp-475000000 {
>  					opp-hz = /bits/ 64 <475000000>;
>  					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_L1>;
> +					opp-peak-kBps = <8171875>;
>  				};
>  
>  				opp-401000000 {
>  					opp-hz = /bits/ 64 <401000000>;
>  					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS>;
> +					opp-peak-kBps = <6671875>;
>  				};
>  
>  				opp-348000000 {
>  					opp-hz = /bits/ 64 <348000000>;
>  					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D0>;
> +					opp-peak-kBps = <6074218>;
>  				};
>  
>  				opp-295000000 {
>  					opp-hz = /bits/ 64 <295000000>;
>  					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D1>;
> +					opp-peak-kBps = <6074218>;
>  				};
>  
>  				opp-220000000 {
>  					opp-hz = /bits/ 64 <220000000>;
>  					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D2>;
> +					opp-peak-kBps = <6074218>;
>  				};
>  			};
>  		};
> 


