Return-Path: <devicetree+bounces-226145-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E725BD4F09
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 18:21:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id F4117350F33
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 16:21:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A66F21B9DE;
	Mon, 13 Oct 2025 16:21:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hSqeZGLi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E0F42BCFB
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 16:21:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760372507; cv=none; b=H2196aPDBfjrvdfoYOginFfItNMU4d0jdUEIl6r6nExB8Jl51gKUyWMw7wIVWulWJzvYmyfpDUsd+SXIg9IBEjzud4NfK3WaWWfrMITXwxLozIqGOI5EupR2jxiXMQmXYVz7S0THN7+r3jQFiN5/3ntdSVMDRFJLtJXsmW+powE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760372507; c=relaxed/simple;
	bh=23Shb4sqcAbXl4rBz7JfMREc4p2HRG65ZfJkn4LZVm0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jo0bw0502jVcDjp6h40OK4inCGTO28tPUX/dHv6DloZZiwbMWgr+fH1uWbN84fZa/sB6JDlqgIshh3F1etp2/WEC692hEdqSNMAiAb73bpuPLR7Q/Qll6MTXNUcvXruCRCtOsJnLksq3lLSJTagDLGsGYLEHiosHKy4fv+ahFDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hSqeZGLi; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59DFPsmP013172
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 16:21:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=cjuhVx56CMX8TkJhi8OBmvB3
	cYhwrv+WHNiyc57sauE=; b=hSqeZGLimGpKXYmwqWjW0TjrT1lNG9kvOubS0AcR
	uHkwqBD08e2XGxX2fWBZSmkjhcq9x94fEkt/7g1RCiqZkO/q78wCGKkfYvjhByE1
	gDruDrZ2yLzV0lEwz1Uz1Mxj8DP+HOr/Q4I0dzSm8B7nh3QtVsP1S9vRyjzt041M
	WuIopkQqouZrWXKt1w0Pdvy8iIEqVI/P1empSYhjXuSfZyjOaF1l4fyRpkAix7wM
	6IjuqEjRenROiCpMvcqTKBKfqVw+sfcg2iKp0FUM45e1UiFDQ/VW4OOUq+WCBSnN
	ZUGXFKNVIWvrX8VHNpkIV1XuodAzzEYTATVpe/+smvjfgQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49rw1a9p41-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 16:21:38 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-286a252bfc2so78895875ad.1
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 09:21:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760372498; x=1760977298;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cjuhVx56CMX8TkJhi8OBmvB3cYhwrv+WHNiyc57sauE=;
        b=sjbDcCZQeWHsjbhyuFhSdbosZdWLpUO6B68GtDKVbrj3zNRqxs1nM5b5Wd52gpHgMu
         NnXc687v4fwCAr+/hSVUKaimrdzJTwp7v+8GYcqSea9eD5NpseRudUr0NwDT2SLIsPRh
         l94eQRUwRT2A7nxylQTpkckGgBPHNToFlLnWPobCjfObrOs+ZOzgexM69aJ2GOr4qqz5
         aQywIuXr9yIMgIf2r10ujcOrBnaWladgh1CTdR2+3Gislp+MwNe1zxwGRruSL+GvsZhU
         4pG7VsJ86Fu9SuI8cQRWy1tlwRK3VJgw4pRWQbfTi4SR7BWFUDxc22sdtlvWFN/tVKLH
         kRVw==
X-Forwarded-Encrypted: i=1; AJvYcCUI/uh2uM/oDUUoIKBaHFZwEglmQaDpCf89lP4tZzYgqI+6HU9wAt1YNYXOMpWvePQcwLmlOVEaQqoM@vger.kernel.org
X-Gm-Message-State: AOJu0YyPwfhwefVRdvzRyM7+crM6hzRmbACah425etxJrSjJvI5m9fLK
	hGwbxWX3ujP/g5JVjCzWk2jrTkHao8K5lKWbmOACLVmMAooCTugEM7M5ZU9YNCZmnkO3mMhfNva
	PYSb5Ndcd3IhlOQ4nQAs2gdSnm7YVfdkw/YmrKfg2h0hK9ELow8+Wa9BYz0Bfqgr0
