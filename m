Return-Path: <devicetree+bounces-193332-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 87B7DAFA4BD
	for <lists+devicetree@lfdr.de>; Sun,  6 Jul 2025 13:14:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1763E189C902
	for <lists+devicetree@lfdr.de>; Sun,  6 Jul 2025 11:14:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7661203710;
	Sun,  6 Jul 2025 11:14:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NjnccWlv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46DAD19ABC2
	for <devicetree@vger.kernel.org>; Sun,  6 Jul 2025 11:14:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751800459; cv=none; b=f9tmDKrkeV8NEtI4vEnEQqDGFvKqjYpkfE9YC3a/ttWq50uC/MgjkYVnZ1/uGsbvnRayAyrK55UC2wvtqR/4lpEdU6Ayipg2O/czuz3j1coU/ZFcljxBm/Dy6dCe8UnIiE1iPYg9//MD/C2sGUbNAWSIpX8HL7wArGLpKJMtocU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751800459; c=relaxed/simple;
	bh=uuZhUIvreA4bF7pGZXOUB/dWe2RprMCXjDmVKLbJx9w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qxiPUqZuP3P3fVCQDGIIB1Qd/4tYi8TVq1PZvi0Z6qfq7yoZZgq4B96PkvBokb+TzdaBySTcOjK+jAvmnY1tlU5rpmJboXwVfAUMNjln05j6PR3AiF1kO5z4BppNiho71UXLt15veEByXYBRXrri5s3SC670I++FzsKpdv/uYNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NjnccWlv; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5668xnrE023164
	for <devicetree@vger.kernel.org>; Sun, 6 Jul 2025 11:14:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=lrSM8BW2HndVBSoj7s7FhZs7
	d3IX6Be7fW3wKRsVstY=; b=NjnccWlvZ8Zf9Dbyco2U/mrZHDEEAioTaJOyCe3D
	u+V3eyM4TkHJebOvk7//wbMExSPq16IDbMcpFwK17Y9j48KQfU5dZbyNFl17rDxy
	zjQ/bZet1awHs5MMnEhOQpJw84S4MKYCqq2a0TgjHGZC3CmBhRBfSq1n+UnycpaC
	RxPIgJzNaVVCj+9sid3S9LAyKk5oZnJh7oJVNH4nmDXUHdNsn3rOqSn8tZc71f7W
	/qGxh9HNDGHK0xzs/5v/xT2whOLN5bxwcv070+z5VdJh7Zw1gA5axVq6HYRM8Gf4
	x79XOADbOYH995mU/SIq56xWoCr+m9FmG3eUN7REBHXt6w==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47pvtk3fb1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 06 Jul 2025 11:14:17 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6fd5e0bc378so38625986d6.1
        for <devicetree@vger.kernel.org>; Sun, 06 Jul 2025 04:14:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751800456; x=1752405256;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lrSM8BW2HndVBSoj7s7FhZs7d3IX6Be7fW3wKRsVstY=;
        b=tRtIIskqMNF7eLDcuP8jFiqY965Vkfl9AfT7ZEGV/b9u5GwTsEHlSlWKfCuaQ7R6N9
         cT5j50AwGC+JiuqkRmwkz7IhD3ux55fnA70evTVkCbCun/4XSoo9pYW/b8AM9eLuZwJp
         QhjXjbn1TkdgXZABGLyGTIR1pdMQtWtxMsQ1hOkPuPRxQnfId+eTX1r0zt+TLA/kMHsN
         0AAKr6v+41od8LsPMhgBHsPmMRzMxYgeXTEqBbGwzPzH8fj1IRMORcw26Wxi3jUxv/iK
         wl0xqttutZtCRHODRkIClT/kItnFhbBMRLH7l7l6LQ2kME35NxxJ4UFOYijl+pPMEnir
         +cUA==
X-Forwarded-Encrypted: i=1; AJvYcCUnJCv1RwPaKvxftzA/gGNgab4zLe3qPs6RC65xsmDiUHMeqw+wH4NAH54WvSZ4A84GeZ9SoYLFBjWW@vger.kernel.org
X-Gm-Message-State: AOJu0YxT2fKfuUfPPFAiuovVrBQL8YRg7TCq4JP6E6XqrTBKwDQqHvXC
	vbMPZZ8WEU2sBHuKR3tqVZlsa5UlFa788dfsNjo+ZIVfeOl8e4JaVXdu1e5zGBrSTngssDb03Ie
	X26J9OeB3oJZ8CsaOeYyUHj2ktgLlXbwS0kHRJfBu4Oal3+e46e0JCiuTeBdCJpkV
