Return-Path: <devicetree+bounces-275128-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iJfjFbfps2l6dAAAu9opvQ
	(envelope-from <devicetree+bounces-275128-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:40:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A16E42819F0
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:40:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DAFE030339DF
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 10:39:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 333DD3909A4;
	Fri, 13 Mar 2026 10:38:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="F6c/3hCN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EowINb+v"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 116CA390C8D
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:38:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773398336; cv=none; b=fq0xKrXr4wjxdO4tPm9R5EI3aeMkC504qNNeExHnleY53M6rXj2uAK3Cvc7sKIV+J0zQzuIuf6rSsbpGZh5FcII+2/oxE+ttKg5nsMUW7NYLRuW7j3x5eXfvIIF5THrsYq/Uh3tE29rk3qrsAku2SE6DajACBwj59HEpxgk58eQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773398336; c=relaxed/simple;
	bh=ss06xA7c+Jl0D9yzRUP0fPwdtdct7PNSEddMP7dz9FQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=NTdVcqVngxuuFQOeooahMI0sUxp/tTDJq0MVR3MWAc3eZ77MRjJO+5G4A63NPhWMufzFhQgY2ipM1AL1sWm3p8SpNdw9EccnXAOuXZwyfDtQOFtTP91a0pEU7vQigwv389qJO/KLAefFCpZozAJwgATG9e8AOnBEf83kdFXagRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=F6c/3hCN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EowINb+v; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62D7JKAA237560
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:38:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	V4U3lR51szCl4UcZcaOTV6Q1X2KXRulg8n/uwJzS0aQ=; b=F6c/3hCNC3/FVL1y
	HGj7uP47TVFtyw2DpWBP3oQpB3i1HFc8bs4gODL4H3AnmJSxVYP19vNY3MuuMwh7
	UeWvkRloptccFSNRYOtp/K4XCgZG1V4PEqXAjXk0OiCt/G/8Ha60UB+EShgOSCX+
	vdxFr58TrGsrVLnXSAOtb7agvvgwPBaWU9+dBy11L9r9e/fGjI8C1H92ytn0ZesV
	iGPLSSvkFv8zwqUWn7DbIfkwvNE3IUSS1KON3L0xRmM3xYZj6oPBONW2/AOfHJk7
	uMdSOnVbHA2L/1BpGHStOFgKdW0B5SU876R+cqVZfNFMUtthUEJvf1C3IOoQ2PIm
	EgJlOg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cve3d8q39-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:38:53 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cd7de0e161so1375260885a.2
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 03:38:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773398332; x=1774003132; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V4U3lR51szCl4UcZcaOTV6Q1X2KXRulg8n/uwJzS0aQ=;
        b=EowINb+vNWEgMxF+uuKYCgu30piSOsIKrSQkfW/vGdlws5zqzl5vWcOrJMfd7DaadK
         KmOnHLo5OH1T/rPmbFsGAAwhdTSftTjots8WIdQabD1lRzmJYF3R/7T2jt8T2KXBCQzn
         iP9rYWBgQuijfQW6Byy5zvKcEGeWFcc7wUFlfMTeqUaMeKXt8MwKSL4AeJ8K3ll/l5/g
         wSSuqc83tTrmhs0GRYU4keGm5aizXcPxQNIW/hWs+99Hf64lcNp+ndl34npFvmQSrj2K
         cGKppUCYpsW7AvRAo9+ZywYhiIxMapaFneNAqeeRUuKwXvcwUQezob1MGQvbYWxDT4ta
         oVdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773398332; x=1774003132;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=V4U3lR51szCl4UcZcaOTV6Q1X2KXRulg8n/uwJzS0aQ=;
        b=Nwl8h8l5tjInmSj31IFumGCyUElHn8XqOGpJOrx1pN7YVJ/pmOFDM8r/UlDIfWCf5Z
         2xZlC5/YmDxIIhyH9FWDuQ1wFsDzJKqIzlbQdOMooHaulrMjxoXDP5tqg75YWugG0p5w
         c4mGL+qR2WD7n1YZAbogRANl5QsYMV6TH5Vhe0f2/jIijE3u5OkENqjqP2+52EjP2slp
         s4unnnVAjoSS9xMv5mk2HaNVZ/NxLg2fIO9yU6IBOXM79fy9tC+jsKHgMuIYZfCfTs0l
         zeOGxev1lCFUmg+MoomOkg1R67R3L+aoQWmImSk91vQMi6u8r5k4aYCihyGLlIeHKCHs
         EgVw==
X-Forwarded-Encrypted: i=1; AJvYcCU17zV5P3Vp5qAbTd/hOZsSCIn4P/ecSp/PXZ/V72nUQaEkC5N2GWBLIPhxv9SMBgVIQVQpkK+3oT6x@vger.kernel.org
X-Gm-Message-State: AOJu0YyYMVB3Ilsfh4x4Ap+ozJLKeAxGlNLGlqtFPXnrtzagL+fLtrQh
	ueEcSjQY87YMJqxuCyYmyfeYBhrFziXZTlPj7e5VB3evpkFWYWqgYGalfsbbAE2QKBlHGMGKjar
	hrgFEKoRtQXMwmi/KPndI7h63AUKKL8e0zIk9W0S6GjeDmptWZUxvETys+3UWlqrB
X-Gm-Gg: ATEYQzxGR7VrA9Ma0rE6hjitLgGAjSDe+9RwPxd5gCW6TkNaPE4yNll9lqjpkUzO9pS
	1XFA8wqL0YGqYl/xkksNXGWjMnIs8jTQ0ngZfEKKUiCA0z0kc5AxlQUZ5fDEkLfCU6yGqevzeZr
	OMXlF3mUSKwfs5YjpGDc5Tlv+vo34GwhCUnIvUYIwQVFlx7VSRElV8c18HTna3oUN3tOGX/Mtqr
	t+puojGuRsiVFWsk0uQfLJV3NDTU8YCUxxqN8ly/xigcOSlmrCSPH+iH6+bxiUKFn/MWI/az4nv
	w4ftK2FWJZT5kBmxg0JIR8EXUTfnkpKqyJJ4U1NcFx/jaD1dArG7tkytAJBWnjqZp4ZETFMTIaW
	jedYRgLntoVAmRG1K6B8c+hQbf/vZWyWk5ffNOwlvpQf6QG/RP0cl8Yw=
X-Received: by 2002:a05:620a:c50:b0:8cd:9b31:23b7 with SMTP id af79cd13be357-8cdb5a17a90mr358681785a.2.1773398332259;
        Fri, 13 Mar 2026 03:38:52 -0700 (PDT)
X-Received: by 2002:a05:620a:c50:b0:8cd:9b31:23b7 with SMTP id af79cd13be357-8cdb5a17a90mr358678585a.2.1773398331700;
        Fri, 13 Mar 2026 03:38:51 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48556426be9sm20183445e9.9.2026.03.13.03.38.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 03:38:51 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: richardcochran@gmail.com, r.mereu@arduino.cc, m.facchin@arduino.cc,
        geert+renesas@glider.be, arnd@arndb.de,
        dmitry.baryshkov@oss.qualcomm.com, ebiggers@kernel.org,
        michal.simek@amd.com, luca.weiss@fairphone.com, sven@kernel.org,
        prabhakar.mahadev-lad.rj@bp.renesas.com,
        kuninori.morimoto.gx@renesas.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        netdev@vger.kernel.org, Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v2 4/7] arm64: dts: qcom: Add Monaco Monza SoM
