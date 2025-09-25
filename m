Return-Path: <devicetree+bounces-221342-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 89138B9EA87
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 12:31:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 079912A1E78
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 10:31:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD61D2EBBA6;
	Thu, 25 Sep 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="g9ucXa8H"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98D502EA74B
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 10:29:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758796193; cv=none; b=HPDgoNbWCiU3NW0+vfyGWt5h+HVoVIY7vC+FpvoY01NkCzvu9tCARMWnbhsDq4P5/Zt61QjJk4YlR951PnXUODBTwe1zwEZ5YEKNDu7i8NOQkBmGxH84rU1zxQQFcrtLDy9Czw4F8rSxmcOz34hWcFcos/3iB4ajAEtosjRYl5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758796193; c=relaxed/simple;
	bh=TOVIvii7Y+/fHksY8cfxpnbQC5EaoegawZX7SCCmyNo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=C/2Ly2eN0k1oUzJz49Upq/iDTWLhAUppAuS+U/WTMwXK2IwBhIuEAdqiHuyyoWiQMJiQ53QlLCuAeG/H4dxcgOrVbpzg8js7ep5M/G90PXs0JZkHd9HFB3vjvQ+jLg6lJYTx6n+DQxQ4A6T+BITlRyhnPXOpTX67cMuDAeBs0qY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=g9ucXa8H; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58PA7mvU029604
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 10:29:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cINWb/EfZrcBMNf1EJaMOvrua9MemQAuZDGKwXABKpw=; b=g9ucXa8HnZw6bZ34
	sK5zT73mIIHQA3oqKyVJAZeoT3FLVm3LEItrDrAAkwOXQI8lOQw1LxNOHpfma9WT
	7ol4ls6Ujo3AwRQP4+N0k6sRb6zuwtKhCry1VWFPpj3/VyScJBLeifSqKgrLBxXP
	5iZeBP9ahXP/mhVKoEegf2p9owfI2yMsQOqqkGQFpEQStUMb0KtnjKWixzZBtYcU
	QrldhIG20eQhLC4XK8rtHOs2AfLXflktBSgURwyqvOgjURkjVrc1N2rWq9RRAfre
	0SLpfuqbvRmg9HSRISbT8i/pOd5ro10hB/cNVkhh5vhN+2vO2pe4JdPGq2W+DnlT
	0Im4iQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499n1fqmhe-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 10:29:50 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-7cc365ab519so2029896d6.1
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 03:29:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758796189; x=1759400989;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cINWb/EfZrcBMNf1EJaMOvrua9MemQAuZDGKwXABKpw=;
        b=dLQ1obwBLhHe1xx/dy7On6+mo0RdLSTWZMDHB+Ci8m9WeckoPuiOSRboz1knbZvcfW
         Ri1Kr8JDmbAQjdscaYtbS/BN2OU3BEzLtskzBXdNkDGhr//VJ5+h8Ebb66fnnuXtCyk8
         AEm4N4uX4c7vUMmFhz0lD/IfNc9SYNdU+0EVzOGv6OWCc09LuJU+RaopRXWH82Qoofef
         rhMjxmRxIXSIPu9O5sE+s5NW7mcM3Bi/9dvbElhfkH0F9FoCS5YvUOYigFSmf9UTjq0E
         Y7Vr80PDAgoXDgnL04MeVVShW+T+RhguYuefD6Jwb4WW9wWb+xWl42QhoSS80L/uPkgb
         NgaA==
X-Forwarded-Encrypted: i=1; AJvYcCWE32wVUunCOC44UpDIlUD5+rzeQ17ZA9iY7bD5hpBMV7ttGnrxuAikoxwZub0fJsVwpOvBivWry7CD@vger.kernel.org
X-Gm-Message-State: AOJu0YzDSmJiSXCGmonplC538PNHwEKjanPrPxGDIC6WeObNye1iak8T
	uY3EmkpSny1TVafbpMKZ6QASwC7rtKbYSESZtwa/OjCXFiFgrQcFeS38OsPF+hQvu7FvRg0eTot
	t9FQQxCuu8zzH82gmqMg1MkWGrL4x5APR6NS6YltRTQFoL7hR62LhZkNKJLpAu9ym
