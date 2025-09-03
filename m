Return-Path: <devicetree+bounces-212174-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B150B41EE4
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 14:26:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1277B17842F
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 12:26:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 441422FD1BB;
	Wed,  3 Sep 2025 12:26:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OET5gcK9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE5F72F744D
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 12:26:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756902399; cv=none; b=IzbsUB/NSAT44O34W1JWnlwypVW/7BHSZoaIOF5QqIJ8N/3wt3YfR8qLkrsaUnDav0BC5moL8EuiYyqifb8tgnuJWRA/IHQw20UQSOUWyIiC6gx5WyFSqmGsD+XV3dTODsBjm6nbsVh1UC5aEqDyeY1Bh/IvXh98pqulxXTG5LA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756902399; c=relaxed/simple;
	bh=b8CwC+ZVv3rbBZohA65SgcchPi198rhsr2eWMhbzutQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=irhVy/fv7gfGmoax5KD+608Xiw6kAz9F2XcLX8+DHeHAUdnWJzZfoPUlAcvXt7GrPg052pElTzRBodJtNmk97DxtRQNg4W/gSn1PxmVfpAILSeVFNjc2hTzpBUxSneCfKmr5uUI9ct+GiUl+dd8jRXU8SwhR96YBEhOx27Sfg5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OET5gcK9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583Ba6fG024967
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 12:26:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OZ5GA5CDWjuk3FRi9xYTdj/A11GKAj2IoG13+xINrgA=; b=OET5gcK9yQVtfbjC
	9ljJgz5MHFvR8cDDUKF4gKMQjo/87UjlkPo4MzrVYQBaCpXIOlnzzwrBOMM/qprw
	r0jq66Rb1hI1GDKe282LJq6b0eXL4RvhxQlud9P94peY7coqbctEHF/WVByOjkb6
	Cfyzk6f/0mM7JGfbEceUa4YqYhcMXq/KUHJBTMWaJSkmvzHUlRMBy+AAfFoQwtmk
	CRj0cyYfM2NgF8iWcrIYdDtzcx83dkf9IicWVpUeio+ac/nJPVvCsCBTxbScn7kM
	vkJ5vgKDqqfOR/57NddXAKpZtCJk4UlBDoRpdSrCPgZ2p08cljodg2jeyt0Yed0d
	NV2wmA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48xmxj054v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 12:26:36 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b331150323so9929141cf.0
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 05:26:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756902396; x=1757507196;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OZ5GA5CDWjuk3FRi9xYTdj/A11GKAj2IoG13+xINrgA=;
        b=bRPS7TrHONjjc/Txn4MtnoftyZC/HwkPER8AkOsyp+YPKvo/db4cgNwLEosJ+oI4CG
         Y/e3d86ijfm7xrPUOeiK9xTuQ+BxoyWZ5Kg8HrAVa9zSyzWu7e2ftylHOYma9TStVvUj
         eOKxQxt8uCig6Q1sTCwiRrLNguxF7oSUdNruVUbHHyuPWzTYNnIeUswGZHlgbUu0pS8k
         /mBORyI8kTvFwa2CXd7qifsaz59WOplF1/vTJGOL1ufja6T9t8PRcHlwKtJys7rHvGzQ
         Bu3cwFu7hLH59IhwiRSF19LSQTPYBSvXcQ5WTLjM5H8YyZbhOnKeHgEeq0eH3APsyDqQ
         5GxA==
X-Forwarded-Encrypted: i=1; AJvYcCVFsukuOCs0SH4VTzNR8VHSZI8ZpKeKN0grYKVTQK7I897mlqIelKp2GxXQq5ktf6wAXivT9dYJF2Xn@vger.kernel.org
X-Gm-Message-State: AOJu0Yyv55O6GHNNIDdpQqffswobF2imYmjLjVpmSt9OKfLp/M7ZJ6MD
	iC7DuERzjTZ9pjZ8eZGc5TfLRLwICR3W3rR7aTdw34SL3HP/JxLOUTtzRKpYydrnzecXGYAjDrK
	1naUQvahK15+Wg5yo1PqoYokT35HHQBRKSoEcQnq40FdEedJbGAkjvvcRoy5R5p0H
