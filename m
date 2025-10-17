Return-Path: <devicetree+bounces-228147-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7B1BE8AAA
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 14:52:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C68FC1AA4ADD
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 12:52:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 074FC330316;
	Fri, 17 Oct 2025 12:52:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SBMBaESG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 252A221B9F5
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 12:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760705544; cv=none; b=udeDczM2kl17lRj/1hVu47nFrXSabOqVwFyGw0MzruwwZi11aB5mQ3qAO8rTkBSRuhrhBV3OCoh2CsSh0pon0+Y9R/0aBDCP7bAPT9UpdBGcD2FMmN5U0wYVCb9vThH/fgGKuF1R5IoPvJKRF8xDN1SIsEniEmF+CER/Q5zP+bY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760705544; c=relaxed/simple;
	bh=sPKwdu6wTdyJOHtexVwlNZ505QFzH6aQ8UPHu+doLzE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=g06fWAiEbbgEMbxKO/SiPvy7m9PswbylFr9T/wUqya0ZvJSzHB8/XZR1JGi9cgPPYfNR8SV65PC0pxf3tKb7zS9boeIe2rB3nun9pnCi6pdg4Pt2wS6Th/aUxhIXMvVDM0WMFLLFN7HXPtufdU9HjovH618sYr8vO65cOjcjRpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SBMBaESG; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59H81Hea025265
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 12:52:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8C509Fpt0f10gMNx7IiCvD7Oj3qVzkgtXi3AN6KeSx0=; b=SBMBaESGPB+nte5q
	eD4xjfOsBvxBujOjvCaJoNJv5qVe7aHq8zcqVWqNBPQPAyAnRKFjRoOK2ymwzGFS
	F9GCUxFnEqlzHXi6SyWVz7Xd0uUu4n5c+EUkBtiN2+w1Ezah9oDqZEVHX7HA5CvA
	S59fotfUaSo9xOe+ynWegZOBX8drRHBLntY145EAO+QSmoAsvCukoDCtn19eFbKj
	5rfv8HNFNZo0tOivMlkbgSFiuXQ0x+RNB+Nzg4+1O3HlcoYyHLjWO9ATf3Bni5Uk
	tpSVkVKRZUXYUhoRMQaIaGiZRdAOoPTcm3EGEBxyo64bJzSrWJN+komWzy7JDW7O
	FiMGbg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfdkm6wh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 12:52:22 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-87c1a8aef7bso64667836d6.0
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 05:52:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760705541; x=1761310341;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8C509Fpt0f10gMNx7IiCvD7Oj3qVzkgtXi3AN6KeSx0=;
        b=g1g+MxPUorGTSwH1RrCPIT1hSFA1hO4w6yv2WJ5jEZ6Pw8NSymKXSAV/JMlKoV1KOO
         7CQPmp99qYfesvFm8UUr3LgtOkQTRzSCaNIJwtlbbicA9MVmzzoyYMYSzkHtHXB23yJM
         di8teEDkNJ3mGbUWPIMqVuDzLPxXL7RvavNM2JHt7GEnUCqSBfnN6tiCejXMa567z7nM
         VjvTiYFOmTblv+URZ2X4TPef3I3pbqPpnSNOu/WWjFjfmNpb6gRZlAQGf27gcBqINgeH
         ahxut3nE02qLetItIv49j6u7N3rsR4hSVNmAklXJN00eu5EbUeJ2XNIeUpgEvcXpFLiD
         hgtw==
X-Forwarded-Encrypted: i=1; AJvYcCX/tpqcj3XNoNs/4kiBg/ZegzUXi0DtF6P+DHkSKCfocYEomRtro5MjUrHOFZEtdJ9YAOEZEB4eeigK@vger.kernel.org
X-Gm-Message-State: AOJu0YwslarpOsJKOaJ1fEOfvKj6L8wATBAR8puSn1cl4CbAIOiD0L27
	moivbWQCJ7bRrpZVfXqf9sHFLyQ8NH+HMguyBpNKThEQ5KvCf75gJV8z0ga7eFyZTNIEHbK5LCU
	y2FJ3Y2dWZCmOyiseJ+YXhV/N+M+2Ltaho1QX/y5q3CQ3oVinPJhafa4mCuzATVbQ
