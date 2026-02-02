Return-Path: <devicetree+bounces-261678-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4GRCMl9UgGkd6gIAu9opvQ
	(envelope-from <devicetree+bounces-261678-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 08:38:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D22CC93ED
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 08:38:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 801EA30154A6
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 07:36:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1848B2BF00D;
	Mon,  2 Feb 2026 07:36:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="A4Bp0BVu";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Jf+2TPjN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B8F62BE7DF
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 07:36:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770017773; cv=none; b=Ib/G/l0Q6/TGIti6HOXDPuXm4am9aK55PPRglST6NbAgWSWd8B5aKc+dP39iy8jkaEddYxydwochAjOGpZunwVeP00eKGqXOe+yVyo4YWm8GU4AzL5cXp4/VD2Max9Xn94cDEIv3ZExEY14+MhQaCkzlYJgu5yL9aUwZhH2xQPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770017773; c=relaxed/simple;
	bh=9Rm0m18E5xAEeHE9qXcnw/RRHt2PiaL4mJ6UXJNw45w=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Mly10g1iDr++iSuddv9P1J2Mm1Q2+dBtgAdnGUomE7kXdcoZwgGNLe4AmyiLTPFsMKgbTUd4poX/YQ6sc/f5Bwtdx/x5IRy+SDIb09mpZiJ/bOyqPT9Flxb2e1Ta8BdBA6b0QKPiZjEEG0QEE7i+1ART8aJ8u25SDo10JQxhyxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=A4Bp0BVu; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Jf+2TPjN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 611Mj9FB580825
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 07:36:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=pjBSSLK8Fm6
	snI4OTehhSrkX5XInHl4x6dBvMEu7zzk=; b=A4Bp0BVuYBqzwxGFG8HfCRBQe3E
	FBa3OL9mpSTeACMsMnw1Z5aq619wzVi3M5OQSyewfTOIrDKtP5hGQIYurBNDSTmn
	rjDVzXXzECk7vi7SVYlLwPdJV2k4PmB54+ZoScWS6SaHwH1MKR9Qe0DJhf4JEXlA
	RBfOIchbDvwMePONUr1Bl2rPl2jwxRWNPy36GJCU6E/7JXHAxWh0i1bAy8eRWeEf
	cn8kEqpnSNPLpJEFmRJqRYSZSTCBRkNGloVIhPhccY2g40P+k6n6vL+OrVNoA0vA
	5jBjrx9QxMgc1RSl0cdvEaQ6+benegc8icPgR5yxLXUY6p+vhhW4TSe0TpQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c1areccus-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 07:36:10 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-3545dbb7ee6so837262a91.3
        for <devicetree@vger.kernel.org>; Sun, 01 Feb 2026 23:36:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770017769; x=1770622569; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pjBSSLK8Fm6snI4OTehhSrkX5XInHl4x6dBvMEu7zzk=;
        b=Jf+2TPjNSFKQU0toM0HTw6cciahv9A/VKhOuU7x2E4521VkZDMagONyQsqdohX3c5P
         PRhIBYpRzv0CBp4OooFvUAceCmdmSVZ7fcm38pp3+Z1sOwbVbXfNXB40NBZlIo63DBQf
         1XyMiTYUEf7DpNxF149EqZtWxRyyDFgK+BoRp0LVSZb02ZCwkp9+czPW7Tii+KAnzkg3
         Nwi/lD6gUWBRydMnZdVQOcbP1G2MMKYiCcNqQJOQw9Vi7rSwDHXXLHqpfYW+jgD6FV+h
         3vpyoWuPxlOJVh/qQTW4BFq/nRiU42p/6y1dVI3BxJZ5O/rLhk5f67xt18+uupRIxYpS
         Ki3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770017769; x=1770622569;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pjBSSLK8Fm6snI4OTehhSrkX5XInHl4x6dBvMEu7zzk=;
        b=rCQx+TSyTh1wR1R8denUDAzv7un3UHqYviStD0ac2aH27fE1Dk+xwGHBVfEAO+76cH
         ELRy0+KAV3v+l1j36n75xmv3JQQmDYkbGsY5xvPd3/0tg/JepYYCVuoed4fS6f2I89Uf
         c+LZYQksMwIDWD8pZFQ91R5W8L8fl2YKXAUBf+ksw1agLqHTs5UVM1l1eHyG+BKlagqq
         ewDu9Xm7cA3kjGai/w66/HZHoCbiK5whc7Ak/RYMaKU5uCjkoIAxUZzLvsUw/pTmYyAo
         CgTUtVF9399wFoFUip7YnOxGogHHs022Y2dp/YaAMacjgqVxvZY6DbSdKX6T2F7wM/C+
         EX8A==
X-Forwarded-Encrypted: i=1; AJvYcCU126WPGdilsfe8REONhCDOHdEVNo0fkX28JbHOfi8kBtTGuUp5PChleh/YaJIv9wA+PYC94mP4Wi+b@vger.kernel.org
X-Gm-Message-State: AOJu0YyqEDeJFa7X3XPUyGKTnRFD3L/ioc1iOlscK+lUD0XvLamnYgs5
	AE5OXm1vVSrdmjP1MylTKwAznjDxVtINbNpFXlr/fDItefW7nhvWUYDEljVUMsxRVBGuDp4E+d0
	mxKn9tBEPD9Gxz3pO31HsG7n+AB03fGLwi5/e1N429lXHfgxCQDxZudU3UG3qME5J
X-Gm-Gg: AZuq6aJBbEVmZ98ESoUGMSDj24qc+L/E2l1cC0mpa+YBNtjnyWSw/OVIaGY85lG+yIM
	maJO/jgK1o1gfscEBh7DAtX/l2rFkVuSBCrGYsr9DIsxdEgxF3/1wj8wIiWiCYqQUYNMjIzKmi1
	6RPLiDVyokt9ZjnTTc4ryNiuKxrUBiCft9iT2ED8/0YWVg8zlGHjb8dwzyKi3caQw/jLqtcHpLd
	LsIwlEVtDccnIpD7t6ju3gOdeiMVO+2KPkc7Pu++m5qlUhLmQYvC7n/etE6h4A1VZ0FfANimril
	u9s4IgbyWWtbiph2C9fnGKsojCLsQzI3pHZ6jpvlUBNzjk6t0QBfanYcO+LHeddHX4EsZN62oej
	t8336Y+XYKSeVwWdnizZv6+DwO2+DFGB+1bjmRpiv+rEBwn5DFlKenB3ojrsV5AEjbxA/2VQAFv
	M=
X-Received: by 2002:a17:90b:582e:b0:343:7714:4ca6 with SMTP id 98e67ed59e1d1-3543b3ad39bmr9702839a91.22.1770017769431;
        Sun, 01 Feb 2026 23:36:09 -0800 (PST)
X-Received: by 2002:a17:90b:582e:b0:343:7714:4ca6 with SMTP id 98e67ed59e1d1-3543b3ad39bmr9702828a91.22.1770017768935;
        Sun, 01 Feb 2026 23:36:08 -0800 (PST)
Received: from yijiyang-gv.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3540f3cc71bsm14129847a91.11.2026.02.01.23.36.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Feb 2026 23:36:08 -0800 (PST)
From: YijieYang <yijie.yang@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, yijie.yang@oss.qualcomm.com
Subject: [PATCH v5 4/4] arm64: dts: qcom: Add base PURWA-IOT-EVK board
Date: Mon,  2 Feb 2026 15:35:48 +0800
Message-Id: <20260202073555.1345260-4-yijie.yang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260202-purwa-v5-0-1f5a93578802@oss.qualcomm.com>
References: <20260202-purwa-v5-0-1f5a93578802@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=NNfYOk6g c=1 sm=1 tr=0 ts=698053ea cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=ZmrNZMXfqHY4OuZ4eF4A:9 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: uH1ySeh4VjsiI1K_oN8M8TpIzgCIa53S
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDA2NCBTYWx0ZWRfX6lPWHWfCw5sj
 hxfSDm5tlkdcLg8rHXk4cr8/WhQ047Hd08FaTOUscZkxmC8v0MJREXwmGh1VQwDyeEv1hsg7zog
 6Nzp2eab77Wo2GA4Oy31bAyxLGxngBaaIn9iPYHaoHyG4VC8O/TXe1UFxjXevzluhKqJAwXD8TX
 1z/IwAqc0vOANAr3y5F8JISXCQAYukAItnM7rfxz5Wfsaa/lOtiprAcjiP9n/TGu01KLGylnTSv
 LQrRsnsb28jmulP8vsF8Gm5gnFLgn0u8lnmHVl8TVyEo4sXI/Xg1NUNASYTqh9v1xLvN068gfO/
 EL/F4jZaGvaKii5Azvaf3s4II1dwYpwG05qaG28iqlc4VuQtU7gkO7vfiWHoKS/4wMeD6vMJLog
 Qd29a3jr5J6SqB388ACcf7aGzPb3S3qKSAHQYYdJA5bsSDEwEFkPzmFzt792dpXA4tbImaxHEaE
 JBGfgEcI2Snf5Er6vhA==
X-Proofpoint-ORIG-GUID: uH1ySeh4VjsiI1K_oN8M8TpIzgCIa53S
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_02,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 adultscore=0 priorityscore=1501
 clxscore=1015 suspectscore=0 spamscore=0 phishscore=0 bulkscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602020064
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-261678-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,0.0.0.0:email,0.0.0.1:email,0.0.0.2:email,0.0.0.8:email];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yijie.yang@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3D22CC93ED
X-Rspamd-Action: no action

