Return-Path: <devicetree+bounces-173468-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE47AA87D1
	for <lists+devicetree@lfdr.de>; Sun,  4 May 2025 18:14:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C09BB1775B2
	for <lists+devicetree@lfdr.de>; Sun,  4 May 2025 16:14:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 435901EE03C;
	Sun,  4 May 2025 16:13:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KmuoZrem"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84D631E8847
	for <devicetree@vger.kernel.org>; Sun,  4 May 2025 16:13:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746375226; cv=none; b=ARuut5TizUOhvRS/kFNx8mXsHOoqQZs3AlGG2+HLj1k29gW64qLo7uhRgPdaazxiY93ZjtIkV8zOSlqrpwZip7ZpZYDM9CJ6cO1GDSqZ6ykG6A+/+EJVA6qfXG3KlVnfXCZq2zkT9wY/hZNimNsTgFv8hGOIxMvcGILnWie42mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746375226; c=relaxed/simple;
	bh=O68Yf4MVfSbvrTGnH2tyPtJDd/D9PTw/7oag6m4b3Hk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=nyiFz/ZMk7mhzLtkK/ot0YP7BJfHKGtW7g+Kkh7OFrHuRScwCKVSBEVK9rPhx/HEO/qpJakusQu1X8/FolPcQSfxfOhoIGj/HFIRDYk70eLe8VF9KqTMAZqgMIAXiq7ifyW0pIuOyL6qxKEMIB1v+l5gOPspFwc4wCMC5u5fEkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KmuoZrem; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 544DH03S008222
	for <devicetree@vger.kernel.org>; Sun, 4 May 2025 16:13:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VqRNS/AP2L0HYV/XzQMxzhswyBS2iB5hSp0sUNl5kjs=; b=KmuoZremEiorgmv6
	hZ8N2J1KRhkxb3L9zQJbG+Vwnt1Ki+ZvBh8uLNPQ3LzBeVueVVb2dCfIsvhQ/T/m
	ZXJs4Z5p5W5H/Q3Ikmk4H3EjF5dSmGJ9aI1NU7zXqhBc/uIDsa088TteaElE4RQX
	dc5iUulHFfafIrOBKhwzXy0gWXSUTDXJAVTcJ7/hmrfWe31Ij7qU6WHk9ARh4DJJ
	jkGwtA4HS8orNBfiW9BB6Jlf61e9njSAzEl/fppwE6QYxxMiqFlTgtK+BgRj7t7A
	8RmJOKvzpLGK9aSIzsvkgX6a25X0wk+5fjH8OB7ouNjlbj+CoMsbTpCCQmmkuv/7
	fS1NCA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46e0xsrpx8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 04 May 2025 16:13:43 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7cabd21579eso5492785a.3
        for <devicetree@vger.kernel.org>; Sun, 04 May 2025 09:13:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746375222; x=1746980022;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VqRNS/AP2L0HYV/XzQMxzhswyBS2iB5hSp0sUNl5kjs=;
        b=s4GVXzYOAgEOSgxYocvvA33AqIV7P2DiYxYB6l+c/3JbSPSyclA9RMzIP2FB+88WpH
         bFrS0dG+d8lIiocBqYRGDZ8YxsOHcYFYy8CIJyIT2yei/mfegx12v6Sn6v8q1UIyOL8v
         the/IhNAyAiTgbPntQYJvTqcBW5CGKUFyA8ebRpHGFJGOBVFehMKRRCdDS2x7iZ9kHBM
         IEHVeCtAeek15Lc+T8nTdv0xx7UiBp+qZDF2cV6rrcyb5bhuaDW4+pp9ZHrGcX/T86Pp
         Iy8X0ME6iWs0uL99/pCZnCrGiQ4j/7MGSBFmGNUuLFJLNmXpUMBAyTFgzNo4oEXIxns7
         diCw==
X-Forwarded-Encrypted: i=1; AJvYcCXxwDn5jSy41mo25LGZIQccEUTJBWvXcNipBKMyhUByVQwCBypwAZY9OkoJRRFDQ2QPkg295SVIy4MY@vger.kernel.org
X-Gm-Message-State: AOJu0YxT1eqU7eiZ8HByRttB63MPK/vI9Wn99ILc+kP020tzIwY6axuB
	+nbfAQkrp+FyK+F1c0HiMFWKbcbPLdoOkUKbllUFL/V853thIp/XJcAKw5l+dbmiWiEqZyggiar
	fxvEVchLzYvtXUSJsEgjkSUpFQpCDF3dR/d0EmG5t7FZ1I1TJAmfRWKt1Tdkc
X-Gm-Gg: ASbGnctHxD9yciv1mpbBl7LhCpPAk6j/p5SOpvBWtQZnz7iDkKOGbYpHb/xsk9UdZMP
	2KgPmjLBWk08KKI4tt0c3ZYSHPUd33G4rrepe67fOl6u6BFQOdfa4c9jWkpMgYbCTuhPjPveMh0
	r1Uq70Y1Kwv5gMly9xstYkv/7i3/1lusmm6u8hNobUfU0Te58LNj03W0mMSMkidB7ElbdJa+/Sd
	X6Sm6J+rpgGkUgcitHia/GHps6qJwM3sHbA8GWli23kLJivm1hMRM22Exuh6DKRIu34dwGw9/wo
	NhJvg3tVzXwUEqF8S7OxfrUMvYU/RQzDqEpjppoimwP/kJcvvlEIwqPfxfnVc/8XjxpiDmBf/UO
	B50wsFrlDlO25hH8ABKJWhdg1
