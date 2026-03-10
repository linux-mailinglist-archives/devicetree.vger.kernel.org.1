Return-Path: <devicetree+bounces-273274-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uCzvNVGxr2nrbgIAu9opvQ
	(envelope-from <devicetree+bounces-273274-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 06:51:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CD622458BB
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 06:51:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C1E4D302CE9F
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 05:51:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C71253D1CB5;
	Tue, 10 Mar 2026 05:50:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fnYr6mtv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DDA9wxZG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B773CB2E3
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 05:50:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773121858; cv=none; b=eGvA+5zjGfNnbPe7YsRM+jwnbf187AGr3YExQmCA9cEGDiDkZsiedv99AwfVamFKdwn+GELeeohx52P47XMWR83HEXS2Za4R/EN6LKH5k4k2b0bfKoG/n+3lZEGBiTtU/MeAtudtZJI9w+HOripXenQbapnrBWZ5MGSp40dz0a8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773121858; c=relaxed/simple;
	bh=YyAotPRkaJps7T8fOyh5DL9po+iVcuXDBC0dSJwboWs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=YpZ1XBQmrG57HxfCBDrj8WC36t/PXbgXVMqDv1rdDVUZFFEcM84WR1l2SSVmJAGGeVUzyvAW6Ip+oqV+g7L3PkM/OWGCazx2uAoG3ELCGzI8rK5fO4WmwYNHVvyYsesnYFSplzSuuAKMgYSTvTdjkHxE5YsOkeIfWLOF4s+TlRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fnYr6mtv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DDA9wxZG; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62A2EUrb2373264
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 05:50:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=ojFV/ukkOmQ
	j7HcmeGSslBqxfef82h0E0HjMtKjnxLE=; b=fnYr6mtvGxiKvJvo9EQJ0+9FuDG
	ICtPHw7m5r/M6O8AQb/WXLi0je/QEtdE7WanugqZ4r5blyXnHvm00RMeOiEICWlp
	5ZEI8NXLl1Jzx69QcQ66BUkGZVtnIhv4THYczWA3ehQOBNgoadTKVfCaCRFZ5bPR
	N7Jr07Xr4VgvDYH/EaVGGeNyeMQ1eimCpodr3Q7ctG0RtM0ehyxIG3BZJpO+Dyq0
	WMxQrziiX9Fvdx8aBlEBznmggOL/2pF7fMBiPrB1I0G+SP9NmaPUvn5EMB8SF2bz
	RhGUH9SWGpKV7m/DOp+ukPWuilgAIJjlGM+891G+gzvwt0bCsOZusFR5rNw==
Received: from mail-oi1-f199.google.com (mail-oi1-f199.google.com [209.85.167.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cswwkk3qw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 05:50:46 +0000 (GMT)
Received: by mail-oi1-f199.google.com with SMTP id 5614622812f47-46713069242so3369854b6e.1
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 22:50:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773121845; x=1773726645; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ojFV/ukkOmQj7HcmeGSslBqxfef82h0E0HjMtKjnxLE=;
        b=DDA9wxZGk8EcERd0Laen8Lk61z0V+J/PC8N7YiKjzaWXeejjPT9DqdEramhOeweN5C
         sakJkVADtYEimyrFD5vAsmAxupuZXOEY+gx74LZ3oOfWI5CUA9FuuouWEYmyQ4Ck1vFE
         FbjqkrJzNG0WfKWPei/BrG5yirc+V7BiC0uRuvb06+IDkEUo6Givv5R261EuPOdhWmC5
         yj895H5Rw1SUnhLBgzsyxXp39mwPf19bLUSjmMFlWWpebRr2uyfXhb2gI5ePUqrrwAXu
         OPkut6JobYspywYbcd5u8QVgUmJChKXl9W/iWwtVfES5xutF3AdpNN3QU0mpJNwzJqvB
         ZPTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773121845; x=1773726645;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ojFV/ukkOmQj7HcmeGSslBqxfef82h0E0HjMtKjnxLE=;
        b=OCJ5TevvlvalTks6AUc3ELJlcINEdGpVUeK4sciAuhA1mGy/NB/OskUvsLmNoj/tOZ
         r90ACfvNf2MxT7XWwabk/20s2QaMyAXaVIKtPb4L//5bRAzGjMFHZQUzh9ilnMZhBnWN
         xg/hzqT1jVtOlyb3rm5mB1TfEUHOZ8+2Q5/M8r52SRCvJ1ESxjmKDUbvltpVwHX61viZ
         piczpk+Rmc4B8ejHIDPVcCt9SZrurd6nFUisTbbgpeBDnyEdpwu0e7t/kgBaZZuH+7uu
         lEjeq5uZmQ0QNJgzScyRADWAWgHBgW5SLXCvjNZ8mMMahZrH28JEXfhaNm0XSoHSqfLZ
         WYPA==
X-Forwarded-Encrypted: i=1; AJvYcCVqmZy9rAE0DsxQrTfjsaVuX6DKB23keD5wbKkXxlAMW/w8KVa2f30GilWIgvdZT5AJlwOptp89HOzW@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3+oTZvlzk5WZqmda7khkW8Y2CgP6Pf816HN/o+v4ck9kLXKs2
	o3lsD/lmh+z4ZV5quFy0f1c3njIJYRAapGU8qZxUnGXIImsW1gcGma/31tQZg1mjtndvpftZKF/
	9pDcel9LwYAJB8TOSpyQKOw44puefXJ3bJN/lxV1Gtgbr19RS/Vn2Tg8i5uIg781x
X-Gm-Gg: ATEYQzwyX4vJZ7cUqdeWR3UWyCaE30BCOO5aJBzclKkPMGrp8NkM0+bY7SS3AMere2g
	HZVQCjGyhQmBxxGQ5Pq3NfA6ypLv+3pWQXSyhyJVz+nzzaXvp5yd9JpyglodeIFbWFcbpYW8ybx
	oOlOtn+z94qzWc/6FS8g8C9y63X8cHTPcI0RBBTH0bfCFQIkEzRYT33kP1gYKvd9Vo5ZTiHXpJe
	vhY/wJO4eaqhe9W6tRs28HXC6axtdFtrLDAEdg1TlM1jn/PyrMpEKGgu5700nPPRKptNIW6Mnv8
	YyHiV46CGsN5BI0xKLatz+6tdHaOx3tZEyw/u3WyGyYF5N0zB4q8KqTcVjvqU2c0e1ry+sLwJHQ
	rXrq8eDW5YnVcRtqSilfBjoM2+Sh3NhyMw3+zcqOH7z0n9ynPKcXHRDuvk+lAz+cAm1Cb71wbu7
	bfnMYmPbKPFg==
X-Received: by 2002:a05:6808:1507:b0:44f:e954:ba44 with SMTP id 5614622812f47-466dca74888mr7452916b6e.28.1773121845033;
        Mon, 09 Mar 2026 22:50:45 -0700 (PDT)
X-Received: by 2002:a05:6808:1507:b0:44f:e954:ba44 with SMTP id 5614622812f47-466dca74888mr7452900b6e.28.1773121844521;
        Mon, 09 Mar 2026 22:50:44 -0700 (PDT)
Received: from hu-ggarmidi-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-41756d4c581sm1487020fac.10.2026.03.09.22.50.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 22:50:44 -0700 (PDT)
From: Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, sibi.sankar@oss.qualcomm.com,
        pankaj.patil@oss.qualcomm.com, rajendra.nayak@oss.qualcomm.com,
        Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
Subject: [PATCH 3/3] arm64: dts: qcom: Add Mahua SoC and CRD
Date: Mon,  9 Mar 2026 22:49:47 -0700
Message-Id: <20260310054947.2114445-4-gopikrishna.garmidi@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260310054947.2114445-1-gopikrishna.garmidi@oss.qualcomm.com>
References: <20260310054947.2114445-1-gopikrishna.garmidi@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=cZ/fb3DM c=1 sm=1 tr=0 ts=69afb136 cx=c_pps
 a=yymyAM/LQ7lj/HqAiIiKTw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=3Evy3uxcNZOedNsqlpQA:9 a=efpaJB4zofY2dbm2aIRb:22
X-Proofpoint-ORIG-GUID: NUl_PmXt1LI48yv4W0xQscEJb-51lS_j
X-Proofpoint-GUID: NUl_PmXt1LI48yv4W0xQscEJb-51lS_j
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDA0NiBTYWx0ZWRfX5GOn0LkWH2Pa
 QpLvfOu7buJFz8SCtjuXgz6wcbcvVRJd4kEaZOvzaK/F3QSdGYX0oIMuxM0/q/UEoOwtxD4T1KS
 BDFwQ3U+x85QxKwMyh6GgpkAPDxPbMMcW8+NK/w5UQJ16lzp5fD0IWyX1zPnvBOBFLjywjl4uGZ
 gVTgoBxPsURsPlGgRqMONh4gWyHaoMJvhDW4BwGIpYYrmt/QEQdXcgwsKIaHY/lHkdkLTKTsSXt
 M4Ucl7DqYo3Ei1Kc170YodSjmAVwrJnNF1bIBZZR9UnAKblcukrS2InTEL8shJH9ipq1EgVzImO
 nM3Nwxolg9KKPNScGFU3GtQI9WncA1NAngbVjP4RUtQsll1/42soaghPli2W2IuJyXqTlWzxnHt
 5XoiE7VhGH768X5kiqzkEPVe4Byb04NFvqbvpxK1QFa1XH4j7/pVK3GgxhJ9nc/LePdDyWYa3oo
 rL1/oC/SIrQWBWbpGYg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 phishscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100046
X-Rspamd-Queue-Id: 9CD622458BB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	URIBL_MULTI_FAIL(0.00)[oss.qualcomm.com:server fail,qualcomm.com:server fail,sto.lore.kernel.org:server fail];
	TAGGED_FROM(0.00)[bounces-273274-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gopikrishna.garmidi@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Introduce support for the Mahua SoC and the CRD based on it. Some of
the notable differences are the absent CPU cluster, interconnect, TLMM,
thermal zones and adjusted PCIe west clocks. Everything else should
work as-is.

Co-developed-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
Co-developed-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
Co-developed-by: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
Signed-off-by: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
Signed-off-by: Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/Makefile            |    1 +
 arch/arm64/boot/dts/qcom/glymur.dtsi         |    2 +-
 arch/arm64/boot/dts/qcom/mahua-crd.dts       |   21 +
 arch/arm64/boot/dts/qcom/mahua.dtsi          | 1040 ++++++++++++++++++
 arch/arm64/boot/dts/qcom/pmcx0102.dtsi       |    2 +-
 arch/arm64/boot/dts/qcom/pmh0104-glymur.dtsi |    4 +-
 6 files changed, 1066 insertions(+), 4 deletions(-)
 create mode 100644 arch/arm64/boot/dts/qcom/mahua-crd.dts
 create mode 100644 arch/arm64/boot/dts/qcom/mahua.dtsi

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index 317af937d038..e85ff36012f1 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -44,6 +44,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= lemans-evk-camera.dtb
 lemans-evk-el2-dtbs := lemans-evk.dtb lemans-el2.dtbo
 
 dtb-$(CONFIG_ARCH_QCOM)	+= lemans-evk-el2.dtb
+dtb-$(CONFIG_ARCH_QCOM)	+= mahua-crd.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= milos-fairphone-fp6.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= monaco-evk.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= msm8216-samsung-fortuna3g.dtb
diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
index e269cec7942c..4e0b44af073e 100644
--- a/arch/arm64/boot/dts/qcom/glymur.dtsi
+++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
@@ -282,7 +282,7 @@ core5 {
 				};
 			};
 
-			cluster2 {
+			cpu_map_cluster2: cluster2 {
 				core0 {
 					cpu = <&cpu12>;
 				};
diff --git a/arch/arm64/boot/dts/qcom/mahua-crd.dts b/arch/arm64/boot/dts/qcom/mahua-crd.dts
new file mode 100644
index 000000000000..9c8244e892dd
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/mahua-crd.dts
@@ -0,0 +1,21 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+/dts-v1/;
+
+#include "mahua.dtsi"
+#include "glymur-crd.dtsi"
+
+/delete-node/ &pmcx0102_d_e0;
+/delete-node/ &pmcx0102_d0_thermal;
+/delete-node/ &pmh0104_i_e0;
+/delete-node/ &pmh0104_i0_thermal;
+/delete-node/ &pmh0104_j_e0;
+/delete-node/ &pmh0104_j0_thermal;
+
+/ {
+	model = "Qualcomm Technologies, Inc. Mahua CRD";
+	compatible = "qcom,mahua-crd", "qcom,mahua";
+};
diff --git a/arch/arm64/boot/dts/qcom/mahua.dtsi b/arch/arm64/boot/dts/qcom/mahua.dtsi
new file mode 100644
index 000000000000..893b3a721bc6
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/mahua.dtsi
@@ -0,0 +1,1040 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+/* Mahua is heavily based on Glymur, with some meaningful differences */
+#include "glymur.dtsi"
+
+/delete-node/ &cluster2_pd;
+/delete-node/ &cpu_map_cluster2;
+/delete-node/ &cpu12;
+/delete-node/ &cpu13;
+/delete-node/ &cpu14;
+/delete-node/ &cpu15;
+/delete-node/ &cpu16;
+/delete-node/ &cpu17;
+/delete-node/ &cpu_pd12;
+/delete-node/ &cpu_pd13;
+/delete-node/ &cpu_pd14;
+/delete-node/ &cpu_pd15;
+/delete-node/ &cpu_pd16;
+/delete-node/ &cpu_pd17;
+/delete-node/ &thermal_zones;
+/delete-node/ &tsens6;
+/delete-node/ &tsens7;
+
+&aggre1_noc {
+	compatible = "qcom,mahua-aggre1-noc", "qcom,glymur-aggre1-noc";
+};
+
+&aggre2_noc {
+	compatible = "qcom,mahua-aggre2-noc", "qcom,glymur-aggre2-noc";
+};
+
+&aggre3_noc {
+	compatible = "qcom,mahua-aggre3-noc", "qcom,glymur-aggre3-noc";
+};
+
+&aggre4_noc {
+	compatible = "qcom,mahua-aggre4-noc", "qcom,glymur-aggre4-noc";
+};
+
+&clk_virt {
+	compatible = "qcom,mahua-clk-virt", "qcom,glymur-clk-virt";
+};
+
+&cnoc_main {
+	compatible = "qcom,mahua-cnoc-main", "qcom,glymur-cnoc-main";
+};
+
+&config_noc {
+	compatible = "qcom,mahua-cnoc-cfg";
+};
+
+&hsc_noc {
+	compatible = "qcom,mahua-hscnoc";
+};
+
+&lpass_ag_noc {
+	compatible = "qcom,mahua-lpass-ag-noc", "qcom,glymur-lpass-ag-noc";
+};
+
+&lpass_lpiaon_noc {
+	compatible = "qcom,mahua-lpass-lpiaon-noc", "qcom,glymur-lpass-lpiaon-noc";
+};
+
+&lpass_lpicx_noc {
+	compatible = "qcom,mahua-lpass-lpicx-noc", "qcom,glymur-lpass-lpicx-noc";
+};
+
+&mc_virt {
+	compatible = "qcom,mahua-mc-virt";
+};
+
+&mmss_noc {
+	compatible = "qcom,mahua-mmss-noc", "qcom,glymur-mmss-noc";
+};
+
+&nsi_noc {
+	compatible = "qcom,mahua-nsinoc", "qcom,glymur-nsinoc";
+};
+
+&nsp_noc {
+	compatible = "qcom,mahua-nsp-noc", "qcom,glymur-nsp-noc";
+};
+
+&oobm_ss_noc {
+	compatible = "qcom,mahua-oobm-ss-noc", "qcom,glymur-oobm-ss-noc";
+};
+
+&pcie_east_anoc {
+	compatible = "qcom,mahua-pcie-east-anoc", "qcom,glymur-pcie-east-anoc";
+};
+
+&pcie_east_slv_noc {
+	compatible = "qcom,mahua-pcie-east-slv-noc", "qcom,glymur-pcie-east-slv-noc";
+};
+
+&pcie_west_anoc {
+	compatible = "qcom,mahua-pcie-west-anoc";
+	clocks = <&gcc GCC_AGGRE_NOC_PCIE_3B_WEST_SF_AXI_CLK>,
+		 <&gcc GCC_AGGRE_NOC_PCIE_4_WEST_SF_AXI_CLK>,
+		 <&gcc GCC_AGGRE_NOC_PCIE_6_WEST_SF_AXI_CLK>;
+};
+
+&pcie_west_slv_noc {
+	compatible = "qcom,mahua-pcie-west-slv-noc";
+};
+
+&system_noc {
+	compatible = "qcom,mahua-system-noc", "qcom,glymur-system-noc";
+};
+
+&tlmm {
+	compatible = "qcom,mahua-tlmm";
+};
+
+&tsens4 {
+	#qcom,sensors = <13>;
+};
+
+&tsens5 {
+	#qcom,sensors = <15>;
+};
+
+/ {
+	thermal_zones: thermal-zones {
+		aoss-0-thermal {
+			thermal-sensors = <&tsens0 0>;
+
+			trips {
+				aoss-0-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-0-0-0-thermal {
+			thermal-sensors = <&tsens0 1>;
+
+			trips {
+				cpu-0-0-0-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-0-0-1-thermal {
+			thermal-sensors = <&tsens0 2>;
+
+			trips {
+				cpu-0-0-1-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-0-1-0-thermal {
+			thermal-sensors = <&tsens0 3>;
+
+			trips {
+				cpu-0-1-0-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-0-1-1-thermal {
+			thermal-sensors = <&tsens0 4>;
+
+			trips {
+				cpu-0-1-1-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-0-2-0-thermal {
+			thermal-sensors = <&tsens0 5>;
+
+			trips {
+				cpu-0-2-0-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-0-2-1-thermal {
+			thermal-sensors = <&tsens0 6>;
+
+			trips {
+				cpu-0-2-1-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-0-3-0-thermal {
+			thermal-sensors = <&tsens0 7>;
+
+			trips {
+				cpu-0-3-0-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-0-3-1-thermal {
+			thermal-sensors = <&tsens0 8>;
+
+			trips {
+				cpu-0-3-1-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-0-4-0-thermal {
+			thermal-sensors = <&tsens0 9>;
+
+			trips {
+				cpu-0-4-0-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-0-4-1-thermal {
+			thermal-sensors = <&tsens0 10>;
+
+			trips {
+				cpu-0-4-1-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-0-5-0-thermal {
+			thermal-sensors = <&tsens0 11>;
+
+			trips {
+				cpu-0-5-0-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-0-5-1-thermal {
+			thermal-sensors = <&tsens0 12>;
+
+			trips {
+				cpu-0-5-1-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		aoss-1-thermal {
+			thermal-sensors = <&tsens1 0>;
+
+			trips {
+				aoss-1-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpullc-0-0-thermal {
+			thermal-sensors = <&tsens1 1>;
+
+			trips {
+				cpullc-0-0-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpullc-0-1-thermal {
+			thermal-sensors = <&tsens1 2>;
+
+			trips {
+				cpullc-0-1-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		qmx-0-0-thermal {
+			thermal-sensors = <&tsens1 3>;
+
+			trips {
+				qmx-0-0-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		qmx-0-1-thermal {
+			thermal-sensors = <&tsens1 4>;
+
+			trips {
+				qmx-0-1-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		qmx-0-2-thermal {
+			thermal-sensors = <&tsens1 5>;
+
+			trips {
+				qmx-0-2-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		ddr-0-thermal {
+			thermal-sensors = <&tsens1 6>;
+
+			trips {
+				ddr-0-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		ddr-1-thermal {
+			thermal-sensors = <&tsens1 7>;
+
+			trips {
+				ddr-1-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		video-0-thermal {
+			thermal-sensors = <&tsens1 8>;
+
+			trips {
+				video-0-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		aoss-2-thermal {
+			thermal-sensors = <&tsens2 0>;
+
+			trips {
+				aoss-2-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-1-0-0-thermal {
+			thermal-sensors = <&tsens2 1>;
+
+			trips {
+				cpu-1-0-0-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-1-0-1-thermal {
+			thermal-sensors = <&tsens2 2>;
+
+			trips {
+				cpu-1-0-1-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-1-1-0-thermal {
+			thermal-sensors = <&tsens2 3>;
+
+			trips {
+				cpu-1-1-0-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-1-1-1-thermal {
+			thermal-sensors = <&tsens2 4>;
+
+			trips {
+				cpu-1-1-1-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-1-2-0-thermal {
+			thermal-sensors = <&tsens2 5>;
+
+			trips {
+				cpu-1-2-0-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-1-2-1-thermal {
+			thermal-sensors = <&tsens2 6>;
+
+			trips {
+				cpu-1-2-1-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-1-3-0-thermal {
+			thermal-sensors = <&tsens2 7>;
+
+			trips {
+				cpu-1-3-0-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-1-3-1-thermal {
+			thermal-sensors = <&tsens2 8>;
+
+			trips {
+				cpu-1-3-1-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-1-4-0-thermal {
+			thermal-sensors = <&tsens2 9>;
+
+			trips {
+				cpu-1-4-0-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-1-4-1-thermal {
+			thermal-sensors = <&tsens2 10>;
+
+			trips {
+				cpu-1-4-1-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-1-5-0-thermal {
+			thermal-sensors = <&tsens2 11>;
+
+			trips {
+				cpu-1-5-0-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-1-5-1-thermal {
+			thermal-sensors = <&tsens2 12>;
+
+			trips {
+				cpu-1-5-1-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		aoss-3-thermal {
+			thermal-sensors = <&tsens3 0>;
+
+			trips {
+				aoss-3-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpullc-1-0-thermal {
+			thermal-sensors = <&tsens3 1>;
+
+			trips {
+				cpullc-1-0-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpullc-1-1-thermal {
+			thermal-sensors = <&tsens3 2>;
+
+			trips {
+				cpullc-1-1-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		qmx-1-0-thermal {
+			thermal-sensors = <&tsens3 3>;
+
+			trips {
+				qmx-1-0-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		qmx-1-1-thermal {
+			thermal-sensors = <&tsens3 4>;
+
+			trips {
+				qmx-1-1-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		qmx-1-2-thermal {
+			thermal-sensors = <&tsens3 5>;
+
+			trips {
+				qmx-1-2-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		qmx-1-3-thermal {
+			thermal-sensors = <&tsens3 6>;
+
+			trips {
+				qmx-1-3-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		qmx-1-4-thermal {
+			thermal-sensors = <&tsens3 7>;
+
+			trips {
+				qmx-1-4-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		aoss-4-thermal {
+			thermal-sensors = <&tsens4 0>;
+
+			trips {
+				aoss-4-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		nsphvx-0-thermal {
+			thermal-sensors = <&tsens4 1>;
+
+			trips {
+				nsphvx-0-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		nsphvx-1-thermal {
+			thermal-sensors = <&tsens4 2>;
+
+			trips {
+				nsphvx-1-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		nsphvx-2-thermal {
+			thermal-sensors = <&tsens4 3>;
+
+			trips {
+				nsphvx-2-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		nsphvx-3-thermal {
+			thermal-sensors = <&tsens4 4>;
+
+			trips {
+				nsphvx-3-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		nsphmx-0-thermal {
+			thermal-sensors = <&tsens4 5>;
+
+			trips {
+				nsphmx-0-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		nsphmx-1-thermal {
+			thermal-sensors = <&tsens4 6>;
+
+			trips {
+				nsphmx-1-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		nsphmx-2-thermal {
+			thermal-sensors = <&tsens4 7>;
+
+			trips {
+				nsphmx-2-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		nsphmx-3-thermal {
+			thermal-sensors = <&tsens4 8>;
+
+			trips {
+				nsphmx-3-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		camera-0-thermal {
+			thermal-sensors = <&tsens4 9>;
+
+			trips {
+				camera-0-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		camera-1-thermal {
+			thermal-sensors = <&tsens4 10>;
+
+			trips {
+				camera-1-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		aoss-5-thermal {
+			thermal-sensors = <&tsens5 0>;
+
+			trips {
+				aoss-5-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		gpu-0-0-thermal {
+			thermal-sensors = <&tsens5 1>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				gpu-0-0-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		gpu-0-1-thermal {
+			thermal-sensors = <&tsens5 2>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				gpu-0-1-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		gpu-0-2-thermal {
+			thermal-sensors = <&tsens5 3>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				gpu-0-2-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		gpu-1-0-thermal {
+			thermal-sensors = <&tsens5 4>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				gpu-1-0-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		gpu-1-1-thermal {
+			thermal-sensors = <&tsens5 5>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				gpu-1-1-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		gpu-1-2-thermal {
+			thermal-sensors = <&tsens5 6>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				gpu-1-2-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		gpu-2-0-thermal {
+			thermal-sensors = <&tsens5 7>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				gpu-2-0-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		gpu-2-1-thermal {
+			thermal-sensors = <&tsens5 8>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				gpu-2-1-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		gpu-2-2-thermal {
+			thermal-sensors = <&tsens5 9>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				gpu-2-2-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		gpuss-0-thermal {
+			thermal-sensors = <&tsens5 10>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				gpuss-0-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		gpuss-1-thermal {
+			thermal-sensors = <&tsens5 11>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				gpuss-1-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		gpuss-2-thermal {
+			thermal-sensors = <&tsens5 12>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				gpuss-2-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		gpuss-3-thermal {
+			thermal-sensors = <&tsens5 13>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				gpuss-3-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		gpuss-4-thermal {
+			thermal-sensors = <&tsens5 14>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				gpuss-4-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+	};
+};
diff --git a/arch/arm64/boot/dts/qcom/pmcx0102.dtsi b/arch/arm64/boot/dts/qcom/pmcx0102.dtsi
index c3ccd2b75609..db2da9ef4f01 100644
--- a/arch/arm64/boot/dts/qcom/pmcx0102.dtsi
+++ b/arch/arm64/boot/dts/qcom/pmcx0102.dtsi
@@ -46,7 +46,7 @@ trip1 {
 			};
 		};
 
-		pmcx0102-d0-thermal {
+		pmcx0102_d0_thermal: pmcx0102-d0-thermal {
 			polling-delay-passive = <100>;
 			thermal-sensors = <&pmcx0102_d_e0_temp_alarm>;
 
diff --git a/arch/arm64/boot/dts/qcom/pmh0104-glymur.dtsi b/arch/arm64/boot/dts/qcom/pmh0104-glymur.dtsi
index d89cceda53a3..7a1e5f355c17 100644
--- a/arch/arm64/boot/dts/qcom/pmh0104-glymur.dtsi
+++ b/arch/arm64/boot/dts/qcom/pmh0104-glymur.dtsi
@@ -8,7 +8,7 @@
 
 /{
 	thermal_zones {
-		pmh0104-i0-thermal {
+		pmh0104_i0_thermal: pmh0104-i0-thermal {
 			polling-delay-passive = <100>;
 			thermal-sensors = <&pmh0104_i_e0_temp_alarm>;
 
@@ -27,7 +27,7 @@ trip1 {
 			};
 		};
 
-		pmh0104-j0-thermal {
+		pmh0104_j0_thermal: pmh0104-j0-thermal {
 			polling-delay-passive = <100>;
 			thermal-sensors = <&pmh0104_j_e0_temp_alarm>;
 
-- 
2.34.1


