Return-Path: <devicetree+bounces-214566-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7774EB49A39
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 21:41:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6A22F1B225C0
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 19:41:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A6052C11E7;
	Mon,  8 Sep 2025 19:40:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WZ5ZIn3l"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBD5E2D3207
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 19:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757360437; cv=none; b=qxc2ZVCsebVYTAqBB/XOQjiF7hrgjXA8Pq+feeh+QFK13cio81IhRpB8KZPiWJcMn1iBu0MxPfbg/XbbgxaJ6WImGxiM8x9nu3s8C9YzYyBNp1iuxLrJLpCemp7xhBDyuBqZrW1SsCq6Q7iOUBQXdLXSjIuD2XYOLJ8B/QeD7N0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757360437; c=relaxed/simple;
	bh=f/liO0+ury+XRtstpVnQGmG1kTpZBd7a+7fYa4BE+Dc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=G4lg4PmoQBjddlQvCF24l36zXTc37cDAR8WRVFeYvAMfqZQnmvV0mKypP4YGwuzEY5Y2l8puXWiwY5ssc24KaWkRCk9S8fjDn57jRjnWoR7LWGR1UtgZxdBSOiJHhAaB/tyroV09kS/DaEzDS5j+fBK7HWW8PcPgKPPrF5xPgHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WZ5ZIn3l; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 588DkUpw004725
	for <devicetree@vger.kernel.org>; Mon, 8 Sep 2025 19:40:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TlQf7uI+N5nmhJzmx3D5G93mBC+iv1av/YTKYfSZVQM=; b=WZ5ZIn3l5GTRI9uN
	ru4PA799A8l8dxZvAf6oVvuJrlr0mF4YeSedHAdOSgE5gGgb2t8lFH+o11Sw6SxO
	f5X3HHY80+d/MvbjwRTWZKoWhzx5a2PVYKYrqi79+UcPFEtc+uY1CUssNvs2zqH2
	/swvDNFNxlI9OGjZBzMRpMlKmA1betwVyS7n8+9DQVzc4RZ9zzJVvJjxgQOjlQb+
	wrZQV9OSpOWWIJxMeRBdgieG/UDcEQeHOiBwVw8RQkzITOSSrAacraWgLrgxMAgn
	U984+3Bvax6nj78P8YqVgagZ+1C/Pc1YNDNp5JzsN4joe6/JjYuaBqz3N9ykvrx8
	J6dwiA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 491t37t8mt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 19:40:35 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-24ae30bd2d0so45818185ad.3
        for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 12:40:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757360433; x=1757965233;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TlQf7uI+N5nmhJzmx3D5G93mBC+iv1av/YTKYfSZVQM=;
        b=OIWN39m+r895aphxxuzY3jkOROmH4Xr46m6KwCUb5QrrGDpaxtFgrorr9U45XskUCE
         x+tY8wdRsKM0Piduzie6emHa5c1wbD+9XWUsePmtOP3L0alFJhbsl75Vz2Zg5RjOIcKg
         o0n2+ep76qgbGQrtI2lZrNvkCPWo5wZzGyTshFOmVwz8LhfX9N4kDbZY3L1nPeDDP7Rw
         r77pPhn9R6F0zuuuqKzs32YNjdQCeU/GuYRqEb7vhlrn8IoWQtXMJHGIGR1KuepfyqVR
         3AvxOlWbuQZ8OTtxd3rtTyl9aRyRZImRuNiU65FXCRvXPoTVOkns3rOjvSOO84qvCukm
         PsQg==
X-Forwarded-Encrypted: i=1; AJvYcCUA6k5bbSCpYB+w0N3npohI4sHzb5QvzctjtqXkGohVEaEXi3nMOexJpXFlI645l59gEnGSxPAYLwv3@vger.kernel.org
X-Gm-Message-State: AOJu0YzXrWe6Y/AwMgPbVBChCW/EDvwUrP8D9PZq7SOlBh5VJt4azx/L
	J/A2UV2ZOyDuA6dtGaML2ZCXInTUepMwms0B6e6fko0CTr0JkdvfgqAYLF30q1aYEyOuR0JxH0A
	ou5J5RqFis1FN3YQ4Eox/TUPsmrIaI1FwlCGM8hbRFMG0785Y6bqy3QSgwJ9DtvRo
