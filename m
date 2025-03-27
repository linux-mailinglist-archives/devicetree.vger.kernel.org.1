Return-Path: <devicetree+bounces-161263-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C469A733CC
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 15:01:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 510FC17CB56
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 14:01:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CDBE216E30;
	Thu, 27 Mar 2025 14:00:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NH26j7Th"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DEA6215F47
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 14:00:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743084051; cv=none; b=OeSKSY5nZeRM5OhXHPiuFmzY379/7b+m+RHi8Q47Xw4aQa7OSowu9HpfQJJcpY8GEqvYsutisiWT7eaNNecQoRNIrkvvNcwfgwxo+V/CwKO5ap8Pv3fUSKlZHCPrNKs8Cr2F3n2mmrJ269bHsj8l7RWW9VJ/oL7iTqbScUn8fH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743084051; c=relaxed/simple;
	bh=SEZO9qBx5pmsR70QUhs9LOaTH6O8WpbkUZdAtq7YYMI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PPJD9mUMpdMPVvZT5iwMhNAmo59sahCh1xyUj5aUBkBmdGGuwc36HBv50+ZzappuK1TT4FHKX1YDz+0I4wlIDXrVkNlfP9l5QeDtv/YSbdzUAIyYlIOYl2tbqvQQzVUXVmUJ8CC7dYBZ32nWuIRC4vH9WWbq6O18dUlXpbNZh50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NH26j7Th; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52R5jD6W002235
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 14:00:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ljIDS8nBjc2VG8d0ZzZqDDV7
	zEKCh4Md768L4ui2t70=; b=NH26j7ThGzFqPxp06QogCGK3u3Fdi6kN8lm4QxEO
	DkBqU3thpimrfMEUr8z5CNs54LqtQgRUBoh6f9zpqpYjNNtNd0d15SQaNnFQcQP7
	zf6i2NrndfqU33/+J8YLC9TNMnMkzuJCuDoVKa3Klek+4LXPS2Yp0zkneXQ8l/c9
	gmQD84HDeTLQs+Mb8yTWsuK6P39mvKxM33fT/5xIoti88xL4qmcn30P9HhJEQu+Q
	xfx1NOg3aLgN3AP21nz/RZZO0KAjOo/EN2xdN2aoPsLSTkSScnh0uePIN1lFQe9m
	oLGKhcqCAccDp/VSqoEjnsXewm8bUCYUUUw5qBCHJ8NfxA==
