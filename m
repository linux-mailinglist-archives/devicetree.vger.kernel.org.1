Return-Path: <devicetree+bounces-212974-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DDF1B44465
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 19:32:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 254B17A8804
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 17:30:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D91312EFD80;
	Thu,  4 Sep 2025 17:32:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SyQqNY4M"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F8D23A564
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 17:32:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757007131; cv=none; b=Cfj/qzKGOAdhScqF9/WVWeOeHVzNBiVVEG4/FFA6+guvqVZ8eg6yxUwaey4Y2beG12asqJCp9Qnpc7Jvrr8mnXfTuO/XMyNb4cldg3Smx1Sc7MZhBBQQvHhWvc+hz0jNQ6ZAndLx6Z5RsYRjOERtDVu5Moo77SFO5/aFXrLBOMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757007131; c=relaxed/simple;
	bh=S6K7ZuuI9Bt+Smd+P1c+fd+/jUyGt2Lk9wkEvGESl70=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Yw+rF0/ijx+W6U00l7x4JdRkX+0TZS4JOwVyr6iIpXnlW3ogF5L47Fn2c0OViPs1veL0ihTnGx1i1d7pdBCxRyHf7lhY7P3xyA1btsUypPz+Nc4VNV/MbVAL8paS29Hik5kt+wswRVMqo8wfJlKFfBge7JgMRNRgz631mCLn7Jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SyQqNY4M; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 584GUv6a018533
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 17:32:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Da73JYrU/YH6aVt86oA5anWyeFztGpATifsoe84jD5s=; b=SyQqNY4MUimxvb2E
	dphFdMl8HZnvD9gFoeUmBK78RINJHp4EvPzSR/kBUwREEKvdIgZ69XaIXfiAskS0
	kstFiRXXynOQDO/+Bhf7eG3rMYPBQoTBVh/uj8rhfxcQdjKNCaQVP9RAbQizEJOI
	xJ+XeQ1mgH8r2Lr+YpmR65BvGf00qbzFtgrzxAtC86q6uCMA4RYT3/X7XeeqEPc+
	Ueooe7YQhng4pqWkdkYL890YuD5u3eC7RjgTzQEt9DRsi1XSHFTqc61HkL7iMvRT
	BIJbvAEmb04Qebhdh+6JJxPXWDRN7xe39AXYJ6KAOtXHSwsLvA25RqDwWhU3aRz7
	Wn5rfw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48yebur6qj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 17:32:09 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b32fe42b83so21005391cf.0
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 10:32:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757007128; x=1757611928;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Da73JYrU/YH6aVt86oA5anWyeFztGpATifsoe84jD5s=;
        b=MgONW8uz0lnPslFPSfBJIBdIqGKctEMCkSdanrY0r5I1vip++FLOxDuy0MWDFIwYSI
         /aPL9EcDiqM6CpPgVn9Ft27iWtkzdYOTyJnbtiTcNF/1E/QwrFl0TancpkXUuEiD+I8g
         R0fuyOUWtaZ4apaAKwKYPcjWsp6b/r/Kf1FbtZ7mk9NpjlFZxa9GmZKkCSa0JCdDl6Bz
         UI/y5uZXblV28jpaG/iEvSWrWI0uIq1xy/oe1K+lUyTfbhX9Qlmg7IGZ9+KmohL7MHcR
         hUiN1XRMHZRU01H3F8dnTSfvNATl1Y3LWciMnw0bfTK2nC33b6P2uKQWnZJAtXv29R0B
         4YYA==
X-Forwarded-Encrypted: i=1; AJvYcCUnUTpo1jW7TSjlKvTWNnCjB3p+OQDcMgEBqe8Ij73Ypx0/ReZzZ9pbeyCysL2HL2JFIRga+gFubCdZ@vger.kernel.org
X-Gm-Message-State: AOJu0YxFOoWF8i+VFze2xv3WK+KuspdRMbqWPpIpT1yEkESqldJyLkeH
	MPkRL7Gs5CEHcX2mOkw65TpKsIfISpHZ4clNfgQhoP+BdcBNMREuhjvJYRS2lLAb5TYXbrslj8p
	9bMOMG+Cfm1vjivc98r5XXRQkrQxT7CKl2nOgl2TxsCrfeqO2wyD8fm0qGcLVH8WS
