Return-Path: <devicetree+bounces-254534-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 16740D1912C
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 14:18:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3C31F305FFDA
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 13:13:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEFAE3904D6;
	Tue, 13 Jan 2026 13:13:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="THginQgt";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="P8RZB2FN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB81B38FF17
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 13:13:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768310021; cv=none; b=bhhD14HpIPDl43STSYs20M0COt0Z88+mKz4sCYwEI12IlbC2ljtOzN+DQtdWK20ZLEI8gsBrEVVkwXFpDbwPmAfeA1yZZUGggPY32FBY/srQUJMqGebrCA7FywJdYT/FDlUxSYe9E2FqwriRj2j6FNWL150sUX5X/fc65yNew1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768310021; c=relaxed/simple;
	bh=dk5jbImLcB2x8AUb5RmXedSgI5VU/00aSHRlIsFQACE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=l6GK+SwVx/AMMuzIWojc+twyjWMfBLwcbhCJ4mAtzPM+dyo58dsDJyWaqaN/39BMBeW9dLXRiA6mKpCf+O5xM+noqPGYWJPXaO0+OKUe/fTNeAgyQ4IoWmF/dj6xy3zLVCvGx/TsZ1iEM92G4skBgIS9jUDZv46DNFuXyLNVkNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=THginQgt; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=P8RZB2FN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60D7mY1i3300068
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 13:13:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0bwgBAmS/C+0L1XuQ0SYs4qvA/Tw0QYyfHwE2EwIuVs=; b=THginQgtkhUQiSel
	ux3m7OHK2wyaIn7UdCvPp9UZZ1CkuJB94IKAf8QN43Hv6/SPe31DUBVU8L9jPp64
	4ss9W67pMYLJSQXrclEMgRilReHQCs/VCtMUzOgrTOLVNCiRE9ub2yWnLJBiDlJN
	vqIGjWrgCLKxOF/ayTYm7jqLAzzQB1HI/hPou5TiLHUROxgxjNNGbAJvZxvS0yYQ
	s19dRCvaBO6QpXdCFYmf6rbFqkY9t5SiHSW0ZzsIDTVTTKkYQNzcPBjaJOMTwWR7
	MjY1NxYPMgzJkUyu2XbbOfn62vNGecSZtYhMbs2xbwKmfRBAwA+YA8+cCs0Ove9T
	tulawg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bn6jmavap-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 13:13:37 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ee05927208so27116211cf.1
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 05:13:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768310017; x=1768914817; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0bwgBAmS/C+0L1XuQ0SYs4qvA/Tw0QYyfHwE2EwIuVs=;
        b=P8RZB2FNeS9xea/z6HWJF8tt7jWNSwDV4lkyergRnm+DQn5uWBFpeSPdJ9YcPF+vvh
         ljq/y/epzQxcyhcL7uUXb5CB5FW5UQD+R/qVbGuN1v/7t3lxtHI3A5j8GZqO+rrjNbvq
         OvM7Ljrs7A2embMs6NKdFv70ygQJw+oo9VqCFMpyspaBnrgahSdC0vXNMTGeNbSbWUeW
         9Y/5dT/WoIelkCjMoH2eY0bNx6zPpsyK/O9ngSlCBR4qQgbpvoa0tCD+OmVrUcx+dYh7
         f3Pce5avhPr+c06aTTbCw7/WctSnfv84/0HYTAGHObrunL+ka6hA4/lS5RI5STalrMR/
         PKgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768310017; x=1768914817;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0bwgBAmS/C+0L1XuQ0SYs4qvA/Tw0QYyfHwE2EwIuVs=;
        b=udPLNrxqvNZBfXc4iD4x76VOGHnpBWpygPCWM4qriFBvLMC2z7ob7mphsOhOZh52Tb
         fIax0iy6W5RGWMjV0s5uWtrDw/LCVwWDfhbwLPNPDkRDj/1geqqouq4BAGLkrrAHVubp
         9WHuW1m95n2HzBz3xR4kWYN26C+V2e3AetkmJ/lWNMLycNQivQJF4mOVtktap5+168iG
         dE00XxaVCSRGFO3/DRT+lkT/1iyvePfo2s6j14t0NXGQoqdhO4yFuXy6dm0Ti8k9JdS8
         WAiuZCa/y0YTYvnjghUMhyQykfH1GRHwMUN9sAEaVwz32PBGaGSodqIfqUmbQJUXxRYb
         AmNw==
X-Forwarded-Encrypted: i=1; AJvYcCVA0kj9ZCEH2QvuF8e6d/XcmYzoE8PyPl6HGGnTRrWEo6YJAqs/MU/P+dN+UY7HwBXHIzTzYvFxxZiH@vger.kernel.org
X-Gm-Message-State: AOJu0Yzaxv8MsjwpsDK2irGS5fo3r+HCYr1lkbIQC50iAVy6Y+S+2PZk
	Y+b2pzYsDUrT0is/ajKRZf2Avpn+aOIBNRKQpYzKZ898hfW5GFSPXGPCt5pDJFZVowKuzOajeu1
	k/hAQOfPD08biNyJn+aS09Njum5xzAPnYSUa9dLmSssIAmX+D4C1kgbS7rXWjDZbX
