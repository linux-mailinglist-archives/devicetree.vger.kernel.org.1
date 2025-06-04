Return-Path: <devicetree+bounces-182669-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 51AD4ACD991
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 10:21:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 669C93A5014
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 08:20:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3CCB28BAB8;
	Wed,  4 Jun 2025 08:20:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pU0ZQv6F"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED7BF2690D4
	for <devicetree@vger.kernel.org>; Wed,  4 Jun 2025 08:20:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749025229; cv=none; b=Jp7b9WFwhp6F/gy95mjuE6nyKhs5gmnr7CXYsMmgAK9TBPFNwdELajIGv5bIea/9Vi2rrZNPFB58FGrD9jZ7BW3uU8U/6Go6KWLplx8A5GVbuYgL1dMpz+C3pKImTHCc2iWSQIRaIs4SjcsJZaHDZ9QUWFbdSsGaUNnuoZuoBFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749025229; c=relaxed/simple;
	bh=JGb+bcQ7NdVKw0dLe5OBFj+zTR3c/g4nArMOnaZSxa8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XiArrJYVTXH0siGrXZAoJanKzIYUZAYuModFNrYAA5LMVYcAI26Jl6Yl/kiePyMqvcfMlsX5Fq7lflkZVTy6a2AI4WrDAb1/sDqm4fd7NzDbGoX82Hcdd8+th3K8/7Enh7yrBRRXelf5y8bjNPpZEjFQIVE1vKaVjIxnk0iV3fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pU0ZQv6F; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5547WFLh032505
	for <devicetree@vger.kernel.org>; Wed, 4 Jun 2025 08:20:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=JaRFKW90tCNGsHKMAQuGxaLk
	aZHa3/TSvu4/2YBRcCs=; b=pU0ZQv6FnO0i8aTtrrczIVeKRWlpCSRMfvG0Rcjy
	YboZDqCzyVe6UHk4mdT0OZJnREGDviF3MMx9BfKy2ef7p/hKj6hQ1Hi92z4aMs99
	icvMXuQ2Pis0SoODIQftgotDe7h0lJnTu9Cl4yuHQBGIjbPz7oQhLVICewCmCw1Q
	OF7IhwJf2O5zlruvxcwZWSlHTaClY2k74BkEY30MTslXPCj680oNRdTvRpF7JUMz
	795wNusnbdyCRVLGkymOK6IRhXZMJ6mr0cScMO72IIRFBcC4Ue4y8TIOKQoO2Kv+
	0VUAazL68NWJUHR+J2ksYmWv1DLQLvxZ+0ysMThAp5iiGA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 471sfuv614-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Jun 2025 08:20:26 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6facb96d553so12450716d6.0
        for <devicetree@vger.kernel.org>; Wed, 04 Jun 2025 01:20:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749025226; x=1749630026;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JaRFKW90tCNGsHKMAQuGxaLkaZHa3/TSvu4/2YBRcCs=;
        b=E4f298A+TYi8p+VEoALSXFZdVEL4/Hbc9fL9CHlRqY/FH43NWSkfOwzL7iiCCGCim2
         gd6+YyA4CgUl0+2gZULkPx5u2VvQI1U54G/wYfgdGReFo1NCtUzBvAF1fhXHuCajkPSr
         hLLCBWmd+a3iKQRAa9nK94z+4uRGKuq4UBY7Rt5yshSieakOBXvcyRSgGAlJ1Gb33E7+
         nIxHBlezakEVEi5m2MyS6bPfJolVeI8gnSvO+GE75gxu6HsjQ8F7MpVxCvGmYGm/wZ5F
         6ovdnQPxZcjmiRFtIA+ETtcgAgTV+i15bO0Vhf1GdOOxecHsj/d28y/SL3Bafe1y9iLL
         0miA==
X-Forwarded-Encrypted: i=1; AJvYcCUip9gj1LxjdL2gr4S9uui8mir44ynGJN7gxAismZsdluLgZbMvaANgIPaRku75wpDYYsgH677On72n@vger.kernel.org
X-Gm-Message-State: AOJu0Yyi/pOuDYFbZBPOywoqCfitlFjJepF/PyNCyy7anu77BCwUjRse
	dOeIRDlrsaemdu8G0Kg8sguFz/k3B5FsqdlE/TICJQwxeKqhi6arQMWyk4uDCUOeysTrm7WKKnP
	B/mBEFUKbdfIS/ppvRP4nS/akaWR2N6o9XFV5BjGNgGKd4Kd3aJ5pQ19S8Zn+tvU3
