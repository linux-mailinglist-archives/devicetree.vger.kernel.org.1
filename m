Return-Path: <devicetree+bounces-249102-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DEE85CD94BC
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 13:37:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1D1CF3086223
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 12:34:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26CC8337BB1;
	Tue, 23 Dec 2025 12:34:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jRYJy6Qp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Man4tGvC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FA6E3346A0
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 12:34:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766493256; cv=none; b=iRskGxaZopXTSdhddrEYYuXRXeQSlkW7ACleq4DoFszWvj56aZIMnq2eZanfl+7p6Y4F0IDuEX6N6eEF+ejPMqSprOz1Dn9X+qSiNOdJXsfy5mC6OArBlD+vhZzxIGm//jtF/9bJVzwy/303UmrsHBLeIDPk8b+TkTTLY5SGLG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766493256; c=relaxed/simple;
	bh=VJnabV5NE9B8s8GjpntpzXqF/MDpr7dnVToPXUTxIm0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=t2FuVPJoUXxCfOr4Od6UmRzttEdDcxk7ihrDnzQy80ohPpzYsC2hgNCUbQy7TG9bMqI4b2/MF7clF1GOl/KUUVIC+LnyiaWY7v/cxfNgmuyfzaKJbpFH9Zd1HOYk11/PS7/K11yBDD3sq0+mEcej3icWcyXcGEyhYlf0iiEA2IA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jRYJy6Qp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Man4tGvC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNBQ1oV1902603
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 12:34:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=6gWjZeGNdHf
	8e38PN2KZAbnK77L2YjO8Vi7vnEfr27Y=; b=jRYJy6QpeVZPYde54jClHSIQ3HP
	JKik7S/A+pnwqUqocGFAb9Pt7B2ETdbZrcXsW26s2B3Ixio/LFZMJy0aS8cjhYiW
	kfeeDfWJaf1mGSb3OE1S2IO23I5IdmW5LD+ceLCqLuSoc5QnPXu3ekBtO8tR5/Cr
	bCH75c1G+IDdrGPtxlEq8x3VWnlVb6GKktsBK+g2fSwumE4oWbEBsLfuvfpCgmKf
	xiskNq1QsFJb+mShtQv4akknxp1r31qjrLk1kRHeOnETMrjRsHyKqAmvZSeqJOEX
	xNdr4qJ4x09bsOH3/4zd1ysStuMva8bgeRD+fsnD6pShhihOBV+A9435PZw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b79w8k0yc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 12:34:11 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-34c387d3eb6so4735229a91.2
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 04:34:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766493251; x=1767098051; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6gWjZeGNdHf8e38PN2KZAbnK77L2YjO8Vi7vnEfr27Y=;
        b=Man4tGvCFMGyEPnVnjz6Y8/l0kf0TQcI40NI/FyP7GKLJ/qY0iooGxuviz2YkTjRb7
         oHcXVSocHetruySCgO7ExKV2EgOaaVVbjyWDup+yqGzClFJNm5BhAi0lh6iexuqXswhv
         jU7q/yU+4SFPo8sLs/1aRg8zEkDJRYQVffK6a+hJvd6lYo3d1/JLnnqUmEOwwY3W7P3z
         vX5PbA8nFB9R9FKRVmf85uSqrt0UtwXPFoVQ/4kqLIEIc8mVTqz7FO52z7HbbHtdcGVM
         AtrawNnJ+Oox6CJs/HhDscaRV0PGfenuEHzveUwm8LTN+tBK+/5aTZOF5sF9gfC6Km1Y
         BMUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766493251; x=1767098051;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6gWjZeGNdHf8e38PN2KZAbnK77L2YjO8Vi7vnEfr27Y=;
        b=w3XviiP5sEvIi/SM5pfsjyT/BtAR6c7GEN4mxJAyawGB+/JWPyXRy3d0EkNxjco7ns
         Eq6gqwh2ISLFq42QpZPzc2Y6YdHaXBIZTSxJcQeaGCawMTvmVGgmtDbE+XjGx3odFdDY
         5Oog69qcpQqvchrc0YHS3z1TZsp3zKQI3kuR9Ph/6hkHWThL3S0YyVPZNutACIu6fXaf
         cbqBWi/IDb/rXqnO+WxIfrNls1ungk14YAPI9l2v+S+kC2YpiAFMK4Yj4Ah6PqyUsdQt
         1T/TVUIQahoDKkPgON0jtB3uCWaNd3vYFqhS6ceyo+/rhSsBZe5aYIUsvpQgMR3ttYG+
         n7Xg==
