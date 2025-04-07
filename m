Return-Path: <devicetree+bounces-163612-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 40BCFA7D880
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 10:51:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0C1E9173230
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 08:50:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5F2C228CBE;
	Mon,  7 Apr 2025 08:50:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CVVDZL/g"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C415212B14
	for <devicetree@vger.kernel.org>; Mon,  7 Apr 2025 08:50:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744015803; cv=none; b=RTvF4ybi2LlzLq1GlNCEnkLtXVkIt1EsF57ow00bSRKhjYqhcuSm4rT6QB1gJ+pHxOc9SSUkG2d/ETQYJeC8qYcUQ4N7Y1HbUJH38gRe/tRKtqrJ6VVaiRCPSvEipgOstsrWo/+t7pYY6jgsi3xmTaZIYlJt2ICf25O/tpz63EE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744015803; c=relaxed/simple;
	bh=0dysb/j8QCvtqSojYzmzZc4MuE8IlG7SThXAVqAXz34=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZVE4YYtot58hOP0/JhuoOuoKOMPOlrZo7WOtIoAxZV7kiUj1WbZ5W53f/UbmCqjlfSQtDSyOTz3QfCpmdOoozG2+HIM26J8/tqSiimChm4mpGDfi9IVw1wf8QpuwHpNorRF5Xa01npM2kcjZZufjI1wPshseUtlMJxMOJhL2bk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CVVDZL/g; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5378dmvO015493
	for <devicetree@vger.kernel.org>; Mon, 7 Apr 2025 08:50:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	A7W/suLq2UM8HkanTs1604dpOyHgBjMoRJIiCRyj9+s=; b=CVVDZL/gws/Rm+jT
	YWCrTw9nhBzrno64L/nvG3wxIxarrWOLWV/RhmuPrTZ4uA/GkKdNvaDa25pR5lVT
	WIi1R+8kUyxISodhlpcpZwEVdKIGZTbOCjNoM1bWOTznfU1IaBj7lNsy1ecjOnTB
	wMv+bUs4AM/UyiLPhVuvWE3xV9VXuCFGhgkSWYdvGscXy1oGaoT5Pd4D55dGoyrq
	OwkC/NYXb/HZ5nWb3bBxknxfBtzRjwy6Nub+5Zvz9dTMiABGhd3lxUpKGLeqEl4y
	MDxoOChXlFyEhwHTM7OskUXKfWQTreg851nWAjUkGAgBDWAsxYIPdwgaABaG0Lqr
	LYHTmQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twbe3ndd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 07 Apr 2025 08:50:01 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6eeb8a269a7so12195536d6.0
        for <devicetree@vger.kernel.org>; Mon, 07 Apr 2025 01:50:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744015800; x=1744620600;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=A7W/suLq2UM8HkanTs1604dpOyHgBjMoRJIiCRyj9+s=;
        b=Cr5FHbOPbvA+MKyn7RL7drWtaXEemEYJfTwM0Hmx/Y66HCt70CgBAT+h4eRc6Ffczz
         L+n4M5OxRy2zowbMxbZDSUjwKwCheB4SQInZtf29Wl26hFUjC6EkhcB75prZIv4yWPjk
         0CuHT0H5mF0EwIkn7wsmXFg1U9HMMqzVwfRgncNYH8qyEq+CHFwIJOR9kLjR/t6UFEs8
         KRNfy9KI0T7crB6eFQs2Ha0uSYzOl6IqM46es5Cn7amSbX2LyhRNsBUFAW670332pHBz
         nXg0MAWgZkoqrP5hlaoB5rMJoDpKnQxX8i0C2E2ORJOQkdlhl/wld7QXmCBwYLipfdl0
         28qg==
X-Forwarded-Encrypted: i=1; AJvYcCW7NFf7MKG1ZANGB70pnCqiuBnqqbHW88rsGPkax55Y/OV1+9T/THWiTej9Il6F+mSSzqpuFtQqBX0a@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0rLXsrVXolg1SxdHaKXPsv9hCrbwqQpoFC1GfvecJLYRrwQsP
	DuhUVsT2zOKzisAJM2/pTUFxAPm0Dltey0NZjEZZnZb4ncbD7ulrdzMIC15IL4J/DuFKaJeh6Ua
	rZInfChRPMkkjPr9G2wfpfyIfGd7wjdso11fO7k3F+GW51xfRB8iQHwMyjUI1
