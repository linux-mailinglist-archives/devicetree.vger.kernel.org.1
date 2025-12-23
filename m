Return-Path: <devicetree+bounces-249100-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D8205CD944A
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 13:34:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id F40733017D20
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 12:34:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EAFB33555F;
	Tue, 23 Dec 2025 12:34:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Gjt4jNiV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cqCWl82U"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C6FD32AABE
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 12:34:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766493243; cv=none; b=NOvd7CujzVz+DknD/FxVVflhD+SKIOgL7mzz2HLTSfzE44RMj3xVZhlajBsrbjv6iDsCEGmftW3LYw1P7tWlXYu8ayNr8VztMj7BX31oHev3U5dzxfaTD1jkkr4WlM0nU3RMRhYM1HLRYAQ6wsoGa/dHfiEAduXo/E7MEpw8kr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766493243; c=relaxed/simple;
	bh=XuQBN6DNebiO0zYIxmj7uYi8xpbU1qeTvKFq7id//xg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=BhT1gDH2giRDRgRx7OGcZvLaESM7LQtRtKOuqqysc+vwQl5K59Y7+OK9oo2U1g8qHXUPzvlF84n4awucdCJkT8wUEHv3C07bDWbjcAVl8PZEM6KTAuG525I1RmuVbRU9XEhAB7b1U/KY+S2JZODbwovzEMUWsu0Pi2d8KlAkvAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Gjt4jNiV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cqCWl82U; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BN9jvoa2040938
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 12:34:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=BagGfG/LJXH
	XkgGkR0SfhpghREf6AsylGUK2Ww6S8nw=; b=Gjt4jNiVr1nNhXxm9xRJxJqTFsm
	RuAWqRt/wcIBTE4wSxYx/XIObtb9nl7bLUa8StJK+7fiOABWXOM637nw/J9+Z/nC
	XWpZf4C+4OMxbk3jyYhIh2zR/sW1ofn1JicDlbbCjh5aerS4gfHJXYyf4mbzHc52
	5oso9aMppkfh3EHqStUBYwOsarsCbLwsMdoMEpnOlLDWJGePxMRvReuYBG8eceuv
	BcrnVjWzoVBwmQwJgaQXM5/pAuMKNQk11ITc3lQKjdjDM6MjMjEMnU70xf5rmDgM
	BWGKhuStqpnf9dtzEK54PpvM0P513JkoR7pp2ommLQBmqABz97Psb1DUqEQ==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b763pks1t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 12:34:01 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-34ab8693a2cso13721166a91.0
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 04:34:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766493240; x=1767098040; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BagGfG/LJXHXkgGkR0SfhpghREf6AsylGUK2Ww6S8nw=;
        b=cqCWl82UoXWeAGd/Ukn5zLx8OmUNbAP/cUvmdqCTtvF7A0Ur1ssTAhf7VN5c71Q2hR
         FMRd3jsSCXk0ZktkKvMqlYLdNhjBmwLLcEdDG3uUdJxY41OfpNlByeC4Q1jlNnNOg794
         LnjWOWP21smalsrjnDaaMh3wLJjpBNvefmzcxqjdokUAcdS7zz8YyJxyDAX16xIP4qRj
         j9WCdrlalYKahNZXkWjtFH9+fnH1YO4SQdDR8U3Pda1xH4KMwo94WeotHtVti5KwPcMw
         Ej5B2yJ/66KFAraPQ9hngESTNbyI+XUBi1VwCK+qu68tvhgiacsy1mAO9Vma74i9IAHO
         QCrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766493240; x=1767098040;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=BagGfG/LJXHXkgGkR0SfhpghREf6AsylGUK2Ww6S8nw=;
        b=LN8/UluYvJ/mB+V3YgndamiH6dlwXOrKhfhUNjFdsEA+jC4nKh+h5BU4JsnakCreyv
         T6BTlcvTC4wmqwGEFyEr2kmlfNrB9Cg9q4gap+02y020OEebU73kzaNZ1WAQzZa5jXy8
         6vKWMk4R4INNNLKt9d1C8E31ucbnr0K170RuL5qsegFhx+1T9NC1OzFELPJo7a6XYOJF
         p7vNTg+ODGElAeX5Epjyx0WZO6CV1On7tMCLjm/gGtLnCFcZP9PmO4bJJxodmRM8LTtj
         OmniLM2CehhJEE1+zzof/y3bOnXM/rC00q1v1jET50gKxRtu39aM8mOczf00TntFGbXY
         s44Q==
X-Forwarded-Encrypted: i=1; AJvYcCVCIFQ3LihO0ZKMLED7MELGAJVooIsj+gI1izVTgWoLAOG40Zsh3m1jwAK5iNo1NyqS49clIIjph+eO@vger.kernel.org
X-Gm-Message-State: AOJu0YwK4d2GWYkH4Ip5A7Ea4vgUMPas6/gHya9GC0XKe41i1eyyw9e8
	UfLlxnvpiCoFYtF6SvzHdn1FA8CbmT4ffQJZuI2PCn4GodaUJ/WP8dkny+cEWYnoimRmnNuHpY5
	Sni57RyUaN7V/DQo7XIOaQWGNenuDLiUX9WALL+/p3pPbQBO/cFMh8Q/k5MLf/rAK
