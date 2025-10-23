Return-Path: <devicetree+bounces-230103-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 75474BFFC94
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 10:08:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 257EC3A6F7A
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 08:08:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B61522ED844;
	Thu, 23 Oct 2025 08:07:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SAis9s7R"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E092ECE97
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 08:07:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761206845; cv=none; b=soa4qdtoX2JB+v9RVy05hCgSLDkseOJQThrmyviHYFD6gROjifNpQ4Ykw7G/dNiFIst82SIw14PGhdigEeYLfXxloPMS2ClFZ4ISlqDjM3QQD48gq+7DRpjw9+IEzRrm7C3Q/tSWr7M7QQfjBu3djlcLB4R5awTIrIMTFGO8gX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761206845; c=relaxed/simple;
	bh=XuQFnu7F4RVE3LuHmfWSqqsq/q996mRXlrWDjNZi5hs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=jUd3J9fAK5E1X8cGD9/wARR1v7Udn0zexDrmkMCI0aOd1XLNXruD4asbh59+9ATsnv35Wc5TzUPKSgBpp3YCbzs5Gffwqi4rcRoSrRXlZqrVg+MyIofedDJ4Trld9hbiFgjQujVU94WOTzcO9YWq6SPqXMzhkr2GQOQHrPvle6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SAis9s7R; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59N6iTK5026532
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 08:07:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=mz3AW50CZzl
	RHFBJ07H/zDGQyFPRQspBYOGzKP8xt1g=; b=SAis9s7RiP4SLohaR1jKE5gv3Vg
	dpCapo4DK/R+/sx8BHhnFBgQu5xlP59mniIkOVOg5REcVCe3VL+zMnvCJ9Av0GF/
	IpC7M/5JapZAih/WCqhPllYhB0Dv51ZPx2PDYeCuta4rj+Z1iEWIjxkg1CKGqqNI
	QdXcqXNV3gwLfCNVWXQS+HNc6oIyNOJuXMw37zGhyZP4F1gSEQ1ltqjr7yAYh7CQ
	CYCzPDZpT2iIvR+pESQEQmP/mFc3dCe2FKlQ5lbKvZ7juYpemhTS+bJl1zEF84qr
	ia+GOlhMSkP/YYUx4yFv9sLXZlfWr4R3ZAXty6YfDQfO4Su7BQA0vFVk5UA==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v42kfcg9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 08:07:23 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b62f9247dd1so479557a12.0
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 01:07:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761206842; x=1761811642;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mz3AW50CZzlRHFBJ07H/zDGQyFPRQspBYOGzKP8xt1g=;
        b=AVSZuFuvLjDidn0UhlA5QWzM+jzRHYuxH2f//2U7GJy4FbetaqwXpO52otu+O+PWA5
         W6DFKKEcwfQ3e9a9jNZ8/hwYWAGEJSJER8wG70OP+sYdDx8JK+Rig9VOyvda3i4N9dDu
         85R4TMn1r2SLnLT4y5k9YiNrx+rdle2Gyxgn8lAK3efXC7xfKw0zAH+w1BK/U/McIMQJ
         BgEqGjtkrheMdNma7RyMQ5yXEZOMJ3DpP8TT2IbUIJ1EYy+tllg7OK0nbThL9aSqhoWy
         xLWKYFyyZCpKoeSxXjIJMpwK1YG644lSqr3smwQj+bL18uAzxFVn/pP6wHwqIxrbrNdV
         PX1w==
X-Forwarded-Encrypted: i=1; AJvYcCUSLwWoTDG0DlCBZWhoiEm85Icz29t1Erdx46pmD7XmiC+pXgChwAf396jm7dBF6eoPeo7zuSS1MNAT@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3fTsU63lLPPhM67C7IzUj2Fc672RfaDh2lqCySDIm4GY/uY8Z
	IT0eaCYiWsno17zpps6MTOU9gc26HZ3fjW6tbHYdl/7oAWe4E8a8akX2HiYknTvOPyX59bJvKrP
	+iWXantmLdcmsILbU/kP9GfpVJiZpfqduCgrhhrliPZ720TfJOx7rf5kiNk02N5UN