X-Gm-Gg: ASbGncuk65e5lNbpRTTQBEDSdO8ano0kQ1MVy7J2aYXexmvbfmkJCMsHwh3yObeW6KB
	PgocYYYo/L/SEJHSg8STqgZIf3BgGXvM29k/fb88Zkx9RRsXl+w6K+giig0j2p1mEDL5xTeR45K
	q1T0tJAuoB3XV+xrdXwu0FtDFmj5LUfBSAv3pDfqqn7THRNQitRkV+aj7wvC10bH37qFDqQBhVQ
	Rv4RrvCwdd4Sq5ZsOhrHJAA4Z4hlo0f/NtVXomW0lTA7hVx+lYeMciNAsDVULd4kGAOtvfNC2ja
	8udO3JTJJOAr5VwFwjWSQtjSlvxkWFXvgEtwIthpggnbyAwaNYWxL2XbczH87pqTAesVl4Dq3OD
	muOnKW2d1HO4DfGg4b7SEip6Nn5C6u987uLbPb0rwAE/HfyVhctcm7ckB5xIK8ehm9YvWv+P0r6
	CX93h8LCFpKjY=
X-Received: by 2002:a05:622a:1a24:b0:4b3:475a:e2fc with SMTP id d75a77b69052e-4e89d21c2damr47124351cf.3.1760705541082;
        Fri, 17 Oct 2025 05:52:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFkkcMwANI4/mggRoeEmmkf306hMXWngKk7K3LeUGsEk4h1EdafxAao2gsUVAtk1cr9ZpNmFQ==
X-Received: by 2002:a05:622a:1a24:b0:4b3:475a:e2fc with SMTP id d75a77b69052e-4e89d21c2damr47123921cf.3.1760705540599;
        Fri, 17 Oct 2025 05:52:20 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59088563812sm7829409e87.61.2025.10.17.05.52.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 05:52:19 -0700 (PDT)
Date: Fri, 17 Oct 2025 15:52:18 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Tessolve Upstream <tessolveupstream@gmail.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] arm64: dts: qcom: talos-evk: Add ADV7535 DSI-to-HDMI
 bridge
Message-ID: <vcjsz3x3bbzf6lbgbumutfymuz7hbfpr6myg2hiyqbr5o245sb@ydr7bunig5bi>
References: <20251015122808.1986627-1-tessolveupstream@gmail.com>
 <53ef53b423uespn7xspqfxnnvqvhzb5b22a4oaimf6g2qy7ruo@273oegazxbaz>
 <b3390184-a3ef-49f6-8b68-dbf94564ab43@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b3390184-a3ef-49f6-8b68-dbf94564ab43@gmail.com>
X-Proofpoint-ORIG-GUID: J_pEB_SLrmK75FzZpx_G0ag911pAwRJf
X-Authority-Analysis: v=2.4 cv=MrNfKmae c=1 sm=1 tr=0 ts=68f23c06 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=pGLkceISAAAA:8
 a=gQYefWIe0O1SA09g9L0A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-GUID: J_pEB_SLrmK75FzZpx_G0ag911pAwRJf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX04eafP3bhUSz
 hIVONowNI8FCidmpDWnsmSdkqAgySvlZdV5qQ/0z7fQtkf820hgESx2t57yvR67EBTCnwuSRjO3
 m3YGim3agVZqw1eE9j4cdNzCnoumRmumEX4UvlGpFljbyJC0m9/Q86Z7CXx194ib8zebRRir7Xo
 vPNFwkUxHPVokhpA5c96N0RYJFPWVqXFS6i5lmUBFIds4mCW3Y4SPIHNc9BRO+EPaiG/HlIfeAT
 eEFZbXuyI/x4TlLv6MpxK4j1n1mhWok6hoTNt2zdMtarQDeZFXKA0zRuq03sctsuc77j+X3Im7n
 LavcBpnyYaJhE4psh3V+D5tnprUMmZhDpYA4xZXMmlQVOBwrvG46sEcVrb39mHTNuYO+0aFTfaz
 2SwkNhki4Jx+YFGnIc5eoALRt8ur3g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-17_04,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 clxscore=1015 adultscore=0 phishscore=0
 impostorscore=0 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018

