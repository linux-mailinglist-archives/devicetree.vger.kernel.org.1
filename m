Return-Path: <devicetree+bounces-217124-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AAC0AB56DD2
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 03:22:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 64CDC3A5380
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 01:22:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 882C21A3A80;
	Mon, 15 Sep 2025 01:22:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="n9vpjLUS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56C431E5B68
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 01:22:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757899330; cv=none; b=FfT5CmarfRc2qceKGWYr95RUPRJLmlX+gXMUt25Rux29Ss9SwUhF/YpO6rmISZ7liWfPmLqXheWHZpjuKdoPZRM7ESAMZGF9GLaHQYDklIhOvwWOmZEt3A8BChoKnobXGEzJiM8jp/1tIQH9YFQEVCsvnMxpEmpZYcbt688Jjc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757899330; c=relaxed/simple;
	bh=/lbNWezT6xAjhR3Fi6g7CVjB3nh+YNu5yF3jsdtlE/w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CCbtwUjDY+rgAB+wmYCeLbitN/8y+9K25uNkEHCs+Z3TWZ9Iapz+U79t7dosc6sCE9x0MbYvZots97DS8N0wszmMwN4zB8Ailj9gEZ8UKEmnCXG+CGEoQ+NQahyHKIzMhKMgYeXd20wcwpY5GoG0mopaXjracZ0aoqWkHQpXi1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=n9vpjLUS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58EITRZK021292
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 01:22:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=eAPS3mv1/cupyBVCM8O2L+PZ
	b+74Gk1BkD4WB5VbJmQ=; b=n9vpjLUSeLW60sf6PRJPoFV/qcRDX6p3g5GPM/0u
	M9khqpntj3gFRsPmgHEm4eO3L+Hara2g0SEES74h6OOR2QeRu1JisNhUlvJaGJoa
	+DHI9zBFEKxdA+iwW7U8vPdwM/EIULhj6uNd8eSPuznwOQkwZ/SPojT3fLSmDBjN
	T3yDodYwEyx0dLhSKcsXGIgCZ9F9cK/IhkJr7Puo5mxh0dgUGy6fAPMAErkLLOAS
	K9TASU2Vk+lRI4HAtTScnrfLIi1FAxVfxgysEJAtsxb8ZJK0Gb5Ah3mTz3Pz7UTc
	PIFgHisePjeDsU9XP9iARxcwa/zNbHZTf32qLP0f72qPYA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4950u530vd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 01:22:07 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b345aff439so103514501cf.0
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 18:22:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757899326; x=1758504126;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eAPS3mv1/cupyBVCM8O2L+PZb+74Gk1BkD4WB5VbJmQ=;
        b=gD0MFJGCuGuS09v0IbnGHma3vOMhIPz2rtalsq8RhXgI2A97sRVsAkV8IkgmG+xVVw
         KgYasYwZ53l3o9T32U9S8nsgZBU+2J3KFeiOi8YGFSw8GlNkgL0DNy773sxyVdN7Xp5w
         /IP0gvq1g0Ro3slsct8rZGvAbNbpnkHXgLIhtxQ47bk/nF7hIiFodCWFsasO8Pk6GSe6
         lqV/uDJKSOmkOQnJaXbxmc0UlZtZq9w9/Gn1XeGMDB2aXG7KaAwskfq3zMJK0ljj/PB/
         raN11d5/btcRskuba/ko0uCrIS4nIumkSpF/U7j6g63lEfdDX2C6v5RyCgoinRYJF+lG
         EMng==
X-Forwarded-Encrypted: i=1; AJvYcCV0doj8MNPizaWho+uhW3HOzylo/EI4kIDDytOoLv1YJXdr/LHFRs/ch7YKxxwF2bCzjve7kiRyAByZ@vger.kernel.org
X-Gm-Message-State: AOJu0YyKGOqk5f67QCXHGgON+cxdvVBj9CUODEgXVZK2EAcDMihi7Ufr
	WCQUb5C5aW84+DMtlEY24JgYRB0iBJSaYQG8zF+smvsOW4AmpBPXjEe2wws8norEb7h6eEFcEoO
	5moKHcoTJQC5HmNQq9caJTIVN4yDrYwoGM43+AsUprET08ZLf2wGO7AdHlRYkgfTx
