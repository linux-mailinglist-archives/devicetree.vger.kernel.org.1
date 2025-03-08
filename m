Return-Path: <devicetree+bounces-155644-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DEACAA57B05
	for <lists+devicetree@lfdr.de>; Sat,  8 Mar 2025 15:33:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1799D16D3D0
	for <lists+devicetree@lfdr.de>; Sat,  8 Mar 2025 14:33:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 969A01D5ADD;
	Sat,  8 Mar 2025 14:33:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RZoN4OB0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B7D913E02A
	for <devicetree@vger.kernel.org>; Sat,  8 Mar 2025 14:33:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741444420; cv=none; b=J6/TgBokIOaZgnQ8f5prFn/hPl8p2jUdvTNhAAx/IYkn7rgquRquDHS7Y6ljgx7lyD6AwYfIlidV2RYL+yZLKC0ZPIgXp2c7aj88vurjz/uM5wdWccgYm3evxQMGFG+BhoFADYNXwbtXED5t4nP4buZKMO8fxFGHLouwrRMqXMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741444420; c=relaxed/simple;
	bh=A8wdDXXUAMx0cPjkhquava877hNK83fGc0RAFxV8+YU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dJHMBtl/2QNdrq+AX7uXm1A0sMPwrbZUH2crFgSV8Q1Pae3DM3j7mrXgsFPmzu8AUmDPUQr98Q6ZLld5L55XgdUMzIR9yi9q5+nsdtVvoXggv4/RcAw8czZHT3SzZRU8JGoJ6KRiBzl7Xl0QKX+St15q47Cxcou89xOd75o3F5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RZoN4OB0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 528AgIbt018524
	for <devicetree@vger.kernel.org>; Sat, 8 Mar 2025 14:33:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ksfv3EfjOI2GzDAtuyZf4+GHBAlf/L+797z5FEAT+XU=; b=RZoN4OB0VGzLP8dn
	1+FixeVlC6fBdYYsZLA3TmXiSeYcWoTj2pLVLKydWvgbLlb8kd4FDjvZ8CioP9aK
	9OOgEVl29SdfwVVoJIpUKp4g2cobhlkH+5eZtwN/nFcKNnTJ7Vj6QwJwZB/oyuG+
	/NixhdV1uJMGvSj8GW614VYdiEpv8F75D/SxjzzD2ljjUUjZrdWxAachRD8sRAxH
	CQ8uNyOv0ISzrvwzueRHNZX1Zj6eZidM8I7h3rk2L3K6FYj7UhAGTwRF21CsNhzX
	WSiceM3IUgRPaG03jIf7ezQw61EVG2D0+I1XxAgOfs2kiFDfZtXeuw1LLtUgHhtj
	jyHswA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 458eyt0pgq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 08 Mar 2025 14:33:37 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6e8f3c21043so7452546d6.1
        for <devicetree@vger.kernel.org>; Sat, 08 Mar 2025 06:33:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741444417; x=1742049217;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ksfv3EfjOI2GzDAtuyZf4+GHBAlf/L+797z5FEAT+XU=;
        b=jAHiwT6CnhStW6A3s65BbxGzzz/YR+zdcJHj0FhrzsXUaRNZoETE0lGUIjbeuM6ccp
         iPRsU/odJIP+NHXBwDgEuBwnoQcmND1lK+KXB6dEB/ErMtidIEuc1XNtm6+tdBfbyyCe
         kOSy4pDWidrY/z4E9V94XM866y8eP1Tzb8LFxnESdLNSRr7IkbZ5s8x0YddHxKGR8ueG
         R41p74q/E25AIwUYhuX/Z1FUE68B+F7zwX/MTlyp6owpmwzRgDS+Ech+QNJt7SwGEYW1
         MVCJHBgoa/3aEX7cEcis++HPf8G3CHMJBjU2bYaKKwImqRZMssbL6qu9hyXH9qWBmhyr
         /6Mw==
X-Forwarded-Encrypted: i=1; AJvYcCWrSKc32Av1x/wWL1iWAfyLk4EIQwxPw3ZIroJ8uD1YN3AvICGFmhRkmjoFGF941MmHq+b6EnkZ1oJH@vger.kernel.org
X-Gm-Message-State: AOJu0YwZ3knFD4Bzn9UtmZlTPtmcjK8FO7LJ7U6KfwXF3aSxxsXl3Z7p
	q04BHSOqqaJ4mfNhCHkgZPNUjE3Vg76Ug+Wx1MQPOzxNq7GnWAw5Ej0ylk9jparIB3XKJZO2C8d
	jA3pxtT4Y3xeo0wOJ9ktvtq5RPbkszcaWfYhpg1dvBpPmqJuSt79svbhZge2/
