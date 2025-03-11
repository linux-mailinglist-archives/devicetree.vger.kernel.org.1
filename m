Return-Path: <devicetree+bounces-156589-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F42DA5CB99
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 18:06:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 88EAA16F168
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 17:06:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4301D262D37;
	Tue, 11 Mar 2025 17:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Fr9Y2VbK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCD3E26280E
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 17:05:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741712734; cv=none; b=E1v2L81v6DPZV+CNjp/7nIhlNMxXL+FCQlwzER6F0rzUPz1dV+JYgKnVFVWUeX5kiwHiedxe5Te76leCAR700OMJuROg6BvKZSL7gnRQtW6di6t7NauM0i4721mEpxGL2dOqkgg49YcUmoudhZWCfYVgPGYMjSrLhCt8p+1xJmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741712734; c=relaxed/simple;
	bh=695GR/KZLkHZ1WKu8d8I3wFJq7e0VRh8DjOiryU8o1I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZeUr8U4nLjfZxOLu1qT94aAJYGoVeFNmJnDRju4VPLBJWrRvhex9XmD16z2QPSrqcUQUqjppt1VKUvR/j5vlFp/NQOw7Mr9SieSfuKxxnNtej7x34SGVMph4olDQ0CYPGe9Qe0a4Av1n7NteEoRCJKSEaPEIQIp+GDvEbP49hlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Fr9Y2VbK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52BG0kVc015437
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 17:05:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	695GR/KZLkHZ1WKu8d8I3wFJq7e0VRh8DjOiryU8o1I=; b=Fr9Y2VbKb77uybHC
	SsjKJrzPBcGaari0g6jOfZG9ym0t8sY6Dqvh83l8nq/eF2482GASQmd3zklKQudH
	u7WehTizAFyh9I/RbYG6LgLtlKB5SCa1lNKiXIMMdBAESZ1JwKmpWsd0rsUB4WRT
	vSP0eCnRheAANu6kzK6gvxYn/47JdM/ioIcE9mC3iE9G25z5No4yKhCnt3RHQbrR
	pzDCn/kuBNvf6gLtK8gULvirstcFrX52MzSG5toVSLxJJG/MRJPRUb7jcpdZ0TrR
	ri4JjGtu7dNZ0sZknlLIWi3zaWeKZHb3gC+O7Suh7OulvYjpYGtEwn1GUd24ALeR
	49I/jg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 458f0q1b49-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 17:05:30 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-22410053005so172416595ad.1
        for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 10:05:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741712729; x=1742317529;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=695GR/KZLkHZ1WKu8d8I3wFJq7e0VRh8DjOiryU8o1I=;
        b=unsLR+MT3ciFMahyXwxpEITq0R52QqIO0ag80UQEPiaPm5oNL27kxYgb9gTIZ1DWMS
         2p/QypyfijWCmMEtqugvjoNAcEtNCm8hhfhpyk81J7U9uT3DJltpcWZikao/w/Ww39oP
         vyTiSgvAiCFyg9x4SqJZYjxuzuqLeVjEAiwt9RNWZYlcpaX9zvTa+v7dJD1Y9xViNdKg
         SWVCvy8u2xZEEK8tQkvwN+mjKrFGSNpt0zHRR8mLtjOqv2jfuRd6rf+aWbjORgeyFQlQ
         uzFjLW+MNm0pND+RBZ8LDz2elDvEijxrj1c2SsoZjcxnQ3AoJpJdnDKv2O1UYzMuzUih
         hPSA==
X-Forwarded-Encrypted: i=1; AJvYcCUyLCuZvp3SREpPC7L+vgt0BWAjG3HMvl77+C1vCu5Z4ySH6MblVMqN3+6Unib9J01Bu6SZbN9xsQVl@vger.kernel.org
X-Gm-Message-State: AOJu0YwaUWuMWmhdbq5yD0mq3t6J1mt/0+uNw3BlYb8HPDTeUhdY0Qa0
	k/8qW+7d8+RU9pH3iBjaEIlJv/L9nNGQWHHER7LswSXxegp/s07nPMbbjjWKwXbcpeHRRAyIfQG
	E9W8ZEcs0HiOEdk8iNY5QztkrTSFM9QVdkoGPqxxQFVgQE2NBJL6etldt+FAUIS/urla+
