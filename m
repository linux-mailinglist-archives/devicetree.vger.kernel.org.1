Return-Path: <devicetree+bounces-252338-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 01F3DCFDC59
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 13:53:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7EC1A3109EA7
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 12:46:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA01231771B;
	Wed,  7 Jan 2026 12:46:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RN6iTrU3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HFGL+CeF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3033D316919
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 12:46:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767789981; cv=none; b=ZOzwGv9/MruydKWr1VDOakTLUJiIa3RrX0C7bIBCpMlK+StsuQ32rJg2VOcVKjq7TxfkCOzPzvCsW00k6IYL1iCWQA4eHa6f5I6jU6rs8JnVA1Zzv1Cur2HrAvdhSPRRT4rCxSIKNFBka/x+Cbedz6i1wWlHuCqSIr9SL5GpQ5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767789981; c=relaxed/simple;
	bh=sh+cnHz7ShryfIWwwgaf/t4ACDaWPKuqAEqf4Acr7m8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jEYRKuf3K4NI29l0qvwL6SZ5VSN9zVEIIgm49kogHxeljj+NarRZnR0AkYr1RwkgWVJRi61OKTqv5PCKMmnlS85VRIAlS+NVl3OI1eTiSGnzRJ+efARCnpwXaGy7U7lHWtmdpY7NNO4xj3yXqeI9Fb9z85zsH/pU3E1GeLlfFb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RN6iTrU3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HFGL+CeF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 607BgNIT1642761
	for <devicetree@vger.kernel.org>; Wed, 7 Jan 2026 12:46:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3yqvCDKqiNpbPEHOy8tGkkpTnMSnoWF3DxtL8kCAuPg=; b=RN6iTrU3VB2qgl9d
	QtU1sc0cDRuwMNnKNfHdpyHoTDp7jYFdVQ5EXB2KINELruGUuP25wuyURuUaDmQx
	pBGyGwlLTk0h0ivGy+me8zBwbnLnp+IoaO5r0W/X0sCJ0tkgNKFFIE2UKWztTg5w
	B+p16NwgDTzfKrsxNGcLnrzp1sqmImb3mcT/Cszi+TFwdWtdp590wvyeymKzlF2Y
	gO8lDdecE69ep/OOKZHYwfrlnbo/UxBZjaJDj5fIkMqNbQrH/dnoShqaF/7pcNj7
	IGI1NvU/G8Fc/P1dliMpaTk79MTrFVlE1Z+oK1saG9unX17kjHTTpsDGaL5jdrdr
	kMCvYw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhgsfhdtc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 12:46:18 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee23b6b6fdso5759251cf.0
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 04:46:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767789978; x=1768394778; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3yqvCDKqiNpbPEHOy8tGkkpTnMSnoWF3DxtL8kCAuPg=;
        b=HFGL+CeF1Le+UzIZfN1IwwxYnUS+mVDtDhy3K4Qzbbdy4PSV75npM5drQtbD+AGbPA
         xp31Wrd8XxtMa/Vmx8T1R5nH7PkVKBJRHcTfgn5zmXMhWJlRd49ydAHZ9uINRtaL222r
         BYs7+91G8PeEa66e95ECul0iH9MDhsI1us1c1WTUk9UmnD7+6Gu7O4/TJxcm4Zhc9GL9
         DN3y7O9SN+sQqxu8R60dg6vQ6bh8iwYyQxmHTMPd8bjC0sIYAfMMR/LFhfkznVM0U59+
         Rm58ZO8D+sGY2sQA4vI4KJNa7YUM6zLnF+aPexXXYWDXwpLLNLmxD7EnrqjPiefZpOcW
         o2Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767789978; x=1768394778;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3yqvCDKqiNpbPEHOy8tGkkpTnMSnoWF3DxtL8kCAuPg=;
        b=r9OzL2/SMWHa+a4EX1n/lcTh8gkgxpPNXetxB9tpDWMdq1woKk0HdMT643dAdqnFGW
         9tIlA1o8rqibsVVTO6u/DXD8TxEn6ZDnE2OikqF28LlhoypW1pOYYmbHL4i9SSBbS5Az
         UzhQvNYL0SFyPwst44Plhwb2fPkp+EfxKZwVOfpYqJ7w3M9SZytpRRxcQiMZAwq2UxQ5
         ILhjGxzxeYhvLkH2+s1lqBvbZ9WHHW8T9v7GeRyzah+4/CjhOZ7CjbCgq2/DsxJqXc/g
         apK27kdPFWsn9lGjVaE67XxEebAcNpgTcT6u/zt9SPn6R9E7aLQB7KSe9O9ZIxAr0WJ5
         dZkw==
