Return-Path: <devicetree+bounces-225615-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BA7E6BCF86E
	for <lists+devicetree@lfdr.de>; Sat, 11 Oct 2025 18:51:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D12461898ACB
	for <lists+devicetree@lfdr.de>; Sat, 11 Oct 2025 16:52:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E42DE27A919;
	Sat, 11 Oct 2025 16:51:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EvAdmvm6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 623FD1531F9
	for <devicetree@vger.kernel.org>; Sat, 11 Oct 2025 16:51:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760201509; cv=none; b=Hraz4C0+g0ev7qaf1nqpm3l5C6i32hsWC7DO8IU9bVqy8OvRyzPPtqjmkuQgUdqNUsYOTbldNDRsvMYIz0/S6VjUtb4fOjcJ/R6zDbaUvmBNMTNLCDGLoCNG8ewrgi8cYwRR2u0Ve6+aRCugmxv0ZdgXVi+pQK6GZ2evjJf1ghQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760201509; c=relaxed/simple;
	bh=756nAZI2HsvJeu3L8Lk2/V/v6E2LwBB2KcFEklPlkNs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DFOo29UPLvr41rX9nXsmouWuQOZ50rC2+Rq7hsCYpWA6xWwijZ5EjNerLt62g2R/jIZyFQOvkq2GaeIjy4xGlFG3WyM39gmuDJQI1YlbOQsaDbDdEqnijafbur0XzvVg5CeRC7a3udzcwWVUEllMG+I6gT1z0rcJnlH61RZnlRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EvAdmvm6; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59BBJCYM009709
	for <devicetree@vger.kernel.org>; Sat, 11 Oct 2025 16:51:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=xDql/hmPHmbhLyPjNWGht0Ir
	lePqDSoVlgpyDaLxB/g=; b=EvAdmvm6JMiBwFtspv0DVRebMaZ0aXzHvBjDTmh6
	Pl60vwPGKB0cy3LVeUlVVjqCfimlC7XL7NnbIhmMZ5worXFZG91+Siul6cbVZs0L
	/tYDYwhfev7fPrgJq8VIpAhQ7xY1tndC7UIOZzQNtAtgIOpFU9lLhrlSlZ/tMh00
	G4rXeTkQIwVKyC9ovm5cMzFOzx94tfTYYTPcIji09/iwL63WTS2Gd45X9PBAW6MA
	YYde0awJMTCsglI/bbJwhzW00Y2bz+0MQmivyjvX1rPJD0xqfMcU8RutgBgNGbY1
	HiCWWxsnlZUDXyE/g5bcjD72dU2gQvJZLDvITIxdLDojUg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qff0gwy1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 11 Oct 2025 16:51:47 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-856c1aa079bso1725566585a.0
        for <devicetree@vger.kernel.org>; Sat, 11 Oct 2025 09:51:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760201506; x=1760806306;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xDql/hmPHmbhLyPjNWGht0IrlePqDSoVlgpyDaLxB/g=;
        b=ADVul6WjzpkKjLoQzErHI6tGcoVVvuVNq28AN7J+8FUEen/WCN2sgkmTlTRHHqSXoU
         /X+LIJn6EUGnnzamK9Pj4jkJyOt78U7rtdbN7KQ3lQGw09/6Gq8jdm4rCeWXVo9xy91s
         1+m+zIfY/Gvs2SJt02nhWJp3EH9jYk+KgnJ/cY7CGJCvF3K6EwPDG5v2tcUnC+fiJJgI
         kgR99+T/mWSFe7EfLCRAa/sKdbbNgA29ltFrmUFBzMt+ONKgUEPu02FNvaydZuoaom3o
         6NU+bnAScr1KOELjau1xRW7M+5w1OSH3VaZPR3KMN3KwVMuKO1ev3ZLBfu2gJiUGmxHf
         WfPA==
X-Forwarded-Encrypted: i=1; AJvYcCWDOaHuvGGJrJq6Ka3aiABHP4oJPTQCIs8RJRBJAskFk47V1mpzEnnQuWyYTO3Xf59JSDyMOP8T2TTJ@vger.kernel.org
X-Gm-Message-State: AOJu0YxP7tQEJMyUuRc6gtUl9DKT7bvoWnub1way+Icq+oRbnpJOc/ph
	bdqo3HT05YswThODtYXoCqBhYnZTBiKeuSTpJxlmNbE4P2fj+g768cRwAw9sNJnwF+Kwp6hZNzG
	cF99GJW4rUEwvzIUmMN2q8UjPVj4xLFw+NtsEqqdOqXOEyCd8y7rGVUcpuYGSoQKZ
X-Gm-Gg: ASbGnct/7kvo7SXuBFRWBu/3NBJY5toaH+UIWNpT1yX2kJjhOb8oYQ8lv1d1WGgKVXS
	LwPZ8pWxkfEumtN9B8cWf03Y+dZDxDm4YN4IlNFhYf/lzguyYDv20mEZPTvsUlBP1oUtgqO7/IT
	Mw/u56/I5v0OQ2pf0xllp43WPWDlOsL01aBxKiwn7IwfXAxYsKsIqy6GEOf6K0RdNwi6Kh/R5Jw
	q9Lah1ytnuI+VbNN0VKofFxOsm2SmQKNBXqtZGCthkJInDMj0ELXZWgWFFrmpHCP6bFh86nlaTt
	Ni3AjEPZ3nvjw0b65P5b5mg15XClHGslKVvn8ud4ngUfZygoLWnKFJrEOpMWdSSzMXTDKVIxSot
	rNOHAJ7L/K36NMqptnX0vkYwmiaJRosAnEFqgKf7iqKDM/FXGJZPB
