Return-Path: <devicetree+bounces-157844-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2737AA6319F
	for <lists+devicetree@lfdr.de>; Sat, 15 Mar 2025 19:33:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4A0E63B9243
	for <lists+devicetree@lfdr.de>; Sat, 15 Mar 2025 18:32:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB04A205E25;
	Sat, 15 Mar 2025 18:32:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gXepFeoA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351E9205E01
	for <devicetree@vger.kernel.org>; Sat, 15 Mar 2025 18:32:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742063564; cv=none; b=bn6IsxXSbkJHVyu9YEV6hCq14qrLzAdUAzKPgFWaK80gzxTj9+mMe79Up7pHcA+lXvcKexRpOFe79WGUvX3lDcNjZ2P078joDoqTY0OxKABCtdqaga7ZRKvCfmeXoPKWS1r9j6Gjf4IdvJn+UrPRrNhFtZl4Y57+lZXHSE64GOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742063564; c=relaxed/simple;
	bh=Qz0SP3ZdKTuVdUO4kfY74H87AabpIgnIehKa79dB0xc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BRt59nIIheCMvShUPF/xreXUeac6gBON6A5I0oGDgSxggY1R7b0M6kzPP1mwgXLk+zEAffU5ADODLDciCxl4Bckczxu8feSaJa9dQTFr0DkvVV62zWtzv+MeUftz4p0Li/ATRKUrm795m5mOPpob4PQ1wtx6+OhkvTvPcEAJtig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gXepFeoA; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52FDGkCA013058
	for <devicetree@vger.kernel.org>; Sat, 15 Mar 2025 18:32:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=32RSIjRVVwEIwBLtIaLu3T8z
	Nm/+G/HrvoDwsEK9QoM=; b=gXepFeoAAitTN3P8l/8pkevj8foYKOeq6WQ+H//w
	WytDWL+phTReBi02tIOdQ5+p2wekXa8pNFd3hDlkmGoaofiFZAQda1xgtcdtkjg1
	1lIKl6ujo14SWP0P3+o8BQ7WnbkCpSRx9UxlUHaq4mlz3b1StEeZTOlQdNGMbSNq
	43N/RShTHU/4cRf3L5TFWnA5LsgSTguZHDsc65XXITl/pHUMFn/MSde5ZGgvd5fg
	3d8eBoFz3OS3FPWfRg+hLGAkGQG+HSC5rTglKuZgX3bZHCTIFtH4SfazP8JKoXTc
	GKnUKCOjZUaLxiQHb/JZdugxI/H2NugIPnpUKpYN3HG2hg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45d1sxs3du-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 15 Mar 2025 18:32:41 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c0a8583e60so563914985a.2
        for <devicetree@vger.kernel.org>; Sat, 15 Mar 2025 11:32:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742063557; x=1742668357;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=32RSIjRVVwEIwBLtIaLu3T8zNm/+G/HrvoDwsEK9QoM=;
        b=obe853r4LoyfV9mn5rS/iHFF7ojTQRg/QJV21RiFuK7kRMMd1jJWHXuiWDFZDoT+O7
         0TOHLCnSKbu4IePW+MxsVUbY3bxyxuK/egsB8hj6TlMAFW4yatz6rN+WOPLVy0soAp0w
         WVzTvo3Mv5g/0bUKapwvRmvNOdILKdVz6X0kbHJ2aAAy8ykEX8n3qwQpMPuBqaxnfFRf
         /R919YcN5RhNQaDg+MEpjdD05dZfTuYhlMPOtvDCW10mTHezXn20JrB5uCgH8iEZO4sf
         BynsApVotqdGj0/Iv3eEXcXVw5wRBXc1g4C7KzEE31b/77O6152piMSTS3zdLdDruZ9b
         MNQQ==