From: Yijie Yang <yijie.yang@oss.qualcomm.com>

The PURWA-IOT-EVK is an evaluation platform for IoT products, composed of
the Purwa IoT SoM and a carrier board. Together, they form a complete
embedded system capable of booting to UART.

PURWA-IOT-EVK uses the PS8833 as a retimer for USB0, unlike HAMOA-IOT-EVK.
Meanwhile, USB0 bypasses the SBU selector FSUSB42.

Make the following peripherals on the carrier board enabled:
- UART
- On-board regulators
- USB Type-C mux
- Pinctrl
- Embedded USB (EUSB) repeaters
- NVMe
- pmic-glink
- USB DisplayPorts
- Bluetooth
- WLAN
- Audio
- PCIe ports for PCIe3 through PCIe6a
- TPM

Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/Makefile             |  1 +
 .../{hamoa-iot-evk.dts => purwa-iot-evk.dts}  | 92 +++++++++++++------
 2 files changed, 65 insertions(+), 28 deletions(-)
 copy arch/arm64/boot/dts/qcom/{hamoa-iot-evk.dts => purwa-iot-evk.dts} (95%)

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index f80b5d9cf1e8..d42296ed302e 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -130,6 +130,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= msm8998-sony-xperia-yoshino-lilac.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= msm8998-sony-xperia-yoshino-maple.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= msm8998-sony-xperia-yoshino-poplar.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= msm8998-xiaomi-sagit.dtb
+dtb-$(CONFIG_ARCH_QCOM)	+= purwa-iot-evk.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= qcm6490-fairphone-fp5.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= qcm6490-idp.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= qcm6490-particle-tachyon.dtb
diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts b/arch/arm64/boot/dts/qcom/purwa-iot-evk.dts
similarity index 95%
copy from arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
copy to arch/arm64/boot/dts/qcom/purwa-iot-evk.dts
index 2390648a248f..fe539b1f4567 100644
--- a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
+++ b/arch/arm64/boot/dts/qcom/purwa-iot-evk.dts
@@ -6,12 +6,12 @@
 /dts-v1/;
 
 #include <dt-bindings/leds/common.h>
