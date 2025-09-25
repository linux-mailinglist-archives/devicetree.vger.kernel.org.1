Return-Path: <devicetree+bounces-221350-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ACDD7B9ECF5
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 12:50:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9B7B43A92F5
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 10:49:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20D882F3634;
	Thu, 25 Sep 2025 10:49:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cLmYY9IS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86AF32F3611
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758797395; cv=none; b=VNnIrIj8sv0ISr61BqwAv590etgEzU7J4tErBTOG0AsN2J5jX8XyMMY7+z8yYzqWM/mNdI0GAJ+pR0zEKjMSqOJafje4BAFCsekkHdzUf314kwcuBDD5gJsCHZuxZ+VQ9kXfmokCs7Cech3skjzm2SA703cCdk5hf/l+3AYtJy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758797395; c=relaxed/simple;
	bh=hNOysRWoNTQ//zrniCV0ThMsJiD6FL10/IYdbR2ZHb0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kIYz0OALiM1NsdXUSESQlS3SNfutco3vdKXRAkef6/0ePU3GjyryRWJuVEzZvdvr/DqUnqcEissvyap9/JkrUxVwwRiOnHBltVbZjJUV3Xhn6H9hQ2t7RqAS4jRnBbtv2jGE6y7dQR3vf5Sasme1cBrlntUGES+6CSXhrA2K90I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cLmYY9IS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P9W2ed018033
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 10:49:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	h26SUCBcpJnkfQuXjheoV3nT2HRPiqNFhqUpTLbAokA=; b=cLmYY9ISKIY0jefs
	bWDzxN7oRjvnv/qUQ3+25KIJW1Tf2vTt0YcUxr4SX/w1Z1Qk7JuEg06jlh36pxHs
	TW77UDc6SzZP0wqNdaWUCp+yyYOfmDYqsjunwDWFCfQc2amZvqPJNrJ7+ZODpy+P
	VZl01yyb4VaT5t0Q7ZhkBx8/I1rqF/4h6zTMcUZltQTN9RaBHYY9dHn/ceowyypv
	HiysHS+W0MTw/zgbN5tFB2zFxY24atkwxeEsI7/2m0EoIjzvGwDOufbWKcrA5VLw
	3CRbVmBzf8/pYOr1NgUuCT+9agSIKVAp6JuV/9CUcrSmlMsHQgOTqDwJR/LGSpdV
	S755cg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b3kkbs2q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 10:49:52 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-85e23ce41bdso7645685a.3
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 03:49:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758797391; x=1759402191;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=h26SUCBcpJnkfQuXjheoV3nT2HRPiqNFhqUpTLbAokA=;
        b=d8fVS8SstYAAXxRkQvH8D2WB3essn8DzkKVJAdkJLzQCIzp1XZXt0V1klO64KirF3a
         opKJzUxVQsBFbxJXLOJ8v5ZEZEC6rpBy58rE3Ducn+e5TGkWW8rO2g9laACS04WEtOrB
         AbXuN9zxfHVJPF9stWY2BBm7ejVyjs6xffs1sLSMvem5K1cWIoAfWIABidnm5tYUhiP3
         FxrIA7yLwIkjTgOAMwbenTetr/dNsWzqYrcETUp0/zd84JBcZIGNqrTfxp0ji4xJvoIK
         sR263Eped/4ApmdWy3mtDpUJ7UPsQw3oiKko+3es6utPuuGy065Wht4zSduOgFCv0A+5
         0KFA==
X-Forwarded-Encrypted: i=1; AJvYcCV7/7MiVFAHvZPm2Z17LYh6E/vNHPXaMoxnXCR13f+wU+7PgrRLplAAOokHTHdXtIpMbwenrpa/tA6w@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1+vqPKAKBP1pHnwUJ7PwKbD4qrGxRLIRXGVhOz6JfD2m6tCI1
	N8w/iDQ5I5Op+/q9h2tLlBfOKJypfIDk3fkntignDZcTGNVA6uZIghRdP4BjfaVaVVPxGgeUlsL
	Tm/aSBH6ZvyJXG2NT+r0VrIKmjxadd8ldbUB2GM/grcGK2Yl8yvQWMiKARvgrgSIH
X-Gm-Gg: ASbGncvDABpYRtXW1Fc40UMkm4u0a+mV7mRDRZ0yHz5byplowge9+RPJ7/bfQDMQFNf
	XzaZO2n1W4SOtF3JbLhYfCSolGcAqeB6wh0XGveiMkdCeIHQ3anFptAWUBeO4F7ftV99+pOU6sg
	DPZTD0PYkM+5yC2sLjvyc1CHsSJth8yxQX2mDrcN2MBh8tNfv1uHP1c7v6de11Ko3ah6OMTC7US
	V9+ik14yxvAlcCupGtvoIBvBVRat12thAE0J4V+ikfQNFHilLYRx1+pCv97WTnKpYvKn8MLtnLW
	5pvhEUMuAefU3fC7YF7EPgptrPYmdlmWm01kmNGSYrSV0vZq265hYxDhm0NQUs52SVBk4Wyty/f
	P+BATXJjS7Dh10f463mFRBA==
