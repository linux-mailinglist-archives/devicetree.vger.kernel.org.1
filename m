Return-Path: <devicetree+bounces-166193-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E6E24A8691B
	for <lists+devicetree@lfdr.de>; Sat, 12 Apr 2025 01:20:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DC2361B84ABE
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 23:21:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FF582BD58F;
	Fri, 11 Apr 2025 23:20:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GIxDHCjO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18CED29CB34
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 23:20:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744413646; cv=none; b=M37KRr3Ah0TTvBA3zs8m61OQ9jcX2HIpJv9eSA5FphVK96TgzaMgw+okU2jYUNn/UVFVNDXHAkgx82P0y8AYv/3UVR4tpOkWNgFyuEJKM/+ieQU8g1KY78OjVKM3I1fSh0oIArY7xvNoCwwWN6ENftnZgCdLgpg+3LOYF+5mhdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744413646; c=relaxed/simple;
	bh=ItVv9aECvS4v/j8NAaEYqjsxXiY/DwMuKLH03BU4TEw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tzr16IXtpR2NuQhQ4uHkSucx5zh+mYSHL6twNtc4NW6GLLBKmSPk2FO+zGlLIhk3ENYNuyYl2iD+5Ia0QQUqD7SKrkqXSft6fmxcn89yI433lv1/D6jBtMhzh+3n2w7N06sEhUsRcE7SqaKrlFLHzz2d5aS9ALRKf1Q2kaYx2iQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GIxDHCjO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53BG5BdR032003
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 23:20:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0ynZ5lGPahO++H1E3LeYAHNYzJtD91JsU9K6PqBRu/8=; b=GIxDHCjOIQbX2CIA
	DxLe36WT9vyNNzSE0DqQK7L1dzfcgY5VQRdsA4Ab1uuBBujqoq8bO2d6BSbCL3ff
	JmAZrEYEL7P2pqagVDoqThzRVceMPWF06wQWiTgEiGxRBBUdD7FzL3FO8ZrQVQFD
	r9Ex9FHKotbZPjFfAc4GIsfda9u9OoYx8Q+8gYjwlHiH/IuGMuDx/kuM+ozCKrEF
	93wCNtjCGsGDKaJ5ndn6og76a2GC1X9ZVXoaJjWawxpiHshZSpvZwgMs38mq+zqx
	3nQscxhnHt6S3+GnE/hcH0MCQ1R9UnuFhWt44Rx/86YcU9HRaZ/x3dXSiuCLDBlV
	R1uXLw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twpmkswr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 23:20:44 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c5841ae28eso64742685a.1
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 16:20:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744413643; x=1745018443;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0ynZ5lGPahO++H1E3LeYAHNYzJtD91JsU9K6PqBRu/8=;
        b=pHOJ1cthRc3kUT5LRLDvb1931wbP79ppoWR2mfSkANIdZMTVDELiKV3Y7gCRa0c2mq
         eCUpS4L7g2rmGCUzfRDdTIAwkKeukA7xJimHNQsBWMO9XR63EMb5zfGZl2I1jRKbaK4k
         ubOAiZmJiSFWFopPezVYU4vc8Dczf0PPJs1gjrBPB+7GmvLRh09vWf+7y1ikeF//jt7w
         uiMW4h++T9SrYiqAGJ2k48CVSHlUIYiZ8sqqjLhAasNoTnSD3yEWvTX5Hs7psVhA5lga
         QHiZe9IWs74y8jsC/maTGfe0sOz4eMzcehSUNS4Np0hxzAI9qkXoZQg2ikShJDIUY4ef
         avYA==
X-Forwarded-Encrypted: i=1; AJvYcCUEoDIxaOOyDJGIfBcFyA2SJEQVerqzacYLA5BImlW21skx4U8TAZrKErCRxfHvcxE6U1+YF1M799dZ@vger.kernel.org
X-Gm-Message-State: AOJu0YyUVHxMwMo7hZJ1T5yniFDSTINjoG1yeCktPdBlEj549tfS4KRR
	+G1Z9RIb1+QcJIZ5I+JepiCrPTVGJf3zvcgwSMBwYgutYdZek+zmH0xnOVlqaKtENUjg9jLYsuK
	v2owNhiuqvg8vOO6e45V+9ZT72Pd4ZVCqBPIITmJeGHm5jGwHSQIPWiV5f3tk