X-Gm-Gg: ASbGncv7sAUaaA48InOsR06YjmDieMlxdrNKSS88Yl4o8L8Tbi/h9AcMYn9rJgJVo4O
	mgODmRDpiacr/MwwY+iNEdWcCAGBVQQWfE+KvndnoXy+rE/6FiEZC17eKE61U7ETo/ItI7t5oCI
	/lThVbT7UCaYobjOS1Lix81rB5bPpoEGVw8/g1U7p2zy54kFZI+9IgHxuj6rRqQSlpXWzsewP3w
	u/BTz/slEdRN8IP4pOYp2kle+iGKJZMVtllY0/sYMA0zg297W+izJIu6kVB2sCS0E1saBYj47b6
	cuMY1E9u7NnP92DCUt4NES/QERvHvPOecya4oBnfBqv/pQBubdUd8aNlzWLKZ4bk++n9uOHgQ/y
	bGxSICH99/Q9bP5zG+Tr8e/w4YDm2t6coSNDqimuhy7n13WwU3Q==
X-Received: by 2002:a05:6a21:6190:b0:334:97cd:26b4 with SMTP id adf61e73a8af0-33c5ffb11bfmr2223355637.15.1761206842336;
        Thu, 23 Oct 2025 01:07:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFWOEGOBmMvhSpmnFUPZtvwT2JAqPOdlZF4Gxli8yHh+BpFytOCUKdhyL6VqRKtXouFki5erw==
X-Received: by 2002:a05:6a21:6190:b0:334:97cd:26b4 with SMTP id adf61e73a8af0-33c5ffb11bfmr2223310637.15.1761206841920;
        Thu, 23 Oct 2025 01:07:21 -0700 (PDT)
Received: from yuanjiey.qualcomm.com (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a274a9cec5sm1676410b3a.20.2025.10.23.01.07.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 01:07:21 -0700 (PDT)
From: yuanjie yang <yuanjie.yang@oss.qualcomm.com>
To: robin.clark@oss.qualcomm.com, lumag@kernel.org, abhinav.kumar@linux.dev,
        sean@poorly.run, marijn.suijten@somainline.org, airlied@gmail.com,
        simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_mkrishn@quicinc.com, jonathan@marek.ca,
        quic_khsieh@quicinc.com, neil.armstrong@linaro.org
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com
Subject: [PATCH 08/12] arm64: defconfig: Enable NT37801 DSI panel driver
Date: Thu, 23 Oct 2025 16:06:05 +0800
Message-Id: <20251023080609.1212-3-yuanjie.yang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251023080609.1212-1-yuanjie.yang@oss.qualcomm.com>
References: <20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com>
 <20251023080609.1212-1-yuanjie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: YQiTAitZbnShIT6pFdX_ewOgb7j5c2mq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAzMSBTYWx0ZWRfX/unr8Knft/O9
 bCQ+0CApHuZsG8oTC65PCqg4TSOvCpiAz8rECfeZ2oGUDpuCKxPNO6QzYBlAtGjFF2dgg06KTz+
 EGVrZWXZdLwnLScAOHpwGFrXxoy5oPZcfLsJsElLrzYQOsQDFTlkCIOdJUO8hvhDW3+iVFNnl+9
 P6H8etGmuQZnaIFVoAkRC1qc9ATjF5CYjUhMwFwN3YRZrSJfnVGsjoOzL3mt2cc2lpFp+h+WP/g
 M3f+TK4YalsRhrOjbpPGDNXy3v+uiGAtfjZIdrPE0csZZ1PrvZrg9TiYqEPfqQeFElysG69n7pV
 cuMTmsquF0yGneey9mj6DTSqh6Q69pztPH/xgRQpJ8rdwuWF+i/BVzfX5RBN2waEePgisItcJYW
 is2MJC4u+X9KWHoH3Zy1bigQ0a2IJQ==
X-Authority-Analysis: v=2.4 cv=QYNrf8bv c=1 sm=1 tr=0 ts=68f9e23b cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=o76S2ntNi4yxzKwJcEwA:9 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-ORIG-GUID: YQiTAitZbnShIT6pFdX_ewOgb7j5c2mq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 malwarescore=0 clxscore=1015 impostorscore=0
 spamscore=0 bulkscore=0 suspectscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180031

From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>

Build the NT37801 DSI panel driver as module.

Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 8cfb5000fa8e..537a065db11c 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -945,6 +945,7 @@ CONFIG_DRM_PANEL_SITRONIX_ST7703=m
 CONFIG_DRM_PANEL_STARTEK_KD070FHFID015=m
 CONFIG_DRM_PANEL_TRULY_NT35597_WQXGA=m
 CONFIG_DRM_PANEL_VISIONOX_VTDR6130=m
+CONFIG_DRM_PANEL_NOVATEK_NT37801=m
 CONFIG_DRM_DISPLAY_CONNECTOR=m
 CONFIG_DRM_FSL_LDB=m
 CONFIG_DRM_ITE_IT6263=m
-- 
2.34.1