X-Gm-Gg: ASbGncsUBdFx4rIEy8pLiaLkblUSITfW9LE3LMVKvit9tw4iRiXavC54GZvnBpbrXXs
	1aXSVGCziVar6LRAKNBBWhK4CTCDcgvl7wu7vveUKT9qiTPuBWST1KJDstNp7TPlqIXGT9MgoDs
	X4ku8WCWGqMKEnk4cECmXLM7aMEQzDqkcGOmPKsqO4UkVTlMiL0F/kf2OiVE0M/6w9Kth+wgtlL
	ie0k7UYythzOecLglJVlaL4Oyo56sPo+V3trNPMAbExjY7AaVvSkSYnq7kqEK1ktw9/SM7/kl+5
	Oq2vk5Bhk7r4L+sYbhCu6d3l18VYJnbSJ1245D/ThrqjrpLqSUEpj7QOqApG2mt5eQBYiw==
X-Received: by 2002:a05:622a:88:b0:474:f9a1:ffb8 with SMTP id d75a77b69052e-47666f7bc60mr16609691cf.10.1741444416816;
        Sat, 08 Mar 2025 06:33:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFyEFW0H2hxCyi2WwfzN3+z4dl5ktT+/35092XkyZuW2tTKE2+hX9TWmWLNewQKFMc3jZEcnA==
X-Received: by 2002:a05:622a:88:b0:474:f9a1:ffb8 with SMTP id d75a77b69052e-47666f7bc60mr16609591cf.10.1741444416516;
        Sat, 08 Mar 2025 06:33:36 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac2394399aesm443169766b.30.2025.03.08.06.33.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Mar 2025 06:33:36 -0800 (PST)
Message-ID: <d1fdbbcf-f3dc-4233-b2b8-af5102c1feb1@oss.qualcomm.com>
Date: Sat, 8 Mar 2025 15:33:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/9] phy: qcom: Update description for QCOM based eUSB2
 repeater
To: Melody Olvera <quic_molvera@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20250304-sm8750_usb_master-v2-0-a698a2e68e06@quicinc.com>
 <20250304-sm8750_usb_master-v2-5-a698a2e68e06@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250304-sm8750_usb_master-v2-5-a698a2e68e06@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: Z3_4Pn4jBF1BeILbgmPjo4o4sGGnCHm-
X-Authority-Analysis: v=2.4 cv=CupFcm4D c=1 sm=1 tr=0 ts=67cc5541 cx=c_pps a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=d_B6GAGhsxUSwkCc-B8A:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: Z3_4Pn4jBF1BeILbgmPjo4o4sGGnCHm-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-08_05,2025-03-07_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 clxscore=1015
 suspectscore=0 phishscore=0 adultscore=0 impostorscore=0 malwarescore=0
 bulkscore=0 spamscore=0 mlxlogscore=999 lowpriorityscore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503080109

On 4.03.2025 10:56 PM, Melody Olvera wrote:
> From: Wesley Cheng <quic_wcheng@quicinc.com>
> 
> The eUSB2 repeater that exists in the QCOM PMICs are utilized for several
> different eUSB2 PHY vendors, such as M31 or Synopsys.  Hence, the wording
> needs to be updated to remove associations to a specific vendor.
> 
> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---
>  drivers/phy/qualcomm/Kconfig | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/Kconfig b/drivers/phy/qualcomm/Kconfig
> index 846f8c99547fd5132feaa1e41093b8eab51714f9..f281e3b7f3f20b4a4bb1602be94b8a1b041a876f 100644
> --- a/drivers/phy/qualcomm/Kconfig
> +++ b/drivers/phy/qualcomm/Kconfig
> @@ -135,12 +135,12 @@ config PHY_QCOM_SNPS_EUSB2
>  	  on Qualcomm SOCs.
>  
>  config PHY_QCOM_EUSB2_REPEATER
> -	tristate "Qualcomm SNPS eUSB2 Repeater Driver"
> +	tristate "Qualcomm PMIC eUSB2 Repeater Driver"
>  	depends on OF && (ARCH_QCOM || COMPILE_TEST)
>  	select GENERIC_PHY
>  	help
> -	  Enable support for the USB high-speed SNPS eUSB2 repeater on Qualcomm
> -	  PMICs. The repeater is paired with a Synopsys eUSB2 Phy
> +	  Enable support for the USB high-speed eUSB2 repeater on Qualcomm
> +	  PMICs. The repeater can be paired with a Synopsys or M31 eUSB2 Phy
>  	  on Qualcomm SOCs.

I guess the repeater doesn't really check the vendor of the PHY, i.e. if
someone took a SMB2360 and hooked it up to any other eUSB signal, it would
happily crunch through them..

That said, I'm just spitting out words and this is probably good to inform
the user about the actual real-world usage

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

