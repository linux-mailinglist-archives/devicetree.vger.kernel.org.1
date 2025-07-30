Return-Path: <devicetree+bounces-200899-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id AC8EDB16839
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 23:18:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 098597A5877
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 21:17:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11510219A9E;
	Wed, 30 Jul 2025 21:18:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GbSxMTOC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A79671F4C90
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 21:18:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753910323; cv=none; b=kz0Fx7kgnymKTfRyrzFBdBJIYbv9UHKLekcVJpt4Nbz5eoj08m5JG6nXYJZOnJyEvT9SGh3OIqjZKJWaboYHN3FmhBdg96BTxO1O3cbW/55uuyNhhTjb//OWwX4SGzRlhG7Y5Y/pQUFpnLKV4+i5rbnOctjl7xrFt1G+SAeFkn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753910323; c=relaxed/simple;
	bh=D2Nq/p4SX3CI5eELVvjCpxgAGY8QseMTG+xXtOqB39s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IvxEOUbxVaq4w+XFCG/UATPcd0TKDfYW5BHMZJcaCVPgNwNMjV0mX2KCOWyPJBYtFzXZ0u6y7uwNcVWACWjzlfGLtEsLqhHY5OxrJ/bOy6ojSutBRKIVbY62jTcNQ+w7UCoSYcQK99rUfCMImtYzmehGq+4czKTVelkE+rPNjBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GbSxMTOC; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56UCbATr009754
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 21:18:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=iTFx0yIQGaBEsSA2eGgyHdUl
	KsnDAMC5gY3BAJpA+RQ=; b=GbSxMTOCwrl1hTY9C7BjObrlN+PFJ07P/PSFUhJc
	0xhbEJubm1TUJBz2Gqn+JKIxuAe6GbxQUsHaEoruqO0ckfSnd/jqCypnTD0K4c+I
	ZWHqdIzE/DmXmWZ+FuxGLHuQ2TCz0PVJJklZ1vSxFIbfHkvZHXXPgoVNVTiGLgg0
	VAZShFL1feE6AJLfLGKR3IAfAM19EsLD/YfxLKu1FyV13px/rU0ocFVLeQ3VThRo
	1M4ZSrGTUF3ww4gliP33Jgo3F9UYpKgAZoZX8nbk9BVGvrRYzlDS596BVYzhIZ5j
	PA2n33FIuRSUd0Vzrh0gmcOHbnVZmydSAf2anQQYKXU3ug==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4860ep2qw8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 21:18:40 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-70744318bdfso5115736d6.3
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 14:18:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753910319; x=1754515119;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iTFx0yIQGaBEsSA2eGgyHdUlKsnDAMC5gY3BAJpA+RQ=;
        b=ip/sdRstm9U4+ERNo/9hs5Lf3lLY6zR+qxWNbW6T7H3IjM7TpkHlxZ+r/kRxg3iN7q
         g8qk8OX8eGeEL4bku2K2WsW34iOw2vRx7zrwpJFhvrxJC+qRe5py2Nhwf8j/QWa/XL12
         BG1nXbNWhn1BK65UixcBXp6Bc4ZTq/UNmmDPaYbS+MBAptazyhqsqo16GaGyfvN2IHE+
         aie9pTMjE18D1Xj7mjZt1MJJfEvB5+6GNbJOklQHhXTDmkMVhRRDEXV9kSCiiA4/KVwq
         ufQnY1HVcqD/h68S9RBPTSaWXA3gZMmXcUFZOhQu63Gsv2c9nR42DkVaBbwajRvWcm1p
         ef7w==
X-Forwarded-Encrypted: i=1; AJvYcCVtvBEdXPS3sStGIxSsEDuXtc+LslKnA7NXjjwSx0Q/DH8npzV2IrIlANDRdrQaUiWLkYJZtGZ1EOJH@vger.kernel.org
X-Gm-Message-State: AOJu0Yxx5l2LEaqiDCk5qwqauVtWrBlsIIMpf1kYmu5fFqSSl2JQ9enu
	M+snX5CIbSb63u/Chl+ZN2xaWVJktZLldYN8U/Dn2lFZtZ6eG1pHStFsYNTFBLRHsyi3D7wRo1B
	Wh57ke4zr0zenZdBdizPXPN6ZfYQW1wAKgUfFTkE5yQGhKlUsXjyNARL7PUqr65Pb
