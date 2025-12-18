Return-Path: <devicetree+bounces-247720-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 84125CCAD19
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 09:14:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 47639305F380
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 08:10:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D4312EFDA2;
	Thu, 18 Dec 2025 08:10:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jpWH7FEk";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="i26+xcMd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A41A22EBBAF
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 08:10:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766045446; cv=none; b=SGnzpWkskLadzLuKfM2vMBSCfpGLw7/vDl8tESwXhnx7PeESPNgO90z42ZV9ZOz74zBInrZUw6u2bvxmZBtfAm8ClLhL8YwMmzEV0rbR7SXX5wCwYeP9Y/zxwTEe8eeevkU4qP5rxjsvtdQChAlcawBIjmR/f0V0vlJtrIFxfSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766045446; c=relaxed/simple;
	bh=+Jqa7JFXnLG9afqUMCpYAS5qCe7jJ7CCqJKnko2EM/E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=q9a4ZXpf2myxqugNl7uzVdwaAgeXnA9kSrbxzG0kBR/IamWpnhZ4La6wySDYng2yGjGuOj3cfFqGXe9cMOkCRcW42ZV+4EGPwA0MWT2/2uptYhKvCFbGpDlwcQnHGO5f89u66Ah8wacJUw0prSmoMth2utoY98B5TmeYAMhJGK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jpWH7FEk; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=i26+xcMd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BI1ZKMT529210
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 08:10:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZkTiNz3pyA9itoti44UzYuHhlxPS+xvrEI3POr+5XlQ=; b=jpWH7FEkZBBKoSVU
	rfj6cF9mfGDEP4D4j92omH7mz4SN688Vi+LkzPALhwHqiLIrnMpFZtMpM6loJogb
	52g6n+J1ZRuvsbO7d6/NNPqBjybATO5A4EqLq1+aYZNq4mHkNXmaMq+l/CX1XEXo
	hZ16pvxBOrHtfBajbBG2GMhgtFNkJ4BQj2k4pzqMzpviAePxv5i8tN4ZKQj/jCVk
	0QLwHRJWjSF078F7WLMG7siFhqKqzgVX2p3OQfAXdTm+Ztn+sL9FgaKAmeeM9XrI
	I6Fd6oOrK1vduAiPPBtIdOrEgj/1Y2kQN1yXupyFqki6/+8QK/rIq1xfo/jqEdo+
	ai+MIg==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b43mb1q62-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 08:10:42 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-bc240cdb249so401542a12.3
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 00:10:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766045442; x=1766650242; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZkTiNz3pyA9itoti44UzYuHhlxPS+xvrEI3POr+5XlQ=;
        b=i26+xcMdGNeqDR0sQjlMbSVpIIEcAZYa2o75pgCvteynW/9Sw89Ocu97Q90IB9o+QU
         /7PBsPGG6aCqf3PqaMYoyIi6sBE2RUplLqRqMEy9veFxS8DJzzg5eNYUUk6ipP7vWys9
         SkwpPFl4TIyWEeRoRktU9RioOL8opZXInAyTwhFliLGIiWLp/u2RDvd9Dv194Zfh94pn
         MqmAexlWkljIeBtT8OUIx9gRq/pwuLyj4sRb+EStLw3agSBH9rN7fWEFzpgle53PTzEk
         ONwXLtLjksiPf1wJ4EVfnB8I6atDdpUEP68snNlDnwRPWInkMF1S1qONeA6KTqeetZ1s
         volw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766045442; x=1766650242;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZkTiNz3pyA9itoti44UzYuHhlxPS+xvrEI3POr+5XlQ=;
        b=fuUSaJLOwxKK9S7kSmTPV1aQLkbjwQvYqDEmJv9FQTqdjpBsxb/zvEd0NUC/unq0cl
         fHkEg5bWFROKJJh6jzHxPCE3/mNUdNpp3s46jBwspRw6CWAhjVBdAkJUcZtoi+FxtRRJ
         Yc/SEzZBT9s09RV1++MbdTZ/+09+wqcj1UeWTzdGGTIwehm/zxoROt70B+MAb9WMpJfj
         uKqD22ELCHQ+NJy4h3oA0yEgaAC9D/vl84NGeeBvSqEmJ7wreftqsw/EYxMi1p0yLdtP
         /YvnjsZFV6bhV+2pSXmfTYtLoah0+3pl+gPk21L8IlTod+gT7KoiY3/JNcXOg8d8Xytj
         tTZw==