X-Gm-Gg: ASbGnctG5YZYaw/6VHjuPc1ypPvM84jgeyzJHChJNpot4vZIaZ9py5/rbTMMBmot9sd
	bZAEMN0j5IhWv7PuoVqhoqpAlWWi3qOn13EQQTiFfV9ieUS+NMLZeUgma8Rq2AtlO0N/sQewcIs
	gRUfsdeHxYIX1pi2AIkn5oEduGLe9N1ywOCkSvVampLsC3ARRSKfbC5salQKYnNFBCI0K222Imn
	6entxP6EoXBURDapHSbPhCoVkzwUmXSIUUkPHmGVoOcnzc554Fc7b/fpx9dZKi7fNIrIbHQ+gcz
	GsUQSjYloCBrOUt42bGVD+7/YqQy4FQpuJUW1CJ5k7H/IkVmDJb6gst5myXuM2w3
X-Received: by 2002:a17:902:ef51:b0:24c:cc2c:9da9 with SMTP id d9443c01a7336-2516ded4545mr113956365ad.14.1757360433133;
        Mon, 08 Sep 2025 12:40:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE+UOrd5zxwYCwQsqJjJ1KQY0ewjFqba/O118Yvv6S2o17AqrHtZbIPybHZDLljRo4tPn0ZKw==
X-Received: by 2002:a17:902:ef51:b0:24c:cc2c:9da9 with SMTP id d9443c01a7336-2516ded4545mr113956015ad.14.1757360432585;
        Mon, 08 Sep 2025 12:40:32 -0700 (PDT)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-24ced7ea5e8sm104008475ad.104.2025.09.08.12.40.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Sep 2025 12:40:32 -0700 (PDT)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Tue, 09 Sep 2025 01:09:39 +0530
Subject: [PATCH v5 4/6] arm64: dts: qcom: lemans: Add GPU cooling
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250909-a663-gpu-support-v5-4-761fa0a876bf@oss.qualcomm.com>
References: <20250909-a663-gpu-support-v5-0-761fa0a876bf@oss.qualcomm.com>
In-Reply-To: <20250909-a663-gpu-support-v5-0-761fa0a876bf@oss.qualcomm.com>
To: Sean Paul <sean@poorly.run>, Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Connor Abbott <cwabbott0@gmail.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: Gaurav Kohli <quic_gkohli@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757360399; l=3278;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=qegwpgAioEKEmVS8TSb9ZldColVWRJ+OCeiisZIO6Sc=;
 b=p+OrZ+BgX/ZDX3ycIm3MeYIOuBHQM2L/9alIYx1TLY+d+MHtpshlnTtJD4Nd5Spr2wpLI8w7/
 Fuu13Rket90Bcc7CtGMI/OAv8wScHAI90zbX4vviDIkuuDuHdOkJCs5
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-ORIG-GUID: sZV1rqkFkTqPNOkrhN2qdwsML_uI7rKe
X-Proofpoint-GUID: sZV1rqkFkTqPNOkrhN2qdwsML_uI7rKe
X-Authority-Analysis: v=2.4 cv=NdLm13D4 c=1 sm=1 tr=0 ts=68bf3133 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=WQ4zR0kUUHxS2nCRhxYA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA4MDA2NiBTYWx0ZWRfX/q2Cz8s8hOrZ
 q/0HnL6I5LEE3LdGfwBTpnVBwo4JwFSueDJKRhZT9hcCMtMn0TBAL4o/rp/QL8JcrrbtoMHP20Y
 dqed4Z1r2jqwC9iL3pLhqrLhmKfmdOThUDuMp5zZ0+TQCF1S0k4aaq43rEz/mQ36Re8GzW+S5gn
 r5suXaO9PUXEzXjnX8Al4u27wMGpcWvqcVZcAYEjlb9tlUsV4sIBDNNGj4punvy1rOtguTLjEh3
 hRKyorw9RQ81nZzmLo+4FIe0zN5H7lRrvBVSVW/jT3EzFu5FtunzvNR86tlY7Z9oQL7QQANWjFk
 TkGcJj8JaW285FoKb4Bu2NsmRef2HDIJ4pdZTuiqtNemgwUwn2JmGHcmzO//ySFXCKKFvKLLfih
 /oDoO/g9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_06,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 adultscore=0 suspectscore=0 phishscore=0
 clxscore=1015 impostorscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509080066

