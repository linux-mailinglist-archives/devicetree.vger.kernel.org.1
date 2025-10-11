Return-Path: <devicetree+bounces-225657-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F199BCFA03
	for <lists+devicetree@lfdr.de>; Sat, 11 Oct 2025 19:07:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3D0673B7C73
	for <lists+devicetree@lfdr.de>; Sat, 11 Oct 2025 17:07:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E42928136E;
	Sat, 11 Oct 2025 17:07:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pn0h0OcI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C448327990B
	for <devicetree@vger.kernel.org>; Sat, 11 Oct 2025 17:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760202431; cv=none; b=uz7VEjCbS90SSdPRE4MoSuXkMalFACYiPIZ28AlW52BNzAVmNJrYKOOrctph9qk1g+E5SazowNE2VNpUGJ1trzfvZIbn4f0WLsMDJ8gNdRxBwk7mZzd5lEcrlLlsv3JoZO4XmldT6h1yNN4uL8dxBfRcBCfRbNWdH7lA2dG4yM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760202431; c=relaxed/simple;
	bh=AkFr9QGDyeuz5kArh2v3+a2z3VK8A38QHCu5APZRPds=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=F0GYgav1xizFzCiO29uQHjpl59Q6ZZTF/nT/bmoR+5TtDRphp/NpdM5d0nzbpe9VZOCF2KCHNzDctJkdYUkHEaR52lGU5aGZoZrTSx4cINlj7Pdpnl6Vk88UdpRT81O+KUIfmF1Xfv2zTH3OPlT4I/ZCsF8iuGzTEi0OqJgemQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pn0h0OcI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59B3PQvm009732
	for <devicetree@vger.kernel.org>; Sat, 11 Oct 2025 17:07:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=mFycPb6v8NKaDe6FYB2/8x+o
	vkGxvomJsSjcJN9pEKw=; b=pn0h0OcIRdlCvpvf8AjJVH6nVCXg8NEJeCQW75q2
	dsToMtpqSi+FaPkkcRIipiaBow3F8Mt0xdph6Ty33wqPLR2jpF+MAGyHWJFRDBVc
	2g6SrzzItdXMZJs4RIo5yF3mVzUscJ5f/jt/1v16S4qXdikK6xk/2yBSH6l5Grxa
	AQvyG2gx0K+oz9bWCm3Wd2g2wskZ6FpJ08hr+IkKiXAJKtNQQ2ZENVco/RnbZkqP
	0ycpTVwbCwXLwDB2OXc/DxiGSnhT3vqtijHOw7tdwBYTXNeYQdUS2/J9Fih49Fi9
	a/UE+LUVGdC+a4YIb1jekPmVYnHt4wT42DujL4yWW+rGPA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfa80y5n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 11 Oct 2025 17:07:08 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-854bec86266so933164185a.1
        for <devicetree@vger.kernel.org>; Sat, 11 Oct 2025 10:07:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760202428; x=1760807228;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mFycPb6v8NKaDe6FYB2/8x+ovkGxvomJsSjcJN9pEKw=;
        b=SQKfah3ezQXJvA4ED7cPVbJy2tSBNPLSoHLeXuZMrPdcujrXyj24NM47itXW5/mZEN
         FclFUOVlNWa+Nzj1nY/1lkJ65hQGgnhS2IE5LwuZMUhl7u+0J5TZgU7pDocpZtVEPRHT
         88jZHdkQ6+03LTR5nKc7MyFucEGIYnkQyUWB1fAV7Jlwg8TomcFkNjp005HzXauH2Mhe
         oIcZVO9SOr5RzQHK4ws75HhOTMaG1DDFOK9kp+CeFwSxaGWO9GtdE4ZD1VbwaSIFDHod
         Be6kP3UKG+N+vZ4v30VGnEo/q5Y1IXKda/YB8hEafZBD96UfAYnLtlR+arv19Qkmw07t
         8Qew==
X-Forwarded-Encrypted: i=1; AJvYcCUF6hlqn6J4ZncJ9V5NSFE83w0/yrzrutZnGZORQbWy/t8+c06vkFK1eDXGZw4NVzA5XJH/lPwwYhQn@vger.kernel.org
X-Gm-Message-State: AOJu0YxSJeu4kYLpThD+8bQGLeOkBMODYAOeHrLC5G31+f17hBOu00Qk
	bUSFiQuTJs7TpTgHG73UVr3FJ5CWUN08nAaAU/GJCxOWe73Yzo06vVjW1ZckJJo8BCbSobHNG8n
	izmsUyasX/aLlUtAJpdnrXReF7LakWxPoAJcJrMvwz5u/052TaPK1Iu4XRWPsuV9I
