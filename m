Return-Path: <devicetree+bounces-200272-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BEEBB13F08
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 17:45:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DACBF3A58F4
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 15:41:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BB7626D4E2;
	Mon, 28 Jul 2025 15:41:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YnOzpmvy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D1EF270577
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 15:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753717316; cv=none; b=k4dOJIFsR1O6WxQ4s3A5wHE+T1nJTkj9Da22jSlhjYJ0fJzk0N8Arbvp7eObpOCgOazXThf3ACXRLctB9xQNM1dgXLYkG8Habu4FHzq+XnTdpj/TVTnVOBfXxn5w2VuOo+k60YNeloaEk7VQ6NWqgH2b42fvsxm3y20zp/x6a10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753717316; c=relaxed/simple;
	bh=Zi0iijzHSRqj0C8gWEoCELIwDD7xb+A1y20FdLS9gl8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YlfMaKWRv7WiRGyawF4n7W5l96cMt1v2OdQG3FQA4aXGX0130rnoVQOMPjopWXrL8O83OQnaZGqF68Cb6A7B8lWDV9Xc2ihLbnfzT/TqfI1eVZjYf5GTp3mc0m7nk29Dqf+SNbMNxtq+SzuqknbKlTKKD0DZy1MdZVUpCnEO4zY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YnOzpmvy; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56SAlIdJ026636
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 15:41:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7j5Mg8G551vXb2fvdLo7IXqKWF8nW+MN9Ie++oA4Wlg=; b=YnOzpmvytC2WkhbU
	B4j4pPur5j4QeptVL9h/mLo87zj6Kz/4eoebTZqUgxuH+u54u6VZY6yFA/np6Xn6
	yLW5zevDTU6f7SLhPi2tmIZseQx38xmUDL/ZfK+TETxuEn4Pir7GcU59sa0wjz/q
	ojabnigeI09W/H9wPmlH3bJuG0n3lyVQAs7IR4voLjgpm5WA3Ichb6kygJora3cu
	zeljvGW9CQQjGCJeoaOPcecRF6gxpU7lE0uF+lxrPwvuPtUfjr/+T440VTBga3BO
	IUSeQasU4WL3kA9FeQmcv32hlzxUAKuSxdquvHv8cTuVVnSv6r86hkxm8x0izXIM
	ERT9DA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484mcr59d9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 15:41:53 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-7073a5f61a6so29882196d6.0
        for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 08:41:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753717313; x=1754322113;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7j5Mg8G551vXb2fvdLo7IXqKWF8nW+MN9Ie++oA4Wlg=;
        b=lPFrfi31s6sOafSiYzYr7f97A064QylRurXDZuw9SvaoZuyATPudYFaq6RHFP9PmUS
         LBiTZ/82zdjJlBHL53EogxL6d0tf/+YopMK1Bgy0CtiNnt6L6u64Ucl6aoulPctnVyQR
         xDDSeoZCUt9ZS/OI+aJb+tCfnB8oYQCCjSlTCN5AjjCm0qj/JdM4fRo4XMXmuEK3GLcx
         GIjWRa5f+UUvFVUxHJb8//spAvKykJNGrRDmtvqsMT1O66+CzrrORAh++nKev6Eu4amh
         uIvkHdfZHKZO4kzwFc7gUkUR0sPW2kgIsPCgoMu734iixgFriA2pH0DJn2tkI+gU0H9S
         RjNw==
X-Forwarded-Encrypted: i=1; AJvYcCXQ7APDSn5IEA1HEW6iv4Rjdbn9rbxU/fjosqI9hxdz4P5Q9uNDWtyaTD1jNEGdeWXoFMDoAUO+884D@vger.kernel.org
X-Gm-Message-State: AOJu0Yx99DwCEMsTiutMW0v2Fha00oC4GXfgF8bYWl6+jfVvEhR0FtIV
	dOOzsh3fND2VNn+mIcVA7qduY8oahv85KAFpEfGHrnsZOmldiIFHNFSXEaMO5y9nCd6j/97bO9R
	DW3I3l3OCL7URhyyyWEh6XDUslSte+fQk4x0kBRjtby+tVE8a9ATJfr870YDG4mXO
X-Gm-Gg: ASbGncupnLTsrPTFSN4yCqHv4ZJw33cg+/W3zUj4y380gZ+KDmR2/IGBgImxHu8NOp9
	KwGz02HJRQwFeligBy8CWZl1Wc+TZLm7LmeiRBYBeaKLhKpI1WAM7fio19yh3MbH1Ib+Dtcrhc4
	IPrdf7Rw5QRzYdGwbfVjZzpoLYVA/JdsxROM4eyjfk4xctWv8zBHObyseBIsKVGuDXZqBH2Oms1
	1d11+ttZrnyD29Cho8RfdaEloTCB/XxfCMWWzNEc34YQ84Q3R0AaE35AnibEtgBIu+PFfygMt0/
	8Y7V/n/lACLXdBTKVC4+fKdm1z5t5xI+GoieiVJ7wuK3IoflF4Qj0WzrmEhnWTaGDY3JGzH9Ryk
	kju1UULf690zC9ZNgOQD7Qha+Nc6cmOb8Iz58iDDadlxdw8k84nyk
