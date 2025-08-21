Return-Path: <devicetree+bounces-207159-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B33D0B2EC38
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 05:40:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 699375E5907
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 03:38:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62CFB2E7F2D;
	Thu, 21 Aug 2025 03:37:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GPtQrzy8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD93A2E03F1
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 03:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755747456; cv=none; b=C5CDJmeCrfZDX3nuz5nHODVbYDFRKkGgDo5DZVI4paxORJ+gBLxw58KekhdaNO1+VECcNvqgLXdpVKPmLZMUUp8tKFPplT3XM9PuJ7EwgMps4boz9/4ZkFHo6qHwld08jFNE036aetRoInainex+WHMTumKzPxbSklgUGyiHWGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755747456; c=relaxed/simple;
	bh=jmOF3YxLYSDfb8Ohpc4kXPJtA6m1LCaahphFup+ozoQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tWnqqIQfQ0FgB6w0DL5LQtSmfP9BOjfJ9MTK5gsU3mMhoJjIyFpAcEISYziuaEUg6ktX2nQiIq7h92W9zWtu3+KsO2UNNqliBdXSqveU4yJ/vlWSLCzZyiyFxY+HG64IyK/H2UatPvQV5jjCB49VidRPR8IyrQXfoHjpd2bS2zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GPtQrzy8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57KIU2Tk020839
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 03:37:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	s5H/bF7V+/uMeSq3g0gxgqc/EofmL6r/gf0PKGC0ccY=; b=GPtQrzy8TIOYTIc9
	Vc74+YztRre+8yF1n0QVmxru+2H6j0GHXcc6EKQv8BDktJXRJ6saZkvOgGIsuB31
	tsp9fmJB2Rlsx8TlE0L23A3wUVkAnvCDUfHMcLYx8QNPymDV0PI/vGePJ8Y1tERE
	fiVSRRVbvZYxMKmgX5jK/CoqqZ0JEBOuUPetF1KDNkJWqUROrbghNoN10UsOHyzz
	VG6kVgX3skmArO55dEouE78l/SyVmCIR8PETcGnf4CikN8EGMqLLAq5gwRBIVts8
	/a5BTcuXQ3bQtFRq1HZwQ+D3n7qL1J6fgP8K/PF1yfIzXd1PISvhFGyN84Xomyyb
	S8i0LA==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n5293uw9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 03:37:34 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-76e2e8e28e1so1759985b3a.1
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 20:37:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755747453; x=1756352253;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s5H/bF7V+/uMeSq3g0gxgqc/EofmL6r/gf0PKGC0ccY=;
        b=pX/bG3ONiNCxyWmmDwcSM/3BuHKGyGXMhR7EL+fuA1YEwLLQDOZeOV5KWImsvT/u65
         y1sbzr987hlDEF5L5V6aujPdzxuVtxFYC5PXu0GiS+6y/bqpAX/1HqBEBlV0vUYgN11Y
         qEKD4p+cZM9imIaTZNKImx+a8R4LSIi68OyWZ+WPv7L+MzQlqP/VCurZWBLMRuRACYTw
         OVg6bAwZOxG7ugikUMNuBcwHAX3EpO/EpNDPhLRKEbcI3erulItbVm9oDMIlLdOlTSnA
         P9G5zKclohiG25amsl3/BDg4xYSL24CXb/QA0NIheljyp5DN/uOUmPcJLAAVzS5cPDDO
         vDeg==
X-Forwarded-Encrypted: i=1; AJvYcCWgM5L7joyoStDHIFInUvBRj9eTHoIkxenaLChitUWXbry0HV+XyQ7FzFPKqB/WK9g4kiV83ieOD028@vger.kernel.org
X-Gm-Message-State: AOJu0Ywd27qoWEA9a6zzaDhMYEzvG6xd+E80z3GlAL5Rdx6ag0e+FV9i
	joPRkZ/uZcuAe9a0ukrm1V5UmJwbks7MMrF86fPErdCU/zPqgURP1+F4HUgIJ9Wb+sjJRY5/Rpv
	rt+VdRLprNHlbYBjWHV6klBU7Jv891J0DS9GBxyJ87+R9+HUxF0CDHmpfewdYV29Q
X-Gm-Gg: ASbGncsIAp2ZlE428seLXTNyCM1aNwKLcSTRxONwSb3ZMHSfA585SvNMkV2ce+uV0dG
	2ZT1RGwgrk4ZYWQWDoXW4TDklRtn9dcl1+jiiAoPAaqJypM/J6HjXmWuWyN9cAUd2lfxcXEnT6X
	HoU9a5zVCevLPJMJDPCujnykS6WXDlCdU1NM/EoVfFeUrmWbjS8JR6Hag1dJ2WenKVg8aQQZUE7
	zl3VvAXCO2c+DdKVFmBpCjzuGA2Y6ZHLmKC2Z0LyKq4/qtPwmRjC7KvFsMJ8dH1R9Qi9BcwEWWq
	nhYIXhn/Abx5KPWeBjkj0HcJZJMLI84Ywpvg2QP6Fh21aJsrP5kQeyPni8KC3Fn2LLCP62E=
