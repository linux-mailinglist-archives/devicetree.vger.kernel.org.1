Return-Path: <devicetree+bounces-166722-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B74FEA88474
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 16:19:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4B0F11886513
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 14:12:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DEAC27B51C;
	Mon, 14 Apr 2025 13:44:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GpRsMp1v"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C58324729F
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 13:44:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744638299; cv=none; b=XMOCq6pmHPthRmHP3AMB64fKvJXeIb9R1L6uIaV3YG9eXSrEsaWqTTbcqq/dKNhlRbwLakpwdxI0Iirr8EmWMSS9KkBhDc6gu8IUCLRicJtIMPrUusyjDpVnV6JJXif1zFoTv2Wrza/AZ7skevALF0U/hpAMf4rjRh5NObo1ilM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744638299; c=relaxed/simple;
	bh=oMxfmg52YvUwwyoTMwpAjNp7TiVHpTjomzMZyD1fhqw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZbVxZ0AVqCJnpEIEjPjvUswdB0Q68ogpsJFrmLgN3peYL2fS11rflhg88nXUUEXO03o4aBDPn8bMHHz2n/FhIYFwea8hmbX4XHf6zLgNQqpsEUXtX+LVQ5JYPQNmYqHb/1ymEdaNFvLPdUnuwef3qta2gPhgbcNhY8k5CGBYp6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GpRsMp1v; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53E99qb6001780
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 13:44:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GGyhxlay54IRFzuBkra/A/yq80IVczLJEIsYnlPDjgA=; b=GpRsMp1vvSyRCbYZ
	8AUyply8bOhmTnKkUYgtKyT2XoW9oAi0r4k8KzwbNLM76Ne2pqPvlFToQJbSK+2w
	ivukfjTndJnP7Lf/7b84SxpvudvmV1Nrj4xly1MTelzyGLynBrdJYZo1aRhBmnMy
	mxV2iefMqzk8a8pGm4ijPEAjBKyp3Er8/NgltMA9sDVx90u55iOwD1dOwnCrZxlI
	sL5ICCR0DPbyANCPn2AX9v5gzP95ytEg94UvRMhPRpTa5S1AltW5j5z1yxOJo1PZ
	CsMk3NbYbek1Mv6DzfhJEduYM3DX9HdvvRj59zgvDk/UkHxdM6iMY/2pK9qdYBwZ
	PSlhfw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ydhq4xmm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 13:44:54 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6ece59c3108so9788906d6.2
        for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 06:44:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744638294; x=1745243094;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GGyhxlay54IRFzuBkra/A/yq80IVczLJEIsYnlPDjgA=;
        b=vqykp/g9P8EEpbZTahKrsX0FJAc/u9x8dlhCrPKWwxoTXB9hVHbR0M0YwhUIOGD/DE
         tpRnC68Vzuvspaz4a9XjsJLnT/dE4ub42d28xGsZRJ24O8tPmsz/xEO/W2AhvMdxl/Tx
         1p/FhTua2Ebr9qwRjiaGlASRZC0XBcZwbgzG0Izj9jBzEPxyxte1mlsy2MjLIt0+nI0T
         NJ04Z1SuZOCgNpwY3vgB6Ux1zeUuN7UF5Ro61+Pb7bqq+ZvvbktkHHkBBusqBxHaRt5s
         yINt02aaOGMGvblOjHtVxQg4rv+t17GJ4c60pNslVDiRteF59ROLmZoatwGkDWrwlKcD
         9xow==
X-Forwarded-Encrypted: i=1; AJvYcCW6D9ShrxKbXCsTDxtkE1RCn4KJBq752soNC1TztEoJTuPSyG2A8wipDJZKonEHABubhwcYRW39mwms@vger.kernel.org
X-Gm-Message-State: AOJu0YxpZ3XmgAgVSpcOcYTsKukJOlwe/6xa6qbFDJxNb7eUBmPSE76v
	QgGLNNzRoVDxagrgpEyan524w2/QTm0GnRFCj33TKz4H+Mmuzx5PPz8wv+JWF0izehVUn62nFHY
	CAM1i8QtazNOGlWMmq89+6Jw737pznjqFXnBvCH6PQn1sSHAqP7yO8gQ8bako
X-Gm-Gg: ASbGncvZGFy0HXH0lxyE1i+T+d38Q0RVzHkuxXXmZNW0eJmhfKxPPxlig5gfGMwd7Bv
	4ksfLMyV04p6iauQgzWy5JAzjDNkqtrFRYmzwX9ZNBw8zhjrhySh6YlHnQnxIpat+ASh/rrxxe6
	IOnALWngjP6v2/Qfm3bs1Q0jOZ9bp6qbAbxaPjUPONgliekGfwyr6EzHQ4ySM83pvnpyjzbCATr
	I7dztnQVnk3VzPTMJN7woWP86ed3NKuq59myzLzVCmppBwZ3RWYYNycb18uVkg38FnYJAWgRhJq
	BQ/4/S74wUQyEyHZYwDm5zFjpWM33zWhf3c4tcJUXZUqb/+EmhbMtjBCHTLnwSulBg==
