Return-Path: <devicetree+bounces-212507-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B5C97B43010
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 04:53:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5FE454857C6
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 02:53:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A7FD1F7098;
	Thu,  4 Sep 2025 02:53:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IpsrypyU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E5813D891
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 02:53:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756954415; cv=none; b=PaUQBmMnQDp6JR0Tnj8gl/+/UicXadJLrwL084HLxoT6nh+SxuTOndMVF9Q8hBeqJkFH+oSzxQXWUCGPSNOnd3NCz6EexPbzywcNayD+kQV8fTd9ktZg1uPSJmHlmXh8pGxNnituz1xN6yh3SwvxbPRwC+nRjd3UM3p6a60pcVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756954415; c=relaxed/simple;
	bh=te97+qFSTve2463U2foW3Pt27YcC1EC4UCUVuaOmqQE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ca7FDFZMRmgFMS6YqarJeCZfGsMq/Pg0DPMgZPu3nirFAL8KMj9QWDMAGZBlYSySTpnk26ZxufBiSqkkVhd8+FxGOy1PyGfvpTYbiXqn9qfuVXCxifvEIL6irqRpi9xXvJ5mmRfEn9ZPl5V1R8DpJQNro4BFJTL1R4j/l/BpgdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IpsrypyU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5841SXDJ016739
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 02:53:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=kz2067FEvooqYvy9DSICdzYN
	TfnwpZYpelzCotnzoz8=; b=IpsrypyUlNRH7nXE944fUy03canvDd/KcmnUss2X
	E+C5hF93+o3GGb2xXk9SVJmOHTJ0WEs6tjrryViKh8F9lYpHwE4OogXxjc2i1qDW
	PWruF+7BUPT6/q9MttQaNEt75woWC7SqCz9OsA+YbNbEXn5In/4Jkn/PTjPhL/k9
	HOYZo35OSna008awsXsdKoDVt5JD2LqwN3+WZZ+XiyZWDgYP1OO0O1CPjKlKBjNa
	uDpRpuZOuai+M5989NdjoNye3LVW5zJxQ3bSydq8Xqh7no0PKM8CgA0IVAC63+sd
	He8SkR0sZEWTStJ1D4x3ESzfZ5AgkOZsD5Ui6z+u2vwnLw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48xmxj2fj7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 02:53:33 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-71ff3e1256cso8853916d6.1
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 19:53:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756954412; x=1757559212;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kz2067FEvooqYvy9DSICdzYNTfnwpZYpelzCotnzoz8=;
        b=FJp23FZ+B2ZVfc8F+gaGK738rFP/zueayspuDV8WGJpzk8Ayjdoso4W2k1Wy9Dj8Mb
         wpmqR9NoK0nFUPKC+Hud8RfrYoxDFQWCWEV0MPxd0yRTsepfe+2Pbqw8anoUBCRCUImO
         ASSL/GqgDIrjiSY6f4P3YkrLFVMZU8my5rU2AA+r8Tjuxk/pZOxJZOcNPjUOinwqZ62+
         c++sFM6gQSPiTdQu7WCFyZZCA5FV/bw/XWRiUepEoXwLafeXzbTazfPro0l98gNb6Ixo
         R+NDReoBw/7PYYeA3kDTuMyoUFUGAgucd70TrQjcFiV/xmuQISa/g3Nuefgigz7YQDVv
         Qzug==
X-Forwarded-Encrypted: i=1; AJvYcCVs814DJbhtXEz3pPvtrqeBMvL7rwp9HRmY5o7ZPQKG+29Pg5OvUKQtJYLGXNIWIf/+/CVmDWfxbtRi@vger.kernel.org
X-Gm-Message-State: AOJu0YzEuuPv+Qbwe6C+4AWW7oPxRtWaOz0fP1xC1rqpn2QAwmnwSQhl
	RmecyLJwUL5iz9Ky34Lr1/yKhTemdl3HDIrB8Lv5yRGdYouPKmjDp+ZDopw1kVKoAoie/iUD13h
	g2AgLGz5oXV7Sru1icZe6e5qkYzS62APq1P+TdUE2CfUdXYWd4MmmVmw86xoi4esj
