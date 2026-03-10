Return-Path: <devicetree+bounces-273273-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SEsGB7mxr2nrbgIAu9opvQ
	(envelope-from <devicetree+bounces-273273-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 06:52:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9103D2458E8
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 06:52:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 777BA3042D6E
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 05:51:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D37963CCA17;
	Tue, 10 Mar 2026 05:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WSS5V6i0";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="c6lNo6IV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 016453BFE3B
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 05:50:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773121853; cv=none; b=W8VvgJjUGV4AbURkYr3X2pkyderxVy3vecY1MclvLgMZPmisFxEmuKzMLRugmmcvwLmk7ubsyRz+RaoT8RjUdLptpPAKO1LTrh6KphOj2CntdmaY2XV1xEfrdGPoxEaIU2HzOVaOu702gUuPPiWnc2kr5XlO+nls2FTlPXRWTuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773121853; c=relaxed/simple;
	bh=M+37TE7cJrKeBgcrrFnlMNLpxGpEvoWD+DOgRbfsVLY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Ci5C9OJgE+olBc+uHNG3cRivPtIdfsYO7OdKDq90iNfUUa19J9iIX/Jv38DGNmaPJXL19XF+xprUKbA827TaKBtGcFWm82CFDSXNF2PxrrDh/C8zBurq8KxtThSuvnDTAV4RUnzF5aGPhKFGt/3HVqtMYR3a4fRSPsCROUkdjn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WSS5V6i0; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=c6lNo6IV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62A2ES2J1459432
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 05:50:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=sXrVRRi9afR
	AN+yLGBmnpUZgDG7c6wXkm98IyxN80zc=; b=WSS5V6i0h6sF1lY6GH/VkzTCyz1
	MU3tDP1yYYGTe04K6KdcZThlKM1S6ZMHPhYuBOiMye9aPYOaOFJMbZKme2sbyPP4
	9dU//Sk0zFXSowH+QpcjPa4pm0hwE9imQ4qwLQVF4H4ykhHDGNT6JeUse0xhHbHU
	AOMdlNltL/fSzGhCf8sGhfc+gLwJQU8v6vj+tcQz9+aA8Nk4bIGk5AZWdh63HNWy
	B7PVgbAHloY19oFqR6D7d8sKkKDKgFE4jnItesM2L0E8fRp9VE3AYGzi/uHGpIJq
	GOnjGUj5lF51hMVTmrm9b4SldvzawOjPa/dCzooQbn4WzUPfFDWK0+PKD7g==
Received: from mail-oa1-f71.google.com (mail-oa1-f71.google.com [209.85.160.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4csyfy2v3r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 05:50:41 +0000 (GMT)
Received: by mail-oa1-f71.google.com with SMTP id 586e51a60fabf-4170823763cso18926508fac.3
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 22:50:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773121841; x=1773726641; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sXrVRRi9afRAN+yLGBmnpUZgDG7c6wXkm98IyxN80zc=;
        b=c6lNo6IVU4WUgHmXlX25ld/fqHdAsTG83OhwVZ5RuNBJyyNMALyg6UTj12ZOk/pP1p
         F0xqBjSUS6rhU33YeWz4zrCBeVCbOjuDqyDuc8PQye1haxY9ybr3D1rMMNPJWOi3UB8l
         E1eqFIgALW+8bYwi+nimGXALTR8WeoKq8z3IlMzS5daZNHeJPOASXfAmLn1yGYdiDDrK
         yLj8+sC850CNzaMLsJ7rqK9sKE0TKUDG/BlFulAIqnrb7oXP4joRWwFS767kg8ZcwgLA
         hR3O9WH2CJKU/SJIgHw4JmXKAM1oE3BSDO9J6bPBWdKVd+AWOl7X0brIn34CCmvzShOc
         XRBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773121841; x=1773726641;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=sXrVRRi9afRAN+yLGBmnpUZgDG7c6wXkm98IyxN80zc=;
        b=bAO5/94HGLXK99HV/eO0Za8Cy46KU5WLWVlSJjd3PwQJV6MMqJYX3XWTB1801nfEnZ
         STVet8+eE524PioKuzHl8XfChiSzlpC5iNETbS75MG3HKUyZGq0P7ZVAv6nH2vZpsgQU
         /RJuTWd5+j05t1jINw/oo1QRV15wgN9YAqMz/D17lt27l4SzJCSDDQSmpHgqlGjkVhlb
         3jJyMGncuUwf+KV9417YAAcElunFcAcEk9chg8Wi/dvzOnGw4V/k9ZQ4Ths1gPNwDBpX
         6y3iwOhPg1gM/0kDOOVU0tI4ZP+XQsqfhjT4mRhgRsiOPgn9qkvAh0baE87n2cLwwsuy
         pw3g==
X-Forwarded-Encrypted: i=1; AJvYcCW+sAxTc/8N1WmtK9Mz5Cb5fijlYLyDRLts2n7PHENa2QxApruX/xVjWuVCwhDTesaIcng0eSuDz1y6@vger.kernel.org
X-Gm-Message-State: AOJu0YxmaRZjDi2m3nMFqpQTXA21sPebabjw4hJpzp5mU6iXSNTOww66
	HqHv2DtJDIbly3a/mqrMtq9b1rSlMC2P48kuZUrydEdDxlCWLd58E9HyP1HqUi7SQ/+dm/E2UDh
	lTyh5Gd2hyVgb/IaHgPYt5KdRvs6qAvS1xzj0Xa7aM0W/XS2h3zxbSN9DiQOBlJVZ
X-Gm-Gg: ATEYQzwB+k1WGne/EdKP2aIIkx9SXQluXBo2qndNCAIT0ukawezGh7gG0FbqTSKVP42
	oPzLmgnp83nKxlK1bE2EW1+mft+JoDLWFuysvLYIm43he8HAs2bHHB+/qe0BYT3TC9Jezy9iGLj
	aSSz2PSi2YITETqysYCecyL1aC1G/Tsj6nEDgEjvjRAIFYl19uUbow9OA0p2MjZRqCUgWfrm2ML
	T7jr8jlJ/id/ZJaNPvuwPJiqh4TO4XAX0v8D/YnojUiVetB1pzSfJ/VPkW/GyES5P56YInXQLJt
	OrRoev1ynYOliLl7TUdzYgZ/jAvDCUHEkd6V9DqSZGOzRTmTVw7uJFQ/PdKyQY69xT8A82bDb80
	53bKHKXGo6kCMj+VATOyHVaMmvqdAuGNQmU0TbDS5tpPmLFG2z72txUbtzrjMxGJ6myg8Y2kt6X
	QalXrLzA8xVg==
X-Received: by 2002:a05:6870:510:b0:417:4f7c:4ec with SMTP id 586e51a60fabf-4174f7c5685mr1759767fac.15.1773121840942;
        Mon, 09 Mar 2026 22:50:40 -0700 (PDT)
X-Received: by 2002:a05:6870:510:b0:417:4f7c:4ec with SMTP id 586e51a60fabf-4174f7c5685mr1759757fac.15.1773121840422;
        Mon, 09 Mar 2026 22:50:40 -0700 (PDT)
Received: from hu-ggarmidi-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-41756d4c581sm1487020fac.10.2026.03.09.22.50.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 22:50:40 -0700 (PDT)
From: Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, sibi.sankar@oss.qualcomm.com,
        pankaj.patil@oss.qualcomm.com, rajendra.nayak@oss.qualcomm.com,
        Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
Subject: [PATCH 2/3] arm64: dts: qcom: Commonize Glymur CRD DTSI
Date: Mon,  9 Mar 2026 22:49:46 -0700
Message-Id: <20260310054947.2114445-3-gopikrishna.garmidi@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDA0NiBTYWx0ZWRfX+BNXIAC+EX7d
 Yt9FxSyPtlAoRivLF82wG4KbqnnYWtLipXAW6cAFsb/VQwHmb9cI0z3zIgSvJG7etS5SSXlAEwX
 Ye8ZcyHwZx2VE3XmBfnajidQhxD2PGbjTX1asryDfh0hBUXw0jXuy1nEB51sOZ3iCO4pwTpZK3n
 V7f314zRocy30A7dpu+VIHHb+GU0SQAdQ7fJCp6V1zdb1z5Q/oPVa5OnUDbMeapbN91fTCIugHO
 MpxrTp9Ghoe3n0hZjM08GnB2PitmmmnBS8/aNKiWZKmlrPhjRS8mkfScgtuBSzSM6yhU7rKMaHU
 Wl65r2p0Ft5lYqs+2FmJ7/40mBD8BKqokZ1/rBa9/x2j5xRY0hAgJPOJ2rcnqAy8Gb9RVybGR1Q
 aq0cfRUR6x1H2yMtZza/+SYO8OmYR1ub4moSkzProMPn30NvzFLqJzeMNrFUdVxqZs2HHw0EFkq
 SLXUOtXfMd3RAuz26jg==
X-Authority-Analysis: v=2.4 cv=OcmVzxTY c=1 sm=1 tr=0 ts=69afb131 cx=c_pps
 a=CWtnpBpaoqyeOyNyJ5EW7Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=EUspDBNiAAAA:8
 a=Lx9aQ9xY3w96JebXmp4A:9 a=vh23qwtRXIYOdz9xvnmn:22
X-Proofpoint-GUID: AVm2uDRW8moTHLIhcULh1Girm7j0ih5M
X-Proofpoint-ORIG-GUID: AVm2uDRW8moTHLIhcULh1Girm7j0ih5M
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 phishscore=0 clxscore=1015 adultscore=0
 bulkscore=0 suspectscore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100046
X-Rspamd-Queue-Id: 9103D2458E8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273273-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_NEQ_ENVFROM(0.00)[gopikrishna.garmidi@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Commonize the existing Glymur DTSI to allow reuse across the different
Glymur SKUs.

Also leave PCIe3b nodes disabled until the PCIe3b PHY init sequence
support gets added, since it's disabled at the UEFI level by default.

Signed-off-by: Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur-crd.dts       | 586 +-----------------
 .../qcom/{glymur-crd.dts => glymur-crd.dtsi}  |   7 -
 2 files changed, 1 insertion(+), 592 deletions(-)
 copy arch/arm64/boot/dts/qcom/{glymur-crd.dts => glymur-crd.dtsi} (99%)

diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
index 877945319012..0efd9e27c82f 100644
--- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
+++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
@@ -6,593 +6,9 @@
 /dts-v1/;
 
 #include "glymur.dtsi"
-#include "pmcx0102.dtsi"        /* SPMI0: SID-2/3 SPMI1: SID-2/3 */
-#include "pmh0101.dtsi"         /* SPMI0: SID-1                  */
-#include "pmh0110-glymur.dtsi"  /* SPMI0: SID-5/7 SPMI1: SID-5   */
-#include "pmh0104-glymur.dtsi"  /* SPMI0: SID-8/9 SPMI1: SID-11  */
-#include "pmk8850.dtsi"         /* SPMI0: SID-0                  */
-#include "smb2370.dtsi"         /* SPMI2: SID-9/10/11            */
+#include "glymur-crd.dtsi"
 
 / {
 	model = "Qualcomm Technologies, Inc. Glymur CRD";
 	compatible = "qcom,glymur-crd", "qcom,glymur";
-
-	aliases {
-		serial0 = &uart21;
-		serial1 = &uart14;
-		i2c0 = &i2c0;
-		i2c1 = &i2c4;
-		i2c2 = &i2c5;
-		spi0 = &spi18;
-	};
-
-	chosen {
-		stdout-path = "serial0:115200n8";
-	};
-
-	clocks {
-		xo_board: xo-board {
-			compatible = "fixed-clock";
-			clock-frequency = <38400000>;
-			#clock-cells = <0>;
-		};
-
-		sleep_clk: sleep-clk {
-			compatible = "fixed-clock";
-			clock-frequency = <32000>;
-			#clock-cells = <0>;
-		};
-	};
-
-	gpio-keys {
-		compatible = "gpio-keys";
-
-		pinctrl-0 = <&key_vol_up_default>;
-		pinctrl-names = "default";
-
-		key-volume-up {
-			label = "Volume Up";
-			linux,code = <KEY_VOLUMEUP>;
-			gpios = <&pmh0101_gpios 6 GPIO_ACTIVE_LOW>;
-			debounce-interval = <15>;
-			linux,can-disable;
-			wakeup-source;
-		};
-	};
-
-	vreg_nvme: regulator-nvme {
-		compatible = "regulator-fixed";
-
-		regulator-name = "VREG_NVME_3P3";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-
-		gpio = <&pmh0101_gpios 14 GPIO_ACTIVE_HIGH>;
-		enable-active-high;
-
-		pinctrl-0 = <&nvme_reg_en>;
-		pinctrl-names = "default";
-
-		regulator-boot-on;
-	};
-
-	vreg_nvmesec: regulator-nvmesec {
-		compatible = "regulator-fixed";
-
-		regulator-name = "VREG_NVME_SEC_3P3";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-
-		gpio = <&pmh0110_f_e1_gpios 14 GPIO_ACTIVE_HIGH>;
-		enable-active-high;
-
-		pinctrl-0 = <&nvme_sec_reg_en>;
-		pinctrl-names = "default";
-
-		regulator-boot-on;
-	};
-
-	vreg_wlan: regulator-wlan {
-		compatible = "regulator-fixed";
-
-		regulator-name = "VREG_WLAN_3P3";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-
-		gpio = <&tlmm 94 GPIO_ACTIVE_HIGH>;
-		enable-active-high;
-
-		pinctrl-0 = <&wlan_reg_en>;
-		pinctrl-names = "default";
-
-		regulator-boot-on;
-	};
-
-	vreg_wwan: regulator-wwan {
-		compatible = "regulator-fixed";
-
-		regulator-name = "VREG_WWAN_3P3";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-
-		gpio = <&tlmm 246 GPIO_ACTIVE_HIGH>;
-		enable-active-high;
-
-		pinctrl-0 = <&wwan_reg_en>;
-		pinctrl-names = "default";
-	};
-};
-
-&apps_rsc {
-	regulators-0 {
-		compatible = "qcom,pmh0101-rpmh-regulators";
-		qcom,pmic-id = "B_E0";
-
-		vreg_bob1_e0: bob1 {
-			regulator-name = "vreg_bob1_e0";
-			regulator-min-microvolt = <2200000>;
-			regulator-max-microvolt = <4224000>;
-			regulator-initial-mode = <RPMH_REGULATOR_MODE_AUTO>;
-		};
-
-		vreg_bob2_e0: bob2 {
-			regulator-name = "vreg_bob2_e0";
-			regulator-min-microvolt = <2540000>;
-			regulator-max-microvolt = <3600000>;
-			regulator-initial-mode = <RPMH_REGULATOR_MODE_AUTO>;
-		};
-
-		vreg_l1b_e0_1p8: ldo1 {
-			regulator-name = "vreg_l1b_e0_1p8";
-			regulator-min-microvolt = <1800000>;
-			regulator-max-microvolt = <1800000>;
-			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
-		};
-
-		vreg_l2b_e0_2p9: ldo2 {
-			regulator-name = "vreg_l2b_e0_2p9";
-			regulator-min-microvolt = <2904000>;
-			regulator-max-microvolt = <2904000>;
-			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
-		};
-
-		vreg_l7b_e0_2p79: ldo7 {
-			regulator-name = "vreg_l7b_e0_2p79";
-			regulator-min-microvolt = <2790000>;
-			regulator-max-microvolt = <2792000>;
-			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
-		};
-
-		vreg_l8b_e0_1p50: ldo8 {
-			regulator-name = "vreg_l8b_e0_1p50";
-			regulator-min-microvolt = <1504000>;
-			regulator-max-microvolt = <1504000>;
-			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
-		};
-
-		vreg_l9b_e0_2p7: ldo9 {
-			regulator-name = "vreg_l9b_e0_2p7";
-			regulator-min-microvolt = <2704000>;
-			regulator-max-microvolt = <2704000>;
-			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
-		};
-
-		vreg_l10b_e0_1p8: ldo10 {
-			regulator-name = "vreg_l10b_e0_1p8";
-			regulator-min-microvolt = <1800000>;
-			regulator-max-microvolt = <1800000>;
-			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
-		};
-
-		vreg_l11b_e0_1p2: ldo11 {
-			regulator-name = "vreg_l11b_e0_1p2";
-			regulator-min-microvolt = <1200000>;
-			regulator-max-microvolt = <1200000>;
-			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
-		};
-
-		vreg_l12b_e0_1p14: ldo12 {
-			regulator-name = "vreg_l12b_e0_1p14";
-			regulator-min-microvolt = <1144000>;
-			regulator-max-microvolt = <1144000>;
-			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
-		};
-
-		vreg_l15b_e0_1p8: ldo15 {
-			regulator-name = "vreg_l15b_e0_1p8";
-			regulator-min-microvolt = <1800000>;
-			regulator-max-microvolt = <1800000>;
-			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
-		};
-
-		vreg_l17b_e0_2p4: ldo17 {
-			regulator-name = "vreg_l17b_e0_2p4";
-			regulator-min-microvolt = <2400000>;
-			regulator-max-microvolt = <2700000>;
-			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
-		};
-
-		vreg_l18b_e0_1p2: ldo18 {
-			regulator-name = "vreg_l18b_e0_1p2";
-			regulator-min-microvolt = <1200000>;
-			regulator-max-microvolt = <1200000>;
-			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
-		};
-	};
-
-	regulators-1 {
-		compatible = "qcom,pmcx0102-rpmh-regulators";
-		qcom,pmic-id = "C_E1";
-
-		vreg_l1c_e1_0p82: ldo1 {
-			regulator-name = "vreg_l1c_e1_0p82";
-			regulator-min-microvolt = <832000>;
-			regulator-max-microvolt = <832000>;
-			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
-		};
-
-		vreg_l2c_e1_1p14: ldo2 {
-			regulator-name = "vreg_l2c_e1_1p14";
-			regulator-min-microvolt = <1144000>;
-			regulator-max-microvolt = <1144000>;
-			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
-		};
-
-		vreg_l3c_e1_0p89: ldo3 {
-			regulator-name = "vreg_l3c_e1_0p89";
-			regulator-min-microvolt = <890000>;
-			regulator-max-microvolt = <980000>;
-			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
-		};
-
-		vreg_l4c_e1_0p72: ldo4 {
-			regulator-name = "vreg_l4c_e1_0p72";
-			regulator-min-microvolt = <720000>;
-			regulator-max-microvolt = <720000>;
-			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
-		};
-	};
-
-	regulators-2 {
-		compatible = "qcom,pmh0110-rpmh-regulators";
-		qcom,pmic-id = "F_E0";
-
-		vreg_s7f_e0_1p32: smps7 {
-			regulator-name = "vreg_s7f_e0_1p32";
-			regulator-min-microvolt = <1320000>;
-			regulator-max-microvolt = <1352000>;
-			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
-		};
-
-		vreg_s8f_e0_0p95: smps8 {
-			regulator-name = "vreg_s8f_e0_0p95";
-			regulator-min-microvolt = <952000>;
-			regulator-max-microvolt = <1200000>;
-			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
-		};
-
-		vreg_s9f_e0_1p9: smps9 {
-			regulator-name = "vreg_s9f_e0_1p9";
-			regulator-min-microvolt = <1900000>;
-			regulator-max-microvolt = <2000000>;
-			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
-		};
-
-		vreg_l2f_e0_0p82: ldo2 {
-			regulator-name = "vreg_l2f_e0_0p82";
-			regulator-min-microvolt = <832000>;
-			regulator-max-microvolt = <832000>;
-			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
-		};
-
-		vreg_l3f_e0_0p72: ldo3 {
-			regulator-name = "vreg_l3f_e0_0p72";
-			regulator-min-microvolt = <720000>;
-			regulator-max-microvolt = <720000>;
-			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
-		};
-
-		vreg_l4f_e0_0p3: ldo4 {
-			regulator-name = "vreg_l4f_e0_0p3";
-			regulator-min-microvolt = <1080000>;
-			regulator-max-microvolt = <1200000>;
-			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
-		};
-	};
-
-	regulators-3 {
-		compatible = "qcom,pmh0110-rpmh-regulators";
-		qcom,pmic-id = "F_E1";
-
-		vreg_s7f_e1_0p3: smps7 {
-			regulator-name = "vreg_s7f_e1_0p3";
-			regulator-min-microvolt = <300000>;
-			regulator-max-microvolt = <1200000>;
-			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
-		};
-
-		vreg_l1f_e1_0p82: ldo1 {
-			regulator-name = "vreg_l1f_e1_0p82";
-			regulator-min-microvolt = <832000>;
-			regulator-max-microvolt = <832000>;
-			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
-		};
-
-		vreg_l2f_e1_0p83: ldo2 {
-			regulator-name = "vreg_l2f_e1_0p83";
-			regulator-min-microvolt = <832000>;
-			regulator-max-microvolt = <832000>;
-			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
-		};
-
-		vreg_l4f_e1_1p08: ldo4 {
-			regulator-name = "vreg_l4f_e1_1p08";
-			regulator-min-microvolt = <1080000>;
-			regulator-max-microvolt = <1320000>;
-			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
-		};
-	};
-
-	regulators-4 {
-		compatible = "qcom,pmh0110-rpmh-regulators";
-		qcom,pmic-id = "H_E0";
-
-		vreg_l1h_e0_0p89: ldo1 {
-			regulator-name = "vreg_l1h_e0_0p89";
-			regulator-min-microvolt = <832000>;
-			regulator-max-microvolt = <832000>;
-			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
-		};
-
-		vreg_l2h_e0_0p72: ldo2 {
-			regulator-name = "vreg_l2h_e0_0p72";
-			regulator-min-microvolt = <832000>;
-			regulator-max-microvolt = <832000>;
-			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
-		};
-
-		vreg_l3h_e0_0p32: ldo3 {
-			regulator-name = "vreg_l3h_e0_0p32";
-			regulator-min-microvolt = <320000>;
-			regulator-max-microvolt = <2000000>;
-			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
-		};
-
-		vreg_l4h_e0_1p2: ldo4 {
-			regulator-name = "vreg_l4h_e0_1p2";
-			regulator-min-microvolt = <1080000>;
-			regulator-max-microvolt = <1320000>;
-			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
-		};
-	};
-};
-
-&pcie3b {
-	vddpe-3v3-supply = <&vreg_nvmesec>;
-
-	pinctrl-0 = <&pcie3b_default>;
-	pinctrl-names = "default";
-
-	status = "okay";
-};
-
-&pcie3b_phy {
-	vdda-phy-supply = <&vreg_l3c_e1_0p89>;
-	vdda-pll-supply = <&vreg_l2c_e1_1p14>;
-
-	status = "okay";
-};
-
-&pcie3b_port0 {
-	reset-gpios = <&tlmm 155 GPIO_ACTIVE_LOW>;
-	wake-gpios = <&tlmm 157 GPIO_ACTIVE_LOW>;
-};
-
-&pcie4 {
-	vddpe-3v3-supply = <&vreg_wlan>;
-
-	pinctrl-0 = <&pcie4_default>;
-	pinctrl-names = "default";
-
-	status = "okay";
-};
-
-&pcie4_phy {
-	vdda-phy-supply = <&vreg_l1c_e1_0p82>;
-	vdda-pll-supply = <&vreg_l4f_e1_1p08>;
-
-	status = "okay";
-};
-
-&pcie4_port0 {
-	reset-gpios = <&tlmm 146 GPIO_ACTIVE_LOW>;
-	wake-gpios = <&tlmm 148 GPIO_ACTIVE_LOW>;
-};
-
-&pcie5 {
-	vddpe-3v3-supply = <&vreg_nvme>;
-
-	pinctrl-0 = <&pcie5_default>;
-	pinctrl-names = "default";
-
-	status = "okay";
-};
-
-&pcie5_phy {
-	vdda-phy-supply = <&vreg_l2f_e0_0p82>;
-	vdda-pll-supply = <&vreg_l4h_e0_1p2>;
-
-	status = "okay";
-};
-
-&pcie5_port0 {
-	reset-gpios = <&tlmm 152 GPIO_ACTIVE_LOW>;
-	wake-gpios = <&tlmm 154 GPIO_ACTIVE_LOW>;
-};
-
-&pcie6 {
-	vddpe-3v3-supply = <&vreg_wwan>;
-
-	pinctrl-0 = <&pcie6_default>;
-	pinctrl-names = "default";
-
-	status = "okay";
-};
-
-&pcie6_phy {
-	vdda-phy-supply = <&vreg_l1c_e1_0p82>;
-	vdda-pll-supply = <&vreg_l4f_e1_1p08>;
-
-	status = "okay";
-};
-
-&pcie6_port0 {
-	reset-gpios = <&tlmm 149 GPIO_ACTIVE_LOW>;
-	wake-gpios = <&tlmm 151 GPIO_ACTIVE_LOW>;
-};
-
-&pmh0101_gpios {
-	nvme_reg_en: nvme-reg-en-state {
-		pins = "gpio14";
-		function = "normal";
-		bias-disable;
-	};
-};
-
-&pmh0110_f_e1_gpios {
-	nvme_sec_reg_en: nvme-reg-en-state {
-		pins = "gpio14";
-		function = "normal";
-		bias-disable;
-	};
-};
-
-&pmh0101_gpios {
-	key_vol_up_default: key-vol-up-default-state {
-		pins = "gpio6";
-		function = "normal";
-		output-disable;
-		bias-pull-up;
-	};
-};
-
-&pmk8850_rtc {
-	qcom,no-alarm;
-};
-
-&pon_resin {
-	linux,code = <KEY_VOLUMEDOWN>;
-	status = "okay";
-};
-
-&tlmm {
-	gpio-reserved-ranges = <4 4>, /* EC TZ Secure I3C */
-			       <10 2>, /* OOB UART */
-			       <44 4>; /* Security SPI (TPM) */
-
-	pcie4_default: pcie4-default-state {
-		clkreq-n-pins {
-			pins = "gpio147";
-			function = "pcie4_clk_req_n";
-			drive-strength = <2>;
-			bias-pull-up;
-		};
-
-		perst-n-pins {
-			pins = "gpio146";
-			function = "gpio";
-			drive-strength = <2>;
-			bias-disable;
-		};
-
-		wake-n-pins {
-			pins = "gpio148";
-			function = "gpio";
-			drive-strength = <2>;
-			bias-pull-up;
-		};
-	};
-
-	pcie5_default: pcie5-default-state {
-		clkreq-n-pins {
-			pins = "gpio153";
-			function = "pcie5_clk_req_n";
-			drive-strength = <2>;
-			bias-pull-up;
-		};
-
-		perst-n-pins {
-			pins = "gpio152";
-			function = "gpio";
-			drive-strength = <2>;
-			bias-disable;
-		};
-
-		wake-n-pins {
-			pins = "gpio154";
-			function = "gpio";
-			drive-strength = <2>;
-			bias-pull-up;
-		};
-	};
-
-	pcie6_default: pcie6-default-state {
-		clkreq-n-pins {
-			pins = "gpio150";
-			function = "pcie6_clk_req_n";
-			drive-strength = <2>;
-			bias-pull-up;
-		};
-
-		perst-n-pins {
-			pins = "gpio149";
-			function = "gpio";
-			drive-strength = <2>;
-			bias-disable;
-		};
-
-		wake-n-pins {
-			pins = "gpio151";
-			function = "gpio";
-			drive-strength = <2>;
-			bias-pull-up;
-		};
-	};
-
-	pcie3b_default: pcie3b-default-state {
-		clkreq-n-pins {
-			pins = "gpio156";
-			function = "pcie3b_clk";
-			drive-strength = <2>;
-			bias-pull-up;
-		};
-
-		perst-n-pins {
-			pins = "gpio155";
-			function = "gpio";
-			drive-strength = <2>;
-			bias-disable;
-		};
-
-		wake-n-pins {
-			pins = "gpio157";
-			function = "gpio";
-			drive-strength = <2>;
-			bias-pull-up;
-		};
-	};
-
-	wlan_reg_en: wlan-reg-en-state {
-		pins = "gpio94";
-		function = "gpio";
-		drive-strength = <2>;
-		bias-disable;
-	};
-
-	wwan_reg_en: wwan-reg-en-state {
-		pins = "gpio246";
-		function = "gpio";
-		drive-strength = <2>;
-		bias-disable;
-	};
 };
diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dtsi
similarity index 99%
copy from arch/arm64/boot/dts/qcom/glymur-crd.dts
copy to arch/arm64/boot/dts/qcom/glymur-crd.dtsi
index 877945319012..abc6cc8bb0a8 100644
--- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
+++ b/arch/arm64/boot/dts/qcom/glymur-crd.dtsi
@@ -3,9 +3,6 @@
  * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
  */
 
-/dts-v1/;
-
-#include "glymur.dtsi"
 #include "pmcx0102.dtsi"        /* SPMI0: SID-2/3 SPMI1: SID-2/3 */
 #include "pmh0101.dtsi"         /* SPMI0: SID-1                  */
 #include "pmh0110-glymur.dtsi"  /* SPMI0: SID-5/7 SPMI1: SID-5   */
@@ -372,15 +369,11 @@ &pcie3b {
 
 	pinctrl-0 = <&pcie3b_default>;
 	pinctrl-names = "default";
-
-	status = "okay";
 };
 
 &pcie3b_phy {
 	vdda-phy-supply = <&vreg_l3c_e1_0p89>;
 	vdda-pll-supply = <&vreg_l2c_e1_1p14>;
-
-	status = "okay";
 };
 
 &pcie3b_port0 {
-- 
2.34.1