X-Gm-Gg: AY/fxX6ufFN4J4aI43J6egYmOxMZ9Q1uPkrS6Rra00tbzDjXtECMwSp/VA4WK2bW8oq
	WkKqbS5g9KDrl4W3u9JBhqlisNWRmiIn8qP54wSddxDzu//tQB0J6bJJr8ygtub4btNFrmzh9u/
	472Wr9IptzonTBik3XVrJ0fyVmb2ajiyzix2J2lhtIaLwE3XJVmnm3dfprdFDDN+LA+uFwT4v5q
	7kOgXd1ezBH1Z3GkncS7IxqiBgFgKx6vJeVoCa3MjXhB0x3foCDCh7fUMmNHSO+Yt+v8GO+uO3/
	4zjNpeIMvSCs2Wyz/Y6TwY9t8Wxe8oNjXTQelHDMs2C7+BZ5Oqjms1kMJrd3sm/H2hKQ2ZKTosK
	Y3rLdteM+GcM09AyO1WSlxzeIxN/rQhgmqTsYF8ZO/W7WqO1cD4FfNJOcz4/MVXif9jM=
X-Received: by 2002:ac8:5d4d:0:b0:4ed:b409:ca27 with SMTP id d75a77b69052e-4ffb4a3c298mr254101051cf.10.1768310016917;
        Tue, 13 Jan 2026 05:13:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGMnv/lcUVT4eP4KfERHWUj9va04jydi2ZLUZKaGU1BHKtNSsfG/3e9UddbuRq0n628WO/yaw==
X-Received: by 2002:ac8:5d4d:0:b0:4ed:b409:ca27 with SMTP id d75a77b69052e-4ffb4a3c298mr254100671cf.10.1768310016477;
        Tue, 13 Jan 2026 05:13:36 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8720e090dasm514513566b.9.2026.01.13.05.13.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jan 2026 05:13:35 -0800 (PST)
Message-ID: <01de4054-eebf-4ef3-ad74-c806b208a848@oss.qualcomm.com>
Date: Tue, 13 Jan 2026 14:13:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFT 2/3] arm64: dts: qcom: glymur: Add USB related nodes
To: Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
References: <20260113-dts-qcom-glymur-add-usb-support-v1-0-98d6d387df01@oss.qualcomm.com>
 <20260113-dts-qcom-glymur-add-usb-support-v1-2-98d6d387df01@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260113-dts-qcom-glymur-add-usb-support-v1-2-98d6d387df01@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: kx122HbGau2gu5AFOYwHwkvUfo-AK28H
X-Authority-Analysis: v=2.4 cv=SK1PlevH c=1 sm=1 tr=0 ts=69664501 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=sYW25ZiEPLqq09AedJsA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: kx122HbGau2gu5AFOYwHwkvUfo-AK28H
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDExMSBTYWx0ZWRfX3EB5EcTS4/JA
 H3ceYtfWwB09PFAgaoxMS9M2PFNh3IvO64aFOjZWuoTPDYT6w9uJ/6pxHzgh0Qj64ZH9pafw7rT
 BF6YoWuWkGD6I5Lgt6gj9F4vIHMtPU6LF6YGinBX3GrSxINhZaeWQdtzwC1+C2RhFmVRRGSqn9S
 D0m54SCL+JHfoM1O0gs5rfki4tyrHL73HIuGtak87O3lJXkJoIddOyRwayCUsAucs69X4YWyYvn
 /dyoIEBMISvPP/FM6sRPEib/nregZs7xqphE5Kj+l2U5vMoLBBT2Sr55r/rMTUPGswM49oJ//kp
 SaLkf6MY983KkR8Lk/9o1GZRRMYWsHJsGynehThI/Dl0egH2iQ3QjenQpD+1YxXTHds6ETxkw6x
 RFstcVx9yDn3FbmQP1bLT55E1PsIw/DJi2KprX+WAvAyWg/zkbJ1Q9gTyta/Uz360t6t7nZPrwY
 6OCW7S6klsvLKBbKTaw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_03,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 impostorscore=0 priorityscore=1501
 lowpriorityscore=0 suspectscore=0 clxscore=1015 adultscore=0 bulkscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601130111

On 1/13/26 1:33 PM, Abel Vesa wrote:
> From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> 
> The Glymur USB system contains 3 USB type C ports, 1 USB multiport
> controller and a USB 2.0 only controller. This encompasses 5 SS USB QMP
> PHYs (3 combo and 2 uni) and 6 M31 eUSB2 PHYs. All controllers are SNPS
> DWC3 based, so describe them as flattened DWC3 QCOM nodes.
> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> Co-developed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---

[...]

>  
> +		usb_mp_hsphy0: phy@fa1000 {
> +			compatible = "qcom,glymur-m31-eusb2-phy",
> +				     "qcom,sm8750-m31-eusb2-phy";
> +
> +			reg = <0 0x00fa1000 0 0x29c>;
> +			#phy-cells = <0>;
> +
> +			clocks = <&tcsr TCSR_USB2_1_CLKREF_EN>;
> +			clock-names = "ref";
> +
> +			resets = <&gcc GCC_QUSB2PHY_HS0_MP_BCR>;
> +
> +			status = "disabled";
> +		};
> +
> +		usb_mp_hsphy1: phy@fa2000  {
> +			compatible = "qcom,glymur-m31-eusb2-phy",
> +				     "qcom,sm8750-m31-eusb2-phy";
> +
> +			reg = <0 0x00fa2000 0 0x29c>;
> +			#phy-cells = <0>;
> +
> +			clocks = <&tcsr TCSR_USB2_2_CLKREF_EN>;
> +			clock-names = "ref";
> +
> +			resets = <&gcc GCC_QUSB2PHY_HS1_MP_BCR>;
> +
> +			status = "disabled";
> +		};


[...]

> +		usb1_ss0_hsphy: phy@fd3000 {

Let's not repeat the mess introduced in hamoa..

Perhaps let's fall back to usb_0 etc.?

[...]


> +			snps,dis_u2_susphy_quirk;
> +			snps,dis_enblslpm_quirk;
> +			snps,dis_u3_susphy_quirk;
> +			snps,usb2-lpm-disable;

Other SoCs have a list that's much longer, please consult Wesley if
this list is enough

Konrad

