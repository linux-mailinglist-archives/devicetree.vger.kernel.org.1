Return-Path: <devicetree+bounces-214101-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F22AB4826E
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 04:04:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D48623BE0C2
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 02:04:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DAE022258C;
	Mon,  8 Sep 2025 02:03:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nSLTumgV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E0CA21CA0E
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 02:02:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757296980; cv=none; b=D9mkzkWGWHwplt0rOWzfelXst+7ldH+ezbCP+z6eBlEP3gTWZku8je6aUhD6qiGT64fK5Qwjho/3u84wCKTDEjS13N6f2+d9zeCAXBMUgerYmbxt25boqpiq4fgnPh1hBIgVvKZs8x0n2EbbOZ7lxd2W3i8OzCYzZFE+mXnnszg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757296980; c=relaxed/simple;
	bh=7Lmwt8RPe9FYwcCsZot55MuF3UiAhcsArLukTTIDuFQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UtsYhSkeiREtGGr6XqImo//G6gjxyV8E5qNITSqlb/VIuy4T1IyC9MfvKZ1vjUgRKA1d7yFZGCVqQt/uziaXev6zev9YpCr/cooyl0Q/j6RKsjF/wtGeK2jnTIQbQGd/uXRbQ4RIwXMdYAHDYj1dnXWir2C0dyNVpg2SerCZ9wc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nSLTumgV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 587MxUAk006860
	for <devicetree@vger.kernel.org>; Mon, 8 Sep 2025 02:02:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DShGhrjrqskk81shUEZqzaXPQnfD8BZ/czBlA9gz3OA=; b=nSLTumgVqQrTMDgw
	v2vrZb3bewD4HnzT8mf+QH+dTwiawtd8HWCq+n3HNFzzpqWhx4iUeGenxynk/Ysa
	b18YxHQyP0SCVuOjgrkV6EfA97WpFjexFI8uQhvntY3BHnt60J+HEgZTQFsd1uj0
	HNIbxcXmCt7fg5Xlt+eU2fG49g8RNAKf+qftRnE+2ylF/4C6FXObsI8HprGyJFKv
	8KUkgNy+7+onpdvLswb77mdhsn9JK4OJ99iaPzVW8pU7sYDS5Vy+uu4e6AJn9kXs
	tJRkkhB6JSzhYpnwzRLsDSengoVSA8OdNXKNE5VBhCVVhegT/UT49llSzW8n3huX
	i/Ix3Q==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490db8awva-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 02:02:57 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7723d779674so3445970b3a.3
        for <devicetree@vger.kernel.org>; Sun, 07 Sep 2025 19:02:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757296976; x=1757901776;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DShGhrjrqskk81shUEZqzaXPQnfD8BZ/czBlA9gz3OA=;
        b=MenxKPL/z5uUMbghIsjYsQWVobxphVmWbd5XCtI5cgAtLw7hdB1/EvbKbjDlFfumyX
         ELv5lMDuUnp7Wa7IGeLEkjh2ydH5Ki0NffLq88QYq04npRFSIo51lPfg9jPWC7J0XfzV
         QYc+9Aa5fmbV+rnErlne+ADqiuMh3A6J6a/BPY9LHXmraG/K+zgikPTYfZG/BRxVNH6P
         qhmaE6PR5DFBXWi5TfiqgxUOYFUkxVYAPcTePQz4fD/9MHqnbSzU5+f8+fKcZvdwUDZ7
         tEIpLvsYGv8FyZaiWhUIhmuF2V8PHJg6KTEp45XqvH8vbcVfpZfJYz0aTuofySeVxGBY
         96ZQ==
X-Forwarded-Encrypted: i=1; AJvYcCW4P0k79LRuORQp02C2jd6kNYZo0CgtKnH47yToDoLeQUuXEjHF+pDumHJKN8M2j5N95I0j8NxB52c6@vger.kernel.org
X-Gm-Message-State: AOJu0YyvdKzHc0xfVUe68z6tlyR2Ii9IaY8Xw20ieGt5PQZry23y0I5m
	PnDBTZNy96qjucREbGGTTqEFdYxiFtjWtwSx6PP0TfpdXAQ8HRwCJzK296Nh0siNDPW6WK10lzs
	0OesPXW3GAYbN8zhnMLaDsX+RfSzO5P62UNYmSu/uq2wTurt85L+YosUWirAN/6cN
X-Gm-Gg: ASbGncuO1CUi7nThmO7O7NeoSpuahMipmyr1HNnqDbxaWlBrskw+I1bRaTJjCNNaLxV
	1ymuP+CRP1spyeQwOrz8HUAtgiwlj83ZwZ718XmiuMaldnK1e2AKVEycP1obAlnwVNugEH1aahD
	8BXmQoBwLs91NwtSQCuZDJ+N2kPa8XLcw2iurUZ3M4kBNyBC7uEfzCTobG2rn147puZ8abD0hKr
	anUhcF95gqHymdOTr+D4daJefB1BWSGkzoYWkEDu+p/QDFqVREkDHjMPlBbEbSKq0wgbS3Bihvg
	Rjb/VIpsQbI+tB+PXwgMpWdnS/FO1DMbac5FGSf3LPK0lBYjkhqc+6TbqwvPUzmomdWfKqO8a0m
	avBh7VLjMtcsbkqsgv6VHrYcmmYU=
