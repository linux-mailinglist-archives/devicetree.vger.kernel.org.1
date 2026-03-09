Return-Path: <devicetree+bounces-273007-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GB1zIObnrmlRKAIAu9opvQ
	(envelope-from <devicetree+bounces-273007-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 16:31:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA9423BB75
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 16:31:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2B5F2309F0BB
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 15:25:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B72D3DA7F3;
	Mon,  9 Mar 2026 15:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LP1UX689";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BMj+cJhE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79B383CE4B2
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 15:24:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773069874; cv=none; b=nuyXqyIVb8QzbRQNdVsCUL6MUWFsOLi9bCP6GOU8dvq4Nojn5oGeMYCKTxYRVjwSaMs8Ef9lh5GwIo+2JWKK40EsnVonXgaaPz6r37VROyPuAYWBVZUFvny9d0qmt9R2KadtDGHeE3uiHlTZXAnN5b1lR6wAcy8ptyZIKCR+8nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773069874; c=relaxed/simple;
	bh=zF/ZtSRqYTNTiJla1Mk2osrN2zkae+hDXhuv9dj2vx4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=XMrEQjcDYMEa4wps8ANqK1aEZFqtpWjnuDfCJGvuUhjqRLf4RjuFp4NywHuu9t/EWhHW8il2ASm6ov/c5u2Nk4xSMDO608aUUb8pw3r33ele1ahlhP8N5oeDQoe5/0b/KPnSj8Ug0OhXaJ6Y7E0abIG42KLuGdU7Hmtn23er7h8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LP1UX689; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BMj+cJhE; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 629DqoM72138238
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 15:24:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Md0AAi37albUzSAboU61gZErEa4ooVARCZHWV8Dr0hw=; b=LP1UX6895G3AJzUN
	RHu50HwgSKNW81fnRg/8HtNdH6UH7a7DE53d94o4KDec/WL4MpaQ5wLA9xzjdoS4
	YFSsLHFX1kmcbAnmfchUUEl5fT8uSeJJtjnu8ziRzxEqJ25p3h89oxfLEkFGKHCE
	AypPkVDaOG3BucI7PK3rwgKsAgdXEqGKGqdcndJ7lpMYUh9SySTYG1XMNpnsYKSM
	whwEWRfbwn64v+Ex0tIBPHkGnYXvlXm3KyAeira2Pw13Z/Hk6uwU8vMGgM43V4As
	gFtU9TbgL6R7Y7aDF7s2tJDbJjGULO4yM2wErLzQMW/L7U01cAgiFFegt/fpYCxr
	uI2MnQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4csyft09sq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 15:24:31 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb52a9c0eeso9266647485a.2
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 08:24:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773069871; x=1773674671; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Md0AAi37albUzSAboU61gZErEa4ooVARCZHWV8Dr0hw=;
        b=BMj+cJhEARmxiXDSYxWmXLyudCA0kqMIaZ98gICOkeanmDauVQsvCzjvcPWmnsYs+Z
         w8dXVetrm/guWc8qPH6HmSlzlgqos1aNY5p+YNkFVK8xsRaO2gdbAYDnhH+KXTezQC2H
         7HrfjpkQLp4RbdsKypKqu8mCrNLXm+PNmn+rNcoOszqGrP0abwQy7pIrAnTnYKOyKbCK
         qIDnFZK8WFvTdMn+gthxglOof+Zmt6k4TbzgGRf/MyQvPhGqTdUVfvQS69dInSFPfMjM
         /qQTVZJI0oTXYC0ZVC9odoAaW9oVdO9IGrlQNoaTVO5Qc1DJGw2R8BcaYYiCaejBPCGN
         V+2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773069871; x=1773674671;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Md0AAi37albUzSAboU61gZErEa4ooVARCZHWV8Dr0hw=;
        b=oPagM4kNcEyw6O4qXy9L9yrtNuLMLXrj7i1x/H0ff87PoRlOrd2zGkoPsalc+3Zavl
         1AWWkiT+ds8Df9YWc6NsLDKqrvcpE+sdDI9nG9d2eobyEOZg/Vz6S/1Zms9t8SehUh8H
         7JrYrePNtXRq7CTOWS3/ER1QZqJETPpParwc5QSApjBZpP9GNq9Z7S/eR2FIrklAL7es
         1aF9CZrLI5UAxau+AW1iiREwkifQEuuKrJsZGqDA8SeZePSQzU8rmhF/Y451KS8MtMiT
         L8iCDz7BT5lQl3KrV3BVyb7aK/5RW8vnj3i6Lt0PZ4JH6BTtMBziIMu6M5asvJo+8Q/4
         l4/A==
X-Forwarded-Encrypted: i=1; AJvYcCXQHP0BTN/LcyfXByvx3+9i1VQlr2VNR0T2md7DaldSsSlHWpKsy4WdgLs9gNRvuEFyJ8VMlWIo4FHk@vger.kernel.org
X-Gm-Message-State: AOJu0YxwRbq1NBh/STTu5tpRYU/0QLlfB5m7POvoItnNV6uxOchVpjdL
	QFddDlsSRygMImXU4mXCc3rvAQsoRuUlsNJQt9RY2unvM0tRFUL26RhHWQXi/hiTHLW7etnyCnO
	zikf6UryG12PE1JAvd4IrWyrj8UfwrmrtX8bmaT/emuvrp/9rYd8/OxxnjqQA1rjA
X-Gm-Gg: ATEYQzyH4SPxwddZd/5+696GnnRU7umSrtivP8qQeBvMEykyLR3Htt59shKSietgr69
	niDoxu/LHqB6l2fn0rRIZPo4O3gFNGbVa0aEKJFiQFLDVVcTmbVtdjYiCZot59XupSgz/Zyt+rp
	uviS2E8vl9z9+VkN2no4rPdonNYTmahkQC5NziDUwr01F/7D3XrPRq+MPvIfKoS9UdIYJaJg3Ci
	1lBo3i6RmJfWYDbvKIG7QccgmC8d+aGUciFZobJwPVIXh7z2WRNvEv5XOU4nmc+odtjXouji5J5
	QIN87B9Q48zh6l/JkGBUo0a4H+yHw34P5t4QxiDNKstRCAT6j0zWyOKTVXRi2pJCEtOCxbeLZ3d
	kU65/l+/AnI+SWNRN22agx5qABs2tfne9XGo7sYbpiMbT3Xad4/c1RBw=
X-Received: by 2002:a05:620a:2844:b0:8cd:9322:d44e with SMTP id af79cd13be357-8cd9322d85bmr58485385a.73.1773069870873;
        Mon, 09 Mar 2026 08:24:30 -0700 (PDT)
X-Received: by 2002:a05:620a:2844:b0:8cd:9322:d44e with SMTP id af79cd13be357-8cd9322d85bmr58481885a.73.1773069870372;
        Mon, 09 Mar 2026 08:24:30 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4853a59fc36sm192812515e9.9.2026.03.09.08.24.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 08:24:29 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: richardcochran@gmail.com, geert+renesas@glider.be, arnd@arndb.de,
        dmitry.baryshkov@oss.qualcomm.com, ebiggers@kernel.org,
        michal.simek@amd.com, luca.weiss@fairphone.com, sven@kernel.org,
        prabhakar.mahadev-lad.rj@bp.renesas.com,
        kuninori.morimoto.gx@renesas.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        netdev@vger.kernel.org, m.facchin@arduino.cc, r.mereu@arduino.cc,
        loic.poulain@oss.qualcomm.com,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH 2/7] arm64: dts: qcom: Add Monaco Monza SoM
