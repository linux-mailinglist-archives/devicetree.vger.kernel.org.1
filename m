Return-Path: <devicetree+bounces-251943-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F7F6CF896C
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 14:48:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E4EEF30434B6
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 13:47:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31F253358B1;
	Tue,  6 Jan 2026 13:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bPVWS15s";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="io3NBKX8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2893370FA
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 13:40:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767706835; cv=none; b=AQ0RFPQUiJ1pHdXj28N5X94j8Nei5340mf7U1Va2/Vl11RSYapzL3I8qJIC8z5yrD3wh6reoG7v5qMwMd6f25xnakORLwPRmh2hCtK/TTgjQg7hOaQ4vk2qomMX4mMwuaCpD+u4+LWWOFPYR5Aam5uF/Hy9IBjmj2VKSzGIFmTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767706835; c=relaxed/simple;
	bh=5uw6gWRydAXjW+ZAsJv4BZ7YGg1H6uOcEj2DTq7IL9I=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=mcPnDy+amskDvuaUHl6cz8f915+ttDYUZ36X0Vc0b5ra2aGi1SJgC2/4lJwc6+/CzZmWUFtDHKsR1amEseolGFieMdZkdcJO9cJ/3gAy7a5MNI3BHF87Cba3Baf2KXSWbiefuBzzW//+sEXvuHHB8MQ1MjFQ2s5JnRmJ24UkENI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bPVWS15s; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=io3NBKX8; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 606B3paV2684059
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 13:40:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YT1+WRBEePyTEwhJQOOMgnw0dcH2eAv+88f4K6Zdi1E=; b=bPVWS15s9aAQmmvS
	2bLyP2pgPDaXY4ZMJx7U5hvvGOEnY1OLm2lQZPRdIp76boCooe30LyqZys7tXqd/
	PalEdR13dVPMqG3SeSPNOXNblBNpsihkvnFNmMklEOjVt411iVh7jCUp4wfeReaT
	tG2YxH7JHQR1o3u+OiAZ3JGgXbn9azX+Wfv6r3JkOKKfey1TX4hKhGcsKLaNXwF+
	zVOQAdJDuER7ZRaCV8I4ctJMwvx6XyEi2F7oM1sf58Y5kTjSSI4GKq8LR6BSrXrb
	dT+s2UqFn/UITtGCOaqAXThXoZUblFEioDVlq9yx3SU4gLixAeKKxLQ8i8RNtvLe
	an3fTg==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgty5hjh7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 13:40:31 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b9b9e8b0812so1655124a12.0
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 05:40:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767706830; x=1768311630; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YT1+WRBEePyTEwhJQOOMgnw0dcH2eAv+88f4K6Zdi1E=;
        b=io3NBKX8jrpDcljLXlJteREOwsLnNKjvs6AgMPzr4nlLYoJ+tIEAo0frzAN9t1IdWN
         fdK1ikhBY9aAALNuoyEptE5f13Hu7i3ZfbxxTB1A4deJfzqPtPmx2koLTusft5Kc+K9C
         F5JhiSxvWzenIUDwL7gXSjutjzvEFVXAsw5LCy0MSYAOYxn1AKBKfGxYBxeicEg/sDEc
         Iv6xVIZHT9XHNkRUaxMEfUoSMq/RwzhOfjq8uB5EUE1isyxXJI80CGCZzC+yUbP6D9hM
         LCIlLI6Z8nJroOkyrnlIjeO8OtyLIgcvJEnDWQjTK4luz/O4KmeahNd4reI0auMuT3wi
         yaFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767706830; x=1768311630;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YT1+WRBEePyTEwhJQOOMgnw0dcH2eAv+88f4K6Zdi1E=;
        b=S1H2JLbsiYasCNFYb7HIeCKmyIEraxsE6n73oxphXWYPdh0Tfjo4vsccCFxlexIW5a
         U1HbHV/COfSVKDzUT9hYsuoSALn2Ort0lSSQ/r+1KUc/EFKmD8jUCdLWOpgsjXjAVMqJ
         PcDu3t1O4afEA7+uikZhn6VGuLUWOLpUav0qZMZ46dwQCE/ehKwNc1xk9gbyqUtrIAkP
         9HpDv6pBvUsUy65G8m3WiszV7bhassznJzbsnLSLtrBGt6zCzE19QOBppDhEIVFlutDT
         gLClIC6aa1x6dRx8u1yazVhI3I5wulC0RvQVeGD8GXZFBWNpZb66ZMtJy+OWxdVlG+x4
         NMWQ==
