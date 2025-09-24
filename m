Return-Path: <devicetree+bounces-220973-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E73F3B9CA63
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:39:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3CB5E327F29
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:38:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A58F2C027F;
	Wed, 24 Sep 2025 23:38:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pOr0Dt0y"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DC542C026E
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:38:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758757085; cv=none; b=tLdmbIV94H0Z+UShUX1xnSWkmOxjZiJ/yTp3YYpuKOvnvtKPa3dtAbFs3JVX1lqkhuWn/y2+hevhric/+cHJVYNVgTyl6tFhZhFWKiQmOb4oMCwxVb+IOa0uN4phbq+OUbWyKnoR3YlYo3LCb8S7qlAiNqguv439G6vZkVgHUMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758757085; c=relaxed/simple;
	bh=OFB2kgtpI3PnGziBr3bCuaYSbdpCfTaorjOb8O9HbBg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=Tx5Pc2RCggMuq1QWkBe6UZ0BL1KLOZFo1H83ypSaKgQG4t/uZ5p1QNR4yK70WctryPCTJtOMUK453paLssIb90cRQ4S2cWLILj/BKcEfeipNS+WA5RBjDGTsbg4NVX430sh4Ys+TKgNvw23AEA7sbOCiwzyjLYOHJxhmWvqPMmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pOr0Dt0y; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ODGCV3002400
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:38:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=jQNLKc8P7ShPR+tJQHo9Yg
	BqIMp3zxSivxKyvL7307M=; b=pOr0Dt0y3R0mbJ+D6HCRVwUkuA9S9EYbwSMj41
	aLNf55Wj8s7bc7+tEGKiDqKGdNGGHPH/2/vUeHUw3kc5RRMK3PL77GpCBZdT3x/G
	SBOG7m8Tt4IpKPUEl7FX4o21joDFM/Xoj/9bv6746strXUi5ZA/8tkX3hV3jMOLD
	B+GCI/JOSCbQJBztKjRhLUHUZiNV1Fogp/1oLQFXHEhJeuDMluGhnjKn4XKBH3jK
	nYQTyYAgWdwXZmw9jh+IihuAnc7wvzzD1AODzzpQDgK1tulqsbUyfWhEKCPGH9S2
	msEDte79yfJVEnpWKub+jgxbVOksAB24YKVuig05K50oqwgQ==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499k98p2jr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:38:02 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-77f2466eeb5so245490b3a.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:38:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758757081; x=1759361881;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jQNLKc8P7ShPR+tJQHo9YgBqIMp3zxSivxKyvL7307M=;
        b=BI7o3+xRCA1NIL02NEm6rKZ/8PmFTVPxs3ZF7puF4mPvEqawIHZCWSBZRv0lEkyIXC
         jr4ucNzUpfBWLOSHMIhEGx4N74v3s4rXRnHjB3zefMXDhf6t2+IzJJ0VV+i97GuSSFS/
         cwumJ1uF4jEVxmW3UXhjqFPWqCgSOQq9+zfttoqpbF+m580H7QL+X0Q8/QoNZ2jNpDrY
         P5wv+834owVFoPvm/JAh+jwHclOCj+ZdRi1cgFC068nelikmuM93eN//wnZbAiCWu4CR
         0+Dre0t8mZAycuPfPC06RqxLrSajyW2iWeTHjeYHH1kJwXipBS6tHqgEBl1UQCvTRzgW
         UMpA==
X-Forwarded-Encrypted: i=1; AJvYcCWiQpojrDj3q397agZcYa6RD4ZHtSt7RRKbQLO3aaVNw4K2bYJOoz/XOVeilpYEqRXpxRinpct5OPlw@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0TB2vkwvTVl+JbweKlI2A7hVmr9nJPcYEm5WnSz7uWXJlKcs9
	q18s93RWUBS2jHXvLeNjwFscJ0R7x3GAqFjWRo4cpG1ugo9ESyIX1KmSw/MjiwxdGPZ5uIGLR7i
	V+cQ98frkYXaBYrbtvXxXcnqDH2ttrLBDBLdCOZpKOuYfbSjFBkq5Gsw4iUcPMHzp
