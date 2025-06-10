Return-Path: <devicetree+bounces-184218-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D33EFAD3487
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 13:07:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A5D513AEECA
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 11:07:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAC3728DF1F;
	Tue, 10 Jun 2025 11:07:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ozUwuk4p"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A15728DF12
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 11:07:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749553649; cv=none; b=qiS3sdg9Z0+42DQ3VeFrrjci1YT4eT2cxkKp1bUUrMJbeots6s70SLb9dLWlgcK41Jlogm5Y85k34FmO0MiUP1F9OI0lmPI6DRbCOTRtNACVuGRxXAg8hlkkaR872AknJfCbDSAtdm10ESCjLTU0WjQvSF5k2UR0riVSxPHa9jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749553649; c=relaxed/simple;
	bh=UPlSsOeQrv5JUW5Lfe0X5nkvCTI9hlUwH96nurL1irc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mKxmV32YQxGfD7mBNbDlw1IqLfhYEPtjCm9lYQxc/iYZ4mjpLRH6hl1huyt3VxuluneAYDhNKqduNB74q22T57YiReJLPX0FMYmHH/waCcmcYgPh8Cj5Kz4o7UHHYnWEbFBtFqHJmPb23lBlT75mIP3uCT43cOOoHq9s1F7MCeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ozUwuk4p; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55A8RltV014709
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 11:07:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=67IOVthVyAUCNLQvy2dAGJFK
	71qcOVj/j2a2DCuKxFc=; b=ozUwuk4pI0e+BxTK6z0TRimpey/N3EVTyiLkO8F/
	ZdhOSPQny7XTvFSQtffbeCuqqhPCZhVcUfTxOOwAlIJsoJztI3ck/uc/lAMXBcxQ
	2CkfXC9Y58MUy9wKtnaeSLhFEE/Iy+gp/WxWMk4uXl/z/rdE8nZqg4WPcFBNz4+K
	+nPw3fv2LnzRgJYv8YObNiOedcMZOCahxWelcy/FEIi32XGtuq8vTck+vFh2Vsvp
	jHHS17fUDzCywifq6rOXnC1Lm5hFSPciCBNMFebGqVvptcWfnEBGJmyYyzEztA3I
	Q2CU4gQ5O0p2w1WTnWWqjnT4bSMQsqRdwlSzlfdU0uaTNA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 474dn693vp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 11:07:27 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7d0981315c8so544018285a.0
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 04:07:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749553646; x=1750158446;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=67IOVthVyAUCNLQvy2dAGJFK71qcOVj/j2a2DCuKxFc=;
        b=gY5AY6AlaCeIDM+NBmd2gdVq47jB0vBJx5/D8am745DP+HGwQKc48BSoDcWpB5z7Tp
         oTW7/BENkJ7+M6RE78VVyp3TjHG9zWv2UBGyG06AuHud5NL/tjDhVotF0z8adcsk+W1V
         ZQRQH5gOg2AkfQkhhHVIhVwt3SQBwuSSLdeo0BOwqMTGLoXAHYonCd3YDEqCA4xR4Ic+
         d4pto0Pde7dXKeyWHz4fB8ZlLQs7eB5fmnTlwlFvoZxrhrTyhtUaCGmT5IrOK8BQVygI
         kwhGAE1fPA7nS7HVZ1ijgL13t29B+dF10Xi9FAE7mt1oVA9eKBf5ERNqedgdqzNQDp4D
         FWng==
X-Forwarded-Encrypted: i=1; AJvYcCVnSLuiK9QC7QpFeTGdgthEcb3K43r2c2ln3MgJQDdZCwjJMzR3Cr9jOXVJdWobG1+7a5SRpPI3vl6+@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5jQhkwgDiIf/5+MDjF57p95E+fwzSHTuGPCclUVga7aBySbRn
	bHQ1Pd+PMBlIorSAg26F6tgAlYGgkVBjnm69UapdJdPVg3THLTrqLFJVm3tWEhwQMFA1sBwTKo0
	8D4VIVHTdzg77+4tgiajqIh5Z/OvmVX0/RPgB2OX6u2huPeUELhMUe4cEEMGeRqwQ
X-Gm-Gg: ASbGncv7ASRRHbpKeQ813ReiJjy9PCJDydD/vx4yx56T6bQjzOlk1CpBttPKqUl4tt7
	J8dkV6gbnXNOB8wYasQj8SWRxcToc/2CAzK25fkvDE0UynxodrHkOJDty2GBZ5CaPjtC/yuGOBr
	BrYYZ47enfjXt8McP1L4eFcewY6hy6YU9GErNha0sjDMHaeVFwfOn6zTy7StkhCt/v97QF/KygZ
	uIwAwNsyISSNUGro2oQnfDdcz19Lq1iYR3L8N9CjFqEkv8z/tyPPC8VLirLi588/l1qBpqK+mnK
	UuI1APbTRmmPKMIReDW2uTXXMMNpWYE3Bn2AscmJfRRGrq4UxuBwVm2tVwpI9zHAy/4L0sn7E93
	kAZUurtPJmjFq9kpmz1zUYdjoYtZQKV/mpkI=
