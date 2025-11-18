Return-Path: <devicetree+bounces-239637-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E8D1BC67E42
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 08:21:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id C200E35EDD7
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 07:18:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 748FE301718;
	Tue, 18 Nov 2025 07:17:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cYdWR2Vn";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LtglZQzQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4E233009F7
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 07:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763450256; cv=none; b=b8eFC9q0wf3hsCbt9RsiS/95t9fv93m12ggrzNbO2OnYJdgpgaJoZ4lQcZo+qvfZN7Ihjt+d+x4OjJbrtEkrKYZbmvmYSUjzehzEJACF6I3l2QQ4fqnuXlpaqmt5EP1rhV5KqpkMFE/QHVK2jQJduaC8Am87JxwGdPTA168yHV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763450256; c=relaxed/simple;
	bh=e3gKlIgcNEy2r9Mx1i7bMF3/Ao/g9nApBx5pbLsL/sA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=trnalYfimvK1Geln9N9LRAbR/P/SUptY/u0QJSfBqPvzplCisy/Qn3/nwYIHulP/IqWq285WhwMWxArzAWAi40aaGUOY371Numajx5cowzh1pkJoJc5nro3H/ZQEWRyoOXzTrelyVm5ERXgQ4Cb9in35G0SoWss08ZKXHr0cb1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cYdWR2Vn; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LtglZQzQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AI6fQ3p2343381
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 07:17:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	spEKHx63+sJKj605M8Bf9cWcS/D+6tO2xX01XfJCvsc=; b=cYdWR2Vnfkm1vJRI
	TzE/u7/ErOSjd62ezd2o0qZLv4yaPQI9NgwDGpNmfZEiySwiNlvvWfJEuo/unLBK
	689khvA4i070ytkwolLZ1QIdlW4YeQM4wpiUaMQxtaDbhpGzGiVo/FbuYtTteui8
	LX5s+74aQqdT9aDqpcLFoKbQzjSd//ajR/ELkimOyCaYTXUfCbRMa6Ea2RHSAJAN
	tgNFfawpFlu9LP7SI+fFiT/sANNuuNDme0qdfw5Xujd/UZqO4EcstJNMZNaV1c30
	1VNsRhT/CZtnNu2yj/9Pm+xEYX8Kt/xJnn+d9CVlNSZZR15q2MHKuUCMIQouGtS+
	eG95sQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4agkrn03a7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 07:17:33 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2955f0b8895so71308855ad.0
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 23:17:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763450252; x=1764055052; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=spEKHx63+sJKj605M8Bf9cWcS/D+6tO2xX01XfJCvsc=;
        b=LtglZQzQFYbt17lqUI9NkRnAjieqFVT2ScpgkzSwhNhK6w10PyGKXew5gEyz9U6HXY
         CQBaOcr8p1jlHdBkJUEDpvGrxLnt/J5TdRHtabm7wtIT6MVoRoBqSFLSuKKa1uqT7e0u
         aQY/G8jqsZUt54w0o5zigSNQnE52XRND20JfboStF/ulwYvZYzNECU4ockSX5COuGlDw
         CtLT2oBjHue0zy4uls6PCbDmYc+wWx4yZ2ODkizlkBa3fbdvDb7KonOrRYF5C0CUMfd8
         29lARaleXDBs29lDSa3B9r2+O0815o+fBVmXQTAjfLJWDz0F+cr/vWNNm89bhcL4dYxW
         dplw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763450252; x=1764055052;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=spEKHx63+sJKj605M8Bf9cWcS/D+6tO2xX01XfJCvsc=;
        b=IU2aWAXwpRiuIN1n9qDruAreZkJcsckCzzOAAcmxogoJ+risM6e60b7q/D4bTY611A
         DsLvcd/WEAjk1jBYIA7oXa9MXqewnrzL0tii5YFDe4eApUtd+4QHmiCycWDcukp6rlcd
         j9TrgIdXWn8yY/93/+B0CjqLJiXwW9JNJDjdB9HP/gUx1ia0b1Z7OEj04UFX7XVwI8tL
         7vK5ooSnbERIdXzFFav7qf5AhHA+EpSvZEMh+00qv/8I/8Eg3GuBceGjWy/BAnSrPTrz
         NyDvJfVBmXrxCzt4kGsFoFF6C50kguurICireV2hZanwrMmTrK+gf4mEWdOll29FlfWC
         Oq+g==