X-Forwarded-Encrypted: i=1; AJvYcCXZZis5wxr3lYZPk20FwmgKiLVO3pHcg3LRYmPDqZ6DaDKGSELvRWPD2B6Jotx8f3lxRVy0kcrfRF+d@vger.kernel.org
X-Gm-Message-State: AOJu0Yyu06QSWV5tnp5YKFgeeEkDJKQQcBR0cB5FcJ7ZlmMTjbM0n6eV
	bcJs5jnFst6ecsEmbuFg1COa43BYmL2IGfFt+826G85L4MUNtW+x5TvEei6RXCDpVewDY9acdFr
	/l/If4rctrngp0QiTI94akiWVLzO9COHLkMbt9NWcfZVnwQ9ZBawSVkS6fmcH
X-Gm-Gg: ASbGnctVVIhZ0jZzj8w9YezV2noGZD65PrgKfxBH7BHVynq86vSg1+R9Eu8z78MIruo
	WSMv/lvgsG6RIOeiOX1F+cznF5Eu3IZvSLu8L/TXZZvVXLIMuxy6HhY6N0Onw5l67CYu1YEN/3c
	oT8sFV0rz7WBu63qKEgMeHSr8uP2olNyp6h0s1YoxFSK/i99izgdlu7ufS+SCYOkbZz7OfS2BgI
	fWYi2CS6uSUD3OQ1r0+jPgYiPsHOZdLMvARUlCBE3mrAP42PpiLOOGtUz0BdXstwJk01vBZCYEL
	OsQW5WPRzDHA2iGHJd8xDgy3zCAJzo+kTiurFHSvOQOCQYV4PHTovOojcvGfAQh1Ty65/puKdC9
	ZqfM=
X-Received: by 2002:a05:620a:410b:b0:7c5:3ca5:58fe with SMTP id af79cd13be357-7c57c7e2c29mr942267085a.22.1742063556757;
        Sat, 15 Mar 2025 11:32:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGieBVVbcXNTR62+9Yck3/rn4e+4r8yK4ALIi002oozcbCr8Az/hV/kPVN/79mSCn4wgy0AVw==
X-Received: by 2002:a05:620a:410b:b0:7c5:3ca5:58fe with SMTP id af79cd13be357-7c57c7e2c29mr942264885a.22.1742063556403;
        Sat, 15 Mar 2025 11:32:36 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549ba880564sm853189e87.173.2025.03.15.11.32.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Mar 2025 11:32:34 -0700 (PDT)
Date: Sat, 15 Mar 2025 20:32:32 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Vikash Garodia <quic_vgarodia@quicinc.com>,
        Dikshita Agarwal <quic_dikshita@quicinc.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/4] arm64: dts: qcom: sa8775p: add support for video node
Message-ID: <5qfe4gnjnttnpezj36rdsdbomghnz5ytj3hiecoingj7622o5a@h4tq4tzliwz4>
References: <20250311-dtbinding-v1-0-5c807d33f7ae@quicinc.com>
 <20250311-dtbinding-v1-3-5c807d33f7ae@quicinc.com>
 <3ec71075-b1ef-4366-b595-80fe41cd1e13@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3ec71075-b1ef-4366-b595-80fe41cd1e13@oss.qualcomm.com>
X-Proofpoint-GUID: 4WV-qWoTijlCd3tGlcfQlme9BUdt6YoK
X-Proofpoint-ORIG-GUID: 4WV-qWoTijlCd3tGlcfQlme9BUdt6YoK
X-Authority-Analysis: v=2.4 cv=XKcwSRhE c=1 sm=1 tr=0 ts=67d5c7c9 cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=HdOZ2FAD_XOJwypVLEMA:9 a=jzxhZtI-NlRt--t-:21 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-15_07,2025-03-14_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 mlxlogscore=999 priorityscore=1501 clxscore=1015 phishscore=0
 impostorscore=0 adultscore=0 mlxscore=0 malwarescore=0 suspectscore=0
 spamscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503150134