Date: Fri, 13 Mar 2026 10:38:19 +0000
Message-ID: <20260313103824.2634519-5-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313103824.2634519-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20260313103824.2634519-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: AGNOveBVM-O-LMrB32BURdruMHNjRFIT
X-Authority-Analysis: v=2.4 cv=FLwWBuos c=1 sm=1 tr=0 ts=69b3e93d cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=wMphO_-U-tlnGu-niZMA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDA4MyBTYWx0ZWRfXyEJOaho18iX5
 Vwi7bsX3mvqZbJEAOkIGE61mvl1t1n1qW8VsTT7zOKCNVQ9y9IbT/enyPe8OaVdVykGJ8NkzrnY
 JI7R5CXMNSwR78kiIybtpRi95MTEos6nGcVP+qxsJ+UqqvnYK3/2pZpJkXtPN0wUxRlKIOjw+jH
 SH0e3Q0lb4WfGITXKovgl/5Fd7KSlmJez/puke8QfAvjyjjGDC7RTG0wZTpc289C8Bqhwi/uvFA
 i2T6Fz8K+qtv/42d7mrABUIPFDt39We3d1aXO/ZP+ZufA1KCJWlAJe+jVx81B/+eDoVhzO4PhTg
 GWY7bruawZ29svixc90RN3HByyM4QJo+LRttME50bPcRDdiy2FNhrD+yNfrfO3T+CN7n7FrteCp
 ZgH4OoPylgoBmBjwZFGWPUv+gkm0OyFN/3hTGPzwcqVXcH+v/cNvPxR48ev5OIkI5Q8cQOUxlO8
 vc/8Z98sMnUd8p8i6eQ==
