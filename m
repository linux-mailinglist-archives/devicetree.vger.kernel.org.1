Return-Path: <devicetree+bounces-208014-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B64D3B31573
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 12:32:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8813F17D8F2
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 10:30:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FEDF2F4A03;
	Fri, 22 Aug 2025 10:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="boOos+9C"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE902F530A
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 10:30:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755858623; cv=none; b=DiN2T8K3lW8+Ey8+eeiBmSN/exhaG3FqN33kcrudDx31QaXkxav82gkwxg6Tuu2iAm27nvDE7MtGO+tNcWpXryCrZSfT9W/rPmurOer7I4COsVJHbRuUo/0M3G3UJk4yWNMABIU+RVQ6mJpC/Qz+ZdGK6RnFi2Rf+VGWyOR46Qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755858623; c=relaxed/simple;
	bh=lupYMam9LLXLp3lz2yHeBjn375m15PN8RsLr1il2qz4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=cYYkwN4Vng87hYki8KVhBgkxwnEdYkR7OS3TBM+5IpHL6AHArRPe+/J9BAEuvV0LTc4dfA4fKIgCoJdpJ5mEz/ecnu41Vn34dZIuiN5YoqeVTDPxTvXHt0iVc6qTXzIaGMcHxv98x9r9/w0qWYydsPA9CmkJkn3yRKMqiTfpeQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=boOos+9C; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57M8UTOM027354
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 10:30:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=gCwy3dvuIrM
	dK1MGJRfo/KSQbLvNU+8cRJsdk8nhlss=; b=boOos+9CSb0d7q0j2KpZIC3i8sx
	Om9eaEQEiOdoPPDmEtMO3Ym65g96W4d/O3nxB4YM/6EYKea06xwiEUEPt1kS/Vch
	0O2G0NOXDP4CvevG3gWcMQU2Mo/7BThNNVIUKCo5ozl49Vrt4sh/qm58Jgpslfya
	iZZFQlecBZxjDvagnLXjsmRPhRHLVdI7mWjCsnUg/1ZKVmBMo9wtVfR9lbVlIMDv
	ukBQqy2VnGxC62Q1gF2bLMo0k57yWfc9VbxwfT25RhC/34GlTeia1g2zrcK40HqV
	EWanCILbUrPVpjajBnk6p4jz2tpId6YXhFetdsC3UJC+xQvPwzxvjGiMjow==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n5298vv6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 10:30:21 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-76e55665b05so1899858b3a.2
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 03:30:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755858620; x=1756463420;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gCwy3dvuIrMdK1MGJRfo/KSQbLvNU+8cRJsdk8nhlss=;
        b=BXPAUx0BOYBzexnQClUooOqluZNCDUyd1+yN6YUcZ7fDaLbRbOz6KD7tL3tkauf6Ny
         1LLN/9N5OcPg4KKQGPJnQYPo5o57hCjwlFGknSv9G1K64kvw2Bvq5rgM1JebFfYk8Gzb
         asE0vh7ILdHImn9wlgEbSbSYvWGaV5nuzjWelRBR9IUk7xHql8oP0BbaalgV/sga3rRs
         WpuW6qx06lX8ih8ZJlDnkv1/8wAg0rUJFMRp8VFC+xYRlEQHv/ZqeLEICOAC3ooA2VMU
         2c2d2mNBKKcOKHMQ+1EJFL55apCDHAYCbw97pA/ui6awgaZaXuKL2Ao+2drxaQyS4Tju
         WotA==
X-Forwarded-Encrypted: i=1; AJvYcCX1o5DQhjyOQM/HMD/8wGzwY9SSGWUZy7xo5k5h2J5MxgR6tgompolGYgP47+V6/rvItAE+w7OsTE4z@vger.kernel.org
X-Gm-Message-State: AOJu0YxN4JgdYEKjrcetBru+0motME/bLP7X8QdKtpoWIX8SdWFcFZ5n
	MB9OaQURF8+n+sP2eaMF9snlQHPY05RXGJ1KLWHy00leeFpdrJDFB4/lfSJoiHlqCr1WEo7c9jV
	iebZRpOWiaoJpayaZqtL1m3rUGWfa62Whpp5REuklhhAHib+M9/HfI552EEnMQIrN