X-Gm-Gg: ASbGnctADzStOk9N5Go4XN1M/JNGcdXeGA3Dp1WKBLlcsyvuBpxEwdQoct3ZurY9ASK
	0lz2g43TRg2thX5OoTO5G/C1l/Mc7D2sPyqUPynV5O4X26hzR7D14m91WdTp0mJbI0YI+/UHewX
	BUdMM70I3uT6l9WGxLAkfPkkYq38HhMyQpGW3FPNKSKd8TYiYNDVr+Wmq365J37GZRtuHPXxwgB
	verNUPoEyB3SF8rAc8D4cAusg5k5hioy1B+xZZfHuMMIyH7m9MV0fQHQJj3rx4INoTKlOk+kaVr
	RPn7tirw0Wm5xH70qTuRc/TaN42LOY6cPK2eVjm4hHnJENGgIszQ2aRnOhhXg9Ua5TZ7JkVT/fL
	mClkK5H64qICbCJY+s2Wq7JbC4g==
X-Received: by 2002:a17:903:faf:b0:28e:873d:8a with SMTP id d9443c01a7336-29027f0cd0cmr267137645ad.15.1760372497842;
        Mon, 13 Oct 2025 09:21:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEY7avCTIn+ZGl00LYiW1gogaa0NR4HQO/Pc90cQphYy2WnDRQOknJKL/h5/tvef7cizIn+0Q==
X-Received: by 2002:a17:903:faf:b0:28e:873d:8a with SMTP id d9443c01a7336-29027f0cd0cmr267137195ad.15.1760372497259;
        Mon, 13 Oct 2025 09:21:37 -0700 (PDT)
Received: from hu-kamalw-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034e2062fsm137908795ad.48.2025.10.13.09.21.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 09:21:36 -0700 (PDT)
Date: Mon, 13 Oct 2025 21:51:30 +0530
From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
To: Eugen Hristev <eugen.hristev@linaro.org>
Cc: Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        kamal.wadhwa@oss.qualcomm.com
Subject: Re: [PATCH 14/20] arm64: dts: qcom: kaanapali-mtp: Enable more
 features
Message-ID: <20251013162130.2z22aqhx3fbcxbsq@hu-kamalw-hyd.qualcomm.com>
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
 <20250924-knp-dts-v1-14-3fdbc4b9e1b1@oss.qualcomm.com>
 <588a7b68-2e2e-4e65-9249-fe8b18b67927@linaro.org>
 <831f6fd7-b81f-4d6f-b9bd-5a8fe514befb@oss.qualcomm.com>
 <0c9ca026-9986-4347-a86d-8bf65e2d12e6@linaro.org>
 <kocj7sf6jgj4uynvlxvbsojc4bykyj2ipb4ex56fagjqoxwcie@2trytltkhd4a>
 <dd4d4fa3-abd4-476f-a37e-c44cb6c83fb0@oss.qualcomm.com>
 <f255b8f0-4d9f-44c6-91e1-f706d86f7dba@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f255b8f0-4d9f-44c6-91e1-f706d86f7dba@linaro.org>
X-Authority-Analysis: v=2.4 cv=K88v3iWI c=1 sm=1 tr=0 ts=68ed2712 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=kj9zAlcOel0A:10 a=x6icFKpwvdMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=9dPAZrIY8zlYopoQr9cA:9 a=CjuIK1q_8ugA:10 a=1OuFwYUASf3TG4hYMiVC:22
 a=HhbK4dLum7pmb74im6QT:22
X-Proofpoint-GUID: eedkLMSOj7VESZIUHHXMfQNOLTbVqMwi
X-Proofpoint-ORIG-GUID: eedkLMSOj7VESZIUHHXMfQNOLTbVqMwi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDEzMDAzNSBTYWx0ZWRfXwPCCStedDDf9
 XuGAfhUBB+1tnQUE/cMaY0eyi6nezeMyd6qM6xQsPRAp3msGU3TNfM7zeJ2RM/h5v50yYg8oevy
 Bz41KXEhKQ4QAhy5M6ILWez6sapwGL3GCmAnk1fm9jLLDhp30rly8FS+h6d4ZxuA7YVbM+Bb/xs
 /YsKjtxu+p8hx+pia/rE2mWh/yPhgOzWBR0Wk9G6EXuxoRgOL4lHrrEbFe3kK3Nw6Ru+sim0Vjm
 v8hs3Cw6h676/Rjl1fPSPTqm4YHWXvfbrvxe83BQ7EE5A6fxyFLyDMoOXv6++vLtviBY4zzJzan
 QBMu3wn71CA6MQ4CiuvVth5FlzXKq4vSvnHkqbCj3lrINQr1+KLcSLGqGiaevkVae0Yx5vnNqEe
 +CCliQpRpzBC4adSkwAbTZfyjLIulg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_06,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 impostorscore=0 priorityscore=1501 phishscore=0
 adultscore=0 clxscore=1015 bulkscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510130035