X-Forwarded-Encrypted: i=1; AJvYcCUr72G8vwbEvrxrWBD4a/jUPqvPpaADG02EnzaGGhv0ysSHvUUlR4lacc7nmQPCghRYQQ1Hs4ALgHMR@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4S2mN6ialONZM4MMI8gxtHM/s5pASHlRd7aCgmMgOc9sxcp3s
	k0/3fYw8Lzj08v1ugHn1FxDW2sC0+4dAMQKyvHL1YUMYYWvpu9Lm/Zc3VDRmr9sPOw5DH6tzHjT
	skbRIkxT6JGWE300t97FkZFZH581cl59RlCwv+fFiBRX7z+raNtXXc8Sl1uPZEAab
X-Gm-Gg: AY/fxX5szNldfh1SaL5p76giLdwBeZCNfz5lzWabWYEwyTknGYCPmvsgyAMt4zOsCvt
	fi7NCmvFAyw0YwAsqpot9p8QSF4vphv08PCPGXQXcVPzYzg3L8dwpTHh4LGPqo9ogWxCDdcJ4EP
	2/PE2CDf0UcvpmIrQKDGE+8tbBOrF8KbYfPnxa83Fh7SueIs5AETIJe5kGBG+hpgcjLE7LZzU1p
	1gP7HbAohgpH3B5DgQ7Ulb/qHbYziaF1SV++F6J1mz/aQWjKzL2+bvtGqZOPaULXGMlbqV/B5Hc
	4dlSNur1ohP85AvEDvLv4PHvqOomEt3MVlF4QAtqEc10Hqeg36CRbeX3jqfJWlRBwNLNNViWH6G
	GWRutenKUeXICFgyAGNnj3MYhF4HrgBQDPYhX6dw=
X-Received: by 2002:a17:90b:548c:b0:34c:37b8:db34 with SMTP id 98e67ed59e1d1-34e921e959dmr10243477a91.32.1766493250483;
        Tue, 23 Dec 2025 04:34:10 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG/eEWLBnl2k0jZewfmrXJkfFQsP7K04TJpar3r+2nE2qnKZXVlmbrv8wh0IR6tnAgjj5rSxA==
X-Received: by 2002:a17:90b:548c:b0:34c:37b8:db34 with SMTP id 98e67ed59e1d1-34e921e959dmr10243443a91.32.1766493249767;
        Tue, 23 Dec 2025 04:34:09 -0800 (PST)
Received: from hu-gkohli-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e921b39dfsm12936044a91.8.2025.12.23.04.34.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 04:34:09 -0800 (PST)
From: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
To: andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, rafael@kernel.org,
        daniel.lezcano@linaro.org, rui.zhang@intel.com, lukasz.luba@arm.com,
        konradybcio@kernel.org, amitk@kernel.org, mani@kernel.org,
        casey.connolly@linaro.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Subject: [PATCH v1 8/8] arm64: dts: qcom: Enable cdsp qmi tmd devices for monaco
Date: Tue, 23 Dec 2025 18:02:27 +0530
Message-Id: <20251223123227.1317244-9-gaurav.kohli@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251223123227.1317244-1-gaurav.kohli@oss.qualcomm.com>
References: <20251223123227.1317244-1-gaurav.kohli@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDEwMiBTYWx0ZWRfX0Gsjp5K3e3Xq
 jos8R8/CvD5XGjcYsENxEsajb1JqaCpNkoUeKLH+SjvmLpYk/p8CEv6rXAcl396fsjAoCuyfRqm
 Iw4BSdHnkgV6w9wHqBOPK+FfUlDq83bDtCfBBOhpDoWMl46yxLLr6sJ12RcCbqDWGcRPAbaDmmW
 gcMLjmvK8F7JpK7p2lbPlEn59MPkEbos17muo96vfnd8lvIcdaLHPP8ChpXfcZ9j05SjiCFUk9y
 8gPnPcd/4n4k3hJZPGj3Z/CcMBJD/6Q7U2ef0GukvlNt7ztUwbOdwDVGo/utv4s8YKt4EKMjff+
 Ymo2LqyiG3h45lDnZ4ZIwwduzpBWTxb68bKlYu/TgInfDCAvs1jwKtJRAQURhvIuURXbe8K4NuC
 YOsB9OE4kXo33K0I4ghG2fpyUJTghO4BjopgjvtRmrBACexSZkhX9ISUI+l83bKTAYdKxqc/jxR
 zB9GYOxNZn81xGNdeYg==
