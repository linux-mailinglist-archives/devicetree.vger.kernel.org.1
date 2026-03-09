Return-Path: <devicetree+bounces-273113-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6FroC8Evr2nFPQIAu9opvQ
	(envelope-from <devicetree+bounces-273113-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 21:38:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 78783240F3D
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 21:38:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7A2593167B72
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 20:34:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C319042314D;
	Mon,  9 Mar 2026 20:33:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NRuhVHHO";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bySfoqRM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01E47410D0C
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773088435; cv=none; b=VAnAftKIQL2PkUHEJrJcl1yf8/BP7CKACRW7aqIaYEBNelbinjC+8L6OUJgEUzLMPbyL+T7zMoq9es/+2emdDHf1TrWCR/qjlFsQftaFref92FGc1MZdXzuH7bxG+XPNfF89CLqz+WQLLiqavEwzHVATnHhPfxAyOVfMxlpDofg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773088435; c=relaxed/simple;
	bh=72e0odVrIypjYR4ieuCMj9dOvSQ7+aSIR3Eg3bckx20=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=OWSWMmJY52t8QHV0slTr5pOqpflXvV4DANXgJW8OKVKmoap4Bx2vM+Q1dkSv+NXA4yZT2qzkqAuhf6574Gvm/I3sve7hogIfujbjyAZWo3BLT541MsQLmVfWcu444/Hq2ai0q88DhA+IiZBfxVa3WGbyBPYzN6rkpAqqdY7f+p4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NRuhVHHO; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bySfoqRM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 629HBxAl1921530
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 20:33:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=KQayAJr7e80
	Xbo/ao7ZL1zptdQcZkdn0wbNdIDaamnc=; b=NRuhVHHOTo7H0/6cCUDoii8+gAD
	FYopBP4tY84Xn5h11Zvy6ugSafyhDkolIrOG3FUMdy1EiteAFOppO92xcnBqxuuW
	nFYC0wgQSj+jgWd62t1+1e719Yj6+wvSyT4a5X2yj+FbuJHkgT97BhxBNfb4/fde
	lRCu/OnZnUiI1GpIbBebivFZo8mYZgvnimXsF/FN4apUA+8xakBxaUZf/3aQPZDh
	j7eFEfk1DDA9K6DcVMraGaxNVq4r5u46/C45h2vJOC+YQBI8b+HEan7ETJReIwfS
	PetEGNoI5LyzC7bxTqGJ43M5NE7weSQzDIPkEeLRGRoOracnnnYD0vFxRxA==
Received: from mail-ot1-f72.google.com (mail-ot1-f72.google.com [209.85.210.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4csxy81gay-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 20:33:53 +0000 (GMT)
Received: by mail-ot1-f72.google.com with SMTP id 46e09a7af769-7d73da258acso17708908a34.0
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 13:33:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773088432; x=1773693232; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KQayAJr7e80Xbo/ao7ZL1zptdQcZkdn0wbNdIDaamnc=;
        b=bySfoqRM5yWlCjug04Jz/tj8XYAefkZdEexwIxhnGh8ZHJTGFP7zox8JL/6/gbylG4
         yjBHxE2I28LiGKvAoqRsH0+VbNrZSxXChXp8p0rlCE/g+Q/S+igFNO4GrkmuXnh+liR2
         M4Ss66PPzFXsPoQyGFzwYs7M6V6O6uNOk9ldXOEhzdkxhZKNgX8/X6J3UtGMeVmgsZaP
         4Y7VQapaneKQi+nmixR8gu21KbCIBp8CbdIrMWffOLq0B8lWJ2Np/2AKfNS99sY9z9MZ
         eItt3JMK7FUqjvD43AG6VJZoISLmC4+XDq9YD1hMoFg5RIQ+VoCqUEZXGYirtJ//s8N4
         T+FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773088432; x=1773693232;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KQayAJr7e80Xbo/ao7ZL1zptdQcZkdn0wbNdIDaamnc=;
        b=gDUE7peMq6sm3aDjUOULUeCzgY/at0+3+DyfKIK5BrSNLD1CIjtazYr3wEKpljws/0
         +CFNymx7lQYy1syvfWB3Ogvo0oTN3/RCCrMYjcp/tW//saqNpESuXqUBwJTkpvEk/P8J
         lOhDRmUi+IBiSm6DmNZvxrk1wnopMpgiUFC0h0ZMuZU6vgnxhQIeH9jHJnyBFsX+SEjY
         Ud46kl+E+vqcMKWiSPwN8H49djV/oelpzzm41iSNc61vI9FM9wsVfTOA717o9jb0BYeT
         KchDyk9iYAsPf12iL19ErGTLaNSqE7DDNsFW/CH09jnk2vkoXuEclAn85F2OFupYGPje
         FlFw==
X-Forwarded-Encrypted: i=1; AJvYcCUkTUO4VgSqFkjrTVG3nTIOsKfYYEhRsJzy0bpg23N4CbbwThqWNZiDAJgPQnRFg4aAKRgYKdaxt6kG@vger.kernel.org
X-Gm-Message-State: AOJu0YyP6wZCuRrT2OzhZWEvFiWaKDyoc8fxQL0JDRmQsggUPmaZVL5d
	hjl0nyPZoTr/UAzuCqCRkRk6ZycH5czAThcRW1xLvLZanLEm/lMImtYft6zPzqXRQW91qUxutvh
	P5r82BrhiobF/Wn5kkBAtyO6VTRW4UYKnN3Hh3NW/t9h1J0MAhZ0W3jjSCEWfStKP
X-Gm-Gg: ATEYQzwdj7g4GNmNBPkC9+RTnhgj39e8kn5yPrr7ZQHHZuU7789liiTnEBGJ+NuTsgp
	PS/aH7yQ9NbS+P59DU3o8bArhx5524hohhUfhiEW0HufRj8IHcy1m5AlLJzo5PzlIYSQ87uxHZk
	FaH4sQXru09+dmUYIN6Phj0A/BXTfhoPcsDbrTaR8ZP4+Xbm9VfBmSaaDw2NOk2sFCpGbnlOcwo
	My7wyikTNtIr2/rhSV+Kd3zpOs+rb/KJaKWqudj0d3Z3y9wd+nPcJ9olblnQZ+vh49NaznKbxnX
	DUU7XwTu6mwUygmRXeqY4KEaPwmGhN2mS72Xn0Brm2ysiRJmrTphVObVbQyDK3nMvIqjePTx9vX
	bEO7OI12IFZmLibjfza3xuatLOWoyEpc0BYBiMhObVFpNyL9mApA5GSb+9Y29vjmnss0JIKBWMq
	A=
X-Received: by 2002:a05:6830:719c:b0:7d7:496f:c001 with SMTP id 46e09a7af769-7d7496fc174mr4132897a34.29.1773088432542;
        Mon, 09 Mar 2026 13:33:52 -0700 (PDT)
X-Received: by 2002:a05:6830:719c:b0:7d7:496f:c001 with SMTP id 46e09a7af769-7d7496fc174mr4132878a34.29.1773088432112;
        Mon, 09 Mar 2026 13:33:52 -0700 (PDT)
Received: from hu-eserrao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d74885b5a4sm3036494a34.23.2026.03.09.13.33.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 13:33:51 -0700 (PDT)
From: Elson Serrao <elson.serrao@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Souradeep Chowdhury <quic_schowdhu@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH RFC v3 10/10] arm64: dts: qcom: Map USB connector to EUD for kodiak boards
Date: Mon,  9 Mar 2026 13:33:37 -0700
Message-Id: <20260309203337.803986-11-elson.serrao@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260309203337.803986-1-elson.serrao@oss.qualcomm.com>
References: <20260309203337.803986-1-elson.serrao@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=SvmdKfO0 c=1 sm=1 tr=0 ts=69af2eb1 cx=c_pps
 a=+3WqYijBVYhDct2f5Fivkw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=a8XcMGiI3xzrQgkoEZ4A:9 a=eYe2g0i6gJ5uXG_o6N4q:22
X-Proofpoint-GUID: wVM9hTV3u1jg5FlQk9DbRulFE6QO0NmM
X-Proofpoint-ORIG-GUID: wVM9hTV3u1jg5FlQk9DbRulFE6QO0NmM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDE4MiBTYWx0ZWRfX+RvP/Vn8jO/U
 NtanOGczxEP2cy9o2TCvI1wV12czoU4uK/AyritlwN9C0ztRtQ2XoKND3YhvCCuDA0qPg5X1fj1
 FzI+xhv+ydhj5YkBLYnQwt1qtJXAakYyoaHoqB649DpW+DR61zOdc4zqyIGhI4E952hGy0XZFRU
 7jqXCkJOVrPiPMeiAasB8FITjGjwSN+4+HjqimUMfD8e1NUOgcWWnGFgZIDKwrr2ujQMUPMS2Jn
 Rj7kGLtvMo0dfulVTVNLKRP3gjYRof67pdBivRy6+fXP7bScirdMrHTY5rJIhm3B3ibzs2+Tmxe
 tk8zVM3tfc6cniaaUO/xCtz5Ow62kul4HukbWSmEkHpucRhogixTSBTkAMA6NQZXLVVfGmAXzP/
 Vt/YsUlkAN0dFGTPL49Y2MgMl47000T6DYpQX9Ba7VKvcbzwrp3baJb8OpaTTEG1PBBDEELgAgd
 Njpc6dz1f6Wn4XHrNgA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_05,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 spamscore=0 priorityscore=1501 clxscore=1015
 lowpriorityscore=0 adultscore=0 bulkscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090182
X-Rspamd-Queue-Id: 78783240F3D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[elson.serrao@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273113-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,0.0.0.0:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Map the USB connector HS endpoint to EUD for debug functionality on all
boards using kodiak.dtsi. Since the controller is no longer a direct
neighbor of the connector, add usb-role-switch phandle to map the USB
role switch provider for this connector.

Depends-on: 20260223191042.825136-2-elson.serrao@oss.qualcomm.com
Signed-off-by: Elson Serrao <elson.serrao@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts    | 11 ++++++-----
 arch/arm64/boot/dts/qcom/qcm6490-particle-tachyon.dts | 11 ++++++-----
 arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts      | 11 ++++++-----
 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts          | 11 ++++++-----
 .../boot/dts/qcom/qcs6490-thundercomm-rubikpi3.dts    | 11 ++++++-----
 arch/arm64/boot/dts/qcom/sm7325-nothing-spacewar.dts  | 11 ++++++-----
 6 files changed, 36 insertions(+), 30 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
index 455e5c9bb072..dbd968967dd5 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
@@ -88,6 +88,7 @@ connector@0 {
 			reg = <0>;
 			power-role = "dual";
 			data-role = "dual";
+			usb-role-switch = <&usb_1>;
 
 			ports {
 				#address-cells = <1>;
@@ -97,7 +98,7 @@ port@0 {
 					reg = <0>;
 
 					pmic_glink_hs_in: endpoint {
-						remote-endpoint = <&usb_1_dwc3_hs>;
+						remote-endpoint = <&eud_con>;
 					};
 				};
 
@@ -1433,10 +1434,6 @@ &usb_1 {
 	status = "okay";
 };
 
-&usb_1_dwc3_hs {
-	remote-endpoint = <&pmic_glink_hs_in>;
-};
-
 &usb_1_hsphy {
 	vdda-pll-supply = <&vreg_l10c>;
 	vdda18-supply = <&vreg_l1c>;
@@ -1476,3 +1473,7 @@ &wifi {
 	qcom,calibration-variant = "Fairphone_5";
 	status = "okay";
 };
+
+&eud_con {
+	remote-endpoint = <&pmic_glink_hs_in>;
+};
diff --git a/arch/arm64/boot/dts/qcom/qcm6490-particle-tachyon.dts b/arch/arm64/boot/dts/qcom/qcm6490-particle-tachyon.dts
index bf18c4852081..ca9c1a09ca73 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-particle-tachyon.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-particle-tachyon.dts
@@ -65,6 +65,7 @@ connector@0 {
 			reg = <0>;
 			power-role = "dual";
 			data-role = "dual";
+			usb-role-switch = <&usb_1>;
 
 			ports {
 				#address-cells = <1>;
@@ -74,7 +75,7 @@ port@0 {
 					reg = <0>;
 
 					pmic_glink_hs_in: endpoint {
-						remote-endpoint = <&usb_1_dwc3_hs>;
+						remote-endpoint = <&eud_con>;
 					};
 				};
 
@@ -826,10 +827,6 @@ &usb_1 {
 	status = "okay";
 };
 
-&usb_1_dwc3_hs {
-	remote-endpoint = <&pmic_glink_hs_in>;
-};
-
 &usb_1_hsphy {
 	vdda-pll-supply = <&vreg_l10c_0p88>;
 	vdda33-supply = <&vreg_l2b_3p072>;
@@ -862,3 +859,7 @@ &usb_2_hsphy {
 &usb_dp_qmpphy_out {
 	remote-endpoint = <&pmic_glink_ss_in>;
 };
+
+&eud_con {
+	remote-endpoint = <&pmic_glink_hs_in>;
+};
diff --git a/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts b/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
index 797f37596bf1..eb7e228787c2 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
@@ -75,6 +75,7 @@ connector@0 {
 			reg = <0>;
 			power-role = "dual";
 			data-role = "dual";
+			usb-role-switch = <&usb_1>;
 
 			ports {
 				#address-cells = <1>;
@@ -84,7 +85,7 @@ port@0 {
 					reg = <0>;
 
 					pmic_glink_hs_in: endpoint {
-						remote-endpoint = <&usb_1_dwc3_hs>;
+						remote-endpoint = <&eud_con>;
 					};
 				};
 
@@ -952,10 +953,6 @@ &usb_1 {
 	status = "okay";
 };
 
-&usb_1_dwc3_hs {
-	remote-endpoint = <&pmic_glink_hs_in>;
-};
-
 &usb_1_hsphy {
 	vdda-pll-supply = <&vreg_l10c>;
 	vdda18-supply = <&vreg_l1c>;
@@ -986,6 +983,10 @@ &usb_dp_qmpphy_out {
 	remote-endpoint = <&pmic_glink_ss_in>;
 };
 
+&eud_con {
+	remote-endpoint = <&pmic_glink_hs_in>;
+};
+
 &venus {
 	firmware-name = "qcom/qcm6490/SHIFT/otter/venus.mbn";
 
diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
index e3d2f01881ae..3cb7494b16f7 100644
--- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
+++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
@@ -185,6 +185,7 @@ connector@0 {
 			reg = <0>;
 			power-role = "dual";
 			data-role = "dual";
+			usb-role-switch = <&usb_1>;
 
 			ports {
 				#address-cells = <1>;
@@ -194,7 +195,7 @@ port@0 {
 					reg = <0>;
 
 					pmic_glink_hs_in: endpoint {
-						remote-endpoint = <&usb_1_dwc3_hs>;
+						remote-endpoint = <&eud_con>;
 					};
 				};
 
@@ -1303,14 +1304,14 @@ &usb_1 {
 	status = "okay";
 };
 
-&usb_1_dwc3_hs {
-	remote-endpoint = <&pmic_glink_hs_in>;
-};
-
 &usb_1_dwc3_ss {
 	remote-endpoint = <&usb_dp_qmpphy_usb_ss_in>;
 };
 
+&eud_con {
+	remote-endpoint = <&pmic_glink_hs_in>;
+};
+
 &usb_1_hsphy {
 	vdda-pll-supply = <&vreg_l10c_0p88>;
 	vdda33-supply = <&vreg_l2b_3p072>;
diff --git a/arch/arm64/boot/dts/qcom/qcs6490-thundercomm-rubikpi3.dts b/arch/arm64/boot/dts/qcom/qcs6490-thundercomm-rubikpi3.dts
index 0b64a0b91202..a75b8e118deb 100644
--- a/arch/arm64/boot/dts/qcom/qcs6490-thundercomm-rubikpi3.dts
+++ b/arch/arm64/boot/dts/qcom/qcs6490-thundercomm-rubikpi3.dts
@@ -84,6 +84,7 @@ connector@0 {
 			reg = <0>;
 			power-role = "dual";
 			data-role = "dual";
+			usb-role-switch = <&usb_1>;
 
 			ports {
 				#address-cells = <1>;
@@ -93,7 +94,7 @@ port@0 {
 					reg = <0>;
 
 					pmic_glink_hs_in: endpoint {
-						remote-endpoint = <&usb_1_dwc3_hs>;
+						remote-endpoint = <&eud_con>;
 					};
 				};
 
@@ -1090,10 +1091,6 @@ &usb_1 {
 	status = "okay";
 };
 
-&usb_1_dwc3_hs {
-	remote-endpoint = <&pmic_glink_hs_in>;
-};
-
 &usb_1_hsphy {
 	vdda-pll-supply = <&vreg_l10c_0p88>;
 	vdda33-supply = <&vreg_l2b_3p072>;
@@ -1127,6 +1124,10 @@ &usb_dp_qmpphy_out {
 	remote-endpoint = <&pmic_glink_ss_in>;
 };
 
+&eud_con {
+	remote-endpoint = <&pmic_glink_hs_in>;
+};
+
 &ufs_mem_hc {
 	reset-gpios = <&tlmm 175 GPIO_ACTIVE_LOW>;
 	vcc-supply = <&vreg_l7b_2p952>;
diff --git a/arch/arm64/boot/dts/qcom/sm7325-nothing-spacewar.dts b/arch/arm64/boot/dts/qcom/sm7325-nothing-spacewar.dts
index cb59c122f6f6..f99a47334452 100644
--- a/arch/arm64/boot/dts/qcom/sm7325-nothing-spacewar.dts
+++ b/arch/arm64/boot/dts/qcom/sm7325-nothing-spacewar.dts
@@ -90,6 +90,7 @@ connector@0 {
 			reg = <0>;
 			power-role = "dual";
 			data-role = "dual";
+			usb-role-switch = <&usb_1>;
 
 			ports {
 				#address-cells = <1>;
@@ -99,7 +100,7 @@ port@0 {
 					reg = <0>;
 
 					pmic_glink_hs_in: endpoint {
-						remote-endpoint = <&usb_1_dwc3_hs>;
+						remote-endpoint = <&eud_con>;
 					};
 				};
 
@@ -1440,10 +1441,6 @@ &usb_1 {
 	status = "okay";
 };
 
-&usb_1_dwc3_hs {
-	remote-endpoint = <&pmic_glink_hs_in>;
-};
-
 &usb_1_hsphy {
 	vdda-pll-supply = <&vdd_a_usbhs_core>;
 	vdda18-supply = <&vdd_a_usbhs_1p8>;
@@ -1459,3 +1456,7 @@ &venus {
 &wifi {
 	status = "okay";
 };
+
+&eud_con {
+	remote-endpoint = <&pmic_glink_hs_in>;
+};
-- 
2.34.1


