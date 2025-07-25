Return-Path: <devicetree+bounces-199748-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D9A66B11D56
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 13:15:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DBB6F5A33A0
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 11:15:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 513BE2E62BA;
	Fri, 25 Jul 2025 11:15:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RqFT9LD2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0D372472B0
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 11:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753442136; cv=none; b=gj9vZzl1Qlw9+jNVY4P+zKMYjjmVayN53Hw1Tw5H4Qzm//0F3HHU03FuJDeH8ietI5LSHkTRU/sJOeZch6+RHYNQ6AXqLhAq4tepVugLHejJJPnA26f5gHI+ECf4W00PeZfuYX+rolLFDv/ZbvY+3AO+LFPmYIi7g2rrw9zj4fE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753442136; c=relaxed/simple;
	bh=OSeqncM2dX7fMfBZmA+0l06FrlB0CNn9hMzKvIZiRvw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mv7adjiIv7fHQWqFuuWSEVfca/Us3KDdt28G8UPkq5bH17tpRmAYkpQlf9uzqIeM64P5QnT7ObxytCcjbUzEBNMPmPAWhW1PTyIQIcxbZmnE1lOW2BKHfBn94I/+8xL8OIwzYTBZTWQSvbYTDDGvCwWrcBBnfrRKWSw4mfnPNOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RqFT9LD2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56P8SWt4018081
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 11:15:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=+d6fz0EHEv9D/K1jXUDJQkWp
	0TaHWL+EOqiDWQcysec=; b=RqFT9LD2k3CtCw+OeO9+pL23DKl3w0JrfG0UY32L
	bJ/qJAngW/YP7HFppZHEr2fHRD+egFn8wazcfL20XcrPgS5CBJJd9o3B5+vf4a63
	Ok0p2w9NVSR4DL9SiZO2T0joiNBB+onBdfwq9grdFIBk/U2v6mtLx31wr99yD6VO
	50vTPvFrD9HMMURtjhpjXjn2fdI2ioi+ZQit6WBCX88gLRDWfH15jUlXRFlU5tPm
	d8AnyQnncv9z9LKuTeiy6YW9SR8I/FV1CARdvVMlfwwrtNxqxFoiX283/0MtPPFo
	Y4/Jc1BbTqylONL3lNN9F2XEvyev1Dp/bKk2gFMy1Dbh7w==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 483w2s1udh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 11:15:33 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6fabd295d12so39416696d6.1
        for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 04:15:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753442132; x=1754046932;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+d6fz0EHEv9D/K1jXUDJQkWp0TaHWL+EOqiDWQcysec=;
        b=tmoid8CWb6AhIFIQvOxlIsbjC9BblS07nbKRgvPSOUk/8mowfPCf/1ZMzJMSc+CJ5E
         o5pjGC7prSG073/DwVOz0ty8XNGD2q0k//izLcaeik3S2jOFZAWlvpRNfd07+79OnJ7E
         j3e7IV1Q/pwRqq4tkbgfNuiG+wHYqreLsSQW8oIyvpFjsOwPzneinn71CH4we7usj8Gn
         eE40TP5EEiiszJ4jDQez79ELZy2/6GCbCzy+FseAt0JuBj72z5ujBJCY5c31/6y5fHYn
         QbPKZTT4lyRC7MBGD4c24iG34hYDoic+vHd23UkG47/VFlckggTXGKfarysHocT74lHw
         v61w==
X-Forwarded-Encrypted: i=1; AJvYcCW3hmOpVFbSWrr+iH8xuLpg6Kl/GQus0NyhQuIXmBOLwhfSuf3Uqp/r5lgV/zhUikH90uDkAvm4e7JK@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7RYrzzZPix5+QcBat7TNYLHrV6EJkpNqjTUccg8gSdNYdiWo+
	Pu9fD8/bo/PEin3fEWW8u5c/e1ajHgP5CFAj+8FKNILcZARw2DI4oLbVn50tVsjkaf+8RPtqlaw
	FgGN952TXNJVxE7pesNM90Zc37/XhGbbMKTbDvNBuS7MZpiSFNyMY+FdKILLZn6Km
X-Gm-Gg: ASbGncuJkKjk18POHd6//6w3GnuWhUXdjVSCVVuztDNiPuuDNfYjXy9hXvTCOfLngs9
	1PBsFi8/FNLv3iGCA/KRQs9pM1L12uvQudQK6wg+mFYDcAO7OPkw9Z3VhKwRMFp9zMIV/IG5rua
	bVOQmBe6o8NU//2+LyI7ns8Tf+Pzcz+i96krZ/wOl0PGOK0Sf7YNwzF26AU95W7Oi72jSnXsmQt
	dZ+9NQ8myz0EmmuVJg3elckPFXi7C0TriRwwp8hNDQhUB9s9nZSlwxuH81r5a7QP1lgWBveUXtg
	E9Gdw6Crt7Yk5GCcyeQBzpdK4g6IbLvp8OjIciN3DUe/5yBpxEDBr4+O7JSB5aDc/nAy1TE6VRj
	ru+K5RC9t43jhjGaBzvnbWen9ZYzD+SBQiKFnrdVrma3OIe87OwaP
X-Received: by 2002:a05:6214:224b:b0:6fa:c5f0:bf57 with SMTP id 6a1803df08f44-707205d3de4mr17249346d6.38.1753442132378;
        Fri, 25 Jul 2025 04:15:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IESU2wE4bOnOUGPBSZO0tkF4LSJGzJmhvaydJbduRXkqSSNO4+Pqqddr17Ym6JSe+xBXleipw==
