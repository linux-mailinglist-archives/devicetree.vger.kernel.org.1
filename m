Return-Path: <devicetree+bounces-254682-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D8FED1AC44
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 18:58:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 74E5530185CD
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 17:58:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33E71393DF4;
	Tue, 13 Jan 2026 17:58:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WFgqBgri";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="V3G9uTXJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1808393DE1
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 17:58:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768327131; cv=none; b=cQ7lWQVElY1AYQx2iKREHbrk3JgsOIK6AZRID7IwV7HapgwL87z5yidFAD1+z4tfTLzm9Mv3EMpzHdmQ+XQ0MSi8Nz4Vflkl/7llML29bnOXdYF1snubHWGLWhdi7sWOvAn8+ViTIR4JDcKhm9Hz8U3B7o8ha5hWXXflqB/couo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768327131; c=relaxed/simple;
	bh=9MBbhJG4T3kXZlVz1mX/P0WH4d+hX4QQjrBm5FanL5w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mRYwBoflvNQYu0ha0VTUZGL2kkL6a47cfoY5WDPNO7vqrkgFWwV+R9JYkmdqUzwJewKiV2Kn6hVqQZxE17iAChCl6r2SYdA4gJoVADNR8n/Y/gRBGOF2gJ6xUan0jZIdDjEJ51ZIqhFb2dbps1WCb9PafcXSeuaHpsX2yQ2LRBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WFgqBgri; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=V3G9uTXJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60DBnVfR2865775
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 17:58:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=StbT6RBQviHpD+ivVUm7MVsA
	Kb8jo1zPIoSdMFEL8Tw=; b=WFgqBgrikHEMVSno/vfAOY/cNNfOSH3ohKq1sbSU
	yYgrEtofVkiPfxhYAw4qiQ9ExKJz5KSqSwdaaYgpv0rlwI5/Z8vmdBsPFxX7xpiN
	FIulvCY3dd+xoW/Fp2ux/ja7EnhKQS73FgCM5cAtBtHKPJ7aT93jeLoZxb7eSuA7
	3GnJyj3Bt10Q2s1DR8Gp/OyXyQ3lyUSiJ2jdtYo8qN7xiMEPlp6QWDzRmU+CqLA5
	OmGUf39245d3TpFkJs9VBuDfvOAv8nIRmfITeSi0rlQjvlPMcs+cpl0ruwsLq/q+
	OxVdfIG2GTT1+w/swq93mcyxQVbvO34hPsIWJp1KW7RD8g==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bnfjhah19-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 17:58:48 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c52c921886so68964985a.2
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:58:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768327128; x=1768931928; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=StbT6RBQviHpD+ivVUm7MVsAKb8jo1zPIoSdMFEL8Tw=;
        b=V3G9uTXJuDV4R85RqakM8iKzbxWn7hZdmAC7QHa8sdgq+Eoi1NyWUsqvMymL3JMn1K
         ncP2Lsr+cYKTMpnnYwBNcBwNOoBESdcMUJZraJSKxiXRCHB2PuCEWjDDSYL5hHCID6cf
         ILzrLBLRDPKyjltxxYnTFKqxQRnHkYdIu9Dk4duU/HDcItYMPmixtDngT8YQ+igUzKq0
         4CZks7VLlkf6QVeakKP/BCAtG25pkjgLRShBoxHlBtYW5OuHg1SG+zugz6si2Sqyh9hn
         87nFn2+O/jX0+POFowqZq0jw7JdyRflkd/evqr2ewg6v5VXztxiv6TsWYBOPa/groHjc
         yCHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768327128; x=1768931928;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=StbT6RBQviHpD+ivVUm7MVsAKb8jo1zPIoSdMFEL8Tw=;
        b=tk1vQfPOrySt5gIs91TE1yfKB+eNuInRVy4CKrEg+6CKtTnmoAbmAqCYnVOYuozWhY
         KeANVGqBxAlnsYvFXseqwfDDSob1Xin6RtYQk+D0pa3fAajqysqsEv4FgSn2wt4+taSy
         o0/5QDIITdCJSsQRcTALiItuCAn+Pz+MywHnRWPHeQfTrMg4Huci7USSzPmcdbtCuzcT
         UBS6o2ucyxb37CO0ZIeNnOrtUyqaqtEgxZdygyzVR5viIZLCCGaQMui0k4qaH6D6oynr
         6PioU0H17z8zZsFR3lKoHVDuVPbo48/RKKkKYPxUVWvHHFVQLQN3F0EoAMJCRmUgqHtc
         +0ng==
X-Forwarded-Encrypted: i=1; AJvYcCVAGTclTuXfo0UKA48NCZI90bO45MTOViY1jSoxC+rzuDSTYCociDktzd48Oz0M8X+hNsGcruKZb808@vger.kernel.org
X-Gm-Message-State: AOJu0YyZiovwBD1ACpYx3+pO0rkIGtF4UMysOE536373aTvddti/3iYn
	SqhrAfxICwsRgXrn4z1Neh5Rwby5xvd8T26ATbYsGxf0QahPmbaDHrCr9gf00TZoV3m8wcAkAm9
	F3WZiyNA0VSUFp7ZpDPOFU9Mjc4eoRWogNLKgg3tkt4l+6ARUuMBsNJsDM2ntQV2E
