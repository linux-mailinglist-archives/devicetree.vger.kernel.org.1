Return-Path: <devicetree+bounces-225865-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EE1FBD19B2
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 08:12:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BA7A13B7685
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 06:12:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EF7A2E2DFE;
	Mon, 13 Oct 2025 06:11:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VVkEe17o"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE5FD2E283E
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 06:11:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760335906; cv=none; b=idgLr90krZp/mKfaYZXEcn7oBDA1s2YPAAN0ygrc/L17jR7dIG8DpFb6di7XWb2zHlg63xne7SEjA35r+QWQfXmxRsRj5tEAtE3HOM45aLLjv5y48Kb2KRDFv+g6LvOKp/JjOspbiI6wV1fE+ee8k0fYBvmPNf3EdEcRNWH2N1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760335906; c=relaxed/simple;
	bh=ril99Wt36AaQWNv+PDjT8BlLjpjvdFqefjO73sSkLmU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jzhE5VTZwYZty7I5j9jf9aIOQFkCzgYP23oRr5AKjuH0h/B5v9W8OK3B/MzJJrcqeb/4mH/Hvo3sNUQb9F7ebZpB0R+BGs/NcW+kN8Epyu9D6LVgNMRPzbJmjyicF4mcUJgQgOBGV60xyI9YjIm+dAQ8lnr12Q8a6/Y5rhoOLQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VVkEe17o; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59D2ns6U023476
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 06:11:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iYDtPrC3G6SjHluGEZkqxO1EAHQjQdzxEg9eUYrW+6M=; b=VVkEe17oCPV8uPhf
	QFMprB4pBsjr/jsvuiUR3AFthZI44/2qHNQIgmIF/rHd2pu77KbuhDiNeokJVJD5
	E94to2/M7jKqB3F7ug0iaennxHjIrP4wHLWIk1+eug8MBszbxMmlHzBeeDcp5d/q
	dCeYP0TTdIm+7PNh2t8AfzJY4LZccKHnavjJIZ0usL6RgCUAFFN2eUYvMmMRt3OB
	rEtV2JFsocwDCZCHp6F3iqFI2RF/PAvrtVUEgNBRBlHR3gMwE/mMLlDPlU2dE8vo
	47zrcFZVaMbwJojuxd4PPGG8xsWh8dEwkY6by09syQPgoR9TudBrPZMCAr9FbOup
	MflMGw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qgdfubq2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 06:11:43 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-286a252bfc2so73513205ad.1
        for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 23:11:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760335903; x=1760940703;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iYDtPrC3G6SjHluGEZkqxO1EAHQjQdzxEg9eUYrW+6M=;
        b=JTFagtB8Q1TwuxkBnH9gBgsateM7MIYoCI/BYLLCH1/8h11ODQtCu8XRMIfjyoZl9H
         sC+96hH61rE92aEI0hJGp2WSnVQySQak3RZoIALxeSlbSBQd4ATesfLgUovrGr2cDMTp
         fT2RHvV53mOK1oPra/jdt2pnKIyaQ5XVkKfieuf8My1D1iHk+iUE7BBUnMttg07AnMyD
         vE1VdarEizqZYDBC3a4t+2Hs2sY5MDp6xUwRmClBWZLbUTv9dYdJJORHZ50x5fpM8V0R
         EVXyQfFHoSsnw07GH9c8+sPJSwMFZ0Ac4y85ziJA0Wq6wzV8suTnCPp+iE1vdrTVW7tK
         lt4g==
X-Forwarded-Encrypted: i=1; AJvYcCVqdjB+KtKMgVQ8PN32+Z5w90WdBAD26oKDidjEP/zSFfKKeiSwMEwz5TE/wG4TcD2qR2jV9TcHOWBM@vger.kernel.org
X-Gm-Message-State: AOJu0Ywj3Jz+x04Xm4Z7UEEtd0JCOseNwbrWjJ1X8OW41Cn70jI4xmI9
	+477YtdVeiyZT9uapXUQnEc1oibigLYEXERgTr9niU7Cjdv9Pl3Gr5LJQJoCQj+A6UJZ6gzUocD
	yiSNC287XgusphYjdOftjMcydRki1mra4Dj6EkgVQG8nyCyFw4/HB87FMJuBGwEqU
X-Gm-Gg: ASbGncvQXttOtHBZM9TUaDORSuHCzXZkd6X0Oy2W2LFELo1jN5UqqOBsmZGYEtF8MT8
	G0E9Erz82t1MMB2+jawSCLc+vtqdmDNvZ/LYRKCGFnKU7NxcrhG6rc7bGXwL7ujld4gKxCUEplI
	TSyHXwpRTup2tatALXnqbrmzDwXSyPsU8soKRYkvc528KmjZBQ8NDbQNv+E0GgVyVEs3dLs4QAA
	SITfcXj0WR8t6821398Tc17yNmRFZeunh1ZIjAM5LYfCADHyXW17KgOblcBuAa9ZxuKYXIqbSBy
	yvttHQGQ0sLToGvl0o8fP+YoEQ2W+j+4PyLrLAPN6tzNTyCVBUoqS0opOa/l6D6j66V/aVdb28T
	+wcfL56mC3NyFQ3zjjmWwTH7LB7M=