X-Received: by 2002:a05:620a:17a5:b0:7ca:f09d:1473 with SMTP id af79cd13be357-7d22997212cmr2105916785a.28.1749553646129;
        Tue, 10 Jun 2025 04:07:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFQUgDPSzkOF7xlBQA+g6oVPlHMD5leL1gdy86R0SYpc/kGI1tFwHixo/KGMNQxz18+0VYj+A==
X-Received: by 2002:a05:620a:17a5:b0:7ca:f09d:1473 with SMTP id af79cd13be357-7d22997212cmr2105912785a.28.1749553645647;
        Tue, 10 Jun 2025 04:07:25 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5536772aa46sm1503884e87.187.2025.06.10.04.07.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 04:07:24 -0700 (PDT)
Date: Tue, 10 Jun 2025 14:07:21 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: sm8450-qrd: add pmic glink node
Message-ID: <20250610110721.tn7kkbcucbfx2o2e@umbar.lan>
References: <20250610091805.2997546-1-krishna.kurapati@oss.qualcomm.com>
 <20250610091805.2997546-2-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250610091805.2997546-2-krishna.kurapati@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjEwMDA4NiBTYWx0ZWRfX/aaLjNp2gftX
 jtWwZ3dn94bihazeEajM8eXZgj/rR8nr1Y4sYaA5Q02JYJI1j+iDu3cOsKIANO9P3yGqHmeAd8y
 849biFw5PKS2EgA3IZ2apLiE8XqNTC7fizrq/CzaW7ojy0JGTsL585+DVrTq+sN2OW+OwhzNIw8
 ycloRLoUrwFlwsVcMtoHUJz9BrZjes8JA3M+Wl4gWN5Oek2PexrLkUTGJ/na6QuD/qlj8EDGYkh
 kj3DmdiaX+Kryuu2B0Eb6cn+4kE51776sQEVMUL7tHgK3Cybo4BBNHdH2sRtsI/g95jHfJLrFsK
 XPimsPpJRU1HzdrNtN+zCV9ITcEcEDprBQaUqfucJlfRVYv5mGOQ2pLX7xQgrgcqu6WMut7YTM1
 hUEHZde+wWauLbHrhAX4lNYd2EssPUr61l5pbB0dK+LBTtBXuatGlyUGqreUIgJFU7ZO699y
X-Proofpoint-GUID: PAewTCGsggz57nG8cCjfoVAyfM1N5CNF
X-Authority-Analysis: v=2.4 cv=FaQ3xI+6 c=1 sm=1 tr=0 ts=684811ef cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=5fFL1RxHffGAKPhwOvIA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: PAewTCGsggz57nG8cCjfoVAyfM1N5CNF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-10_04,2025-06-09_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 bulkscore=0 phishscore=0 adultscore=0
 mlxlogscore=899 mlxscore=0 spamscore=0 suspectscore=0 malwarescore=0
 priorityscore=1501 clxscore=1015 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506100086

On Tue, Jun 10, 2025 at 02:48:04PM +0530, Krishna Kurapati wrote:
> Add the pmic glink node linked with the DWC3 USB controller
> switched to OTG mode and tagged with usb-role-switch.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8450-qrd.dts | 54 ++++++++++++++++++++++++-
>  1 file changed, 53 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8450-qrd.dts b/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
> index 8c39fbcaad80..0580408485eb 100644
> --- a/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
> @@ -37,6 +37,49 @@ vph_pwr: vph-pwr-regulator {
>  		regulator-always-on;
>  		regulator-boot-on;
>  	};
> +
> +	pmic-glink {
> +		compatible = "qcom,sm8450-pmic-glink", "qcom,pmic-glink";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		orientation-gpios = <&tlmm 91 GPIO_ACTIVE_HIGH>;
> +
> +		connector@0 {
> +			compatible = "usb-c-connector";
> +			reg = <0>;
> +			power-role = "dual";
> +			data-role = "dual";
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@0 {
> +					reg = <0>;
> +
> +					pmic_glink_hs_in: endpoint {
> +						remote-endpoint = <&usb_1_dwc3_hs>;
> +					};
> +				};
> +
> +				port@1 {
> +					reg = <1>;
> +
> +					pmic_glink_ss_in: endpoint {
> +						remote-endpoint = <&usb_1_qmpphy_out>;
> +					};
> +				};
> +
> +				port@2 {
> +					reg = <2>;
> +
> +					pmic_glink_sbu: endpoint {
> +					};
> +				};
> +
> +			};
> +		};
> +	};
>  };
>  
>  &apps_rsc {
> @@ -462,7 +505,12 @@ &usb_1 {
>  };
>  
>  &usb_1_dwc3 {
> -	dr_mode = "peripheral";
> +	dr_mode = "otg";

It should be a default, you can drop it.

> +	usb-role-switch;

This should go to sm8450.dtsi

> +};
> +
> +&usb_1_dwc3_hs {
> +	remote-endpoint = <&pmic_glink_hs_in>;
>  };
>  
>  &usb_1_hsphy {
> @@ -487,3 +535,7 @@ &usb_1_qmpphy {
>  	vdda-phy-supply = <&vreg_l6b_1p2>;
>  	vdda-pll-supply = <&vreg_l1b_0p91>;
>  };
> +
> +&usb_1_qmpphy_out {
> +	remote-endpoint = <&pmic_glink_ss_in>;
> +};
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

