Return-Path: <devicetree+bounces-207654-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 588CDB3029B
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 21:07:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 59BFD1C80FF6
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 19:07:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF856345752;
	Thu, 21 Aug 2025 19:07:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="C6zr2X5N"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06F1C3451DB
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 19:06:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755803220; cv=none; b=tTzwGqUSCWVNHRWx0oBSaFz8FS3c1Jmx17jUv3QuNVPmUVzJd5Lz2wB8B5wIgr8fEbNICOcYJXcQP7sJSiPBL0muKorwoEySomIuNiv2dTmvqJdIx+1csc/PV/PDLqiMSrObPm7QDHNwq3W+1DMWDxXncysKlvWtpVs2+y4x5lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755803220; c=relaxed/simple;
	bh=GcjI3IsKE6vIsfefJqwOyt1ZpgvPns/76FBXhvFSb70=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=c+d/77VhdjYF2y3gXoI5W+IRALTb4UmzhTxMgakJgbPhzl/0grDoDHyj/L8RYKwQKW8OnPfM8ppMPwVC2PoaE7zIZrYetoZxtG55M4AT6BydU9bG+ekSB/xHKHoaicVESa2B2zbxt/TKb0UJTYIsECbrgbriBfo667ba06v+8wc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=C6zr2X5N; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57LI94Ag023936
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 19:06:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BFn6lCJDWEd+aFBAvDVtshvN0IqD8I5xMt2OZhhgJXM=; b=C6zr2X5NAInkxGHY
	UZYMQ8v1GsHxX78Ld8a9BVMlwvzLjfD6+ewu3pSLuQe/8vBU13gV7t6KbuDxahtf
	CyXoxCkWAohIUiw7XGM0EUm6F3WxND6c6M4WK4gXyJedpJEPt4ZcQC7/v1rdCKrL
	Kqb/BOVEsiMNZz+wvg/1lrhq1A9iocrgW5r8p13nyf7NK1dl3IApNMfCvF8koEhQ
	rWiOORKdPEX1ub5UmnLditls3batjdnUyMKc+/xHHZYIguWfxRE9uMdCnkLqrz3p
	XFCNpPN5Y9rrt9Og5etj6QW8+nZrzYsA747Ed4kOBM//PGGUMdUMhnnBmSmNlQ8+
	QOGXRw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n528xht3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 19:06:56 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-244581953b8so16767855ad.2
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 12:06:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755803216; x=1756408016;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BFn6lCJDWEd+aFBAvDVtshvN0IqD8I5xMt2OZhhgJXM=;
        b=l+x5O2Q6eF0PPJgeHzNxkTYYbMY+eKSOR5HuvDPPzWYqoMFcJWsEdTQgoe3/lLI/4a
         OVQ/h/C88d6Ku4ErVoScKQHAnUI0Nf6Dx2T0TFDYTDf0/jLgtw0D5CQiXQX1GuunT/Qq
         m263+cqIdn/rh8FvP/bbiSKIucnQI5rphVU4WyUf6GOKiJKlssGdQqUzym4V4jDRy2Ej
         5Uvi6UdiC6Am8sW+pVyMwM7yipLkTl2Gi0rEgos7N294Nw2o9ivBYV4rwCzSAhRyXKn2
         a6bfDaUT6BczP/Ck/B98ZmQtvsrtdsfysBV5ABN9wNBoS71jrkN/9pd2V4uymYh2hVwh
         0JSA==
X-Forwarded-Encrypted: i=1; AJvYcCXP78JasFdUuLHWc3YJ/T2Mh05BzdmS+MXoGit4RCDji4Rc10wqKYT32j7RKRNwwFhSjjs/Lv+0b2XN@vger.kernel.org
X-Gm-Message-State: AOJu0YzTlOtr/KU9vunHdpWGwcUMdgGc6lIIGY7RHYj2NfBAchQrdWvn
	49E+N6asrYLbIgGCsydlMA26JBAEfmvcpxUxCDTOJ5naJHTKhNZBN0rAFeB07MuEVo31NUHb0CF
	NG186o1wzlaQgbvardSqGuCyq9ZNyUY7Q08dLB7ohRXezWda5k7rXYKtF2EcQNycp
X-Gm-Gg: ASbGnct0ExFbe9p+pph4RxY/zpcTxc1Plf2rGS0HqlywHijUlRaaTaKhnjWGQb0BzK2
	QhLz12b8TbjBuOa1/259Rlmb9y3isLtxkAO7GTGnaAy9yKC5TYFAWh+JG/DirzWKlw2CtEvzMGy
	rd/zt02TPgPp58HAvydA1ctMM8/SC8ugA+7xMmDALvMcevaQEepZrEnDI7xPW5gxTTfWACjE9TA
	uRwP6h0NZWXd9JV++32NSfFpFme4H21Wp2w9TyKe+bkAyyfAhgC6zuH1gCAHL99/Fe4TOiRd6qo
	dv5sQo5cZsvg4X4G3e2UgN/dVMJtYQcypGSSDHFy6NInBIUGib1WdBIgZuIXwls=