Received: from mail-oo1-f70.google.com (mail-oo1-f70.google.com [209.85.161.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45m0xdxcwd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 14:00:48 +0000 (GMT)
Received: by mail-oo1-f70.google.com with SMTP id 006d021491bc7-60214b7cdbcso918203eaf.0
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 07:00:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743084048; x=1743688848;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ljIDS8nBjc2VG8d0ZzZqDDV7zEKCh4Md768L4ui2t70=;
        b=if1qn7M/Ymwv36ahAqgMCPVrloEOlVCmyvhVyGqu40GX7H44/K9WnOug9xi+o0phrk
         vgeC/CMv6rE4o6EfEa4U1bh3THlj1UXzYAgL4K7YPGtVAH0QsuXyfCiXJCf2QpSsWG+m
         2xKUh/oPfERxtjW7BHHXdrKEWoIjzvgy4Z+2COWxjbKWabXjz1JkozSjdasBO8Qt5c0U
         9n8tFhyfcBOGCbLCzT8Uw6fpCzNCyOYeXUwp0yl0hoJB8ZkFNsWSDO3vfoS5moWmuWG2
         AxNDDhbNvY3IuZ2+B/JfIIq8c/c//gg/DD+H/EGzRAIfolt+zd7W9yhOi6Zd58GjbiH4
         AHGg==
X-Forwarded-Encrypted: i=1; AJvYcCVX031F/Qevppzhpt3UPq37XkmKPRGBXtQBJIBJRX5oL71DeVwIJLft2g5U/r2Pw+AceVhHU8KrYvhq@vger.kernel.org
X-Gm-Message-State: AOJu0YyamjTtxiQis1rpj8XgVCiv5sskm696ExjaUhcKnbFmOjwN8egc
	MbHUtoUzS0ov8H2LFCx5eKWy5DTt+fFSbrhdaEaz7Cz0ry8HB00Dsj08U+B8B55khx0gkMszKPd
	830M9pGvYIf9R2USFmFkfW0WiOoigCVZiCN8rrNbLZd0SQQi9W63OaQokQBY5
X-Gm-Gg: ASbGncv4Ppyj1VPTJApGPQjTyQwswsW7x7cXaQb12vOeuhC/qpzYvTFJ6mKpb3bqw5F
	auiuE9NrgX8fIXswrJQ4VBk/u7vyyLK76S2xila6L1g07dQXLVizSytkojfy0KsUjcQv+pO1Krt
	TM9NJok/Z4PMqPI3mEu5eD6Kahkb2g3XgRJnZW4vtwE32cqLJ+yI+ufyDUGV23f3cit6YJxeZ01
	4557NXF1W/Giq5dAXwraCVOZKgSnm5XMXmw6BRUUv1qjZYXH7ejcFZQaIDX2QY1grldh10n5ZDT
	pIqgiPMzi9GPgZZaSmdlwfIrtpK5aAD7imVfk+Avcum5kN61935S5DBQ1Tn3iBaaWeaIxQLDKcR
	hR+w=
X-Received: by 2002:a05:6820:418d:b0:5fe:9b5a:531 with SMTP id 006d021491bc7-60282f734a0mr160597eaf.0.1743084047617;
        Thu, 27 Mar 2025 07:00:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFzv3shkUjdIzmBbQcYnd9sMhyUVqFh0YY+uJOnkJ41kguWyH8HnLjBcqHJ31+I4eWoL8bF3g==
X-Received: by 2002:a05:6820:418d:b0:5fe:9b5a:531 with SMTP id 006d021491bc7-60282f734a0mr160480eaf.0.1743084046857;
        Thu, 27 Mar 2025 07:00:46 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ad64fbc99sm2078251e87.125.2025.03.27.07.00.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 07:00:44 -0700 (PDT)
Date: Thu, 27 Mar 2025 16:00:41 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Marc Gonzalez <mgonzalez@freebox.fr>,
        Dmitry Baryshkov <lumag@kernel.org>, Arnaud Vrac <avrac@freebox.fr>,
        Sayali Lokhande <quic_sayalil@quicinc.com>,
        Xin Liu <quic_liuxin@quicinc.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v2 12/12] arm64: dts: qcom: qcs615: Fix up UFS clocks
Message-ID: <753oerdfl5m4rvtpqqvjkd5nhk7gv246nmywtnh73nehh5nhal@s4je6izjuawd>
References: <20250327-topic-more_dt_bindings_fixes-v2-0-b763d958545f@oss.qualcomm.com>
 <20250327-topic-more_dt_bindings_fixes-v2-12-b763d958545f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250327-topic-more_dt_bindings_fixes-v2-12-b763d958545f@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: xvyDXgSZhwqv6Kcxb0tobTmI_0LMv-_Q
X-Proofpoint-GUID: xvyDXgSZhwqv6Kcxb0tobTmI_0LMv-_Q
X-Authority-Analysis: v=2.4 cv=Q43S452a c=1 sm=1 tr=0 ts=67e55a10 cx=c_pps a=lkkFf9KBb43tY3aOjL++dA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=y2As-JX5KrBiNkWRAOIA:9 a=CjuIK1q_8ugA:10 a=k4UEASGLJojhI9HsvVT1:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-27_01,2025-03-26_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 impostorscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 suspectscore=0 adultscore=0
 mlxlogscore=762 malwarescore=0 mlxscore=0 priorityscore=1501 clxscore=1015
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503270096

On Thu, Mar 27, 2025 at 02:47:14AM +0100, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> The clocks are out of order with the bindings' expectations.
> 
> Reorder them to resolve the errors.
> 
> Fixes: a6a9d10e7969 ("arm64: dts: qcom: qcs615: add UFS node")
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615.dtsi | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