X-Gm-Gg: ASbGnctN5/AD8LBQov/z16N9On3ITQNPZwvYo7F7x8AuOIPm2f6LLht0t5HCWXOQn6M
	v8rauxCmX0d1YQKESBisIZoCx4QehPM5zmVDlzDJX+EJbdJwm6bhCYF10027D0IXoc+wG96Kw3d
	yLVUgvBZeGqFdpoFnk66PyE46+ayNbf2dN22nqI9mNFFEQKUa0K8/nN5vNTzXczVDOVlTY6cIxh
	XUKNm35LkEqEhBH7ILo4s7UwBbI485KQWRf/0g6i07pVrhVd7m7c+eMCW2Ved5i4/DWmKinxipb
	9QMTPlZ+KRIZ+0bgA6Rq5eva1N2f476e7J2aQ6dH1ZJqJ/6zLpE3oCGQWuiYlMq1tOaoj0hUGkA
	WFk84z8VK0BT/NTE=
X-Received: by 2002:a05:6a00:1890:b0:771:e2f7:5a12 with SMTP id d2e1a72fcca58-780fcdf6e16mr1803931b3a.6.1758757081188;
        Wed, 24 Sep 2025 16:38:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHTt0k8qEwYpFMit4O4lQZpF8U6ST0hNEYG5mPDI3iYy2XxIpf11uYg4nFLgyyPdDE1rD249A==
X-Received: by 2002:a05:6a00:1890:b0:771:e2f7:5a12 with SMTP id d2e1a72fcca58-780fcdf6e16mr1803898b3a.6.1758757080734;
        Wed, 24 Sep 2025 16:38:00 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78102b23206sm192934b3a.58.2025.09.24.16.37.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:38:00 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 16:37:55 -0700
Subject: [PATCH] dt-bindings: thermal: qcom-tsens: document the Kaanapali
 Temperature Sensor
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-knp-tsens-v1-1-ad0cde4bd455@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIANKA1GgC/x3MQQqDQAxA0atI1g2MSpnaq5QuMmOmBmkqiZSCe
 HfHLh98/gbOJuxwbzYw/orLRyvaSwN5In0xylgNXeiuYWgjzrrg6qyOtxJ6jjmFSAVqvxgX+f1
 fj2d1ImdMRpqn8/AmX9lg3w+BiYtHdAAAAA==
To: Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758757079; l=1046;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=yySQ1biqwevpZU/HQKBUIuPzNC40vlyOA1bnmF3mVEg=;
 b=1mJCZizbdBM9OpkSofxKaUkUAzDIGmKyL4KQIQAlvkkEO+8zdO/d+lWKmmnAayEA//JW2bca6
 SB73l2C18kUDB56jbCZvDlSIr+zEHLMlm7GwFy92i/L+M4OP+1cMT9i
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: xGVflSBy1Zf7M6axG8i3awTc9xhJs7kJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAxOCBTYWx0ZWRfX6t9yNImxZNXQ
 XAyjCVQ3vJ6UAOnAVMOnAj53841qKNUbIIpg0IuN6ciYdpb+MBkyrVjfztqYo4yGsL3QA+cevZj
 yF17zdvMad30GOUeGSs/Q71/HoKKYYNwG7o4bhv2UZvoIYzn9mvwKsTsH2jchfiaVF8IqI6A6Fd
 hqP9Q8TlGC0TOQbnbMdaNsDXoI1J6u1QLH1+AA7pMlyC58Ay7U+63zAyG6UVBCysGpszvxaQKLO
 mJIZn+lyaZntYyHrSerAr3ujELrlq0b11G7duMXpuCYevmT00QBcgH62FEsO/KMx1SRO58O3u5u
 4TJae5aMKJ87UlpqsPw/OX2vylvRF1dRkXC+fMwOHblEuSehBBz1RPpXS47fMiVx/4MleXfbOxY
 76PrsX1w
X-Proofpoint-ORIG-GUID: xGVflSBy1Zf7M6axG8i3awTc9xhJs7kJ
X-Authority-Analysis: v=2.4 cv=Dp1W+H/+ c=1 sm=1 tr=0 ts=68d480da cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=PGq002HhRynx4w536vgA:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 adultscore=0 bulkscore=0 impostorscore=0
 phishscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200018

From: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>

Document the Temperature Sensor (TSENS) on the Kaanapali Platform.

Signed-off-by: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/thermal/qcom-tsens.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
index f65dc829574c..20b9816754f2 100644
--- a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
+++ b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
@@ -49,6 +49,7 @@ properties:
       - description: v2 of TSENS
         items:
           - enum:
+              - qcom,kaanapali-tsens
               - qcom,milos-tsens
               - qcom,msm8953-tsens
               - qcom,msm8996-tsens

---
base-commit: ae2d20002576d2893ecaff25db3d7ef9190ac0b6
change-id: 20250917-knp-tsens-8f03e7cb07af

Best regards,
-- 
Jingyi Wang <jingyi.wang@oss.qualcomm.com>