X-Received: by 2002:a05:6214:224b:b0:6fa:c5f0:bf57 with SMTP id 6a1803df08f44-707205d3de4mr17248146d6.38.1753442131229;
        Fri, 25 Jul 2025 04:15:31 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b53ca1973sm882413e87.198.2025.07.25.04.15.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Jul 2025 04:15:30 -0700 (PDT)
Date: Fri, 25 Jul 2025 14:15:28 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yongxing Mou <quic_yongmou@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: hamoa-iot-evk: Enable display support
Message-ID: <h63j6zveofatmzk6zj2ffvqo325kiqu6vnn2vekb6t4lniyipk@k55zwfhga6uy>
References: <20250723-x1e-evk-dp-v1-1-be76ce53b9b8@quicinc.com>
 <6wwcxwgcf4wm4ekb3d4ukkyyqsseaawo6l66umzxim4kcilynm@fc6mwj6ymnes>
 <c7041754-7be9-44f5-89a4-03bb21e2d342@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c7041754-7be9-44f5-89a4-03bb21e2d342@quicinc.com>
X-Proofpoint-ORIG-GUID: Nh6M69s89vUJCjBgizlu-FMf7tTNc3NQ
X-Authority-Analysis: v=2.4 cv=IZyHWXqa c=1 sm=1 tr=0 ts=68836755 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=d_ojn6GSUL3iYoyApoIA:9 a=CjuIK1q_8ugA:10 a=iYH6xdkBrDN1Jqds4HTS:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: Nh6M69s89vUJCjBgizlu-FMf7tTNc3NQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI1MDA5NSBTYWx0ZWRfX/7wKfwy7eKI6
 63pTDcVL41zhGv+60owVIJulvO8wPbLzxI8PglpSaqCx7983Uhd1KV54r9iJBvqQ0aK3hp5xHik
 QU378nnWFCUl4haQ19ZoNeq4f3NRuGD61DDPRNPYfzxMU2dcwOUGKQUz/4fqFoFJM9q0e3RjQC8
 xcnlWus2MxBqSpjZqISYefRAFrP6tZu6CDOqChGkDx0b1h/leN1WxCNNF0xgk3/pSpw3fqIuIQ5
 Yokpe3g12kXF6Y8p6P7XfXCuOy/q/CrADTshcBL/eCnhyFVOYATm5Sg0qorCWMS0rOUlmqIICu3
 mugXNryZCiuOhvwqrZwchHNDbOMY8Rtga2Hz3ttlYOGVSs1zoQSCET/050u7F1QQ5Y54xgz+HDH
 ctykN9FONF/uVGKDX1uutRxJr809nzLtVupNvjoUcM2/j+GMXa+PMNikliIraa+F8MEydhIf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-25_03,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 mlxlogscore=999 mlxscore=0 adultscore=0
 phishscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0 impostorscore=0
 clxscore=1015 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507250095

On Thu, Jul 24, 2025 at 03:40:52PM +0800, Yongxing Mou wrote:
> 
> 
> On 2025/7/23 19:21, Dmitry Baryshkov wrote:
> > On Wed, Jul 23, 2025 at 02:14:55PM +0800, Yongxing Mou wrote:
> > > Enable DisplayPort support on all three USB-C ports of the
> > > hamoa-iot-evk platform.
> > > 
> > > Unlike most X1E-based boards, this platform uses FSUSB42 USB
> > > switches for the USB0 Type-C port, while USB1 and USB2 rely on
> > > Parade PS8830 retimers for Alt Mode switching.
> > > 
> > > Support for the PS8830 retimers was already included in the
> > > initial DTS, so this change adds support for the FSUSB42 switches.
> > > 
> > > Due to limitations in the USB/DP combo PHY driver, DisplayPort
> > > functionality is limited to 2 lanes instead of the maximum 4,
> > > consistent with other X1E-based platforms.
> > > 
> > > The platform also supports embedded DisplayPort (eDP) by default.
> > > 
> > > Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
> > > ---
> > > This change made top of initial DTS:
> > > https://lore.kernel.org/all/20250716-hamoa_initial-v1-0-f6f5d0f9a163@oss.qualcomm.com/
> > > ---
> > >   arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 156 +++++++++++++++++++++++++++++
> > >   1 file changed, 156 insertions(+)
> > > +
> > > +	ports {
> > > +		port@1 {
> > > +			reg = <1>;
> > > +			mdss_dp3_out: endpoint {
> > 
> > Add empty endpoint to x1e80100.dtsi, then patch it here like you do for
> > all other DP endpoints.
> > 
> Hi So i need to add mdss_dp3_out: endpoint {} in x1e80100.dtsi and
> +&mdss_dp3_out {
> +       data-lanes = <0 1 2 3>;
> ...
> in board dts..  is this understanding correct?
> 
> i just wondering that here can we just follow other x1e80100-based dts?
> others 8 x1e80100-based board dts all introduce edp-panel in this way..

I've sent a fix for that. While squashing this patchset, please update
it accordingly.

> > > +				data-lanes = <0 1 2 3>;
> > > +				link-frequencies = /bits/ 64 <1620000000 2700000000
> > > +							      5400000000 8100000000>;
> > > +
> > > +				remote-endpoint = <&edp_panel_in>;
> > > +			};
> > > +		};
> > > +	};
> > > +};
> > > +
> > 
> 

-- 
With best wishes
Dmitry

