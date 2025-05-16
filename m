Return-Path: <devicetree+bounces-177904-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 568C7AB992F
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 11:45:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B262EA215C1
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 09:45:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 674F72116FE;
	Fri, 16 May 2025 09:45:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lfJPf49d"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B192422DA1F
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 09:45:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747388712; cv=none; b=BIz7BdC3LbEMBA5O1K5Zyj+iR/JDQq1Q57c3MxKGl1qJIzqxlI9PqGg5oMkH0F2g9cPD1SpsHOo65Lrf4gr3OHlZZOpgApgdTYSxiOJJtJKTtto1oUukoQrIo+6hrn/0PwEGotoK0YjyYTdZcAp4+xZmVFTw32WXMykzOx+MHl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747388712; c=relaxed/simple;
	bh=HzsJEBiPWk6eDqzxwMfoGQye5xmzJYeJbdlBljOdl/w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=huqxUb6e8iTBX1LxIWiwCRqgym+0JZanRaHGHx3fqAhO06EjML/3KkV2mUKktuNX0yFxilCK/r3AzFVNjQ11WOXcxaOTqRUJ0mR0+31cpYX7DzrGMYR73Ml6XAxPMKMQiAENz4BYUT2pa9V1qseKiolGx7erudRV6ctcgyIkXfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lfJPf49d; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54G3nTu0001818
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 09:45:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LDr4B1qSjg7htBqhVvqZsGzbBvRV/mFJiETbhY1xHpE=; b=lfJPf49d1DxmhEWS
	LZJ7IQPMhbQ16lyV+EJjNmmffXafF32XfqSTf5vvDnXjsnas/GCa3KRv5tFE3kKv
	TmpzvmSaDw9wyQ/VZ/It7wmk6Jup3WK0cE5wDPNmO/dUXsHAMHI6iMamb+1nWE60
	BCI5RyNrcwTsRbBhqSlPeJLvtSjMVKgfcCyJX66ZpUGd83AtIrRtwe/EckTS7ijm
	Hoqam4ndvtYS47qvK+Q4n14rZcrlB+mqUEFxBzHrtuu64veQAAta4u0HsHmEadnv
	0Ikm3/kgTI3AOJDWQ0XMGo/Uwqva3MBw3572du0aBHhGl1iLZLyD7v18R0TK46sx
	WPWQcw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46mbcrhbsr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 09:45:08 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6f8b297c78aso1632606d6.0
        for <devicetree@vger.kernel.org>; Fri, 16 May 2025 02:45:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747388707; x=1747993507;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LDr4B1qSjg7htBqhVvqZsGzbBvRV/mFJiETbhY1xHpE=;
        b=hCw8vJepZ98w8w6KaWcpfv0j3jsIlOgzwv7mDRpt6PYLv1Oh+DuFrD4yEU/4QLaqpq
         zST93cgXC28RUG8OY7Wb8dJQjTy7J9hEpRZcVEWlRjE7GYvlVoVOvoGcEmbw5SEzaZYx
         L2szUilL+D9ut1gTnFr/w0MpvryN01VYDZ0wBIdDi5YUUdjNssx3GD5szsjhJeG7ith2
         6OGaZ6Q0l+/8728Fy68HAvlAMDKgJTeEcfSqqTGzF3WrjD5WcSczsjj+kAoj/4os4RHc
         dJXTVNNJFH5SSRhelrirS7sjvN3kOeHkPGfunUKAqsUXem3+oaSGnR0c2tQMuNtmzOib
         WNeg==
X-Forwarded-Encrypted: i=1; AJvYcCWjLbdeEYkirv3c3QPgu6iYFoIgV1GFjxynX/4hl6A6GO/3STa4O2C11VHewpWKIcwBhYe2v8WqgS0J@vger.kernel.org
X-Gm-Message-State: AOJu0Yylj3qm9aGkOiVKQzGqayN4ugGA8+LCmaKAKNViUU207jHqvfsY
	o+Wlhs2DSYXIpMkezOF+ue8pgcO3BmkdR1t3X7D09f2IwOMD1mJJcvNT1LK7qfAvOPO9KLl8GWl
	F+HR/aC27ac7yhj0FlWFnwkUqmomgycZGwiYKzzVUjgAvv8LHUb+4Xf41pm4+Shb7
X-Gm-Gg: ASbGncuxutKQ5eiyoSfQz/XW3SoUrrdmm9FelC2Ridw/VXpCqu/7tuB4rdI91Rrt+sD
	L4/PN7QBwmt26KB8LpU5Xj135tnudC0wLS/m6A/Yl1hAOeFx4FeLvR65jHE8DRnfHFohmbawBvp
	9ewPDF+QZaw4MT1bcpVra5w3mnF9XpAMNqgeWKVHJuXP+5/HokmHEpCUFe9aIUqozPb/EK/SWPW
	whkQMqcyN575Vu064gFnSwNjE1UKtbPJOPii66KJsbDR9C9XuffWD1wMyQctas4ZjNlCFSldbbS
	uuI422ku5sYdSGLrBs3P4mgpTyWmxcyuuGmiU2VKlTu8Xv3zu7EgXBeVD4PWOMmyjg==
