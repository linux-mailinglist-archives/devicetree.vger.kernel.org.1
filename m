Return-Path: <devicetree+bounces-218659-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D70BB82DCF
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 06:14:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B95533272D1
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 04:14:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64B3F246332;
	Thu, 18 Sep 2025 04:14:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SblFZEZ4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F7721F4181
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 04:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758168865; cv=none; b=SiOx8WoO+KnqQeRg94dNe6PtyOCTrGRV5KDBKbEqJS/jwNxg5kidIskX6QhG4Xrd3vl42xlTCvat3Eh6Y/OCSaPyMiKUwaGZw81lOWOMdPlEht0IpmUUhT/vSVa4EUVKUgbcFML0OxBJHJqKfLUpnwXOZNbM0PvBtpM3823OI0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758168865; c=relaxed/simple;
	bh=xsSC9NODBLQNJO8UOBzzlN3x3OgvcCBfrbA+2H0P1No=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=l26wbQqD1kMAInNum4QEsE367SZk63Qsns2ZSxyWveyUlyDqKUVYivi1U/w3x63n0lZQrYnug6NEvXSCKabDzewG0lpFVbGAA+tafmY0zn7TyaoVhlRPo2GARb9AKcOR4rV92c4HvNnjRQ6sZ/OiywQaOPWHG/AlWh6VLiP5ExM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SblFZEZ4; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58I33KT3026798
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 04:14:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aCNDmHkvNY9CrJM/mPFO6zJGKSeooOfxAkQ8HJXEz3s=; b=SblFZEZ498279MOz
	Hkw+Et0q6V/VIfMyuduzYbMcR53L3BpndHtO9HOuhb2f4Hw1fLg7919GpnCSZ5fi
	1lkPrHrO9HP3YOujDwG6g27veIL5hvZhaAQdhwGlwI2+qLld0ibftLFTVH8klWGs
	JGRqyDKY/3pbUdGBQGaN7MMCNYv4muGhK+bjdS6Sal9+5+g+iX0ydurZ/n632Hfe
	ChA3MEjRWwPNL9mzdQqP1dHosU8iSu7uVuXKBgj9BrG8LNeUdMjzoRRPuCcRPSwX
	7WDHvKZcSu4bq4XyH+ShQNtsXNeDbvmcPB8/WfYwu6sjb8d/VYOPF19fpvZtoIWt
	B+43Qg==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fxt4w3j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 04:14:22 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b54d6a67b5fso419739a12.1
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 21:14:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758168861; x=1758773661;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aCNDmHkvNY9CrJM/mPFO6zJGKSeooOfxAkQ8HJXEz3s=;
        b=HoGieSBAk56rOfpeLNA0IsobAFHBX3/LUyLxgq+aLyHg9SzvfwXX/BuIftBmiaJBk8
         ZbqPd7yNzPQVOmf2v7X+x6HJxVsCOVSCb9c6rnHNboqNjijjNAZdOMxhT26oDGpgEn/X
         HtH4QL2FvwOZ5IKLQVqmAEiXSi0WoV32hMF5POJEd6QgCqzsrYLfGCAAgEF7xKnZqWl1
         31BNwrI6gnU74+rG3ddmXoQSLLSoSG+T8QuZhYrdsA92xsuu7P6pSk/ct00/Pkd6KuGr
         ZloEFKhN8Aj0lS/YM2XpLr6Hes4Ce8xpwn1aWSWjzE1OMXyYm/OkkXtYO7HX212ix8Pm
         ls2w==
X-Forwarded-Encrypted: i=1; AJvYcCVBr1wj896PI79UPnR1R5ESeQOtDYrfpTXAymhB5JqVpBu/zPncigHxtiVbH2mPQcxqBSkyFLkABOox@vger.kernel.org
X-Gm-Message-State: AOJu0YwjAXBCvsEsqqvzU2+Qt12feErWwCVnwc3cPisoSbqXHF6Wpsc2
	Ss8OidwT5KF1ZkGEvTId/dRWpYFcu0kcx1Iyz8k9Xo8oiKUSsweqdM2KMq5+HOkX4Q96F6np+DX
	sGyCI4V950MR7Ue9FbfVWs0C7kjvzRNhLinTY/fxF+B+BtFaVaCYKyVQXOT/p+2fX
X-Gm-Gg: ASbGncuWg6LgUhZGXuvyAH7tmjmjN0+Lzmi3yFvZYc11XsSjN/K5M5AbGBDEshBI4gC
	koRc3UIAWaYmFZXFpFmrol8M/8kD3QOgiYl73Bhra+nepavl30oUTh+ZjPZLq+gqFOTNaqOd79/
	VyIexH5nvjH8BoUUkm1xrHLGgQt7BypfPcO2JjMoSRKrOF+7bVd6iCekeu4qdrsHbXQPq91HTtE
	xbyU3LQdeaDTADsI45OR5GOMQmhrLccqsc0prrtV1UaTUsE++oxrC9cTrO4jsQKtkvvzy8Ntqz/
	feyhGpt7gTZucRfHhrKloE0x7eY+Z7de2G27u0FDsQKS4xYJw90FjtS1AM7LDE263raagoYi8mj
	QMcD7eOKERYKJM4n1pmjsvJW9cT3od5dr0/Q=
