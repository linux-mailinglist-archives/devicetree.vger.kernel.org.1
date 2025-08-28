Return-Path: <devicetree+bounces-209863-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F42B3960A
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 09:56:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 394877A580B
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 07:54:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08E782D59E8;
	Thu, 28 Aug 2025 07:55:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="F5BxorN2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EFD02773D5
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 07:55:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756367758; cv=none; b=IarfkCcvPYTw3aQhi5OMbfJ4iVqIMmW9u+8n9uqrWoJ71nLyicMYT4Zforj1WxXnrPBXsT+fkRub7YXBRU+v43vskr8SLJhjg34zh2+PVeV7P838qg//nJn1FGwix1XBQM//12Bk1UCVH++DtPWRTJ0uBkgFnK4Ux/HyiWWWemU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756367758; c=relaxed/simple;
	bh=0H4B6/wnQyWhKc04n8w05M9ADN7Eyb8jMn+ZmbV/gtQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=PBxN1LSvoGSQ4TezXjUgph1YJcHyBSHqqh18fj+0NlVrORdbjm722OskOCfI5Q6p5CMe1JFRU3CY3qxo1kaLuLXb9qvXyrk2YWpARjiy+9gOIpjb0iey/J+NMV7V8wq2mTa97hAGBb2m2+fYIf/C9LQ9dXC5ZHyDiVD34didF1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=F5BxorN2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57S5vNa4031423
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 07:55:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=bBC6W9JnECBJI7fZ7UEMXy
	l/iD3qDlwniyIZoRzi26E=; b=F5BxorN2A+9FgxKiII2U3aAAuPytqR5XMZisuY
	EmpJtWjvqRIyRrHRFML8q2s9xOToYhZpMYp5zQ8/tT1PpgtfVHrZIqIiW3n1iZkE
	KkQuPHtu5NOhWJLKSh2hfZ2eCuoooeLWG0+h6HDBWTBv8fvQMeE//1MP1BgT6RfO
	MX9gpyliPkO/1c9BQLEQRFwV6LLgJ+YDA89kbOxpeAuyluCmMzHKW7hbjNm4dtSV
	kX7KouylD1L1O7Jyc+wHYxjmVk7j2VwbauKLU7WXhyT6dYWZKB78fRZycKWNpS7D
	ffP1hzgzGevOod9nU8qjKwgGlURPwvxG4MuXSfB0mxTVouFw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q5xpykuw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 07:55:56 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-248abeb9242so5901735ad.1
        for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 00:55:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756367756; x=1756972556;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bBC6W9JnECBJI7fZ7UEMXyl/iD3qDlwniyIZoRzi26E=;
        b=k26n1QANDDuiAw/WJGUw8TSgAu20Dphd0wP1rBDCNxvyzEZGbavZnsaq7lexOZ5shK
         FieLNIcMaaAiWK9LTJHPXxmthbqhgXKd/SGrmzl94i9kw6GVE2GuDDTxA/HrL0E2Zslm
         dL62NJ4u4oBkHSQEqBIw39391l5kquVZnZ1C1OZqEFveyvwPRoLq+4sA/X0EnVn2RhJl
         Q1BII2edax1TTjIdmflp8DfXEDIYNOOkaYFmbgteZ3DYNUTun0K3X7E2LRc/JjZB28cp
         BwgeDw9XmUrWKY97rlW3sCJn9G8QOA0u2ceyTi4vXda1MuasylvIHNQ3Ff0uXHbILYwt
         6gxA==
X-Forwarded-Encrypted: i=1; AJvYcCXv21UQHsdE+V0EXsG1TFeYaOKWgA0aYmm8TpaITH/pqcAs9Ce79zjosSBiuF4vJz6g7bcNfRwvdvkv@vger.kernel.org
X-Gm-Message-State: AOJu0YyLZJzPaZm0sAZMXC5ts+BYZoi9zzxe9Gc6ziUEhrtgC/luam/1
	oTfgAYMFpg/GwLp2NsbHHmjLlTzpegUu8yk/hNoUNSkP4QpZkBPwL+YL3vP8Er+Lh2Tt7SP0Wc7
	KD6fA2SQjEDH4Dt2mV3XVVFWCqhA8qzmL3lb0w57iKe7j9xJ8lVoQsRYQ0piESvmQ