X-Gm-Gg: ASbGnctReuksFt4FyNY1rCOwWDRODpvSIP9EaXyf8xLyf/fKBOR882ZUCAD1HDxyTbb
	7GwoZFbgaODHUKRid6eMxegG6c4pR1WrMqy5uBThESREvDkMQ57SnV5TgkP00/DnSo88Uuxjwj/
	Rws/KJnbBZtgzfvlRvR5Z/LpwrPegFcAE8ymChyYpF+mLkY55ByloDGVxm7Jd2hUFQzSuaf1r7A
	N5qxtEfMdqOrrD3drxI6LI8lZ1LHHUktxokJc+nlZjcmcccQjU1PprmQT0HQHl2j04XuWRK3zbO
	35h0EWGJIA2KTPpjSDCZnabrrpiMnkR6cQWFoX5wH9i/tAuVC1c5gWcmUZzEJxieoLZGT8blFkk
	TsEcR1GsmAuMCR0f6uDag0Q==
X-Received: by 2002:a05:622a:3c8:b0:4ab:6e68:1186 with SMTP id d75a77b69052e-4b30e906341mr139109931cf.2.1756902395574;
        Wed, 03 Sep 2025 05:26:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHFEC6NgbGYXkQKGTNQ8MIs7PdgRHgCWkfSpaRZJd1PT0vRXtJCGBVR5vOdjk5gYSmc6YfsbA==
X-Received: by 2002:a05:622a:3c8:b0:4ab:6e68:1186 with SMTP id d75a77b69052e-4b30e906341mr139109331cf.2.1756902394836;
        Wed, 03 Sep 2025 05:26:34 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b046f888b95sm82236666b.34.2025.09.03.05.26.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Sep 2025 05:26:34 -0700 (PDT)
Message-ID: <f11b778d-eba1-4712-81c7-b83f2cb38b46@oss.qualcomm.com>
Date: Wed, 3 Sep 2025 14:26:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/6] arm64: dts: qcom: sa8775p: Add gpu and gmu nodes
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
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
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: Gaurav Kohli <quic_gkohli@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>
References: <20250822-a663-gpu-support-v4-0-97d26bb2144e@oss.qualcomm.com>
 <20250822-a663-gpu-support-v4-3-97d26bb2144e@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250822-a663-gpu-support-v4-3-97d26bb2144e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTAzMDExNyBTYWx0ZWRfX39P0+6+nKCJ8
 IK/BLHds/DyiXCra0YQVZCo5FEdFz/nQaWpFx5IBWIvduJTD2KBMkdlQ659Mj8WwkgDsuyXbche
 OOsadlbR9a6qtYytRybU+84sAUbxeeVtMU99J7e95q+SV//cD5qB94rx16m7y/a38FAnCjUsaVz
 Q9rMrgGXG0ZkyX1P4kyM0NStcMMKVY6N7JOaH1PRRDWonYEJHnodreCD24lgdLNmrhZ1SItnULh
 omqd1qXDN5FWD9nR6YgTct9WJOuhS+EDn+niRhRnSZDhsZh/HNoX/+HjJKIr71HPDs73bTup/A8
 R6qqxXmMu7tDqW+0k+kxOfN+YcP5tEqTmA6uC1aE0Krq3P7cfMI2TNSe0P9Xt3NR8TAtS39Am0B
 CZvWmMb/
X-Authority-Analysis: v=2.4 cv=a5cw9VSF c=1 sm=1 tr=0 ts=68b833fd cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=KKAkSRfTAAAA:8 a=-ORaCNUFwIs1vMjdVOkA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 6qfzIL8iYMcboYtxxi8ojiwULwQRyCBF
X-Proofpoint-ORIG-GUID: 6qfzIL8iYMcboYtxxi8ojiwULwQRyCBF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_06,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 clxscore=1015 bulkscore=0 priorityscore=1501
 phishscore=0 impostorscore=0 adultscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509030117

On 8/21/25 8:55 PM, Akhil P Oommen wrote:
> From: Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>
> 
> Add gpu and gmu nodes for sa8775p chipset. As of now all
> SKUs have the same GPU fmax, so there is no requirement of
> speed bin support.
> 
> Signed-off-by: Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
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

len = 0x3000

[...]

> +		gmu: gmu@3d6a000 {
> +			compatible = "qcom,adreno-gmu-663.0", "qcom,adreno-gmu";
> +			reg = <0x0 0x03d6a000 0x0 0x34000>,

This bleeds into GPU_CC, len should be 0x26000

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

This clock only belongs in the SMMU node

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

500 MHz @ RPMH_REGULATOR_LEVEL_SVS, 200 isn't even present in the clock driver

Konrad

