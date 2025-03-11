Return-Path: <devicetree+bounces-156459-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D9274A5BCA6
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 10:49:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E0D4818923BB
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 09:49:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63A3422B5A8;
	Tue, 11 Mar 2025 09:49:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iqbfHnBv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE7211E2606
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 09:49:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741686544; cv=none; b=Hu5INWGeOUKsVTLOUTdvF2zz5zAjlDd7Dny+MCS/EOBOfcvp48oftfjcezT+isvZ2FBCbOZmpu0EQaigJk6I+uq/nawrzotIpG2+0XUc5Bz53hm+TqEkFO2m2a+7aw8idrEDk561kceuNNSJt9JFvLOG6nIzgpYu1+zTlIosrPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741686544; c=relaxed/simple;
	bh=43h0eHGARvknv1pTfOp5TQ4caL7mFrHowAOiH8OPbc8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aiLGRer/HZX60iqsJQjUAJdlD2kxpM1jJ1FrQE2RmvxQmWeRTxFOPW2+ocb9PxdGvpkz1ijP5F+h1jAIf7lLebpf5KSRHTkmJPm5uMRtv7IU5hhS2fbwYJBDnAtT4DW2clmFENiRyMb4/0MBsoIr+t8EBoBSbE+cyHOpJH8RB+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iqbfHnBv; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52B7UhNb005321
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 09:49:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rACPdSRNkmLMa1e1/sG0V0Fc6/zQY9hUNWp6hfkkYkc=; b=iqbfHnBvvs3iKmg3
	5W3K/kuvep5q3Srax8A+jcHFh0yuFAdBS/jm4SZg34dyfDbPEHxId1f8IshI/7lG
	rWTPwSCMZdCFEAu+/8FYDDJiFjqpcdfAYVl3/sRHaB2bNDeo6ddPYpw2A+73Q1sG
	UDUIGlMNwLsqg4dyqLg+Woss3dMJ8GAaaBKSBFq9nvOGXa05HV1DN+JDeBBlIeGW
	wdpcYjNKrffIBJXoesNFXTaKRiUqbuL6HUm3aEC3bYNqQZhtUyC8Dik3pFNFRXRB
	FaHM48cbXs25xCsLiQQSg3cQ0Q6f1kAqlxjMD4pz7NwyjgVfLcT9ZChzb/0UXfs3
	UEazuQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 458f6ag3ab-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 09:49:01 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-476695e930bso8346981cf.2
        for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 02:49:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741686540; x=1742291340;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rACPdSRNkmLMa1e1/sG0V0Fc6/zQY9hUNWp6hfkkYkc=;
        b=uYBIuNT493348ZwCFFJaWY/w57Fg9mb83N7AZLvMGi7B4L7YBu6WynJU9PjKDCIAUW
         KnInkMe1rM5tgw4Mde57UUgAPM1uMeONLtQQ8l3ZYs/mtT/Nz/XzohoZaPanvLm8k8f8
         31YU/PYPvPHfxwfJkY8lzEiL7yZk+omDSPmS/ivKNhksjOiWErVxSr2I16e1JxXeLSDR
         uaOyjcUtnliTXrmhNh1EQ9ksVt4uvbKctu9QQ9S5obHl5unQLFpiQgVIDrv3lDjVABdf
         mmIyFG0DXIA//EZj8tcyA9ultlZZy/Emq7IF5iU7QTi7XHzQxJafHeSZR1YDWEyqeWI0
         Crmg==
X-Forwarded-Encrypted: i=1; AJvYcCXV8uf8+VmFA+ql2cFrZsqNESSXqnpzGTjjkMjgxMvtTtTxEgds2h4NCRGeNR8BsG4jd61u9iZGxVno@vger.kernel.org
X-Gm-Message-State: AOJu0YwnqgtIjXTpDZHg2TEbZIrFXPmGnO+JfInK1ERWSkn6W65Wk5TN
	mSpkONaz1PCkH1PKpVzwZnqpbfpbqEnbaSkHHRStWDeAVQ7tJxuZAh/vdjBOObJOB7i4tXXsIQg
	t72aJH8svZfcQb5qlaUzTPaa6SolMMOKP1Jb3C1VMecDcNQQVFN3It/xY0Bh6