X-Received: by 2002:a17:902:db10:b0:243:e3:a4e5 with SMTP id d9443c01a7336-2462ef94f72mr4596915ad.48.1755803215602;
        Thu, 21 Aug 2025 12:06:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEALjqD+64g6+aUDcHQDd+nzuWWoTg3zL905SlfzVM/ab/dThtX7+FD2an4jIMQPPN/oJHtgg==
X-Received: by 2002:a17:902:db10:b0:243:e3:a4e5 with SMTP id d9443c01a7336-2462ef94f72mr4596425ad.48.1755803215088;
        Thu, 21 Aug 2025 12:06:55 -0700 (PDT)
Received: from [192.168.1.6] ([106.222.235.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-245ed50129dsm62047125ad.129.2025.08.21.12.06.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Aug 2025 12:06:54 -0700 (PDT)
Message-ID: <95fed1b1-8359-4221-8245-dc12335dc4b6@oss.qualcomm.com>
Date: Fri, 22 Aug 2025 00:36:47 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/6] arm64: dts: qcom: sa8775p: Add gpu and gmu nodes
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Gaurav Kohli <quic_gkohli@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>,
        Sean Paul
 <sean@poorly.run>, Konrad Dybcio <konradybcio@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Connor Abbott <cwabbott0@gmail.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>
References: <20250822-a663-gpu-support-v4-0-97d26bb2144e@oss.qualcomm.com>
 <20250822-a663-gpu-support-v4-3-97d26bb2144e@oss.qualcomm.com>
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <20250822-a663-gpu-support-v4-3-97d26bb2144e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=I4c8hNgg c=1 sm=1 tr=0 ts=68a76e50 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=YJRzWv9GHcPC3W2cS631hg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=KKAkSRfTAAAA:8 a=m0bU5jEcJMV6AtSS2XYA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: QBMK5YBzp9HqELojyEQULoauBBWdh_XE
X-Proofpoint-ORIG-GUID: QBMK5YBzp9HqELojyEQULoauBBWdh_XE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX5DW2ZUKW225Q
 doF/b6xrep5hJdHX4HoW8yR0sJVtmi2OA2OWbOOaer6jovZgBaczseE4cC+B+dXtQvKcucE/Y8T
 eYFe9yge0PGkLoH+Vys9o/H21DxqylmNlOZlym+MBPl3KSLYiEg/0lYipZo1ReUOXzkoIGR4BSU
 gpixSrZ+Ca7gD8g/ewPgy+n2rgNvW8iQhJxFZ6XogZznJqUKMtzCRCFNV9AEF1GatpEbntizNeM
 uZ/T4Le6zaVE+2nzLcvlbwfVX+u+HWePh27gqSYl0Y8ZDlnUr6fO3iPDuxZJofnTdYUDGb6dcN2
 ASkKT8u5XiuGfl5fTwZR4kYOWyAV7I/zGVVh2f/uPKCQpZE1/UMs6SGwJ9LbnoeKdzJXysHpkQU
 mcSSHNNvC+eH+OQpP07/+ouZWzThpQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-21_03,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 malwarescore=0 spamscore=0 priorityscore=1501
 lowpriorityscore=0 phishscore=0 impostorscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013

On 8/22/2025 12:25 AM, Akhil P Oommen wrote:
> From: Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>
> 
> Add gpu and gmu nodes for sa8775p chipset. As of now all
> SKUs have the same GPU fmax, so there is no requirement of
> speed bin support.
> 
> Signed-off-by: Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Dmitry,

FYI, I retained your R-b tag.

-Akhil

> ---
>  arch/arm64/boot/dts/qcom/lemans.dtsi | 116 +++++++++++++++++++++++++++++++++++
>  1 file changed, 116 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
> index 8ceb59742a9fc6562b2c38731ddabe3a549f7f35..8eac8d4719db9230105ad93ac22287850b6b007c 100644
> --- a/arch/arm64/boot/dts/qcom/lemans.dtsi
> +++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
> @@ -1097,6 +1097,18 @@ ipcc: mailbox@408000 {
>  			#mbox-cells = <2>;
>  		};
>  
> +		qfprom: efuse@784000 {
> +			compatible = "qcom,sa8775p-qfprom", "qcom,qfprom";
> +			reg = <0x0 0x00784000 0x0 0x2410>;
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +
> +			gpu_speed_bin: gpu_speed_bin@240c {
> +				reg = <0x240c 0x1>;
> +				bits = <0 8>;
> +			};
> +		};
> +
>  		gpi_dma2: dma-controller@800000  {
>  			compatible = "qcom,sa8775p-gpi-dma", "qcom,sm6350-gpi-dma";
>  			reg = <0x0 0x00800000 0x0 0x60000>;
> @@ -4093,6 +4105,110 @@ tcsr: syscon@1fc0000 {
>  			reg = <0x0 0x1fc0000 0x0 0x30000>;
>  		};
>  
> +		gpu: gpu@3d00000 {
> +			compatible = "qcom,adreno-663.0", "qcom,adreno";
> +			reg = <0x0 0x03d00000 0x0 0x40000>,
> +			      <0x0 0x03d9e000 0x0 0x1000>,
> +			      <0x0 0x03d61000 0x0 0x800>;
> +			reg-names = "kgsl_3d0_reg_memory",
> +				    "cx_mem",
> +				    "cx_dbgc";
> +			interrupts = <GIC_SPI 300 IRQ_TYPE_LEVEL_HIGH>;
> +			iommus = <&adreno_smmu 0 0xc00>,
> +				 <&adreno_smmu 1 0xc00>;
> +			operating-points-v2 = <&gpu_opp_table>;
> +			qcom,gmu = <&gmu>;
> +			interconnects = <&gem_noc MASTER_GFX3D QCOM_ICC_TAG_ALWAYS
> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
> +			interconnect-names = "gfx-mem";
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
> +				opp-405000000 {
> +					opp-hz = /bits/ 64 <405000000>;
> +					opp-level = <RPMH_REGULATOR_LEVEL_SVS_L1>;
> +					opp-peak-kBps = <5285156>;
> +					opp-supported-hw = <0x3>;
> +				};
> +
> +				opp-530000000 {
> +					opp-hz = /bits/ 64 <530000000>;
> +					opp-level = <RPMH_REGULATOR_LEVEL_NOM>;
> +					opp-peak-kBps = <12484375>;
> +					opp-supported-hw = <0x2>;
> +				};
> +
> +				opp-676000000 {
> +					opp-hz = /bits/ 64 <676000000>;
> +					opp-level = <RPMH_REGULATOR_LEVEL_NOM>;
> +					opp-peak-kBps = <8171875>;
> +					opp-supported-hw = <0x1>;
> +				};
> +
> +				opp-778000000 {
> +					opp-hz = /bits/ 64 <778000000>;
> +					opp-level = <RPMH_REGULATOR_LEVEL_TURBO>;
> +					opp-peak-kBps = <10687500>;
> +					opp-supported-hw = <0x1>;
> +				};
> +
> +				opp-800000000 {
> +					opp-hz = /bits/ 64 <800000000>;
> +					opp-level = <RPMH_REGULATOR_LEVEL_TURBO_L1>;
> +					opp-peak-kBps = <12484375>;
> +					opp-supported-hw = <0x1>;
> +				};
> +			};
> +		};
> +
> +		gmu: gmu@3d6a000 {
> +			compatible = "qcom,adreno-gmu-663.0", "qcom,adreno-gmu";
> +			reg = <0x0 0x03d6a000 0x0 0x34000>,
> +			      <0x0 0x03de0000 0x0 0x10000>,
> +			      <0x0 0x0b290000 0x0 0x10000>;
> +			reg-names = "gmu", "rscc", "gmu_pdc";
> +			interrupts = <GIC_SPI 304 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 305 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "hfi", "gmu";
> +			clocks = <&gpucc GPU_CC_CX_GMU_CLK>,
> +				 <&gpucc GPU_CC_CXO_CLK>,
> +				 <&gcc GCC_DDRSS_GPU_AXI_CLK>,
> +				 <&gcc GCC_GPU_MEMNOC_GFX_CLK>,
> +				 <&gpucc GPU_CC_AHB_CLK>,
> +				 <&gpucc GPU_CC_HUB_CX_INT_CLK>,
> +				 <&gpucc GPU_CC_HLOS1_VOTE_GPU_SMMU_CLK>;
> +			clock-names = "gmu",
> +				      "cxo",
> +				      "axi",
> +				      "memnoc",
> +				      "ahb",
> +				      "hub",
> +				      "smmu_vote";
> +			power-domains = <&gpucc GPU_CC_CX_GDSC>,
> +					<&gpucc GPU_CC_GX_GDSC>;
> +			power-domain-names = "cx",
> +					     "gx";
> +			iommus = <&adreno_smmu 5 0xc00>;
> +			operating-points-v2 = <&gmu_opp_table>;
> +
> +			gmu_opp_table: opp-table {
> +				compatible = "operating-points-v2";
> +
> +				opp-200000000 {
> +					opp-hz = /bits/ 64 <200000000>;
> +					opp-level = <RPMH_REGULATOR_LEVEL_MIN_SVS>;
> +				};
> +			};
> +		};
> +
>  		gpucc: clock-controller@3d90000 {
>  			compatible = "qcom,sa8775p-gpucc";
>  			reg = <0x0 0x03d90000 0x0 0xa000>;
> 


