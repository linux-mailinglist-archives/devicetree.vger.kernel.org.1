Return-Path: <devicetree+bounces-178414-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 55BC4ABBBD2
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 13:01:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C09A4189C5DF
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 11:01:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5274F2798E3;
	Mon, 19 May 2025 10:59:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZM0tL4dc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94D8027466A
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 10:59:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747652344; cv=none; b=gslwR9F+++z2DRmrlwgMTxstxTbq236hCT15Zr0pSN97Ndbptky+saBsCHn9w6jElSxXoygmOHAy2zaxYq5k1EBzTukIhHRyrjjY3hg12JvISTBY9d/du6ySAtfnb6nDAg68tyehavbWIAR8nLc3Cv91KwKJR2+rKSK+HDlodxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747652344; c=relaxed/simple;
	bh=GoymrrvT+xbHk1nFXIyGwohvSJZVfRO2gKNmW6FLqjE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=PgBc6pG6682KSHCwRBQoyqLk0CaWBf7hE6VYiqHfMm/hMRqOSA0o1KzFA+ydAsbFOYHXutDsVhUgHbT/OTIXsCLFMluWSjIqqt8VB9FI6Lg+JdBD78bGrKgLDpO6R3bQn2j25p2WQG0b/NM6mzV17GxVwAa/q7NRjiAVjocDEpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZM0tL4dc; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54J9G17V006013
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 10:59:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cfdsQNjtgTXSpICV+XJjH/jK4YQyRmRdmbdXbvMbr6I=; b=ZM0tL4dceR9ZCazG
	sqyUNVptegjhUqnFXtVaK7AwTemiMq+jJw+hd/XdGG0puVGEWs1zMuzPD3ev6BEx
	rNhnRh2j2Fo2r2aLqlVHHU3jsC2WNTDQeJUh9m2RKioDejVLpC7UKoZHKtA9N7SS
	KLRt1qH30eHLUloaKE+FbvolX6Wd508DVmPkjqWveb+Cxf5ocZGat0B4lM8imiav
	1mJ+L9tdn7qbaZcnvsyaR9dMOFSH+y5dpjTpJh6fofFzyLdyvCEw428UfabjSBUU
	KQ+gwoSwxDMQCNjP12/IJP2f7KpF7QLYuFMEBJAzfsj6VnJ2TBRYffQZVdRBvjYw
	xfkTQw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46pjnym4gs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 10:59:01 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6f8df69db27so7024406d6.3
        for <devicetree@vger.kernel.org>; Mon, 19 May 2025 03:59:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747652340; x=1748257140;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cfdsQNjtgTXSpICV+XJjH/jK4YQyRmRdmbdXbvMbr6I=;
        b=pZ/fGjv5fj84sKsaS7dmxgfemB/7AHz24s3hYDrWpgeGFdMGdSLNXrfi1Ykv14Wf8w
         QRvgd6fpVyii1kEXzO+qkEv77M8eRj0ZKj2WwMPZXL/YdDLZXAET7jSjfah8cW7p+04S
         P0Tdeb8WTugZ4J273ZexbuBljCqcNjIuCkCICPQGknFQW3gz27DchFrLz591Yuq0Fbke
         47pkQKvGzLumUAZSjCjjSAg/+7/kBk0RLDPnnjaDLjeD66kYs1Gi6ohWNdL/xFd9KXsl
         /3jLvfky0AaKxIWrjQCB1p03FLG4/RqDFV5M2j62YzK8fnwC17S1hZDFF2Hzb8KCl5Y+
         D+RA==
X-Forwarded-Encrypted: i=1; AJvYcCUpZWtSZBYS5+RuuG4VOyvagFiw1VYX79g4hpXytHvYR6LmE3yNiQ9LTCUx46UikIgXJfwmaXStR8cp@vger.kernel.org
X-Gm-Message-State: AOJu0YwlVp9M6kwtMQxXFFzYSbHNQXnjvtlB5gciQFgl2ybqpNUCDXYA
	PeKvrjEglexswf4t6Undec+2vylvVVdDsFY79tPqMI/Bg4CIr/G9p6jAiLtrwuY+i9ZjG4qM2S1
	aOCi6nD9nlFgnC9wuRizRDoZgpy68uf78dug9UL9bkFLiy6Q5Xb/BZ1R8yZYGPHr6
X-Gm-Gg: ASbGncsK6lhSosHYWMAShJoF1tJNRoRpmU0+fpK80n31TSuxE92GF6Jzy0q4xyi0CSY
	WepTdJSlvqw8uIK58RjAf5eXcBNvFZUvXYOWP2gIz4epJhdPXbTF8o9qZWNzGDkVREO6TEYiEPf
	dTlrNDQFvkBV/OE84fXqFvpbpNkzAs6HsBNuM2T15Yru1bs98iNy+bST8paBV8J1UATiI/CJpL+
	igwVCbm0+IpoJq8ZiuBeTL+tfm8YYGObOuWgQ7hQKTqnDDM8ZFjSfBu8TNzu5lyrgN1gpjNOrdR
	2pQTD83h+m8vD2RbnaQV+QFq65OMnDeAz7rg/2jiCitoQkBfHqgpm6HFDCHjAKeTpIkLHRy0skM
	tlxdw8Pkl5Inj2chmfYEW7pZv
