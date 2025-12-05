Return-Path: <devicetree+bounces-244840-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 618A7CA94C6
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 21:50:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2E178300BEE9
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 20:50:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4542F1EDA0F;
	Fri,  5 Dec 2025 20:50:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DpuPZvPk";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VTR1Omvk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7D5F3B8D75
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 20:50:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764967817; cv=none; b=eXI/3SDhAwQgCvrv5GczKi49QaalSn3uCvU3ixWgV4hlC3C3LFnoejSXWjckzXm/0tEVO5I9/Xq1K7tdhvoM3PB9p11rDfuAgM0IJj8fPCcl2exQ+J4QfpCemluOBvs78amckV7JgWkV47mOu12Lx2eo1+3mf4dsmmKKjr7SxwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764967817; c=relaxed/simple;
	bh=NxKmqFjtG+Tf/oEBl8T9P6E2Ko5AWG9c1+gwTLHJDXQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gZAjCBjXw2drkUS9xzkqIPwY6/tg0V58+gFWjpB8EJT8Axxo8WBgPhMgAWTyBsUxlbRRbWPDRSYnlNVVMPKh5nW5LNT3qOh8SZy9oa5UApG66+Epg5ZVVAagzfjDfleAagWJO/6tJE6XcGoaUOfsI9I085gurWTc/4Qu++77Ns4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DpuPZvPk; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VTR1Omvk; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B5FBJF34177145
	for <devicetree@vger.kernel.org>; Fri, 5 Dec 2025 20:50:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=gw7CznOoeqy7ZE8WuH6aXklC
	ydGAte0EmNopHFxWFiU=; b=DpuPZvPkjLH39WxsReu1Ewe4XDEE5wIq1w/Etkh8
	43869rcGv+KOk12BCJBlYjmxYQ8vVrYPPisqndmyetGrDdKfS5//ip/znLJLwRA2
	s1mLZ516qxzmplTVZ4A6TBF4McxklD4ROKopE9Fh5VGiHtAt5ccZ7h5Xw8QAdMco
	H7ZoMZyIoa8vFtRIg4nk2bH4AWVKqWef75Dp22LpmxY1eVuLpeW3m7CX+AwiZI7K
	oR5/IWjv44BtQMndN4dwxVNB0UbabGa4pXRxpQzjLKNlxroobO34i1jhtud6P+TY
	q+9+W1Zx0WZFhyninPtQkWscPof/zxe0VsG18+CWS1II1A==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4auwm59nrd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 20:50:14 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b24a25cff5so529238085a.2
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 12:50:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764967814; x=1765572614; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=gw7CznOoeqy7ZE8WuH6aXklCydGAte0EmNopHFxWFiU=;
        b=VTR1Omvk4gInGF/QJhtKfIycxEGFUuxdRsYVwXYNboKyL+VtxHtleSwklFe89Lojqd
         YNwJCSFjUttnKsOXzhdvVmZ1TUo0LE0L2jywAcKJU7BC/NosLw8/K3xsBFnflL5QT9eW
         zlFvi/exLMiBgXZdxQ2WeuuEIVqFkuGUblfpNVp8qBp/yk7MzYjyx18VQ0m1A1Ys2uLf
         SkdE1E0RmQYpXoczku9265i6xKYrPKB1QPe7XM2GTgIY6eTGDVgSPF10B4XDEMO9fir5
         1pMGZcmYPpDg02gQ0eqbsAE+9EWNOyJCwc7bKJMvlTXmmm0ARkuaD7thbaCqhmjFvC+l
         QVyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764967814; x=1765572614;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gw7CznOoeqy7ZE8WuH6aXklCydGAte0EmNopHFxWFiU=;
        b=WzVkpi6GQieFBuy5URrQyJIcz1AATooUDh8awPsJ1bdpYc6MYYB2ScBRsPH6x+AeJc
         hlIx82fjqZPp6tVscm/zG2RkBqXB3/YP8NpHx9YZ1GeB72DdDjeOb/TQy1NepHUpInwl
         4RGbQEwWogTVQR7N+Z9gGpFG/QE9oDsuW0u0NnL8C4zpd825ycfvdaajEMkcalQet/me
         U/gZDRxkRSfr6anmZketq1l1I1mnwnIXIWPMmuNTT1NPTOxgE4id1/sdxVufxxiNUn1l
         RYZ9Adnd2+a06lcoMY1G2MjFfMiYsUyBAMuq4nvUOH3OtM5GmLlH03KShWsjp5XmBsxC
         Dskw==
