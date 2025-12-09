Return-Path: <devicetree+bounces-245469-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C424BCB14D4
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 23:37:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 763313014626
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 22:37:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E11852ECD1B;
	Tue,  9 Dec 2025 22:37:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NvFRfxI+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="L0Kr1MYi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50AB32BD11
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 22:37:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765319870; cv=none; b=l0zs0x53O6xZHdkfsU88oZUzLnSH6xA2ZaVtmar+oxGqgwQGLHAEQBOc2I278TODyImKjSds+WSrYaGRVhIQgZkOFxk1t7rCcKLxf92tpvg72MtTPirL/Tt0Eu1+IhpbNonk2LunVXBMjnY7RJJUrIBQExfp8OKmVov63lSYxt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765319870; c=relaxed/simple;
	bh=iJ7DMl5JUfZn55mCMCUFDFtqAA/ov2OkH/OdV2jVd4Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Bay5TdxqaB/jzsaVgBpDbGgen2CNT/8zBy3SLR7/Kqh+Sxy6hny3cU5doScqi24LDIMfP1+D0ZEFtL1vLw6jh89ehMY7L+5hgNiKCeXi0gsFqH6a4kBJbIrMr5IrgCwNsWPnWBuDfj8AVK3qPVlDlNSraRfkFt8s895zrEJdFC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NvFRfxI+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=L0Kr1MYi; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B9Gj1q93542431
	for <devicetree@vger.kernel.org>; Tue, 9 Dec 2025 22:37:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=RmYc9tivKNP3axoENaRa+NYj
	Ro7tGvb9FspT8p6Povs=; b=NvFRfxI+UkIwQKdft4+YkpqUTuusNi4zx/VmTic0
	Ew5zFEV6t+jMEzO8SnIA4K6itS16RrXdafpyX8u8b7oPV45S0iYAYycuA0nvC0sv
	hb/YV2TtCuIlJMaK/SlBlX/LnfNtBUIQiNOMu/Kp+3LYkQomHjqYkQzL371gsGsB
	0ZnPCtAll3VMmy+HQxNQSKkGNQxjhtwxYWr1c0aJAuDqDLQtRgs5lj+FhK6vv2a5
	BfK3XzZERSWWme0DirIgkuOBlwznltlc2zxZfvC/mksT5FlaUlwnSF2Bdd0KS8yI
	QCy9llDGL+37Fb28H+WsALPjR14mu84Iw0DNoOxW21FChA==