X-Received: by 2002:a05:6a20:914d:b0:243:f5ba:aa82 with SMTP id adf61e73a8af0-27aa1e62dd7mr6641634637.30.1758168861317;
        Wed, 17 Sep 2025 21:14:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEESmYhA9ZUlRBuUTUXtxNrHCYKFq5Co1XH0AnMN4ttsNfHWhbopdOhRVpdLtRhJpb6K+upXw==
X-Received: by 2002:a05:6a20:914d:b0:243:f5ba:aa82 with SMTP id adf61e73a8af0-27aa1e62dd7mr6641593637.30.1758168860852;
        Wed, 17 Sep 2025 21:14:20 -0700 (PDT)
Received: from [10.133.33.39] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3306061aa5fsm996954a91.6.2025.09.17.21.14.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Sep 2025 21:14:20 -0700 (PDT)
Message-ID: <b745c515-2264-42aa-8d92-663efc7f6276@oss.qualcomm.com>
Date: Thu, 18 Sep 2025 12:14:09 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v12 3/5] dt-bindings: display/msm: Document MDSS on
 QCS8300
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250911-qcs8300_mdss-v12-0-5f7d076e2b81@oss.qualcomm.com>
 <20250911-qcs8300_mdss-v12-3-5f7d076e2b81@oss.qualcomm.com>
 <20250918-spectral-seahorse-of-witchcraft-69553c@kuoka>
Content-Language: en-US
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
In-Reply-To: <20250918-spectral-seahorse-of-witchcraft-69553c@kuoka>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: RW3KK8XlCpFzBeMT6QnRL5_DVKTKFZl7
X-Authority-Analysis: v=2.4 cv=bIMWIO+Z c=1 sm=1 tr=0 ts=68cb871e cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=P-IC7800AAAA:8 a=EUspDBNiAAAA:8
 a=zVao1zPCBEz49K_-8u8A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22 a=d3PnA9EDa4IxuAV0gXij:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX/M6Tm+wYwKOa
 WKrE8fZ3+cWRrv2F1pW0Siyw9oam+b/UE80Ekqh0XbU8ca2ifCEwEX/tRNxzutfbrwRlGTaH/Kd
 fiB936MjgwQUoPwGbssOy/cK+3QaKTdnrwx27gy/N5iWe/s3Vn/AbLtL8Ag0Wc4XPYajp/K4vO9
 ju4xMesJPStkiQH3mgk+IuqVdoLpqGTMRIajtRNjeIb+Ohl0DZRwiWqitvgmFKMddfeHuRiApSl
 1uEF4CWTSR/gdilkopvJT4dl+15UlLUFSSKYKo5ATW3dJMbowfQaTjg8Lgx3zbe5Hc6sV3W05n9
 URcYjg2VmTYQTklw0c9FY9jALzrgosJWPze+WUqHU+okIRlo8KMG44M9vuowBur9z9HZQLEOv6d
 dSvMPc4N
X-Proofpoint-ORIG-GUID: RW3KK8XlCpFzBeMT6QnRL5_DVKTKFZl7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 malwarescore=0 adultscore=0 priorityscore=1501
 suspectscore=0 spamscore=0 bulkscore=0 phishscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509160202



On 9/18/2025 9:01 AM, Krzysztof Kozlowski wrote:
> On Thu, Sep 11, 2025 at 07:24:03PM +0800, Yongxing Mou wrote:
>> Document the MDSS hardware found on the Qualcomm QCS8300 platform.
>>
>> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> 
> Patch v11 and still basic issues. I am very dissapointed.
> 
> <form letter>
> This is a friendly reminder during the review process.
> 
> It looks like you received a tag and forgot to add it.
> 
> If you do not know the process, here is a short explanation:
> Please add Acked-by/Reviewed-by/Tested-by tags when posting new
> versions of patchset, under or above your Signed-off-by tag, unless
> patch changed significantly (e.g. new properties added to the DT
> bindings). Tag is "received", when provided in a message replied to you
> on the mailing list. Tools like b4 can help here. However, there's no
> need to repost patches *only* to add the tags. The upstream maintainer
> will do that for tags received on the version they apply.
> 
> Please read:
> https://elixir.bootlin.com/linux/v6.12-rc3/source/Documentation/process/submitting-patches.rst#L577
> 
> If a tag was not added on purpose, please state why and what changed.
> </form letter>
> 
> Best regards,
> Krzysztof
> 
Hi,
Sorry for the confusion. I did intend to remove the Reviewed-by tag, and 
I mentioned this in the cover letter, but maybe explanation in 
cover-letter was probe not clear at all.

This patch includes three changes:

1.In the displayport-controller compatible property, "items" was changed 
to "contains".
2.Use "qcom,sa8775p-dp" as fallback.

These changes might not be considered significant. So I’ll be more 
careful next time. Thanks~

