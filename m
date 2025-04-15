Return-Path: <devicetree+bounces-167094-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 40CECA895D2
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 09:59:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7F3DB1899309
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 07:59:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A54627990C;
	Tue, 15 Apr 2025 07:59:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ldtaxlMm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208681AF0D0
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 07:59:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744703958; cv=none; b=iajbq6V8ZSVOltSCIfUNrlutN3kSLvfb0Bf/cwUXewc1o+t2b/dTis2OvwxmXHtmc9wq0UBgqgKDcmy5V3rDFNoIO5r2Fq2u633B/4D1TsXVffyTJAFdJBtIk58jSI2b/t84RLMy2Eks+Y42Mnd/0FUUigBnpEt/Q7Saze1XJeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744703958; c=relaxed/simple;
	bh=boHVewLcUVwk8OcxfGDlSqU3OdAm2WH67dN09KEWyfA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AfV3ANgGEVSCcKOpCKXNDhomsnNrLLt9cM2M/xVLUBJFeVOuAD4OrjIvHKHQL1ef2ZEpihebr/V8h+ESMXBQ9qx8OMKMPyFafiOQJWETdsu0EJnUZiHuyrJbP4aSs+cqSYbMpPUvKcNMhpRGVCGb+bBS7brwXVgGB74dlK6ZMoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ldtaxlMm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53F15LXh005418
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 07:59:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=3j6KYH15ovUFvVsFYdqAOBYg
	Ek3lkuLkExeea+uu8MY=; b=ldtaxlMmuvrnS+rQf+jJJoV4/wUoj6NOuyufXavw
	AGIu3thOJ4Xd76Cw/yiLaFVl3Tvos8T1TOyYJZsc9yjkKLAAar82BQgDXaGPL4Tq
	647HNVT07g2X2he33gbbzC+BiSjguRcY1kOG/NREpCD1UUHiEZ+TpJHmw48Qu3o6
	DKeruNz0k4HFeM58R6TVU60DaldFmQKXNzW5hBwIXrbAA2ulqXVu3dXdTPsjXLzi
	zo4I8zdppbwUCu7YmQPCKT19fDoKP28fKoQyVmH3iccnyUaX397C+ZxcBSjiZXzg
	89bMjQKYFBjUvBhool7MoymzHVFeLpHbXrWsx5ip4l2/8A==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ydhq7cde-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 07:59:14 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c791987cf6so1045550585a.0
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 00:59:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744703954; x=1745308754;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3j6KYH15ovUFvVsFYdqAOBYgEk3lkuLkExeea+uu8MY=;
        b=KeOHztE80+IaqTj/f/xc4zMzzpIqSCW8/343NKJbH1mTohALQs2PnZLHaC35891IHJ
         466QH0eHrevJ7q0vApxATuImYS3SoOrZ8H8zTnfE7xJv/LmJPrqJZb+tLqyGNXT+AXyW
         0s90yENRE+e5EtNE1pC6eSXRDIQgKB1z/wzV6tt12SZSmeBPNcxdWQSWaYlrD/I4apGc
         dm571fYnUgqGM4D0J0zuVPNBem1TDJiiI9okwkTWs8PZipG0DTIkAHG7E0NzDWwS4BUQ
         QFcsCCJaWtuR3I2A7ihy0vXQtfdXKC8YV/MP2lyp9ADkVWuZHdxmzZIz8aX7neMO6crt
         +11w==
X-Forwarded-Encrypted: i=1; AJvYcCVmK9NFr0YC2+PYbmIbUo74zoEwzHJociofeyTU3Sw/HV3QB/KzP1n5V8hAYcEnGBK+b9Sofeh5/Q87@vger.kernel.org
X-Gm-Message-State: AOJu0YytpUioRWEIgYl1BSHdVotIJpkSCobEgx1Ue98VtDdjyeX+Xibs
	z1GyCV2GD9oDYGCIvqYnoEXtSdKWP/gwwbIDrrveMJR/Bwqa7Ycw2jxuf2xSE3JeevO6ua9ncuo
	StMn8ZTGRgwc7ihcc0EDbzwov00KCJAGDRWmDJgAGBNNxrJyudcobEgqmhC38