X-Gm-Gg: AY/fxX5hdAPor7yKNEETd6BvmORBMI2ns7aVWyCaX2XT6KfM7Honzb2wO3oqiqbhoFp
	B7FOJ1dHuupSF8EiQdw8+GhmY7iHEufdNXWMBeo4ywo/7MQbrR0yUwm7sfeSHUzzGcgCSA6uy0F
	ub4ufQm0XPRdGVuR/rbCPOfvbkzYZB1q3RVAbQzFeEDI/Koxle26h48gmBvyHRPa+g/lj3VfxKP
	RMo5aAImzxSuKlv4p5pEBeVzx662kzZ+x9Rc5CdaxDbvyFuNk/VE3TPXEbFP5QKdOxm+sqtEaJB
	Mbr5iky2US+w8t7vwgx+PQVRmdAggaF5dcGN7vsvkT1ie7Cg3tB4KWJ1OcV6qCHPD9t4fG5nuK0
	qj1cgbgCqAdD93P/CsemWgpPRM1Jg9ssJxqFTctk=
X-Received: by 2002:a05:6a20:158b:b0:35e:da63:4e7f with SMTP id adf61e73a8af0-376aa4fc362mr13397285637.39.1766493240248;
        Tue, 23 Dec 2025 04:34:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHUYcW4FmjUXnkiiAaRW5BWDNK8StWeFHfJyg29XWU5MiQs7Wi4PIxP7lY99yekh32+FhbtCw==
X-Received: by 2002:a05:6a20:158b:b0:35e:da63:4e7f with SMTP id adf61e73a8af0-376aa4fc362mr13397265637.39.1766493239841;
        Tue, 23 Dec 2025 04:33:59 -0800 (PST)
Received: from hu-gkohli-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e921b39dfsm12936044a91.8.2025.12.23.04.33.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 04:33:59 -0800 (PST)
From: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
To: andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, rafael@kernel.org,
        daniel.lezcano@linaro.org, rui.zhang@intel.com, lukasz.luba@arm.com,
        konradybcio@kernel.org, amitk@kernel.org, mani@kernel.org,
        casey.connolly@linaro.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Subject: [PATCH v1 6/8] arm64: dts: qcom: Enable cdsp qmi tmd devices for talos
Date: Tue, 23 Dec 2025 18:02:25 +0530
Message-Id: <20251223123227.1317244-7-gaurav.kohli@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDEwMiBTYWx0ZWRfX/5IXK1nfPpUb
 3jIvzwOCODUICT+R3EKg5eP2jXMVOQzhljNVc13fndzz4hmYn+LSiBvYumwH6ACBocJG/mroTeM
 WuBlr9DtM4SHaR2wUVeXendktYTh+3yHGjkY8RBm49Abqq6vqyoc1a4x/jxNhCBv4QOhrJ/pgty
 WLxdUlboWDIHodeJeec49u0xEPCwTrZ2Ah9xGKFeTy59Ifx89LdVZvJ5qyWGVNmGzWS2qVUqQ5d
 VclL0GmMMJM/EnNSRs76GcMelgRzcFDvZ/QdjbGgGbyCX1eY5cwb89GCwulKk2vL2SL8QVsNpfC
 CHa8jyNQixI/G7ov6dsrREGbyFhxSloYMvndFXCgYm2Ls8tgUf98TjiQBrrQEkZrA8RQcTA2sJ7
 YREyNU9pmWPTmTeTvsAocLRZfh++Iab0pDfB6A7RuIAB2B0SPJtAzX3jhdn+/acOh93oQiPDTZ+
 TR84MxdaSmAD+oGrJrw==
X-Proofpoint-ORIG-GUID: vM0tNZLIbfY1_MQ5TrNtx_ZICn5bMsJj
X-Proofpoint-GUID: vM0tNZLIbfY1_MQ5TrNtx_ZICn5bMsJj
X-Authority-Analysis: v=2.4 cv=H6TWAuYi c=1 sm=1 tr=0 ts=694a8c39 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=MZxNTxNVYJ8QJ_AAN10A:9 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 lowpriorityscore=0 priorityscore=1501
 bulkscore=0 impostorscore=0 phishscore=0 suspectscore=0 spamscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512230102

Enable cdsp cooling devices and thermal zone cooling map bindings
for cdsp.

Signed-off-by: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/talos.dtsi | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
index 95d26e313622..61faea81c263 100644
--- a/arch/arm64/boot/dts/qcom/talos.dtsi
+++ b/arch/arm64/boot/dts/qcom/talos.dtsi
@@ -18,6 +18,7 @@
 #include <dt-bindings/power/qcom-rpmpd.h>
 #include <dt-bindings/power/qcom,rpmhpd.h>
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
+#include <dt-bindings/thermal/thermal.h>
 
 / {
 	interrupt-parent = <&intc>;
@@ -3550,6 +3551,14 @@ compute-cb@6 {
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
 
 		pmu@90b6300 {
@@ -4721,12 +4730,26 @@ q6-hvx-thermal {
 			thermal-sensors = <&tsens0 10>;
 
 			trips {
+				q6_hvx_alert0: trip-point0 {
+					temperature = <105000>;
+					hysteresis = <5000>;
+					type = "passive";
+				};
+
 				q6-hvx-critical {
 					temperature = <115000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
 			};
+
+			cooling-maps {
+				map0 {
+					trip = <&q6_hvx_alert0>;
+					cooling-device = <&cdsp_sw
+							THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
 		};
 
 		mdm-core-thermal {
-- 
2.34.1