X-Forwarded-Encrypted: i=1; AJvYcCVXU0ubbLb2fhkziBCe1h6hE/N3aUBw0mA8RQUHbX1pPL11ynPgcFkhNrVGkFAVrKkmgsNNugRfItDM@vger.kernel.org
X-Gm-Message-State: AOJu0YwcAddNHHWadR7hqKZGV9wh22uG/puicVnZvyJc1jiSY+suKHAp
	gVTY+I7xQrGXIHkZWaKZ01L7tQuSqLDx0PX5Yai2BFrBfn030/ByTyrJf6DWiD6zheRFLyula64
	hOkm8GMc18ULhENvlZV8xDwQMy/F2sutxYhTSStXdIFLJBXeyeP6byaUSZVdbl6LB
X-Gm-Gg: ASbGncuP1hX6yhAW4MYascLpXsN3oQQDGwf358oxJudVNsLDUYLH0fADWQwR6uhnStP
	nMmYqNS+kobwxyOiV08C/6bR8U6xMCqRTl6lYc7ULf1uCAiUasMmxmHKPZcG/MSoqyg9bI9B9PH
	g5jv/Nzf+DgTLpQ6ALTxM7x2v+WQXMHDCZzR0hdAGmhCGi64vPLN6ySxh1LbZhiARWaQan9jyVI
	G0uhAD6SQeHS/CfnOvWmwOiN62HE4B3gx6e/gAnnE5kEaY6cORSnWPShcUkKKPWKCQv1Ex1i6G9
	WEJqkeHAtC5BG5zxwPRm7xNk6sO96chjWukGt9C3dEQhMiXZsRziK1mj/i8hd4rQHzf77om4Flt
	rJBUg38dj6bm+DCjsTWGnHwpFK22ImJ/H+Q==
X-Received: by 2002:a17:903:3b88:b0:297:df84:bd18 with SMTP id d9443c01a7336-299f55b8153mr29253135ad.30.1763450252485;
        Mon, 17 Nov 2025 23:17:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHooLziCuHnx0GopaNEw109EtgHfksQMt2UGh6QcA7LeCBXVCtUWSufbjanxOCQQBZq/aN7uA==
X-Received: by 2002:a17:903:3b88:b0:297:df84:bd18 with SMTP id d9443c01a7336-299f55b8153mr29252815ad.30.1763450251981;
        Mon, 17 Nov 2025 23:17:31 -0800 (PST)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2986a60b116sm129955285ad.79.2025.11.17.23.17.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Nov 2025 23:17:31 -0800 (PST)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Date: Tue, 18 Nov 2025 12:47:08 +0530
Subject: [PATCH v4 4/5] dt-bindings: clock: qcom: Add SM8750 video clock
 controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251118-sm8750-videocc-v2-v4-4-049882a70c9f@oss.qualcomm.com>
References: <20251118-sm8750-videocc-v2-v4-0-049882a70c9f@oss.qualcomm.com>
In-Reply-To: <20251118-sm8750-videocc-v2-v4-0-049882a70c9f@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Proofpoint-GUID: JE6O8wrXMb82GKQGsaCkYpYKAKbuLFUg
X-Proofpoint-ORIG-GUID: JE6O8wrXMb82GKQGsaCkYpYKAKbuLFUg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDA1NiBTYWx0ZWRfX6Wh+qASnTjxN
 bqPHraQ5EUjqNIxsvo9R2eNhKMbwHlG/QCHBwHz4XGxlIFbuQHHumOeNyCc2WbKIkzfhEasIATS
 cOVkj1rw7G4Fz+iDTKsq2U8duJkT+DIwmrAAruFoZxEhwwqENIlsj1nYvpXb6eKvto8oYUkAHz2
 EMT9pgJU5RxsKMjGhhWqIVPlC/mvPTWT7PU7kvmK1W2BlZTu8bOFfprfTfahVO5WOHeTxTr/fSd
 fABM63iaysA6AmmN/eRJxhUhR0P22BHV8xgXcpv3YHDfGtAVq4mn4qRHXiFIa12CfCCgUVthhFb
 UmtgCTICdgXWY3l0K6CB6X9nLTm2xnjUQutuq7/6/9aKS6elZpwl0m+UPGmU6b7TH5o2ZirAbjn
 SYK52oG1cfNfm8ojpaOuycXI/WBc8A==