X-Received: by 2002:a05:6214:230c:b0:6f4:c8cd:abcc with SMTP id 6a1803df08f44-6f8b2b4c46fmr199871506d6.0.1747652340168;
        Mon, 19 May 2025 03:59:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHk/hpb7Fq8p+Ry8/zX3FWlj3myX25sykGI8jSsQ75/MuBj4A+SB9ODTHYvgX68XGn+AB8INA==
X-Received: by 2002:a05:6214:230c:b0:6f4:c8cd:abcc with SMTP id 6a1803df08f44-6f8b2b4c46fmr199871226d6.0.1747652339748;
        Mon, 19 May 2025 03:58:59 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-550e6f314a2sm1801140e87.77.2025.05.19.03.58.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 May 2025 03:58:58 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Ayushi Makhija <quic_amakhija@quicinc.com>
Cc: robdclark@gmail.com, sean@poorly.run, marijn.suijten@somainline.org,
        andersson@kernel.org, robh@kernel.org, robh+dt@kernel.org,
        krzk+dt@kernel.org, konradybcio@kernel.org, conor+dt@kernel.org,
        andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, quic_abhinavk@quicinc.com,
        quic_rajeevny@quicinc.com, quic_vproddut@quicinc.com,
        quic_jesszhan@quicinc.com
Subject: Re: [PATCH v5 00/11] Add DSI display support for SA8775P target
Date: Mon, 19 May 2025 13:58:41 +0300
Message-Id: <174637445757.1385605.6744814496349716759.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250424062431.2040692-1-quic_amakhija@quicinc.com>
References: <20250424062431.2040692-1-quic_amakhija@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE5MDEwNCBTYWx0ZWRfX79bCZvQ2TC5U
 +/E0b4yJcgqdbGFd9AA//vg5cShMVjxb4PW/CLnbHP6a2gBbmc1x6FMJRW93BqY3xjEPly6bV/N
 MUma235nmIHqQx+G65jKzOS8w3rLaZaidrRYPA3+QZIYc8IGUQ7Iuac6R45/WrEJ/zMjtZ8gHtQ
 bW7C0caIV90vY1mfCZ39MHBCktEpUh/3g+uYNwt/rN6zoqkmbbOTkOrAoy67G5cOOcHaeVj53ju
 VNKKqwwffWGvKvomGI0wt1hq72DwaZdu8Fw3kYVIvF6NsO/FfsMfrSrrih0V11sUfgxrq60ITOt
 VPGmgfgmMZXPmRRGEKwXVQkt3dJ2lEEkRO1vDlv/Mq8qz4+q8z/Rxq4+cwDlXyqXdqGOdbmQSc7
 GrFqNRwwVBnLcZ/r62Y2TU4QMvc2D8mSd7qIXtcThLZr6iXICywzammAeWqa6hwqETn/HfRM
X-Authority-Analysis: v=2.4 cv=Z9XsHGRA c=1 sm=1 tr=0 ts=682b0ef5 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=dt9VzEwgFbYA:10 a=e5mUnYsNAAAA:8 a=EUspDBNiAAAA:8 a=rcLBrfNTdlfi3Zk1C0sA:9
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=Vxmtnl_E_bksehYqCbjh:22
X-Proofpoint-GUID: 3jk9A6KqAtHufwrW8H1XIy9XccFTD6jj
X-Proofpoint-ORIG-GUID: 3jk9A6KqAtHufwrW8H1XIy9XccFTD6jj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-19_04,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 mlxlogscore=901 mlxscore=0 priorityscore=1501
 adultscore=0 impostorscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 malwarescore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505190104


On Thu, 24 Apr 2025 11:54:20 +0530, Ayushi Makhija wrote:
> This series enables the support for DSI to DP bridge ports
> (labled as DSI0 and DSI1) of the Qualcomm's SA8775P Ride platform.
> 
> SA8775P SoC has DSI controller v2.5.1 and DSI PHY v4.2.
> The Ride platform is having ANX7625 DSI to DP bridge chip from Analogix.
> 

Applied, thanks!

[01/11] dt-bindings: display: msm-dsi-phy-7nm: document the SA8775P DSI PHY
        https://gitlab.freedesktop.org/lumag/msm/-/commit/850e13b65e3c
[02/11] dt-bindings: msm: dsi-controller-main: document the SA8775P DSI CTRL
        https://gitlab.freedesktop.org/lumag/msm/-/commit/2a0195b94cbc
[03/11] dt-bindings: display: msm: document DSI controller and phy on SA8775P
        https://gitlab.freedesktop.org/lumag/msm/-/commit/a6f2524f4d5e
[04/11] drm/msm/dsi: add DSI PHY configuration on SA8775P
        https://gitlab.freedesktop.org/lumag/msm/-/commit/d3979192fac5
[05/11] drm/msm/dsi: add DSI support for SA8775P
        https://gitlab.freedesktop.org/lumag/msm/-/commit/249a965c3759

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

