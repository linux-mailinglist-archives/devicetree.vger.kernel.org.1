Return-Path: <devicetree+bounces-214643-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A1FB2B4A062
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 05:57:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0171F4E0BEC
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 03:57:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2676F2D3A69;
	Tue,  9 Sep 2025 03:57:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PQfAQCcp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9FAB291C1F
	for <devicetree@vger.kernel.org>; Tue,  9 Sep 2025 03:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757390231; cv=none; b=ftnUdDLVoyRrtixoHnR7lN4mEEGVf0X8cbyi2801ptC5bXVFXcatfHhmJ6C3prrA467P7fR9Bm4I+Lbu1MZG5BoQcNz9wJ9xavD0jFUKYOXe+t3Vc/5yCdh/LW1iOaELRFmt48FdkQBPFndK8W2voj9hsCSnHZ4sfcE297fI9ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757390231; c=relaxed/simple;
	bh=ES0C/eHUJ0vZMSiE7e9k3eopudAsRoEFpDfAJn+GlGw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qUNmYuV1sMZmY/AHNe93rM0y+8sUOLv25pmeaUL3faHc38VAyMudpggyiaGwsgteg+9E7c7DoNTAMpfZiPcMJbzpxMHpZaZ0uoqfA6VtvIPyQxe8ZR9SUJlF5Lf/gNnbN9eqJHt39IrfxiK8mnlN3fNshPDiqO2b6ob5JC3Vx7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PQfAQCcp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5892ETw5001745
	for <devicetree@vger.kernel.org>; Tue, 9 Sep 2025 03:57:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jWgEnfKM2T8SN4ZowpfF7xlxhdEVJCQ/+pQl9CKBY4Q=; b=PQfAQCcpNv25AGdC
	k3zF9v6fO0zsF9XGLndD94Yks/e8iodqIHUDBzc4GKiHTYMBHsbtKpDVZRMuCW5V
	2hFSZh7yDHiB7AschATHXhLT1QW5NDBwvzsLtEG9Kize/YEG7nJItsYsyI+JNF9p
	7qhhbszG8ftkBfbwab7khyGPHQshnO0uUqjBqddw067I4crnzI31wk+E5gDQhG3J
	1gaTUu+8LuSYI7buD1cRLKYGdq6KtXxnYaxp9zR1LmVrWHWI+A7Dam5fiNCsWTY/
	y0JCluF8AFr7mQ3MivV+pj6bFXNEsYpL7X9F938MtnNARqOoPvYsX/JTzZvWACU9
	EYdcFg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 491qhdum2d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 03:57:09 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-25177b75e38so31333345ad.0
        for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 20:57:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757390228; x=1757995028;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jWgEnfKM2T8SN4ZowpfF7xlxhdEVJCQ/+pQl9CKBY4Q=;
        b=UFqg5gHmjihtE9O7BMSwT99NnBk1/8jbh8v8a8n5NFIvIlW/louPhpNd6szuQASt+a
         ckUCDUAqJ7fA3VEpjd8G+D2OrF9UwZtvXU7y+7cXQAHnu+/jPhmhb2xX4iWsmYS++wVY
         25uxLuXxqHuOLQveTkweO7cFwL3imIYw1CPOwnf6iusWDftU1XANjEZDsA7xVhW0R78K
         hq5VQIudHotRYzAN9WGzHtvW8x7qn5HdkdG1DC22FraCldlTrpYAI7bJz+clUDAgdA/Q
         llD5rVa60g2x4RRmkl+mxAws8sCwA59c+yOkKa7vVi4DNkqlHKiAzJLbSpgKF/rezhRe
         GZwQ==
X-Forwarded-Encrypted: i=1; AJvYcCXSopraK0XyxWtYL2nH89kw80shwKpgVF1HWXMTK/wi/yvQUq/2lKRp7lfqdspzVgngtG6YHtDgzW/6@vger.kernel.org
X-Gm-Message-State: AOJu0YzEo5ZC0bA7rTDoWAvkue7Tgtjc1khRSDGM9iGEQfk4+jEuSh6B
	2qNL9kSsVSxfwVDGMWKQpmDxJmGoMP/nQl4sSdnm4UcQp2LwxhPZQLyiov2Lv/AKMrtItI38cLl
	g/x+PS2AdFG3sAIr3sFAS+cW5CxUBVInzZAFgf/HGIVWkep7reszdbu0o4bxHza7Z
X-Gm-Gg: ASbGncsYx5zISzM5pYhoPSoiz1IgsV+UVtLWz+dAT3Pxzxmdom6uDL+98QfO7OFTkJK
	TdKWBsg7TYsue4I3AH2clMvy+8s+77MuPDvT+Sg1w6nJ2qzvlrRvLZzcYCarpRGk8io1DqX02mz
	t5EZ2ES2O74/ebT+L8/lVzv6JGLxlTirjKtHxQLjfrL19PIdovjvWDsb28xqmPul/VtmFlOQczQ
	x3LQ7p6QNwDRwCgsys0yLOL+76O7YkW8usEIikA0xkiGQ3rs+0h1+spDoF6oZZw+kS8tA5h/XmK
	vWY/Sx3H1payV5lxrbkXMPGl8P4LCHiTbb9QpG+s/1ntgIdVAfUqML95G3U7le8fAFEydszf+rQ
	H3cseeWTZ/plFR1d7Kmkostd7dLbf2USSZg==
