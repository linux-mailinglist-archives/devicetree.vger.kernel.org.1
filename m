Return-Path: <devicetree+bounces-221169-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF60B9D9DB
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 08:32:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C24C93B5314
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 06:32:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88E602ECEA3;
	Thu, 25 Sep 2025 06:29:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="F9LeXD90"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E46F32EC568
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:29:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758781788; cv=none; b=REhSZz0/8ZSfU2iY8pGHDbwoXVCy0m7tKcIV0orFiSpu4IbOx0yS9UCqdCj9TlbpLiR96LN/G1fcy11rLMHoQXeA7j57BspJ44yAmebYPH7u767hXYP2vYvfBICadkqk5P91WFsig60O49RUq5s4nwRE5604g3x47H/Ncz9Nf30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758781788; c=relaxed/simple;
	bh=yedJEEqL4ZUtTo4ypXp6TiEKX/zqnJ9N75AqBUCVR0M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=i+x5QfmN3hHM1i1ZJmniJksn5JTJ38BGPNBAvMOd7/oAxlKpSzFCiyJT4VznrUtxYNV38knU1P7qXxVDqmUexmdNMrEAkyovVTR9/6iMM1owcmBhPyMhrI3QbFHXgEnO+IFxt6HazhjUcAl8NgkxtDioYAdwjhx+8+TMuQf0uYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=F9LeXD90; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0t1ji019945
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:29:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	M+AtpvCg1CmpAe9sYGyWQJouaSiovRLjPzDEo50wF9Y=; b=F9LeXD906u/wjUQ8
	eBiHfssonfeEkGphJ5NkU+SnNgnJLb0Yb4vtRMDdsnt50U1FCVn2aEd3WyfF/srQ
	wAQhk7e6UxPKuksf83DaSCw/VkJ+OuWcfd3hRTq9w3mfnbpOf57A7OZnFssETAHk
	M3Lf6xeH6PoTZL4mS+HW4zsLcOdLvQ3V1iDfr6SQ69cqpn9QvKodDyfztq4IcEuB
	SIFeh11L10ldsqsNj1EbYaW08CY/K6QGsccnWYql4ee9qi2VTQuCzAGUp2fNaGii
	1bvfSdG8qSSeAxBf4lm5pGA7M6AXm4uKhBEgW2tMbH9Zll0uUTrQmcF0oqt5V9Zh
	316MaQ==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bjpe08ev-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:29:46 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-77ec1f25fedso1063057b3a.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:29:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758781785; x=1759386585;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M+AtpvCg1CmpAe9sYGyWQJouaSiovRLjPzDEo50wF9Y=;
        b=Cjxz8NnmgfQkjAsPsYsxKlWODWqjEKzra1Y56/DbnTrPPY00XB6Kzc40rIWRFq/o71
         +HJvgYeXHit9iNHbKLKu8fQz1akj8DRRRUdWVzzjKjXIIDQttgs+OhcNc8PzabAEwL/I
         Nd+XgvNzrbEcm8kxnJvKvCCPuHdoCTspkNy2vmFZenp3RXsa5fKVjYeZVtbjupN9tvXK
         GlinQanFV4pDYpIhUXa4QrldHcs5srbldnKI3WDmfdP42xbaru3mTm2eNam9dL3HrLRS
         0E8bJ4Kv8OEJkMa+/AQg/eQWu2hSe08jQBZYlG0UIQhVodXGzfLoC/S6EdCS4mwwaIqq
         TGxg==
X-Forwarded-Encrypted: i=1; AJvYcCXH9i6XHWDKVvxiX82KkomnW1HWwZdwvZWZZG4XKzRUr46F97j0WISYesq5FebKvRpQGGXP9q1Y/Pxt@vger.kernel.org
X-Gm-Message-State: AOJu0YxPrJuXCqVhoUglf1eNuLiC7Cg6QjZU5kTQtv2Bzlh/7sg+ihiF
	X2m8vD+Z4nZ8ujnCPDXaIiJqcaLO2CRyWWEvUySfHZbcXQLKIXa7zFhdCEW3HfyyzuQ86Id5wcN
	BNdhOwiN2FPrXxaNUi1Esh0kxXwJeLtHzHRWJeoRJc86sV61Hl5HJAxvFQ66cRftM
X-Gm-Gg: ASbGncsV9AuERjXiwrLxuFKjPVKyTHSrm6QG9vQGyUSkqTE6R3Ca/ee4sUzgyuizRUI
	oMByaMtr09C9b5My9WxOV3U2J19PGfr8ua5/7cN4OpJ/AEyL6Qbjpn0P0EjE0ekLQaePYkReFQ7
	vZESo1tV1f7T+9iVk7D9Cwx1AXcRfFkYcBsivBU1OYieOGsGYonuP8PtWo4wa4I0HVYqo5g95OG
	LKhIJwhH2D/F+yqfI/u9hYz8+KEPTq9oIIJrLS7ylJp3yQu7chtxSHVOhaXPA1fA+xye7He7Y4Y
	f/DMzuLA6iMXE0/EIIFN17AyWMVKvfMke6mTAUiHmSJjtRbI1p5i3xh+rGg8MpE/mpaUD1ELHmH
	rxvsU4e+btib19RIz/k6HbFXahK3jT9Ni5Uy/JJpA2G1yaplQAikJqvCaWyUp
