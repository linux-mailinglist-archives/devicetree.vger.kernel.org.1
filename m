Return-Path: <devicetree+bounces-158141-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D0594A64CAD
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 12:31:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C60EF3A36B2
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 11:31:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0E6322FDEF;
	Mon, 17 Mar 2025 11:31:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cr9eaoL2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66B722FB6
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 11:31:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742211071; cv=none; b=Ze02YUAnq8eQOeXFgFUMKpW6b6Si17iu6vMj2OBgaEsgwWzfAUQ1DgVgWzZSf6MoTCYrrtL30E+MijTWFyENYke+IpQu60rJ2L9UuZ7nkCaRZ+57u5p0eccQXsxxjiL2M60TnetHQDUOTcUbGgz39tQHZsajXqi/tL+H0+VO2xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742211071; c=relaxed/simple;
	bh=ERBkrBW1jXuLcvdKfLSnqEM6VUWt7tHIo7Mc9TxQWcU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ly1EEgufHRKADSZbetaPnV4cWDtn1JW2T9fxUhPqSM0BwprLFeMbUxrmlcn1Prl38335L6Xmqk0H0tRQWT1fJlYA+aAAAuBh/kqJkCrNh5iTgrbQ+2adB1/3UVwXpuH2Emx+lH9MNcv1crcTIvjsWQVXtERtdlVXHFx3qor3Bc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cr9eaoL2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52HA2GYm025995
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 11:31:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=yxyQZODdXLkSP4pKmGvOhty0
	JHw7brHWE7Qvit2mgQ8=; b=cr9eaoL2JZ2LV2+RNEY6lxhf3RgxDQE7If1mWlce
	pbuHq5Qi0y2jqduPuQ639ji4N2vShG0+S7OcjBuKy1VOregTrudDo0/hxGCmjUrb
	ZfQCp84Vg6+U8it08YkWT8DK2PN9ugbS2GFh3g5lcQtT5jWchN0GZLlwbx+68MXL
	kS+GLBlQ0bHoHNNybJj0yaCYwda7ssZ91jtgfD1F9hl/zWGH99Isr8MhEkaRKc6b
	fywrUUpdFGpfcKtn0MTcMmFbYeFxj/YR8ydz4neZMbPVfqqfDy7W+8pSCwYl3ckr
	PGd3HPSAZ8APC1dfjYkmzI+yJqNmTywvemTl4eCS8Z0qqg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45d1t4mheg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 11:31:09 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c3b6450ef0so702366185a.3
        for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 04:31:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742211068; x=1742815868;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yxyQZODdXLkSP4pKmGvOhty0JHw7brHWE7Qvit2mgQ8=;
        b=dBonvIuIcqyYU5h+aDcuwbTFvX9E2oBkk/mx+6zkVqFn/Kebi0d2XXVBCjrrVlaQWe
         DbVLBsBoZnI/wLxG3PEOZ2ThegcHQ3UxI9DM9NGgfaGZTBvp2e3JP5wo/RCqvtbDoxt2
         HciYQ/ascLAys+9c02JHiM+av7c8PKs6v0SggBN3cJpKW6/pZ2+qvrJdo/ibWT1NSkRe
         HG1MZmw/UQxjOdKJyQgnXKoHVcg1GhAMKZKkNbrlVbgTUqZ3QpTiDnlLv/cMrwAjFCCw
         h/mzJlvt9AjVGK9ehx4ozjwKCRHfUB+j5oylGRkAbYZ5LQM7Q9/C/Fu8zB3LazXBvOXg
         UBJw==
X-Forwarded-Encrypted: i=1; AJvYcCWOGB1tOx1QwT814uDFNeHnMHcEJjfFtijowHVleUsafvvOr/K6lVpig//nk9CIGyqoF56EzMPoQMDt@vger.kernel.org
X-Gm-Message-State: AOJu0YwqO85eQ3HMHlhY/oM+oym91AZoj9JQVU0XFbm/gUfBlSf96W3/
	UIcFtuZqbLZX5DsCIOSbm5T7+O1DM3EawdiGfzaYWX9JHC3tINM1q52v8tSPwRp+mTV+6LkA3Hu
	kVC2rZ5zz0mMT4i9tpM0AaBZmkkp9cz01NWlvmBXcn9UIWU8QnvwXFqoC/J7V
X-Gm-Gg: ASbGncsmgwJ5dUza6VwWgnmxT8/+6ONJs3BHDPIlTvefR27s9XmhRD9QiFIm6NpPscP
	2m4WeZ1yIjXV7SmwsU0n3KnEwcb9MoYU6lh+bVyRFTFL5mSeM1lnAnDCSVHJDvTaF4voXTM0ftU
	lmvI927LKJwo8T32S6pHs25jzrPrPs0Mu+STxEZlnND3Ia2jTjutjXrnD7G8MP7OZruSsFGvIa/
	40uXrvKo37pkrCKbGuQckVYdiceVmJzJkNoqN84KKICevQAHb9eRBn6LCSfnu/McX8YU7Ohiq02
	RA/0pL3rZupTykvrrfaqqBSDrSJ47DTaudo0B5tO584UToU7gl6g2k99xPZO3MNUS0OfwXjLJ75
	lfVQ=