X-Forwarded-Encrypted: i=1; AJvYcCWJcNOoxg7atLGpFV0pjq5CneHKEvucnESYlvV607cRHqDNWkL3+eaG3FHBkT52mnGSbyoNf/6lZNp0@vger.kernel.org
X-Gm-Message-State: AOJu0YywHatF3tA+0mJosheSAALHHp40cIF291mSmjXgsm20BQrbtEXd
	vxHstMM+7RuN4JHOjQl/PItLHvWpAtSZjVOQbPmfeEXQ3hBwLSspnKhxN3t+fZvSKuuSEXjLqxn
	R0s0JuZiTt7mRBdY1XB5lb4jTqWmZaAVZ9sj0M9b/q8u5FwLIqLCuKX38IJPqSXML+VMUuQlf
X-Gm-Gg: AY/fxX5+NgaENvVNVyEhwUebY8BFdIOXZSmiywaPuaUcIc8jAjMqZJTXjkpWXWILTAs
	fqB9p1K6sa6Rn+5K3lVSQ51MrZoMJW3NMEemJtRdv8b3wEpmp95+rTAj9ECTWv5XGwqqAvuA3cC
	8CSBgLHyAOw665IP8JLybfeBNW8jLyjU54X5DCtgoSydricyAbcioO+LxX0EYn73GV54b5jABwP
	cEKDU5OgimM5u9PVedGw0cQluIjq0NdJUgDJrOS8bfgBn5gJU4nx6Aehkb2RURkeBTZNpdPSBVi
	DRuzTJfEPJW9aK6H0QN+UrAkrsLu9wiQuOzGizt6lDNWSiq4rGK3NHL5u2r46/PBgv+wWSIc0OF
	xNT0JCILz2qjHi4+8mrBn1NbiqwM1+1AhWFLUd2dy4bEpk/fHLxFj8jJwPUYMAvrB3tQ=
X-Received: by 2002:a05:622a:110c:b0:4f4:b372:db38 with SMTP id d75a77b69052e-4ffb49228d5mr22508181cf.5.1767789977851;
        Wed, 07 Jan 2026 04:46:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHuq76ypjwiPaJO4Y8VhWJy6P9lceYSJblxYJEvU7RctuGjrhMp1z5PIJTROZtJnaK85GCmQA==
X-Received: by 2002:a05:622a:110c:b0:4f4:b372:db38 with SMTP id d75a77b69052e-4ffb49228d5mr22507821cf.5.1767789977325;
        Wed, 07 Jan 2026 04:46:17 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a2bc7ffsm512039066b.26.2026.01.07.04.46.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jan 2026 04:46:16 -0800 (PST)
Message-ID: <6b874e4b-a906-4153-aba8-b0ab7a12d5c1@oss.qualcomm.com>
Date: Wed, 7 Jan 2026 13:46:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/5] arm64: dts: qcom: qcs8300: add Display Serial
 Interface device nodes
To: Ayushi Makhija <quic_amakhija@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: robdclark@gmail.com, dmitry.baryshkov@oss.qualcomm.com, sean@poorly.run,
        marijn.suijten@somainline.org, andersson@kernel.org, robh@kernel.org,
        robh+dt@kernel.org, krzk+dt@kernel.org, konradybcio@kernel.org,
        conor+dt@kernel.org, andrzej.hajda@intel.com,
        neil.armstrong@linaro.org, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonathan@marek.ca, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, quic_rajeevny@quicinc.com,
        quic_vproddut@quicinc.com