X-Received: by 2002:a05:6a20:7343:b0:240:6dc:9164 with SMTP id adf61e73a8af0-2433089e19dmr1159846637.15.1755747453466;
        Wed, 20 Aug 2025 20:37:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFi4mGJZ5wAX9bpRLqAWGzqaPdfb8se3vOWiYgqadgqnAUMN/U4mRyTaYFAwyX37dTnizeIeA==
X-Received: by 2002:a05:6a20:7343:b0:240:6dc:9164 with SMTP id adf61e73a8af0-2433089e19dmr1159817637.15.1755747453048;
        Wed, 20 Aug 2025 20:37:33 -0700 (PDT)
Received: from cse-cd01-lnx.ap.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b47640b6554sm3497780a12.48.2025.08.20.20.37.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 20:37:32 -0700 (PDT)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Date: Thu, 21 Aug 2025 11:36:01 +0800
Subject: [PATCH v8 6/6] drm/msm/dp: Add DisplayPort controller for QCS8300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250821-qcs8300_mdss-v8-6-e9be853938f9@oss.qualcomm.com>
References: <20250821-qcs8300_mdss-v8-0-e9be853938f9@oss.qualcomm.com>
In-Reply-To: <20250821-qcs8300_mdss-v8-0-e9be853938f9@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Yongxing Mou <yongxing.mou@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755747404; l=1242;
 i=yongxing.mou@oss.qualcomm.com; s=20241121; h=from:subject:message-id;
 bh=jmOF3YxLYSDfb8Ohpc4kXPJtA6m1LCaahphFup+ozoQ=;
 b=9nEXtJyTvuvPoQMKa9vJn8WmfjXRNxEFGH4TAyQUtRSsAGs8a/pirBy7epfxNHUOJ6F3AyD4s
 mxQRny+F73nB+a5BUu1ybLK0EPA9/GcvDWqt7ON6vzsbdDND+MNtPmS
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=zeCnFRUqtOQMeFvdwex2M5o0Yf67UHYfwCyBRQ3kFbU=
X-Proofpoint-GUID: emj0SwlvAhex1tLOK7RY-lTzhC3C5moe
X-Proofpoint-ORIG-GUID: emj0SwlvAhex1tLOK7RY-lTzhC3C5moe
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfXza+S2FSwWIZk
 3hbk3RUDzLO+C8aGVB1Xi3LRGUXRYZgXMLfqkaDTBC9AGnPnQyOBuRp+EQldOv3jNBuFyUWzKQC
 Jjv7VlsIvR+n6vfbVhiGfa3i8s8D1tdojKiboIiYtdhA9k9VJHhaea8GIT0x5SPHOSRs2jkWcX2
 jbRIKggxPwJikUSUDfTKcIPbrd6yhMXAdyF42xlR0MGfuoRX/zPfggCPJgU0VKC7TBNJ+2OMRG8
 +p3PP+LwX3bml4mhVWnRzEW3BkzvwIL5DO44+zwRtE3QG2zvc+t0grRwMMHVx7gsECvoEex16it
 l+hcmJEPpCsRjs9S11HsJwfnxrdbFe8EhZXeXHC1Q7ckdZn1XLkpPWp8TffkmLvxEC/lzKmooi5
 l3zk4uAFGEgfTJ+LORQMW7R2MfQz1g==
X-Authority-Analysis: v=2.4 cv=SPkblOvH c=1 sm=1 tr=0 ts=68a6947e cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=E9mFum2VwHQHOKsBOicA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-20_06,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 bulkscore=0 spamscore=0 phishscore=0
 impostorscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013

The Qualcomm QCS8300 platform comes with one DisplayPort controller
with same base offset as SM8650. But it requires new compatible string
because QCS8300 controller supports 4 MST streams. 4 MST streams will
be enabled as part of MST feature support. Currently, using SM8650 data
structure to enable SST on QCS8300.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/dp/dp_display.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
index d87d47cc7ec3eb757ac192c411000bc50b824c59..bb4660585849d1a67921a28e7e12422e0c327ab2 100644
--- a/drivers/gpu/drm/msm/dp/dp_display.c
+++ b/drivers/gpu/drm/msm/dp/dp_display.c
@@ -187,6 +187,7 @@ static const struct msm_dp_desc msm_dp_desc_x1e80100[] = {
 };
 
 static const struct of_device_id msm_dp_dt_match[] = {
+	{ .compatible = "qcom,qcs8300-dp", .data = &msm_dp_desc_sm8650 },
 	{ .compatible = "qcom,sa8775p-dp", .data = &msm_dp_desc_sa8775p },
 	{ .compatible = "qcom,sc7180-dp", .data = &msm_dp_desc_sc7180 },
 	{ .compatible = "qcom,sc7280-dp", .data = &msm_dp_desc_sc7280 },

-- 
2.34.1


