Return-Path: <devicetree+bounces-226839-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 629C5BDBFEA
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 03:35:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2D1DD3AE0C0
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 01:35:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E5152FB0A0;
	Wed, 15 Oct 2025 01:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WkHXfgjX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C2E427E056
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 01:35:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760492123; cv=none; b=CQxU7Ow8/nBfVct0z0KWFIohB3cNOY0GiU916Aj2gjRE8rtUvDtMouBtts4jCIW14LjK/Bu8o9uVyBHv4Zp/8EO26fdh9jVNNCFaw9nZ5+MSvKnGhGLjJutK0Y+0WVXAiOnr+T+Nfq1vc9ALRFLt4rVyf63QaQHSEyfFS5UB8vM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760492123; c=relaxed/simple;
	bh=lGfyomj8ywCzIvERjBIWuMLzvtnAKZcUA5B+1/3dARQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ok7WlleM3oM5/NAO7Qj4EaeVV9Z5ZHCOvGFyCEh5N5xF6JWUa2P+1f2tO2b9oSjHvBT9BgWeTidw1fZYwNVKhTqr3Kdpy5LWjCW5BNoeDCpeEyucByMrsTeSu/iGfhfNlYMC6F8bJEOzvk609ebSqWpQSB8u6AiTQcJiE9gEFIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WkHXfgjX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59EKR96a013432
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 01:35:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	k2n5J3Jvlq5ovhLn5DGN5KkteKpvoUV0qo2PgJM6Fp0=; b=WkHXfgjXNdO/iuhp
	iSWmUM3w50cjnd4o7FH7Yc7dq20uzSaIAHKnp766ugBFJbUpt/i+WluFzWTu4wWp
	IcY1HybFxkhHF2Ck2kRyeljJhsliSzo/gkQe66b90M15G9LdbKmJSVU+ypnmvL7K
	01DcAPUvK6sSRvTnOIrZ3M2NwYI/fjUR2P7yMWXVmsohrFNApmm39hsqnGdjl+3t
	80PL6jhZGrbor9cqVMql3jDzipq6lT4iRFhUNOAzVDux4vW49Aj3Y990UlOOQUmy
	AQwd/2H2aETVxO1u6lr2RBDXcc+Q4My+zdZ9bCQkRgS4uR4+zampQ/zvEN9t0STt
	T7zupg==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfd92ps9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 01:35:19 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-335279648e3so2840974a91.2
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 18:35:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760492119; x=1761096919;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=k2n5J3Jvlq5ovhLn5DGN5KkteKpvoUV0qo2PgJM6Fp0=;
        b=psrT7jHKWJb5SXVgQdur/l1B57HzeXNAhAssAnzLSJwOBByc4ZupBluEfoE2K6v8Ru
         fv6uwou/LKK79Go1/beCxzps1Z5Xzaxmk/AE91w2OasalsCS3l2p6g5X3dDlRw6X6lcC
         xpWZT6JleExB/VNj4bmECqv66wkaDCeDFzo08RN/1Bl+LKFpUWINDOfMA/fnH24gbZu1
         6GerNSzhbkUQsV8q6CSnGUTFxLUh1vLghIFJgrrB2CIv7dSZzm4O6IOgSJF707R6dw/k
         OPtLAy8m6vvYftinLZZxQFzuMd78zBc3XRTUSsEIdODpkDGAlyybysVqtzFSD45xN/Bm
         R4nw==
X-Forwarded-Encrypted: i=1; AJvYcCW+WVHASVWd91D85pEMR2T7DRJZ7yLpGOVJTwEQaWPfimq35dpjjH64jYVlv1Pjm2ZGAcG5CLg38kqx@vger.kernel.org
X-Gm-Message-State: AOJu0YwpxXW+CTihewYN6bvkT8wWN+kipo2QTQHBY4eYk5AkVnLqzjXP
	N05WoXvbfVH4V13pjU+ue1sw01MaHAAnoPNxTVs3ydSGllgEg+G8gFqv6FE7ZKoFgXG9mM+vwBo
	hfNXDLtRtFtB2j9YHpHzmW2fMA9X03CkusPk3f1wDxKqJWohOcfmqjRTOJTb52rLx
