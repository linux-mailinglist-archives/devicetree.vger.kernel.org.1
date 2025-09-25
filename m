Return-Path: <devicetree+bounces-221030-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 44848B9CDA5
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 02:19:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 51B9A1BC4EED
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 00:19:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2C431F416B;
	Thu, 25 Sep 2025 00:17:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="POdwNKJQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC2351DF248
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:17:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758759466; cv=none; b=AeTN8RUuOOUn4dqmzZwK2y7T0K01sffLgymsgKEamnlBfuWr9pDkHTT84SLFbB5npjnOXh5SOkpNFya9LeL+8rdg2le7B8Y9nqfxw+GYFFaCxns3JmEap3hpR/LWy4wUhpsBPZli1KicxgzJhmS+WqpCUgnFHnuaB0k50QkQlsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758759466; c=relaxed/simple;
	bh=dWVstGcjfUlYpArThLM1He0wAEvI/zOqzc5RgNZfA/g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kFClR8trALh8ASzx5WbZViRpJ/hrMvqS4HAE9TIYZga2CVIJzLI75bTfb2Zih/a+f8nvC7nWYVDmNrBa7041V6gtE4JTDe6Kovsz71d7kvJ/IN9Fg523UtX7TYLPA2R5Al9nB3tkGU54jcwBIPHq05QnRZ72ZIqo+DTJ8DGSt44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=POdwNKJQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ODQ8jb001992
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:17:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xGTfHIwxwFijCtHSOZjsJO/1D5QjNvlu4mqTpOeWZ3w=; b=POdwNKJQB5/x2/g1
	mb8usZ4U0LIKPaX7V0+jjc/v3pjHhcbM/jXViHMExvr+oILP8Cf5raepchQN/JFC
	tnvqLZeXqeGkPOZJqpxcnIJcruTwtMtaujoM6lT2XyfDkE6dX4oZqBOwGNOGGKcV
	zdVGzM0jfjeD4oky83YmrNDKF41/qG69NFHLva3+L1NffvXYnpLDDuneEAc2zPlZ
	YVzF1pqqeM4Hk02TuGv+eA3PM7DmEK319Nh7acQWnRL18e/SCxgEZiR1wCL/yUFT
	ZWcaW4wX/xoME+hc3iuiUn4lyrK2KhvrlHdG+Ts6TM9HbCSzTV2Pid1obDmtLUbQ
	beB25g==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499k98p5ey-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:17:43 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b4f86568434so228698a12.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 17:17:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758759462; x=1759364262;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xGTfHIwxwFijCtHSOZjsJO/1D5QjNvlu4mqTpOeWZ3w=;
        b=gRnV97wxBEBWF43vMnb7zfL0rqaafEmyGMXYboNB+w5h4bX+hxeniR35nv9DnM9Qrx
         +Z3ly2yfxu2ZsHSKRSybXg9VQIy3F3xAdqAdXa17eWV7DjkP/0/4gPCKVRCkbFXR62nC
         efcwRg0bTxxP8WwewvHGhUpPoSLmWNW/davqT+ailYMGEwd0WjFgsukIqxp1u9hwhYjF
         7gD6KqMDF8HumzfMaaWHNLfLIHRsPAw+zJ4kkLQtWB6TzYG9LDr9RjOhGocFUfTUQQ8f
         BT6I3o3okeeIO78kkWUa3yxt2KkFeoyl9nzBmKjx8ZNljIXmZBJwcNkLsi9z4zRVKtIM
         4CWw==
X-Forwarded-Encrypted: i=1; AJvYcCUxlPuWVGJ8rPoM0QGvzqKWPcXUXm82Gfj6uIAj1DagKrkw5oJsnw+kGaU2pKCxmWBmCtAheWbWWIho@vger.kernel.org
X-Gm-Message-State: AOJu0YxAIAPuwq420+RcM+N49K0oOZglMpGS2rSzo3RJZ13JS+D2IGnH
	JKQ9dl5vUXP4+nqdAhjiJKj7kUDrnYrshiEm4n1/lnRRJbTBsm/8qN1CEDQuwuXb2A89F7YiuKl
	OvlMa7kts9hU2kxaqmCrd5r7Rsf+EmBPSrZYHcioREYW+Dd9QazB8ZOb+qo7QIsEb
X-Gm-Gg: ASbGncsxc5j7fgs6VGQHhqo2Hir+eclHEeIidnd01XXMmVz1kVb6Al4u+tt/bL5z0AA
	vo5t0nLZrzPqM1dBfWK1jpEHlhs4pCha3777XLmIr6pa5sGlbEUb3tKQFzkxgueHEf8FwOc05Ju
	8LtamyB0+04A5DuOtu8gulQQB2Wd0S9oGNpzCMU9iE4pwHBMiPlcqDSqzrh3BbbckqTkYdi2XfA
	PIHV5VrCN+fX3Y0sNnGFvKTqV5kMY9I2XkJ+DYybAtIpWjsgJuqieaofZXXrrgIueJqTWpu//OP
	ZalVFvD8IoeFebZOxjIxMJMMQ3typCNYU9REIVttJd6ow2g+mkQUcXaUURUHnxHFJVZOwf9wukY
	ui7KnZesGA9gMNHU=