-#include "hamoa-iot-som.dtsi"
+#include "purwa-iot-som.dtsi"
 #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
 
 / {
-	model = "Qualcomm Technologies, Inc. Hamoa IoT EVK";
-	compatible = "qcom,hamoa-iot-evk", "qcom,hamoa-iot-som", "qcom,x1e80100";
+	model = "Qualcomm Technologies, Inc. Purwa IoT EVK";
+	compatible = "qcom,purwa-iot-evk", "qcom,purwa-iot-som", "qcom,x1p42100";
 	chassis-type = "embedded";
 
 	aliases {
@@ -118,15 +118,15 @@ port@1 {
 					reg = <1>;
 
 					pmic_glink_ss0_ss_in: endpoint {
-						remote-endpoint = <&usb_1_ss0_qmpphy_out>;
+						remote-endpoint = <&retimer_ss0_ss_out>;
 					};
 				};
 
 				port@2 {
 					reg = <2>;
 
-					pmic_glink_ss0_sbu: endpoint {
-						remote-endpoint = <&usb_1_ss0_sbu_mux>;
+					pmic_glink_ss0_con_sbu_in: endpoint {
+						remote-endpoint = <&retimer_ss0_con_sbu_out>;
 					};
 				};
 			};
@@ -618,25 +618,6 @@ platform {
 		};
 	};
 
-	usb-1-ss0-sbu-mux {
-		compatible = "onnn,fsusb42", "gpio-sbu-mux";
-
-		enable-gpios = <&tlmm 168 GPIO_ACTIVE_LOW>;
-		select-gpios = <&tlmm 167 GPIO_ACTIVE_HIGH>;
-
-		pinctrl-0 = <&usb_1_ss0_sbu_default>;
-		pinctrl-names = "default";
-
-		mode-switch;
-		orientation-switch;
-
-		port {
-			usb_1_ss0_sbu_mux: endpoint {
-				remote-endpoint = <&pmic_glink_ss0_sbu>;
-			};
-		};
-	};
-
 	wcn7850-pmu {
 		compatible = "qcom,wcn7850-pmu";
 
@@ -753,6 +734,63 @@ retimer_ss2_con_sbu_out: endpoint {
 	};
 };
 
+&i2c3 {
+	clock-frequency = <400000>;
+
+	status = "okay";
+
+	typec-mux@8 {
+		compatible = "parade,ps8830";
+		reg = <0x8>;
+
+		clocks = <&rpmhcc RPMH_RF_CLK4>;
+
+		vdd-supply = <&vreg_rtmr0_1p15>;
+		vdd33-supply = <&vreg_rtmr0_3p3>;
+		vdd33-cap-supply = <&vreg_rtmr0_3p3>;
+		vddar-supply = <&vreg_rtmr0_1p15>;
+		vddat-supply = <&vreg_rtmr0_1p15>;
+		vddio-supply = <&vreg_rtmr0_1p8>;
+
+		reset-gpios = <&pm8550_gpios 10 GPIO_ACTIVE_LOW>;
+
+		pinctrl-0 = <&rtmr0_default>;
+		pinctrl-names = "default";
+
+		retimer-switch;
+		orientation-switch;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
+				retimer_ss0_ss_out: endpoint {
+					remote-endpoint = <&pmic_glink_ss0_ss_in>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+
+				retimer_ss0_ss_in: endpoint {
+					remote-endpoint = <&usb_1_ss0_qmpphy_out>;
+				};
+			};
+
+			port@2 {
+				reg = <2>;
+
+				retimer_ss0_con_sbu_out: endpoint {
+					remote-endpoint = <&pmic_glink_ss0_con_sbu_in>;
+				};
+			};
+		};
+	};
+};
+
 &i2c5 {
 	clock-frequency = <400000>;
 
@@ -1102,9 +1140,7 @@ edp_bl_reg_en: edp-bl-reg-en-state {
 		pins = "gpio10";
 		function = "normal";
 	};
-};
 
-&pmc8380_3_gpios {
 	pm_sde7_aux_3p3_en: pcie-aux-3p3-default-state {
 		pins = "gpio8";
 		function = "normal";
@@ -1470,7 +1506,7 @@ &usb_1_ss0_hsphy {
 };
 
 &usb_1_ss0_qmpphy_out {
-	remote-endpoint = <&pmic_glink_ss0_ss_in>;
+	remote-endpoint = <&retimer_ss0_ss_in>;
 };
 
 &usb_1_ss1_dwc3_hs {
-- 
2.34.1


