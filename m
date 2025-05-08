Return-Path: <devicetree+bounces-175110-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C23F7AAFD62
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 16:41:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7C2D1173CBA
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 14:40:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3DB427584F;
	Thu,  8 May 2025 14:40:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BZTj44Lv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5719B275840
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 14:40:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746715230; cv=none; b=P7q9yShcFV1pucJD8+UvRPr7mB0IvUOpjZ2lmTPdUMnhZvv9M8CIR2kWLZ8cT4l0X7oc5ycotYp7EFLmyqgRUSJEq0DDaYLh6Pja7ZDoI1r5Z4wD2oOVEHkcJK9O6OV5/jVmSX9XtpPm4+dR9p+++Y7X1Mx/GYGokIELv9VZgec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746715230; c=relaxed/simple;
	bh=w/IRPkoqI29om20GziWR6uLh/++CAuBf10WI0YmJ+ys=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=G7JG8rszNBFhvCuYz2vzm5dwHW731j6VcWRsVN28LZY/YKmFiPyoOk6bN7pleF9xJnYotRCmX9cW1Nq1bX9doRQMGSxq1FaFJWhz3S1R09zQeKBKU9n7D1fl7z/mIewyUhd48hkBmP1e2QboFcnkhRLPXXRyzLFVnO+SxrJ0bHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BZTj44Lv; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 548DGUQM014045
	for <devicetree@vger.kernel.org>; Thu, 8 May 2025 14:40:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XILZM7Gn5eaJwNn51SrBifians0biwpZ5P5rKKRfJL0=; b=BZTj44LvDUht/smb
	ldixBceDdCVkQWBtkAn0daOovnKWgqpvtfhJbe64PuLA6fJKhXR1vf/NjFZzsdtE
	/bPK3osOJj36Xa8GTQXrh0y98wYi25tP/7YolhJIStoXrjGV7bVIMeFBQloADyow
	m1Zzckm98huWiLU/Vq+UdJyssaXzh6ojOnShTAk88e0vcO4ww/+KY1v9rMz5I7+A
	7IfNtMzCwebiZrVzRylx2Fhae7ibCps9OgvswfiMrRpGRiIauPESIR5Tt4b91eW+
	oeem+sZ0X6eO5KRg6b+DGSX8HpvsRmmltlmKSQIEMnThifHCyeKlmOjQDF9O0su7
	yKMjNQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46gnp4hp22-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 May 2025 14:40:28 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c5530c2e01so27076885a.0
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 07:40:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746715227; x=1747320027;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XILZM7Gn5eaJwNn51SrBifians0biwpZ5P5rKKRfJL0=;
        b=PR0WphIYNI27Ulp9/F18pnJLfCx/Z4ODmwyuR4JP/RepPbcmRib+PBOl6ezaLqH4ve
         IgySzDSMho1HF7StAeEcazJx5cUGsoUi16MdAoYdj5wBknXz76tM0TEUrJdootN1L/S/
         lxLBJ22DOmrbK8FUldAR9YIYvsS0YBJ/REZOOm51YUmhdvc/6Z0ucoar1e5w8ys/KhvT
         +DgEBUYCeXqc20ZztRnhjBZLNfW+kFXY2ekdlurIeqL9Ft71vDkwXlHlvZTU8A6+nEHN
         Jp6CTn+sQEYLuzbZ/HwiskjOzyjYdFxjKFw1Tr5p4uTAgHzAB+RBhdX7EcgtF7wI8paH
         bi4A==
X-Forwarded-Encrypted: i=1; AJvYcCXFyttvOA+BEl34fv2VSb9H87FQJnKCs03Yb3inWiUC/XUgL9q2qqVpNq5wOk2ql+TRW8V4X1SmK4XF@vger.kernel.org
X-Gm-Message-State: AOJu0YznIDYPAtP6L5LuwVqmw+lMafK6FyBmYzSjmuMcENiFJ4j7pVbC
	0kObUabWRgWfDJm86gF72QN3+Hqyr3RGEURmROHFY5FDGrWky1jUvIbkM6lXXQb8e3oZLvtmdE2
	IBYN9UAicyEB25z+hxBokOsolUotuxpuntLA0qDIy/I3OHlsqFnGYWgNWoJMIoD9EqoJX
X-Gm-Gg: ASbGncvuG5uttfXA1H/O+lxg/LSSyYmZnRN/yHQTv6Up1UaKJnPmZ84piDw0ZDOJshS
	/uFYHbFc8gkvPWCfboTHw5Wi9eSZABSU0/kLd+NR6Ape5bzqxEKhGM3v1bxoTQ/SaGaJ5XnLwi+
	rlptpY1ypJwVoFdQ9uWo1HU5F8YuXX0pwzdG7O6tZJz8eN3ZcfK4fLW8pF+hLIxPgS8VE9d/SLv
	GpS6SCkvkXO/pmXRtbiFdPhKo2vuLNBh4t+NyyEcyEcz2GSrVu4VIGynyGsUOPsE0wNFVq6U29L
	0OVk//RuEFwhn5GELGnJN/NmVfECyx15m9HanrITvEmYgddRsnucvYCH3/n+MwK4GUE=
