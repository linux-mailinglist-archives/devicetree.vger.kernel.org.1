Return-Path: <devicetree+bounces-215446-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C554B5173B
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 14:48:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 836AE4681AC
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 12:48:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F677315D59;
	Wed, 10 Sep 2025 12:48:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eb/iU509"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1135827603B
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 12:48:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757508529; cv=none; b=TPohkQBxzIkF+bRb/ZYbv5TRqKk0YLOh9BQzqYZ1l/Aph8LQju7uI/iKayFgDQhQT1CC8bLq0KJICt9CjZFDNW6Pbl3xSd76ksJ/JQEIEUNqWIV921G0iXoaX0LOD0MCgJf2cv5IMeYye9UZHKm8DlSOISZNHGc1RviOu9nvpgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757508529; c=relaxed/simple;
	bh=Sa5XlTaknz8Q2bGhSjnRD0BypV8mOQK0jc3f3H4in3E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hHik+qy/PCJ98MZ8zPs6ep0iK17av0hvp+U1kjBjdEU+FluK+1M4rwhPr3oxapJy/9KPloA0PmewnE7xUraR2FVmzPtTzgFlkliyDynlRcQbQGeXkbhOwfH1qc8OE4NmxqlbumdGVm/lrTE3Nxg0JnGCUzmxilHQCvaZzSCT5W0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eb/iU509; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ACgbjb013924
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 12:48:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2hLzDCHQ287+835m55C/xeetdRQfkul00hmOXMYpJPE=; b=eb/iU509PSQTrGCB
	gdxgseS4bxmqf6d5tCf6/BZIv7GJhIiXcJ7IDFYc1VPr0rVPsBaZoFxQckC6ChUO
	8xrxv+71kRnFabbee08/GiUHWb5FIYLLyzEJsb0MFYUZmL/r4FXK0l5oRoiQk4UG
	H1gn7e0SKV37BmH6ssECSBzyWkgnA4Z2UBH6GHV6gQ+Ikfx31PEOlQHbWPxlEQMw
	8XveI8/zo+/rblh0B+Fc5HRAwfRRs2qobZBldpVhJIoLzlq4BUlPzNWVRmsoeSs3
	tbCgv858lHWRhFV3vDyJF1UbWr6b3LbJHfM05+5NMoeddvMGdQbXLrqTX8qBRUak
	4apKKw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e8abs2c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 12:48:47 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b601ceb41cso16373511cf.1
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 05:48:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757508526; x=1758113326;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2hLzDCHQ287+835m55C/xeetdRQfkul00hmOXMYpJPE=;
        b=cpbKc645irhRcziuwr9t4B3NNA+sTOYKT3NHTjOcD9CK7yWYA0bQgy9G6KhiezrkqR
         qhqMTF7c/AswLr6X5g9IX4lvwrXKY8a6J0CD04fbRwny/wq3y2dC6bRZ0mahzLcA61He
         rvV5ITEcntxgDNuEJFx4rWqLtxd3U2MAnqURfhKKYm95lc9CBt/CgeW+ChjPTlGUYAnY
         YF+Ozzk8TMmMEAwlgXhRKg3aWiC5bvgVfQEzI8J5TTasnVy/LEA8UHztoVQvFSqVGdn9
         Efx4cANEn/xDmUnfASjx9HkWN8YcxszQX7Kjb7gazalHIVEfhONl9ZwE4hbLIzB8S9lr
         q0gg==
X-Forwarded-Encrypted: i=1; AJvYcCUgdtoQV1gdIKYWq/xdqzdsC2Giuhva6j0+rtZkeOZitGnWoeqK62LiWUdtYzibk/S0faY0L0IioffV@vger.kernel.org
X-Gm-Message-State: AOJu0Yyz03mJ3/bi4Yq7c0H5GTtYSxOB4EEXDbVFvgYFq9pUX7/RpQX9
	ZBjA/IjlqecJ52T2gcXiQp9dM67A83fIejqNya2sufB4fyNFrxnzLWkVQbL0OUQZhkaBje4k4QN
	Jn0X45HzlyZYrhwUsbuSz+uncrjtZH3MFM+j0MHgP63eM8OMEaw/vrFCjRemWoNBh