X-Forwarded-Encrypted: i=1; AJvYcCWN8PWyoKi1fbbv8MniMyABjw/pG2Mhlb4XBMaJYucSIi7JUh5XXjWr4BCVl5C8+nDzRlh9c0zMfkAc@vger.kernel.org
X-Gm-Message-State: AOJu0YwzIlAaHMgp1F4Ki8wYlYoEAsqUV098PrV68zboVcpUkLl43g16
	poD36YRz7mO+ZVQPWExDxHEbL1c/dyfGPcky9MFa3Y0BEiTiHli6Ra+8wb/9yQENOTq+Vaq9s0L
	5w9ga0qLunkLagYS/++JX8F6BfVneMDKwV0aSekjiit0jpKxxc1dCuRuZV12kIwMn
X-Gm-Gg: AY/fxX6QVw9rZRYC1hOgV2A+ofWlWn79DPIY4jXxMzNosR89VyyfKvZVHW9Di4M6cwr
	8xnEnGzuUgzZsmYl1b+/bVjPUr1R/GT5ZGZ0rind0muDeM2ktGAhDswKGFakvI61YypGPFh4pi+
	UFbha1P6yN4JAJB8fxTmCzbhqL0iSt/4OYzwJH3oAVm0dfmH7JF1Yw0s0oT0kl1UICxHeLdvpSf
	+BwNMg6CHC+3QdcP8exNqz0RwE4y5zUFNrH3fCZWr1OXn/juju6TGtma3uy+kOs7tcZ8Ox5VnQA
	gZ00eO6IpUYWNK7lzGlkU6WNFg/TOvZSyeHGwDzD+eyTO+39SA0It6kZy4R2mqcGx+3qMUFmcu/
	UlRSlVO7N8Ral6T/S7jTvpq8XYDJXECivZeU+VsEFBYIRkDeesGhfYcJ5MhoMSpSy1JQ=
X-Received: by 2002:a05:693c:40d0:b0:2a4:4884:e03d with SMTP id 5a478bee46e88-2ac301fad99mr12556625eec.11.1766045441873;
        Thu, 18 Dec 2025 00:10:41 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFaDc+tdn8dz/1azt+99U8sha2Qy8hrm5AGs8FFige9H3qCjFhCgiFTf9zVCb1j5rvBRmpiLQ==
X-Received: by 2002:a05:693c:40d0:b0:2a4:4884:e03d with SMTP id 5a478bee46e88-2ac301fad99mr12556586eec.11.1766045441272;
        Thu, 18 Dec 2025 00:10:41 -0800 (PST)
Received: from hu-yuanfang-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b04e58d423sm2564824eec.6.2025.12.18.00.10.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 00:10:40 -0800 (PST)
From: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
Date: Thu, 18 Dec 2025 00:09:41 -0800
Subject: [PATCH v2 01/12] dt-bindings: arm: coresight: Add
 'qcom,cpu-bound-components' property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251218-cpu_cluster_component_pm-v2-1-2335a6ae62a0@oss.qualcomm.com>
References: <20251218-cpu_cluster_component_pm-v2-0-2335a6ae62a0@oss.qualcomm.com>
In-Reply-To: <20251218-cpu_cluster_component_pm-v2-0-2335a6ae62a0@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Leo Yan <leo.yan@linux.dev>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: kernel@oss.qualcomm.com, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>,
        maulik.shah@oss.qualcomm.com
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766045439; l=3052;
 i=yuanfang.zhang@oss.qualcomm.com; s=20250814; h=from:subject:message-id;
 bh=+Jqa7JFXnLG9afqUMCpYAS5qCe7jJ7CCqJKnko2EM/E=;
 b=QxzfOTMXLpA75RWYYuwBvLFwkh6xifOv2aAmFGxZ7X3aUgF6UJGRlSWV7WZkOOqFEveY2HRNN
 BZgiyJ9fG8+Bh902i2nsoVUOu33jThGzWU31j9n/CWl/Di2RwU1Bm8E
X-Developer-Key: i=yuanfang.zhang@oss.qualcomm.com; a=ed25519;
 pk=9oS/FoPW5k0CsqSDDrPlnV+kVIOUaAe0O5pr4M1wHgY=
