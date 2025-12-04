Return-Path: <devicetree+bounces-244335-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BE341CA3D29
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 14:32:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 23AC4300BFB7
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 13:32:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6923534676D;
	Thu,  4 Dec 2025 13:23:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IqrXyyGq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UE9RO6TP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E72FC345CD6
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 13:23:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764854589; cv=none; b=Y6AOgbH8Breo3FsMgbW1M6VNPqJ4wIGJwMXYDutO5RwNurnxsqbrwfJyCOqWc/EUykpZZMnFDcteQ1M73TnpPOGkrMmANd3ALwiSHMr9W2qMPOply0s9vfCwDI/yvaGAaBAmzLxkjCSxL/d06ktG+ck2qgKPpxUwNI2u+9Ejba0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764854589; c=relaxed/simple;
	bh=6qfXL/6d5QJsDYPIqney7syG5ciAf6tfNFKjzbNady4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=a0AN7RiEI8X5BvLkAlysleA58cCXVtGusceyo4D07y5U3jQqeFpDy8X5eKHh9ScILJ+Wp8wbTmLhDZnfVP5GFDCh0eowH5gtqnwQI+Je0bfcA+/9mWXW4sHqp4c4QE+rsNg1a1VYUstnEfQATXtXmfVEhVMhp1+pKczsmA2OImI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IqrXyyGq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UE9RO6TP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B4AEsed1358039
	for <devicetree@vger.kernel.org>; Thu, 4 Dec 2025 13:23:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aTXEd8wP5LDpChD5fpPo8u1L1sTd9Z0jeas5ixGhjy8=; b=IqrXyyGqkxwzt4Ju
	N0ZndfMcfseKRzpl1K2/6RCNx6PIvF/J6kxfEahlF+yZUMDBgBPWgClFY54nPxkw
	Nr8QBBztYhsuZ62ETwcXMaM05Hzda7uj3gUAk/X5HHhyB5K2BH6w8p5m9STU5oKk
	bNtXWuuoztKgj/N9P9syemKiTxqoi1RKKb3CKSSiDoK4fY+lvStrJyJ9Rr1IsCoX
	MGBaw8WCwW1d4WSqIdqgT0TuUgcJaCQ6eOA8r+oPemX6IgYeEapz+ExakTBz4tVC
	nepZJIK4cX5f9LwcfGWBPHVECu8D7OhHNHMmihzvRXkuE7qovCpt9kOId9Qpr2fF
	KFyM1g==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4au5yc123t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 13:23:04 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3493fe3185cso1309057a91.1
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 05:23:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764854583; x=1765459383; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aTXEd8wP5LDpChD5fpPo8u1L1sTd9Z0jeas5ixGhjy8=;
        b=UE9RO6TPDteaIkFaWeYwAgtvvemex7KhEeK849BBtaTfqMwnBaUxku6MVaycJsuuuC
         C9Kh/3pOrqIKxDHBF0Vw2+CzLDYJi10up0Cj7Elbj7DA7G7AGAptv/G0Ar3TAbRIHI1q
         ZiJaRCyjItBnUrryYzCGxuR58DKmyrQfCy9E8BNKRySoYC09Y9tPpKoa/wWoOQIkeatN
         4X2LHlUtv2mi1ggAjAGUIIlDcfA0lXVGdBAy0v7iSMUC5gX8HYtoiG98pv+evdo3Ovyg
         zxQ4cdOLvmMHgmFNe15gPEVs1sfW2jg4KrkeQp2MdQRPAtVi3Wf9lKyhRa1C0EmbGsgE
         PvIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764854583; x=1765459383;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=aTXEd8wP5LDpChD5fpPo8u1L1sTd9Z0jeas5ixGhjy8=;
        b=hkvmOUyYiTnZb1+Kl6asIIhY+PIdjSlqvRN8u7KgA9tRBv3CozsT4gpRRdk6/b+P74
         91H+5LArDyXxYCRVn28aGKUa5vG92PHzYmA857zyjHTt5xmRGfCNzIJU83QianPxgEMr
         72nyfnpvcDFGxYi6zRaHHRnpi2EJOYPnDzWUVkZ6GQDo3q9c4ggrGofDlBFCsijPBOmp
         F/Hox6Pmuz688XOIN42M+lyXktwfR3H5YVFR95Yq6xlrOnVffkqMuuacDd7sH2LA7TGI
         RXkJ7KpVuf17MBtwKnln+gmWcpfBb4+HRO2c/rQlAgPE89RF3nbVtfU6pKiLakaNy1PD
         U0wQ==
X-Forwarded-Encrypted: i=1; AJvYcCW8fcnW2OWaGCPLGJR9r0QbnCLlIT1OQt5RHFlE1mdGs0jDIBh+YhA5m5A4EudJS1gu9QoapSU+mejt@vger.kernel.org
X-Gm-Message-State: AOJu0YyKPF+gB7mFjvLWfPUEUc8hAQEAYScd1Grp/MQ3T4acBxcAllDj
	7ddpkscq3XPeuCf3U3mfT17TfmvmQX9nj/XQmjwmMSpsUE4Eg6Hcy8op1m8875nrU5xpcodZC4P
	NjbYfmBtr7yoSy0x6EHxzo09G5rUqqsoT6Xh/AnVIYdF7+fHLSke9JnnG0qz7QAns