X-Gm-Gg: ASbGncsFcVFdBq3uUXuZkFZaul4kGX/NdTSdWsQvZ6Mfhv44L+TgxTkHRGlyfwGCXH1
	+fo0U7GEv28YIzn7ei0ZPJ/cw1a/81t1VvlK0I5pMa6cixlp+bfb8t5lrE4klVEonOB7s3BsMjT
	BSSJQZzZLfISMHAsnIUF2Hsc2R2PTjJMmUzIIHHSn7PHNX0NMEwlcmeMdez7QfPLQxfErFwRPqn
	2rO7QObwY+xJf1MAB01T0N5nNNsWPKjGL3oErZmPfjqo1/KyNhLISMiLwuBcbAKjBne5VNtoIhs
	3I1q3VUvPGE53RPLbwsAozO/bjdJCQlQh7+N11UuF+QG2H78s6isDLKwA1+mTmKX5JzR+pjPpPa
	XOewqzZ/ERTU4NINzWLTqxg==
X-Received: by 2002:a05:622a:19a7:b0:4b4:9070:f27e with SMTP id d75a77b69052e-4b5f826059cmr106840801cf.0.1757508525893;
        Wed, 10 Sep 2025 05:48:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFQJJlCuiyW/pcIWNAfk0Cxu+p3Dd7IMOZXLW6sjV+Sj7pqR7+0vV4WzKU91XkLNccK+WxwgQ==
X-Received: by 2002:a05:622a:19a7:b0:4b4:9070:f27e with SMTP id d75a77b69052e-4b5f826059cmr106840241cf.0.1757508524991;
        Wed, 10 Sep 2025 05:48:44 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b0783049ecbsm163687966b.8.2025.09.10.05.48.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Sep 2025 05:48:44 -0700 (PDT)
Message-ID: <9463ba5b-f305-47f4-854e-2ba0dd41bb32@oss.qualcomm.com>
Date: Wed, 10 Sep 2025 14:48:41 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 3/6] arm64: dts: qcom: sa8775p: Add gpu and gmu nodes
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
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
References: <20250910-a663-gpu-support-v6-0-5da15827b249@oss.qualcomm.com>
 <20250910-a663-gpu-support-v6-3-5da15827b249@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250910-a663-gpu-support-v6-3-5da15827b249@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=H7Dbw/Yi c=1 sm=1 tr=0 ts=68c173af cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=KKAkSRfTAAAA:8 a=EGTmXSwiq2C_3XJcCkUA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 36UQKrnLNfC7vJCmug1UCmRC7AoGsyPJ
X-Proofpoint-ORIG-GUID: 36UQKrnLNfC7vJCmug1UCmRC7AoGsyPJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOSBTYWx0ZWRfX6Dq0OV4FhfPS
 vuNyetwQJVIdb4YjFTBpvfvbkpRurBwyDBiHKHXW6L0Ra8ZvGUzk580b82k6TXhr95oA2clsFev
 Sadtnmr4lZoDxmWuXyntyX1snd0NfHyv8Q6+oC4AGB3vSxFfAExzpZyk+HodCKtFyCehPNdzLpH
 zMFxbL3io5cg34HMUB1T1CublZ8p5zeTXImhrY/cAu03y6vbPmEiusooLPeWerGw7qH+Kr0fW2H
 v79WKcOkzyG/ijjPq5w00e+6oNeX/uzJKli+OpPzi/XoxY0CqExS32fW+GO0MWGcMMKO1+HLsTU
 uY6CMa0+BYGp7k2R6gTO9QVmQ8ki2IGtakHhDzu0kHE7AReeijXb1N2SJT+HtVTtobk33dqDvZw
 JtEgfTaa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-10_01,2025-09-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 impostorscore=0 adultscore=0 phishscore=0
 clxscore=1015 suspectscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060039

On 9/10/25 1:25 PM, Akhil P Oommen wrote:
> From: Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>
> 
> Add gpu and gmu nodes for sa8775p chipset. Also, add the speedbin
> qfprom node and wire it up with GPU node.
> 
> Signed-off-by: Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

[...]

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

Akhil mentioned offline that having this clock under the GMU node
is a hw team recommendation that's rather platform-specific

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