X-Gm-Gg: ASbGncupVnUulyh+Ah6n2KiZ6A+S2rsXH/zYYFV2FoaDBW0rPSagh0zGHZTkqoG2/aj
	oF4WbN0WhTujGD9Vjrt05J991qSrTdWYIXZVTPSrpNQ5ISJj6Z8WxVNmzY7+itUxwh32JE/7Aft
	lli9Fgtif9iLPRJj8FNWy6C6SFCOqD7XhqS8oHeUjO6TjsogDZegfkCDcx2HQkYJI8e6o3Etcvw
	Bj6Ra4Ub6+RXg2VNmxo56u9YJbyPxwE8k7W6q9qExatumYt8GkcSk3De+8rEH7HH9LUs/+qhPOJ
	6OOErQapztUh3UQ1nLRFuqOUwmnkgGL3lwmFxX3ZFJ999ZsPEL0eaLNbwF3zaP0zPGz2L2vdSP9
	LoWBbPPnyhcBA9LtZX/BHmf/9yvgiZ8SjE5s=
X-Received: by 2002:a17:90b:1d10:b0:32b:dfd7:e42c with SMTP id 98e67ed59e1d1-33b95dfc275mr970051a91.5.1760492118733;
        Tue, 14 Oct 2025 18:35:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHc+CZt0xREG6/4LPwJm/Rd0O6qubFBGwHV4l8y5dMCUoHmdZH14Lg5AhY6jiw29nPPSwGWyA==
X-Received: by 2002:a17:90b:1d10:b0:32b:dfd7:e42c with SMTP id 98e67ed59e1d1-33b95dfc275mr970028a91.5.1760492118252;
        Tue, 14 Oct 2025 18:35:18 -0700 (PDT)
Received: from [10.133.33.159] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b678df7e1d1sm13305597a12.40.2025.10.14.18.35.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Oct 2025 18:35:17 -0700 (PDT)
Message-ID: <fb83f6b4-019d-4dca-86d5-87ed018153a3@oss.qualcomm.com>
Date: Wed, 15 Oct 2025 09:35:08 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] arm64: dts: qcom: qcs615-ride: Enable DisplayPort
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com
References: <20251014-add-displayport-support-to-qcs615-devicetree-v3-0-74ec96ba8144@oss.qualcomm.com>
 <20251014-add-displayport-support-to-qcs615-devicetree-v3-3-74ec96ba8144@oss.qualcomm.com>
 <geh3pbatv53bnk2zgyalnwvumvcsqaz6n7x6dniohsfk7r56sq@mpflfuye62ly>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <geh3pbatv53bnk2zgyalnwvumvcsqaz6n7x6dniohsfk7r56sq@mpflfuye62ly>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: HBuDbvs5iPfyI310cN7czKSnw4RKQSpt
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX50OXkgtPD0ax
 9mwNbEi/aNjHlkKuGuM/uCamjcFaUXUku209phzXZqjYlEPM0ZgW5F7y8O/1W/Ov0/fTIj1ijjA
 d3xRHVLpobgbPX4mc1wDR7YTV/yaIRMVkTeIbWBRp3GJHOcRo4W/CFhVtfeno2MGMJIcs/jVjyj
 8GByGkbfW2kVs4nJ9ocvSCDNs2rCsWm5szxVWRd9RbsRfGd3BI05ye5r6S9Je+LRGxG/HUUjELW
 mHB6JZBsMzdUQ5Q1DHfyAEXwqYTj5jc/mqCBrTpkLxJyYphQg8VEozu4FA5F1+o05t2CnlJsqb7
 VlyiWvyRj14cV2YNLRHXb4/5yZuaAFUy3zOVSi1PBEaCvsMAYjeflPEgJg3Z2gXKiI5RLPVWtHA
 ALzdVWYC+FLOb8HYfij7Es/9Bt0F5g==
X-Proofpoint-GUID: HBuDbvs5iPfyI310cN7czKSnw4RKQSpt
X-Authority-Analysis: v=2.4 cv=PdTyRyhd c=1 sm=1 tr=0 ts=68eefa57 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=2THbcKMbQ0HsdItsycQA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_01,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 bulkscore=0 clxscore=1015 adultscore=0
 lowpriorityscore=0 impostorscore=0 priorityscore=1501 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018


On 10/15/2025 6:16 AM, Dmitry Baryshkov wrote:
> On Tue, Oct 14, 2025 at 07:54:56PM +0800, Xiangxu Yin via B4 Relay wrote:
>> From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>>
>> Add DP connector node and configure MDSS DisplayPort controller for
>> QCS615 Ride platform. Include lane mapping and PHY supply settings
> The "lane mapping" no longer applies. LGTM otherwise.


Oh, I forgot to update the commit message. I’ll fix it in the next version.


>> to support DP output.
>>
>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>> ---
>>  arch/arm64/boot/dts/qcom/qcs615-ride.dts | 30 ++++++++++++++++++++++++++++++
>>  1 file changed, 30 insertions(+)
>>

