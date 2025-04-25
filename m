Return-Path: <devicetree+bounces-170731-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2886DA9C34F
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 11:24:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4243A1BA361B
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 09:25:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 403132356CD;
	Fri, 25 Apr 2025 09:24:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fb0THmZo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95F8F17AE1D
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 09:24:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745573092; cv=none; b=r3MajVju5z2fJQ0t12aDCY8g2nfP+ClZmKWNFz9rxp9/T6R6+eSbVnV9jal4jMyuurDm0YwctAASCJR/HxYkPFZlchO3WolGxXsSaYFa9otedrZz9/xX/dvmi3gBctX6cpKnzdpSkCTXtvYfCJIqrxYYplAs1FBdKXbEt579FJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745573092; c=relaxed/simple;
	bh=Yc4BwXcDlBm1F9/eAPkhhmBz3Iwfa2QIOUzglIaGc98=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sWz3obmNLUiyf7MOF2ahIWDbxxwjnOsSOwTEFmH9Syj4HXtblXPxq7yj5aiBbF+m9rZOulE4CMkDk3FGbqoJzJeGmckJOOAmV7sy5u93sXGzJguG/DbinUtsPIgoo9AmNqR6WFGKRZGbEWVVpiL2ooRh9MZryZET7u1K4yYxKOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fb0THmZo; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53P8TAtZ025097
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 09:24:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6TOVSLiHysmlmuAA0RHIHbn82IoarWugi9dE7AH6+e8=; b=fb0THmZotVS5nHV8
	0N130J808EBa/0W5Gm8f/hAMIKSxI3bAFiZRZf1zTqz4bmTqelFz8wJU6IfKsbhY
	o9W68ieDv/RsIWpNZ3rbMbjrPlpx87bUbKFMgicGJ4qWnO/9c0EwtyrLJZ8mM7uQ
	7czMfxp8TYtvAS346utC/03lQkvESDO7ytrbF9Qcp5VmBAsWawLAIhb1SpQDmpDt
	WMOae9a6xYXqjWHVMGCZsrloG5kbhOAcMfMQGzjGJaqPQ5CyqbEeih9qObRyiPYK
	DNUfDtC2VAkSuNq/t+LCIT2moIv37QCB/2yvR7xd7JAWlDe5ytyPedxsp0a/M+Z1
	7TfnZg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh3rdkt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 09:24:49 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-47ae9ed8511so3637311cf.3
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 02:24:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745573088; x=1746177888;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6TOVSLiHysmlmuAA0RHIHbn82IoarWugi9dE7AH6+e8=;
        b=ja99HE9fExZ1EwweTc69K/1AbpkuSM9H1L1xdateqtLUW734b5nCuBqxKyx7jA7yBq
         HnL4XgraOLPpSPJy7bcG7L6wJv+F4QNcYCtPH2mHEfDfrP+pksmIpQe+iQGw9HShhidH
         WgSbTh8kYtGCF7JKZza0umJLciG8wdYAoONKFQpq0TC3k3Iai6kCCA1qAV6qoiU+ZEPa
         jlKOmS9/BmeCoJylvyw3jj8zHYKMiRKtJkbwDdFcXdJR1yMCYZhCI/OlG4Clx3ESBEyk
         naMAaDW8zJEc/n3ZYyb+dsE3TOPl1D/TCtOD7j33FUvSyvTMfZ4q4v2rfOBMYjbrYU8B
         HWFQ==
X-Forwarded-Encrypted: i=1; AJvYcCUeSOzmjviuEtLk6FpY9fO6hKsl1eE1/V+VkY61mi1O688TIXwjG5C25eYcKG/Pj42imNdKnJmqFS5D@vger.kernel.org
X-Gm-Message-State: AOJu0YxTBz6EYzM05gwzS9XtdfpbDOFsIn1hhRIqiMG4C4/IYDw4c8aH
	+plGk/FeuvP6KFQLVXpuv3/KB2fvaEavhNRflnTFwdFSCvfAi+2TcqRf7NS8cLPCu14qbyDVeT2
	6UA9Pu0bHK7oiSAJ9o5UHBJPF0k7lagkkvEb+7Q5Tbmx6UVlSeqEGg/QvU3Ha
X-Gm-Gg: ASbGncs4L7b+K5KZEC4FKF9Qg4ighziaLJEYyXd2SWBzGkijyAdBk/RaxzI6e9kHOC8
	ZiycBEw4/YtUCNe4pNWBSnlFiCpeIFXQcTR/obIdE5BbMtCZNJOOELtcuUeJH6tC9Vx9WiXbDmM
	Xdw04JYzI1QvK3F0zFDbvmkVRmH3kvR0U6RYnNlyUwwVCgMrVAoxx33/6v0z/eTi8bI/KgGU35W
	JbEChfTQtqlSOqjJe0FZBNn+kh7FOr2MRI+ecGOA/YqphIkfYju2mTAOchw9DQ1sIdFyHL3Yhgg
	ZxL9QfKSH6Km2Dy368uEnUw5LZM=
