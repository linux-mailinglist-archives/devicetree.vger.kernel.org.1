Return-Path: <devicetree+bounces-232080-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B48C1403E
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 11:12:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id BB9054F756A
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 10:12:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD38D3054C4;
	Tue, 28 Oct 2025 10:12:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Vvc9m+mf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196A930499B
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 10:12:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761646333; cv=none; b=JW6H7yEJ+LyH+tz5IU02I6lXTTfACcsNfakceZYbBZrpIq3EaqPJnl2zQKGul07a00zdxn+mm8+bdr9Z/IJM0QPY5yk1Xmw7lHI6z6D8N3v1dzAVxE2HV6xLZ9kOTl2TfJewRcz6qYFgRGdOPS2fZ8GaYuxdBXOhydWei49xyFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761646333; c=relaxed/simple;
	bh=ril99Wt36AaQWNv+PDjT8BlLjpjvdFqefjO73sSkLmU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=C0eVzD8HCbqcldt8rj9MUCXSTJKSnT6BheA3G86hB85KCw9Tyw9L3TBoYbOOlDxXXh0rCwXMKPq/9ewOgdtUT+di42lcUjVEGEWrwuC6vRIKs5Sp48X6mk/lEpPd7QWY/+cDtTBrCoKyhaKfz7bnUdhpcan2tU5BtuVnS87Jqkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Vvc9m+mf; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59S4AA0n552777
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 10:12:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iYDtPrC3G6SjHluGEZkqxO1EAHQjQdzxEg9eUYrW+6M=; b=Vvc9m+mfS8OT9S8t
	5RaG6Y4QXH0PSMcW6M8yaHZfd2mhdkovxcLjjOiL6ul42Re4WpoylwkUgCy2TKvj
	Gg5twFbuk2b1SdsD4umkFQoEb9EcjTIcbimYGW+gHkvUpzWsfh4cI2CckKOnFk++
	k4gq0awmMIa37G1WSiuIQuMPDPkjMvBQTljzxRJ40kjzQCFpCOBJXL9QoRE20OwG
	/7B5A9brzZ2CgcPFkQbZlAKXAxt1TSSZHKy9wWu1I99U4SyA/akBS6XCpBMqst2r
	IeRGRj5GlsfTTT0EUUhm0r0KFvsaECh+ZZfHgl5dHcgCPjZNpZgcQ8jLpI42/hCs
	P6CEFA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a2pjf90q4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 10:12:11 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2909e6471a9so39140875ad.0
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 03:12:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761646331; x=1762251131;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iYDtPrC3G6SjHluGEZkqxO1EAHQjQdzxEg9eUYrW+6M=;
        b=nUInT03so9afDHdWECWUxWtPsLxR9Vy+TkisJ0J/V9zf68l8hI1qxQbAp5+xQBfpnt
         Jd8Wz7g2RCsuM+MrNVdaPILaPefk5uGygwDIsd59mRnNDzePaeeCsZoVvfjwBO6J8IFM
         S2BcvCq2XY9QszCM6I5Fv9MWowdaLgs2un7hYZGKZhdOETOZ/r+l7kkF7TNAN2cpdvi6
         sTXZOspjZV2fg6H+kPxZlqpo8MyZM5h+mx5GQypPlTCFlFg0I5IVpFKr5Fjck5ee+JCG
         rrIwCmDrTYoAKStQ1pJBrW4RAfwDd+FYXFXee7KPesDtQvn/Uqt5qSSmhrQRgQotfijh
         oFyQ==
X-Forwarded-Encrypted: i=1; AJvYcCUSfEHLCyQBwf0w5fENn72de8aDScHD32HuDuCRPMQvzLjcaifEEj8ddTvG+6PoqVX9QHt7rYi1nIe2@vger.kernel.org
X-Gm-Message-State: AOJu0Yyi8i6zOtMsIN4PrsWrmg2C5q/4D4IswJavT8g5N3kajs3Ky8yc
	kTnVC7h21Iye4N2G29cH1Rg6roeGTOBN6GVN5zaxOfscRBciQ/BtTixNU81y4F8Ujt0ddYXGm0R
	nLXVKxAYUurecEbuDK3RKrEp9RBTKoOHoY1ecE0HOVrBKVcb/lG9y+Mwaa2tFyaHk