X-Received: by 2002:a05:620a:2402:b0:7c0:c332:1cdb with SMTP id af79cd13be357-7c57c8fd7a8mr1408212585a.38.1742211068517;
        Mon, 17 Mar 2025 04:31:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGyzB4PA4i/ZI1x7x2UAZWqGYU5b/+Y54NT9qN4ljiJY5IlVc9vIREnL/Bl6tJpjNqwt0qkSQ==
X-Received: by 2002:a05:620a:2402:b0:7c0:c332:1cdb with SMTP id af79cd13be357-7c57c8fd7a8mr1408210185a.38.1742211068190;
        Mon, 17 Mar 2025 04:31:08 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30c3f1da280sm15695621fa.89.2025.03.17.04.31.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Mar 2025 04:31:06 -0700 (PDT)
Date: Mon, 17 Mar 2025 13:31:03 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vikash Garodia <quic_vgarodia@quicinc.com>
Cc: Dikshita Agarwal <quic_dikshita@quicinc.com>,
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
Message-ID: <awgq7zqeqkp2iwyk7vbn3mugsaq723bisxzhaswmzpt3iyc5rw@2vsarnkjdrjr>
References: <20250311-dtbinding-v1-0-5c807d33f7ae@quicinc.com>
 <20250311-dtbinding-v1-3-5c807d33f7ae@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250311-dtbinding-v1-3-5c807d33f7ae@quicinc.com>
X-Authority-Analysis: v=2.4 cv=VLPdn8PX c=1 sm=1 tr=0 ts=67d807fd cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=vjPId6sXUSytdOGuP0cA:9 a=a5fHTQWifTJYonsY:21 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: yTtkr3cfEJ6rMTrnMRM1QtMXyNAMk0YV
X-Proofpoint-GUID: yTtkr3cfEJ6rMTrnMRM1QtMXyNAMk0YV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-17_04,2025-03-17_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0
 priorityscore=1501 clxscore=1015 mlxscore=0 lowpriorityscore=0
 phishscore=0 mlxlogscore=999 impostorscore=0 suspectscore=0 malwarescore=0
 bulkscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503170083

On Tue, Mar 11, 2025 at 05:33:55PM +0530, Vikash Garodia wrote:
> Video node enables video on Qualcomm SA8775P platform.
> 
> Signed-off-by: Vikash Garodia <quic_vgarodia@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 67 +++++++++++++++++++++++++++++++++++
>  1 file changed, 67 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> index 3394ae2d13003417a15e64c9e47833725ec779e6..09db8e2eb578f1cada0f4a15e3f844dc097bd46d 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> @@ -10,6 +10,7 @@
>  #include <dt-bindings/clock/qcom,sa8775p-dispcc.h>
>  #include <dt-bindings/clock/qcom,sa8775p-gcc.h>
>  #include <dt-bindings/clock/qcom,sa8775p-gpucc.h>
> +#include <dt-bindings/clock/qcom,sa8775p-videocc.h>
>  #include <dt-bindings/dma/qcom-gpi.h>
>  #include <dt-bindings/interconnect/qcom,sa8775p-rpmh.h>
>  #include <dt-bindings/mailbox/qcom-ipcc.h>
> @@ -3783,6 +3784,72 @@ llcc: system-cache-controller@9200000 {
>  			interrupts = <GIC_SPI 580 IRQ_TYPE_LEVEL_HIGH>;
>  		};
>  
> +		iris: video-codec@aa00000 {
> +			compatible = "qcom,sa8775p-iris";
> +
> +			reg = <0 0x0aa00000 0 0xf0000>;
> +			interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>;
> +
> +			power-domains = <&videocc VIDEO_CC_MVS0C_GDSC>,
> +					<&videocc VIDEO_CC_MVS0_GDSC>,
> +					<&rpmhpd SA8775P_MXC>,
> +					<&rpmhpd SA8775P_MMCX>;
> +			power-domain-names = "venus",
> +					     "vcodec0",
> +					     "mx",
> +					     "mmcx";
> +			operating-points-v2 = <&iris_opp_table>;
> +
> +			clocks = <&gcc GCC_VIDEO_AXI0_CLK>,
> +				 <&videocc VIDEO_CC_MVS0C_CLK>,
> +				 <&videocc VIDEO_CC_MVS0_CLK>;
> +			clock-names = "iface",
> +				      "core",
> +				      "vcodec0_core";
> +
> +			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
> +					&config_noc SLAVE_VENUS_CFG QCOM_ICC_TAG_ALWAYS>,
> +					<&mmss_noc MASTER_VIDEO_P0 QCOM_ICC_TAG_ALWAYS
> +					&mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
> +			interconnect-names = "cpu-cfg",
> +					     "video-mem";
> +
> +			firmware-name = "qcom/vpu/vpu30_p4_s6.mbn";
> +			memory-region = <&pil_video_mem>;
> +
> +			resets = <&gcc GCC_VIDEO_AXI0_CLK_ARES>;
> +			reset-names = "bus";
> +
> +			iommus = <&apps_smmu 0x0880 0x0400>,
> +				 <&apps_smmu 0x0887 0x0400>;
> +			dma-coherent;

I think almost missed it:

	status = "disabled";

Don't enable the device by default, there is a chance of the firmware
being not present.

-- 
With best wishes
Dmitry