X-Gm-Gg: ASbGncvimyvOhYYgtatrWZLbl+1EgXHJRcNjMads396WVgbEjI7sZbiMIcjjOr6oIsP
	0M8DVTcFzliZwJRLgBebreUqhY3IyHrw5vTqMPHxfzpVgwu0MKqES3O8PqyNLaGTJCBEJBqAEU/
	Sz+OUqJ+kQAc4zOzBMvHwrEva9OCf29HTO03DXu23Z6Nlkb2KMz5hy0/qcCjXCPMTQNyWcxjgBz
	VLVfg0Oj43MDVCtd7RAdYYlq6kZ4u1ywOrMsJJr8Tb5KwhAAgUVmZDtOjUK4SKXZMbF35zL6XmK
	Ip0AmYPOHnVWdD5FHjWFQNKLw445r5fvPAnRDOzkjaBNmsojktk2uzfHk490IxIDcsE8hDiKgn/
	EqNfrANsWJ+qJCWANt+nt
X-Received: by 2002:a05:6a20:7d9e:b0:243:78a:82c2 with SMTP id adf61e73a8af0-24340dafb84mr3496883637.60.1755858620415;
        Fri, 22 Aug 2025 03:30:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH9UES8ED+cVPXc5NWnC+wayYDGQg0OQaM2qTYYN4XoyrxVTdh+n1/tYchJ9/zAVN44IosS4w==
X-Received: by 2002:a05:6a20:7d9e:b0:243:78a:82c2 with SMTP id adf61e73a8af0-24340dafb84mr3496841637.60.1755858619984;
        Fri, 22 Aug 2025 03:30:19 -0700 (PDT)
Received: from jiegan.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b4763fec0e9sm6825196a12.24.2025.08.22.03.30.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 03:30:19 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlmao.mao@oss.qualcomm.com>,
        Tao Zhang <quic_taozha@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/3] dt-bindings: arm: document the static TPDM compatible
Date: Fri, 22 Aug 2025 18:30:06 +0800
Message-Id: <20250822103008.1029-2-jie.gan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250822103008.1029-1-jie.gan@oss.qualcomm.com>
References: <20250822103008.1029-1-jie.gan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=ZJKOWX7b c=1 sm=1 tr=0 ts=68a846bd cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=5Z_N_GBq0btHVWfAyk4A:9
 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-ORIG-GUID: dpryKB6a3FlBUasYYNBfth7bimt6VDWA
X-Proofpoint-GUID: dpryKB6a3FlBUasYYNBfth7bimt6VDWA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX/z69QvGIdUkr
 sGwEBVfLCNKNoQHbzJC4jjJJwOz+fDn4bJhw+wwx/58BFk8GSMZd1w19GWzry+O8whKkT5PL+V8
 JCKA6RWfxWwOjMw4ztC72wniNNNDuSW8Q16cX27ORvz0kHhhkz1o6SqpGfvipx4Y+p5zNIjNgcK
 DYvabCMlxLZdcFddxBDX8eZ7/mBu/hh6drzlQzjB7xlqRAUAFc9wkQhEkbi7hMFGIznsUWY4ifB
 wF2S2weiZwGnDVRgAEHXl0+d3qwx4GYAaPxqL5XV3PuC5Ys3sCspSQPcHkHbPX9aArvy2VNtnSn
 A3lq4i1vLP9OLD321PcvTS5I9GMl8jIw/dciumcJHA+6mv20Dqu1OmG02Xpe1jtRetQEqiDivUM
 aDMaBPsnMTs0EVD+ndYpguzNyVaJBg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_03,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 malwarescore=0 adultscore=0 suspectscore=0
 lowpriorityscore=0 impostorscore=0 phishscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013

The static TPDM device is intended for sources that do not require MMIO
mapping. Its compatible string should be documented clearly, along with
an example illustrating how to define a static TPDM node in the DT.

Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 .../bindings/arm/qcom,coresight-tpdm.yaml     | 23 ++++++++++++++++---
 1 file changed, 20 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/qcom,coresight-tpdm.yaml b/Documentation/devicetree/bindings/arm/qcom,coresight-tpdm.yaml
index 07d21a3617f5..7c0acc1f25c5 100644
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
@@ -143,4 +146,18 @@ examples:
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


