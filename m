Return-Path: <devicetree+bounces-265063-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4PaXBKXCjWlt6gAAu9opvQ
	(envelope-from <devicetree+bounces-265063-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 13:08:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A3F112D4C9
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 13:08:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C64EC30659C2
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 12:06:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2BE73570AF;
	Thu, 12 Feb 2026 12:06:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OLmiKmnS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bTE/oq0M"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B919B356A0D
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 12:06:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770898006; cv=none; b=OKFSpbOSY9Bgl0HP2KGWkw2gnmeDqmKiDi+gbxeov4Cjjy31lL/UGdG+duUUDeZjGmcdm5RoGs9UMQkJQuegEF4d6aBJHJfz72mHrDiZDJ7UZUST72j2ZFCCE9V8MNk/Qy0aAuNhL99Wezbqil4H9tSmqbzgW+aMH52BYWLkQE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770898006; c=relaxed/simple;
	bh=j8bqrgSKgmA7PQGd3XiaE98YpqoD7V4VHHMxOfc9gA8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=mt8SaUFVjkk4baIZUal0uq6j7TnhTjCO3eZE8cx1dcxlBzfw4nrmDaN19lxLURrlkUecmUM6S7/SeDapux6bDls5tdWcyio9ctQfmS4hl39Th/F0PwWvKeeweu/8f0vJTRlrXH41XnvpA3g7zLeW3yVCwsrN5r8j/xyAdzEd5ss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OLmiKmnS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bTE/oq0M; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61C80s9n3233622
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 12:06:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=lgusAqAYXyCmuNvD4aLfmF
	gPMfO8H7BcC8D0QlBj17I=; b=OLmiKmnSM8kJpurFgdCGHNEsDAJCkSYrWUU2I5
	Sdbm5hWdhSjMcoYe02s7DOENGFN+2jAy/+7Qjc+0c/rTBH/sLVeGZB7AM0KgoYRE
	tvXtYv+zHFVtPKDmsd4Juixhfqjf7R25/6FEdZZiGe8+ETUuWMpBW7UbTQV4ZYmX
	vTM72T9aL24s3Hx/q4FqJNdltjONknbFGHIvnbpNSmcMzULvF02oNfSHXI81Z/x6
	iuDqUHDHJEkXIiPVb91tvaHxBT+A2n9Zaymt/ly1SR3YiHXSXd8hICDez7x5+0fi
	rfiK96/yaJlt3dSEmZE7+34XI6afZXMvGtOlFHr5Ue5Wuvxg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c90d6tjkq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 12:06:44 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2aad60525deso131305485ad.1
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 04:06:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770898003; x=1771502803; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lgusAqAYXyCmuNvD4aLfmFgPMfO8H7BcC8D0QlBj17I=;
        b=bTE/oq0MB7mx6i0cLjjFU1Kgo08ZyKk1jfFFZ/XHvI3os4H5AZqaNk+RqtT9K5S6f0
         YPOm5B2mMydR3M6Sb6Laj2qrHcwJcyOIM3l4G5LiNlnDp3+Uuzn0JVflRkm33CqQQ98m
         T0SOETaIiC+7VicAXahn+PPvB2NlkYICWVFh69u1glJuvlJvJH59isLZuOwmAm3tcgxz
         wNTqT7t2zqRy2xkVe72TLzmJIDajQGKxf24OMaUxkSImWZADtvSj3xN1uFhW3r8wNfN/
         PGt40GvFgliCc77w8m01Y4Q3vxX7xRrE8nKP3hVkiTPpie4q58yitb+OW50bnOntl8jZ
         sFiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770898003; x=1771502803;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lgusAqAYXyCmuNvD4aLfmFgPMfO8H7BcC8D0QlBj17I=;
        b=RPRmn55JHc23T3pihihHvVkwRJzWZOQ2IgMsqYbU/6M4K8IIQ/UXtDyZKmU8lfuate
         hbiZqtsoYJ/ZoFhkY2dM+KZ6T9jSCEhLt4yk5fEcj0nNai9kL8A4+41m1Q03SWoe2wy6
         fiJTGotwXTJ71MRN8Rb7hrq0ilDW31XkXT5ShWqHkm2UMohLY+6jho9UmkDsuAD7yCO+
         x1VoLphbafC4xcUmuLNcJHSdGkU6/ZgH1IsWgAZJ8b5CvytLo+zUugPxOpGiCcwLs2wK
         irh+Ux2/Q9BCITv75PNe7YC2prwpvmDHcgdAeWajPnhuyMkhztQupcE0vY0BsFbb4Y1c
         YqGw==
X-Forwarded-Encrypted: i=1; AJvYcCVmYOsSIwPwiy3cmo85ftHbcytksZWQ7ybfjB6hyfWyOGTbfwyr0+xZX5Y7ytblp8JSjQuKYYJ1IKWr@vger.kernel.org
X-Gm-Message-State: AOJu0Yzp8B7jSFInYEjS3fEVa+G2SLC9PnJaIXq7xEnG8efEhDqpYG1o
	z7RVle4j4hWx+4blg5I2M0fTQa5pH8sjYmodDpTruCI/Ejfdh8/LzfcOBRrgmXQlp26O+Af2aMU
	lyHyc2e96NXy2CrwCSFgYZAaHRCi6b1C6uBbbSJEDjtPqTGy+8yii6yp5gr8xOVxN
X-Gm-Gg: AZuq6aJwjDGTQ8d2pPcZ7x/7blqgqK2pZGSgjRsohsmRV1gcKLf506tClzzufmrohpl
	gPDTWV89wek+Vyk39sUbTN0RA+2MDuLi8irLhWyRc9dOskqflJOUfll20DtFEgdoOc00QEYbA/d
	tNTWbbeitdepCED1Tf+TuVE265ORnGXbyucwPB6PRV6P3sCQuYEyUx6aE+UvfnQFoue0CqflsTp
	CUnvl6+FRroQi940yFUw/65wkCQeQY3v0/Qf1bMNJ32uN07Amy3M0mD+nJTEWiukY+hCgYWGdRm
	nMFrOteNclJSTcmZHnYuxVrJcTAE7wkncyXuhYdmDcxl0m8hpUj57RNBil9eKB6C4FVpG0lMe8Y
	TkzqlcBDO0tYC8AVJE7+F2y5RLw+DIYTHOGHWwVKVI6kn41BrE4dBax/MeA==
X-Received: by 2002:a17:903:1a88:b0:2a9:32c7:92db with SMTP id d9443c01a7336-2ab39c313b9mr24065135ad.61.1770898003314;
        Thu, 12 Feb 2026 04:06:43 -0800 (PST)
X-Received: by 2002:a17:903:1a88:b0:2a9:32c7:92db with SMTP id d9443c01a7336-2ab39c313b9mr24064825ad.61.1770898002814;
        Thu, 12 Feb 2026 04:06:42 -0800 (PST)
Received: from hu-sushruts-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ab296e5a72sm50056515ad.0.2026.02.12.04.06.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Feb 2026 04:06:42 -0800 (PST)
From: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
Date: Thu, 12 Feb 2026 17:36:29 +0530
Subject: [PATCH] arm64: dts: qcom: qcm6490-idp: Enable PCIe1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260212-qcm6490-idp-v1-1-80a45bd46ac5@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAETCjWkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDI0Mj3cLkXDMTSwOgcIGukUmaeZJZoqGFoVGKElBHQVFqWmYF2LTo2Np
 aALTI8R1dAAAA
X-Change-ID: 20260212-qcm6490-idp-24f7b6a1812d
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770897999; l=2453;
 i=sushrut.trivedi@oss.qualcomm.com; s=20251127; h=from:subject:message-id;
 bh=j8bqrgSKgmA7PQGd3XiaE98YpqoD7V4VHHMxOfc9gA8=;
 b=esW81VQgcKQBQ3jG6s7jxASZtfIQ5fsr/u0bELvXDKONMR0Ft5LfGXCs8xDA/j35Z9LBdW84K
 ABJz5w1tH/fDC+rR9v2rC+JJ+hPa9aIoaSjPs/FwR52dlUfORXc0suc
X-Developer-Key: i=sushrut.trivedi@oss.qualcomm.com; a=ed25519;
 pk=OrUHTxBaSg1oY3CtCictJ5A4bDMNLRZS1S+QfD9pdjw=
X-Proofpoint-ORIG-GUID: Di1uA79n_HLiSP1XSu_vqeAdnW4orezY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEyMDA4OSBTYWx0ZWRfXz3UY8v7tXxTx
 YnQbyDQOTWX1j9jzybZmtO+evCZZNgio0xXFd/759Y2z0l4ZAkp0o/PdYFOS4SosU7NSyJHE50u
 FGzFIjXfHARIN9kAhrwRPUA7M/2c6SDO/gh+LAqVbw+Ze3SE7uwxtkVTpHhu/v0h2fo8fhQottQ
 w5TEok/YTuXROPaQOWsR9BzZcsOn8YIhZr5io8gXxv2Pm4e9d8Mye6xk3djWBb549z6Xn9HIH+B
 wUzJxOEtKKualRnfoyXeCo++Qool0U64yqlhL3WT4lPV7e0i4D9+Smmar8MM88s6aRyxPsGvlLt
 YYVKMZRR3j22p37Zu8xsbxzFjabHgf+t4N4038SZay8No6wfrIZoBoyeCHTLxMPTY6CDru8k8vO
 0QCr2tknzl8ODhwUKk+VzRC6U0h+QKrqSjsgVI+mXo7LFCCjBx+K9q1Y9tBuKuZNq8CKkFIyvds
 J/y9oB/23xQ3ZvyWhGQ==
X-Authority-Analysis: v=2.4 cv=ZaMQ98VA c=1 sm=1 tr=0 ts=698dc254 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=63WczefFE1tUyrpsMTkA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: Di1uA79n_HLiSP1XSu_vqeAdnW4orezY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-12_03,2026-02-11_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 bulkscore=0 clxscore=1015 suspectscore=0
 spamscore=0 lowpriorityscore=0 priorityscore=1501 phishscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602120089
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-265063-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sushrut.trivedi@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5A3F112D4C9
X-Rspamd-Action: no action

Remove PCIe1 clocks from protected-list and enable PCIe1 controller
and its corresponding PHY nodes on qcm6490-idp platform.

PCIe1 is used to connect NVMe based SSD's on this platform.

Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcm6490-idp.dts | 39 +++++++++++++++++++++++++++-----
 1 file changed, 33 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qcm6490-idp.dts b/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
index 089a027c57d5..1fac051ab3e7 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
@@ -533,12 +533,7 @@ vreg_bob_3p296: bob {
 };
 
 &gcc {
-	protected-clocks = <GCC_AGGRE_NOC_PCIE_1_AXI_CLK> ,<GCC_PCIE_1_AUX_CLK>,
-			   <GCC_PCIE_1_AUX_CLK_SRC>, <GCC_PCIE_1_CFG_AHB_CLK>,
-			   <GCC_PCIE_1_MSTR_AXI_CLK>, <GCC_PCIE_1_PHY_RCHNG_CLK_SRC>,
-			   <GCC_PCIE_1_PIPE_CLK>, <GCC_PCIE_1_PIPE_CLK_SRC>,
-			   <GCC_PCIE_1_SLV_AXI_CLK>, <GCC_PCIE_1_SLV_Q2A_AXI_CLK>,
-			   <GCC_QSPI_CNOC_PERIPH_AHB_CLK>, <GCC_QSPI_CORE_CLK>,
+	protected-clocks = <GCC_QSPI_CNOC_PERIPH_AHB_CLK>, <GCC_QSPI_CORE_CLK>,
 			   <GCC_QSPI_CORE_CLK_SRC>,<GCC_USB30_SEC_MASTER_CLK>,
 			   <GCC_USB30_SEC_MASTER_CLK_SRC>, <GCC_USB30_SEC_MOCK_UTMI_CLK>,
 			   <GCC_USB30_SEC_MOCK_UTMI_CLK_SRC>,
@@ -615,6 +610,22 @@ &mdss_dsi_phy {
 	status = "okay";
 };
 
+&pcie1 {
+	perst-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
+
+	pinctrl-0 = <&pcie1_reset_n>, <&pcie1_wake_n>, <&pcie1_clkreq_n>;
+	pinctrl-names = "default";
+
+	status = "okay";
+};
+
+&pcie1_phy {
+	vdda-phy-supply = <&vreg_l10c_0p88>;
+	vdda-pll-supply = <&vreg_l6b_1p2>;
+
+	status = "okay";
+};
+
 &pm7250b_gpios {
 	lcd_disp_bias_en: lcd-disp-bias-en-state {
 		pins = "gpio2";
@@ -920,6 +931,22 @@ &tlmm {
 	gpio-reserved-ranges = <32 2>, /* ADSP */
 			       <48 4>; /* NFC */
 
+	pcie1_reset_n: pcie1-reset-n-state {
+		pins = "gpio2";
+		function = "gpio";
+		drive-strength = <16>;
+		output-low;
+		bias-disable;
+		};
+
+	pcie1_wake_n: pcie1-wake-n-state {
+		pins = "gpio3";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-pull-up;
+	};
+
+
 	sd_cd: sd-cd-state {
 		pins = "gpio91";
 		function = "gpio";

---
base-commit: 4f938c7d3b25d87b356af4106c2682caf8c835a2
change-id: 20260212-qcm6490-idp-24f7b6a1812d

Best regards,
-- 
Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>