X-Received: by 2002:a05:622a:47:b0:4b5:eaee:1c04 with SMTP id d75a77b69052e-4da41e11429mr24691531cf.0.1758797391532;
        Thu, 25 Sep 2025 03:49:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGsRZrwKZiqNNQLYcT8cpG6XBOxHcJOuTA0wdEBBX9lKxQLY+5v2aYZ7WqVEiIAOJD4mjh45A==
X-Received: by 2002:a05:622a:47:b0:4b5:eaee:1c04 with SMTP id d75a77b69052e-4da41e11429mr24691231cf.0.1758797391042;
        Thu, 25 Sep 2025 03:49:51 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e32b4d71csm16900185e9.0.2025.09.25.03.49.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 03:49:50 -0700 (PDT)
Message-ID: <b1c12696-9e08-47f4-8fd0-11e415af187b@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 12:49:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: lemans: add DT changes to enable MDSS1
 and DPU
To: Mahadevan <mahadevan.p@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250925-lemans_dual-v1-1-9c371803198d@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250925-lemans_dual-v1-1-9c371803198d@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: qp52eF5wEhLu1gPis7wVh2cO6aOItqfn
X-Proofpoint-ORIG-GUID: qp52eF5wEhLu1gPis7wVh2cO6aOItqfn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA4OSBTYWx0ZWRfX+rSZ5EudNmIZ
 Wl2bf2ZhTCwd6WSgUV7gReeXk/RS2rpAOAvSA6GgTX0seryEDTriEJv+XDALVZPFHUODsQ4YvPf
 z/qBBLpeOS6uWIEvnf6XWsONH2hr9zzQwHAoKw22E51BGHoIJyFqTFDLuUGr7OOBuAbBiR9nl+q
 ggNYEPj8+DRhmtKYQwEqc14o6esmZdKCwnEyAhp8wPrdMNws2CtkXCWub/DQ2Lkx2wrmNV3fZuE
 bbeDnJhezgaf+YCNn60RTcMdS5TWUmk7MSBicsDlJILzp0Mu25csfi8CkfHqtlJMGwk48iNVI7x
 3V2lmYi5+LPfyXMxJKk1jubmXZtsQvuqmXdZ6hs9giCutyS8c6qx6VbNtPkbUK4/fqibeJxZcnF
 15n/s/X4
X-Authority-Analysis: v=2.4 cv=BabY0qt2 c=1 sm=1 tr=0 ts=68d51e50 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=VcSkLwEzsjgrpZKnPmsA:9
 a=Hb6oODzzW8XWRlyM:21 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 phishscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 malwarescore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220089

On 9/25/25 10:58 AM, Mahadevan wrote:
> Add devicetree changes to enable second Mobile Display
> Subsystem (MDSS1) and its Display Processing Unit(DPU) for
> Qualcomm LEMANS platform.

No need to scream.. "lemans" or "LeMans"> 
> Signed-off-by: Mahadevan <mahadevan.p@oss.qualcomm.com>

Please include your full name in git config

> ---
>  arch/arm64/boot/dts/qcom/lemans.dtsi | 88 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 88 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
> index 48f753002fc459a3e9fac0c0e98cbec6013fea0f..45c11c050d3f8853701fd20cf647aef5c6a9a8c9 100644
> --- a/arch/arm64/boot/dts/qcom/lemans.dtsi
> +++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
> @@ -6751,6 +6751,94 @@ compute-cb@3 {
>  			};
>  		};
>  
> +		mdss1: display-subsystem@22000000 {
> +			compatible = "qcom,sa8775p-mdss";
> +			reg = <0x0 0x22000000 0x0 0x1000>;
> +			reg-names = "mdss";
> +
> +			/* same path used twice */

this comment is misleading

> +			interconnects = <&mmss_noc MASTER_MDP_CORE1_0 QCOM_ICC_TAG_ALWAYS
> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
> +					<&mmss_noc MASTER_MDP_CORE1_1 QCOM_ICC_TAG_ALWAYS
> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
> +					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
> +					 &config_noc SLAVE_DISPLAY_CFG QCOM_ICC_TAG_ACTIVE_ONLY>;
> +			interconnect-names = "mdp0-mem",
> +					     "mdp1-mem",
> +					     "cpu-cfg";
> +
> +			resets = <&dispcc1 MDSS_DISP_CC_MDSS_CORE_BCR>;
> +
> +			power-domains = <&dispcc1 MDSS_DISP_CC_MDSS_CORE_GDSC>;
> +
> +			clocks = <&dispcc1 MDSS_DISP_CC_MDSS_AHB_CLK>,
> +				 <&gcc GCC_DISP1_HF_AXI_CLK>,
> +				 <&dispcc1 MDSS_DISP_CC_MDSS_MDP_CLK>;
> +
> +			interrupts = <GIC_SPI 865 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-controller;
> +			#interrupt-cells = <1>;
> +
> +			iommus = <&apps_smmu 0x1800 0x402>;
> +
> +			#address-cells = <2>;
> +			#size-cells = <2>;
> +			ranges;
> +
> +			status = "disabled";
> +
> +			mdss1_mdp: display-controller@22001000 {
> +				compatible = "qcom,sa8775p-dpu";

Adding nothing more but the DPU isn't very useful at all
and doesn't really let you test the hardware (since you don't
provide a sink)

Konrad