X-Received: by 2002:a05:6214:2488:b0:707:4fef:468b with SMTP id 6a1803df08f44-7074fef495cmr26841336d6.25.1753717312830;
        Mon, 28 Jul 2025 08:41:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHOAm27xnvjCoTPX1PfqanlpxIU/37UU2TzXPWd1qLty3Pje9we8zuKNFPEu4lW3V9WCb1jGA==
X-Received: by 2002:a05:6214:2488:b0:707:4fef:468b with SMTP id 6a1803df08f44-7074fef495cmr26840746d6.25.1753717312155;
        Mon, 28 Jul 2025 08:41:52 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b633ae411sm1315965e87.203.2025.07.28.08.41.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Jul 2025 08:41:51 -0700 (PDT)
Date: Mon, 28 Jul 2025 18:41:49 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Otto =?utf-8?Q?Pfl=C3=BCger?= <otto.pflueger@abscue.de>
Cc: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Orson Zhai <orsonzhai@gmail.com>,
        Baolin Wang <baolin.wang@linux.alibaba.com>,
        Chunyan Zhang <zhang.lyra@gmail.com>,
        Kevin Tang <kevin.tang@unisoc.com>, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 03/12] drm: of: try binding port parent node instead of
 the port itself
Message-ID: <szwbsymzms672t65u5z6hqxeyfx5t7ikqwxswwdnkqs24loc23@4riccvgkxke3>
References: <20250719-ums9230-drm-v1-0-e4344a05eb3d@abscue.de>
 <20250719-ums9230-drm-v1-3-e4344a05eb3d@abscue.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250719-ums9230-drm-v1-3-e4344a05eb3d@abscue.de>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI4MDExNCBTYWx0ZWRfX99qBIqmNNjmh
 DJnTwQhB48iuowOyNbAgtSxUVfb1Jc6975ESsaCzVdyP+n8mT7SQ25ynDiAs7Y/kZfJLpFPf0TI
 CzVutAANLUl7VpdIUkYGbXUT4JoHPc3Q6DT3s6lfI8vyQhoSf16GAAH8vrJ6BL1jr2ObW4W4D6i
 BRxQqf3mAgnIEQ0NV2WpKrq/mRRHjmiX95KuzvgtGnvQViOKQ3XE1xH7LG/PT3h9IjecNyFjd9L
 D3f310qsXrVJ08r/dS5EkIpFjE6a1fq1RveZ7Pess5thGzwOYEVeoO4EzccXWpK4x2mSgTM9V27
 5E/sPM86Zn+2N8f3lmOokI3bRfBjSWX7SMVoq4iFRc278LKIkoMUvSkPNdHEG6rA4zdp1APMV2M
 ijG3gWqEp6fA8t2Bgl6BDUlhLWtGIPoBe2G7JeRg/mFQ9g22+Hgj/oQRXE8NSfMY4IlntsFF
X-Authority-Analysis: v=2.4 cv=Hth2G1TS c=1 sm=1 tr=0 ts=68879a41 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=Wb1JkmetP80A:10 a=Ih1c1VdhKniI8WpLwA0A:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-GUID: y6WxeBQQTS1RwDbUie-y7VFLr3a9IuJb
X-Proofpoint-ORIG-GUID: y6WxeBQQTS1RwDbUie-y7VFLr3a9IuJb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-28_03,2025-07-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 mlxscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 adultscore=0 malwarescore=0 mlxlogscore=999 clxscore=1015
 spamscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507280114

On Sat, Jul 19, 2025 at 02:09:39PM +0200, Otto Pflüger wrote:
> The drm_of_component_probe function is intended to bind all devices in
> an OF graph given a set of ports linked using the "ports" property on a
> main device node. This means that it should also bind the components
> providing these ports, not just the components of other ports connected
> to them. In order to do this, it calls drm_of_component_match_add with
> a pointer to each port node after checking that its parent node is a
> device.
> 
> However, when given a pointer to the port node, the compare_of callback
> does not match it with a device node and thus fails to detect that the
> node belongs to a component. Fix this by passing a pointer to the parent
> node here too.
> 
> Currently only the Unisoc platform driver relies on this feature, which
> was previously broken and is fixed by this change. On other platforms,
> the "ports" property points to ports that are not part of a component,
> i.e. the components only have indirect connections to the main node.
> 
> Signed-off-by: Otto Pflüger <otto.pflueger@abscue.de>

Missing Fixes tag.

> ---
>  drivers/gpu/drm/drm_of.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
> index d0183dea770308e77f05da364ffe087d53f3be36..b972facc2ec3fe40a4e10b5d7178b5ac8c0158d5 100644
> --- a/drivers/gpu/drm/drm_of.c
> +++ b/drivers/gpu/drm/drm_of.c
> @@ -132,7 +132,7 @@ int drm_of_component_probe(struct device *dev,
>  
>  		if (of_device_is_available(port->parent))
>  			drm_of_component_match_add(dev, &match, compare_of,
> -						   port);
> +						   port->parent);
>  
>  		of_node_put(port);
>  	}
> 
> -- 
> 2.50.0

-- 
With best wishes
Dmitry