X-Gm-Gg: ASbGnctqk7EcVFMtDOCocuXxjHJi9TyMZat4lid3H/1v/vvmSpn4O01UK2ixOTVk2Xu
	mRpzT0lJuOcNyHPFRe1EWwbiRAFqcB5v8ti2i5igrUNeuZPVrVsJ55swkU4P46DFOVfO3lfrG3K
	tERMwxH7CzPjDVaD6GKUf96dSGB0mkKmxOlyLMPO6rUKPshKBYWVqPkqRHxJU2jNAMrEIuCP6N/
	IsQDr/vb/lrHossBB9N7moYYiArSwGl8pM8LQB7G1yJyY+XFpUTvh8qtAaxBB+ORQql/iO4QITo
	z0ggFZzRWfKRVHbAoNcqPpqzyaTNVF+Dlm3i+FGid2GNG4ByM0m+HfG3l+SmM8m9QSYrCYoacL4
	GKpWOWM97uIQseSBDwyl5vw==
X-Received: by 2002:ad4:4ea1:0:b0:783:fd50:70d1 with SMTP id 6a1803df08f44-7fc4bd855a0mr28410406d6.7.1758796189129;
        Thu, 25 Sep 2025 03:29:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFfUZ1axDjavEiotUBgfUS5+hpdRhC2E54662lQVRJPJyv56Bjey2md5A38GS1xCzUTKL5AXA==
X-Received: by 2002:ad4:4ea1:0:b0:783:fd50:70d1 with SMTP id 6a1803df08f44-7fc4bd855a0mr28410116d6.7.1758796188555;
        Thu, 25 Sep 2025 03:29:48 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-634a3ae2ff1sm988287a12.26.2025.09.25.03.29.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 03:29:47 -0700 (PDT)
Message-ID: <fec06b27-637a-4923-b07d-1f0a1fdf4922@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 12:29:45 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/24] arm64: dts: qcom: glymur: Enable pdp0 mailbox
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-6-24b601bbecc0@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250925-v3_glymur_introduction-v1-6-24b601bbecc0@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: JRq7TsnLKKD0Q7I3W6O4eJzOPts4b-y5
X-Proofpoint-GUID: JRq7TsnLKKD0Q7I3W6O4eJzOPts4b-y5
X-Authority-Analysis: v=2.4 cv=No/Rc9dJ c=1 sm=1 tr=0 ts=68d5199e cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=VX93quCIRNpU5PVMXlIA:9
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAzNyBTYWx0ZWRfXzxEhhy9P98KU
 H8SOY7yJxgrzOaAVO/KwGaVj0ntKZLYjOFJMqRaCfK704JPjkci06e6nbaEjLBptOq8MRNrc1LC
 BtoIlje+m7my2iTEvd9pvoXBJ4aj9sw/Jya8EmgxeJ4VTUfn9ol3RJgElt3qyrSoQbwC1A+1Nha
 Gk7zYTP21hrnR/5ayWdTtaPfQhBRkeaokuh1BCT/mWkBJyChIT51LecJBPVgyJPSDkDbzbk/MxQ
 vbzA2MHxXOW8Ort01+yEQtOClb8zjaycwcqMyjIOxpwahvOyA9ajW5U3ql0ddz3arK8reP6emuC
 oL06bMKhGfzxDcdlR64cjY+7f9q2Nj5GsH6CkPluvo0fQ4vbDFAt57DdImK24gcHgdDWUjGf3zh
 swHvAGgi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 adultscore=0 malwarescore=0
 phishscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200037

On 9/25/25 8:32 AM, Pankaj Patil wrote:
> From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
> 
> Enable pdp0 mailbox node on Glymur SoCs.
> 
> Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/glymur.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
> index 66a548400c720474cde8a8b82ee686be507a795f..ae013c64e096b7c90c0aa4cfc50f078a85518acb 100644
> --- a/arch/arm64/boot/dts/qcom/glymur.dtsi
> +++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
> @@ -4065,6 +4065,14 @@ watchdog@17600000 {
>  			interrupts = <GIC_SPI 0 IRQ_TYPE_EDGE_RISING>;
>  		};
>  
> +		pdp0_mbox: mailbox@17610000 {
> +			compatible = "qcom,glymur-cpucp-mbox", "qcom,x1e80100-cpucp-mbox";
> +			reg = <0 0x17610000 0 0x8000>, <0 0x19980000 0 0x8000>;

1 a line, please

> +			interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;

I see this has 3 channels, with 3 separate IRQs (but one pair of address
spaces) - should we extend this description?

> +			#mbox-cells = <1>;
> +			qcom,rx-chans = <0x7>;

This further seems to confirm what I found (BIT(0) | BIT(1) | BIT(2) == 0x7)
however this property doesn't exist upstream..

Konrad