X-Gm-Gg: AY/fxX6D84YTdvnWi3YKNghIJwa+h+cxvP+poSCrBzJ5wNupEoQgJgkq1ksyJQGnsC5
	94zgNodFYEDXRC8DKrqCp1BSHwafCuwhBoOBCiID3WJ+2y09xF3K/hhrlYCwmyZXuhaDQKKAObu
	vNN66O9PjeqwgnEvBx25lfl0IfINE80EBgfh0+8cbokx3Yxp027rmQZFfkYYiX3zwjrPaFXKyLC
	R7TlX1i3cCFXSzBfgjPLpQmksvCoU7Ua7BYIJrilN24joSddA7sqTZfA41zCKkScFGE/ODeYyaO
	AceF9jQFQEJAYYihBCGAxchStNla6qmejuB+/HJJ9V/jLuI0xzQtlz36vviPb4mR69uk9Cuk8Yh
	hSs80SwAOzu0GlHeE1GSyfJ9Y9QrsMg9cpx+zmx0VrBTMl7HJRbSuMiAA8nmDiR9QJlUdvmAtgh
	lvtMsFOepLqYZTI9JNpmsdx3U=
X-Received: by 2002:a05:620a:4101:b0:8b2:d56a:f301 with SMTP id af79cd13be357-8c52fb32b67mr9488985a.14.1768327127901;
        Tue, 13 Jan 2026 09:58:47 -0800 (PST)
X-Received: by 2002:a05:620a:4101:b0:8b2:d56a:f301 with SMTP id af79cd13be357-8c52fb32b67mr9485785a.14.1768327127327;
        Tue, 13 Jan 2026 09:58:47 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b9a425afasm775988e87.30.2026.01.13.09.58.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 09:58:46 -0800 (PST)
Date: Tue, 13 Jan 2026 19:58:43 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: Re: [PATCH RFT 2/3] arm64: dts: qcom: glymur: Add USB related nodes
Message-ID: <gkq7vto2dhles6u4blbvzyhlnit55twjbhhnwz3k24smxb7yx4@gnnq2qbpovc4>
References: <20260113-dts-qcom-glymur-add-usb-support-v1-0-98d6d387df01@oss.qualcomm.com>
 <20260113-dts-qcom-glymur-add-usb-support-v1-2-98d6d387df01@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260113-dts-qcom-glymur-add-usb-support-v1-2-98d6d387df01@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDE1MCBTYWx0ZWRfX4TOUB6P63zP3
 n8w+S4tWGaZDXGlspuP0r9y3PxaDUAOLt8xki58Jk36I70LlCX483J0HuaYfj4H+7DENY9HeIHK
 P1sr17seFeOmNLy7GxwIoJ0LU8LzllJ4r6n9B2glkziikFhwWIt1DcBueVF5+bbXkvHC3rEvao9
 jc5PA43H4AIuVF+eqWD63VfLIk9XeNBKfh6J+OElMT9HcafQ2aE/NPd95tbeaMFTfN4DUjd+V6m
 xnmvBSFhHZFXbsOoPJetBHRfrRe4RJBba4nPCXfSR0ldHmUMa4lvnpOuWK74faotGKkrqGdc3PC
 M9Qbk4m0lewDxbnElshUj1ID1CUNnJ2qA/mF+6nTPzvBo+uwLtksTpA01+i+iqD83KqMML7feSK
 HL9C96BhCbCPm1NDIlL+olZr+yqYT1HWAg6gKym/AlFlo6uvc85M7bIyhbo1XXoGWS7VQ+zVh7L
 v5D2TPbltYjylsssTXg==
X-Proofpoint-GUID: KKSwFxgdISz-LpQiNKZar5-lCsIBqiKu
X-Proofpoint-ORIG-GUID: KKSwFxgdISz-LpQiNKZar5-lCsIBqiKu
X-Authority-Analysis: v=2.4 cv=XJQ9iAhE c=1 sm=1 tr=0 ts=696687d9 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=sYW25ZiEPLqq09AedJsA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_04,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 malwarescore=0 spamscore=0 phishscore=0
 priorityscore=1501 suspectscore=0 clxscore=1015 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601130150

On Tue, Jan 13, 2026 at 02:33:05PM +0200, Abel Vesa wrote:
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
>  arch/arm64/boot/dts/qcom/glymur.dtsi | 663 ++++++++++++++++++++++++++++++++++-
>  1 file changed, 658 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
> index eb042541cfe1..53b8ab7580bd 100644
> --- a/arch/arm64/boot/dts/qcom/glymur.dtsi
> +++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
> @@ -750,11 +750,11 @@ gcc: clock-controller@100000 {
>  				 <0>,
>  				 <0>,
>  				 <0>,
> -				 <0>,
> -				 <0>,
> -				 <0>,
> -				 <0>,
> -				 <0>,
> +				 <&usb1_ss0_qmpphy QMP_USB43DP_USB3_PIPE_CLK>,
> +				 <&usb1_ss1_qmpphy QMP_USB43DP_USB3_PIPE_CLK>,
> +				 <&usb1_ss2_qmpphy QMP_USB43DP_USB3_PIPE_CLK>,
> +				 <&usb_mp_qmpphy0 QMP_USB43DP_USB3_PIPE_CLK>,
> +				 <&usb_mp_qmpphy1 QMP_USB43DP_USB3_PIPE_CLK>,
>  				 <0>,
>  				 <0>,
>  				 <0>,
> @@ -2224,6 +2224,249 @@ &config_noc SLAVE_QUP_0 QCOM_ICC_TAG_ALWAYS>,
>  			};
>  		};
>  
> +		usb_mp_hsphy0: phy@fa1000 {
> +			compatible = "qcom,glymur-m31-eusb2-phy",
> +				     "qcom,sm8750-m31-eusb2-phy";
> +
> +			reg = <0 0x00fa1000 0 0x29c>;

Here and everywhere else, 0x0 instead of just 0 in the reg properties.

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

-- 
With best wishes
Dmitry

