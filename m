Return-Path: <devicetree+bounces-173725-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C5909AA95CD
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 16:27:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8437817A537
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 14:27:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D155425C70B;
	Mon,  5 May 2025 14:26:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UR96SL6e"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EAB225A2C6
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 14:26:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746455188; cv=none; b=pb2wC6bziAteGuyZGVmLzL07FhtJfk0gfKIg28Lg5eXL07lfEomC5tco2LpZbCtR78byfRcdY+hB89wlRkzh66PEhGoWoW8KGwX/0HDYaLTagw1PWFVKmsNj30rmBjNz59tN9MK4HOOOmlCu2TQN2nqx8rsd74H5pwpjm4G5ZJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746455188; c=relaxed/simple;
	bh=QJs5+k/qrBs5cgN7eO/MR/BelasA36UFUZz1dEKH+bU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Q4oFEFo9ULYnnakyGZci2PoCHauQ8neZx8LBE9QlPmy2Vjgvh5hKOp2o9k5L8HHQPF7kwIxmgbH+fSdwfAD7LFOaSJsqxFTIK0XL1lwnsReySG4jcriWbNFYNOWmvwTWt85+Usi3DCilhasf0Z7tmU1kyM3M2OZ/03tPko3qML0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UR96SL6e; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 545CEHLP027975
	for <devicetree@vger.kernel.org>; Mon, 5 May 2025 14:26:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hUuUX8bIcyPlPuoPDbT04z3jokr92aiRh0rQ0I5EFxU=; b=UR96SL6e5gPFzkXA
	odKlmcPqeKK41JVxUf82jk//dsmtkYSa5HknVSNgzHAOjwsMkfXcZLC87mqYYI7b
	fKFwJhpAWdHtpEWLgBXi+6uSOYndtTRgIvYSR/MNzvDmUYhC6EZkhWjchi4GXnul
	azXI2GoGYe8SpUEE3e1T8tuCeZahsR/vzglHnO+TcoJxQpax8BPjaQUkCO07zZsQ
	OQ3cdGKI1orl3EqwA+Mw9+a4nR+ZQhZ0vpspTeWdR5+CGl444OKWsaZQQS7LVpNS
	FRGFUJft8cqpRT2YQrGA1iDA9E2hGvBVjhPxJ3yJ4F+wp9kICXpUQJ1tsKyT3OuX
	0XSOIw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46dbwfm6f2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 May 2025 14:26:26 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c791987cf6so909047985a.0
        for <devicetree@vger.kernel.org>; Mon, 05 May 2025 07:26:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746455185; x=1747059985;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hUuUX8bIcyPlPuoPDbT04z3jokr92aiRh0rQ0I5EFxU=;
        b=nlKM54IKoqUTxAbzH+b1vNoyfeVwTwlrAk+Jd9sWY3L7xaZwWs2wzgoa6Tyozj0rMH
         x2DT7uk8E6zsxcArUC/UgCQoYczHiioCBP0wHWqIPN1OHDO3MqFhBTzStdb1kvkX/CMM
         OOG4EbJS3AxQnOZhodcCihiSwEk++wqm1bWEqSQJUCRrx0eq/lY+0K6YqBB3/AdSdAA4
         MVwZDRQYEBb1R+E1Mpv5CdqztFyAT0Lfk0EpI+ZgIAAellMMRy5AcksIFI4SigMTeO5c
         nlzvMv5+8ApKTvW43rGyRfqYUJy0vVTg3MRt50kZ/NU+eMac206UTpM26yKVLh8iS+kz
         w7hA==
X-Forwarded-Encrypted: i=1; AJvYcCUEz3pybZyzqSk4SU95Pd9ERlDh4TRc0LEotgOgQZOMci0BFxRtwAuC1FsM8DktZnSJSJz+5AoeVkAl@vger.kernel.org
X-Gm-Message-State: AOJu0YxJmFV/fnx+MuRR9s5Am0qYS1ichId1sAUhmqCs28LAfZbNm0/K
	M7O4Be9YR0oXmhy3Hmp8VR6wCJ8h4RK37rDOWvZhdVdg+SbO7Cozdn4g6YrYhthRdXu92vJ3W8f
	M99PMT6Ar31IRWk7Z8MNMO6R4f9hAfmIox2RFDillVKLElXPKpcvnc/Qo9mq1