X-Gm-Gg: ASbGncvLPqI1ohY/5l6uj7AvQH8+1algQqmlHGCxQlpP5T3l5gmc4o6oNW5CE66VwA0
	7QPdzF7MODpvvJfdXGSdP4q0C/MWmJ9LbKosFiYCWxNohKz5S7alKjEKUgaVyQVnXm7A1K5aKci
	9kRLYlZTNgzU4/+7llBk68a1gCR05MViw/j+h2hQfvF7GorLIFeD+u42xir+lsBd8WL1khXPUbH
	DThK/Rs9FG1dMPFdj8SFkrtfmXIwhth6WjJrAlHhRKe8WFS2AZxNAqtO/3TslXEosQQNFdMkkTp
	00GPRk3hl8ldElNXj1IhqAMmbDtk1WDbi0asbdb3xVHKbGRCmu8O+90DEBsQNBLwrYsZIJD4U14
	dLtl9VpYMy6URvsk1KMYkhBtbSr9RQomoB+tzeRzvN6avW0V/XTAN
X-Received: by 2002:ad4:5763:0:b0:707:5df5:c719 with SMTP id 6a1803df08f44-70767478e57mr83213606d6.17.1753910319162;
        Wed, 30 Jul 2025 14:18:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHm3RE9Af2E65UYXRV0BUAaT+4TSql/ZAXgKWlWoCrKvSZ6wgC6yly65rnstuTjmAzh0HHFHQ==
X-Received: by 2002:ad4:5763:0:b0:707:5df5:c719 with SMTP id 6a1803df08f44-70767478e57mr83213176d6.17.1753910318773;
        Wed, 30 Jul 2025 14:18:38 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b73f14178sm973838e87.80.2025.07.30.14.18.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Jul 2025 14:18:37 -0700 (PDT)
Date: Thu, 31 Jul 2025 00:18:36 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Heidelberg <david@ixit.cz>, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 2/2 RESEND] drm: bridge: Add support for Solomon
 SSD2825 RGB/DSI bridge
Message-ID: <p4svegtwyrjdcmq75d5qh55f3g4632sgwzontrp4adcvrs32m4@v3x3fvhncshd>
References: <20250730055424.6718-1-clamor95@gmail.com>
 <20250730055424.6718-3-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250730055424.6718-3-clamor95@gmail.com>
X-Proofpoint-GUID: qPQQ8i6YNwNRZfYNHxtGNqdfoKCjT55c
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzMwMDE1NiBTYWx0ZWRfX8XCwUnHBCTPo
 Dij1x534+Z3nRDXOEu8rWAU+EiCZFzfcbetMzLa9HhtZU3b7/qNM0qNWV867oD1HQxu9g9mVKC8
 Ji0/9zokShiFmhy2KX1SuyuDCwj8/PIq/HUb+ahUPhI8xv/EGb7JiA67Bu0iq2JOwTQb85/dGlC
 edZrkxGfQnau14W6JXii2CCgR6EZ14M3mie254P9r10aEphXQHmAOYJaH8FATfnXaIAwmKjbhVr
 swTMfUk2S7lpuURV1unLRFphheEMn+ykZ6el+URpA0R4YjUy/Euu7D1Ag8UmgNkY9p0LJBHKJHF
 FRkD22Gc4aQ108iWSV+KxqFoiz4bMwwnmA+43gZYrocmX44E/wF5DrB9BqAJ+04Evg4brNgNMHk
 RGXnrTj/tLdoEnYU8V3faeRLnJ0psbAZO7A1mhqSWfP91h2FfNZsM4JyEkhfvmR5j0Q7/ET0
X-Authority-Analysis: v=2.4 cv=DIWP4zNb c=1 sm=1 tr=0 ts=688a8c30 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=73frPc2hRq-d4gq3JOcA:9
 a=CjuIK1q_8ugA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-ORIG-GUID: qPQQ8i6YNwNRZfYNHxtGNqdfoKCjT55c
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-30_06,2025-07-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 bulkscore=0 mlxscore=0 mlxlogscore=730
 spamscore=0 impostorscore=0 suspectscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507300156

On Wed, Jul 30, 2025 at 08:54:24AM +0300, Svyatoslav Ryhel wrote:
> SSD2825 is a cost-effective MIPI Bridge Chip solution targeting mainly
> smartphones. It can convert 24bit RGB interface into 4-lane MIPI-DSI
> interface to drive display modules of up to 800 x 1366, while supporting
> AMOLED, a-si LCD or LTPS panel technologies for smartphone applications.
> 
> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> ---
>  drivers/gpu/drm/bridge/Kconfig   |  13 +
>  drivers/gpu/drm/bridge/Makefile  |   1 +
>  drivers/gpu/drm/bridge/ssd2825.c | 775 +++++++++++++++++++++++++++++++
>  3 files changed, 789 insertions(+)
>  create mode 100644 drivers/gpu/drm/bridge/ssd2825.c
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