On Sat, Mar 15, 2025 at 02:43:30PM +0100, Konrad Dybcio wrote:
> On 3/11/25 1:03 PM, Vikash Garodia wrote:
> > Video node enables video on Qualcomm SA8775P platform.
> > 
> > Signed-off-by: Vikash Garodia <quic_vgarodia@quicinc.com>
> > ---
> >  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 67 +++++++++++++++++++++++++++++++++++
> >  1 file changed, 67 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> > index 3394ae2d13003417a15e64c9e47833725ec779e6..09db8e2eb578f1cada0f4a15e3f844dc097bd46d 100644
> > --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> > @@ -10,6 +10,7 @@
> >  #include <dt-bindings/clock/qcom,sa8775p-dispcc.h>
> >  #include <dt-bindings/clock/qcom,sa8775p-gcc.h>
> >  #include <dt-bindings/clock/qcom,sa8775p-gpucc.h>
> > +#include <dt-bindings/clock/qcom,sa8775p-videocc.h>
> >  #include <dt-bindings/dma/qcom-gpi.h>
> >  #include <dt-bindings/interconnect/qcom,sa8775p-rpmh.h>
> >  #include <dt-bindings/mailbox/qcom-ipcc.h>
> > @@ -3783,6 +3784,72 @@ llcc: system-cache-controller@9200000 {
> >  			interrupts = <GIC_SPI 580 IRQ_TYPE_LEVEL_HIGH>;
> >  		};
> >  
> > +		iris: video-codec@aa00000 {
> > +			compatible = "qcom,sa8775p-iris";
> > +
> > +			reg = <0 0x0aa00000 0 0xf0000>;
> > +			interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>;
> > +
> > +			power-domains = <&videocc VIDEO_CC_MVS0C_GDSC>,
> > +					<&videocc VIDEO_CC_MVS0_GDSC>,
> > +					<&rpmhpd SA8775P_MXC>,
> > +					<&rpmhpd SA8775P_MMCX>;
> > +			power-domain-names = "venus",
> > +					     "vcodec0",
> > +					     "mx",
> > +					     "mmcx";
> > +			operating-points-v2 = <&iris_opp_table>;
> > +
> > +			clocks = <&gcc GCC_VIDEO_AXI0_CLK>,
> > +				 <&videocc VIDEO_CC_MVS0C_CLK>,
> > +				 <&videocc VIDEO_CC_MVS0_CLK>;
> > +			clock-names = "iface",
> > +				      "core",
> > +				      "vcodec0_core";
> > +
> > +			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
> > +					&config_noc SLAVE_VENUS_CFG QCOM_ICC_TAG_ALWAYS>,
> 
> This path should use QCOM_ICC_TAG_ACTIVE_ONLY on both endpoints
> 
> > +					<&mmss_noc MASTER_VIDEO_P0 QCOM_ICC_TAG_ALWAYS
> > +					&mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
> > +			interconnect-names = "cpu-cfg",
> > +					     "video-mem";
> > +
> > +			firmware-name = "qcom/vpu/vpu30_p4_s6.mbn";

Firmware-name should be a part of the board DT file rather than the SoC
DT.

> 
> If it needs different firmware, I have my doubts over why 8550's data
> would be fully reused. Are you sure everything in iris_platform_sm8550.c
> applies?

If I understand correctly, the firmware is different, because the
signature profile is different. The Iris core should be compatible.

> 
> > +			memory-region = <&pil_video_mem>;
> > +
> > +			resets = <&gcc GCC_VIDEO_AXI0_CLK_ARES>;
> > +			reset-names = "bus";
> > +
> > +			iommus = <&apps_smmu 0x0880 0x0400>,
> > +				 <&apps_smmu 0x0887 0x0400>;
> > +			dma-coherent;
> > +
> > +			iris_opp_table: opp-table {
> > +				compatible = "operating-points-v2";
> > +
> > +				opp-366000000 {
> > +					opp-hz = /bits/ 64 <366000000>;
> > +					required-opps = <&rpmhpd_opp_svs_l1>,
> > +							<&rpmhpd_opp_svs_l1>;
> > +				};
> 
> Please add a newline between subsequent subnodes
> 
> Konrad

-- 
With best wishes
Dmitry