X-Received: by 2002:a05:6214:19e5:b0:6e8:fcd2:360e with SMTP id 6a1803df08f44-6f23f15d812mr61942656d6.8.1744638293959;
        Mon, 14 Apr 2025 06:44:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEZVo5rWcpGuTu3YsE5z95sRrLd11UcEgqrLzSlXM3gKn6ONHCheTTQxg6qNFAYdN3dceNSIA==
X-Received: by 2002:a05:6214:19e5:b0:6e8:fcd2:360e with SMTP id 6a1803df08f44-6f23f15d812mr61942526d6.8.1744638293402;
        Mon, 14 Apr 2025 06:44:53 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1ccd205sm928040066b.141.2025.04.14.06.44.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Apr 2025 06:44:52 -0700 (PDT)
Message-ID: <6e98b5ca-3ff1-44c3-928f-e993cf29215f@oss.qualcomm.com>
Date: Mon, 14 Apr 2025 15:44:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/2] arm64: dts: qcom: sa8775p: Add support for camss
To: Vikram Sharma <quic_vikramsa@quicinc.com>, rfoss@kernel.org,
        todor.too@gmail.com, bryan.odonoghue@linaro.org, mchehab@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org, hverkuil-cisco@xs4all.nl,
        cros-qcom-dts-watchers@chromium.org, catalin.marinas@arm.com,
        will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Suresh Vankadara <quic_svankada@quicinc.com>
References: <20250210155605.575367-1-quic_vikramsa@quicinc.com>
 <20250210155605.575367-3-quic_vikramsa@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250210155605.575367-3-quic_vikramsa@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: Eft5b2ebVEY-84iFDt2A5wusdOjdwKJ_
X-Authority-Analysis: v=2.4 cv=C7DpyRP+ c=1 sm=1 tr=0 ts=67fd1156 cx=c_pps a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=KVm0XDNadgfEQVUGQ2gA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: Eft5b2ebVEY-84iFDt2A5wusdOjdwKJ_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-14_04,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 mlxlogscore=999
 priorityscore=1501 suspectscore=0 clxscore=1015 spamscore=0 bulkscore=0
 impostorscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0 mlxscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504140099

On 2/10/25 4:56 PM, Vikram Sharma wrote:
> Add changes to support the camera subsystem on the SA8775P.
> 
> Co-developed-by: Suresh Vankadara <quic_svankada@quicinc.com>
> Signed-off-by: Suresh Vankadara <quic_svankada@quicinc.com>
> Signed-off-by: Vikram Sharma <quic_vikramsa@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 187 ++++++++++++++++++++++++++
>  1 file changed, 187 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> index 3394ae2d1300..83640fef05d2 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> @@ -7,6 +7,7 @@
>  #include <dt-bindings/interconnect/qcom,icc.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>  #include <dt-bindings/clock/qcom,rpmh.h>
> +#include <dt-bindings/clock/qcom,sa8775p-camcc.h>
>  #include <dt-bindings/clock/qcom,sa8775p-dispcc.h>
>  #include <dt-bindings/clock/qcom,sa8775p-gcc.h>
>  #include <dt-bindings/clock/qcom,sa8775p-gpucc.h>
> @@ -3796,6 +3797,192 @@ videocc: clock-controller@abf0000 {
>  			#power-domain-cells = <1>;
>  		};
>  
> +		camss: isp@ac7a000 {
> +			compatible = "qcom,sa8775p-camss";
> +
> +			reg = <0x0 0xac7a000 0x0 0x0f01>,
> +			      <0x0 0xac7c000 0x0 0x0f01>,
> +			      <0x0 0xac84000 0x0 0x0f01>,
> +			      <0x0 0xac88000 0x0 0x0f01>,
> +			      <0x0 0xac8c000 0x0 0x0f01>,
> +			      <0x0 0xac90000 0x0 0x0f01>,
> +			      <0x0 0xac94000 0x0 0x0f01>,
These I think should begin 0x1000 earlier and as a result be 0x1000

longer
I also believe this is an off-by-one.. there's nothing past a certain
register in there, but 0xf00 is what I believe makes more sense here

[...]

> +				 <&camcc CAM_CC_CSI3PHYTIMER_CLK>,
> +				 <&camcc CAM_CC_CSID_CSIPHY_RX_CLK>,
> +				 <&gcc   GCC_CAMERA_HF_AXI_CLK>,
> +				 <&gcc   GCC_CAMERA_SF_AXI_CLK>,

Please don't forcefully align these

[...]

> +			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
> +					 &config_noc SLAVE_CAMERA_CFG QCOM_ICC_TAG_ACTIVE_ONLY>,
> +					<&mmss_noc MASTER_CAMNOC_HF QCOM_ICC_TAG_ALWAYS
> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
> +					<&mmss_noc MASTER_CAMNOC_SF QCOM_ICC_TAG_ACTIVE_ONLY
> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ACTIVE_ONLY>;

The last one should probably be always-on, given we're doing all
voting on the APPS RSC as of right now

otherwise looks reasonable

Konrad