X-Proofpoint-ORIG-GUID: ydB4HqFB3PQHznMoeifz3Uxk-S7Urmxs
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE4MDA2NiBTYWx0ZWRfX8b6WSkhl98sq
 5hKefSk5jdjiE9bfBMBAsKMYRzA6AIS9wAoFkkMcis6dyzrB8k7YG0BE+GIdyad3oRPPFBzaKfC
 1krXtQXlqy7dZTaZD948io8m15jBeV7kl5F1F8XCbxu/gENUuHRJIgFrHH74waIS+6p4Ir3jdcC
 7HMfiJr7TRFOd3T7uNp8Oi0iTi/rX0U9S8ojfdjFveETpTU6KSPzJRxraUo6yyRweOZq4fI3UeI
 43yMBDUYi0dyoQiMr7rJ6OllwTbtyI1P9MYjoBTriSnTLLxDEh2w5NozNOGPuDS0Z85ZxVuv3aH
 As0Aw4VGvdXYTkL4KA6d25pmB+JJfrmGOwCHklIX1dnDBPu5FQpUK5zAPEQJuP9qhBFyv9AxHDd
 vSPWNxEXDLdIYEwwJa93Yrww1yJYRg==
X-Authority-Analysis: v=2.4 cv=NPHYOk6g c=1 sm=1 tr=0 ts=6943b703 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=zthVEJJq2wqy0CFkTqIA:9
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-GUID: ydB4HqFB3PQHznMoeifz3Uxk-S7Urmxs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-18_01,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 suspectscore=0 phishscore=0 clxscore=1015
 bulkscore=0 impostorscore=0 adultscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512180066

Introduce the `qcom,cpu-bound-components` boolean property for CoreSight
components (TMC, Funnel, and Replicator).

This property indicates that the component is physically located within a
CPU cluster power domain. Such components share the power state of the
cluster and may require special handling (e.g., cross-CPU register
access) compared to system-wide components.

Signed-off-by: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
---
 .../devicetree/bindings/arm/arm,coresight-dynamic-funnel.yaml        | 5 +++++
 .../devicetree/bindings/arm/arm,coresight-dynamic-replicator.yaml    | 5 +++++
 Documentation/devicetree/bindings/arm/arm,coresight-tmc.yaml         | 5 +++++
 3 files changed, 15 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/arm,coresight-dynamic-funnel.yaml b/Documentation/devicetree/bindings/arm/arm,coresight-dynamic-funnel.yaml
index b74db15e5f8af2226b817f6af5f533b1bfc74736..a4c7333e8359da9035a9fed999ec99159e00a1d9 100644
--- a/Documentation/devicetree/bindings/arm/arm,coresight-dynamic-funnel.yaml
+++ b/Documentation/devicetree/bindings/arm/arm,coresight-dynamic-funnel.yaml
@@ -57,6 +57,11 @@ properties:
   power-domains:
     maxItems: 1
 
+  qcom,cpu-bound-components:
+    type: boolean
+    description:
+      Indicates whether the funnel is located physically within cpu cluster.
+
   label:
     description:
       Description of a coresight device.
diff --git a/Documentation/devicetree/bindings/arm/arm,coresight-dynamic-replicator.yaml b/Documentation/devicetree/bindings/arm/arm,coresight-dynamic-replicator.yaml
index 17ea936b796fd42bb885e539201276a11e91028c..2c6e78f02ed84d95bb4366e4c4bbd1b3953efa32 100644
--- a/Documentation/devicetree/bindings/arm/arm,coresight-dynamic-replicator.yaml
+++ b/Documentation/devicetree/bindings/arm/arm,coresight-dynamic-replicator.yaml
@@ -67,6 +67,11 @@ properties:
       Indicates that the replicator will lose register context when AMBA clock
       is removed which is observed in some replicator designs.
 
+  qcom,cpu-bound-components:
+    type: boolean
+    description:
+      Indicates whether the replicator is located physically within cpu cluster.
+
   in-ports:
     $ref: /schemas/graph.yaml#/properties/ports
     additionalProperties: false
diff --git a/Documentation/devicetree/bindings/arm/arm,coresight-tmc.yaml b/Documentation/devicetree/bindings/arm/arm,coresight-tmc.yaml
index 96dd5b5f771a39138df9adde0c9c9a6f5583d9da..8c4f2244a5c74dc8654892305025a4e6bccbce07 100644
--- a/Documentation/devicetree/bindings/arm/arm,coresight-tmc.yaml
+++ b/Documentation/devicetree/bindings/arm/arm,coresight-tmc.yaml
@@ -86,6 +86,11 @@ properties:
     $ref: /schemas/types.yaml#/definitions/uint32
     maximum: 15
 
+  qcom,cpu-bound-components:
+    type: boolean
+    description:
+      indicates whether the TMC-ETF is located physically within cpu cluster.
+
   in-ports:
     $ref: /schemas/graph.yaml#/properties/ports
     additionalProperties: false

-- 
2.34.1