X-Received: by 2002:a05:6a21:32aa:b0:243:78a:828c with SMTP id adf61e73a8af0-2e7d437a418mr1555372637.51.1758759462274;
        Wed, 24 Sep 2025 17:17:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE4FTAf4ziOoN9i+efwRtUuMhLN175bzoyKymDK3F8icT94qBW4kq+j21aAEQ6kYsLm+0dJbw==
X-Received: by 2002:a05:6a21:32aa:b0:243:78a:828c with SMTP id adf61e73a8af0-2e7d437a418mr1555338637.51.1758759461817;
        Wed, 24 Sep 2025 17:17:41 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7810238e6fasm262748b3a.1.2025.09.24.17.17.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 17:17:41 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 17:17:26 -0700
Subject: [PATCH 09/20] arm64: dts: qcom: Add PMH0101 pmic dtsi
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-knp-dts-v1-9-3fdbc4b9e1b1@oss.qualcomm.com>
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
In-Reply-To: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758759448; l=1787;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=m16FfxsV01/mF7qhabiQIMCbcbwweTi0bmJ24HSfjas=;
 b=XaUXqKxq3Kimacuk/ZSkSmYGCREKRiNqbbG7XtKBng8YDWFud4XluXwW+5hXkj+Jf/uaUBSH3
 pLsyx6XvLHnC5CKWUXcXY2UK61EF/lTsYpFuf5WNJNXlB+l9lr3pSMP
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: BSQWnsOr22_Vl_GRGLcy_NvRS-1dTB4-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAxOCBTYWx0ZWRfXxnfgBN5NSpQV
 UdMP2WKr+ulOrs+xjVA5Fd14EG1XgNTqcucOyRwvyyn/VKQWAplug4FCKlLQ7Sw3GO6ns4YAbdK
 FnKbROvzIff64GeVn7x7pkIvyJZJNqGdHasdHzheWn+McQAPVdST9NhpRpU9zmLEtYSB06w+Hg2
 a+FI2Xo8z7iuLRkjlpD/mWMMafJQpEcpYkGnHRw9gm+cnx1tkEx2F+QqUBhR1nTMjWq/bdzEmkE
 hSqViO2c4yh88JFmnd9PrU3sWq6Dnis/DdPz4g6bYWjro4fVC6cXoQqp3fcbsbTQPA6DY1jUkOr
 dVyp5xPp7zuU5hSIzt8NItQ3Pa2dI257MeDiPUPehCBtvAuxqWE1BCdC+rzCbyTpu/rmRDE2C7C
 7YzizBhx
X-Proofpoint-ORIG-GUID: BSQWnsOr22_Vl_GRGLcy_NvRS-1dTB4-
X-Authority-Analysis: v=2.4 cv=Dp1W+H/+ c=1 sm=1 tr=0 ts=68d48a27 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=gbZkXL6S0Imj7wUG7vEA:9
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 adultscore=0 bulkscore=0 impostorscore=0
 phishscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200018

From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>

Add base DTS file for PMH0101 including temp-alarm, GPIO,
PWM and flash nodes.

Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/pmh0101.dtsi | 45 +++++++++++++++++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/pmh0101.dtsi b/arch/arm64/boot/dts/qcom/pmh0101.dtsi
new file mode 100644
index 000000000000..831c79305f7a
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/pmh0101.dtsi
@@ -0,0 +1,45 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/spmi/spmi.h>
+
+&spmi_bus0 {
+	pmic@1 {
+		compatible = "qcom,pmh0101", "qcom,spmi-pmic";
+		reg = <0x1 SPMI_USID>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		pmh0101_temp_alarm: temp-alarm@a00 {
+			compatible = "qcom,spmi-temp-alarm";
+			reg = <0xa00>;
+			interrupts = <0x1 0xa 0x0 IRQ_TYPE_EDGE_BOTH>;
+			#thermal-sensor-cells = <0>;
+		};
+
+		pmh0101_gpios: gpio@8800 {
+			compatible = "qcom,pmh0101-gpio", "qcom,spmi-gpio";
+			reg = <0x8800>;
+			gpio-controller;
+			gpio-ranges = <&pmh0101_gpios 0 0 18>;
+			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+
+		pmh0101_flash: led-controller@ee00 {
+			compatible = "qcom,pmh0101-flash-led", "qcom,spmi-flash-led";
+			reg = <0xee00>;
+			status = "disabled";
+		};
+
+		pmh0101_pwm: pwm {
+			compatible = "qcom,pmh0101-pwm", "qcom,pm8350c-pwm";
+			#pwm-cells = <2>;
+			status = "disabled";
+		};
+	};
+};

-- 
2.25.1