X-Gm-Gg: ASbGncsMMMEltUruy8tsf2bubU4pgVFnPYOQZN6hcm0O6NuYmLeoGeTibFN2o4IitCT
	LSKNM4Y5UzRWcaD5+Ulu+hCfW+PGLM6Ibeui9veVeT3TV3uHZl28SajfklRN0DIZqS1HmFU5vUz
	NnzQ63HIJqvREh/B1sFTAEtwlX1s/LTuWM7h4bVxcJlspNSDF7b9jqGOXE66SlDmkCBoLwkQRT6
	vXbvKrtmVSX7szIBoQlVdGmWLx3qhsszl1hwiAbGuheHCA99SHeXv1xGY8D/MJuECWOPyEF7gsW
	H1NQlstfJGmV78ym249gFYslP619KiJzld2gf/3u2zs6hI9gRJnhjucJ7lPrWXxj/8xBhet3fum
	AerRPqhqcI+S5I/mIuGjiy4c2kNVA9+Z5zFqK3EHS/FAOPo8o7tpFjK/wV8mPIcytBjpfkKMYdW
	U=
X-Received: by 2002:a17:902:ef50:b0:23f:adc0:8cc2 with SMTP id d9443c01a7336-2462eeabf5amr288499435ad.27.1756367755763;
        Thu, 28 Aug 2025 00:55:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGa/KrLOg+padB8zxItZz6ZlcodozcmFOglriMBwzOlyMkNQFA4/ZG4ySDSBCvPSPQbqLiWlA==
X-Received: by 2002:a17:902:ef50:b0:23f:adc0:8cc2 with SMTP id d9443c01a7336-2462eeabf5amr288499075ad.27.1756367755229;
        Thu, 28 Aug 2025 00:55:55 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-248a0238408sm35472495ad.118.2025.08.28.00.55.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 00:55:54 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Thu, 28 Aug 2025 13:25:31 +0530
Subject: [PATCH] arm64: dts: qcom: ipq5424: Add support for emergency
 download mode
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250828-ipq5424-edl-v1-1-d6a403800023@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAHQLsGgC/02OQW7DIBBFr2LNuiMRDAT7KlVUDTC0SLVxGGq1i
 nL3usmmy/el//RuINwKC8zDDRrvRUpdDzi9DBA/aH1nLOlg0Epb5bXHsl2t0QY5faKPXjvSlKf
 JwfHYGufy/bC9Xp7c+Pp1SPtzhEDCGOuylD4PPiY75mAUjcrYs8vkXaDJ2/zHyUZrgyIe4X/MP
 DxSzmpCagtuEgvKj3Re3hoLd407r6k2bBxq7YLGRa+UMZRjnveTgcv9/gu6V+V09wAAAA==
X-Change-ID: 20250828-ipq5424-edl-8c826a2af996
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756367751; l=2558;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=0H4B6/wnQyWhKc04n8w05M9ADN7Eyb8jMn+ZmbV/gtQ=;
 b=5b8q6LZgiwQ2P+RhxRAHanaVk6I/Bs7cE1KA9CvzQqkiDYCCOx7MFmrNiSfKwYoe0QVDQhKm2
 rNDFSOKU6/ICBDqoev/w7LqrNi2enBxgmHnq9hZZ1Fev/+lnp1IyOfT
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Authority-Analysis: v=2.4 cv=KOlaDEFo c=1 sm=1 tr=0 ts=68b00b8c cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=cPK0JmkEVUuaBPUXAAcA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: 7wT5gK_HVe0gSP6ct_-DnyCL5Ao9_kkl
X-Proofpoint-ORIG-GUID: 7wT5gK_HVe0gSP6ct_-DnyCL5Ao9_kkl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzMyBTYWx0ZWRfX1CaN5RXPMqAi
 fch500m0o7wJYTkwS7ZlC8lUQ2/nMR32GM+XhBPYo3vwEGT75OV1KKiluaO4LZuLZBiy2zH2qae
 rSgzj0kJGoYXaAybE99+czMFF/SxOf9rwLNPOehv2kqowAunJgCwIGV472t8/O5DGLDbVHdkjFB
 6e10JiA9RryggTtvcohuf8sx06hyW5sPe4Kdv9q9DnXoDEGgVVagHwiVhgg7mOcQrrxJU1iiLAb
 eE6wu0QTTINJt0OGAq6fLoJB9bnoWl2e3QI0U8j1GsP4oqvxOaDk97ul5JioPS8w8BoQIWlom63
 pa+fo/wnEZ4Zh2Xu5rb6hPlfJNryXJ93FT+Jme0dD7sRLMfHGXunDveuM+CixhI5ZbqSTJOXQ9r
 T7S7oSYr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-28_02,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 bulkscore=0 adultscore=0 phishscore=0
 impostorscore=0 spamscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230033

