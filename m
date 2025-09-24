Return-Path: <devicetree+bounces-220962-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E3D9EB9C9F3
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:35:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 426B84205C9
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:35:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 952472C0292;
	Wed, 24 Sep 2025 23:35:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="X07ZGBNh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 625C82BD5A7
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:35:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758756919; cv=none; b=JhZ8FVVqiybVhnanxEoP8GG1x/8TWvMU5+pU7VzQXSfjrfsL+97XBVwaSsHi3Fq3aLcQKQ/H+kJuKaTPuVoI9hbE+9LuUQmrfIHB9rDQVoRruq2I6fKoNLLpnpiFofA17ZI1DyCVNiqCCeN+cMBTq4UCd7U1n7HpZeU4TfN2wHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758756919; c=relaxed/simple;
	bh=Q7Y5sKrFJYAcd7JLFQleIjbeTi6scSpI9zSmmOVIXBE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SbU8+fhVjm+IWKaMjMt9iT/Vi2MRVPdOOeFKZyEG49tzhq/14Ih8MV41bVBc3reny8KBX6+PiqcdLMVnkyI9RDB+q3ajUXZnFFlLzupQgKBF//9+X8Q98ZRVKc3YVFpR3A0Yrs8LovSLIPgLK8xtt0TwQVQeon78NUr5+WM14SM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=X07ZGBNh; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCcTUP027779
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:35:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QaWO9DEgDqVIwBTC8sgSyuuxsW+ioYv5Qng3RAcDRvY=; b=X07ZGBNhrkJS4Hfw
	hG9PrJmBLalpsAsTYTZwFlUwoy6qJc5mjZjhZoOq/b73ACt7C2QLh+shY1ijYTdQ
	Kk+6AVuaqCrIxJnyrkqm3Ape5SVp3ZZmUa/BEhQPEWOqnttXdZkkikb73tPuRIEt
	svuuBStU9+sgTRYVI2uiGhuCJ2lPw4l3ZyVJXCiLE+JoLOAmHo5HGWKvVBZgNQOu
	22aMbLxf5fzM55mYVbo//OPevCskz3au9EyJn07rrW8GgDiMiZap7ZrpgEm9q/b2
	etH6I+p4rPs4e+u3NsEkxtXcwsW0p7rY3IbnWvyXXFCI1y20prNa8DFlShQt/2/J
	I+OM1Q==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hmnxd4a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:35:16 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-780d26fb6b4so285239b3a.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:35:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758756913; x=1759361713;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QaWO9DEgDqVIwBTC8sgSyuuxsW+ioYv5Qng3RAcDRvY=;
        b=NjRarMr5Dffa+rptI5NPahm+xfzLQ2m8qIu850v3d/w4Ejxxx/cnZwpSMyE/HVi7+j
         iQoq0qp9+Qg++/FuBwByWggZ2xjIUDBealF3Ug0i/SekuA/J7V9InRY2c+ZllRqlUjkG
         zFMVLVvftFlJuH7B7Y27i6zKchBvqs7UgDwjY3FKETqN3DblLsHH2H1QAD3x9NSgwEY/
         Rq4lZHKPGusuTWmY4e/5rlbZFOlt0hUrY2mEx1uSxd+wgAybd+4tAt49CK9JdDaXR+qg
         yn8PVHIlDaDTh2KK2SH3FUhOJeZLLIFYZeo9bMhs/UNFcst9kV2Yl4Q14+49dCW64VOD
         KDlQ==
X-Forwarded-Encrypted: i=1; AJvYcCWCvSK7mhpKv4cOTCs97SoAO6rHxyi6U6Z51l59mkgqb2H/N8aof9DFCypUFAwd4xIWjqRV7zYmXZdm@vger.kernel.org
X-Gm-Message-State: AOJu0Yzp7KfH4aCeiSlA5HrUdDprWzp4wF6KH1+PFHC/CCmyTSThaXNh
	50lwye/RLZTk/2kRJXgDCZlfkW6KeXl9aZMMvYMS7ihd3i8uMktcQtqN9R2U2oBkRHfZgLJr+z4
	7YzBmsFroDddSPX10tcJgDbY3Ym84FE79VKOczag7J+xZmHVJaWNPKSMBQXaF4BQw