X-Forwarded-Encrypted: i=1; AJvYcCVic1oI4U9xaKrmKEVbaPhKj4OlYaBwTEoWTXz/PRCewwdhS0cPjnT31IlNRB5gpJzZYWatoZWsxVxt@vger.kernel.org
X-Gm-Message-State: AOJu0YwyChBgVzyIm1xSPdZ/NMELvL6e5iGquQ7WU3igNEoiqmBOWex7
	M/ho49iBkYSPBbVUwFf6LZORgsNhuieCFsr/fVDBepmPCBMTKiZxYcY4wdD4ioamcxcHAnoTZRD
	sb61EMDRURpHWAzfh5MPfIs3byM4nBZgAfCh8sv+F8IQJyTCq0WZYsi2F0zFGnk2N
X-Gm-Gg: ASbGncs5WbZ/nAQdBpeuLmFsjHv7O2qCsAyUGdGQrjuWGZrXPj3Qm8VPHtJvDppHog8
	kq9ynz/bskW5jjS9DtsvDUASMJb2pdQa1uSnkVpwatKq4oMM0nJIr8wh+Af3+LWIuISCGmvde1X
	Lc33vTAFxu5iT9vPXYN0YGIKJoblzWPxiVI54wkjxWYF1zxwAiyvRoiS+5UT1sZoAgURYWv5km7
	0IrUNCrOgsv6Q/J7TbNgRWPGGtC4Fgp/xe6iisHAGvut/NEcZ0kq+AdYTijx/JYRU0pNUwSbmJp
	DDVv+z29qtTrqOpFI8dDL9D8nPn9PF1kEn2IfDgrTDNptPe5XvtAJ8Op1pSBpwqqLz7PgjCPWp4
	QTJ/UyE40vOVvHNutvH+Eb6Cn3PakTGzErnMo05I+iUdz5vPN+rs8D5QnXBGK2noq0P23nAltaO
	ZPXhn+j9mq0CMa5RnCzk7uCd4=
X-Received: by 2002:a05:620a:29d5:b0:892:eeb9:4def with SMTP id af79cd13be357-8b6a256a79dmr55986085a.49.1764967813806;
        Fri, 05 Dec 2025 12:50:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHxQfS5gFXwOoXS1F9lFdXo5Ot/z20q2txyTRwyA/2lJFyTKuqo6sTodobEz4I40L/ZDD545A==
X-Received: by 2002:a05:620a:29d5:b0:892:eeb9:4def with SMTP id af79cd13be357-8b6a256a79dmr55981885a.49.1764967813304;
        Fri, 05 Dec 2025 12:50:13 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-597d7b245b6sm1790426e87.28.2025.12.05.12.50.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Dec 2025 12:50:10 -0800 (PST)
Date: Fri, 5 Dec 2025 22:50:08 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>,
        Dan Carpenter <dan.carpenter@linaro.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Zhang <jie.zhang@oss.qualcomm.com>,
        Jie Zhang <quic_jiezh@quicinc.com>
Subject: Re: [PATCH v4 6/8] arm64: dts: qcom: talos: Add gpu and rgmu nodes
Message-ID: <uo6qbq5porpdqsne7a7y3wn5tj2jhdqxf7shy5pc22eo6lp7xq@uzpfng4lzz6o>
References: <20251204-qcs615-spin-2-v4-0-f5a00c5b663f@oss.qualcomm.com>
 <20251204-qcs615-spin-2-v4-6-f5a00c5b663f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251204-qcs615-spin-2-v4-6-f5a00c5b663f@oss.qualcomm.com>