X-Gm-Gg: ASbGncsT15dv9xtjOd9dqQcC3drWrOKGxGYLQNGtpgiC+uNSarVCDEeXLf66SrUZ2Q5
	2bFbl6/aigHglcTA95OA64kSuF6P248dPakEK/WwLGlRz3+tr+ZK40lfMjtIqFaVMV5CoSZQ32m
	6dyNilYfUqB9DgzusXhpO9sQGvgS5DaafvNsPJh9wvWBW7DvgQYOIYbLrFG6ZeR0ny8E+Ugroek
	TDuGE2UL947Ooq4ZGaIT+LXBFQ/ej2rmQXlFHT6WLTdFSnv5HAsAvmqWZCsgsIk7Kp6pUbF3Ly+
	W1cz4R0dKjEksua0ugnYnNf0hCMgH9GeEipAan/sRN/4aVGVHFnXPJ/eHJGbhQqQ4gDxqg==
X-Received: by 2002:a05:6214:5298:b0:6e8:ef41:a0eb with SMTP id 6a1803df08f44-6ea3a6ab16cmr14275646d6.11.1741686540316;
        Tue, 11 Mar 2025 02:49:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHRkM5w4WJD3Nr9ntbEIn7Wwi9dnArODouwKFMmnpnNNkFao0uXEHwZKLKOV5etn/T2WBM7HA==
X-Received: by 2002:a05:6214:5298:b0:6e8:ef41:a0eb with SMTP id 6a1803df08f44-6ea3a6ab16cmr14275466d6.11.1741686539894;
        Tue, 11 Mar 2025 02:48:59 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac2a6c9a537sm257191266b.71.2025.03.11.02.48.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Mar 2025 02:48:59 -0700 (PDT)
Message-ID: <ccb736ac-d629-4fd4-ba02-a42e4d4daaa2@oss.qualcomm.com>
Date: Tue, 11 Mar 2025 10:48:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/4] arm64: dts: qcom: qcs615: enable pcie
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>, bhelgaas@google.com,
        lpieralisi@kernel.org, kw@linux.com, manivannan.sadhasivam@linaro.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, dmitry.baryshkov@linaro.org,
        neil.armstrong@linaro.org, abel.vesa@linaro.org
Cc: quic_qianyu@quicinc.com, quic_krichai@quicinc.com, johan+linaro@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
References: <20250310065613.151598-1-quic_ziyuzhan@quicinc.com>
 <20250310065613.151598-3-quic_ziyuzhan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250310065613.151598-3-quic_ziyuzhan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=WsDRMcfv c=1 sm=1 tr=0 ts=67d0070d cx=c_pps a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=6X6hr80gjlHG-dsRnmcA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: A1vKHRsvfIswKard_aG92jZaqeaVCetE
X-Proofpoint-ORIG-GUID: A1vKHRsvfIswKard_aG92jZaqeaVCetE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-11_01,2025-03-11_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 priorityscore=1501 bulkscore=0 adultscore=0
 impostorscore=0 phishscore=0 mlxscore=0 mlxlogscore=999 clxscore=1015
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503110066

On 3/10/25 7:56 AM, Ziyue Zhang wrote:
> From: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> 
> Add configurations in devicetree for PCIe0, including registers, clocks,
> interrupts and phy setting sequence.
> 
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615.dtsi | 142 +++++++++++++++++++++++++++
>  1 file changed, 142 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> index f4abfad474ea..282072084435 100644
> --- a/arch/arm64/boot/dts/qcom/qcs615.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> @@ -1001,6 +1001,148 @@ mmss_noc: interconnect@1740000 {
>  			qcom,bcm-voters = <&apps_bcm_voter>;
>  		};
>  
> +	pcie: pcie@1c08000 {

Please set your tab size to 8

> +		device_type = "pci";
> +		compatible = "qcom,pcie-sm8550", "qcom,qcs615-pcie";

This is saying "this device is a SM8550 PCIe controller, which is
compatible with QCS615's PCIe controller - should be the other way
around.. Or according to the bindings you added in patch 1, this
should just be "qcom,qcs615-pcie"

> +		reg = <0x0 0x01c08000 0x0 0x3000>,
> +		      <0x0 0x40000000 0x0 0xf1d>,
> +		      <0x0 0x40000f20 0x0 0xa8>,
> +		      <0x0 0x40001000 0x0 0x1000>,
> +		      <0x0 0x40100000 0x0 0x100000>,
> +		      <0x0 0x01c0b000 0x0 0x1000>;

[...]

> +		phys = <&pcie_phy>;
> +		phy-names = "pciephy";
> +
> +		operating-points-v2 = <&pcie_opp_table>;
> +
> +		status = "disabled";
> +		pcie_opp_table: opp-table {

Please add a newline before the subnode

Konrad

