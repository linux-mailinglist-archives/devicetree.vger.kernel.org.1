Return-Path: <devicetree+bounces-127541-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EF6A9E5B0A
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 17:13:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 42D7D16CC22
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 16:12:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77018224AE2;
	Thu,  5 Dec 2024 16:11:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gXSUfBje"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD1F922259A
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 16:11:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733415093; cv=none; b=qjUizT0IAQ2ly0imTpAwvnZrIfue4cBVdYUdN9WV2faVQaHdeU4fDF+eIgd2zbuGynqcmhzj6lKEM9kxqkuHOZvpPQCmqQv25sE3C9TygwaI32vT+Wl/zQxIcQvKCkFqZ0hNzNN9ICGTRqBC73vEo21jeXuLMBOKFtGULYY9y5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733415093; c=relaxed/simple;
	bh=t34/NccgNyBNjeZAJqziC/PWnN+9ITlcVAM9mXMKjc0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=D9MrtIO4cNLxNjXIZudfmZ5JET/j/DCjosU1aH2KGHaOvVuDOGkV+zPIEBWbkpmJgpTUpKQiDiBlCfU6LcBYwKAEqQCoYbJ9KvQnpknbwDxMZ2gvrH09CUByZ/2NCKhdD1BoKzggSaY2o8VjlR1qQo7BrZUlue8rwgxmJ9OKrEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gXSUfBje; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B57heuw005920
	for <devicetree@vger.kernel.org>; Thu, 5 Dec 2024 16:11:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hmBOhQUjk10VNhffu0BNiD9R0iUBwJYjeL1ke1eEOg0=; b=gXSUfBje/KKy28O6
	J9TChD4Vx0icvKwHkiQaOtZiRHfcRUG0HeVVE7UFg5OO3ULNAtgMtRT5l9U51m0w
	AptDycZMLUHFxhtKOvDS7OAIRyVbBII+GpeFOnRlcM9OUCwCFH/7f3e4kFEEJRCO
	ma8nm5GEiFcDwKCkOb0bxxPDOFPy6Nz268F9QSlLW++OGR2PNhs3fTvfWdqyNT4R
	IYB8T1De5FGHCdHwHJSCn5mXQq4E/ymLbI34ZyUSAiRPyWB5HYXtQ+2EsBLrOIY2
	nAL/U38SPcoqi47mouDpkQV40YMC4SCNE6XjJyxZ2R4mAPRkgMrlWug4z03olU2A
	lj0f7g==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 439w3er5ka-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 16:11:30 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6d881a3e466so2904326d6.3
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 08:11:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733415090; x=1734019890;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hmBOhQUjk10VNhffu0BNiD9R0iUBwJYjeL1ke1eEOg0=;
        b=tcU83A2aM2kd/Cid8i2whHXPHa3XiI8wgbkORqw5bl05tPGOUP5REdpXc8Tjiib4IP
         rRJdqzjRKbfgRL4UMvAIMjFUBs2AHDKa+vi2jMAyOpUwOnhIm74gylxCUfYwtrBP6x6K
         yNX8FGewwRqGK8Yc0Lw0ShMhix5zyShg0eTkQL+/dFO4Rzq2p972H97k3jeWbarEjsCP
         ednNTTjoAraoz1mIXRwpG3Drs3qLHO9ataQETpyrnHfu/WOoprAcceqbc63vqkVmDcA7
         buLPnC1mXVKUe2oV2gGDa+NFd6ValfWHRZBhvMuuI5xB5Vsn3R5+Y7sPSyGM+e+1A6na
         iLBg==
X-Forwarded-Encrypted: i=1; AJvYcCVQ5RkMQ4iysaaWeqlxyJhuBJ7zP9Y+RwKYQ408SalXLokugrAo5bTZDLhdw0gVdFU8kiQqEtUd6V0C@vger.kernel.org
X-Gm-Message-State: AOJu0YwgVoHyAoBB9Kg7gPldMDT0JE4jInHYY6jbBjsLSE9HnxfXhJVm
	p589SUtGfbm11o/okZ2c5VirfpMI8E6gaYsEIGq8nmufe/4dooibo2QmAq1gnGF8dSrsK0MQgjz
	cZQi+xGj2GpwKJhLMlN30IrnPun+fd3hFmZzy+78zQY41A7YxKVzmlXexAKrR