X-Forwarded-Encrypted: i=1; AJvYcCWQ5F2cRUZQ7mzFzkwwnzqxc5bqwOvqc1RDdBDoNcDnc3GjNwiyKvf+MLCJ3syHSgfhZWmRUuZJ31gU@vger.kernel.org
X-Gm-Message-State: AOJu0YxlQlXdmUmg832QyOOlVCHmXNYpl+YtUqfHZdAXcASlYCSDGqb1
	FR/oILtQpXo+rnsfUlpiAw3H7R3p1D46+ca08zhSwcr1YAxT9LyBkf+9cbykpJspYP3BTXJQX/N
	gDvNcyPz4Ci1D1xH1ey97x8J6podfxl0ClCB7TU3GQM1cz4ot7DpEtzv1hxrgeEYq
X-Gm-Gg: AY/fxX4+cTRMANXRrOt2YK3n9fheZMqTk81MPM4YAQuiBfgsrVEkkF60An0Xr3jO9CI
	KTK9E6FJOrCeq1vJezBLe2utosnJCuMaf7Rd2RWIPsws1KBUjlwMp1Zo4j0i4WeG+9Xu1R1gbRe
	o7Zu92WdZ5ku9m1zvRl4icLdGck+isfaNTCsqV+MPrlXu8i6U4HyCK9FigxHyMhHzC7IH/CFEWf
	/vYtycOrFOaudKxtC7WBzh7eB/+FQjNP1/gjEPdFncz2a/rJDymCXJVOu6S+jdMBQ6gdC4VamXE
	0j7QTVKQGgeUpC37606K89zcGnYE94b7rzLWpnGLBjmCuy3CmV5nJy3LL3ikvbC9DTyEdBP3sxE
	IwGzdn4wRXK66GwYJTae52QawNr3Qx7Vw67BafaFg
X-Received: by 2002:a05:6a21:33a0:b0:366:584c:62fa with SMTP id adf61e73a8af0-389822d7804mr3034091637.21.1767706830026;
        Tue, 06 Jan 2026 05:40:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG3qC8z4lbOJuLoKb4xvZmoxJozhpdKAHzzoCTTcC1R2/MyomtFOJUnUIzLP+epfD7hFVvbsQ==
X-Received: by 2002:a05:6a21:33a0:b0:366:584c:62fa with SMTP id adf61e73a8af0-389822d7804mr3034062637.21.1767706829549;
        Tue, 06 Jan 2026 05:40:29 -0800 (PST)
Received: from hu-rdwivedi-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cc7856sm24112515ad.68.2026.01.06.05.40.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 05:40:29 -0800 (PST)
From: Ram Kumar Dwivedi <ram.dwivedi@oss.qualcomm.com>
To: mani@kernel.org, alim.akhtar@samsung.com, avri.altman@wdc.com,
        bvanassche@acm.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, James.Bottomley@HansenPartnership.com,
        martin.petersen@oracle.com, ram.dwivedi@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Anjana Hari <anjana.hari@oss.qualcomm.com>