X-Proofpoint-GUID: gEU2Lh-4OiHWVlljuTY-5w82JIXMxQ1C
X-Proofpoint-ORIG-GUID: gEU2Lh-4OiHWVlljuTY-5w82JIXMxQ1C
X-Authority-Analysis: v=2.4 cv=XeOEDY55 c=1 sm=1 tr=0 ts=69334586 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=VrvhRaur7Q1QZtYE1qIA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDE1NSBTYWx0ZWRfX+ERPeIzEhRht
 tl3iFPqgrhZfo2B4lC+o+NPOFchciCmC6asW1miEk9haz9sF2g0f2klxTgugmP2troqKdV+5lYr
 /1WrnnqeeJC9xkzR4V/Jj2+cvh7+yyUb1mVU2vhPHblFL4N3F4tEAU1mbhkd+fbV0wfrXHkR7GA
 TNSgl/XIf5nLCrPVpOP625a1qL+TvjLeDpLHgcnClNKdpEUedfLkbjcf4982npVwQgqCi0O3DyI
 +nbTViFhSAz6TlqMhRNX9wKzmC4wFB3HWBjHM0odOj3a6Ufnyr1iFd4YDP/NMIeW/ASxAfejUoz
 x2QKBaxk1tY59iQrIXocvOyh5aYeWb6HiAe/z6Kwp7pxC+TWPesv/nNarxzNm8nuYNljm5OhjGv
 KthpSW3ilYv8Cmmwy3q4AUMvbo+4LA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_07,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 adultscore=0 suspectscore=0
 priorityscore=1501 malwarescore=0 bulkscore=0 clxscore=1015 spamscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512050155

On Thu, Dec 04, 2025 at 06:51:58PM +0530, Akhil P Oommen wrote:
> From: Jie Zhang <quic_jiezh@quicinc.com>
> 
> Add gpu and rgmu nodes for Talos chipset.
> 
> Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/talos.dtsi | 110 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 110 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
> index 743c840e496d70133bf82928e9e0c3da9653a5ee..effaff88df83d5e6a0aab45a2732a00cae11e83e 100644
> --- a/arch/arm64/boot/dts/qcom/talos.dtsi
> +++ b/arch/arm64/boot/dts/qcom/talos.dtsi
> @@ -647,6 +647,11 @@ rproc_adsp_mem: rproc-adsp@95900000 {
>  			reg = <0x0 0x95900000 0x0 0x1e00000>;
>  			no-map;
>  		};
> +
> +		pil_gpu_mem: pil-gpu@97715000 {
> +			reg = <0x0 0x97715000 0x0 0x2000>;
> +			no-map;
> +		};
>  	};
>  
>  	soc: soc@0 {
> @@ -1826,6 +1831,111 @@ data-pins {
>  			};
>  		};
>  
> +		gpu: gpu@5000000 {
> +			compatible = "qcom,adreno-612.0", "qcom,adreno";
> +			reg = <0x0 0x05000000 0x0 0x40000>,
> +			      <0x0 0x0509e000 0x0 0x1000>,
> +			      <0x0 0x05061000 0x0 0x800>;
> +			reg-names = "kgsl_3d0_reg_memory",
> +				    "cx_mem",
> +				    "cx_dbgc";
> +
> +			clocks = <&gpucc GPU_CC_GX_GFX3D_CLK>;
> +			clock-names = "core";
> +
> +			interrupts = <GIC_SPI 300 IRQ_TYPE_LEVEL_HIGH>;
> +
> +			interconnects = <&gem_noc MASTER_GFX3D QCOM_ICC_TAG_ALWAYS
> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
> +			interconnect-names = "gfx-mem";
> +
> +			iommus = <&adreno_smmu 0x0 0x401>;
> +
> +			operating-points-v2 = <&gpu_opp_table>;
> +			power-domains = <&rpmhpd RPMHPD_CX>;
> +
> +			qcom,gmu = <&gmu>;
> +
> +			#cooling-cells = <2>;
> +
> +			status = "disabled";
> +
> +			gpu_zap_shader: zap-shader {
> +				memory-region = <&pil_gpu_mem>;
> +			};
> +
> +			gpu_opp_table: opp-table {
> +				compatible = "operating-points-v2";
> +
> +				opp-845000000 {
> +					opp-hz = /bits/ 64 <845000000>;
> +					required-opps = <&rpmhpd_opp_turbo>;
> +					opp-peak-kBps = <7050000>;

JFI, An ongoing discussion in v3 regarding OPP tables and speed bins.

> +				};
> +

-- 
With best wishes
Dmitry

