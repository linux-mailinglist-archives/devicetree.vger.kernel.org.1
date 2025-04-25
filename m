Return-Path: <devicetree+bounces-170802-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 506F3A9C54C
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 12:23:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 697D718950DA
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 10:23:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 261C223C368;
	Fri, 25 Apr 2025 10:23:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JMwybUwp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F9C723A9AD
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 10:23:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745576584; cv=none; b=LBGXgOxs/ZPxQb3SAtqOWc8QVMpLCw8OQ8LXP+NiVPhUUcN0TpR+qtE6k6iNtEHYnVdXm9MFe4i2qc68Mo6yQ7+vByT0gatAdWR6yiPZDvA7GiEuTFe4yn6xTjWsy33z9i0RzbYmi8ZZwirAf5HhjshmdAyS18d2vzVJFihesU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745576584; c=relaxed/simple;
	bh=P9bo12OrecKrjN6mEf52NbCUzn7wxcs2GhFekAoyYQ0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FIkrhKSExMG+tUnEQnScsqKWgjHBb4/tWC3f1HWqlVTVTQ0iwJlBM00wmtRKJ2byTt1uSNdbYdV8YZJolZRr+L6DSI2ooE0Z6Ay8VVwceKyRTbnHgxcU7VK1PiRd727leEOyXpQgPpYcHlqbR5bch1rK3+091lJ1rwI8akXPttU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JMwybUwp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53P8T6Uo022918
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 10:23:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1igCRfVQGLQJpudpkgi6PdBXZlWbka929iUNJkPgh78=; b=JMwybUwp1KJ+ByIQ
	aGAGvjgeL8Om6a7lE1RsM/DvEmelbnmYongVRMpPDm43p43+IbVjpnkYTMbRO1eK
	5GMuqCPxOMOSs6Xu1ajBiLnel/K8rydEhiUbbpfZ6t/MGOtRSpSDGL2W0eanCV8O
	v+1hqh1eBnO7yHQQ0GH9OllvHuqU6vZ3eSSgYRGVBnfRBq/KvzsMunRg/uGYKkKB
	pnXTYvkia4eBMBOwjg14AECZmYRCV1SdCEyZdg/axjuulao8dRH+rvGA43HvfPq4
	sjTNIj0GPhZEXzZkeQAnlzonifaQp9ZssMGckLPEtY0n2Tg+HviMcujVNDqvDlrf
	gMSY8Q==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh0gqwg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 10:23:01 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6f2c8929757so4495436d6.3
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 03:23:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745576580; x=1746181380;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1igCRfVQGLQJpudpkgi6PdBXZlWbka929iUNJkPgh78=;
        b=nv6VnFk2z2uBLKCQ6hiQIkM4IIJydvr7GlFIjzC0KgkIj6hMfgUyjBzO8sulJ11CP+
         /Qw8sJo+Ohv2t0R/9hC26KU8gi02ozEFhGkKP9YuLNrvyMSrBJL3osrZr1wFszXFzhPO
         6w+9X6/yYSBwfSVhs1Vs6Ajp7qRqu6oQGSiATl3adNsnphe93n6yVmeCUJgWvwKDbaSL
         sdZ+yG9w1ouTu2UvqqHvlm1IjQZPCObRcGCaRLTYFK7MRPINxuDOIC0xU29T/9yuEyBL
         AlMzeiK+uiRxHApyU4LLIpd1GKTujjxvs7l6ZMDt1cKrESvVpwLWOMTjeXpG8j0xoXPT
         /U5A==
X-Forwarded-Encrypted: i=1; AJvYcCU2Tj54ZpgUOwDxRlNj8r9/yjyxOmedHVMvxqKQwbZ1O9d3pEJlH2ExrH3IR8m19JowHBxo/RNem3pX@vger.kernel.org
X-Gm-Message-State: AOJu0YwxCcwoZhHBnKj2nv6/qIyk8SrQkcEOrrBLZ2nWOcQuDynlGDtC
	8CR+LtM4LQJBW+8QRbA4ftzsM7G6yyfsk1U59+mufQSamJ2ujhnz+trMgfgQNqhlv8hNBqst5GF
	rQ6ql7KlQto/e/fe03BlezS1TuyWWFWSPct8s9MYKmV+MbGBbBGn94puUtRMJ
