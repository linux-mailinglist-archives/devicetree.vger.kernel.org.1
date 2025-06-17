Return-Path: <devicetree+bounces-186560-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A67BADC5C2
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 11:08:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 54871175A4B
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 09:08:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 898C02951C8;
	Tue, 17 Jun 2025 09:07:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ePN/lwWM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9342292B2D
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 09:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750151245; cv=none; b=ZzS+hbWYuc9LMWDG9u5AfxR6N0849RtJ2B3+DNiSR5nPQIXR52oTGCXWnvHDyx8v7snirSJulJ521HvQ0O8LicMI11QmFQD03URkkDgjljR/IXO9wpF7nL4ZvLxeRLbvoE6O/6ziBFiEJSaxXNCcupTm3ENU0W2Jb7CAz3gWnQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750151245; c=relaxed/simple;
	bh=HpCmu2Xxf2CKasxkFlZBU3mNBTm4LYqEUU50Qj7bYcU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ri7yvvAhl9zjeArTNljPzV0flh4127NawVqnG793Ws62PBy5DtiOU4izm+ASf+yU7DDg/qLDkkXxmpK7hYUU59FfYiJ44HidROnlX5B4gdnjTEh346RV/vMlRtkQRqfikfsqUZ1fkjjzMd8kMjheU7aJwYPdtTnPDRKrstSOuf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ePN/lwWM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55H7v9U3027925
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 09:07:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=v8VxgZncMLU
	vweLJo/cjubLjIJAD9fPEBEdpFY84mSg=; b=ePN/lwWM+0vp1Sjida6wPoRuxmP
	HlfzCkLq4oNI37xybN080wnV5zG9jmOtYKyeKkjw8xMvPOpmx+NZP6EY11BaaU4y
	MZyuuxHxsxlMWfyPPUKWiCUHep8MwhUtp72hGESkT/9b/RKh6AsUjM7sADh9tvnM
	fi6TOceDMlFr49iwCyZv4qmJ3nq8/ZX2V7zrX9K1s+DJh2cIgQuuZFLthquJsyIS
	9SfC6BtBjPvI+sTayGmIwBUKqItza0P3X/VmQrMKs61EmibszUG+VhV/x3OMGCvf
	ZYsybNqPTLAkErosO3qsVsLDdLKw+cM6w4WYsqwChK9/bfIYlJ/MGh7Dq5Q==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4791crqj0x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 09:07:22 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b31bd4c3359so205724a12.3
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 02:07:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750151242; x=1750756042;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v8VxgZncMLUvweLJo/cjubLjIJAD9fPEBEdpFY84mSg=;
        b=QjSb/iD1vKzlXRNW5pN3BPc3/YDpSjQu2I7mYcr6qd3rrzD0tOu9p8YvEBubsHZLwp
         pZNlSOipBbrQB3qUeoLAns8ya4y4tMITGhBApWyWzD+yh0txirnB2jMz1xC+az37vtEA
         3UwtJXP8XqpAibqllMrdiaJnwMDphLBIQ/raYlMqQWndeDpFkbxBQPaCPeJQ9dhlmf39
         ClO+hbOuDrcZRUF8jFxODLzpCkdC3T1MzhroLeOBRTCTEnNKKaewvK3/++miarRrfzmN
         bQaVcQLnr3AC/K6UTwdkzdJjTRg9VW2Hp7GjUJy7PtHYkXMp9PuqjuZModqIuWRxoRgp
         gVgA==
X-Forwarded-Encrypted: i=1; AJvYcCXFmEcxTpAHUT3cYl5Mlab3gu7su5LbctJEUjbUxHHLab9Glx+x1DIHfVXzkUNJ3f4s78VD+BC2W4/C@vger.kernel.org
X-Gm-Message-State: AOJu0YxPRO3hSsb35lbeM4zQuIZfL8T1+fggWc4gnQ0DYV3g89z9ujNZ
	BQbg9Xkzq+C5IXhV2mSgyw16ZzR8Xjzhp7Fiu8KnGlFlOrh8UBbU+QU91drFeF5n95uj/XIT+dW
	xxvFGWyuMAKK/xVOG1kIDyE8h9Uoi09f8IVJYVRo6GkzWYFypoPR2PcQpmUvQpICg
X-Gm-Gg: ASbGncvYJKWWS7Zoa/Jt6XKTmaop5WKMTcZfXsOFBwQhaI85gWpXokgmE2OAbQo9nVu
	iyRqlZjqQUohKSN48aE/O/MbjYhX/1uCeilmrwsVY2CxZtsPDNhSXCn10VXkOb8fDPn5PfxHe1H
	z2DjL/xWASZmrFSfbS8wiZ97HTdS+1Kxvt1ifhfBUXJXWi0OMrdO78PAscgxI+JJFLU6PPTkCR1
	/LeDklWkOwet9H3Fu0TgGPdDTYE1uKCvbfdWSOp3wHbWtlxal3gQD7cGdKvD5nDwFBCsHM6+8sS
	slU2Di3/6d/JKECkIqe6wxLkwe7GF+nmxKFr4m0Uezp/D6Z2FdPydKwnoI+ysg==