X-Received: by 2002:a05:6a00:2290:b0:77e:d2f7:f2fb with SMTP id d2e1a72fcca58-780fcee1bc7mr2232454b3a.23.1758781785198;
        Wed, 24 Sep 2025 23:29:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF3OmDcicH/EzzZH4H0pemOdU65gxLkrQqE4Ny7buYCJovyC253xgahgRiTwAHjEjzY0LZoXQ==
X-Received: by 2002:a05:6a00:2290:b0:77e:d2f7:f2fb with SMTP id d2e1a72fcca58-780fcee1bc7mr2232436b3a.23.1758781784763;
        Wed, 24 Sep 2025 23:29:44 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7810239136dsm952962b3a.5.2025.09.24.23.29.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 23:29:44 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 11:58:21 +0530
Subject: [PATCH v2 15/24] arm64: dts: qcom: glymur: Add PMICs dtsi for CRD
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-v3_glymur_introduction-v2-15-8e1533a58d2d@oss.qualcomm.com>
References: <20250925-v3_glymur_introduction-v2-0-8e1533a58d2d@oss.qualcomm.com>
In-Reply-To: <20250925-v3_glymur_introduction-v2-0-8e1533a58d2d@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-ORIG-GUID: kL0t6MhR_BHqMfJ22vLxyJDwLNwfVw6l
X-Authority-Analysis: v=2.4 cv=Pc//hjhd c=1 sm=1 tr=0 ts=68d4e15a cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=-PhwRXPgPXS4kyLjRL8A:9
 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-GUID: kL0t6MhR_BHqMfJ22vLxyJDwLNwfVw6l
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAyMCBTYWx0ZWRfX98kngbVyJkjW
 GJ0THTKPQ8zTD6baHe36doRlC8UcsWynxxLQ9l8MvSgEU57Bp46PdYFdd4M7eTsSSPN81VD7XFN
 LaD7jHVopk2n74nHj0YELXnAV1LTLhIMVV6SrclbwYArlNRELVSx23tUYRXZ8qpXJcMknQVhOEG
 OrBnqKJMe/mC1JJkfJPd7EaHq96xeWob9967XvBxi6TWolW7X+6eD4AhHXrjr1TVy7i7MeaU1w2
 6aQl4byDMPpmdoWKcqmv0U/9SARXFE/k/skrNTSS5DZN7N9FEaPMnlLMNUkaxjgsBnv/hHyfzWD
 6DDBEmEowx4x6lLfzZVCNqE6yN/qzdJGcLRbLVcFy44Jc37vPk3IEx28C/0N6vSykGjIZTumCmU
 iLfLYYOL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 malwarescore=0 impostorscore=0
 spamscore=0 suspectscore=0 clxscore=1015 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509230020

From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>

Include all the PMICs present on the Glymur board into
the glymur CRD DTS file.

Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur-crd.dts    |  1 +
 arch/arm64/boot/dts/qcom/glymur-pmics.dtsi | 19 +++++++++++++++++++
 2 files changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
index e89b81dcb4f47b78307fa3ab6831657cf6491c89..97f6eedd7222368f5cbfdd02e9c4d87261d7f19a 100644
--- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
+++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
@@ -6,6 +6,7 @@
 /dts-v1/;
 
 #include "glymur.dtsi"
+#include "glymur-pmics.dtsi"
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
 
 / {
diff --git a/arch/arm64/boot/dts/qcom/glymur-pmics.dtsi b/arch/arm64/boot/dts/qcom/glymur-pmics.dtsi
new file mode 100644
index 0000000000000000000000000000000000000000..59dcfb67a203a7c576406037377fc9fbdce51a97
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/glymur-pmics.dtsi
@@ -0,0 +1,19 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#define PMH0110_F_E0	0x5
+#define PMH0110_H_E0	0x7
+#define PMH0104_I_E0	0x8
+#define PMH0104_J_E0	0x9
+
+#define PMH0110_F_E1	0x5
+#define PMH0104_L_E1	0xb
+
+#include "pmk8850.dtsi"	/* SPMI0: SID-0*/
+#include "pmh0101.dtsi"	/* SPMI0: SID-1*/
+#include "pmcx0102.dtsi"	/* SPMI0: SID-2/3/4/6	SPMI1: SID-2/3/4 */
+#include "pmh0110.dtsi"	/* SPMI0: SID-5/7	SPMI1: SID-5	*/
+#include "pmh0104.dtsi"	/* SPMI0: SID-8/9	SPMI1: SID-11	*/
+#include "smb2370.dtsi"	/* SPMI2: SID-9/10/11*/

-- 
2.34.1