X-Gm-Gg: ASbGncuSl0B8jgBkpWLouEToSLXnAWGlZ14YJVSb7W+juTokfoROHXXI51mlYWPGqrb
	Av/9woSoJtHmjFDKxHsAP0qezM1x4uVwhiNLzQI/EkuckuPkxV9CPAlck03DVbCVkrU3GHNT2Bd
	Q2ep6bYhaCurSKCYPHqH+l8DfqjSPgaDgAGWFI6ULJD6VFNIuBUboxnyad+9p2jLeRkfHf3xQ91
	2xsfDJnTph8zjyzVsY6ihMRYnSs02LXSo6HOonSFaTw107N0rkr35tqNXD3Lkq9E2pZmALr5Ufz
	3m+RagyFzBTHE0g8pGiN3X62ElWqcZy4kVNibS9h9LDjjx4l4vM7mZzzjM3JmYnrBtISx99XZio
	KNRhszUWFpF1JWpg=
X-Received: by 2002:a05:6a00:3e03:b0:772:45ee:9ba6 with SMTP id d2e1a72fcca58-780fce17efbmr1909195b3a.8.1758756913528;
        Wed, 24 Sep 2025 16:35:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEBpn2lzR5gwMTN21ScTg1+Ioghs8Ao0Bl/JBGqmTWGzBcRYnazeZu1NEI/aAE8+KZ7s8VCEw==
X-Received: by 2002:a05:6a00:3e03:b0:772:45ee:9ba6 with SMTP id d2e1a72fcca58-780fce17efbmr1909167b3a.8.1758756913098;
        Wed, 24 Sep 2025 16:35:13 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7810238e9a9sm212379b3a.15.2025.09.24.16.35.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:35:12 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 16:34:57 -0700
Subject: [PATCH 4/4] arm64: defconfig: Add M31 eUSB2 PHY config
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-knp-usb-v1-4-48bf9fbcc546@oss.qualcomm.com>
References: <20250924-knp-usb-v1-0-48bf9fbcc546@oss.qualcomm.com>
In-Reply-To: <20250924-knp-usb-v1-0-48bf9fbcc546@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        Melody Olvera <melody.olvera@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758756905; l=989;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=WnYe8cHS28Bdfzb1400w3Q/pQBsMgEBstbc7oiSATRU=;
 b=7uAglFkbwYo4jHhD7gwM2JVXFmP/o4yxCs15lZZSvumjLdI84vH7Fpy9ZL40trCRHSUoqDUDW
 CEe4pD6KhtvCG9NhhXIm71MfIYHuq4t01BYmmCRhc4C4Hro4PFs8IQP
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Authority-Analysis: v=2.4 cv=YPqfyQGx c=1 sm=1 tr=0 ts=68d48034 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=4ROhr7NTa0bsJorruOEA:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: 6yYFGhiska833dq7QxLjxaF5fLEVb6Uz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwMCBTYWx0ZWRfX9L6ZbyX1CtqI
 9dh4zifEfGKMCn693/6RQNC6sabiPIt19S7uc12oKcZ4G6wcCQF8w5XLBeYbT9UVXa7p3+K1v8c
 GkSA4nhQQ+fS1UxF7+B4kffrBguWiwtmwqO/JNXnBBF4I+L2PD9qLuF4e0xlHG5rbp5pxa6PMUm
 IOGr/1NAWX+asTvsx8NtcHI4qWg5ax7iWwb3Ukf25PImSJR4P+maiXNsBPaUVBjG+KbpsEj3jJk
 8U0USnlBFNeY0qdIa1hAvAYnQX+GR5MWeVe8Pnin8MLz2HShnzpStg2ZEsrQX9CxWQkYG7BoVZr
 6nu+AUw1v6MRcSzAb2yPivDs58QsuMYfPoWgl+QjAQB8KKu34SeIpLkame9kfLCKHtb6mjQ9IuO
 pJHfgBS0
X-Proofpoint-GUID: 6yYFGhiska833dq7QxLjxaF5fLEVb6Uz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0 adultscore=0
 clxscore=1015 impostorscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200000

From: Melody Olvera <melody.olvera@oss.qualcomm.com>

The Qualcomm SM8750 SoCs use an eUSB2 PHY driver different from the
already existing M31 USB driver because it requires a connection
to an eUSB2 repeater. Thus, for USB to probe and work properly on
the Qualcomm SM8750 SoCs, enable the additional driver.

Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index e3a2d37bd104..24b1c943a7e1 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1641,6 +1641,7 @@ CONFIG_PHY_QCOM_QMP=m
 CONFIG_PHY_QCOM_QUSB2=m
 CONFIG_PHY_QCOM_EUSB2_REPEATER=m
 CONFIG_PHY_QCOM_M31_USB=m
+CONFIG_PHY_QCOM_M31_EUSB=m
 CONFIG_PHY_QCOM_USB_HS=m
 CONFIG_PHY_QCOM_USB_SNPS_FEMTO_V2=m
 CONFIG_PHY_QCOM_USB_HS_28NM=m

-- 
2.25.1


