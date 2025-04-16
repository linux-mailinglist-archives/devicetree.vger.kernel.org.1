Return-Path: <devicetree+bounces-167832-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D5CE5A906EE
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 16:49:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B51AD7B06C4
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 14:45:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8974B1E1DF2;
	Wed, 16 Apr 2025 14:46:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TsPIgFGz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16F6A7E110
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 14:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744814796; cv=none; b=kNYTlcGsdSqn50JlQ6VpIGxi3nWlsLYD0vpui4WZXeFOnq0q4wTZwlzNffDug5KBWZqrdNnwJu3Bq/916At3xxK/uypnn/sFlMj6EACkeMCP0Y3uhJweuPMCkCKFGF992gtTPiJ+qGs1ZTTX1mu/vi79J7CbKXt5SsUgLEXNBJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744814796; c=relaxed/simple;
	bh=+SqyWiYgiFVRcrv3hFQViet85UCefWVjmCaHmgVV+Co=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Vm7k/VdPqx8e4Uhp4oZdKzlwWpattwuUYVes8pa/8pVuUc8AV+SWZDoTh4eQ21/aBB1wxs3xpQFRL0fHhm8o0x+AXbkdOXz2IQyK5ntYK4UXh0o+BBNO5pehchNdkB5/VF2JoO1+SCXMW49j2N9EFCVDvV3F/KX/LgHcBuN0cf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TsPIgFGz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53G9mHfa020781
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 14:46:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KA4TV5mKsL2y0RL5Gn3GhHH/7I7jDODOCh7jGAM9fWA=; b=TsPIgFGzCK2LdB+0
	uNNoHOrxXr+Nq+R0Bq7kF0L9pVop/7JzZmSI94l/hhPsEOaskbVIGufxoW2zlMCA
	E0k1KS/JlcuzkxVLn7PTuMrD5Omw6PR9y4MXgLkC5GyorrlZ3uVELgRjkZPO3NkA
	GP7dUELIfCKm99lf12SrZB+/iBLi0rvBZBG8ucBwDXF/1QhRmagOpAVYiuwIaKx7
	tU7aTkVdoWBoYI7rzjqDL4VvMeem0m0LHnF5B9MB4LSqh58noAktvm4XiI98RgSQ
	nGGjgaZTIS7LXtUC44JTg2c368rKHY4+4IaZHZvrfkx+rOYyt+aSJj0AE29GdNQE
	wV2/ww==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yhbpup84-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 14:46:34 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c552802e9fso167277085a.0
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 07:46:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744814792; x=1745419592;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KA4TV5mKsL2y0RL5Gn3GhHH/7I7jDODOCh7jGAM9fWA=;
        b=KPEHfWQRior/p6GoGUpTALn07OVhLN9YUmOZCj3udeb9xjhx0DNz6QcyScP9SwK14T
         D5i3OC/VxI/gLM5E+mgc1+4jYlxes9ka0HDITlVEHifeo12RXTtEmk/uWP7N5h/tkvzo
         6pi0clO7CzwIZ11otjF3M62aDemyN22KP4URYuJTzG5fAs3JdLXa/K0bDBVsNmAAyX/h
         oPv28yXKF5etPYDSAyNfp3F8I74yGEfvvbsM9ckeLzVvfji4GSP5ZQsh79xYkmW6Ib+d
         QYiKQpUlNtg/0ikDKdUZNG6rioJotqs++rpMPLVJ8kwx3CH4bhWqiP6hE1C7b2KSbvP8
         eb8Q==
X-Forwarded-Encrypted: i=1; AJvYcCU/MpECnoOSoaY9jWeV4ltVDFusD0TLZjYxuCAle1cbm9RsDcDlBXsFqh3y2OeYBXJ0j5Zuz/1u+N3M@vger.kernel.org
X-Gm-Message-State: AOJu0YydtjsuAIKlq6SLNuCS3pwqz4os+/yXFAKhtZS7a8zqCkfFNR/Z
	ecGMJfJcpCStAOoSXRKC51dLMByU8uL5OfZi3vHPzg7+357uP0PrOlCB6U90m0sT4JvIM33P/Af
	jn2oCtmq0HFkE2WpfsFeqFBfyrHHdo0StppbUZsrsmD6bD10FU/tT6sej8XBEBA129xC3