X-Gm-Gg: ASbGncs5EacBNDqJYvz1RuhF/c8EJ1hwINLm+eDPvbxdgzGvYnI5JTfDXLDgCU39lgy
	Y9VmRXTgyNep/XveuTZ7p/UYVi9Ws3PFS7X1UMX71QLbu9iTTFA2UM3a60kifO/acXuYBTqstHh
	okDpFkDGf5IVL4ncgJPE5ADW4/9HrFukFjg0xodqjid7rgTZn8Z3VQA+n4lvO8WWObgEqrXTVHk
	Y+1JybI4OBfsiKVuIZPDUIXs6yBgbaXaE4gbMGm/hG8EJqDxZBfIFAfFI7JSlpdkI7qAN6zA/n2
	yKxJ7br4p2ywUAmoeDBP1YPe010tzPxl+GGChVo6bbjU3qEtjT6uQuK1vWfKprMsaQWBnA==
X-Received: by 2002:a05:620a:454e:b0:7c0:c42a:707d with SMTP id af79cd13be357-7c774def534mr617003485a.15.1744015800132;
        Mon, 07 Apr 2025 01:50:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHM3ImiIeUKkCnXzozuTunhbkQzhWJNYwKRsFjSxrcYnNZn6j0yjPM2Ovp2gCk1ymCBdM3FPw==
X-Received: by 2002:a05:620a:454e:b0:7c0:c42a:707d with SMTP id af79cd13be357-7c774def534mr617000985a.15.1744015799813;
        Mon, 07 Apr 2025 01:49:59 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f0880a55aasm6468304a12.78.2025.04.07.01.49.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Apr 2025 01:49:59 -0700 (PDT)
Message-ID: <9583f74f-2dce-4535-bdff-92b1da1566b5@oss.qualcomm.com>
Date: Mon, 7 Apr 2025 10:49:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: msm8953: Add interconnects
To: Luca Weiss <luca@lucaweiss.eu>, ~postmarketos/upstreaming@lists.sr.ht,
        phone-devel@vger.kernel.org, Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Lypak <vladimir.lypak@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250406-msm8953-interconnect-v1-0-a23e22e236e0@lucaweiss.eu>
 <20250406-msm8953-interconnect-v1-2-a23e22e236e0@lucaweiss.eu>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250406-msm8953-interconnect-v1-2-a23e22e236e0@lucaweiss.eu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: Mg3nOQZGYygokuRUdssCGRSjAlPtlR1R
X-Authority-Analysis: v=2.4 cv=T7OMT+KQ c=1 sm=1 tr=0 ts=67f391b9 cx=c_pps a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=pGLkceISAAAA:8 a=dlmhaOwlAAAA:8 a=Dw-YgVe96UOjDrfUO-cA:9 a=QZKuY7mROTJmt8fO:21
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=y4cfut4LVr_MrANMpYTh:22
X-Proofpoint-ORIG-GUID: Mg3nOQZGYygokuRUdssCGRSjAlPtlR1R
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-07_02,2025-04-03_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 mlxlogscore=999 lowpriorityscore=0 adultscore=0 phishscore=0 bulkscore=0
 mlxscore=0 malwarescore=0 suspectscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504070062

On 4/6/25 10:55 PM, Luca Weiss wrote:
> From: Vladimir Lypak <vladimir.lypak@gmail.com>
> 
> Add the nodes for the bimc, pcnoc, snoc and snoc_mm. And wire up the
> interconnects where applicable.
> 
> Signed-off-by: Vladimir Lypak <vladimir.lypak@gmail.com>
> [luca: Prepare patch for upstream submission]
> Signed-off-by: Luca Weiss <luca@lucaweiss.eu>
> ---

[...]

> +			interconnects = <&snoc_mm MAS_MDP RPM_ACTIVE_TAG
> +					 &bimc SLV_EBI RPM_ACTIVE_TAG>,
> +					<&bimc MAS_APPS_PROC RPM_ACTIVE_TAG
> +					 &pcnoc SLV_DISP_SS_CFG RPM_ACTIVE_TAG>;

RPM_ACTIVE_TAG is akin to QCOM_ICC_TAG_ACTIVE_ONLY, keep it on the CPUs
and on the cpu-cfg paths, use RPM_ALWAYS_TAG otherwise

Konrad