X-Gm-Gg: ASbGncuylFcfkQbwr34CA97cHZ1hDVT7uSFxDD6SwgB7v3b+atmn5exnjmTzI10UxGl
	NRTyjuuk9Fo9WRxWabbPUGi9C6K+QQJ4MtxMwWMs8v9JuAJFb1uxuRNr9XICtweYGLpSwtEwwXu
	S+H88Z9ONAqQZpZEoh25ipX5kGseoAzh0EwVsbsp1X5RnkD/y2rIMroh4vCh8PDeOBgB4Kc1F40
	GfRllsJ3sy+WvbVaI9R5lM9s4yVQlqLlKdVHyov3hWCeVixdHO0EDuChFljzmqb6HyQUGWE0PFi
	rUa3xdPHva7d2q+xJdzbpPvHqflZYUabY5YYrgR//qEftK0TRYYg
X-Received: by 2002:a17:902:ce8f:b0:224:1c41:a4bc with SMTP id d9443c01a7336-224288951edmr291368205ad.12.1741712729215;
        Tue, 11 Mar 2025 10:05:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGNmYfTMSW/XGFFejAsebRCu/XXSDKUCbe/u23gMVpwPCacZeb0zlctyyAvyI50SfrBGmgbZg==
X-Received: by 2002:a17:902:ce8f:b0:224:1c41:a4bc with SMTP id d9443c01a7336-224288951edmr291367805ad.12.1741712728800;
        Tue, 11 Mar 2025 10:05:28 -0700 (PDT)
Received: from [10.81.24.74] (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22410abb088sm100321875ad.256.2025.03.11.10.05.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Mar 2025 10:05:28 -0700 (PDT)
Message-ID: <7dc00288-1e12-4524-97e7-a427ee24d984@oss.qualcomm.com>
Date: Tue, 11 Mar 2025 10:05:26 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/26] clk: mediatek: Add MT8196 apmixedsys clock support
To: Guangjie Song <guangjie.song@mediatek.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Richard Cochran <richardcochran@gmail.com>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, netdev@vger.kernel.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20250307032942.10447-1-guangjie.song@mediatek.com>
 <20250307032942.10447-8-guangjie.song@mediatek.com>
From: Jeff Johnson <jeff.johnson@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <20250307032942.10447-8-guangjie.song@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: qiKDpLJTwv7oSw8QubeRj29WK0mikY5k
X-Authority-Analysis: v=2.4 cv=KK2gDEFo c=1 sm=1 tr=0 ts=67d06d5a cx=c_pps a=JL+w9abYAAE89/QcEU+0QA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=xSbqf6NU4cea1KmgExsA:9 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: qiKDpLJTwv7oSw8QubeRj29WK0mikY5k
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-11_04,2025-03-11_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxlogscore=917
 clxscore=1015 malwarescore=0 adultscore=0 impostorscore=0 mlxscore=0
 lowpriorityscore=0 priorityscore=1501 bulkscore=0 spamscore=0
 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503110108

On 3/6/25 19:27, Guangjie Song wrote:
> +module_platform_driver(clk_mt8196_apmixed_drv);
> +MODULE_LICENSE("GPL");

Since commit 1fffe7a34c89 ("script: modpost: emit a warning when the
description is missing"), a module without a MODULE_DESCRIPTION() will
result in a warning with make W=1. Please add a MODULE_DESCRIPTION()
to avoid this warning.

This is a canned review based upon finding a MODULE_LICENSE without a
MODULE_DESCRIPTION.

Note this issue appears in multiple patches in this series, so please
fix all instances.