X-Authority-Analysis: v=2.4 cv=L+kQguT8 c=1 sm=1 tr=0 ts=691c1d8d cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=COk6AnOGAAAA:8 a=1oqufa9daVNmb7UKLHcA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22 a=sptkURWiP4Gy88Gu7hUp:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 malwarescore=0 lowpriorityscore=0
 clxscore=1015 bulkscore=0 adultscore=0 spamscore=0 phishscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511180056

Add compatible string for SM8750 video clock controller and the bindings
for SM8750 Qualcomm SoC.

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../bindings/clock/qcom,sm8450-videocc.yaml        |  5 ++-
 include/dt-bindings/clock/qcom,sm8750-videocc.h    | 40 ++++++++++++++++++++++
 2 files changed, 44 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
index fcd2727dae46711650fc8fe71221a06630040026..b31bd833552937fa896f69966cfe5c79d9cfdd21 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Qualcomm Video Clock & Reset Controller on SM8450
 
 maintainers:
-  - Taniya Das <quic_tdas@quicinc.com>
+  - Taniya Das <taniya.das@oss.qualcomm.com>
   - Jagadeesh Kona <quic_jkona@quicinc.com>
 
 description: |
@@ -17,6 +17,7 @@ description: |
   See also:
     include/dt-bindings/clock/qcom,sm8450-videocc.h
     include/dt-bindings/clock/qcom,sm8650-videocc.h
+    include/dt-bindings/clock/qcom,sm8750-videocc.h
 
 properties:
   compatible:
@@ -25,6 +26,7 @@ properties:
       - qcom,sm8475-videocc
       - qcom,sm8550-videocc
       - qcom,sm8650-videocc
+      - qcom,sm8750-videocc
       - qcom,x1e80100-videocc
 
   clocks:
@@ -61,6 +63,7 @@ allOf:
             enum:
               - qcom,sm8450-videocc
               - qcom,sm8550-videocc
+              - qcom,sm8750-videocc
     then:
       required:
         - required-opps
diff --git a/include/dt-bindings/clock/qcom,sm8750-videocc.h b/include/dt-bindings/clock/qcom,sm8750-videocc.h
new file mode 100644
index 0000000000000000000000000000000000000000..f3bfa2ba51607d0133efcdad9c7729eb7a49b177
--- /dev/null
+++ b/include/dt-bindings/clock/qcom,sm8750-videocc.h
@@ -0,0 +1,40 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#ifndef _DT_BINDINGS_CLK_QCOM_VIDEO_CC_SM8750_H
+#define _DT_BINDINGS_CLK_QCOM_VIDEO_CC_SM8750_H
+
+/* VIDEO_CC clocks */
+#define VIDEO_CC_AHB_CLK					0
+#define VIDEO_CC_AHB_CLK_SRC					1
+#define VIDEO_CC_MVS0_CLK					2
+#define VIDEO_CC_MVS0_CLK_SRC					3
+#define VIDEO_CC_MVS0_DIV_CLK_SRC				4
+#define VIDEO_CC_MVS0_FREERUN_CLK				5
+#define VIDEO_CC_MVS0_SHIFT_CLK					6
+#define VIDEO_CC_MVS0C_CLK					7
+#define VIDEO_CC_MVS0C_DIV2_DIV_CLK_SRC				8
+#define VIDEO_CC_MVS0C_FREERUN_CLK				9
+#define VIDEO_CC_MVS0C_SHIFT_CLK				10
+#define VIDEO_CC_PLL0						11
+#define VIDEO_CC_SLEEP_CLK					12
+#define VIDEO_CC_SLEEP_CLK_SRC					13
+#define VIDEO_CC_XO_CLK						14
+#define VIDEO_CC_XO_CLK_SRC					15
+
+/* VIDEO_CC power domains */
+#define VIDEO_CC_MVS0_GDSC					0
+#define VIDEO_CC_MVS0C_GDSC					1
+
+/* VIDEO_CC resets */
+#define VIDEO_CC_INTERFACE_BCR					0
+#define VIDEO_CC_MVS0_BCR					1
+#define VIDEO_CC_MVS0C_CLK_ARES					2
+#define VIDEO_CC_MVS0C_BCR					3
+#define VIDEO_CC_MVS0_FREERUN_CLK_ARES				4
+#define VIDEO_CC_MVS0C_FREERUN_CLK_ARES				5
+#define VIDEO_CC_XO_CLK_ARES					6
+
+#endif

-- 
2.34.1