X-Received: by 2002:a05:620a:690f:b0:878:7b3e:7bc4 with SMTP id af79cd13be357-8820b47d5cemr2727436585a.11.1760201506231;
        Sat, 11 Oct 2025 09:51:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG1knLg1ejAD4VBlbVpVAYhUPHuhDgVtfBnPSvgk3VxA9bjqCPn8ECh/NUyGL80y7radiIDxw==
X-Received: by 2002:a05:620a:690f:b0:878:7b3e:7bc4 with SMTP id af79cd13be357-8820b47d5cemr2727433485a.11.1760201505751;
        Sat, 11 Oct 2025 09:51:45 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5908856394bsm2060654e87.66.2025.10.11.09.51.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Oct 2025 09:51:44 -0700 (PDT)
Date: Sat, 11 Oct 2025 19:51:43 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Chaoyi Chen <kernel@airkyi.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
        Andy Yan <andy.yan@rock-chips.com>,
        Yubing Zhang <yubing.zhang@rock-chips.com>,
        Frank Wang <frank.wang@rock-chips.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Amit Sunil Dhamne <amitsd@google.com>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Chaoyi Chen <chaoyi.chen@rock-chips.com>,
        Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>,
        Diederik de Haas <didi.debian@cknow.org>,
        Peter Robinson <pbrobinson@gmail.com>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v5 1/8] usb: typec: Add default HPD device when register
 DisplayPort altmode
Message-ID: <4eizpzejw43gqt5jauvkeij65rracols2voa2osflwyjrwbvun@sovgqfuhg6mc>
References: <20251011033233.97-1-kernel@airkyi.com>
 <20251011033233.97-2-kernel@airkyi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251011033233.97-2-kernel@airkyi.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX8/MGlyomETrU
 ohRC/KssZUudgHkl2J5La+UA/klDUTQztLMknj5EUKTozVNuRggPWqO8AB2w7YysWlajvy7b2HU
 96npNBeMQVCcirQ/246niLG2DM2WpfghXw8CJeR50VeNe0p26XxTtg5JoXjMs72HG3yaBbgqBiD
 H2L/1pQc4p62GzwxJzVknSg9NpVT0TgSdiarlVqcc7foGE2Q4CFIPji30OcqMydobn5BH6JDVFp
 ZuoU21xSZss4k6Ud0Qf5Y7vg+TuQcTQpCTezrUpMVkKjf6UpXb/+H5rBq/V/yUQ2VahfBzvlH2E
 Zw/ivOg18UnNnwcw2v1Mu3+xQ2c7T/qV2GP6fP/KIWJevVhcAqxIWslfnFJTwi0Hmx3r+kJzdud
 jflfPz/KvUWEegCyrMV5xJLwCCgD+Q==
X-Proofpoint-GUID: Otob9Yo3SH843cesEZ6gxSTuC407UuZm
X-Authority-Analysis: v=2.4 cv=PriergM3 c=1 sm=1 tr=0 ts=68ea8b23 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=s8YR1HE3AAAA:8 a=RXhTPAuaP42idGtAG2cA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-ORIG-GUID: Otob9Yo3SH843cesEZ6gxSTuC407UuZm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-11_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 clxscore=1015 bulkscore=0 phishscore=0
 lowpriorityscore=0 spamscore=0 suspectscore=0 impostorscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018

On Sat, Oct 11, 2025 at 11:32:26AM +0800, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> Add default DRM AUX HPD bridge device when register DisplayPort
> altmode. That makes it redundant for each Type-C driver to implement
> a similar registration process in embedded scenarios.
> 
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> ---
> 
> Changes in v5:
> - Remove the calls related to `drm_aux_hpd_bridge_notify()`.
> - Place the helper functions in the same compilation unit.
> - Add more comments about parent device.
> 
>  drivers/usb/typec/class.c         | 26 ++++++++++++++++++++++++++
>  include/linux/usb/typec_altmode.h |  2 ++
>  2 files changed, 28 insertions(+)
> 
>  
> +static void dp_altmode_hpd_device_register(struct typec_altmode *alt)
> +{
> +	if (alt->svid != USB_TYPEC_DP_SID)
> +		return;
> +
> +	/*
> +	 * alt->dev.parent->parent : USB-C controller device
> +	 * alt->dev.parent         : USB-C connector device
> +	 */
> +	alt->hpd_dev = drm_dp_hpd_bridge_register(alt->dev.parent->parent,
> +						  to_of_node(alt->dev.parent->fwnode));

You can not do this, unless you make TYPEC core:

depends on DRM || DRM=n
select DRM_AUX_HPD_BRIDGE if DRM_BRIDGE && OF

> +	if (IS_ERR(alt->hpd_dev))
> +		alt->hpd_dev = NULL;
> +}
> +
>  static struct typec_altmode *
>  typec_register_altmode(struct device *parent,
>  		       const struct typec_altmode_desc *desc)

-- 
With best wishes
Dmitry