X-Gm-Gg: ASbGnctfEQcwm+/2g/uJL+t7lnYJbC4MxfAhfUaDQ3Pauwiqbugp0p6J6Hq2GQfhNKl
	Mm6vn32sXNtoMLU9Id2BZQFqJJslr2uQbsTeZeN/FrWCXKyMoFc0hILF5KtsBXtdQ4fWknki2GV
	nPiAc4NzCXQBCslVo2hywmnZw7caKJahciULIZwhRuxQNreHmRTy/9Pb7AunVlNWPKhDaHqbqgf
	uOhQWZGe9VsWdxmJuVjLFgCXFch3eFly6rKXmx1URROepM+mIxiOx/j400aQq8XeLquS01x6+CQ
	1y+Sbea1Sot7kjM8KZPuBSZ+m76E6VQJSe0ZftuBJENapqWgAdYU6x+FYkDrcqHpr1OwCqDX01V
	8GLkDjA81lq6TmcFRlNplGIeC8r/ZJ3X6vd+m8JMNwe+s72HatuFv
X-Received: by 2002:a05:6214:493:b0:70f:a42b:1b57 with SMTP id 6a1803df08f44-70fac966ba0mr176699106d6.66.1756954411804;
        Wed, 03 Sep 2025 19:53:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IErmfuA4/8yRamEwLKE6ZwFL2tSW6JHiK7PGA76/AjLA3gD6SEd/CJbWJkPBSrDcwZ6CONrSw==
X-Received: by 2002:a05:6214:493:b0:70f:a42b:1b57 with SMTP id 6a1803df08f44-70fac966ba0mr176698946d6.66.1756954411361;
        Wed, 03 Sep 2025 19:53:31 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608ab90ce8sm888972e87.35.2025.09.03.19.53.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 19:53:30 -0700 (PDT)
Date: Thu, 4 Sep 2025 05:53:28 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: syyang <syyang@lontium.com>
Cc: robh@kernel.org, Laurent.pinchart@ideasonboard.com,
        andrzej.hajda@intel.com, conor+dt@kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        jernej.skrabec@gmail.com, jonas@kwiboo.se, krzk+dt@kernel.org,
        linux-kernel@vger.kernel.org, neil.armstrong@linaro.org,
        rfoss@kernel.org, yangsunyun1993@gmail.com
Subject: Re: [PATCH v2 1/2] This patch adds a new device tree binding
 documentation.
Message-ID: <hgesm7qvkwutv46jqhulua2oycgeiwgvpnrqsynxm67zk5qjcc@bemou6qybefi>
References: <175691717884.2393851.6340903042726389490.robh@kernel.org>
 <20250904022524.1748587-1-syyang@lontium.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250904022524.1748587-1-syyang@lontium.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTAzMDExNyBTYWx0ZWRfX1yH+9rGiubvU
 eNgsYncOwc0k5zWNI2kC5BWwn1lZXImVSaJ/xvRsMqFIvImkIsIr3t7PpDFNiUSh9ujeHjUtpNd
 fh1fXRhP/R7J7x03u6zP8GAd7RZ/JYC7TU8Vg1qDJ8jTurBx1iFr9Yas+BDW20pnJTwVK/sSsAV
 57LL5zkQr/Dc9BrZk8KBLaL/t+kBmut+R+qt9Zy1Jd1s4M5eqYsd5A8fcDzoK78+ERHYN92EJ4u
 3ZWIHuNKplMPxMFpH8IEEcDjrg9TrlOSvALRMc72Bd6nRRNJbRUH8m6wsurfS6g8bq653Ez/iXW
 aXz1HyR8lUxf4xZj8Ok9oEbNQCOLPyrUFFnFjRNTcsAWZmjwrk1VH6dLCJi1Gsw7ajIiZjc7lsv
 hR2I/H+i
X-Authority-Analysis: v=2.4 cv=a5cw9VSF c=1 sm=1 tr=0 ts=68b8ff2d cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=Kz8-B0t5AAAA:8 a=YfVmvpBeDdD2EIU_UzEA:9 a=CjuIK1q_8ugA:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=RuZk68QooNbwfxovefhk:22
X-Proofpoint-GUID: eki4PHO5HFdCDm9YnSlVQ6lUMbGdz1Xt
X-Proofpoint-ORIG-GUID: eki4PHO5HFdCDm9YnSlVQ6lUMbGdz1Xt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_01,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 clxscore=1015 bulkscore=0 priorityscore=1501
 phishscore=0 impostorscore=0 adultscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509030117

On Wed, Sep 03, 2025 at 07:25:24PM -0700, syyang wrote:
> Fix device tree binding validation errors reported by Rob Herring.
> 
> v2:
> - Fixed $id field to match actual filename (lontium,lt9611c.yaml)
> - build pass
> 
> Thanks to Rob Herring for the review and feedback.

Read Documentation/process/submitting-patches.rst

> 
> Signed-off-by: syyang <syyang@lontium.com>
> ---
>  .../display/bridge/lontium,lt9611c.yaml       | 121 ++++++++++++++++++
>  1 file changed, 121 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/lontium,lt9611c.yaml
> 

-- 
With best wishes
Dmitry