X-Received: by 2002:a05:6214:1c09:b0:6f2:c10b:db04 with SMTP id 6a1803df08f44-6f8b0835130mr18906446d6.1.1747388707532;
        Fri, 16 May 2025 02:45:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGukMfVX+YRjpGaoj2TadFrM/2CD6zQuISXBA2V8u8zEJ5cpewzlRZSW1tBbMSTsJkqcx5YSA==
X-Received: by 2002:a05:6214:1c09:b0:6f2:c10b:db04 with SMTP id 6a1803df08f44-6f8b0835130mr18906246d6.1.1747388707101;
        Fri, 16 May 2025 02:45:07 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d06eab7sm127556766b.58.2025.05.16.02.45.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 May 2025 02:45:06 -0700 (PDT)
Message-ID: <0097b07c-3a58-4b28-abca-3e6de70ecf25@oss.qualcomm.com>
Date: Fri, 16 May 2025 11:45:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/6] arm64: dts: qcom: qcs615: Add IMEM and PIL info
 region
To: Lijuan Gao <quic_lijuang@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: kernel@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250516-add_qcs615_remoteproc_support-v3-0-ad12ceeafdd0@quicinc.com>
 <20250516-add_qcs615_remoteproc_support-v3-4-ad12ceeafdd0@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250516-add_qcs615_remoteproc_support-v3-4-ad12ceeafdd0@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: Sc4zk5Xq7Se0EDaR8DqnaGBGOt1l5vj6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE2MDA5MSBTYWx0ZWRfX085R8NJrZ3SV
 XyuBaZSLVdlxBQplYq7FHqZivpYOoVrA+Ute6r0D/fEa8xKZpcQKdyPrcb/SbIETNZov074DjRJ
 rkl012BbwDUvccQx3PpBEUbBYk2QyYfc4v0LhpYuLUDS4LZsCw2jppnY46zo9/I3Aig23EcOxf9
 oYm2AKMifcltJwk7tkWN3b90n9LbctgspaOrtM4So0KPHSQDjiXRkb8LFuKPDaIF/J0Mi/82reG
 F3r07sfhiXsUDSyj0pwwj2Xe2Nf5JNcCLS6UPFwoZlZTAQr8Ugty/k7Lo9cE+uXod2/UGggXrVB
 yV+jfeWDm0+r0A+m9UcV1y19fPICHhaT38ngHhm0fdKjSHsOADSHkt2SCKkVc1e2I7ZsVmtTfq+
 r8xJwkEJ9sByVL0ET2nBcIs583ZtnuTagLHFlXOVUTDFU74XimaMDlmYckX9FKvCUVcBWzs7
X-Authority-Analysis: v=2.4 cv=K7UiHzWI c=1 sm=1 tr=0 ts=68270924 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=O_pLmbuslcfqJQTE_gUA:9 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: Sc4zk5Xq7Se0EDaR8DqnaGBGOt1l5vj6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-16_04,2025-05-15_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 mlxscore=0 suspectscore=0 malwarescore=0
 phishscore=0 mlxlogscore=875 clxscore=1015 bulkscore=0 impostorscore=0
 lowpriorityscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505160091

On 5/16/25 5:27 AM, Lijuan Gao wrote:
> Add a simple-mfd representing IMEM on QCS615 and define the PIL
> relocation info region as its child. The PIL region in IMEM is used to
> communicate load addresses of remoteproc to post mortem debug tools, so
> that these tools can collect ramdumps.
> 
> Signed-off-by: Lijuan Gao <quic_lijuang@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615.dtsi | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> index f922349758d11ec7fda1c43736a4bf290916e67f..dd54cfe7b7a6f03c1aa658ce3014d50478df5931 100644
> --- a/arch/arm64/boot/dts/qcom/qcs615.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> @@ -3290,6 +3290,20 @@ sram@c3f0000 {
>  			reg = <0x0 0x0c3f0000 0x0 0x400>;
>  		};
>  
> +		sram@146aa000 {

Please also update this unit address

with that

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

> +			compatible = "qcom,qcs615-imem", "syscon", "simple-mfd";
> +			reg = <0x0 0x14680000 0x0 0x2c000>;
> +			ranges = <0 0 0x14680000 0x2c000>;
> +
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +
> +			pil-reloc@2a94c {
> +				compatible = "qcom,pil-reloc-info";
> +				reg = <0x2a94c 0xc8>;
> +			};
> +		};
> +
>  		apps_smmu: iommu@15000000 {
>  			compatible = "qcom,qcs615-smmu-500", "qcom,smmu-500", "arm,mmu-500";
>  			reg = <0x0 0x15000000 0x0 0x80000>;
> 