X-Gm-Gg: ASbGncvCRSyY5L2g5KHRdvnBg6WJfrXdqkx4FV4M0HdrwzgWcDD+mgqLuKkkEugIdEn
	A5D9eDzNDd7d8pEt7i9W7sYHqQQospaimmWLo0PJ4GVcyZZosCtN6yBVmqHyyrZukP1PmdlEMyi
	fkGUlIXOAq0QoMGdgJLJs1W4hd5TcHgf2BM3hPILkAgDQT8ODGSyh6FDclD5tx1RHJkXSvurdPW
	AMn7cuJxoD/kLMk3quuH0bzescvGbnfDDchifkDdC4R+AcoDjlMVjI9OqHviPxUT4FWO8aVW7Ay
	S4wSQHwswTGyIXiMaRikQAIt6a5wI4+z3Zw9vl+4Jc8t0HmoWBlNOQQyj8IQltjiGbcfwV9R42s
	cwYusuaT7Izqxphlsi2uCFvuL
X-Received: by 2002:a05:620a:4711:b0:7c5:5768:40b9 with SMTP id af79cd13be357-7cae3af02b7mr1068084585a.43.1746455185132;
        Mon, 05 May 2025 07:26:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH96RuYp8rf3yGAy4C3TKAyGKugvGUg3+4xADJwkHYt/kyUMmED6s/qSvsMF10QY2xjxR0J+g==
X-Received: by 2002:a05:620a:4711:b0:7c5:5768:40b9 with SMTP id af79cd13be357-7cae3af02b7mr1068079385a.43.1746455184728;
        Mon, 05 May 2025 07:26:24 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ea94f17fbsm1726765e87.170.2025.05.05.07.26.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 May 2025 07:26:24 -0700 (PDT)
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
Subject: Re: (subset) [PATCH v6 00/11] Add DSI display support for SA8775P target
Date: Mon,  5 May 2025 17:26:23 +0300
Message-Id: <174645517266.1455227.14417676448478997955.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250505094245.2660750-1-quic_amakhija@quicinc.com>
References: <20250505094245.2660750-1-quic_amakhija@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: L0cThaYqv_I4uwDgK87h_kXgcTXt9tyY
X-Proofpoint-GUID: L0cThaYqv_I4uwDgK87h_kXgcTXt9tyY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA1MDEzOCBTYWx0ZWRfX4XtYp88Euic3
 8EB+wTrvBaQNMxwYBRF7BlECz0qubCyu0o5Suwa01CDfC84JpcAZyxS4F1+MuqO+kY6VVkwPZ43
 JLnSsmEoynU81KZ3jkYzNTPvzVIxHSkX/bqigAv3J5KdMsnUW6bBYrlFUFrpB1a3gmqAQIfG5Ef
 7wTjtX3C8pw1J/q0o35Ni2dvbBWr6DGBWtqk6WScX96FMNuAs5rPhjjDC95P53fYgtxbqPiCdb5
 iYI05KzGz8T3D8gE2ZyEaFjAodvUUy1xJQxXqhGsLAa5puVj7hv2gsOW5Iln7N9XHco9cvJLMlh
 WP9LviXCJQCW3TMwbKAg85/jlL0ThkHa8ja3NjUHdG/HFURqW/BtYpJrgKPapWEW9Mwxj6kWkZQ
 pDrtRuN48tcJms9X/edfA8/DLMzIw1sM1V7egrvM8IMJtucQa3gqbMsXWIGsBCAbx3ex/cix
X-Authority-Analysis: v=2.4 cv=AfqxH2XG c=1 sm=1 tr=0 ts=6818ca92 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=-3-qUcdfqlWSZcId2SUA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-05_06,2025-05-05_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 priorityscore=1501 phishscore=0 impostorscore=0
 mlxscore=0 adultscore=0 lowpriorityscore=0 suspectscore=0 mlxlogscore=999
 spamscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505050138


On Mon, 05 May 2025 15:12:39 +0530, Ayushi Makhija wrote:
> This series enables the support for DSI to DP bridge ports
> (labled as DSI0 and DSI1) of the Qualcomm's SA8775P Ride platform.
> 
> SA8775P SoC has DSI controller v2.5.1 and DSI PHY v4.2.
> The Ride platform is having ANX7625 DSI to DP bridge chip from Analogix.
> 

Applied, thanks!

[08/11] drm/bridge: anx7625: enable HPD interrupts
        commit: ca8a78cdceb48ad3b753f836068611265840ef22
[09/11] drm/bridge: anx7625: fix drm_bridge ops flags to support hot-plugging
        commit: 71867e8d88fc7f94c2e47b3cfd676710c120cbe3
[10/11] drm/bridge: anx7625: fix anx7625_sink_detect() to return correct hpd status
        commit: 366ca0bcc953a4a8a9c9ce2133e6843730210049
[11/11] drm/bridge: anx7625: change the gpiod_set_value API
        commit: 50935044e58e563cdcfd556d62f27bc8744dd64e

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