X-Gm-Gg: ASbGnct/VwBV225ASneVD6tkDWRanyT3Vrl0IVb9kKN0HZSY2hxUpf9oDZyenDC1m1q
	mn7rUp6LaaLH3U5EUfGThwim0kGvTpMT6IEI94tOUuZXzaSo28dZWSPk06HtX1lGAFjNnlcwQNP
	/8d4F0uQ6uIWVS5Yor5+ZY9jFx+DHvBOtMHOirgpq6W+Pdi+pMiyBuUgovkmkZ0jKuraF2zft3n
	spk2vf67o7NqwYEoEuzQ7JLJ/HBtWVsRArEVwPNqUBwhcbes5HhCoyyHEQ5SlQyamsxQgBqTyd3
	hMspJkP42o3bOkNP9P8c/qBcxc6gFufGbTijohjvv51A7/YQibmyx0CJCF8Nfbn/PaKPpLZRUds
	=
X-Received: by 2002:ad4:5e8d:0:b0:6e2:485d:fddd with SMTP id 6a1803df08f44-6faf6a5edaemr36769276d6.1.1749025225859;
        Wed, 04 Jun 2025 01:20:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IERKsmanwW4+EAKRRkksLhDnRdNukd08U7k5f/+bCH8VteShFBDGHrCAbfCdnarM2/Uk9qSpQ==
X-Received: by 2002:ad4:5e8d:0:b0:6e2:485d:fddd with SMTP id 6a1803df08f44-6faf6a5edaemr36769026d6.1.1749025225527;
        Wed, 04 Jun 2025 01:20:25 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32a85bc4f55sm21266081fa.76.2025.06.04.01.20.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jun 2025 01:20:24 -0700 (PDT)
Date: Wed, 4 Jun 2025 11:20:23 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org,
        kernel@oss.qualcomm.com, Mohammad Rafi Shaik <quic_mohs@quicinc.com>
Subject: Re: [PATCH v4 5/8] arm64: dts: qcom: qcs6490-rb3gen2: Add WSA8830
 speakers amplifier
Message-ID: <wqirhpizetdi3o46grz4jrz2hyoosf3ih3qlxa6i3hqmimanjs@4oqczqllyek4>
References: <20250527111227.2318021-1-quic_pkumpatl@quicinc.com>
 <20250527111227.2318021-6-quic_pkumpatl@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250527111227.2318021-6-quic_pkumpatl@quicinc.com>
X-Authority-Analysis: v=2.4 cv=CY8I5Krl c=1 sm=1 tr=0 ts=684001ca cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=COk6AnOGAAAA:8 a=B248RJrvpR2VuhuRRl4A:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: rrJGMr71zXchMxPju5T_aO8lu2OlhdeM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjA0MDA2NCBTYWx0ZWRfX4TgtHUsZkC1z
 T2qBlcUpWd0kEfF5busAGUPynbSHsN35Q7fHtX2hXD0VB/nr5H2IYYXcdFwd9c04V2dGeKDUT5+
 zpM3lwzH1QddmzqAnIdjK2A3jFziT+Kk4O3vS/aS2rr7z3oO6aDiHcdXja02Bv7pXF8IXHhnnHp
 t5ZafvxFJ5/8InSCuUYYEBWGEvjZEDjF2OK37AQdGzKw7nL1blt06iisRP8Dn+5nFoduF0LCXs2
 ElysB2ywq2weYKGMUlSAoxq49nKtyEm2YQ7544w/xOrKmcxcW8z7u0tbKsunMtSPVFvzSFDOWE/
 kh7lnY6KfLE68gf+bPShWXX55jGo0frFD+qO1th6uGNjHvP3QJJb5eW3VwGSUA4vuG/19y03g7K
 yNbz0dRE6QmEpqIv8FFrP9C5jMQMtwWn0qEmmVLAAmFKZeau2eA8oNASVTGO1X0K+TWZoHZT
