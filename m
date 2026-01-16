Return-Path: <devicetree+bounces-255965-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id CCC9DD2EFCF
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 10:47:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5A25F3009D64
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 09:47:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4680D35B15D;
	Fri, 16 Jan 2026 09:47:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AVFYAr/G";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="L2fzE33R"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE44022173A
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 09:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768556856; cv=none; b=nLVIoDWLdldcoDxj+jgLi28wKMXgqceVQeJglIK012q7G9JsnqdrXANF5eFswWfCixi/brTVIt1QIoCyMKbeIYy6/qIG/oyuavVYKBoB57Uqx9Ky9F8mqyhbkAvpGUrVAOh9z18vrVBsQzQOddGahf66Hw3zjpN3JmixkDRqFOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768556856; c=relaxed/simple;
	bh=FrH51ccNgNjnJHpV2c2Dp8Yi8KNRcZjTD3zuBK4PjoA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CY7GtQVixeMjI/h8l5vSsf8RhSfd4sUPS4VgLDsjow/vZq1LnPP4sKtX4ESOMJVgKAMgYi86P2iHS5s7v5v533VpzzLTzE5Fsc14qYLdZ4vMKuCmwNpBbmm091+pkL3mNm3C8KMl72TlGItElTMhNrlsnt9jYwgxbGXnUFAtuj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AVFYAr/G; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=L2fzE33R; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60G85SuD3074904
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 09:47:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kelGpve6vDB1Q7G0lH4/Aem3uOt/FIByHaY9xLBdYIQ=; b=AVFYAr/Gw5Yz3bl8
	K7C5l1gyJ4PKGi1okicuuCGpsX8ipgbTZmOYXejOWeGBj+K4vWWoHzSQSvNGrQUG
	31CZZj8+/zLia7+rVLJlwE9dR/HpPMeJwDv8K80MazFnsmmIsuX83D13r0lZyZlc
	2esbOKFfhYI/zed8AMjXCyftC0oMDdgz4xpWqI6H4xaa5ItTcAWuO3aMrBsL/1ci
	1N/6R1OTQYqo7HvwT37Rf5XIY/f2GX5T4QP59SKzkYVn02b4bX/6wJ1Gmd0MJyWD
	wgwfP3njtrpr4oZNh+ml4IP3+e/khTpRqE2FfzHYD+Y1LXfVqQw7HWASCwnFR6lj
	EkzSvg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bq98jspcs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 09:47:33 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-29f25e494c2so20773355ad.0
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 01:47:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768556853; x=1769161653; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kelGpve6vDB1Q7G0lH4/Aem3uOt/FIByHaY9xLBdYIQ=;
        b=L2fzE33R1kel0/GCUPz5zAxQeYGe+iC6vAVDTOlIliW9bc8hsJ8227IIc2ti1QgYcz
         JRGE6ONMfmOPQdanzisv/AhPU/2nGI9ZG0QWc4fkP2g1t3cVneNWLkaWEBSHdUWbj1Jo
         ZvOL2hlgqihHUOzzQETvzeZY2i5hun6VLRoRd+y1t3Ac86/eNaAtfPeHB+pm6R2EF1Ko
         JRvp6tlsLW+nA7u7YzFYRBvuhfYNFD9hiUozlL4hltgdP2x4ySXPdH54vjQgvUwXCC5W
         BxzoVrwXAr/UnjtzCWyMIfw0JxyKqpdhYXsDAQEdO05cTZadzxnBrjQ+aWcG+oS/ytgC
         53zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768556853; x=1769161653;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kelGpve6vDB1Q7G0lH4/Aem3uOt/FIByHaY9xLBdYIQ=;
        b=DawI5udPCVsSQ4BDmeY5ihbVvdB9RrruHpz4h9slPSqT2PnbPe5oK2IeFMUx+N4OyN
         CTK/WSx3F5MqxpiLhXsXN7JQECirHaaxzbN/G/aifJO9TBZfMBI4zgHSHdpMNxjVnb5N
         fzKXjAbAFlB3sDR5LcrDjlpqAiuq0h01PfYKMbzxKEMGiCJPgpqK604YaaIMZJcK73sc
         sRSRE8OwufQcRwoXcBPFzKmnaPsRLI41naT/3iyhachMT1AOpsCaO4yVr0l8s56g889U
         +lANpg2zcA7w5OU6/JT2Z/Y74lQs9KJqK9bhRZeXpektjutHt4cyZIpyE42XS94i4RS2
         Dw3g==
X-Forwarded-Encrypted: i=1; AJvYcCWZpykoh56qsl3g9YqZ77x2dlpU1IcJOvXuLtyjNEkuMj9OllfVWoE6c2ShyH1vb6oQRZqwiPkF2S82@vger.kernel.org
X-Gm-Message-State: AOJu0YyBOPFVLIeuDms7+CZaAfltWy5NsUUpOKRekjRnwXs82Zojm3oi
	pZUABl+2fnoRKeb4MI757iXzUm4cCBudABErSFt9VoAUdWdvr1qE/oItBzLUkXQgN9KHw7kX5/+
	WgL+QmEpkTewVr0pepNpaBOaFG6ySKfh+AJ02tfD2ORgyzv7PPXsK8b095VYw0QMf