Enable support for the vendor-specific SYSTEM_RESET2 reset in PSCI reboot
modes. Using "edl" as the reboot mode will reboot the device into emergency
download mode, allowing image loading via the USB interface at the Primary
Boot Loader (PBL) stage.

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
Depends-on:
https://lore.kernel.org/linux-arm-msm/20250815-arm-psci-system_reset2-vendor-reboots-v14-10-37d29f59ac9a@oss.qualcomm.com/
---
 arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts | 6 ++++++
 arch/arm64/boot/dts/qcom/ipq5424.dtsi       | 2 +-
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts b/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
index 738618551203b9fb58ee3d6f7b7a46b38eea4bf4..b47b0be41a61438c922b1e29d9a2ebc37fca2d70 100644
--- a/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
+++ b/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
@@ -108,6 +108,12 @@ &pcie3_phy {
 	status = "okay";
 };
 
+&psci {
+	reboot-mode {
+		mode-edl = <0 0x1>;
+	};
+};
+
 &qusb_phy_0 {
 	vdd-supply = <&vreg_misc_0p925>;
 	vdda-pll-supply = <&vreg_misc_1p8>;
diff --git a/arch/arm64/boot/dts/qcom/ipq5424.dtsi b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
index 67877fbbdf3a0dcb587e696ed4241f1075000366..8f2ee755d2cc406374faf9e76b0d409d159a7b12 100644
--- a/arch/arm64/boot/dts/qcom/ipq5424.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
@@ -184,7 +184,7 @@ pmu-dsu {
 		cpus = <&cpu0>, <&cpu1>, <&cpu2>, <&cpu3>;
 	};
 
-	psci {
+	psci: psci {
 		compatible = "arm,psci-1.0";
 		method = "smc";
 	};

---
base-commit: 8cd53fb40a304576fa86ba985f3045d5c55b0ae3
change-id: 20250828-ipq5424-edl-8c826a2af996
prerequisite-change-id: 20250709-arm-psci-system_reset2-vendor-reboots-46c80044afcf:v14
prerequisite-patch-id: 38f76a48b6b824f3fa8d8cbc05ae76b43ce79556
prerequisite-patch-id: ae7ae183210708f64fb3ff4f097de3c8af31680a
prerequisite-patch-id: 5ba323084ac74aa744696b54ff0c17d34e26b7de
prerequisite-patch-id: 3a2cedabc1bff24067dc224b2c077373c08b39a0
prerequisite-patch-id: e30b97929026120277585907cde2dc000a25a621
prerequisite-patch-id: e3ff400e6c72e835612b733b5573b01b045e7336
prerequisite-patch-id: 50e081a2a21166aee74af428934bc3b52d3cf43b
prerequisite-patch-id: a0148031385883a309dc165fac299d3eb5d4bcd4
prerequisite-patch-id: 3c0f5c0e93261f6dab1d9e7293a1a28ef64e2a66
prerequisite-patch-id: bb68380b11f9e868eacb0db9f97cc5f3ae8aa29a

Best regards,
-- 
Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>