X-Gm-Gg: ASbGncski4keIkP3wCyUHOCbCbrC2m3jg1X9Y8dYT81V6nO88Ixpw6aBBtsC3snuRo+
	ygWdp7HEPoFD6fB7UHP7urWkBzNVHkGACkyTyWDLD7MS98A0d+LpdVDuYaJD00ZbuCpBqqjAR6V
	Bl1wkrxo/PlIQrPi7RzZsQ7sHqAMhagnOIuMkBpT0C3CZxhtFTr03UuHb3yG3rkHF/VAdKShXPh
	AuUlEBj3O3ReLFyHUmZNZw+H4OAthPtlRkJbBUQtjvVFgYzsx4CR2qg1/7hlLwod/V5o67pcMBh
	eT5YVtIG6BEkbtJktMBtJso7Gg2RsvI=
X-Received: by 2002:a05:620a:172b:b0:7b1:13c9:ad10 with SMTP id af79cd13be357-7b6a6d9f1a4mr746989785a.14.1733415089592;
        Thu, 05 Dec 2024 08:11:29 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHafR/Bbyn83hcr2J2Fmli7ke37DpuhXJ2MZ/0VKgYwZ1ir9udUtCPsN8Hr4v2p5JtuCKJsBw==
X-Received: by 2002:a05:620a:172b:b0:7b1:13c9:ad10 with SMTP id af79cd13be357-7b6a6d9f1a4mr746986085a.14.1733415089096;
        Thu, 05 Dec 2024 08:11:29 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa625e5c764sm112340666b.20.2024.12.05.08.11.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2024 08:11:28 -0800 (PST)
Message-ID: <ca10fa00-fa9f-4e37-a50a-813629f4a2b3@oss.qualcomm.com>
Date: Thu, 5 Dec 2024 17:11:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] arm64: dts: qcom: sc7280: Increase config size to
 256MB for ECAM feature
To: Krishna chaitanya chundru <quic_krichai@quicinc.com>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
        Bjorn Helgaas <bhelgaas@google.com>
Cc: quic_vbadigan@quicinc.com, quic_ramkri@quicinc.com,
        quic_nitegupt@quicinc.com, quic_skananth@quicinc.com,
        quic_vpernami@quicinc.com, quic_mrana@quicinc.com,
        mmareddy@quicinc.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org
References: <20241117-ecam-v1-0-6059faf38d07@quicinc.com>
 <20241117-ecam-v1-1-6059faf38d07@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241117-ecam-v1-1-6059faf38d07@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: MJRpMsR6gjQd-ewEmTKZM6ImPgf6QyvG
X-Proofpoint-ORIG-GUID: MJRpMsR6gjQd-ewEmTKZM6ImPgf6QyvG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 impostorscore=0
 bulkscore=0 mlxscore=0 adultscore=0 priorityscore=1501 mlxlogscore=999
 spamscore=0 malwarescore=0 suspectscore=0 phishscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2412050117

On 16.11.2024 11:00 PM, Krishna chaitanya chundru wrote:
> Increase the configuration size to 256MB as required by the ECAM feature.
> And also move config space, DBI, ELBI, IATU to upper PCIe region and use
> lower PCIe region entierly for BAR region.
> 
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index 3d8410683402..a7e3d3e9d034 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -2196,10 +2196,10 @@ wifi: wifi@17a10040 {
>  		pcie1: pcie@1c08000 {
>  			compatible = "qcom,pcie-sc7280";
>  			reg = <0 0x01c08000 0 0x3000>,
> -			      <0 0x40000000 0 0xf1d>,
> -			      <0 0x40000f20 0 0xa8>,
> -			      <0 0x40001000 0 0x1000>,
> -			      <0 0x40100000 0 0x100000>;
> +			      <4 0x00000000 0 0xf1d>,
> +			      <4 0x00000f20 0 0xa8>,
> +			      <4 0x10000000 0 0x1000>,
> +			      <4 0x00000000 0 0x10000000>;

So this region is far bigger, any reason to use 256MiB specifically?

Konrad
>  
>  			reg-names = "parf", "dbi", "elbi", "atu", "config";
>  			device_type = "pci";
> @@ -2210,8 +2210,8 @@ pcie1: pcie@1c08000 {
>  			#address-cells = <3>;
>  			#size-cells = <2>;
>  
> -			ranges = <0x01000000 0x0 0x00000000 0x0 0x40200000 0x0 0x100000>,
> -				 <0x02000000 0x0 0x40300000 0x0 0x40300000 0x0 0x1fd00000>;
> +			ranges = <0x01000000 0x0 0x00000000 0x0 0x40000000 0x0 0x100000>,
> +				 <0x02000000 0x0 0x40100000 0x0 0x40100000 0x0 0x1ff00000>;
>  
>  			interrupts = <GIC_SPI 307 IRQ_TYPE_LEVEL_HIGH>,
>  				     <GIC_SPI 308 IRQ_TYPE_LEVEL_HIGH>,
> 