X-Gm-Gg: ASbGncsKxmxBC4KDiOxFtvlQeas9wwqsCyxr12Goi+y9XQHE9BbLmv82QoZy/2uon8e
	lDJKfHC1VD1KPg91QdtcOTfjZGSbqEVF2A75arrXKAu9SjAlNcCdz1EeGQ/NIkNPaxj2DKDduJg
	0P3V01Q3TojaYtmZ/NoQKKlzWH8lMlB4PiWw4WvGoU18UaC9PJjlGVGgljESJpnf1Pe193NPB3S
	8sglQxSc38HlKe+F2rUBHnTohHry9Wyoko97JCL9pHW9sYQGE1lIh3TsZRRpHZJ+C9KInkehRJb
	dBK/inVqRlX3esoWNNQnQMzNAyJjS/NG2HCgPCaOqVmu0N2noc2RoHwmS6/mK+o/
X-Received: by 2002:a05:6214:e61:b0:6e8:fd2b:1801 with SMTP id 6a1803df08f44-6f4cb9af423mr12058266d6.2.1745576580193;
        Fri, 25 Apr 2025 03:23:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHQHRUw0T1iKaDp55HxB6gYCPliox//7FFtFtFVjRAOfeqf2fXtnDneqIM45D/HHTkZv9xn8g==
X-Received: by 2002:a05:6214:e61:b0:6e8:fd2b:1801 with SMTP id 6a1803df08f44-6f4cb9af423mr12058106d6.2.1745576579842;
        Fri, 25 Apr 2025 03:22:59 -0700 (PDT)
Received: from [192.168.65.5] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f7013ff45csm1082025a12.21.2025.04.25.03.22.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Apr 2025 03:22:59 -0700 (PDT)
Message-ID: <4bb58766-a080-4351-87f5-79a98219171c@oss.qualcomm.com>
Date: Fri, 25 Apr 2025 12:22:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] arm64: dts: qcom: x1e80100: add bus topology for
 PCIe domain 3
To: Wenbin Yao <quic_wenbyao@quicinc.com>, catalin.marinas@arm.com,
        will@kernel.org, linux-arm-kernel@lists.infradead.org,
        andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: krishna.chundru@oss.qualcomm.com, quic_vbadigan@quicinc.com,
        quic_mrana@quicinc.com, quic_cang@quicinc.com, quic_qianyu@quicinc.com
References: <20250425092955.4099677-1-quic_wenbyao@quicinc.com>
 <20250425092955.4099677-3-quic_wenbyao@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250425092955.4099677-3-quic_wenbyao@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 9K7i5f18BhRGRW60zEcuvLnScUTNBcBe
X-Proofpoint-ORIG-GUID: 9K7i5f18BhRGRW60zEcuvLnScUTNBcBe
X-Authority-Analysis: v=2.4 cv=Fv0F/3rq c=1 sm=1 tr=0 ts=680b6285 cx=c_pps a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=xscrbkT6CZb1QQ6CF7AA:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI1MDA3NSBTYWx0ZWRfX/NROb7F1ZTEU cN3en5QrM0rH16SW5KIRIkupd0m/yLAvehp42AchDbcfHeN+GLHjDc2m2J7vDGJAiSLCodgAwgx Lgt5UgTC4aIJ4EaSdszHNculwmij2l2D1KCCteWGaZPaJC/9f6qSV2TUnckPKikiUcp4jxuuPJw
 XqgJdfblogaYUpUeRkL9BPUMvknMaKFE/LEhm3A7gjWRPCx7iq6erCi1wt56IFx5ufaw6RSDzWm enOBUjdQj9mZv7bnwsshvxpmKqpC0b++GKtGtJkgcjnVsFGn0GnWcToGNPMK0AkE8z/lju6alwV TZveUB2Bpg30LNcR3mDTTiVQSBsBY2jW5X23kwJC8BUhE9gdQ/PGm0PjfN446b70NTEizHsaPmL
 Komy/Oi0HgsdvVcXKfZvwHDFGoJdm7ev71ZYLpvIobvY/wZkZfioUBwncNVif74cCtWiC5Uq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_02,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 mlxscore=0
 malwarescore=0 mlxlogscore=977 priorityscore=1501 suspectscore=0
 adultscore=0 bulkscore=0 clxscore=1015 spamscore=0 lowpriorityscore=0
 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504250075

On 4/25/25 11:29 AM, Wenbin Yao wrote:
> From: Qiang Yu <quic_qianyu@quicinc.com>
> 
> Add pcie3port node to represent the PCIe bridge of PCIe3 so that PCI slot
> voltage rails can be described under this node in the board's dts.
> 
> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> Signed-off-by: Wenbin Yao <quic_wenbyao@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> index 46b79fce9..430f9d567 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> @@ -3287,6 +3287,17 @@ opp-128000000 {
>  					opp-peak-kBps = <15753000 1>;
>  				};
>  			};
> +
> +			pcie3port: pcie@0 {

@0,0 for PCIe adressing (bus,device)

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

