Return-Path: <devicetree+bounces-200871-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BCCCB166BE
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 21:14:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A544C7A139B
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 19:12:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1C342E03FA;
	Wed, 30 Jul 2025 19:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="F+tBuQT8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E92C61E25F8
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753902835; cv=none; b=NYE08cpWnofYYry+NEyqBZC9bOM7fHr4Fp6Epby8yEcdowczJL68eB8IJHWaByrcxQ6lfFEnKmZ1z1Ic1mEWoMXWYR9ewx2pPCqDXhwoUOsuw9tkEQUlox3mpbzPO0ckVOq8Jo6KuJq9c4VdkLtl3N7Xe8X0Kf3u/sEsI2J4G+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753902835; c=relaxed/simple;
	bh=Q40vFM47o1aH80LOoTyutooZitVa1Avk/jyW8kw48GY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hVpvTFrYyQIEITHB3CsziDS1d9i5OcRw2SJgR10b5yv05wMSsc1X1wFedXx6e8j9Vt/tRKv8QlWCni4rICM42VCsJDKiBgcig0/XTGt5Vep72ld3IXZgBHugIjjn7wEmA2mF6JWFnN31gdSjdzYn3t+H2yOoQD6bVXi7xYVamgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=F+tBuQT8; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56UCbCs9024601
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 19:13:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=aMpNvFPvt2cMAKNRFOUnF1jA
	yCuM7WFPijqR+Ei2D/0=; b=F+tBuQT8LTVPb4S5M+db3HHjBSYUucF1a7lRQtWt
	MIR9SkRhya+99V5V8/lCkZ69XUEV/WfkivHNugmXANg0r1P28+MM2JyoH76OU4yp
	TbYNkbUDeC8lxyKLRmncSo/Tv1OzyRPECGa70SVC/QkPzqjCCixFMMjhKsCehjac
	v6FVx4Zb6O92UC3KAD68jRCtmr0WCwmlFwoCXAxa4yeU+J5q+N+SCJ2WJzwgkUTJ
	5hQZ4/5/16sA898jwCJ0JuaW4Xj1h+vRzRlEpLuCQbQINUwExDgOnUdfHc5Bt08t
	NCt1x7voA+9p6OoZX9Znl7ZxSX4iMQYdS7hIjKYGKz1RDg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484p1amy64-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 19:13:52 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-70771983a52so1786226d6.2
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 12:13:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753902832; x=1754507632;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aMpNvFPvt2cMAKNRFOUnF1jAyCuM7WFPijqR+Ei2D/0=;
        b=ErupI4nr1ptjF9c34AxUgTK29/ygliEoaaBMcX8rX679vQW5PAsWU8nxujTjK+NzfT
         Ue5AWtAY96qQtsOZE7Sm4mqNcDsGQGjUb3y7vda2wKE7aGL9hEb525qfKBjnUX7hRiAK
         cHlwZ9i3xFRjddFW4KuLKXir/UFjpQxrd+peFU9ogbkGAgcnvXXDkPIxILz1Mvws1y81
         lYYyeSLKmH/mSDG1vuvCIuNpBOufsWAVWTYPnxTQpK1w5GLXAJTV+/vQMZJ1L01+/0kw
         PlLJeMsotoDt2LiFm4rr7kv/dZpNW7Uc3HuY59kUyBRIRlDthn9VLNeSKjmlSfbgs4hb
         frsQ==
X-Forwarded-Encrypted: i=1; AJvYcCWxJOvgoJOXQK7fxg1uESGwj0gwlyb6BjApAO3PrVukm9B4Wtk19Q0MEoTAJ5fIzzlHpb1A1th2qG8E@vger.kernel.org
X-Gm-Message-State: AOJu0YxqVV7xklRQ9Doy7Gk/b2VIjXit4oxl0F+cI3ByQmzhPTegW+qb
	xQzuWviP2AY/DS/9rm2lNkqqboQTfjnQg3xJVxp5vhJQBgO2ssSYwFU/4oEfEbW4dHQFBWqArZd
	IyqWbyzQfaFmBI0qE4WN/RjvX/C4qvN9/TsqQmKwVE9NDdhdaXY9R0Ym6W4qdlxSs
X-Gm-Gg: ASbGncudEZNu4EsabM9HEBGeuaPhP5N5GnYohcZ/hXn+Sb8d/O7n/3++qpQ/K2/BqIb
	Qskt2pKSP7RLoZXjf/sI2psMcGOMTNBwiM9+AhGre9Tlg3LX4pBoPI24He8Hncnc52NjzZNMddN
	NFQCi/qw0Pyu9musGb6cyAWDK8TwYZvjkou53lULkksl4ZaBE99i+H3LUstNvoem6w5uMOGYdOQ
	GWJ+AQhjXJ0jJXOHp1CDO0fkIB/64/z+Yhc/qLX0s37LJcWZdShbkLFrDL5cBufnf6tlnyQOIh4
	d0eA73QdbSf6+/9wBpVAtWzZ5QxGPp5+haXIAfplMnI3NiTzg3Odl1dbSwozb8vsIHmeaFOwcdR
	db1yjYifY7E8J4C9HyiQNWJcI6s6rVreJVYjd+UGlnGZ57jxe2SH5