X-Gm-Gg: ASbGnctL0kzB1Yb6toYkLI1AjWsGwtUt2RQGnvyRsJ/WWcpTgrP5CAgHIvKAKmjsS0u
	D43qqm97YgjhOYfwlqgJexsc0+/cAdouCK58oWaqVn+Q8VRCzFtAVweZzUnudQbt6TYDvaYbp18
	+G3AO+9sO08BborU8SLsCyjAzDJUVhlYUskEVbLrSv57ddSjZQEz8BINzR25sHd8fHeGKydIa+n
	uMjX2+LyYCnB+ulQ9HCY2a5BgbbOec2NJ9gDkewMPMXoI2QpMVSe2XgpaiKTOpumD2eKCnttVsi
	9Dhhfgc/WGXcG1fMqZSS3dmbX2rDTFmxGLEYR4cJiwKVmKlC04jpJ1pzAkgbpJg1YPbt3Z57819
	HO4+8+8uvJ3r/vRtsfMZdPX4wPLNBuPgnYXJPKZX8BwNJRwjIT+VUYjWX9OEdkA==
X-Received: by 2002:a17:902:e5c6:b0:293:e5f:85d7 with SMTP id d9443c01a7336-294cb5186efmr37248105ad.55.1761646330539;
        Tue, 28 Oct 2025 03:12:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFb29YgEWk2tLkfhGz57DmwvdMAhUJDCMmBCcvIBnASLKQ2A1aNC//pQlo+JzoyOuG/gwC8nA==
X-Received: by 2002:a17:902:e5c6:b0:293:e5f:85d7 with SMTP id d9443c01a7336-294cb5186efmr37247615ad.55.1761646329885;
        Tue, 28 Oct 2025 03:12:09 -0700 (PDT)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498cf423esm110408755ad.19.2025.10.28.03.12.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 03:12:09 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Tue, 28 Oct 2025 18:11:40 +0800
Subject: [PATCH v4 1/3] dt-bindings: arm: document the static TPDM
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251028-add_static_tpdm_support-v4-1-84e21b98e727@oss.qualcomm.com>
References: <20251028-add_static_tpdm_support-v4-0-84e21b98e727@oss.qualcomm.com>
In-Reply-To: <20251028-add_static_tpdm_support-v4-0-84e21b98e727@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761646319; l=1550;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=ril99Wt36AaQWNv+PDjT8BlLjpjvdFqefjO73sSkLmU=;
 b=mC9O91ScEQM7m0k2xJ3977SHUKVvtGlMU4RgMcCTUIhDtXcp4RUl8RyAH0i257VDDl+paWKOZ
 Ud/cYhe0oszCVKf4JALO09nYTVsuzQS/TGrgVZkmPzzzxnohyEVD1zM
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Authority-Analysis: v=2.4 cv=Ut9u9uwB c=1 sm=1 tr=0 ts=690096fb cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=5Z_N_GBq0btHVWfAyk4A:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI4MDA4NSBTYWx0ZWRfX/6JV00Z4Zd7h
 oXlGp5ZZWDc+nMd9Tc7RZCcpLGE29JP+SHdjMY37YOaMtnFg+QSfcRK2IQTbM+Pok9gNpTJ10yH
 PdDuU7Jk7Z3ZU/Y45ayTdqnOmi7IyJdMI/kGP1dF/w9HFG+O0+KPRTiKOMD2bdO/44zA/cKvp7F
 F+M4Ocnkd+/QHiq6B9TK1OPIUXec/Nyq7j1F0/3gcRl4z3jbVpdSiK2wsenml+RtSUqaMXiuyh3
 uVLQ/34lV/3ztbVOPVIOa3zo7HtTWEcITpULxOjDrtdL9ZW2rrKIqq5oN7pSWrEW+TBapw5kqAo
 rnTp96/+Z96ZRw0q07DZj+7Ups1pMaHQoU+mmn7rgpfKkrNlz8bJe08mJ70zarU8hYnJnFdjhGr
 Ttol9u7jWn/XCQoqEgoJ/NPrfkTQJA==
X-Proofpoint-GUID: SA1tUsAprPmmx6cvZE50XxigSL8VEPPk
X-Proofpoint-ORIG-GUID: SA1tUsAprPmmx6cvZE50XxigSL8VEPPk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-28_04,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 spamscore=0 adultscore=0 bulkscore=0
 clxscore=1015 impostorscore=0 suspectscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510280085

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