X-Received: by 2002:a05:620a:bc5:b0:7c5:a29e:3477 with SMTP id af79cd13be357-7cadfeda15emr898765185a.53.1746375222406;
        Sun, 04 May 2025 09:13:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH9jh4HRhFrjaplPP4DWWTXh3MXHXCDhI5cVsnoV7jzD3rgGA1I0X5J69xbTqyP4ckpUfqShg==
X-Received: by 2002:a05:620a:bc5:b0:7c5:a29e:3477 with SMTP id af79cd13be357-7cadfeda15emr898759485a.53.1746375221999;
        Sun, 04 May 2025 09:13:41 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ea94ee937sm1335231e87.142.2025.05.04.09.13.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 May 2025 09:13:41 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Jonathan Marek <jonathan@marek.ca>,
        Bjorn Andersson <andersson@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, iommu@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v5 00/10] drm/msm: add support for SAR2130P
Date: Sun,  4 May 2025 19:13:24 +0300
Message-Id: <174637445761.1385605.10286310480029078025.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250418-sar2130p-display-v5-0-442c905cb3a4@oss.qualcomm.com>
References: <20250418-sar2130p-display-v5-0-442c905cb3a4@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: t0Vz8IbeuxQX4Gpuj1C9tjBvhmyW86Wv
X-Proofpoint-ORIG-GUID: t0Vz8IbeuxQX4Gpuj1C9tjBvhmyW86Wv
X-Authority-Analysis: v=2.4 cv=bdprUPPB c=1 sm=1 tr=0 ts=68179237 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=dt9VzEwgFbYA:10 a=e5mUnYsNAAAA:8 a=EUspDBNiAAAA:8 a=iEGPaXCqe01J9_RIJz0A:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=Vxmtnl_E_bksehYqCbjh:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA0MDE1MiBTYWx0ZWRfX5D7m+y6c+pH6
 T9f11Eg4Uup1fF4GrluhISbRS11WJqTaVWuX2C7fsDSqWR0a74LaA5tBzUlAsedVLkp5CHALjuZ
 9PWj8dEiWpd/1yDHTxaRPLopN55myS6pxlu3GfNap7kb6li8+2Arfi+Nq2QZd9tPgRcFsQnQcw7
 u6STK2BzPRZ+GdaeahEWGWUqQWtyOIXc5tP3GmyGRtdCJBy00Jn8NEODwCp5LpMjCU89zcJa7Am
 xe5v16xTV2KZ44FElmGZoPNBgNBuK1A88wa55lmasq89nHXi8JzrWDyPKr199KIkmGowZZQq772
 W55KWNK3IMvApK56HTBB67cOVmO/pDreyM5K2i2Gc0ipWG30Abf6Axph5DDVRMT51S9we440F8J
 8kvg1GfitMHymg4u7mKoPnbeQ1/OXcW1oZJKBgu4XcxM/OgAIPVLJY2qKw6kr3Roch/jhOKO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-04_06,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 suspectscore=0 malwarescore=0
 clxscore=1015 phishscore=0 adultscore=0 spamscore=0 impostorscore=0
 mlxlogscore=845 mlxscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505040152


On Fri, 18 Apr 2025 10:49:55 +0300, Dmitry Baryshkov wrote:
> Add support for the Mobile Display SubSystem (MDSS) device present on
> the Qualcomm SAR2130P platform. The MDSS device is similar to SM8550, it
> features two MIPI DSI controllers, two MIPI DSI PHYs and one DisplayPort
> controller.
> 
> Note, due to the technical limitations DP controller wasn't completely
> evaluated.
> 
> [...]

Applied, thanks!

[01/10] dt-bindings: display/msm: dp-controller: describe SAR2130P
        https://gitlab.freedesktop.org/lumag/msm/-/commit/b341da1172fe
[02/10] dt-bindings: display/msm: dsi-controller-main: describe SAR2130P
        https://gitlab.freedesktop.org/lumag/msm/-/commit/3c70c9d0a99d
[03/10] dt-bindings: display/msm: dsi-phy-7nm: describe SAR2130P
        https://gitlab.freedesktop.org/lumag/msm/-/commit/262650e71854
[04/10] dt-bindings: display/msm: qcom,sc7280-dpu: describe SAR2130P
        https://gitlab.freedesktop.org/lumag/msm/-/commit/759fe7181723
[05/10] dt-bindings: display/msm: Add Qualcomm SAR2130P
        https://gitlab.freedesktop.org/lumag/msm/-/commit/3096209b7a62
[06/10] drm/msm/mdss: add SAR2130P device configuration
        https://gitlab.freedesktop.org/lumag/msm/-/commit/1e7cbfea6624
[07/10] drm/msm/dsi/phy: add configuration for SAR2130P
        https://gitlab.freedesktop.org/lumag/msm/-/commit/8e63b2075e01
[08/10] drm/msm/dpu: add catalog entry for SAR2130P
        https://gitlab.freedesktop.org/lumag/msm/-/commit/178575173472

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