X-Received: by 2002:a05:620a:414d:b0:7ca:d38c:5d8b with SMTP id af79cd13be357-7caf7267bf5mr402757885a.0.1746715227017;
        Thu, 08 May 2025 07:40:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFT72bwxRsnCw6X+H7BXkoHxOCMnrHK7Khu5jQoHo0XXuFugh3AhL43OS8kDS21FFjGTDgXLA==
X-Received: by 2002:a05:620a:414d:b0:7ca:d38c:5d8b with SMTP id af79cd13be357-7caf7267bf5mr402756585a.0.1746715226531;
        Thu, 08 May 2025 07:40:26 -0700 (PDT)
Received: from [192.168.65.105] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad18914740esm1092006566b.31.2025.05.08.07.40.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 May 2025 07:40:26 -0700 (PDT)
Message-ID: <a8a1aa0e-f53d-4a77-9199-958878563b9f@oss.qualcomm.com>
Date: Thu, 8 May 2025 16:40:23 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/6] arm64: dts: qcom: qcs615: Add mproc node for
 SEMP2P
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
        linux-kernel@vger.kernel.org, Kyle Deng <quic_chunkaid@quicinc.com>
References: <20250507-add_qcs615_remoteproc_support-v2-0-52ac6cb43a39@quicinc.com>
 <20250507-add_qcs615_remoteproc_support-v2-3-52ac6cb43a39@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250507-add_qcs615_remoteproc_support-v2-3-52ac6cb43a39@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: V_XOu8ekl-S9C624s8uBlYJC4SxAqo7P
X-Authority-Analysis: v=2.4 cv=E5XNpbdl c=1 sm=1 tr=0 ts=681cc25c cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=NOOO9hkfg8HFgf3i-E8A:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA4MDEyNSBTYWx0ZWRfX8vY4G+bZPJCH
 j3I4oCnq16fjHwWlcJECDxUJIrKyi0LMOjBFG+hVZVtTK6pBA38K+t0XoEGuGa8pPqLxYIQiGYt
 yIUOqkh2jH2vYM39aOd6ehWYgYyYRVIpXC+i3rIKlmlemfLVXpDlH1ncsjMJNF3KZYhWatPsJ+i
 RUyxGO0yJU0mqkFymWI2H78KapN5srZ4vRF7PiSz0FxWOXWMaNjWuu1E1Y0pSFdkA5s38FaDUCr
 rBp1PFLVCntCzZ1+1trXxOHkuQmqBLN66Jky5T6Aj/4EKem/FKVLHiVRQxIttiDQ6WS6EiJgjVs
 b6nJloSKQm3buTBC1iz+tAAmNppMMWwljmphTMBAplsztTeWhEXiTFmyWEbXEN2uTS93R5hrWJw
 RLyY7rlQpfem8ye9Fjw4+NwKd8diBY3mLsUexVoieq9jaDCHAYwjTw/OZRQaqy7fvICZH1D9
X-Proofpoint-ORIG-GUID: V_XOu8ekl-S9C624s8uBlYJC4SxAqo7P
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-08_05,2025-05-07_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 adultscore=0 mlxscore=0 malwarescore=0
 bulkscore=0 phishscore=0 spamscore=0 priorityscore=1501 mlxlogscore=999
 lowpriorityscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505080125

On 5/7/25 12:26 PM, Lijuan Gao wrote:
> From: Kyle Deng <quic_chunkaid@quicinc.com>
> 
> The Shared Memory Point to Point (SMP2P) protocol facilitates
> communication of a single 32-bit value between two processors.
> Add these two nodes for remoteproc enablement on QCS615 SoC.
> 
> Signed-off-by: Kyle Deng <quic_chunkaid@quicinc.com>
> Signed-off-by: Lijuan Gao <quic_lijuang@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615.dtsi | 43 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 43 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> index 7c377f3402c1..53661e3a852e 100644
> --- a/arch/arm64/boot/dts/qcom/qcs615.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> @@ -332,6 +332,49 @@ mc_virt: interconnect-2 {
>  		qcom,bcm-voters = <&apps_bcm_voter>;
>  	};
>  
> +	smp2p-adsp {
> +		compatible = "qcom,smp2p";
> +		qcom,smem = <443>, <429>;
> +		interrupts = <GIC_SPI 172 IRQ_TYPE_EDGE_RISING>;
> +		mboxes = <&apss_shared 26>;

26 will poke at the SLPI instead

Konrad

