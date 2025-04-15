Return-Path: <devicetree+bounces-167149-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ED6F6A8989A
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 11:50:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 923833ABBA2
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 09:50:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23A382820BF;
	Tue, 15 Apr 2025 09:50:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="n7ooqLpY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEF4D27F728
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 09:50:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744710616; cv=none; b=vAArhjcjQ0MYX8HJ7desBOkDKBjghc5KF0qJ0mSB5zXq1v5p7ixY+YlBrZ7PstqTpWIMJjGYe/DmLwwcjVSgpi28R1r30p+1M8evWwE0OQhXGmFQk4Na3QvsEljULtABEuaklzDfxCB3JE2ZldjG+en6p2RAhe3vSvuGGT3XRPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744710616; c=relaxed/simple;
	bh=iYguZpsK9hHf4YI5wWyK+6x78ntTmkHGzffMOGqTbao=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NJ4FC7ahilvC5VgyRU0Bf2cjRH6PmDkEyxLSr4bNCXh+yLia4IpkyD8Sc8sswi2FLDcq5Dq6zt9NOwImQtG41Lomu2hElf38GRV5AWiha26gL/93vYID2aqrUABEgwPtcGTeD6qoiiCt1fjuOv2g4sQogbpczOskUj60gmhNAzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=n7ooqLpY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53F8tKC8013240
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 09:50:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	M4otoQvJIRwA1ecqvKYp6bsWtA84oxMKucAKohhg1q0=; b=n7ooqLpY+2RedBiF
	5NSvJWacOMuffRbniHofEtoDq6dGZY+S1W/CDdfUHMEU62NRB+cRmAuqaTQYB0vx
	x92XAVK3IwZfhBhONUpWUW8Ec6T6eHlxFb/z1RYdKaeLTyO4N850gSZ9LFmyvrl3
	i13n6bDJrDLbYWOEbGhLPJYVcp+GsgWeH6BEEZLc/eL3dgGsNY7XqDw1TFXZVSZF
	2yKqoiy/OBARbG/gbJ0mVdC40xTV2XlaPoQ7xzXSObYSOCG2IcOOevN41QHqgPeA
	LDflCl5BHadsFuzI9VKp1sIcQitw1H5lx05gx2iuJ0htubGvhIBpTRKXB6TJZf18
	9bAJRg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ygd6fj2t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 09:50:13 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6eeb8a269a7so16604826d6.0
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 02:50:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744710612; x=1745315412;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=M4otoQvJIRwA1ecqvKYp6bsWtA84oxMKucAKohhg1q0=;
        b=hLRZ3un9fIMuJuou0NEOPJvFlqQ4LCx0gDVTldScN5Aucs6Kc6EBpwL2h4fI/pmxBI
         MSsncJrK6I5e7BgTPMifteGubinMFhhOB18QH6+bGdD0ZNbkAs/WYppB0JfEgGCglLvU
         rgJek/VqjH+t7ixnAJeTfdjVJCwt5ZBkMBfzfShnSpzq1y4Whcvqsel2DM3c95N1WIdz
         fqe/Obe5peEowO3M0eEShWCxDjfOb4RAK5b5Kt7LkL+Frx8lzVSvkRIx6joDK2Jir1BL
         giwOncqtTAaPz7zrA/WYlwSfp4lBf8Tj/WOBY8kSxNovmaEEmoCfLW46aKo6ZBRpPf91
         O3og==
X-Forwarded-Encrypted: i=1; AJvYcCV5BYheHtVQHY8UXpzpIMshElnxvCZe2Pm1iZp/4Axs/ijFTNKyaGtAefjDA4Ubh/USIc9Q6cipeqnB@vger.kernel.org
X-Gm-Message-State: AOJu0YxZKKfRv5N/7qOJgcladAxIz3ON9hrYrjm7Xs0U30nEiscX45KO
	ogfvj7NinRiPpmVd6SDbmay19jRE8kgRXCUl09+gYM85nGuATBtCFHKC4pbNuQx2x/uk8BLynWr
	powyRONI/BrmdJfmpM6tV+iUB5/TmjlhoTsRUIQmCcnploZo3kE1so62Y43o3