X-Proofpoint-GUID: rrJGMr71zXchMxPju5T_aO8lu2OlhdeM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-04_02,2025-06-03_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 mlxscore=0 adultscore=0 bulkscore=0 suspectscore=0
 malwarescore=0 clxscore=1015 lowpriorityscore=0 spamscore=0 impostorscore=0
 phishscore=0 mlxlogscore=973 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506040064

On Tue, May 27, 2025 at 04:42:24PM +0530, Prasad Kumpatla wrote:
> From: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
> 
> Add nodes for WSA8830 speakers amplifier on qcs6490-rb3gen2 board.
> 
> Enable lpass_wsa and lpass_va macros along with pinctrl settings
> for audio.
> 
> Signed-off-by: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
> Co-developed-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
> Signed-off-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
> ---
>  .../boot/dts/qcom/qcs6490-audioreach.dtsi     | 18 ++++++++++
>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts  | 35 +++++++++++++++++++
>  2 files changed, 53 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-audioreach.dtsi b/arch/arm64/boot/dts/qcom/qcs6490-audioreach.dtsi
> index 4111091f77b2..542a39ca72bb 100644
> --- a/arch/arm64/boot/dts/qcom/qcs6490-audioreach.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs6490-audioreach.dtsi
> @@ -11,6 +11,24 @@
>  #include <dt-bindings/sound/qcom,q6afe.h>
>  #include <dt-bindings/sound/qcom,q6dsp-lpass-ports.h>
>  
> +&lpass_dmic01_clk {
> +	drive-strength = <8>;
> +	bias-disable;
> +};
> +
> +&lpass_dmic01_data {
> +	bias-pull-down;
> +};
> +
> +&lpass_dmic23_clk {
> +	drive-strength = <8>;
> +	bias-disable;
> +};
> +
> +&lpass_dmic23_data {
> +	bias-pull-down;
> +};
> +
>  &lpass_rx_macro {
>  	/delete-property/ power-domains;
>  	/delete-property/ power-domain-names;
> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> index 5fbcd48f2e2d..21cb392c36fa 100644
> --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> @@ -19,6 +19,7 @@
>  #include "pm7325.dtsi"
>  #include "pm8350c.dtsi"
>  #include "pmk8350.dtsi"
> +#include "qcs6490-audioreach.dtsi"
>  
>  /delete-node/ &ipa_fw_mem;
>  /delete-node/ &rmtfs_mem;
> @@ -765,6 +766,14 @@ redriver_usb_con_sbu: endpoint {
>  	};
>  };
>  
> +&lpass_va_macro {

[   10.942165] va_macro 3370000.codec: qcom,dmic-sample-rate dt entry missing


> +	status = "okay";
> +};
> +
> +&lpass_wsa_macro {
> +	status = "okay";
> +};
> +
>  &mdss {
>  	status = "okay";
>  };
> @@ -1039,6 +1048,32 @@ &sdhc_2 {
>  	status = "okay";
>  };
>  
> +&swr2 {
> +	status = "okay";
> +
> +	left_spkr: speaker@0,1 {
> +		compatible = "sdw10217020200";
> +		reg = <0 1>;
> +		powerdown-gpios = <&tlmm 158 GPIO_ACTIVE_LOW>;
> +		#sound-dai-cells = <0>;
> +		sound-name-prefix = "SpkrLeft";
> +		#thermal-sensor-cells = <0>;
> +		vdd-supply = <&vreg_l18b_1p8>;
> +		qcom,port-mapping = <1 2 3 7>;
> +	};
> +
> +	right_spkr: speaker@0,2 {
> +		compatible = "sdw10217020200";
> +		reg = <0 2>;
> +		powerdown-gpios = <&tlmm 158 GPIO_ACTIVE_LOW>;
> +		#sound-dai-cells = <0>;
> +		sound-name-prefix = "SpkrRight";
> +		#thermal-sensor-cells = <0>;
> +		vdd-supply = <&vreg_l18b_1p8>;
> +		qcom,port-mapping = <4 5 6 8>;
> +	};
> +};
> +
>  &tlmm {
>  	gpio-reserved-ranges = <32 2>, /* ADSP */
>  			       <48 4>; /* NFC */
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