X-Received: by 2002:a05:622a:1a28:b0:472:1de1:bc59 with SMTP id d75a77b69052e-4801c796973mr7967921cf.6.1745573088533;
        Fri, 25 Apr 2025 02:24:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IECDV4NjfiCTRpDdBppQk7mkiFY9COAykAendzS1IIWlk9k/YXc3xDR978i701ANPjxYOXj4Q==
X-Received: by 2002:a05:622a:1a28:b0:472:1de1:bc59 with SMTP id d75a77b69052e-4801c796973mr7967881cf.6.1745573088207;
        Fri, 25 Apr 2025 02:24:48 -0700 (PDT)
Received: from [192.168.65.5] ([78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6edb0becsm102529766b.167.2025.04.25.02.24.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Apr 2025 02:24:47 -0700 (PDT)
Message-ID: <e83b58ea-0124-4619-82a5-35134dc0a935@oss.qualcomm.com>
Date: Fri, 25 Apr 2025 11:24:41 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sm8750: Add Soundwire nodes
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250424-sm8750-audio-part-2-v1-0-50133a0ec35f@linaro.org>
 <20250424-sm8750-audio-part-2-v1-1-50133a0ec35f@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250424-sm8750-audio-part-2-v1-1-50133a0ec35f@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 7esGoHLhHJ2lhkdQzvQEPZQnEA-g7xDv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI1MDA2NyBTYWx0ZWRfX6zywYebKa04x 8EghchWEnq4L2VrueFPfCNOgCNssEM21B2n9FOEw0dzRFGew1dQmqsOc73uMwtCuuH3zrQYm416 YLloHQpoyEI+eH1+chHQhvKXc0KOT4YH7M0tWr0yUtiIxAMnL6zkr8G59x4J97SGeytpu6PcxmF
 e4x88JGILhJ4VkKRdi3/CcsCQ5aAJqlb2phzLtN/5T71m5PvTFBR0usgBTMy9jX1iHumPHwn5BI PCW/mFZd7IUZYLA3nncNMNN7egM/xjEfkeRhFMdyv/bIvJrSuEuafuyuv3BAN3hFh/ZitCmScd4 DDZ2cny7SVYDuWIKExzj/n0OSCOpjwxSlq+pz7jJnN3P6HMmzVqelMGsUjvDjdeSBMI5NukUWP0
 Vs0tlg1csh6G8sjP57OAN8XdPs/IlbeCgRZLNhxIoRfVZj8hjFlWt454BIBtICGltFcuZ+Sl
X-Authority-Analysis: v=2.4 cv=ELgG00ZC c=1 sm=1 tr=0 ts=680b54e1 cx=c_pps a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=qkmjNN0peoRQDp3El6UA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 7esGoHLhHJ2lhkdQzvQEPZQnEA-g7xDv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_02,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 adultscore=0
 malwarescore=0 clxscore=1015 bulkscore=0 phishscore=0 spamscore=0
 mlxscore=0 lowpriorityscore=0 priorityscore=1501 suspectscore=0
 mlxlogscore=762 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504250067

On 4/24/25 11:40 AM, Krzysztof Kozlowski wrote:
> Add Soundwire controllers on SM8750, fully compatible with earlier
> SM8650 generation.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8750.dtsi | 122 +++++++++++++++++++++++++++++++++++
>  1 file changed, 122 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> index 149d2ed17641a085d510f3a8eab5a96304787f0c..1e7aa25c675e76ce6aa571e04d7117b8c2ab25f8 100644
> --- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> @@ -2257,6 +2257,36 @@ lpass_wsa2macro: codec@6aa0000 {
>  			#sound-dai-cells = <1>;
>  		};
>  
> +		swr3: soundwire@6ab0000 {
> +			compatible = "qcom,soundwire-v2.0.0";

They're v2.1.0, same on 8650, there's a number of new registers

[...]


> +		swr2: soundwire@7630000 {
> +			compatible = "qcom,soundwire-v2.0.0";
> +			reg = <0 0x07630000 0 0x10000>;
> +			interrupts = <GIC_SPI 761 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 785 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "core", "wakeup";
> +			clocks = <&lpass_txmacro>;
> +			clock-names = "iface";
> +			label = "TX";
> +
> +			pinctrl-0 = <&tx_swr_active>;
> +			pinctrl-names = "default";
> +
> +			qcom,din-ports = <4>;
> +			qcom,dout-ports = <0>;

There's 1 OUT port on this instance

otherwise (modulo the settings I don't have a reference for)

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