X-Received: by 2002:a17:903:19cf:b0:234:d7b2:2ac4 with SMTP id d9443c01a7336-2366b00629cmr200740545ad.17.1750151241752;
        Tue, 17 Jun 2025 02:07:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGQFcFoHfGO2OG62bjBmAIXOgg3ajRa+GMsZLmM5oo1I6OCeOlHJ67+7+KcYPcabd8OdkgVsg==
X-Received: by 2002:a17:903:19cf:b0:234:d7b2:2ac4 with SMTP id d9443c01a7336-2366b00629cmr200739995ad.17.1750151241328;
        Tue, 17 Jun 2025 02:07:21 -0700 (PDT)
Received: from cb9a88ed5d41.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-313c1bdb39bsm10017370a91.20.2025.06.17.02.07.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 02:07:21 -0700 (PDT)
From: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
To: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Mike Tiption <mdtipton@quicinc.com>,
        Sibi Sankar <quic_sibis@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] arm64: dts: qcom: qcs8300: Add EPSS l3 interconnect provider node
Date: Tue, 17 Jun 2025 09:06:51 +0000
Message-ID: <20250617090651.55-4-raviteja.laggyshetty@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250617090651.55-1-raviteja.laggyshetty@oss.qualcomm.com>
References: <20250617090651.55-1-raviteja.laggyshetty@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: cqULM-d0EvfpOmNZ9QFYRxbcnksN4-bB
X-Authority-Analysis: v=2.4 cv=BoedwZX5 c=1 sm=1 tr=0 ts=6851304b cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=pcgX-mRZKd7nGorDqcQA:9
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-GUID: cqULM-d0EvfpOmNZ9QFYRxbcnksN4-bB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE3MDA3MyBTYWx0ZWRfXwXE3tb4RB13M
 pImUslvzhkqsdRTOsEkTqVwP4Qeviu5+Fv8W97qr/C/+6AHxwXVFkUSUdlG/NLhyg8Ogc35NElk
 2K6bQxiVfpgL67DrilaROxNrHZ0MqrMHs+6UXdzWiMqFN+I3UWkoYokp0T2bwY2yLDBlAObuguC
 Su50HSdDGBSKCDvoMggb7HjnGuMSHkCk/7miE4XJqYWPcpCIApEptR6oZbdmhZolacohGxxRcir
 mrhgF0XYQP4Vd57AbuzFjQuL7bCqz8CRJ0uZtNJUrkKRU0ySghRpA39X4ZNp6E55sMSqyhjVB+m
 J/JHP4F0zl5OoGyCU6QgYxY2jTpoQZ0jCQ0b2S8cy8B8HdEkAW7sD4T6HcErpwiUwNflvhIKqws
 aC2zve4ayc33zpmlIOaFDfjFOeP3AH3utTzrXyylaUgwR4RxdjM/4RD1bTMxCkAIdWJXWOkQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-17_03,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxscore=0 adultscore=0 phishscore=0 lowpriorityscore=0
 mlxlogscore=999 bulkscore=0 malwarescore=0 priorityscore=1501 clxscore=1015
 spamscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506170073

Add Epoch Subsystem (EPSS) L3 interconnect provider node for QCS8300 SoC.

Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs8300.dtsi | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs8300.dtsi b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
index 7ada029c32c1..e056b3af21d5 100644
--- a/arch/arm64/boot/dts/qcom/qcs8300.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
@@ -12,6 +12,7 @@
 #include <dt-bindings/dma/qcom-gpi.h>
 #include <dt-bindings/firmware/qcom,scm.h>
 #include <dt-bindings/interconnect/qcom,icc.h>
+#include <dt-bindings/interconnect/qcom,osm-l3.h>
 #include <dt-bindings/interconnect/qcom,qcs8300-rpmh.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/mailbox/qcom-ipcc.h>
@@ -5433,6 +5434,14 @@ rpmhpd_opp_turbo_l1: opp-9 {
 			};
 		};
 
+		epss_l3_cl0: interconnect@18590000 {
+			compatible = "qcom,qcs8300-epss-l3", "qcom,epss-l3";
+				reg = <0x0 0x18590000 0x0 0x1000>;
+				clocks = <&rpmhcc RPMH_CXO_CLK>, <&gcc GCC_GPLL0>;
+				clock-names = "xo", "alternate";
+				#interconnect-cells = <1>;
+		};
+
 		cpufreq_hw: cpufreq@18591000 {
 			compatible = "qcom,qcs8300-cpufreq-epss", "qcom,cpufreq-epss";
 			reg = <0x0 0x18591000 0x0 0x1000>,
@@ -5455,6 +5464,14 @@ cpufreq_hw: cpufreq@18591000 {
 			#freq-domain-cells = <1>;
 		};
 
+		epss_l3_cl1: interconnect@18592000 {
+			compatible = "qcom,qcs8300-epss-l3", "qcom,epss-l3";
+				reg = <0x0 0x18592000 0x0 0x1000>;
+				clocks = <&rpmhcc RPMH_CXO_CLK>, <&gcc GCC_GPLL0>;
+				clock-names = "xo", "alternate";
+				#interconnect-cells = <1>;
+		};
+
 		remoteproc_gpdsp: remoteproc@20c00000 {
 			compatible = "qcom,qcs8300-gpdsp-pas", "qcom,sa8775p-gpdsp0-pas";
 			reg = <0x0 0x20c00000 0x0 0x10000>;
-- 
2.43.0