X-Gm-Gg: ASbGncvsipTu8vnYn2ainJY8FHZpdL1WWz4xYlIoSvxVRV4sNSzH2s/J4ItL02mNKYW
	gTMdZjgF0FDgaZAeUmpExdmMTMR4ItkQ9cBouklpNGtH0nCYeNyL/OkmdNRg1kWsaToSb310l0l
	my3otBn2KMR908o1De+VaSeU3sVpVdUxt548oTfxK5cQ9gs3MoOjJ1lhUN+O3k545f3h410nQCn
	AjXSH66m6P5IvXFCE68dIH9efOQusoklDkg1EydBB/NzQbgsjk+TwfgsLRD2TdSJ8uFsSZuG394
	Ws6hL6yIz4dibZurA+rdztAvteswjQ6TBWZEokIDPIu00s8spdwYJwuOPcEtP/6IloqddWwQLrz
	n3ryLntRoPHuhM4TqhyCbKSAWnmBcj6xot1/T+d6VabI6ml1W8b4D
X-Received: by 2002:a05:622a:5809:b0:4b2:ed1b:c4ef with SMTP id d75a77b69052e-4b31dce5334mr232514611cf.82.1757007128112;
        Thu, 04 Sep 2025 10:32:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHzY46Xf0yuYtNJopahgPntF+57SdK24XGBjq5que+6q55hgL1+myrBZjHkcDslthTY8AGG6A==
X-Received: by 2002:a05:622a:5809:b0:4b2:ed1b:c4ef with SMTP id d75a77b69052e-4b31dce5334mr232514251cf.82.1757007127542;
        Thu, 04 Sep 2025 10:32:07 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608ace9fd1sm1316585e87.83.2025.09.04.10.32.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 10:32:06 -0700 (PDT)
Date: Thu, 4 Sep 2025 20:32:04 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Wasim Nazir <wasim.nazir@oss.qualcomm.com>,
        Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>, kernel@oss.qualcomm.com,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        netdev@vger.kernel.org, Monish Chunara <quic_mchunara@quicinc.com>
Subject: Re: [PATCH 2/5] arm64: dts: qcom: lemans: Add SDHC controller and
 SDC pin configuration
Message-ID: <zofmya5h3yrz7wfcl4gozsmfjdeaixoir3zrk5kqpymbz5mkha@qxhj26jow5eh>
References: <20250826-lemans-evk-bu-v1-0-08016e0d3ce5@oss.qualcomm.com>
 <20250826-lemans-evk-bu-v1-2-08016e0d3ce5@oss.qualcomm.com>
 <rxd4js6hb5ccejge2i2fp2syqlzdghqs75hb5ufqrhvpwubjyz@zwumzc7wphjx>
 <c82d44af-d107-4e84-b5ae-eeb624bc03af@oss.qualcomm.com>
 <aLhssUQa7tvUfu2j@hu-wasimn-hyd.qualcomm.com>
 <tqm4sxoya3hue7mof3uqo4nu2b77ionmxi65ewfxtjouvn5xlt@d6ala2j2msbn>
 <3b691f3a-633c-4a7f-bc38-a9c464d83fe1@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3b691f3a-633c-4a7f-bc38-a9c464d83fe1@oss.qualcomm.com>
X-Proofpoint-GUID: lCeqpuTGLAgcF71ywZY8VhQmbk1480im
X-Authority-Analysis: v=2.4 cv=X+ZSKHTe c=1 sm=1 tr=0 ts=68b9cd19 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=7jlciowUQMUDIi_Z8n8A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA0MDE2MyBTYWx0ZWRfX9M4qxcLsKmu8
 GACjt8VCYU/jP4xGYXV9XUfoC2K0d0PVH5Ti+OlVTVp+z+fcOVhuVn+YAatb/PK4QHmR4nRJ7yu
 gtKcUOIxW0pGq6H2xdJolz1u4WXhdE55k+5fOerjcMEKyzWY1Gkf1FxWkQw4mm9WH/0fUbE6Er7
 j9uq0zQIcPzEUaX9yJ1PUT+J3MOAh/jJsbjQUfHNYl/XZt/C/ANNWEPgRPmt6GA2KScSovHTiDI
 /By9apQC9fHuL9HhN90zqaErteHiH3GUT/TvyILoZzuNKjBo2lLjWgqIQFZmOLbHvx2bSmbjfs9
 I8kiftc1YmZCTAP9JY5Oe7hhRtiqFUO/4Zkga1TjMn2+WNoT42hszrt5e2FYapyAmgGInCxjAzh
 eCBxsVOL
X-Proofpoint-ORIG-GUID: lCeqpuTGLAgcF71ywZY8VhQmbk1480im
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_06,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 clxscore=1015 impostorscore=0 phishscore=0
 malwarescore=0 adultscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509040163