X-Gm-Gg: ASbGncseLLM6Q2Nv6O7Vjtfum41eOK0cUe8zd6JEl4PZaYEK6sWO1uNhXleVQ7NYEJf
	NfJzV0lEYT3M5DON+9sPnxhJMWgoD5rDDULUe5+do8D4jN4whKWaDwicNj+H11XW6YvvjEMQ7I2
	hhb+5dLijrxT0lLl7phLCqrI3XAeXR/2fySJSUFtbxs1HPCQo4NZh+aYEohGrTX6gz1kTXq3BJx
	+pRKJIcP+BEkGsMSx0MD0WlUywzfMnkfU7ikDpYkgnnuoBmpRoKzuup7PlS1L+i5UDqwQGJeUco
	ExGzLMsUfI9Me/oqEsKMQGtMGpdz5fhnJrdKxu9gspQFSR7Kt2j7i0jfGJ4gqNv/ow3ccf5bCgC
	lZwdYO7kQ3/ldH+qy84SWo3A8BvNG+g6iuXL7w5YnXLOzQahgfGb9
X-Received: by 2002:a05:622a:286:b0:4b6:23d0:c89a with SMTP id d75a77b69052e-4b77d0db1b4mr132581921cf.37.1757899326161;
        Sun, 14 Sep 2025 18:22:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHQSyYeAgSEmgcNJTTqp0vPaZyCuNNzRtT1WBhvlsaTwF6ipWsBzX++GOjSFqPhPAIn7RL3Eg==
X-Received: by 2002:a05:622a:286:b0:4b6:23d0:c89a with SMTP id d75a77b69052e-4b77d0db1b4mr132581581cf.37.1757899325711;
        Sun, 14 Sep 2025 18:22:05 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-34f1a820665sm23743431fa.33.2025.09.14.18.22.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 18:22:03 -0700 (PDT)
Date: Mon, 15 Sep 2025 04:22:00 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: david@ixit.cz
Cc: Sumit Semwal <sumit.semwal@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Molly Sophia <mollysophia379@gmail.com>,
        Arnaud Ferraris <arnaud.ferraris@collabora.com>
Subject: Re: [PATCH v6 1/3] drm: panel: nt36672a: Make some command sequences
 optional
Message-ID: <v26z3jsjr3kijnfkbu3qdixzxckx6xshyxlx3ro52y4cfmbc4n@vmunmuquye5g>
References: <20250913-nt35596s-v6-0-b5deb05e04af@ixit.cz>
 <20250913-nt35596s-v6-1-b5deb05e04af@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250913-nt35596s-v6-1-b5deb05e04af@ixit.cz>
X-Proofpoint-GUID: BSSDJ7ke33eBDdYYw1WgT7BhLdgV4OmZ
X-Proofpoint-ORIG-GUID: BSSDJ7ke33eBDdYYw1WgT7BhLdgV4OmZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAzMSBTYWx0ZWRfXxehTLcVqIKQL
 ObU79xAy3NXLlEt9KcshCeAwd7kY/Syb+oIIekan0hTutaxibXJo3j2n9UAvzKPMXUMVCj+lz4P
 qie/UbI0z/a4ypUIa2hQ5bAtITsJyPF2Sjn2Bp0Rm5ctkH4V09WjycWuIXUUhnpeQWOIEuJKN6f
 Io0jC+ac3aQOoW05ttUt+xz+wkmEszP5FKYLqcWEFmK4OoOOvxHqRQSIHf75Kv0D16fU7G4K5Cp
 b6ufiWAaV+CVvNDaD75KDQsESW5mymvyG3JtIzmdiTW6Qv2XzTqHak5oXtYcVmZFbkAqPdF5UAG
 PArb5mr8X7rmdpH8+Qt8oMHMVRQC0wv7ckO3H6L4SuS0CLsbKOdMnpjsgiHRnMoaaadGT8D3BgO
 4Bvkc71j
X-Authority-Analysis: v=2.4 cv=JvzxrN4C c=1 sm=1 tr=0 ts=68c76a3f cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=pGLkceISAAAA:8 a=QX4gbG5DAAAA:8 a=EUspDBNiAAAA:8
 a=AaDDvXmx8HBLlr6wuooA:9 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-14_08,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 suspectscore=0 clxscore=1015 impostorscore=0
 spamscore=0 adultscore=0 malwarescore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509130031

On Sat, Sep 13, 2025 at 09:19:47PM +0200, David Heidelberg via B4 Relay wrote:
> From: Molly Sophia <mollysophia379@gmail.com>
> 
> Preparation for the follow-up nt35596s support, where not all sequences
> are provided.
> 
> Signed-off-by: Molly Sophia <mollysophia379@gmail.com>
> Signed-off-by: Arnaud Ferraris <arnaud.ferraris@collabora.com>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  drivers/gpu/drm/panel/panel-novatek-nt36672a.c | 27 ++++++++++++++------------
>  1 file changed, 15 insertions(+), 12 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

