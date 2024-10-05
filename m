Return-Path: <devicetree+bounces-108020-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C3479913FE
	for <lists+devicetree@lfdr.de>; Sat,  5 Oct 2024 04:44:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B201DB2224B
	for <lists+devicetree@lfdr.de>; Sat,  5 Oct 2024 02:44:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABEA51BF24;
	Sat,  5 Oct 2024 02:44:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QLFVhLJV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E76179A7
	for <devicetree@vger.kernel.org>; Sat,  5 Oct 2024 02:44:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728096256; cv=none; b=g0qupHyT7EohmwEi4ZWRDBlGfM8SDpXIdu71KGuMtwTqv7s3Cj0Ws//aBSbeD/Ctt3LBum7fqyDEA86ba8FsKN+XGzMEoqy+NAxP4mq3A55m1f5YVGT5Kd6/CSZIJzUjYsLxvMmZc65uLoaYclWryDLSMuEIx2Ap2ZM0LAzZll0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728096256; c=relaxed/simple;
	bh=M+vLALsw47mT9/5e076ybMBPTutOq2Fdj3UB8a/qZ10=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=QKTVpfFDJNnVSLiyQ5NtY2iKBTqaZ6CNMd64376kTUWAigNL+E5i089/XVtEhPCzSbFzWTeWUZHHQT/tBuBAIl8+gd4EqwNS6pPRkv6DYSPHG2CZDFui3U8noJvE4HgsNK/cVmFV09nJ05foVWOxyyu+7l0CYUyuFrplOZ4eJy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QLFVhLJV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4952EeaF015678
	for <devicetree@vger.kernel.org>; Sat, 5 Oct 2024 02:44:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=vK8oCD03CKV2PDj9nd+/P0
	3tXGGzP/L1xzSa193fI3Q=; b=QLFVhLJVA20Aug5HgsDWxrJ9Pa18vXu1ZJal1v
	sK2wONgTXEGW2Pc5xHE6JfKwojUlmMmH4NtopEqzQwtyWd6lrlajlacTGKSFTon2
	ecxroQ59AgvhnqRaU0FeQR50tVeFevvFSsK14aRcIdVktzQiSPRL1kQvKHLLjxtX
	pKLhN0sYkfHVbjtt6XtY5bFBmpBPsxeDKU6Ko0iRX2khXe1XTkcivfD8DbHLky5f
	pfW0YO8oIpa8g17Gv4UzyEXlJh/WEGi/Zm/ty5aRn19t5FOyU9Wq2qtXIds1fsLq
	bd0XwRk3hY0mw0wI+3wwk/NIWzzNIJoAIeh9Bt4uYbXcmetw==
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com [209.85.210.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 422vf7014k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 05 Oct 2024 02:44:13 +0000 (GMT)
Received: by mail-ot1-f70.google.com with SMTP id 46e09a7af769-710fef9af0bso1975015a34.0
        for <devicetree@vger.kernel.org>; Fri, 04 Oct 2024 19:44:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728096253; x=1728701053;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vK8oCD03CKV2PDj9nd+/P03tXGGzP/L1xzSa193fI3Q=;
        b=CpmzV1v2Z9akNT69nt1h3LAm7xSc8Z39gNOZ0mztS7Qa6Zq7VK/aP2Lm4Cc8IX26AT
         y0r0aq/VNqavtBvFQhFzPvLJFsXd36mW+Eu24NQMnQImYzNAwthu9p5GtVQpwKI67PZC
         1jOpL/oNbKzAbkG7Pxi6VtpOMpYxjjs+O50qkSyXNjkAkDrWkSkbtQtAjF4XB/cRWZRM
         8Xs1nN4XB1UwKXlm/a3Uq4Hx0iwzrwB9WHlLxvOiqvLnEGrOFsUoquCU0YhMEahR1Yfs
         Fe5h4OaDXei3kKUql+VFTJA9l9XbRA5dEfK31i0haJTpPnaEZLjhbLLyKhWfF6lzdPaE
         kWBw==
X-Forwarded-Encrypted: i=1; AJvYcCXnHEYsJw4z5bpgX2VZk7Ygt2WdzEx4SA/LZKiVaQQEGZtzyKfjg1neJNFtYdicQvbpTkeNQpcHnWeR@vger.kernel.org
X-Gm-Message-State: AOJu0YyNbSBtrPfyLHsEc6aObSMi3hyx3gQPWjodO5PrEuoZrZEZK5DJ
	UL6j1Ilmua3engLyb2QLs/9/DIMcgfQGvFbUVzS4fFUnWROOI8z2esu1ZojYftyTv/tJM1Maof7
	UpsES0r7lRBSl3dbyChTcORh67jY6OfScU/UTDtrfDZRsiKqcPe7hJB9AFDQV
X-Received: by 2002:a05:6830:6717:b0:710:f980:2dfa with SMTP id 46e09a7af769-7154e9714e4mr2879437a34.20.1728096252923;
        Fri, 04 Oct 2024 19:44:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHn7vGjLKOooWru+fByj/DO89awlYpnEbZyST5eXKAznkVXY+JbMx24wZEGvLnFQ3CJYDFZFw==
X-Received: by 2002:a05:6830:6717:b0:710:f980:2dfa with SMTP id 46e09a7af769-7154e9714e4mr2879423a34.20.1728096252501;
        Fri, 04 Oct 2024 19:44:12 -0700 (PDT)
Received: from [192.168.86.60] (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-71556770fbbsm384866a34.28.2024.10.04.19.44.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Oct 2024 19:44:11 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
Date: Fri, 04 Oct 2024 19:47:17 -0700
Subject: [PATCH] arm64: dts: qcom: qcs6490-rb3gen2: Enable PWR/VOL keys
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241004-rb3gen2-pwr-vol-keys-v1-1-4b1859c7cc4f@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIALSoAGcC/x3MTQ5AMBBA4avIrE3SlhKuIhboYEJKpomfiLtrL
 L/Few8EEqYAdfKA0MGBNx+h0wSGufMTIbtoMMrkWqkcpc8m8gb3U/DYVlzoDtjpohicLa2uFMR
 0Fxr5+rdN+74fbYos82YAAAA=
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Konrad Dybcio <quic_kdybcio@quicinc.com>,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1994;
 i=bjorn.andersson@oss.qualcomm.com; h=from:subject:message-id;
 bh=9ArK27MS5pNtl9FuL4FkMz2IeSZZNfcJLNkjdLMzogQ=;
 b=owEBgwJ8/ZANAwAIAQsfOT8Nma3FAcsmYgBnAKi2l1+jxD+uiLUbw2Xw9ycyElTOlckBCH382
 CB3jEQ2Xn+JAkkEAAEIADMWIQQF3gPMXzXqTwlm1SULHzk/DZmtxQUCZwCothUcYW5kZXJzc29u
 QGtlcm5lbC5vcmcACgkQCx85Pw2ZrcXwhBAApGWWPD/C25q3vS855VQMbWiVVCeBgn5F1aE1uHx
 sTmGpioIF6/TC+TTQpuiDMWnsy9qVX3QQ41vO53oxZr9uYQkh7uBJ4MYFUWlnjH1jMRYB4Hee5w
 VZp1R7nAzsxowyMX6tTiQh0lgdWAHxJJXEQAjQFDn+qRYkttySORsDRU5itGkDHYvkUzfQ8/ZTd
 z8vIDmvGfSgq6PzW39yMQ5QSyA1gomT8gm0bZwz8BNM3kiGbJLGV8O93Mu6A7Y2DM/qRwzfr1p2
 sXe64B3VczJ53DRgVoDNtp99DWCjSufp1q6vk1mbC6MZNEi3bgT0cagkUk7aX33sNxuaLGSzyX7
 v+vLxXs+nnK0KiF+W56kV4XHmzdo2nC/VT1VOz1hjbW36YVhDuFW354tcivzcGMu0CRa5pS2TcY
 D8+7Y7At/XNspzAasxInCA6V03z9xE80F/s0JPZAjzj2nJ07FqPJA0GJrGz3goY7i+PV8PkBkc8
 Td3yOqFVf2ld1u0xFK+XwxhEiedMd+yWPvrux/V15e3p9NFneFSCnzXwAedJaA2qhZItuqWrhNl
 osXS/lJX/9Dguzrbr0HHVECK7ii9LWP17+q7HjD4++Wtli/vaMLbKdSccMPe2v7ulaf+/Wz1dzL
 45I0lyuIZ5AooEAk+9eQ/1nJdX7XQJjTkkjay7fH8910=
X-Developer-Key: i=bjorn.andersson@oss.qualcomm.com; a=openpgp;
 fpr=05DE03CC5F35EA4F0966D5250B1F393F0D99ADC5
X-Proofpoint-GUID: YYQLMkK7OVLGvNydeqco854gNIWe2ZXY
X-Proofpoint-ORIG-GUID: YYQLMkK7OVLGvNydeqco854gNIWe2ZXY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 malwarescore=0
 phishscore=0 adultscore=0 lowpriorityscore=0 mlxscore=0 bulkscore=0
 impostorscore=0 priorityscore=1501 suspectscore=0 spamscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410050019

From: Konrad Dybcio <quic_kdybcio@quicinc.com>

RB3Gen2 has three tiny buttons located under the blue USB-A ports.
They're all connected through the various PMICs and are used for
volume and power.

Describe them.

Signed-off-by: Konrad Dybcio <quic_kdybcio@quicinc.com>
Signed-off-by: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 35 ++++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
index 0d45662b8028..1d27f7ba8b5c 100644
--- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
+++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
@@ -9,6 +9,7 @@
 #define PM7250B_SID 8
 #define PM7250B_SID1 9
 
+#include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
 #include "sc7280.dtsi"
 #include "pm7250b.dtsi"
@@ -153,6 +154,20 @@ debug_vm_mem: debug-vm@d0600000 {
 		};
 	};
 
+	gpio-keys {
+		compatible = "gpio-keys";
+
+		pinctrl-0 = <&kypd_vol_up_n>;
+		pinctrl-names = "default";
+
+		key-volume-up {
+			label = "Volume Up";
+			gpios = <&pm7325_gpios 6 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_VOLUMEUP>;
+			linux,can-disable;
+		};
+	};
+
 	pmic-glink {
 		compatible = "qcom,qcm6490-pmic-glink", "qcom,pmic-glink";
 
@@ -684,10 +699,30 @@ &mdss_edp_phy {
 	status = "okay";
 };
 
+&pm7325_gpios {
+	kypd_vol_up_n: kypd-vol-up-n-state {
+		pins = "gpio6";
+		function = PMIC_GPIO_FUNC_NORMAL;
+		power-source = <1>;
+		bias-pull-up;
+		input-enable;
+	};
+};
+
 &pmk8350_rtc {
 	status = "okay";
 };
 
+&pon_pwrkey {
+	status = "okay";
+};
+
+&pon_resin {
+	linux,code = <KEY_VOLUMEDOWN>;
+
+	status = "okay";
+};
+
 &qupv3_id_0 {
 	status = "okay";
 };

---
base-commit: 58ca61c1a866bfdaa5e19fb19a2416764f847d75
change-id: 20241004-rb3gen2-pwr-vol-keys-a166cd575190

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>