Received: from mail-vk1-f199.google.com (mail-vk1-f199.google.com [209.85.221.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4axesf2uhe-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 22:37:48 +0000 (GMT)
Received: by mail-vk1-f199.google.com with SMTP id 71dfb90a1353d-5597b3fbabfso263600e0c.2
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 14:37:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765319867; x=1765924667; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RmYc9tivKNP3axoENaRa+NYjRo7tGvb9FspT8p6Povs=;
        b=L0Kr1MYiKeL2InFhXqvr8AEMHxuewEhz74O7ZLaA4iPml4Dr+oCNSE5yudczW0bPJt
         0ztMXMHvt84c+dtukJ22LP7upLjG3evj1QEV+WUPmZaN87UEFW/J4feNHHmNmjKilpdD
         WboQkHh0PR+eDOVQ3eeeVnJb0Q9ndT/oTV774o2eeXGkEtO1TAnfe/CXqvZRWwXbONxi
         d4d+avvKErq2E0JZJjuiWfNn0Vtfjt4YA2VF9Njj+qYpumAOa9hkBLKFSsVL9byoL//a
         4QBg3C+6e4F0FkFe+KW3yrk7//JObTlJOR074Bj0SSm7F3pgO/L7qkpY7xugKnKt6ufB
         1rnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765319867; x=1765924667;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RmYc9tivKNP3axoENaRa+NYjRo7tGvb9FspT8p6Povs=;
        b=jAV3uxthj7wF3gG3HkeF1k3vbD/dROjsJvI8AxCjjQokO1dEUjM9Si/O1HWJXIPZr+
         tLf8umZuZFkd0cHIifHrq0AGIL3w6mL5bf6i80R+tXy8tNt7jcGuKZgEKF6wQwJCG9I6
         QncoJ40zV+SSmK5f4Ye31dsyS97e1kiogZeSCORAyr3bO8q3tjlLcjpE1t66nvDGt16e
         nnNwy3h4CNx/t4Laf22GnBbj6nK47BslRInCkxqzvc2gN6HZvPk5efIvy45o6I+ySTAM
         +XjWCfUiL1GjQ5l73ZnNZHd/6DV5RNPl/2jlBQ8jPH1ncoch/UkR70ykfUKHp/nNRvxC
         JiLQ==
X-Forwarded-Encrypted: i=1; AJvYcCVQtr5q1/IgyyB3U23eSKYcFckIewYGMICN/UghFRBZyPjAIvgA6EE0Il2s5cjCZdzkjheesmYwQOne@vger.kernel.org
X-Gm-Message-State: AOJu0YwE1xIkmK5tVJfjbnoT55ST2twYKm+A2i8qbTT7whqWKk5Iei8E
	uCBDZxWgU8Ujs0jW3o2Q+oudNyADgx8rVx7rJ+iJmC0+FhccfoGFnSbbBrdoHBB3l7sNcfeCain
	vuAThPTvlVjb9SxTz+SyJl3N/y9IAQOd0/E6MYaD26b5wlOynz3l6MrmUysEY6pEC
X-Gm-Gg: ASbGncu/7Yu0qiXz6iBcEmOLhC1QAlnCEofADRA+dZdaSVCRaT8cmW9MAesKNXnbhrq
	cIkXK7YXKvO6+6svQQJuM5Z7mlxVMcn/h+kZRAXMMr/CdFiWLr5/tC1+6ZyP1S2fQgtcRgBkYYR
	M3scjEIngUzLO73zhadnkTXFkgA5h7mCVlYzcOXSUJjylWnRuRCu9IE5lX0JzkU6aNBYj8fhtu3
	8pS0ctu5YUdlTBw8c3Vhxl1Z2vEhhPO2Fgj50GjSejxc8s43Euo1EOm1sXmUcrSlWooWrEIFmjw
	ughNx0/HqOjQidT8BssMsZuvBE8HDlcuULP150VKPYZxkoSNf3dkXWIm6TbKOgl7v12+iU1nOLH
	/+nN75PVpmm9wQtK4SzyiRX+PXt7haEjt8JztNJXpdyBZJXMySTQovLCGvVAsHFpaUzu7+4pJGx
	CgpR8r2TDZnBzla67/2Wx8arE=
X-Received: by 2002:a05:6122:20ab:b0:559:79d8:27a5 with SMTP id 71dfb90a1353d-55fcf91f853mr240055e0c.0.1765319867449;
        Tue, 09 Dec 2025 14:37:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFTVjEvn8TnwQni6UudT4sjJRz6IdwOXl7bjJWPhCVAbIL5oohiYT+ArJUzEVrPPRTBvx1YPg==
X-Received: by 2002:a05:6122:20ab:b0:559:79d8:27a5 with SMTP id 71dfb90a1353d-55fcf91f853mr240040e0c.0.1765319866970;
        Tue, 09 Dec 2025 14:37:46 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37e7065b4b8sm49658941fa.45.2025.12.09.14.37.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 14:37:44 -0800 (PST)
Date: Wed, 10 Dec 2025 00:37:42 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: david@ixit.cz
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        Casey Connolly <casey.connolly@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Dmitry Baryshkov <lumag@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Petr Hodina <phodina@protonmail.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        phone-devel@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v6 4/8] drm/panel: sw43408: Add enable/disable and reset
 functions
Message-ID: <lilbxguznfzupg2gpfb6xuj4ickffgtuwwlve5g4d22lzr3bsm@slkmhn4agvgr>
References: <20251208-pixel-3-v6-0-e9e559d6f412@ixit.cz>
 <20251208-pixel-3-v6-4-e9e559d6f412@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251208-pixel-3-v6-4-e9e559d6f412@ixit.cz>
X-Proofpoint-ORIG-GUID: lAYRLs-kqpdQgmaJR_qBseq6c0-uynfg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA5MDE3NyBTYWx0ZWRfX6lN4d4Zjot0x
 dzrxHkFRw9r8qcJSECc52AehY5DCjUI30EmTo7k/1ldyEzYIOFXsIYVrmQ6BCLVqR10ch7mtk/2
 jIYMKPwsTUI4CtcUd2vtxQL2nAtAB7iRGv2WRLi8NbAnfUOdImIVNq5iUiwXsX6/Rfq4laAeszm
 BrDq0uKBTeVmck3frLXD1VzayMwrVfRFKH/StyMZR9Yo45TBqhuTB/OwXme8+mYN9eIWsyGWBSR
 o33HbR6LcxJr9LMpdgx8giLymfLOiaVwR2UsiVFICii25my4JByVINIMZXYnWgrD9bPJU+n94st
 q8Np75KXNQ+mO8vPJoZq/PjZSGi00A33ShJm4pUKV1ZbeM27USGcT5C4CSnmuNUwEF2u1pjEQ34
 GNaLA9ytOQ4IwO/xfSd64HPA/sp/1g==
X-Authority-Analysis: v=2.4 cv=fMc0HJae c=1 sm=1 tr=0 ts=6938a4bc cx=c_pps
 a=+D9SDfe9YZWTjADjLiQY5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Q4QeEDP4Y2U8xtt9THcA:9 a=CjuIK1q_8ugA:10 a=vmgOmaN-Xu0dpDh8OwbV:22
X-Proofpoint-GUID: lAYRLs-kqpdQgmaJR_qBseq6c0-uynfg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_05,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 suspectscore=0 adultscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 malwarescore=0 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512090177

On Mon, Dec 08, 2025 at 10:41:57AM +0100, David Heidelberg via B4 Relay wrote:
> From: David Heidelberg <david@ixit.cz>
> 
> Introduce enable(), disable() and reset() functions.
> 
> The enable() and disable() callbacks keep the symmetry in the commands
> sent to the panel and also make a clearer distinction between panel
> initialization and configuration.

It's not just it. There is a difference between commands being sent in
en/disable and prepare/unprepare.

> 
> Splitting reset() from prepare() follows clean coding practices and lets
> us potentially make reset optional in the future for flicker-less
> takeover from a bootloader or framebuffer driver where the panel is
> already configured.
> 
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  drivers/gpu/drm/panel/panel-lg-sw43408.c | 47 ++++++++++++++++++++++++--------
>  1 file changed, 35 insertions(+), 12 deletions(-)
> 

-- 
With best wishes
Dmitry