X-Gm-Gg: ASbGncuDWwVWqOXG11Rnlz+WlPZ2mxcVqJ71V7v51CTfpSnoUrVLqaUVTe5VHiQM1va
	NqT1Jm0tick6myG/nrMemjm64qOBDawpgNRDCeCCTbj+JVC9cS/ydNPhwqlTUk2EvIzjbuGOIxw
	3X8h/RHH/M0PpbUNiUGKBTVaDTfRwEEpqHgTqIMmjaIZDUDMX22nI5ATRsfPhqdLdqITUp6t2IH
	1y4MUVlKRJIYUo7ty4qY25mA7ZQeWdAwvTe+B126im6hjJnmS64omRW9wOZLk1AJ89K+6j4us1u
	UFK5dlMr2tBuYzproUaU9t/YP8b9qYIUKPBi4QoECIR/f1k0flFUnjG6VxZO7xae8OF8KWwEsw0
	=
X-Received: by 2002:a05:620a:40c4:b0:7c5:61b2:b7c with SMTP id af79cd13be357-7c7af1da861mr2436450985a.47.1744703954041;
        Tue, 15 Apr 2025 00:59:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFDYCUC3+4LjUcrOqe6/dnikoIRTp3CVd6J05XP6LoZ+cCcbGdp7CeMDc15ptW70OCMcojZ6g==
X-Received: by 2002:a05:620a:40c4:b0:7c5:61b2:b7c with SMTP id af79cd13be357-7c7af1da861mr2436447885a.47.1744703953585;
        Tue, 15 Apr 2025 00:59:13 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d3d5201d9sm1356006e87.250.2025.04.15.00.59.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Apr 2025 00:59:12 -0700 (PDT)
Date: Tue, 15 Apr 2025 10:59:10 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Caleb Connolly <caleb.connolly@linaro.org>
Cc: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_vbadigan@quicinc.com,
        quic_mrana@quicinc.com
Subject: Re: [PATCH v2 2/3] arm64: qcom: sc7280: Move phy, perst to root port
 node
Message-ID: <7atbwco3htsrfzfb5hd36t3tprqdgcxbtvggdww7pabibbs44i@zncb2tznzzvc>
References: <20250414-perst-v2-0-89247746d755@oss.qualcomm.com>
 <20250414-perst-v2-2-89247746d755@oss.qualcomm.com>
 <511f8414-bbb1-4069-a0a6-f7505190c1e0@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <511f8414-bbb1-4069-a0a6-f7505190c1e0@linaro.org>
X-Proofpoint-ORIG-GUID: Nfy44qRE3eM8SzpYp9kCmNYUEelK59DJ
X-Authority-Analysis: v=2.4 cv=C7DpyRP+ c=1 sm=1 tr=0 ts=67fe11d2 cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=Dek1A57C0JLo4Y6e2rEA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: Nfy44qRE3eM8SzpYp9kCmNYUEelK59DJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-15_03,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 mlxlogscore=999
 priorityscore=1501 suspectscore=0 clxscore=1015 spamscore=0 bulkscore=0
 impostorscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0 mlxscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504150054