X-Gm-Gg: ASbGncuh/YaelwGtsjCxuq4MyxHORr2+EheNsxKnw1Y9ndympRgKyQGuZ2CqgM1q8GN
	jPvdpAfo/OzNijuzSLE4/umsoGfR5AT95Nh4D1HcA938opvb+Ul2a87f3JUftPXVZm5d1Jz721P
	3hT9KNKwcypMr3h1czQVnA6HoAULhuLkKlWD/SwpQWocgQgiVauQbwBlRRZVD2gAcDXIIxjHgf4
	hviuVNodW7UUg8l8x7yC9STpiGr2abEE0k87iO5oUWk8A+YqujiutVFPcO9B5E4jR95kdInWsid
	Cnvl4ws16cRk+ilw3PFcaM43I+JF4AXgljUyqzdkckKJjx5snUSa+NeQtpW6FxLBuopUqkWjrJT
	huBZFrnYWiR+vmWgwFJLhXEeu0ga2klBBbw==
X-Received: by 2002:a17:90b:4b8e:b0:32e:3592:581a with SMTP id 98e67ed59e1d1-349438bdb29mr3230117a91.17.1764854583357;
        Thu, 04 Dec 2025 05:23:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHn4JZgnbcDINjtOA7+dnAJ8EBm0g3g2oNvPSaAR4vbKS8svkkxZZyc6KCVwyRlizMUdZaVMA==
X-Received: by 2002:a17:90b:4b8e:b0:32e:3592:581a with SMTP id 98e67ed59e1d1-349438bdb29mr3230093a91.17.1764854582867;
        Thu, 04 Dec 2025 05:23:02 -0800 (PST)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3494f38a18csm1914740a91.1.2025.12.04.05.22.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Dec 2025 05:23:02 -0800 (PST)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Thu, 04 Dec 2025 18:51:59 +0530
Subject: [PATCH v4 7/8] arm64: dts: qcom: talos: Add GPU cooling
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251204-qcs615-spin-2-v4-7-f5a00c5b663f@oss.qualcomm.com>
References: <20251204-qcs615-spin-2-v4-0-f5a00c5b663f@oss.qualcomm.com>
In-Reply-To: <20251204-qcs615-spin-2-v4-0-f5a00c5b663f@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Cc: Dan Carpenter <dan.carpenter@linaro.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Jie Zhang <jie.zhang@oss.qualcomm.com>,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764854530; l=1441;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=IH4I7WgYz+SJJ76MCxNVByrZLxMvwBXKq41j5sQdwN4=;
 b=d27ZngPAgX4XvtvRb01eTZZlP1aPV4sfV6opmYoqiirXrpN2hXPSTpqcGHopZAK/DSlAOuSWJ
 e3FMup4mnZUDI4x8bpQUOsw5I8blQeGBrzOxvSB3fhjkr2wsSnStFQi
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Authority-Analysis: v=2.4 cv=QstTHFyd c=1 sm=1 tr=0 ts=69318b38 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=doS3iEISOceegCkkCwMA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: 6m2M90Ieh4e2_-gYk6YDp3Xdcndidn7x
X-Proofpoint-GUID: 6m2M90Ieh4e2_-gYk6YDp3Xdcndidn7x
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDEwOCBTYWx0ZWRfX5Rj6NdNJJKvL
 WHoNa8z7xxQ++wlSnuqc9m1nZE4Di0jnlWazKIg5dwyGO6rU66TcZR/P/vg/cWe8o+FwLaQ/4Ki
 WGenlkBKgH3sdmjhsyEMkMkZRXbI40b2qLKlxaBvWcwACvs5aDgudJ1zcogz/rWxckW2m980bZx
 pec6XsHkTTA8m0dOTYz4oVw9E4+PIaPx1EwajwB9u4ceEIm1v7L7wvcVX2M3NYQg4Xp6tnOCsVs
 GG7pgfCk9f+x0mRjwMPVtJ252842/4W10C9otU3yMuON4Y4iGzsA7bVE49BqD+yn1nFqbxvW0z7
 VRwMHFmDERa9VcHKBIXZi/HAgw7XfJEe+u6O9KWphl3ahfWgLMaWXAyoynKyZ8+ubwCW2ub1iP1
 HJcxkkxdyKor7+rB+pQRxK995LhdZw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_03,2025-12-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 priorityscore=1501 adultscore=0 bulkscore=0
 clxscore=1015 lowpriorityscore=0 phishscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512040108

From: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>

Unlike the CPU, the GPU does not throttle its speed automatically when it
reaches high temperatures.

Set up GPU cooling by throttling the GPU speed when it reaches 105°C.

Signed-off-by: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/talos.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
index effaff88df83d5e6a0aab45a2732a00cae11e83e..7c2866122f9a13b8572fd9e6fa9d336176765000 100644
--- a/arch/arm64/boot/dts/qcom/talos.dtsi
+++ b/arch/arm64/boot/dts/qcom/talos.dtsi
@@ -18,6 +18,7 @@
 #include <dt-bindings/power/qcom-rpmpd.h>
 #include <dt-bindings/power/qcom,rpmhpd.h>
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
+#include <dt-bindings/thermal/thermal.h>
 
 / {
 	interrupt-parent = <&intc>;
@@ -4844,12 +4845,25 @@ gpu-thermal {
 			thermal-sensors = <&tsens0 9>;
 
 			trips {
+				gpu_alert0: trip-point0 {
+					temperature = <105000>;
+					hysteresis = <5000>;
+					type = "passive";
+				};
+
 				gpu-critical {
 					temperature = <115000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
 			};
+
+			cooling-maps {
+				map0 {
+					trip = <&gpu_alert0>;
+					cooling-device = <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
 		};
 
 		q6-hvx-thermal {

-- 
2.51.0