X-Received: by 2002:a05:6a00:2316:b0:772:4759:e45d with SMTP id d2e1a72fcca58-7742de8f0e6mr7749328b3a.22.1757296976269;
        Sun, 07 Sep 2025 19:02:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE21drREBfGZ25w/CVQp8dbwRMeZLBum3GOWYMesmkAgDZBajK5madzZ26jtZiz8XqCEaW0eQ==
X-Received: by 2002:a05:6a00:2316:b0:772:4759:e45d with SMTP id d2e1a72fcca58-7742de8f0e6mr7749285b3a.22.1757296975797;
        Sun, 07 Sep 2025 19:02:55 -0700 (PDT)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7723f4858e6sm24285076b3a.4.2025.09.07.19.02.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Sep 2025 19:02:55 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Mon, 08 Sep 2025 10:01:58 +0800
Subject: [PATCH v6 6/9] dt-bindings: arm: add an interrupt property for
 Coresight CTCU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250908-enable-byte-cntr-for-tmc-v6-6-1db9e621441a@oss.qualcomm.com>
References: <20250908-enable-byte-cntr-for-tmc-v6-0-1db9e621441a@oss.qualcomm.com>
In-Reply-To: <20250908-enable-byte-cntr-for-tmc-v6-0-1db9e621441a@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Jinlong Mao <jinlong.mao@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757296940; l=1804;
 i=jie.gan@oss.qualcomm.com; s=20240927; h=from:subject:message-id;
 bh=7Lmwt8RPe9FYwcCsZot55MuF3UiAhcsArLukTTIDuFQ=;
 b=Dc6xN4+sy4FfyxjirI9U0M08+G8323SeEKPga96f9sV/F8cXG2ByJ9zM6mCw+w7GwLgMMn9ph
 uC0Q5GaMEQID8V3WMgEL8/BG4NUAMYkDXV5bzZFjrl78oC4ClcU6zkb
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=OZh7JyRifqJh4xmrcGgmwa8/LCS8O11Q+mtx4aZGmi4=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzMSBTYWx0ZWRfX2uADTtWZHuQL
 e3OB8+K387jR8M2436FQOcy7ITveZ96TlcVKK7ILn34DGYtXfilithIAEbAjSuqYLhRLg+ytkaL
 3XZHKWnLsZNdSQz6RFpN7jtiOAMif1IRZhwssSUYDJN3l5D6BtXcWHIXV50tbqppAwVa06IFnNs
 9oXngIC2AqazZEPtoy8ALtax9BBVsQ3SMpm3CCzC28tT43V4atejnoQ5iINcNOMe8piE89Alysj
 yCNvGJrk3ycKeJvAi5JYnfjT7q7LHzdGTya5O5vu8smbLn1dtvN1xARaHqZrZ6/bNCIsnI09Kp9
 BW0GOQupMOguBvYn0N8CZU9Hr1+rWZ+O22CMm1uz4y1zuOdLtRVbl1K3OKb/pg2J3g108qUC6gk
 MzNon2GV
X-Proofpoint-ORIG-GUID: pzyxGRZhdd0xeh_lToE-_8iZGyher7pU
X-Proofpoint-GUID: pzyxGRZhdd0xeh_lToE-_8iZGyher7pU
X-Authority-Analysis: v=2.4 cv=VIDdn8PX c=1 sm=1 tr=0 ts=68be3951 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=gSyxy6DGYGa4b6s9XCEA:9 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-07_10,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 spamscore=0 suspectscore=0 bulkscore=0
 phishscore=0 adultscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060031

Add an interrupt property to CTCU device. The interrupt will be triggered
when the data size in the ETR buffer exceeds the threshold of the
BYTECNTRVAL register. Programming a threshold in the BYTECNTRVAL register
of CTCU device will enable the interrupt.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 .../devicetree/bindings/arm/qcom,coresight-ctcu.yaml    | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml b/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
index 843b52eaf872..ea05ad8f3dd3 100644
--- a/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
@@ -39,6 +39,16 @@ properties:
     items:
       - const: apb
 
+  interrupts:
+    items:
+      - description: Byte cntr interrupt for etr0
+      - description: Byte cntr interrupt for etr1
+
+  interrupt-names:
+    items:
+      - const: etr0
+      - const: etr1
+
   in-ports:
     $ref: /schemas/graph.yaml#/properties/ports
 
@@ -56,6 +66,8 @@ additionalProperties: false
 
 examples:
   - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
     ctcu@1001000 {
         compatible = "qcom,sa8775p-ctcu";
         reg = <0x1001000 0x1000>;
@@ -63,6 +75,11 @@ examples:
         clocks = <&aoss_qmp>;
         clock-names = "apb";
 
+        interrupts = <GIC_SPI 270 IRQ_TYPE_EDGE_RISING>,
+                     <GIC_SPI 262 IRQ_TYPE_EDGE_RISING>;
+        interrupt-names = "etr0",
+                          "etr1";
+
         in-ports {
             #address-cells = <1>;
             #size-cells = <0>;

-- 
2.34.1