X-Received: by 2002:a17:903:46ce:b0:26e:43dd:ae77 with SMTP id d9443c01a7336-28ec9caed29mr272651895ad.24.1760335903088;
        Sun, 12 Oct 2025 23:11:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEULiUky5u0eNgxl6LX527XaD4MnbBTJXkMtMbnf0uwC+4g+DhLvF8iPLBmq67+54X1JcIZNA==
X-Received: by 2002:a17:903:46ce:b0:26e:43dd:ae77 with SMTP id d9443c01a7336-28ec9caed29mr272651735ad.24.1760335902680;
        Sun, 12 Oct 2025 23:11:42 -0700 (PDT)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2904f61a1desm64388675ad.82.2025.10.12.23.11.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Oct 2025 23:11:42 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Mon, 13 Oct 2025 14:11:16 +0800
Subject: [PATCH v3 1/3] dt-bindings: arm: document the static TPDM
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251013-add-static-tpdm-support-v3-1-a720b73e83db@oss.qualcomm.com>
References: <20251013-add-static-tpdm-support-v3-0-a720b73e83db@oss.qualcomm.com>
In-Reply-To: <20251013-add-static-tpdm-support-v3-0-a720b73e83db@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Tao Zhang <tao.zhang@oss.qualcomm.com>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760335892; l=1550;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=ril99Wt36AaQWNv+PDjT8BlLjpjvdFqefjO73sSkLmU=;
 b=HvBZBhPoXjlRC0YdVww2PK4swhc3dY0OMjVa0IXNyNsiaBHrYx6rix1xuT7DU9SRmw+65geZN
 kJyQ54ZKrmwC+pp8TNSXg0alrdswDbuTaVRsA3/6eNF0p7W2T1KcFWJ
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyNSBTYWx0ZWRfX1IUDwSQ1InD4
 sTRbKiDMFRJgzr4cZ7UgQCinhR7glokt+3DdD3C6z6sGT8f4JW/HvCu//KqDnecrWBWDiSPQKhm
 lzO5lgAM36qoWk/ZfnZvtEmUdbqURX6LHG7Cl93hbPtDMHQdDLeBeZbOwTFT0FTeBR3J0m+Mu3d
 nm1kNQPsRjAeqebRPJ2u46kLKFIbs/ZBJm3WVPihHl13imnS8OWrltl7DvdhqFQWso05qpP1RaX
 W+ncSbaYr2fv7I7TIyokM72U7utZVJSG45kitFl8Ew97WflAbgxYkCwTGFHd2YpHR9RqU+g3wWl
 hBrdLHijf/2AMKQ5OS5fZf1PPrqVjo5EzkzbTntfCJw40Yfy05FZ4LxfzPRZX0aAn0cuBJ8gAvD
 78kAigoY9khpc3Eijp0PdrZxvnL9KQ==
X-Proofpoint-GUID: OU_TgJxBLaM0CQsV89J8VAfPF7HKLZ_V
X-Proofpoint-ORIG-GUID: OU_TgJxBLaM0CQsV89J8VAfPF7HKLZ_V
X-Authority-Analysis: v=2.4 cv=J4ynLQnS c=1 sm=1 tr=0 ts=68ec9820 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=5Z_N_GBq0btHVWfAyk4A:9 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 adultscore=0
 bulkscore=0 suspectscore=0 clxscore=1015 phishscore=0 spamscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110025

The static TPDM device is intended for sources that do not require MMIO
mapping. Its compatible string should be documented clearly, along with
an example illustrating how to define a static TPDM node in the DT.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 .../bindings/arm/qcom,coresight-tpdm.yaml          | 23 +++++++++++++++++++---
 1 file changed, 20 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/qcom,coresight-tpdm.yaml b/Documentation/devicetree/bindings/arm/qcom,coresight-tpdm.yaml
index 4edc47483851..c349306f0d52 100644
--- a/Documentation/devicetree/bindings/arm/qcom,coresight-tpdm.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom,coresight-tpdm.yaml
@@ -36,9 +36,12 @@ properties:
   $nodename:
     pattern: "^tpdm(@[0-9a-f]+)$"
   compatible:
-    items:
-      - const: qcom,coresight-tpdm
-      - const: arm,primecell
+    oneOf:
+      - items:
+          - const: qcom,coresight-static-tpdm
+      - items:
+          - const: qcom,coresight-tpdm
+          - const: arm,primecell
 
   reg:
     maxItems: 1
@@ -147,4 +150,18 @@ examples:
         };
       };
     };
+
+    turing-llm-tpdm {
+      compatible = "qcom,coresight-static-tpdm";
+
+      qcom,cmb-element-bits = <32>;
+
+      out-ports {
+        port {
+         turing_llm_tpdm_out: endpoint {
+           remote-endpoint = <&turing0_funnel_in1>;
+         };
+        };
+      };
+    };
 ...

-- 
2.34.1