X-Gm-Gg: ASbGncsfhEkraDL+bpDKrvSqsCapdy6Xh5ApidckGNZW4KCfTCQxxElROhz+aoCMgtg
	3vQ0NVb4D9HHT3Ropq7ydMuiEPA46f61mSIdakXDlIUgKwVDcoy8Q1VKumdJtdfrCAS9UolSvPc
	aJBgd41ly3vMgaAYtm7AfSGiDTMmUh3Kq+V1HjUN/KVHI47D+AdbEqPacVNRDhu3JFuWIkbw9ZA
	HAYItkfduj2XDBsvpoVZ92SDunbd+FSq309GfBB8RjCLKvL1EfbcVKtptmeem0eGVanG4ycO0HT
	lr9OyyODyDN4GPAiplZK1cLZnGw5LS25tDRJh7O4gHpWa9yOIiDRww+NfoMgM9d6lWI=
X-Received: by 2002:a05:620a:f11:b0:7c3:c9d4:95e3 with SMTP id af79cd13be357-7c91d0432c7mr3067385a.10.1744814792041;
        Wed, 16 Apr 2025 07:46:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG59ukWC3MyfycyjIAvWr+JUl6W0NbfjImB2+ZjakY/8PQ2cNO/ibVV7aEWoEpjqX246S5jbw==
X-Received: by 2002:a05:620a:f11:b0:7c3:c9d4:95e3 with SMTP id af79cd13be357-7c91d0432c7mr3064585a.10.1744814791519;
        Wed, 16 Apr 2025 07:46:31 -0700 (PDT)
Received: from [192.168.65.178] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb3cdf4684sm141728366b.68.2025.04.16.07.46.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Apr 2025 07:46:30 -0700 (PDT)
Message-ID: <c57084c4-189a-484f-af2f-8e4181f547fb@oss.qualcomm.com>
Date: Wed, 16 Apr 2025 16:46:27 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/6] arm64: dts: qcom: qcm2290: Add CAMSS node
To: Loic Poulain <loic.poulain@oss.qualcomm.com>, bryan.odonoghue@linaro.org,
        rfoss@kernel.org, konradybcio@kernel.org, andersson@kernel.org,
        krzk+dt@kernel.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20250416120908.206873-1-loic.poulain@oss.qualcomm.com>
 <20250416120908.206873-6-loic.poulain@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250416120908.206873-6-loic.poulain@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: DZt8wddB7l3FxfINImqjX_gICbH8Tuna
X-Proofpoint-GUID: DZt8wddB7l3FxfINImqjX_gICbH8Tuna
X-Authority-Analysis: v=2.4 cv=I+plRMgg c=1 sm=1 tr=0 ts=67ffc2ca cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=STQ2a8oQ04ts6E9hehUA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-16_04,2025-04-15_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 spamscore=0
 phishscore=0 adultscore=0 priorityscore=1501 mlxscore=0 lowpriorityscore=0
 bulkscore=0 mlxlogscore=999 clxscore=1015 impostorscore=0 malwarescore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504160121

On 4/16/25 2:09 PM, Loic Poulain wrote:
> Add node for the QCM2290 camera subsystem.
> 
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/qcm2290.dtsi | 93 +++++++++++++++++++++++++++
>  1 file changed, 93 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> index f0746123e594..4b81e721e50c 100644
> --- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> @@ -1579,6 +1579,99 @@ adreno_smmu: iommu@59a0000 {
>  			#iommu-cells = <2>;
>  		};
>  
> +		camss: camss@5c52000 {

@5c6e000
(first reg entry)

> +			compatible = "qcom,qcm2290-camss";
> +
> +			reg = <0 0x5c6e000 0 0x1000>,
> +			      <0 0x5c75000 0 0x1000>,
> +			      <0 0x5c52000 0 0x1000>,
> +			      <0 0x5c53000 0 0x1000>,
> +			      <0 0x5c6f000 0 0x4000>,
> +			      <0 0x5c76000 0 0x4000>;
> +			reg-names = "csid0",
> +				    "csid1",
> +				    "csiphy0",
> +				    "csiphy1",
> +				    "vfe0",
> +				    "vfe1";

we also have a pair of TPGs at 0x5c6[68]000 - I think it would be good to
describe them from the get-go

> +
> +			interrupts = <GIC_SPI 210 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 212 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 72 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 73 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 211 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 213 IRQ_TYPE_EDGE_RISING>;

the two TPGs would have IRQs 309 and 310

[...]

> +			interconnects = <&bimc MASTER_APPSS_PROC RPM_ALWAYS_TAG
> +					 &config_noc SLAVE_CAMERA_CFG RPM_ALWAYS_TAG>,

This one should get a RPM_ACTIVE_TAG instead, on both endpoints

Konrad