Hi Eugen,

On Fri, Oct 10, 2025 at 05:02:54PM +0300, Eugen Hristev wrote:
> 
> 
> On 10/10/25 13:54, Jishnu Prakash wrote:
> > Hi Dmitry and Eugen,
> > 
> > On 10/9/2025 9:58 PM, Dmitry Baryshkov wrote:
> >> On Thu, Oct 09, 2025 at 05:58:03PM +0300, Eugen Hristev wrote:
> >>>
> >>>
> >>> On 10/9/25 16:54, Jishnu Prakash wrote:
> >>>> Hi Eugen,
> >>>>
> >>>> On 9/25/2025 1:33 PM, Eugen Hristev wrote:
> >>>>>
> >>>>>
> >>>>> On 9/25/25 03:17, Jingyi Wang wrote:
> >>>>>> Enable more features on Kaanapali MTP boards including PMIC peripherals,
> >>>>>> bus, SDHCI, remoteprocs, USB, PCIE, WLAN and Bluetooth.
> >>>>>>
> >>>>>> Written with help from Jyothi Kumar Seerapu(added bus), Ronak Raheja
> >>>>>> (added USB), Manish Pandey(added SDHCI), Jishnu Prakash(added PMIC),
> >>>>>> Qiang Yu(added PCIE), Yijie Yang(Added WLAN) and Zijun Hu(Added Bluetooth).
> >>>>>>
> >>>>>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> >>>>>> ---
> >>>>>>  arch/arm64/boot/dts/qcom/kaanapali-mtp.dts | 663 +++++++++++++++++++++++++++++
> >>>>>>  1 file changed, 663 insertions(+)
> >>>>>>
> >>>>>> diff --git a/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts b/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts
> >>>>>> index 9cf3158e2712..2949579481a9 100644
> >>>>>> --- a/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts
> >>>>>> +++ b/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts
> >>>>>> @@ -5,9 +5,23 @@
> >>>>>>  
> >>>>
> >>>> ...
> >>>>
> >>>>>> +
> >>>>>> +&spmi_bus1 {
> >>>>>> +	pmd8028: pmic@4 {
> >>>>>> +		compatible = "qcom,pmd8028", "qcom,spmi-pmic";
> >>>>>> +		reg = <0x4 SPMI_USID>;
> >>>>>> +		#address-cells = <1>;
> >>>>>> +		#size-cells = <0>;
> >>>>>> +
> >>>>>> +		pmd8028_temp_alarm: temp-alarm@a00 {
> >>>>>> +			compatible = "qcom,spmi-temp-alarm";
> >>>>>> +			reg = <0xa00>;
> >>>>>> +			interrupts = <0x4 0xa 0x0 IRQ_TYPE_EDGE_BOTH>;
> >>>>>> +			#thermal-sensor-cells = <0>;
> >>>>>> +		};
> >>>>>> +
> >>>>>> +		pmd8028_gpios: gpio@8800 {
> >>>>>> +			compatible = "qcom,pmd8028-gpio", "qcom,spmi-gpio";
> >>>>>> +			reg = <0x8800>;
> >>>>>> +			gpio-controller;
> >>>>>> +			gpio-ranges = <&pmd8028_gpios 0 0 4>;
> >>>>>> +			#gpio-cells = <2>;
> >>>>>> +			interrupt-controller;
> >>>>>> +			#interrupt-cells = <2>;
> >>>>>> +		};
> >>>>>> +	};
> >>>>>> +
> >>>>>> +	pmih0108: pmic@7 {
> >>>>>> +		compatible = "qcom,pmih0108", "qcom,spmi-pmic";
> >>>>>> +		reg = <0x7 SPMI_USID>;
> >>>>>> +		#address-cells = <1>;
> >>>>>> +		#size-cells = <0>;
> >>>>>> +
> >>>>>> +		pmih0108_temp_alarm: temp-alarm@a00 {
> >>>>>> +			compatible = "qcom,spmi-temp-alarm";
> >>>>>> +			reg = <0xa00>;
> >>>>>> +			interrupts = <0x7 0xa 0x0 IRQ_TYPE_EDGE_BOTH>;
> >>>>>> +			#thermal-sensor-cells = <0>;
> >>>>>> +		};
> >>>>>> +
> >>>>>> +		pmih0108_gpios: gpio@8800 {
> >>>>>> +			compatible = "qcom,pmih0108-gpio", "qcom,spmi-gpio";
> >>>>>> +			reg = <0x8800>;
> >>>>>> +			gpio-controller;
> >>>>>> +			gpio-ranges = <&pmih0108_gpios 0 0 18>;
> >>>>>> +			#gpio-cells = <2>;
> >>>>>> +			interrupt-controller;
> >>>>>> +			#interrupt-cells = <2>;
> >>>>>> +		};
> >>>>>> +
> >>>>>> +		pmih0108_eusb2_repeater: phy@fd00 {
> >>>>>> +			compatible = "qcom,pm8550b-eusb2-repeater";
> >>>>>> +			reg = <0xfd00>;
> >>>>>> +			#phy-cells = <0>;
> >>>>>> +			vdd18-supply = <&vreg_l15b_1p8>;
> >>>>>> +			vdd3-supply = <&vreg_l5b_3p1>;
> >>>>>> +		};
> >>>>>> +	};
> >>>>>> +
> >>>>>> +	pmr735d: pmic@a {
> >>>>>
> >>>>> Hi,
> >>>>>
> >>>>> The PMR735D is available in pmr735d_a.dtsi
> >>>>>
> >>>>> Can we find a way to reuse that include file instead of duplicating it
> >>>>> here ?
> >>>>
> >>>> In pmr735d_a.dtsi, the peripherals are added under the parent phandle
> >>>> "spmi_bus", which was commonly used in older SoCs having only a single
> >>>> bus under the PMIC arbiter, but in Kaanapali, there are two buses
> >>>> present under the PMIC arbiter, with phandles "spmi_bus0" and "spmi_bus1",
> >>>> so we cannot include the file as it is.
> >>>>
> >>>
> >>> I know the problem. I disagree with using include files in one case, and
> >>> having the PMIC in the dts in the other case.
> >>>
> >>> So there has to be a unified way to handle this in all cases.
> >>
> >> Rework SPMI PMICs to follow the approach started by Johan for PM8008. I
> >> think this is the way to go.
> >>
> > 
> > We got a recommendation from Krzysztof recently here for Glymur: 
> > https://lore.kernel.org/all/b784387b-5744-422e-92f5-3d575a24d01c@kernel.org/
> > 
> > For PMH0110, he suggested we could keep different DTSI files per SoC,
> > like pmh0110-kaanapali.dtsi and pmh0110-glymur.dtsi.
> > 
> > We could follow a similar approach on Kaanapali, to 
> > #include the following files in the .dts file:
> > 
> > pmk8850.dtsi
> > pmh0101.dtsi
> > pmh0110-kaanapali.dtsi
> > pmh0104-kaanapali.dtsi
> > pmd8028-kaanapali.dtsi
> > pmih0108-kaanapali.dtsi
> > pmr735d-kaanapali.dtsi
> > pm8010-kaanapali.dtsi
> > 
> > The first two files are new and common with Glymur,so they
> > do not have the SoC name suffix.
> > 
> > Hope this is fine, please let us know if you see any issue.
> 
> I would like it to be consistent, you would have to rename the old
> pmr735d.dtsi into pmr735d-whatever-soc-was-using-it.dtsi in another
> patch, and then create pmr735d-kaanpali.dtsi for kaanapali.
> 
> Does this look good ?

Currently we were thinking to name PMIC dtsi based on below criteria:
- pmic.dtsi can be used `as-is` (common bus-id/spmi-id) for more than
   one SoC -> use filename without SoC suffix.
- If there is a delta between two SoCs (old existing pmic file mismatch
   busid/spmi-ids) for same PMIC -> have SoC-specific PMIC files.

IMO, This will be sligtly better to identify
- which pmic dtsi is older and have common placement on bus, sid and
  other properties for multiple targets.
- Which pmic's have deviated away and landed late on the upstream

NOTE: We have good number of examples where pmics are re-used as-is
with same bus-id and spmi-id eg- pmk8550, pmk8350 etc. So we want to
suffix the target only if the target is not first one to use it and
deviated from the first version, where reuse is not possible.

On the other hand, to align to your request we may have to fix this
retrospectively for all pmics as lot of older pmic.dtsi also will fall
in same catagory, then just simply adding a SoC specific pmic version.

And also losing this (above described) understanding of the `history
and common design` of each pmic.dtsi file.

Does this justification works? Please let us know if you still see
any problems with this naming critria, or we can improve it still?

> > 
> > Thanks,
> > Jishnu
> > 

Regards,
Kamal 