Date: Mon,  9 Mar 2026 15:24:13 +0000
Message-ID: <20260309152420.1404349-3-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260309152420.1404349-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20260309152420.1404349-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: IDBmaTeTfkmexDl10ScDIQFmZHaazhJb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDEzOSBTYWx0ZWRfX7HjbVMmFXI/h
 FZLLdBF1alnsPHMu6sReJdDJh/yVbiaTwzZGL5eVJr4XC677Qtnpan3m87736KqDUgJE0r24H7B
 IGI4O+ergnwx1tMW1tVRr/mGv51d2BbrGi6Lscr9YDJg1M6lHWzpuIUUWow/jbNYr7JVSgVBncc
 Sn2vvPco678SXkyi0VhGuawgsXEJsgrbAqgdf09w4s15lu1GuWbO6ew+jzVIaUD7/lhXId526WA
 ilPHCZmjIcuejlzabFawL0zlUsppQf58u6YJ4ZPFuoLuLEKVyS6wpCuYq/dxDfJTSrG9GY7lspi
 WM44JkX2vlFa0pEtXYi+iqVsGAX8hWPmq4VwnA5vsGquTGsCXM05FYFjglD1nrSV6ac6SFU1ft0
 zyt6k5puBKXMnXqjaVdGRyW/UmdmLnLWq074Fk3SeDQvnO91tdVJ0vR2PyIfAP7BQK3Y16QN3sX
 KD4WicrCvazq44fNy1Q==
X-Proofpoint-GUID: IDBmaTeTfkmexDl10ScDIQFmZHaazhJb
X-Authority-Analysis: v=2.4 cv=F8dat6hN c=1 sm=1 tr=0 ts=69aee62f cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=wMphO_-U-tlnGu-niZMA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_04,2026-03-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 lowpriorityscore=0
 adultscore=0 priorityscore=1501 suspectscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090139
X-Rspamd-Queue-Id: CCA9423BB75
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	FREEMAIL_CC(0.00)[gmail.com,glider.be,arndb.de,oss.qualcomm.com,kernel.org,amd.com,fairphone.com,bp.renesas.com,renesas.com,vger.kernel.org,arduino.cc];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-273007-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-0.988];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

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
 .../arm64/boot/dts/qcom/monaco-monza-som.dtsi | 325 ++++++++++++++++++
 1 file changed, 325 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/monaco-monza-som.dtsi

diff --git a/arch/arm64/boot/dts/qcom/monaco-monza-som.dtsi b/arch/arm64/boot/dts/qcom/monaco-monza-som.dtsi
new file mode 100644
index 000000000000..9c4f515337de
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/monaco-monza-som.dtsi
@@ -0,0 +1,325 @@
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
+	num-lanes = <2>;
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
+	num-lanes = <4>;
+
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
+&refgen{
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
-- 
2.47.3