On Thu, Oct 16, 2025 at 02:24:40PM +0530, Tessolve Upstream wrote:
> 
> 
> On 15/10/25 18:34, Dmitry Baryshkov wrote:
> > On Wed, Oct 15, 2025 at 05:58:08PM +0530, Sudarshan Shetty wrote:
> >> Hook up the ADV7535 DSI-to-HDMI bridge on the QCS615 Talos EVK board.
> >> This provides HDMI output through the external DSI-to-HDMI converter.
> >>
> >> Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
> >> ---
> >>  arch/arm64/boot/dts/qcom/talos-evk-som.dtsi | 21 ++++++
> >>  arch/arm64/boot/dts/qcom/talos-evk.dts      | 76 +++++++++++++++++++++
> >>  2 files changed, 97 insertions(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/qcom/talos-evk-som.dtsi b/arch/arm64/boot/dts/qcom/talos-evk-som.dtsi
> >> index 55ec8034103d..b58cae02c9cb 100644
> >> --- a/arch/arm64/boot/dts/qcom/talos-evk-som.dtsi
> >> +++ b/arch/arm64/boot/dts/qcom/talos-evk-som.dtsi
> >> @@ -244,6 +244,27 @@ eeprom@5f {
> >>  	};
> >>  };
> >>  
> >> +&mdss {
> >> +	status = "okay";
> >> +};
> >> +
> >> +&mdss_dsi0 {
> >> +	vdda-supply = <&vreg_l11a>;
> >> +
> >> +	status = "okay";
> >> +};
> >> +
> >> +&mdss_dsi0_out {
> >> +	remote-endpoint = <&adv7535_in>;
> >> +	data-lanes = <0 1 2 3>;
> >> +};
> >> +
> >> +&mdss_dsi0_phy {
> >> +	vdds-supply = <&vreg_l5a>;
> >> +
> >> +	status = "okay";
> >> +};
> >> +
> >>  &pcie {
> >>  	perst-gpios = <&tlmm 101 GPIO_ACTIVE_LOW>;
> >>  	wake-gpios = <&tlmm 100 GPIO_ACTIVE_HIGH>;
> >> diff --git a/arch/arm64/boot/dts/qcom/talos-evk.dts b/arch/arm64/boot/dts/qcom/talos-evk.dts
> >> index 25057f4f6a91..f7e8be3667d1 100644
> >> --- a/arch/arm64/boot/dts/qcom/talos-evk.dts
> >> +++ b/arch/arm64/boot/dts/qcom/talos-evk.dts
> >> @@ -14,6 +14,82 @@ / {
> >>  	aliases {
> >>  		mmc1 = &sdhc_2;
> >>  	};
> >> +
> >> +	hdmi-out {
> >> +		compatible = "hdmi-connector";
> >> +		type = "d";
> >> +
> >> +		port {
> >> +			hdmi_con_out: endpoint {
> >> +				remote-endpoint = <&adv7535_out>;
> >> +			};
> >> +		};
> >> +	};
> >> +
> >> +	vreg_v1p2_out: regulator-v1p2-out {
> >> +		compatible = "regulator-fixed";
> >> +		regulator-name = "vreg-v1p2-out";
> >> +		regulator-min-microvolt = <1200000>;
> >> +		regulator-max-microvolt = <1200000>;
> >> +		regulator-boot-on;
> >> +		regulator-always-on;
> >> +	};
> >> +
> >> +	vreg_v1p8_out: regulator-v1p8-out {
> >> +		compatible = "regulator-fixed";
> >> +		regulator-name = "vreg-v1p8-out";
> >> +		regulator-min-microvolt = <1800000>;
> >> +		regulator-max-microvolt = <1800000>;
> >> +		regulator-boot-on;
> >> +		regulator-always-on;
> >> +	};
> >> +
> >> +	vreg_v3p3_out: regulator-v3p3-out {
> >> +		compatible = "regulator-fixed";
> >> +		regulator-name = "vreg-v3p3-out";
> >> +		regulator-min-microvolt = <3300000>;
> >> +		regulator-max-microvolt = <3300000>;
> >> +		regulator-boot-on;
> >> +		regulator-always-on;
> >> +	};
> > 
> > Please describe the power grid. Are these regulators being fed by
> > nothing and generating energy from the thin air?
> 
> Thanks for the feedback.
> You are right — in the previous patch, the regulators appeared
> to have no source, which was incorrect.
> 
> To clarify the hardware design:
> The 3.3 V and 1.8 V supplies to the HDMI controller are not coming 
> from the PMIC. They are generated on the carrier board as follows:
> 
> 20 V (USBC_VBUS_IN) → 5 V rail (V5P0_OUT)
> → 3.3 V buck regulator (RAA211250) and 1.8 V LDO (TPS7A9101).
> 
> The 5 V rail (V5P0_OUT) acts as the input supply for both regulators.
> Both regulators are always on.
> 
> example:
> v5p0_out: regulator-v5p0-out {
>     compatible = "regulator-fixed";
>     regulator-name = "v5p0_out";
>     regulator-min-microvolt = <5000000>;
>     regulator-max-microvolt = <5000000>;
>     regulator-always-on;
>     regulator-boot-on;
> };
> 
> v3p3_out: regulator-v3p3-out {
>     compatible = "regulator-fixed";
>     regulator-name = "v3p3_out";
>     regulator-min-microvolt = <3300000>;
>     regulator-max-microvolt = <3300000>;
>     vin-supply = <&v5p0_out>;
>     regulator-always-on;
>     regulator-boot-on;
> };
> 
> v1p8_out: regulator-v1p8-out {
>     compatible = "regulator-fixed";
>     regulator-name = "v1p8_out";
>     regulator-min-microvolt = <1800000>;
>     regulator-max-microvolt = <1800000>;
>     vin-supply = <&v5p0_out>;
>     regulator-always-on;
>     regulator-boot-on;
> };
> 
> These reflect the actual power grid of the board.
> The 20 V input is not modeled since it’s a raw external
> supply and not managed by Linux.
> 
> Please let me know if this structure looks acceptable,
> Thanks again for the review and guidance!

I think this is perfectly fine, especially if you add the "powered by
system 20V rail" comment to the 5V regulator.

> > 
> >> +};
> >> +
> >> +&i2c1 {
> >> +	clock-frequency = <400000>;
> >> +
> >> +	status = "okay";
> >> +
> >> +	adv7535: adv7535@3d {
> >> +		compatible = "adi,adv7535";
> >> +		reg = <0x3d>;
> >> +		avdd-supply = <&vreg_v1p8_out>;
> >> +		dvdd-supply = <&vreg_v1p8_out>;
> >> +		pvdd-supply = <&vreg_v1p8_out>;
> >> +		a2vdd-supply = <&vreg_v1p8_out>;
> >> +		v3p3-supply = <&vreg_v3p3_out>;
> >> +		v1p2-supply = <&vreg_v1p2_out>;
> > 
> > I think this is not correct. Please consult your schematics isntead of
> > adding dummy regulators.
> 
> Will take care in v2 patch.
> > 
> > 
> 

-- 
With best wishes
Dmitry