X-Gm-Gg: ASbGncusmv2JXVETx7ScvXT/Y/WsGj/uhpvKULTARGV/N+Be18RxixtFRVGFSk4VhNR
	SvzcMnwDPxji1itoziBnjT6tooLfRpXQazTbe5J3250R324TZndZs8RS9vidJqbET1p0vDvxv0b
	TLwIt1PiVLH/TJAdd4SwDojDQoDmbgRpQmQWCecAJAZgeabKn3VgPC0L5al+hq3Mf6Dfm3ORYCG
	vp17ZND0o6DakWbBeI1TnOR50R7FmU33o1XRKFGi6ibKIbXwm3R9HsqQrvQwhhXPQdDKgGujgpk
	GslbL+CU+BnAwBxSipNOhJDGjfaSL7ewI54NJC4xQuPm+4fzVwnnA0HYiriEMpvLP/s=
X-Received: by 2002:a05:620a:4093:b0:7c3:d1b9:e667 with SMTP id af79cd13be357-7c7af1037bfmr965711485a.5.1744710612535;
        Tue, 15 Apr 2025 02:50:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IESDG3Y3Ip/L9a2KjUkb5FyT2jIC/j7Y9psd3H/gAlaJPDHjXx117baUVmaFIGk1F2sEIbanA==
X-Received: by 2002:a05:620a:4093:b0:7c3:d1b9:e667 with SMTP id af79cd13be357-7c7af1037bfmr965708885a.5.1744710612124;
        Tue, 15 Apr 2025 02:50:12 -0700 (PDT)
Received: from [192.168.65.246] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1c02549sm1059959866b.80.2025.04.15.02.50.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Apr 2025 02:50:11 -0700 (PDT)
Message-ID: <68a48388-f42b-4136-a97f-9d575fb84d42@oss.qualcomm.com>
Date: Tue, 15 Apr 2025 11:50:09 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/5] arm64: dts: qcom: sdx75: Add QPIC BAM support
To: Kaushal Kumar <quic_kaushalk@quicinc.com>, vkoul@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        manivannan.sadhasivam@linaro.org, miquel.raynal@bootlin.com,
        richard@nod.at, vigneshr@ti.com, andersson@kernel.org,
        konradybcio@kernel.org, agross@kernel.org
Cc: linux-arm-msm@vger.kernel.org, dmaengine@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-mtd@lists.infradead.org
References: <20250415072756.20046-1-quic_kaushalk@quicinc.com>
 <20250415072756.20046-4-quic_kaushalk@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250415072756.20046-4-quic_kaushalk@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 54ObbvlCO4a9yWxHvjKMFjKy7c_OLy8C
X-Proofpoint-GUID: 54ObbvlCO4a9yWxHvjKMFjKy7c_OLy8C
X-Authority-Analysis: v=2.4 cv=ANaQCy7k c=1 sm=1 tr=0 ts=67fe2bd5 cx=c_pps a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=6fcHxGdBv-_w1aurbSsA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-15_04,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 adultscore=0
 mlxlogscore=986 suspectscore=0 clxscore=1015 lowpriorityscore=0
 phishscore=0 impostorscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504150068

On 4/15/25 9:27 AM, Kaushal Kumar wrote:
> Add devicetree node to enable support for QPIC BAM DMA controller on
> Qualcomm SDX75 platform.
> 
> Signed-off-by: Kaushal Kumar <quic_kaushalk@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sdx75.dtsi | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdx75.dtsi b/arch/arm64/boot/dts/qcom/sdx75.dtsi
> index b0a8a0fe5f39..e3a0ee661c4a 100644
> --- a/arch/arm64/boot/dts/qcom/sdx75.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdx75.dtsi
> @@ -880,6 +880,20 @@
>  			qcom,bcm-voters = <&apps_bcm_voter>;
>  		};
>  
> +		qpic_bam: dma-controller@1c9c000 {
> +			compatible = "qcom,bam-v1.7.0";

v1.7.4, looks good otherwise

Konrad