X-Received: by 2002:a05:6214:5010:b0:707:3891:a072 with SMTP id 6a1803df08f44-707669f8c80mr67431876d6.0.1753902831541;
        Wed, 30 Jul 2025 12:13:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGHgmYSqHWL1JQSbQgLX/lTKYei8dv1aftQo53r3fvUDU06KrOX+cc9BvRo4AKOH1ZPMuJ35Q==
X-Received: by 2002:a05:6214:5010:b0:707:3891:a072 with SMTP id 6a1803df08f44-707669f8c80mr67430436d6.0.1753902830418;
        Wed, 30 Jul 2025 12:13:50 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-331f427c501sm21257541fa.77.2025.07.30.12.13.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Jul 2025 12:13:49 -0700 (PDT)
Date: Wed, 30 Jul 2025 22:13:47 +0300
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
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Chaoyi Chen <chaoyi.chen@rock-chips.com>,
        Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>,
        Diederik de Haas <didi.debian@cknow.org>,
        Peter Robinson <pbrobinson@gmail.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v3 0/5] Add Type-C DP support for RK3399 EVB IND board
Message-ID: <3kefqzjewmsyzfvyi33kvlgjd6jphjg3fsnixb3of7yb3xkgs2@hgi6xfkgd653>
References: <20250729090032.97-1-kernel@airkyi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250729090032.97-1-kernel@airkyi.com>
X-Proofpoint-ORIG-GUID: Q1OvrGkmk94vhw7Gz2l11COiThucXOS5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzMwMDE0MCBTYWx0ZWRfXzQGV5yzTBH1l
 vWnQbPzCPM5cd2UAZEDKgu48FHgUxBY/3Y1ZySIAm+jbS8dePWfbVjYsRG1frQ/bC66yf99zEmO
 rCCOtixx+GlR1cMYBqPRZbAzzX6wiE6a5c60DTRWkAGZ+m+yyGDlzYt4xAy/GDEov9z+aNtLBqo
 Gxn4+xWjNDpx79LjWdVicZd1gu5b/KKWIxBDlksArXyjuhapCkw3GTAsL2D82eAzpd/aFGsjmxT
 fi3SlVPP8qxgfpss6R2NdHRgXVTnfENN0Vg6VWY+DGSTnVXrNJZ8mJrjDci52MQ9UZkK5MlBimn
 sTKA1kSMqxFMCoWxfV8hv6N/lQ/UdvfzhMvHFxiWkDkP+x5FnhmolaQD6pA/66lFl39mSXdm6Ju
 7+EuGLW6vgPkfpHTVddqsRxB8Rv2NE7HcZZElW5xm8XDFR1aYFcyDJGxJQSe41W4nCldFxbw
X-Proofpoint-GUID: Q1OvrGkmk94vhw7Gz2l11COiThucXOS5
X-Authority-Analysis: v=2.4 cv=KtNN2XWN c=1 sm=1 tr=0 ts=688a6ef0 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=s8YR1HE3AAAA:8 a=14ipHPXA7Wsnq1XJWM0A:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-30_05,2025-07-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 suspectscore=0
 adultscore=0 mlxlogscore=831 bulkscore=0 spamscore=0 impostorscore=0
 mlxscore=0 malwarescore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507300140

On Tue, Jul 29, 2025 at 05:00:27PM +0800, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> This series focuses on adding Type-C DP support for USBDP PHY and DP
> driver. The USBDP PHY and DP will perceive the changes in cable status
> based on the USB PD and Type-C state machines provided by TCPM. Before
> this, the USBDP PHY and DP controller of RK3399 sensed cable state
> changes through extcon, and devices such as the RK3399 Gru-Chromebook
> rely on them. This series should not break them.
> 

[....]

> ====
> 2. DP HPD event notify
> 
> The RK3399 has two USB/DP combo PHY and one CDN-DP controller. And
> the CDN-DP can be switched to output to one of the PHYs.
> 
> USB/DP PHY0 ---+
>                | <----> CDN-DP controller
> USB/DP PHY1 ---+

Could you please clarify this, can you switch DP stream between two
USB-C outputs? What happens if user plugs in DP dongles in both USB-C
ports?

> 
> BTW, one of the important things to do is to implement extcon-like
> notifications. I found include/drm/bridge/aux-bridge.h , but if the
> aux-bridge is used, the bridge chain would look like this:
> 
> PHY0 aux-bridge ---+
>                    | ----> CDN-DP bridge
> PHY1 aux-bridge ---+
> 
> Oh, CDN-DP bridge has two previous aux-bridge!
> 
> Now, I try to use drm_connector_oob_hotplug_event() to notify HPD
> state between PHY and CDN-DP controller.

Does it actually work? The OOB HPD event will be repoted for the usb-c
connector's fwnode, but the DP controller isn't connected to that node
anyhow. If I'm not mistaken, the HPD signal will not reach DP driver in
this case.

> 
> Patch1 add new Type-C mode switch for RK3399 USBDP phy binding.
> Patch2 add typec_mux and typec_switch for RK3399 USBDP PHY.
> Patch3 drops CDN-DP's extcon dependency when Type-C is present.
> Patch4 add missing dp_out port for RK3399 CDN-DP.
> Patch5 add Type-C DP support for RK3399 EVB IND board.
> 

-- 
With best wishes
Dmitry