Subject: [PATCH V4 2/4] dt-bindings: ufs: Document bindings for SA8255P UFS Host Controller
Date: Tue,  6 Jan 2026 19:10:06 +0530
Message-Id: <20260106134008.1969090-3-ram.dwivedi@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260106134008.1969090-1-ram.dwivedi@oss.qualcomm.com>
References: <20260106134008.1969090-1-ram.dwivedi@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDExOSBTYWx0ZWRfX16sg7Hp1CEWD
 C7zGHWIqsLvQjryXjsO1xr7sy6nQLpOQmVTBcTHQJidPHMqUn+VK/qNMexAfuNnu/riQsYky4Eo
 NAUgPbI/ASh4lYolUWQ1WhDH6u7H/hi8uOmfh6nr8ZvnbSyfUsnv+GWF+8H3+lp7OeC4l456a/8
 hq0gQeH8xHOdKW3vOvVVhMp1Sm+iy/w6vEd/xjYcWu0pj/W60y0zePBSz8dnH9D4fGfAPKS91Rg
 8fWCkKz/K06Rpg2Wc4oMK4DaqMu2Nf00adjM0bkQ1Ww9mEh7VPHp++UfOcvkeYCnEaMNLK7/QYa
 q1T8nV4XkNGRyPMT0xh1WoSR4ONmdsWG2wPJBPL6d2jq9tlR56UJno8F/E5JefdujcNWss1KnpF
 xquvtXMlRSvhzVV1XInU1Z/SL97cmbLCuTtSyhK0YWmgSAeiQwjfJf+ZJn2kzP1uXOFi5BlTX+f
 4OzgNVV9LbxEv2CMalg==
X-Authority-Analysis: v=2.4 cv=Rfidyltv c=1 sm=1 tr=0 ts=695d10cf cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8
 a=VcM-S10TGioI4za7RKgA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-GUID: -xbebZUPpGUc26hjI9neHY8GZRDTL7wY
X-Proofpoint-ORIG-GUID: -xbebZUPpGUc26hjI9neHY8GZRDTL7wY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 priorityscore=1501 clxscore=1015
 suspectscore=0 adultscore=0 bulkscore=0 spamscore=0 impostorscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601060119

Document the device tree bindings for UFS host controller on
Qualcomm SA8255P platform which integrates firmware-managed
resources.

The platform firmware implements the SCMI server and manages
resources such as the PHY, clocks, regulators and resets via the
SCMI power protocol. As a result, the OS-visible DT only describes
the controller’s MMIO, interrupt, IOMMU and power-domain interfaces.

The generic "qcom,ufshc" and "jedec,ufs-2.0" compatible strings are
removed from the binding, since this firmware managed design won't
be compatible with the drivers doing full resource management.

Co-developed-by: Anjana Hari <anjana.hari@oss.qualcomm.com>
Signed-off-by: Anjana Hari <anjana.hari@oss.qualcomm.com>
Signed-off-by: Ram Kumar Dwivedi <ram.dwivedi@oss.qualcomm.com>
---
 .../bindings/ufs/qcom,sa8255p-ufshc.yaml      | 56 +++++++++++++++++++
 1 file changed, 56 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/ufs/qcom,sa8255p-ufshc.yaml

diff --git a/Documentation/devicetree/bindings/ufs/qcom,sa8255p-ufshc.yaml b/Documentation/devicetree/bindings/ufs/qcom,sa8255p-ufshc.yaml
new file mode 100644
index 000000000000..ea2f746117e5
--- /dev/null
+++ b/Documentation/devicetree/bindings/ufs/qcom,sa8255p-ufshc.yaml
@@ -0,0 +1,56 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/ufs/qcom,sa8255p-ufshc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm SA8255P UFS Host Controller
+
+maintainers:
+  - Ram Kumar Dwivedi <ram.dwivedi@oss.qualcomm.com>
+
+properties:
+  compatible:
+    const: qcom,sa8255p-ufshc
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  iommus:
+    maxItems: 1
+
+  dma-coherent: true
+
+  power-domains:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - power-domains
+  - iommus
+  - dma-coherent
+
+allOf:
+  - $ref: ufs-common.yaml
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+        ufshc@1d84000 {
+            compatible = "qcom,sa8255p-ufshc";
+            reg = <0x01d84000 0x3000>;
+            interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
+            lanes-per-direction = <2>;
+
+            iommus = <&apps_smmu 0x100 0x0>;
+            power-domains = <&scmi3_pd 0>;
+            dma-coherent;
+        };
-- 
2.34.1


