Return-Path: <devicetree+bounces-221297-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D14EB9E5E2
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 11:32:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 182D34C6797
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 09:32:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C18F2EC094;
	Thu, 25 Sep 2025 09:30:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JbgDKJX0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CA78283FEF
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 09:30:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758792631; cv=none; b=X+yOVZMcbcit+bGCyQb6qDEr0beF/TfJXAXUzvL8KRp5dq4p9kJhILrnC+/40LUwvAk5Lu39Po87u2MN3eqbEntxcW9jBu7UtwJWaKEhZshZ+v4CE8nMesXFSJb8lgBqF6PVjC6pXX/AzOl4S+D2PFpCOJVdFW7G9PEVPeMPJ5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758792631; c=relaxed/simple;
	bh=8N6KmcZ3o0RKZfH/SDgkpHo3kvKOR9AZGJho3gtBrkE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Tel5komREkrlEDUrDDD64iIwndpTABLsIsVA54MeqcEwCmPFdaQS/x5op5jKXU46sCegoNCGwL2w+LxNLgNj9RBWiRASElupiM2ZHV8VFAZBLgLli0DgxfxP2dy75ExVZvd6Q8L7dCWX7ZlMaoaXjlH7jyqtfMnp2MGfiZBUozs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JbgDKJX0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P4bJKF029400
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 09:30:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Iv8LC4BuQ4SAYhRCgkZysNJWxVrScti2b4sGHDBPz6U=; b=JbgDKJX0icycF9G5
	MdA83dtx0SE75ma8JY1SQ4hqHwzXjIS9ub6BM9mpP16w98poJhKFiz44Txh5YwFe
	dq18c8I9NZalxoDFiZ2Mpw5e5YdsK4sqrE6bx/h/UTskQ3vINlOwGgl+EUSjDQv/
	3TU+OKt2nYqhnGFzi5Y+EZjNaG/pp4CCp3obyjHf2KQpDsKNEWTlvPuFren4b9GW
	lCxpl2FX4iT3A8q9zLfS1QIjxcbMt9/Yn7IjncuI78ZyWKlelag0dhzpyd8MOn0u
	+ODT4VSpNfp/LfOtlzTIEPheAUK4pYH+lRItGI6CITlQSgI4DtFLwzZ9mS+Td5za
	B8Vssg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49cxup0srx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 09:30:28 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-78f40a59135so1964896d6.2
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:30:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758792627; x=1759397427;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Iv8LC4BuQ4SAYhRCgkZysNJWxVrScti2b4sGHDBPz6U=;
        b=VqiK0JCdgCjJH0CrKhAle6WZG6TQ43V5TpWCvx8hfuOnHTxqnBzLFHshePlMj6/A69
         4p20mE+MxPMl7R3n9LMnM/NZDy1jkraD0VTZdI3NAoFAvvt+Z/GphlWbP+7t3S2bTLMv
         mfmji8Aq8FjB78k71fk+XgQiUovDtmPvOvaIGqj7pB4oW2GQBosqZUz4MD5l0FMpP8i/
         bYi3WNE6gE5ZBulD7onYyLXZpIcMy8ZaC89sJfyFm1SnFDUl2+yzZAhC0oBLUwkWAJy1
         zMMfGXfjmE5MN+c+80ya8pEWlrHmQs6tODii2R5anKrpmBPXyhSLI10ZDpjMzrEbLukj
         3viQ==
X-Forwarded-Encrypted: i=1; AJvYcCVTikMaHQXfUvyWb//wWKx6aU9xnmrywbLpDQnu6aYQf4u2ZKPXhgeDHEROmXkzXZjLLJwE2jue7iuo@vger.kernel.org
X-Gm-Message-State: AOJu0Ywv7Ihz5kFHI2N1hhoxiGV4KRWhUBGuJVfc4itc+qqNQNznzgF5
	JYSE4Dq8oJwus9E/ObyagDj2TMq75VwioCeX6Iym7YEQxcEpu9CNJHCmCe/U0zHpY6a9lM6sjqG
	wgWaDCb9eHyJhcCqElWo6YS9ycwSH+4cl+gsSxzDyMTVNTtlV09togNF3M+jKpADC
