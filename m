Return-Path: <devicetree+bounces-148935-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B29DA3DC74
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 15:20:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C6818175848
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 14:18:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B87EB1FCF6D;
	Thu, 20 Feb 2025 14:17:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="n5EZLtut"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8391FC7F7
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 14:17:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740061051; cv=none; b=pPUSGDX+ThYse3uXKBDptrrzIJwjDF7dA802O/PUqR21GdLXmJjexvzSlALVpvWnlX2v1ML8+1bd0+Nw2vMU4ff0Zgfl7SlD7QIRV4Z/M8wv0Yx3JJ5dVuRjr9VrTYp0s/LLgsvaAZp+dCNIhz/03mO2TnS59gbViOKuoNClL2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740061051; c=relaxed/simple;
	bh=3EGm9P8kyzCVbkWoFmdV27iox2OfLl7TljwpZhahyf0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FAJxLzzEFouAcqHyJAkkNirBpXiji/jiuUWvS07zNcZOVfE611S0rrj18KDjfEklwGIL/YL6DZk90zowV2EfvMetYr6q8O/tGW42t70VYIGYr+Hg08n9gcFp5rB/cNM3xj+E9f2HaZLToY5XzzUjxlgil0HGr1NpT829ylHBpwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=n5EZLtut; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51K6gO6H023203
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 14:17:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3EGm9P8kyzCVbkWoFmdV27iox2OfLl7TljwpZhahyf0=; b=n5EZLtutRjhz9TVk
	nVNfdBj3vHd3mh5sb1yu0+ZR14FvY1Jv+vmEM2yBqNV72xw6mcKjdiHh/Zs7OTSu
	O9qBsrxm2xWhyHHBIqnY9aasOAmuaYpPG9lSCB+kxf7kRTOkGL9ECqf6E+RkdFhY
	PxKpKckghEH5j1fPRTeuQJx1Ye0XwV+NJSZix/1+eLaEZiQzzb/NuzNS8xvH+BrZ
	Gt6fpuUE9NEfPkgKO899F7iiDm1oao4i0k+B/K5ZPf6D1U9yAOYdF0Nvv1oRtr2K
	a/Ql4oEFJVfLk66afoAQPNCqR5ojNX6CVH6286K5Zq7La0zSFgOyMiehtHtfyZBw
	kGP4oA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44vyy3pf7e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 14:17:28 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6e662a02f30so3127856d6.2
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 06:17:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740061048; x=1740665848;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3EGm9P8kyzCVbkWoFmdV27iox2OfLl7TljwpZhahyf0=;
        b=fWgmjkJMAWUm+1x/X9jvT81+KLNfkX3S5b/OH8eabecLeaIJkvxH21nU9mP+xwoDdR
         P5J+m37PmrUHlOtsy8x1mZcny5zg5F7NuIQSwQcwpwfkH5CKSbUknuSrw1H2G7RZ/hWk
         1QSSNN4C+b5z6fZ2kKBJUyEJEZT10UBJAeCyYw0kPGzLLLJre/CDfaMPCElWykRZSMon
         N7n9S40Rp7Vh6hKLuIA515GCHm7wNxvX6uHReqWTbrMoBdb+VqRsOS+dGA7WO99jhqa3
         iS5mIIc8NBuPyq8jXb33I0FhYCB2H+jE523jkUU10Nns6eGSxlxrwQqXzVKwG4Syz7qc
         gCnQ==
X-Forwarded-Encrypted: i=1; AJvYcCXr6In0LLs/ZJuiFnYHdk7qxS+mvW8ZlLsKaRHEnDxQKt2AmGVo0nFo43M9ifAQufZQDbiMtRys5zuq@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/DxqYOsN5MGA2OPQo1W5qDlzHVjta9kpOl1FdLl2gWmReX/2V
	cFwm36kvBCP42/N3lU+B/ZFgBdAzl7PfFLsGsk3rikaNcNlb/wJ/x7gh3BnCz7UW3W6ugxt3asM
	mZl7hstETa/2+qUxm9Pw+K16gvJL6y972ixBtnf+S9vj5NMY7ipz0DsJIxKZq
X-Gm-Gg: ASbGncsOI09VRkqbF1Ch5bMGihNOXOLhce0O6DkSS4mUw5DSXNMRcoyv0XZnYhdH7wy
	JY5lX05YEUukMexqm26YHZpOivP9TBnu5uxvGDofCG6+MhoSpQOrkP2mimMAIphoAVEZBIixcB/
	u8EkyFQNgBOGihKWNJ0ZjtygcBsGdmfFMn5TBidfP/wO5S20EPgqdmy2TEMiSRHUUrYCfIV1pRj
	9psTix0ABWZTyhf9xTiDAwMORJvnrs+YK0QBtHiqnXKV/wd2WqjKnxtUmqt9Q5IKueAzRFi5F4U
	/5r/PTFhxea6jeT+m8sRVbrOOgAu4NdaprAE7wGWhtKve/gG+nZZ8rwsf9c=
X-Received: by 2002:ad4:5f0a:0:b0:6d8:a723:6990 with SMTP id 6a1803df08f44-6e66cd087c8mr103321326d6.7.1740061047790;
        Thu, 20 Feb 2025 06:17:27 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEDkW2kyG3s5oW0jAOFMLLRJCpIAozDV8aRQ9BA7y2aWTC7YO6KQmRn9uS9vaOsEf7hft1g6g==
X-Received: by 2002:ad4:5f0a:0:b0:6d8:a723:6990 with SMTP id 6a1803df08f44-6e66cd087c8mr103321046d6.7.1740061047341;
        Thu, 20 Feb 2025 06:17:27 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aba53231fd5sm1461709866b.26.2025.02.20.06.17.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Feb 2025 06:17:26 -0800 (PST)
Message-ID: <517f2021-d863-4976-9df3-ae5f64102b8e@oss.qualcomm.com>
Date: Thu, 20 Feb 2025 15:17:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/7] drm/msm/mdp4: use parent_data for LVDS PLL
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250220-fd-mdp4-lvds-v2-0-15afe5578a31@linaro.org>
 <20250220-fd-mdp4-lvds-v2-4-15afe5578a31@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250220-fd-mdp4-lvds-v2-4-15afe5578a31@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: IWzFx8Ik_r8VJm0l0zhm9R_cORxvyn1v
X-Proofpoint-ORIG-GUID: IWzFx8Ik_r8VJm0l0zhm9R_cORxvyn1v
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-20_06,2025-02-20_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 impostorscore=0 lowpriorityscore=0 suspectscore=0 spamscore=0
 malwarescore=0 phishscore=0 mlxscore=0 mlxlogscore=600 bulkscore=0
 adultscore=0 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502200103

On 20.02.2025 12:14 PM, Dmitry Baryshkov wrote:
> Instead of using .parent_names, use .parent_data, which binds parent
> clocks by using relative names specified in DT rather than using global
> system clock names.

You're not actually dropping that behavior, since you still populate
.name of clock_data.

Konrad