X-Proofpoint-GUID: AGNOveBVM-O-LMrB32BURdruMHNjRFIT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 bulkscore=0 malwarescore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 adultscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130083
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	FREEMAIL_CC(0.00)[gmail.com,arduino.cc,glider.be,arndb.de,oss.qualcomm.com,kernel.org,amd.com,fairphone.com,bp.renesas.com,renesas.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-275128-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A16E42819F0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Loic Poulain <loic.poulain@oss.qualcomm.com>

The Monaco Monza SoM is a compact computing module that integrates a
Monaco/QCS8300 System on Chip (SoC), along with essential components
optimized for IoT applications. It is designed to be mounted on
carrier boards, enabling the development of complete embedded systems.

The following components are described:
- Fixed S2S 1.8V rail
- PMM8654AU RPMh regulators (PMIC A and PMIC C)
- Display subsystem/phy supplies (DSI, DP)
- Enable GPU, GPI DMA, IRIS
- PCIe Gen4 for both controllers and PHY supply hookups
- QUPv3 firmware declarations
- REFGEN always-on workaround for USB2 HS PHY
- Remoteproc firmware names for ADSP, CDSP and GPDSP
- Ethernet SERDES supplies
- USB HS/SS PHY regulators
- On-SoM eMMC

Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Co-developed-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 .../arm64/boot/dts/qcom/monaco-monza-som.dtsi | 323 ++++++++++++++++++
 1 file changed, 323 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/monaco-monza-som.dtsi

diff --git a/arch/arm64/boot/dts/qcom/monaco-monza-som.dtsi b/arch/arm64/boot/dts/qcom/monaco-monza-som.dtsi
new file mode 100644
index 000000000000..9b5ed55939b8
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/monaco-monza-som.dtsi
@@ -0,0 +1,323 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#include <dt-bindings/regulator/qcom,rpmh-regulator.h>
+
+#include "monaco.dtsi"
+#include "monaco-pmics.dtsi"
+
+/ {
+	/* This comes from a PMIC handled within the SAIL domain */
+	vreg_s2s: vreg-s2s {
+		compatible = "regulator-fixed";
+		regulator-name = "vreg_s2s";
+
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+	};
+};
+
+&apps_rsc {
+	regulators-0 {
+		compatible = "qcom,pmm8654au-rpmh-regulators";
+		qcom,pmic-id = "a";
+
+		vreg_l3a: ldo3 {
+			regulator-name = "vreg_l3a";
+			regulator-min-microvolt = <1200000>;
+			regulator-max-microvolt = <1200000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-always-on;
+		};
+
+		vreg_l4a: ldo4 {
+			regulator-name = "vreg_l4a";
+			regulator-min-microvolt = <880000>;
+			regulator-max-microvolt = <912000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l5a: ldo5 {
+			regulator-name = "vreg_l5a";
+			regulator-min-microvolt = <1200000>;
+			regulator-max-microvolt = <1200000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l6a: ldo6 {
+			regulator-name = "vreg_l6a";
+			regulator-min-microvolt = <880000>;
+			regulator-max-microvolt = <912000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l7a: ldo7 {
+			regulator-name = "vreg_l7a";
+			regulator-min-microvolt = <880000>;
+			regulator-max-microvolt = <912000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l8a: ldo8 {
+			regulator-name = "vreg_l8a";
+			regulator-min-microvolt = <2504000>;
+			regulator-max-microvolt = <2960000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l9a: ldo9 {
+			regulator-name = "vreg_l9a";
+			regulator-min-microvolt = <2970000>;
+			regulator-max-microvolt = <3072000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_HPM>;
+		};
+	};
+
+	regulators-1 {
+		compatible = "qcom,pmm8654au-rpmh-regulators";
+		qcom,pmic-id = "c";
+
+		vreg_s5c: smps5 { /* LPDDR VDD2H */
+			regulator-name = "vreg_s5c";
+			regulator-min-microvolt = <1104000>;
+			regulator-max-microvolt = <1104000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l1c: ldo1 { /* LPDDR VDDQ */
+			regulator-name = "vreg_l1c";
+			regulator-min-microvolt = <300000>;
+			regulator-max-microvolt = <512000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l2c: ldo2 { /* LPDDR VDD2L */
+			regulator-name = "vreg_l2c";
+			regulator-min-microvolt = <900000>;
+			regulator-max-microvolt = <904000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l4c: ldo4 {
+			regulator-name = "vreg_l4c";
+			regulator-min-microvolt = <1200000>;
+			regulator-max-microvolt = <1200000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l7c: ldo7 {
+			regulator-name = "vreg_l7c";
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l8c: ldo8 { /* LPDDR VDD1 */
+			regulator-name = "vreg_l8c";
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l9c: ldo9 { /* QFPROM */
+			regulator-name = "vreg_l9c";
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_HPM>;
+		};
+	};
+};
+
+&mdss_dp0 {
+	pinctrl-0 = <&dp_hpd>;
+	pinctrl-names = "default";
+};
+
+&mdss_dp0_phy {
+	vdda-phy-supply = <&vreg_l5a>;
+	vdda-pll-supply = <&vreg_l4a>;
+};
+
+&mdss_dsi0 {
+	vdda-supply = <&vreg_l5a>;
+};
+
+&mdss_dsi0_phy {
+	vdds-supply = <&vreg_l4a>;
+};
+
+&gpi_dma0 {
+	status = "okay";
+};
+
+&gpi_dma1 {
+	status = "okay";
+};
+
+&gpu {
+	status = "okay";
+};
+
+&gpu_zap_shader {
+	firmware-name = "qcom/qcs8300/a623_zap.mbn";
+};
+
+&iris {
+	status = "okay";
+};
+
+/* PCIe0 Gen4 x2 */
+&pcie0 {
+	iommu-map = <0x0 &pcie_smmu 0x0000 0x1>,
+		    <0x100 &pcie_smmu 0x0001 0x1>,
+		    <0x200 &pcie_smmu 0x0007 0x1>,
+		    <0x208 &pcie_smmu 0x0002 0x1>,
+		    <0x210 &pcie_smmu 0x0003 0x1>,
+		    <0x218 &pcie_smmu 0x0004 0x1>,
+		    <0x300 &pcie_smmu 0x0005 0x1>,
+		    <0x400 &pcie_smmu 0x0006 0x1>;
+
+	status = "okay";
+};
+
+&pcie0_phy {
+	vdda-phy-supply = <&vreg_l6a>;
+	vdda-pll-supply = <&vreg_l5a>;
+
+	status = "okay";
+};
+
+/* PCIe1 Gen4 x4 */
+&pcie1 {
+	status = "okay";
+};
+
+&pcie1_phy {
+	vdda-phy-supply = <&vreg_l6a>;
+	vdda-pll-supply = <&vreg_l5a>;
+
+	status = "okay";
+};
+
+&qupv3_id_0 {
+	firmware-name = "qcom/qcs8300/qupv3fw.elf";
+
+	status = "okay";
+};
+
+&qupv3_id_1 {
+	firmware-name = "qcom/qcs8300/qupv3fw.elf";
+	status = "okay";
+};
+
+/* There is a HW/FW issue preventing proper REFGEN hardware voting
+ * for the USB2 HS PHY. As a workaround, we force REFGEN to stay
+ * always‑on in software, matching initial bootloader config.
+ */
+&refgen {
+	regulator-always-on;
+};
+
+&remoteproc_adsp {
+	firmware-name = "qcom/qcs8300/adsp.mbn";
+
+	status = "okay";
+};
+
+&remoteproc_cdsp {
+	firmware-name = "qcom/qcs8300/cdsp0.mbn";
+
+	status = "okay";
+};
+
+&remoteproc_gpdsp {
+	firmware-name = "qcom/qcs8300/gpdsp0.mbn";
+
+	status = "okay";
+};
+
+/* OnSom eMMC */
+&sdhc_1 {
+	vmmc-supply = <&vreg_l8a>;
+	vqmmc-supply = <&vreg_s2s>;
+
+	bus-width = <8>;
+	mmc-ddr-1_8v;
+	mmc-hs200-1_8v;
+	mmc-hs400-1_8v;
+	mmc-hs400-enhanced-strobe;
+
+	no-sd;
+	no-sdio;
+	non-removable;
+
+	status = "okay";
+};
+
+/* Ethernet/SGMII */
+&serdes0 {
+	phy-supply = <&vreg_l5a>;
+
+	status = "okay";
+};
+
+&tlmm {
+	dp_hpd: dp-hpd-state {
+		pins = "gpio94";
+		function = "edp0_hot";
+		bias-disable;
+	};
+};
+
+/* USB0 HS + SS */
+&usb_1_hsphy {
+	vdda-pll-supply = <&vreg_l7a>;
+	vdda18-supply = <&vreg_l7c>;
+	vdda33-supply = <&vreg_l9a>;
+
+	status = "okay";
+};
+
+&usb_qmpphy {
+	vdda-phy-supply = <&vreg_l7a>;
+	vdda-pll-supply = <&vreg_l5a>;
+
+	status = "okay";
+};
+
+/* USB1 HS */
+&usb_2_hsphy {
+	vdda-pll-supply = <&vreg_l7a>;
+	vdda18-supply = <&vreg_l7c>;
+	vdda33-supply = <&vreg_l9a>;
+
+	status = "okay";
+};
-- 
2.47.3