X-Gm-Gg: ASbGncvib5pu1VeqBoWLHgY+BGYG2DBSZ6HL7fwOBKB4kO6rG0XFqAjtCVg3YvVkJLY
	aB+Ec1/cRgAMiAHvyZJNnOZ20cbyK5PB+5EjZoytpkB1Bl3zzWBo4/oElg9fzTTSs9A3Sxozpy4
	4h5Zl5WT+qACbBoih1s5zxce5MHZNGxPs7vnoJ0ZsMmG+PBLJvPa+6QOtnWHe0CD5H7p1sxaNBb
	T0vFVYBtvUoIk+/HktTTWyOqXgQYlKX9yV0cBKEaIpEQpv6ipStOSLSCL0qNo0KgIJB0/tJDkxJ
	niE1J8heATwVXyIvWVN3sOa2asyL+m/7hybTd+yjBsK1Z6r+RHL5bUGbQofoV5wvCMZM4GVP7qP
	h8HF/XM3uFn6ZcsW17cqgI+GQ4j1bJcL5qfK+5l1QIyozHI0BYRYf
X-Received: by 2002:a05:622a:4a8a:b0:4cb:102c:56b2 with SMTP id d75a77b69052e-4e6eabf437fmr231238471cf.0.1760202427569;
        Sat, 11 Oct 2025 10:07:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFGnG/nUOQfuTmf4P38ClaQ0pqxIsVT4KwQ6QvBre1kD+zoeTzKlRbXjaxIWC6ayUXFmCULHg==
X-Received: by 2002:a05:622a:4a8a:b0:4cb:102c:56b2 with SMTP id d75a77b69052e-4e6eabf437fmr231238041cf.0.1760202427149;
        Sat, 11 Oct 2025 10:07:07 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59092ed98d9sm1244485e87.24.2025.10.11.10.07.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Oct 2025 10:07:06 -0700 (PDT)
Date: Sat, 11 Oct 2025 20:07:04 +0300
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
Subject: Re: [PATCH v5 4/8] phy: rockchip: phy-rockchip-typec: Add DRM AUX
 bridge
Message-ID: <jcmn6n4nbyjsmpvg4q47wxulgddizhiwax4dcb4dokrvj23eur@g3nvwkssg2li>
References: <20251011033233.97-1-kernel@airkyi.com>
 <20251011033233.97-5-kernel@airkyi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251011033233.97-5-kernel@airkyi.com>
X-Proofpoint-GUID: 5C7KBCO_RR1w61rBnTIt8iU1SutT6yfi
X-Proofpoint-ORIG-GUID: 5C7KBCO_RR1w61rBnTIt8iU1SutT6yfi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxNyBTYWx0ZWRfX/Q2sB+rw5gTS
 mJFmaZEIvX6rL/ujUNCfwt/vRPIDIM+M5GPfZCtdvTNkD5BubOYSuHSeA+qktgos4pG/jjx+WUs
 69AV1EpOXuzWak29G4Qvyg7ZXOX/EcWKNqSiU9ViGmoH+/T9aWp6Do/2K2nY6prbIbGDUrSdrxj
 2cv1OXRPR/mwFT2G5scGVg2BitKxFHLk0OhG/E5h9VaEs+nE37vh9OE5YKtCxyvUU89UJ90JD2B
 9MryILRxA1VcZXxorfkrgtCBnGLEdIcRe3wI28GPY3cQzYTQtmgS9z6J6gkLFPqXTkfGkHVDLtf
 9Hit2erGerWz7JKvHVhQfZ6eqxWhIZrLwTFKbLbGLcawfjd9xjyDqYhJzv3J68KrRIjsyxlNY8W
 /YvS155+D5eYceaz5s3Au4cBWrlO9A==
X-Authority-Analysis: v=2.4 cv=JLw2csKb c=1 sm=1 tr=0 ts=68ea8ebc cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=s8YR1HE3AAAA:8 a=-wB9imSA1xWJEod_rSAA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-11_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 adultscore=0 bulkscore=0 priorityscore=1501
 impostorscore=0 suspectscore=0 malwarescore=0 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110017

On Sat, Oct 11, 2025 at 11:32:29AM +0800, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> Using the DRM_AUX_BRIDGE helper to create the transparent DRM bridge
> device.
> 
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-typec.c | 52 +++++++++++++++++++++++
>  1 file changed, 52 insertions(+)
> 

        depends on DRM || DRM=n
        select DRM_AUX_BRIDGE if DRM_BRIDGE


-- 
With best wishes
Dmitry