References: <20260104134442.732876-1-quic_amakhija@quicinc.com>
 <20260104134442.732876-5-quic_amakhija@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260104134442.732876-5-quic_amakhija@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDA5NyBTYWx0ZWRfXwv7FatPQZDGo
 JQrrSbxuZ/MltnKONj8yFJBTVB3yXqPj3aiOHtY9UsGi4WAbSOMvlAS6qQN6jac9y9mazvBH+bu
 6iXGFDBtXWQo42eCnvqOJwat6uW4POgz2pK45TM77T+gu6C0E6ed2AF0UpOo1y95MMF4YTbI+Tb
 ooW43WRxR8RlQJ9X0mcxZp2KRkkgXKd3Pl6QSRvSsINhhMJV4oGXBBrDjmLYXIF280UxbK8eGFh
 673J57Jac9ozKL2dZl41gxwdPtgarxsDbuS05CtZTQk0tbxq+o81BK5fsbAIWCFUOIwXaQdg0ed
 2uzd3waUe2bdD6P4fZobI9sTpkINvUTbtMqPRtQg5YZ3pha20/tCea5HEuBPjdcutx2XLoDdXD+
 9QiuLJqRbRpWjIbH6TQ9YE2NYHZz2ikyIimQynuGKjjbQa24czTWcK8cwcHCkelzoHHQavKpiMz
 Hoya2Wj85YyBWfBQKFA==
X-Proofpoint-GUID: dJM248c3lRMt7nvUak5z1Kba8iFTYmDH
X-Proofpoint-ORIG-GUID: dJM248c3lRMt7nvUak5z1Kba8iFTYmDH
X-Authority-Analysis: v=2.4 cv=Abi83nXG c=1 sm=1 tr=0 ts=695e559a cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=iMXfbfRCx5d9ngtYL8YA:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-07_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 phishscore=0 impostorscore=0 adultscore=0
 malwarescore=0 clxscore=1015 lowpriorityscore=0 spamscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601070097

On 1/4/26 2:44 PM, Ayushi Makhija wrote:
> Add device tree nodes for the DSI0 controller with their corresponding
> PHY found on Qualcomm QCS8300 SoC.
> 
> Signed-off-by: Ayushi Makhija <quic_amakhija@quicinc.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/monaco.dtsi | 102 ++++++++++++++++++++++++++-
>  1 file changed, 101 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/monaco.dtsi b/arch/arm64/boot/dts/qcom/monaco.dtsi
> index e44fd5c33816..052ccfa6a147 100644
> --- a/arch/arm64/boot/dts/qcom/monaco.dtsi
> +++ b/arch/arm64/boot/dts/qcom/monaco.dtsi
> @@ -3,6 +3,7 @@
>   * Copyright (c) 2024 Qualcomm Innovation Center, Inc. All rights reserved.
>   */
>  
> +#include <dt-bindings/clock/qcom,dsi-phy-28nm.h>
>  #include <dt-bindings/clock/qcom,qcs8300-gcc.h>
>  #include <dt-bindings/clock/qcom,rpmh.h>
>  #include <dt-bindings/clock/qcom,sa8775p-camcc.h>
> @@ -4858,9 +4859,18 @@ port@0 {
>  						reg = <0>;
>  
>  						dpu_intf0_out: endpoint {
> +
>  							remote-endpoint = <&mdss_dp0_in>;
>  						};
>  					};
> +
> +					port@1 {
> +						reg = <1>;
> +						dpu_intf1_out: endpoint {

A newline preceding a subnode definition would be neat (and matching
the existing context visible above..)

[...]

> +					port@0 {
> +						reg = <0>;
> +						mdss_dsi0_in: endpoint {
> +
> +							remote-endpoint = <&dpu_intf1_out>;
> +						};
> +					};
> +
> +					port@1 {
> +						reg = <1>;
> +						mdss_dsi0_out: endpoint {
> +						};
> +					};

Also in these 2 cases

In case you're going to send a v6, please take that into
consideration.

Konrad