On Thu, Sep 04, 2025 at 04:34:05PM +0200, Konrad Dybcio wrote:
> On 9/4/25 3:35 PM, Dmitry Baryshkov wrote:
> > On Wed, Sep 03, 2025 at 09:58:33PM +0530, Wasim Nazir wrote:
> >> On Wed, Sep 03, 2025 at 06:12:59PM +0200, Konrad Dybcio wrote:
> >>> On 8/27/25 3:20 AM, Dmitry Baryshkov wrote:
> >>>> On Tue, Aug 26, 2025 at 11:51:01PM +0530, Wasim Nazir wrote:
> >>>>> From: Monish Chunara <quic_mchunara@quicinc.com>
> >>>>>
> >>>>> Introduce the SDHC v5 controller node for the Lemans platform.
> >>>>> This controller supports either eMMC or SD-card, but only one
> >>>>> can be active at a time. SD-card is the preferred configuration
> >>>>> on Lemans targets, so describe this controller.
> >>>>>
> >>>>> Define the SDC interface pins including clk, cmd, and data lines
> >>>>> to enable proper communication with the SDHC controller.
> >>>>>
> >>>>> Signed-off-by: Monish Chunara <quic_mchunara@quicinc.com>
> >>>>> Co-developed-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
> >>>>> Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
> >>>>> ---
> >>>>>  arch/arm64/boot/dts/qcom/lemans.dtsi | 70 ++++++++++++++++++++++++++++++++++++
> >>>>>  1 file changed, 70 insertions(+)
> >>>>>
> >>>>> diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
> >>>>> index 99a566b42ef2..a5a3cdba47f3 100644
> >>>>> --- a/arch/arm64/boot/dts/qcom/lemans.dtsi
> >>>>> +++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
> >>>>> @@ -3834,6 +3834,36 @@ apss_tpdm2_out: endpoint {
> >>>>>  			};
> >>>>>  		};
> >>>>>  
> >>>>> +		sdhc: mmc@87c4000 {
> >>>>> +			compatible = "qcom,sa8775p-sdhci", "qcom,sdhci-msm-v5";
> >>>>> +			reg = <0x0 0x087c4000 0x0 0x1000>;
> >>>>> +
> >>>>> +			interrupts = <GIC_SPI 383 IRQ_TYPE_LEVEL_HIGH>,
> >>>>> +				     <GIC_SPI 521 IRQ_TYPE_LEVEL_HIGH>;
> >>>>> +			interrupt-names = "hc_irq", "pwr_irq";
> >>>>> +
> >>>>> +			clocks = <&gcc GCC_SDCC1_AHB_CLK>,
> >>>>> +				 <&gcc GCC_SDCC1_APPS_CLK>;
> >>>>> +			clock-names = "iface", "core";
> >>>>> +
> >>>>> +			interconnects = <&aggre1_noc MASTER_SDC 0 &mc_virt SLAVE_EBI1 0>,
> >>>>> +					<&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_SDC1 0>;
> >>>>> +			interconnect-names = "sdhc-ddr", "cpu-sdhc";
> >>>>> +
> >>>>> +			iommus = <&apps_smmu 0x0 0x0>;
> >>>>> +			dma-coherent;
> >>>>> +
> >>>>> +			resets = <&gcc GCC_SDCC1_BCR>;
> >>>>> +
> >>>>> +			no-sdio;
> >>>>> +			no-mmc;
> >>>>> +			bus-width = <4>;
> >>>>
> >>>> This is the board configuration, it should be defined in the EVK DTS.
> >>>
> >>> Unless the controller is actually incapable of doing non-SDCards
> >>>
> >>> But from the limited information I can find, this one should be able
> >>> to do both
> >>>
> >>
> >> It’s doable, but the bus width differs when this controller is used for
> >> eMMC, which is supported on the Mezz board. So, it’s cleaner to define
> >> only what’s needed for each specific usecase on the board.
> > 
> > `git grep no-sdio arch/arm64/boot/dts/qcom/` shows that we have those
> > properties inside the board DT. I don't see a reason to deviate.
> 
> Just to make sure we're clear
> 
> I want the author to keep bus-width in SoC dt and move the other
> properties to the board dt

I think bus-width is also a property of the board. In the end, it's a
question of schematics whether we route 1 wire or all 4 wires. git-log
shows that bus-width is being sent in both files (and probalby we should
sort that out).

> 
> Konrad

-- 
With best wishes
Dmitry