X-Proofpoint-GUID: 2NCF2Q6FBonigzBSHqmM0Y6IUgVyWYr6
X-Proofpoint-ORIG-GUID: 2NCF2Q6FBonigzBSHqmM0Y6IUgVyWYr6
X-Authority-Analysis: v=2.4 cv=T/eBjvKQ c=1 sm=1 tr=0 ts=694a8c44 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=IQafhW1YQlm6yhshX2cA:9 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 impostorscore=0 bulkscore=0
 clxscore=1015 suspectscore=0 malwarescore=0 adultscore=0 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512230102

Enable cdsp cooling devices and thermal zone cooling map bindings
for cdsp.

Signed-off-by: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/monaco.dtsi | 92 ++++++++++++++++++++++++++++
 1 file changed, 92 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/monaco.dtsi b/arch/arm64/boot/dts/qcom/monaco.dtsi
index 985e37bf4876..1fe148ec5cf7 100644
--- a/arch/arm64/boot/dts/qcom/monaco.dtsi
+++ b/arch/arm64/boot/dts/qcom/monaco.dtsi
@@ -6217,6 +6217,14 @@ compute-cb@4 {
 					};
 				};
 			};
+
+			cooling {
+				compatible = "qcom,qmi-cooling-cdsp";
+					cdsp_sw: cdsp_sw {
+						label = "cdsp_sw";
+						#cooling-cells = <2>;
+					};
+			};
 		};
 
 		tsens2: thermal-sensor@c251000 {
@@ -6569,36 +6577,78 @@ nsp-0-0-0-thermal {
 			thermal-sensors = <&tsens2 5>;
 
 			trips {
+				nsp_0_0_0_alert0: trip-point0 {
+					temperature = <115000>;
+					hysteresis = <5000>;
+					type = "passive";
+				};
+
 				nsp-critical {
 					temperature = <125000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
 			};
+
+			cooling-maps {
+				map0 {
+					trip = <&nsp_0_0_0_alert0>;
+					cooling-device = <&cdsp_sw
+							THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
 		};
 
 		nsp-0-1-0-thermal {
 			thermal-sensors = <&tsens2 6>;
 
 			trips {
+				nsp_0_1_0_alert0: trip-point0 {
+					temperature = <115000>;
+					hysteresis = <5000>;
+					type = "passive";
+				};
+
 				nsp-critical {
 					temperature = <125000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
 			};
+
+			cooling-maps {
+				map0 {
+					trip = <&nsp_0_1_0_alert0>;
+					cooling-device = <&cdsp_sw
+							THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
 		};
 
 		nsp-0-2-0-thermal {
 			thermal-sensors = <&tsens2 7>;
 
 			trips {
+				nsp_0_2_0_alert0: trip-point0 {
+					temperature = <115000>;
+					hysteresis = <5000>;
+					type = "passive";
+				};
+
 				nsp-critical {
 					temperature = <125000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
 			};
+
+			cooling-maps {
+				map0 {
+					trip = <&nsp_0_2_0_alert0>;
+					cooling-device = <&cdsp_sw
+							THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
 		};
 
 		ddrss-0-thermal {
@@ -6689,36 +6739,78 @@ nsp-0-0-1-thermal {
 			thermal-sensors = <&tsens3 5>;
 
 			trips {
+				nsp_0_0_1_alert0: trip-point0 {
+					temperature = <115000>;
+					hysteresis = <5000>;
+					type = "passive";
+				};
+
 				nsp-critical {
 					temperature = <125000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
 			};
+
+			cooling-maps {
+				map0 {
+					trip = <&nsp_0_0_1_alert0>;
+					cooling-device = <&cdsp_sw
+							THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
 		};
 
 		nsp-0-1-1-thermal {
 			thermal-sensors = <&tsens3 6>;
 
 			trips {
+				nsp_0_1_1_alert0: trip-point0 {
+					temperature = <115000>;
+					hysteresis = <5000>;
+					type = "passive";
+				};
+
 				nsp-critical {
 					temperature = <125000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
 			};
+
+			cooling-maps {
+				map0 {
+					trip = <&nsp_0_1_1_alert0>;
+					cooling-device = <&cdsp_sw
+							THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
 		};
 
 		nsp-0-2-1-thermal {
 			thermal-sensors = <&tsens3 7>;
 
 			trips {
+				nsp_0_2_1_alert0: trip-point0 {
+					temperature = <115000>;
+					hysteresis = <5000>;
+					type = "passive";
+				};
+
 				nsp-critical {
 					temperature = <125000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
 			};
+
+			cooling-maps {
+				map0 {
+					trip = <&nsp_0_2_1_alert0>;
+					cooling-device = <&cdsp_sw
+							THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
 		};
 
 		ddrss-1-thermal {
-- 
2.34.1