X-Gm-Gg: ASbGncuDoqFd19y21odsO8ww2c+ay5i+itE9xMKAHTXR6JE4CgLNIDt1rEhMLUODvih
	XNuRh4o781AfXvEFclYL0FE6WnBDyK27tcBMpA/2VdcuGHCzHSFKuGv7MIi/ymwqS+us3rUlPD2
	h5k3Oaq37dVAAiDIR+sYl34TAgJECM5C8Hv0lEbUyZ8M5WQgiUENqUYtbXMI5tDe5OPPKHZx2Ok
	X4F75ndvf2ZXWlPsmUICZPRwPB3F4V+JO+I8NIz+WXL08ivuV3Qoxn9Qc2SZABkevweqvoGOPu5
	fPTc/GvcwDPAYHXtDPAHukscK7dnYjohSryrx3BE/kPZuz69R0ke81/dg/wz/O3yog==
X-Received: by 2002:a05:620a:404d:b0:7c0:a898:92fd with SMTP id af79cd13be357-7c7b1af6badmr181749885a.13.1744413642524;
        Fri, 11 Apr 2025 16:20:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IErC3V5L5WaKtK5ntsNCBMz1sCeflCPCZiPX/TOLUhw62NWHCCe20rY0BgJeksBKJFfhu2ytw==
X-Received: by 2002:a05:620a:404d:b0:7c0:a898:92fd with SMTP id af79cd13be357-7c7b1af6badmr181747385a.13.1744413641914;
        Fri, 11 Apr 2025 16:20:41 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1be9c1csm513064866b.58.2025.04.11.16.20.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Apr 2025 16:20:41 -0700 (PDT)
Message-ID: <eb6e8452-db37-47f7-9265-fd47d4cb69b8@oss.qualcomm.com>
Date: Sat, 12 Apr 2025 01:20:39 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/3] Add Qualcomm i3c controller driver support
To: Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>,
        alexandre.belloni@bootlin.com, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, jarkko.nikula@linux.intel.com,
        linux-i3c@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: andersson@kernel.org, konradybcio@kernel.org
References: <20250411113516.87958-1-quic_msavaliy@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250411113516.87958-1-quic_msavaliy@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 5qhNN2yjbhYgZ7-52-bZW8DS44D_OtFR
X-Proofpoint-ORIG-GUID: 5qhNN2yjbhYgZ7-52-bZW8DS44D_OtFR
X-Authority-Analysis: v=2.4 cv=MpRS63ae c=1 sm=1 tr=0 ts=67f9a3cc cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=XURAWvRzPrrx6AlyFGwA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-11_09,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 mlxlogscore=999 clxscore=1015 priorityscore=1501 impostorscore=0
 spamscore=0 bulkscore=0 suspectscore=0 malwarescore=0 adultscore=0
 phishscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504110153

On 4/11/25 1:35 PM, Mukesh Kumar Savaliya wrote:
> This patchset adds i3c controller support for the qualcomm's QUPV3 based 
> Serial engine (SE) hardware controller. 
> 
> The I3C SE(Serial Engine) controller implements I3C master functionality
> as defined in the MIPI Specifications for I3C, Version 1.0. 
> 
> This patchset was tested on Kailua SM8550 MTP device and data transfer
> has been tested in I3C SDR mode.
> 
> Features tested and supported :
>   Standard CCC commands.
>   I3C SDR mode private transfers in PIO mode.
>   I2C transfers in PIO mode.
> 
> Signed-off-by: Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>
> ----
> Link to V3: https://lore.kernel.org/lkml/20250403134644.3935983-1-quic_msavaliy@quicinc.com/T/
> v3->v4:
>  - Dropped "clock-names" property from dt-bindings as suggested by krzysztof.
>  - Makefile: Correct order sequence for i3c-qcom-geni.c.
>  - Indentation corrected around print statement.
>  - geni_i3c_probe() : Exit with return 0 instead of ret for success.
>  - Added sparse annotations around i3c_geni_runtime_get_mutex_lock()/_unlock().

So this is the third time I got this revision in my inbox, previous were
<20250410084813.3594436-1-quic_msavaliy@quicinc.com> 10.04
<20250331164648.2321899-1-quic_msavaliy@quicinc.com> 31.03

b4 should be automatically upticking the revision counter, please don't mess
with it manually

Konrad