From: Gaurav Kohli <quic_gkohli@quicinc.com>

Unlike the CPU, the GPU does not throttle its speed automatically when it
reaches high temperatures.

Set up GPU cooling by throttling the GPU speed
when reaching 105°C.

Signed-off-by: Gaurav Kohli <quic_gkohli@quicinc.com>
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans.dtsi | 55 ++++++++++++++++++++++++++++++++----
 1 file changed, 49 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
index 52c2533383920fdf34dc1eba11e5ec01209f4e8a..cc64ff9aa8dd1f2b610548e5a5f5192bd4feba7e 100644
--- a/arch/arm64/boot/dts/qcom/lemans.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
@@ -20,6 +20,7 @@
 #include <dt-bindings/power/qcom,rpmhpd.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
+#include <dt-bindings/thermal/thermal.h>
 
 / {
 	interrupt-parent = <&intc>;
@@ -6824,8 +6825,15 @@ gpuss-0-thermal {
 
 			thermal-sensors = <&tsens0 5>;
 
+			cooling-maps {
+				map0 {
+					trip = <&gpuss0_alert0>;
+					cooling-device = <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+
 			trips {
-				trip-point0 {
+				gpuss0_alert0: trip-point0 {
 					temperature = <105000>;
 					hysteresis = <5000>;
 					type = "passive";
@@ -6844,8 +6852,15 @@ gpuss-1-thermal {
 
 			thermal-sensors = <&tsens0 6>;
 
+			cooling-maps {
+				map0 {
+					trip = <&gpuss1_alert0>;
+					cooling-device = <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+
 			trips {
-				trip-point0 {
+				gpuss1_alert0: trip-point0 {
 					temperature = <105000>;
 					hysteresis = <5000>;
 					type = "passive";
@@ -6864,8 +6879,15 @@ gpuss-2-thermal {
 
 			thermal-sensors = <&tsens0 7>;
 
+			cooling-maps {
+				map0 {
+					trip = <&gpuss2_alert0>;
+					cooling-device = <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+
 			trips {
-				trip-point0 {
+				gpuss2_alert0: trip-point0 {
 					temperature = <105000>;
 					hysteresis = <5000>;
 					type = "passive";
@@ -7054,8 +7076,15 @@ gpuss-3-thermal {
 
 			thermal-sensors = <&tsens1 5>;
 
+			cooling-maps {
+				map0 {
+					trip = <&gpuss3_alert0>;
+					cooling-device = <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+
 			trips {
-				trip-point0 {
+				gpuss3_alert0: trip-point0 {
 					temperature = <105000>;
 					hysteresis = <5000>;
 					type = "passive";
@@ -7074,8 +7103,15 @@ gpuss-4-thermal {
 
 			thermal-sensors = <&tsens1 6>;
 
+			cooling-maps {
+				map0 {
+					trip = <&gpuss4_alert0>;
+					cooling-device = <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+
 			trips {
-				trip-point0 {
+				gpuss4_alert0: trip-point0 {
 					temperature = <105000>;
 					hysteresis = <5000>;
 					type = "passive";
@@ -7094,8 +7130,15 @@ gpuss-5-thermal {
 
 			thermal-sensors = <&tsens1 7>;
 
+			cooling-maps {
+				map0 {
+					trip = <&gpuss5_alert0>;
+					cooling-device = <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+
 			trips {
-				trip-point0 {
+				gpuss5_alert0: trip-point0 {
 					temperature = <105000>;
 					hysteresis = <5000>;
 					type = "passive";

-- 
2.50.1