X-Gm-Gg: ASbGncttyG9BjYsezLbYi+y6RMM50u+gxE5tozcDqXMG0iwY7FLU3H9wIWU+lBbACLM
	bcBikMiKpEWOvU5D7yQOTfdnmG+um7Rv88uVY2ngkCZ1I8Wv9waqkKaJY7LU61jkXAo7xOHulzi
	3+MN5Ltn8kfQO9N13Tm3c+x20gQCZz9rEJ+sxyNXxqf23TK7/c6soye28ZTu+qvXmcKlqIkRNkf
	haNrOM7MPfwlrR+TkC/ejeSWmRs3zKIre/aKEsZOew6FxyMVtYChRxTdaM4RkbXWM4VwR4dGC7g
	kbE7+zkCQSYU/pZKxHl9S6umtnHNlJVYCiN+sW/HYNbqRpkNJtX3u4pkKXVPBu/nfDt6oWAFGVO
	rb2Fu85/dc7lPzs3zJjb4aqpHq1Zwmah4/1Y=
X-Received: by 2002:a05:6214:21eb:b0:6fd:7298:a36f with SMTP id 6a1803df08f44-702d171dc05mr80227736d6.21.1751800456084;
        Sun, 06 Jul 2025 04:14:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG3tVpmWS6ULWjjoEzDvnHa4iP9ltUJU6hMVJCwNkucLTWgzKEQo0EkOAPEAKMG3p6BoF+iLA==
X-Received: by 2002:a05:6214:21eb:b0:6fd:7298:a36f with SMTP id 6a1803df08f44-702d171dc05mr80227316d6.21.1751800455658;
        Sun, 06 Jul 2025 04:14:15 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32e1aff4e38sm8826461fa.50.2025.07.06.04.14.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Jul 2025 04:14:14 -0700 (PDT)
Date: Sun, 6 Jul 2025 14:14:12 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Hans de Goede <hdegoede@redhat.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Javier Martinez Canillas <javierm@redhat.com>,
        Helge Deller <deller@gmx.de>, linux-fbdev@vger.kernel.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/5] drm/sysfb: simpledrm: Add support for
 interconnect paths
Message-ID: <ypjcqiyfzjobg4zsm5sowjtu6ctvzgd4bvt3wpbqbb7o7f3rcm@q454aob3wwth>
References: <20250623-simple-drm-fb-icc-v2-0-f69b86cd3d7d@fairphone.com>
 <20250623-simple-drm-fb-icc-v2-3-f69b86cd3d7d@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250623-simple-drm-fb-icc-v2-3-f69b86cd3d7d@fairphone.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA2MDA3MCBTYWx0ZWRfX0XKHbRi8QTtk
 v9dLGwZdyi2U5Hb8TX6WDeE5cOhu0dBs81pRR99WQA5QTgMV4nOGr1CNj0uHc9LFdg/wSU10sKt
 GddpVQGjv3VGAden7PsCfsDHVVcatA4/QueDMzjxMAfEagmtSZJMxll/Lu1UpVrj2HlbdvYCkrm
 3sNPiGMXVIGwNXXioKD/VZADIrPTycp/XGwSTU+88tZNxYb8Wtntmec6HEL4+XSUqPVFQvRqwV3
 E/Obb7lVMCunVC63Ah2hJWH+KEnMt+AheteIhV+XCT6ZndXE+5JVfviOFtDUZtoe7YEi7Co2xQV
 JzGkjlyomHqAg8JvluYZY7bQE+mj6gTJE0DBpEuMJA3/2TXJ0CNVe720e/jL3sJ4K+mX/DojXN8
 uSjDtARCD38Qf7+WpFYmMOz2Vv/Vum89SM3kM4j+Ca9TwPZOGJMAANcckNsjRMkjiUhVe/1/
X-Authority-Analysis: v=2.4 cv=Vq0jA/2n c=1 sm=1 tr=0 ts=686a5a89 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=6H0WHjuAAAAA:8 a=EMKPgfd9biIQv-X5rfEA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: BsMSZYnB1AYYpUx1aZUNAP6FV8TBCK-J
X-Proofpoint-GUID: BsMSZYnB1AYYpUx1aZUNAP6FV8TBCK-J
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-04_07,2025-07-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 bulkscore=0 phishscore=0 lowpriorityscore=0
 clxscore=1015 mlxscore=0 malwarescore=0 mlxlogscore=999 impostorscore=0
 suspectscore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507060070

On Mon, Jun 23, 2025 at 08:44:47AM +0200, Luca Weiss wrote:
> Some devices might require keeping an interconnect path alive so that
> the framebuffer continues working. Add support for that by setting the
> bandwidth requirements appropriately for all provided interconnect
> paths.
> 
> Reviewed-by: Thomas Zimmermann <tzimmermann@suse.de>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  drivers/gpu/drm/sysfb/simpledrm.c | 83 +++++++++++++++++++++++++++++++++++++++
>  1 file changed, 83 insertions(+)

If simpledrm is being replaced by a proper DRM driver (thus removing
those extra votes), will it prevent ICC device from reaching the sync
state?

-- 
With best wishes
Dmitry