X-Received: by 2002:a17:903:2341:b0:24b:25f:5f7f with SMTP id d9443c01a7336-2517301ce47mr117389645ad.60.1757390228107;
        Mon, 08 Sep 2025 20:57:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF7mb8A5aGCoWDkFtmq3zKoivGwv/NkrXlnqXNe0qaHkpZDB9o4nPth81JCgbpm1rdwKkhG2A==
X-Received: by 2002:a17:903:2341:b0:24b:25f:5f7f with SMTP id d9443c01a7336-2517301ce47mr117389405ad.60.1757390227655;
        Mon, 08 Sep 2025 20:57:07 -0700 (PDT)
Received: from yijiyang-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-24903724b94sm295614705ad.35.2025.09.08.20.57.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Sep 2025 20:57:07 -0700 (PDT)
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
Date: Tue, 09 Sep 2025 11:56:02 +0800
Subject: [PATCH v10 1/4] dt-bindings: arm: qcom: Document HAMOA-IOT-EVK
 board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250909-hamoa_initial-v10-1-ec10057ffcd2@oss.qualcomm.com>
References: <20250909-hamoa_initial-v10-0-ec10057ffcd2@oss.qualcomm.com>
In-Reply-To: <20250909-hamoa_initial-v10-0-ec10057ffcd2@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Yijie Yang <yijie.yang@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.15-dev-5bbf5
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757390219; l=1177;
 i=yijie.yang@oss.qualcomm.com; s=20240408; h=from:subject:message-id;
 bh=ES0C/eHUJ0vZMSiE7e9k3eopudAsRoEFpDfAJn+GlGw=;
 b=t+MQ2tj2DlUWTMPD319N41fItYvc6WlBPuP6qjvqrM7LQti3yXgplmhvKWC/kkods3Q1hCVUJ
 4brEley0ODPBDkBxjFhpIGlu2um47HL1e6y2kAgPoK0SWvVvnxbmJSW
X-Developer-Key: i=yijie.yang@oss.qualcomm.com; a=ed25519;
 pk=XvMv0rxjrXLYFdBXoFjTdOdAwDT5SPbQ5uAKGESDihk=
X-Proofpoint-GUID: MWgrL7FFZq1WWs4QcUbsykUPzKWHcjyS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA4MDAzNCBTYWx0ZWRfX9ItRxiUo3GoW
 pJ2KRvxg1KV9oT/K1Rjq5+9mMjOJBETCLBiPus+Y/6DvkrGgVTEmITpIfnKZsMQVMUZSrZ5iVGx
 R0W4kgVoyE42KdT9IaL6YsolDa3zugDJdstL2EimOyHy2NWNPWg3yVklB0msHoXhpe8obGEPT3w
 C2nbkGkZZyNhN8Iu+uiid8TLIgYssBd3T5d6fE18wZgAx0jMUNPXfkA/U+0DRPeAtYs0uM2ahx7
 ZGip89lx3kXvrtCILHrCKVCfR86mDmdLnA2ugYHe/bmMDEpdOecghkB3fjxtfTdCoUgo8gbi8zF
 Hx2FiPkGDMUIxDLPvaVxU8mS0YUAHwaWfq5Gf0cIVM5tL0oTAXVLsGMWkwfuniIy0mns6yB/jSo
 Q4KKl3nc
X-Authority-Analysis: v=2.4 cv=YOCfyQGx c=1 sm=1 tr=0 ts=68bfa595 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=Bh1HEMNN3wmc11-eFpoA:9 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: MWgrL7FFZq1WWs4QcUbsykUPzKWHcjyS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_06,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 clxscore=1015 adultscore=0 impostorscore=0
 suspectscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509080034

Document the device tree binding for the HAMOA-IOT-EVK board, which uses
the Qualcomm X1E80100 SoC.

The EVK consists of a carrier board and a modular System-on-Module (SoM).
The SoM integrates the SoC, PMICs, and essential GPIOs, while the EVK
carrier board provides additional peripherals such as UART and USB
interfaces.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 55e5eb75af89..6b6503181ad6 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -1069,6 +1069,12 @@ properties:
               - qcom,x1e80100-qcp
           - const: qcom,x1e80100
 
+      - items:
+          - enum:
+              - qcom,hamoa-iot-evk
+          - const: qcom,hamoa-iot-som
+          - const: qcom,x1e80100
+
       - items:
           - enum:
               - asus,zenbook-a14-ux3407qa

-- 
2.34.1