On Mon, Apr 14, 2025 at 02:49:00PM +0200, Caleb Connolly wrote:
> 
> 
> On 4/14/25 07:39, Krishna Chaitanya Chundru wrote:
> > Move phy, perst, to root port from the controller node.
> > 
> > Rename perst-gpios to reset-gpios to align with the expected naming
> > convention of pci-bus-common.yaml.
> > 
> > Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> > ---
> >   arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts   | 5 ++++-
> >   arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi | 5 ++++-
> >   arch/arm64/boot/dts/qcom/sc7280-idp.dtsi       | 5 ++++-
> >   arch/arm64/boot/dts/qcom/sc7280.dtsi           | 6 ++----
> >   4 files changed, 14 insertions(+), 7 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> > index 7a36c90ad4ec8b52f30b22b1621404857d6ef336..3dd58986ad5da0f898537a51715bb5d0fecbe100 100644
> > --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> > +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> > @@ -709,8 +709,11 @@ &mdss_edp_phy {
> >   	status = "okay";
> >   };
> > +&pcie1_port0 {
> > +	reset-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
> > +};
> > +
> >   &pcie1 {
> > -	perst-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
> >   	pinctrl-0 = <&pcie1_reset_n>, <&pcie1_wake_n>;
> >   	pinctrl-names = "default";
> > diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
> > index 2ba4ea60cb14736c9cfbf9f4a9048f20a4c921f2..ff11d85d015bdab6a90bd8a0eb9113a339866953 100644
> > --- a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
> > @@ -472,10 +472,13 @@ &pcie1 {
> >   	pinctrl-names = "default";
> >   	pinctrl-0 = <&pcie1_clkreq_n>, <&ssd_rst_l>, <&pe_wake_odl>;
> > -	perst-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
> >   	vddpe-3v3-supply = <&pp3300_ssd>;
> >   };
> > +&pcie1_port0 {
> > +	reset-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
> > +};
> > +
> >   &pm8350c_pwm {
> >   	status = "okay";
> >   };
> > diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> > index 7370aa0dbf0e3f9e7a3e38c3f00686e1d3dcbc9f..3209bb15dfec36299cabae07d34f3dc82db6de77 100644
> > --- a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> > @@ -414,9 +414,12 @@ &lpass_va_macro {
> >   	vdd-micb-supply = <&vreg_bob>;
> >   };
> > +&pcie1_port0 {
> > +	reset-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
> > +};
> > +
> >   &pcie1 {
> >   	status = "okay";
> > -	perst-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
> >   	vddpe-3v3-supply = <&nvme_3v3_regulator>;
> > diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> > index 0f2caf36910b65c398c9e03800a8ce0a8a1f8fc7..376fabf3b4eac34d75bb79ef902c9d83490c45f7 100644
> > --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> > @@ -2271,9 +2271,6 @@ pcie1: pcie@1c08000 {
> >   			power-domains = <&gcc GCC_PCIE_1_GDSC>;
> > -			phys = <&pcie1_phy>;
> > -			phy-names = "pciephy";
> 
> Isn't this a huge API breakage that will break using new DT with old
> kernels? It will also break U-boot which uses upstream DT.
> 
> This is bad enough, but at least let's break it a clean break by changing
> all platforms at once.

Up to now as the kernel was the only and the main user, we allowed
forward breakage (new DT breaks with the old kernel), only backwards
compatibility was required (new kernels work with old DT).

Maybe, as this breaks external projects, we should allow a grace period
and list _both_ properties, dropping them after the LTS?

> 
> As I understand it, we seem to allow these breakages in DT for now (and this
> patch landing will confirm that), but perhaps we could at least track them
> somewhere or at acknowledge the breakage with a tag in the commit message
> pointing to the relevant dt-bindings patch.
> 
> Breaks-dt: https://lore.kernel.org/linux-arm-msm/20250414-perst-v2-1-89247746d755@oss.qualcomm.com
> 
> Kind regards,
> 
> > -
> >   			pinctrl-names = "default";
> >   			pinctrl-0 = <&pcie1_clkreq_n>;
> > @@ -2284,7 +2281,7 @@ pcie1: pcie@1c08000 {
> >   			status = "disabled";
> > -			pcie@0 {
> > +			pcie1_port0: pcie@0 {
> >   				device_type = "pci";
> >   				reg = <0x0 0x0 0x0 0x0 0x0>;
> >   				bus-range = <0x01 0xff>;
> > @@ -2292,6 +2289,7 @@ pcie@0 {
> >   				#address-cells = <3>;
> >   				#size-cells = <2>;
> >   				ranges;
> > +				phys = <&pcie1_phy>;
> >   			};
> >   		};
> > 
> 
> -- 
> Caleb (they/them)
> 

-- 
With best wishes
Dmitry