X-Gm-Gg: ASbGnctOE/Qz50MJgywTFLG/3WCFclMTLzYFq9Vztww66naG3riYQq2Umzwb1NGmees
	0YVNp0o6KLrhqUJpE3boYsJV61ByFRqalAYJB+m2zuDwkcW+4OCeCTxpApi7EyFHLu3q5/YZB+u
	roNwcWc5+7khwlSjgvzhwMXb7fjjddKru1sZbzaUk5v4FIO89vOTGrRWS+03Si78MOOImf2a2Ph
	VMHJbKaJ78hRveSO+x4anypG6tpWXw4XGSVchZ+PR7Za6mK+S9sIdmye+H1s/SjuhSSdlF0BSNF
	gPbe8lPGvYygBE7tNwguhiqFPULn6cowrsMw5HfZDaoHOIMrd1ydjuqy6TKyLRHnc8BPrsxOnWd
	ciBgLqXE8O9a7aup6ZBxbzA==
X-Received: by 2002:a05:622a:1905:b0:4d9:5ce:3744 with SMTP id d75a77b69052e-4da4b048343mr25294191cf.9.1758792627024;
        Thu, 25 Sep 2025 02:30:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF84Vn/lXM+1k1uOOSGaZwHXSDbKHURPqKNM2+JUtWDEXTRhKuuefGRswtdVWYy9+dsAxkAmQ==
X-Received: by 2002:a05:622a:1905:b0:4d9:5ce:3744 with SMTP id d75a77b69052e-4da4b048343mr25293891cf.9.1758792626509;
        Thu, 25 Sep 2025 02:30:26 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-634a3ae3080sm934726a12.34.2025.09.25.02.30.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 02:30:26 -0700 (PDT)
Message-ID: <239bc397-c746-4ec8-969a-9e3f3c3dee3b@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 11:30:23 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/9] clk: qcom: clk-alpha-pll: Update the PLL support for
 cal_l
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Taniya Das <quic_tdas@quicinc.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com
References: <20250924-knp-clk-v1-0-29b02b818782@oss.qualcomm.com>
 <20250924-knp-clk-v1-7-29b02b818782@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250924-knp-clk-v1-7-29b02b818782@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=B4a50PtM c=1 sm=1 tr=0 ts=68d50bb4 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=QDpnt0wtCZc4EWvjjt8A:9
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDA0MiBTYWx0ZWRfX1jWb5BgNhXPL
 aOppZG2KGCC7sWfLbkijtGpK2Fury81RxMEmSTLoN+8QQVCaqI/ae6t+0hjvlc5mdbY/OLZn5MU
 vZAGnxadzXC+pbWd83FgqbFR8vuByb6TN+ngOnKiJaf+huNkoj6YmCZtCeK6A2uNDnOZ/Zz26A1
 Gqrf8fcAavA62vMcL9ibN5iBi+tF5EUA852xyJxT1FIo4w9OCgEHsnuxRnN5dFn5kKFy9Hae5d5
 IhQe9NQMMOwQiLgQXwW+ctUDJZh+9owuuoiHricKzUbLNuqlwlJxIQxRze+1HlEfZZzp5cNawZh
 vcFv53nlNYxfX/HhDjoE8Y2ue2mIwOFBByj62GDYdt6HSh3RqtIXw5LsoQ2kn8R/FJIURTYTlA8
 xlPJN9gU
X-Proofpoint-GUID: yUi0u7COBhn8wjTMHqhPHEEnSLGXU04w
X-Proofpoint-ORIG-GUID: yUi0u7COBhn8wjTMHqhPHEEnSLGXU04w
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 suspectscore=0 priorityscore=1501 adultscore=0
 phishscore=0 clxscore=1015 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509250042

On 9/25/25 12:58 AM, Jingyi Wang wrote:
> From: Taniya Das <taniya.das@oss.qualcomm.com>
> 
> Recent QCOM PLLs require the CAL_L field to be programmed according to
> specific hardware recommendations, rather than using the legacy default
> value of 0x44. Hardcoding this value can lead to suboptimal or incorrect
> behavior on newer platforms.
> 
> To address this, introduce a `cal_l` field in the PLL configuration
> structure, allowing CAL_L to be set explicitly based on platform
> requirements. This improves flexibility and ensures correct PLL
> initialization across different hardware variants.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