X-Gm-Gg: AY/fxX4QPFVAztareqyMhLCHhYb7CeQMCwiAclYtsa50few/gn05vM2B877zfrZAy8f
	EIIbL+cIEbrUNNgBc7Ss9Z3DgSyuAbMHECC8xxAt5DUUi8dDsNm8khZbZCJV1IxIU2C38Bz/SzK
	FEByONzftC2DuJbfjyMQQVJupXQQacJ/1eN0ALxEyQmrUFgYWUILxA6FFTAeT0FFZVohDCfrnnq
	9PgHHKLuQvSK75+/1zKcWk6mXxLbOqBJSZoVVMjar/lrahebmow0ZNLtqN7EQb3wkTyoxeTCmhQ
	7Ax1JA6QQt8sxQOBlEeLlMq7pM5LzSzUFyaed8zu/85EK03lWB6ZCtufWuh+KGtrDNL5LLozBUk
	RAIr0k6+yr0PcysiyELvba9guAf4/OZuKbEGVR/db0A==
X-Received: by 2002:a17:902:f650:b0:2a3:ccfc:4de5 with SMTP id d9443c01a7336-2a700978f8bmr64217025ad.5.1768556852631;
        Fri, 16 Jan 2026 01:47:32 -0800 (PST)
X-Received: by 2002:a17:902:f650:b0:2a3:ccfc:4de5 with SMTP id d9443c01a7336-2a700978f8bmr64216715ad.5.1768556852164;
        Fri, 16 Jan 2026 01:47:32 -0800 (PST)
Received: from [10.0.0.3] ([106.222.229.125])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a7193dd582sm16631335ad.52.2026.01.16.01.47.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jan 2026 01:47:31 -0800 (PST)
Message-ID: <de160d43-91a0-a527-f0fa-a3ba6d7121f5@oss.qualcomm.com>
Date: Fri, 16 Jan 2026 15:17:25 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v4 5/6] media: iris: Move vpu35 specific api to common to
 use for vpu4
Content-Language: en-US
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Vishnu Reddy <busanna.reddy@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
References: <20251210-knp_video-v4-0-8d11d840358a@oss.qualcomm.com>
 <20251210-knp_video-v4-5-8d11d840358a@oss.qualcomm.com>
From: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>
In-Reply-To: <20251210-knp_video-v4-5-8d11d840358a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=asW/yCZV c=1 sm=1 tr=0 ts=696a0935 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=blWSk0AuXjsE0o78ys1YMg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=hqVnMPCZWYgSQcfks7QA:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: ih9tUfpheRiRLISzj-zZM2pXxkxMynyz
X-Proofpoint-GUID: ih9tUfpheRiRLISzj-zZM2pXxkxMynyz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDA3MiBTYWx0ZWRfX12jR3c6FBKHa
 2T3AdcXDuhDlIR+wtb+CRGPs92VRwWNGqNz23nyHymKUSFsJ3sgPhDuiwzH9Ffdc9enmufZuKUb
 DeHow3V2+3c6hegDKM2hzXB62MBJnP/VtF/rru4x4606eaUrzXY/3+bMhyD5MYpZKsxMqqkhVei
 IUDftFtFZZKp6YDXC7u4biFR8opkFSWZG/gSsrOWNVxHcJIzwX3Ck5jIEJkVSQLd45Ttb1U5hU3
 xcw13vg4/jkf21cP4S6JwKe9mSWiorjKi5F+S9lJ7DEF2Dxr3v6CRNBbFcU904fHMJZ0X2uAT1n
 pYU8WAewq1HczUsmCZAZQKFq6ZFfqjY7i/c4uC/PBPVv0zECXHj2orpZoqiC13OkBkG3+YW9/Ei
 5cA5Prbf/DwrWfet+JXBX6ycoto/XIP0qQFkNEeVtSuFkLMjkWrh87TapLoNFeJxhO5alq5pnJC
 cYdot/kF+ZqscCvXfZQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_03,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 adultscore=0 malwarescore=0 priorityscore=1501 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601160072



On 12/10/2025 6:06 PM, Vikash Garodia wrote:
> Some of the sequence and calculations for vpu4 is identical to vpu35,
> namely power sequence for vpu controller and the clock frequency
> calculation. Move those to common file that can be shared for both vpu35
> and vpu4. This patch prepares for power sequence for vpu4 which is added
> in subsequent patch.
> 
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Co-developed-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
> Signed-off-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
> Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
> ---
>  drivers/media/platform/qcom/iris/iris_vpu3x.c      | 157 +--------------------
>  drivers/media/platform/qcom/iris/iris_vpu_common.c | 141 ++++++++++++++++++
>  drivers/media/platform/qcom/iris/iris_vpu_common.h |   4 +
>  3 files changed, 151 insertions(+), 151 deletions(-)
> 

Reviewed-by: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>

Thanks,
Dikshita

