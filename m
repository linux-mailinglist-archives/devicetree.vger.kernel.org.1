Return-Path: <devicetree+bounces-220040-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 52AD5B91764
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 15:43:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id EF46A4E2315
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 13:43:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB40730F94D;
	Mon, 22 Sep 2025 13:41:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QsGWt0dE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0963730EF75
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 13:41:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758548509; cv=none; b=GhMeB3MBzVw6xcjSLlDpLOc6ODCqgUibMya4J5ETlZIIkhQri0RfGdtoWR4aUPc6ZG8WzV5iOS8hm61wTJS5K5bMwnrzf9B3jiNtjTggi0RV/CmpzmH+OqxsKXxgAtUrKuZJakJhuB7eZiJOr6oU7dgP58ILHvbCbV0U/MW50b8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758548509; c=relaxed/simple;
	bh=jt2htmKgLAbDjy2GYCODQ70+pePb2+pA3k9K3wbnmBg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eAyBCb/16Jk7QdA0yy+PJx+HcoANgeazSVefg2YFOT+BxP/5T+fSf2yOjD4FndE83Bub5kvMZpzX6Lkpsev0pB30Rum8PR4VNwuPfcPBK1RMayPs9Rc/xKzwVQ3IDM1JXanHeFxF3GcRdBoDnG8V9btfHsLAlDxS/XGrNIf/lFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QsGWt0dE; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58M9GqD6024071
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 13:41:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/XX86OrjTks5Leb3+o6s3i4q/wmypiYTlR/U8wdD3TE=; b=QsGWt0dE/ChdseDI
	HZp7l9iSEIy852PjlP1haS+wrWWzb3edOqlYm5RjQQV8iKYM8IT2wY0hCUqh/nbE
	VLeJUC5lp8VL/hnXGWz7BaFyYyQA9Fo8BOrdeFGSo+IBGJvYA3TLimX4NYXt6Ujc
	xu4tIo3mrrud6cMxjUPrruolcdrSqOkUDFBWFg3NkZemrkaX6bt9kpdru/NGcU72
	R0Lbfhsjf+13Fdiv4CaZAoNzanCXaSh1tZ8PZYehhf7wUO0ID400WL+6SY/LLA41
	FmVozoctQwwmI7P7pkwYrRBTcrksGaWOazf68DQaITClPOQAU8rUzCh/e9Mo5/Wh
	1TPqag==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b3ny8q37-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 13:41:47 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2699ebc0319so48702825ad.3
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 06:41:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758548506; x=1759153306;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/XX86OrjTks5Leb3+o6s3i4q/wmypiYTlR/U8wdD3TE=;
        b=qb7GMBwWuuDMbMotqF46wdq6LOsrD04u5oeIXF0jRqPnLrvwY/ahEBOpO3opiwB7n1
         OZBO97VNQC/0B+gbaydqMYijo9GEEQEv158PG64mMddx9EdXi7DsQnOEcHzGVnPxuzfB
         PLEmaQtDoyqNgWk0OD8mRG+qg+EVBj17A4EEt5EwQf63PLEKY053vww/SLQUSBuOfodL
         k6qNMYQr3HPylrbPV02xU6GeeVHuENRhAO9SgYI7nP7VzMZ1PnPfIl+fY7AiY4m2OCX2
         17iyyAARwgoItAE/GzbkAOAe1wJCtRl5ky8qtQp4sE3frMt3APaqSNQvPeaLieJ/Yz7A
         KAXA==
X-Forwarded-Encrypted: i=1; AJvYcCVRw1nlauP8L9SlmF661oq6zHGjMVX2aqkqf1+sxLEufxiaE7iMhD4qcd9fP1b3GVyFsHLOQhTgSOEu@vger.kernel.org
X-Gm-Message-State: AOJu0YyvVFFfO+46t8YM5uilJ4n4qZNZS4WZEwLK0m1EgKLHg2EqYdBq
	IzeLmZ5ukBKF1o4yDaAliOmmMaR5kNd/ggWt6KM6Mh3accjr5yfmjt6mr1Wq43IxJ6qzAdTdGkO
	zI0931tGk9Eexq6WbHBdC9oQp/YKW5O6mDdJFU0m5LL0Wualwq25j9oliUE5cwv29
X-Gm-Gg: ASbGncuVNAsmG8NIpAQBktU8b0zPu9+LqZIgIKXaUV8DU3MzB03sd+l6xtU5ziBIovb
	xcuKUa/obCE25ku6LSboNAfTWh0HFGC5Wo2VYmyHLPIvPIE4874cZL98Zdd2T2aYj0OL2yzd8pE
	7QfSnM7tGD7NZ7B1gWIdbyLeu9wsekp+3gVJzEjrKCKUVL/RsFw/R77Rgl17xEmejAV7JS8nEP5
	FsDJXIPQatznP0PdnULgon72CUo4413n+Bp43ZWti0NPNmq8MiYZnFr5hlach8EDSRzVdIcKHux
	FJiBrm5DPcq0a5ZuiQALzAfnhPPcb2Tpm0cLM0X+vCCd7OLF5GnrJSn0Z/aDbhVv7WYOlNI0yFT
	U
X-Received: by 2002:a17:902:e34d:b0:24b:1589:5054 with SMTP id d9443c01a7336-269ba459b10mr113332395ad.23.1758548506380;
        Mon, 22 Sep 2025 06:41:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEgNNvAsHHiGeaZP5VoAA68roYo+dylnrvlMM5UcciZSIuXaq9nHAxUEjxfhhDGauwJ/C7wsw==
X-Received: by 2002:a17:902:e34d:b0:24b:1589:5054 with SMTP id d9443c01a7336-269ba459b10mr113331885ad.23.1758548505861;
        Mon, 22 Sep 2025 06:41:45 -0700 (PDT)
Received: from hu-spratap-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2698016c13asm134246755ad.46.2025.09.22.06.41.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 06:41:45 -0700 (PDT)
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Date: Mon, 22 Sep 2025 19:10:18 +0530
Subject: [PATCH v15 08/14] arm64: dts: qcom: qcm6490-idp: Add PSCI
 SYSTEM_RESET2 types
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250922-arm-psci-system_reset2-vendor-reboots-v15-8-7ce3a08878f1@oss.qualcomm.com>
References: <20250922-arm-psci-system_reset2-vendor-reboots-v15-0-7ce3a08878f1@oss.qualcomm.com>
In-Reply-To: <20250922-arm-psci-system_reset2-vendor-reboots-v15-0-7ce3a08878f1@oss.qualcomm.com>
To: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Andy Yan <andy.yan@rock-chips.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Vinod Koul <vkoul@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Moritz Fischer <moritz.fischer@ettus.com>,
        John Stultz <john.stultz@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Andre Draszik <andre.draszik@linaro.org>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org,
        Elliot Berman <quic_eberman@quicinc.com>,
        Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Elliot Berman <elliot.berman@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758548419; l=1628;
 i=shivendra.pratap@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=SNQVZvT2DjzWoTyJ6c2xvqRrn5RNzP7FXJ+E143gp5o=;
 b=cXxhuEtcDtlLV8MbUWnz95YMzEkXXM9COlMe1WkI4LfKje+lywF9OJa4i2AekHnGx7dhm86zA
 TeShTpKJYqcBxvl8B0sIHfHocfMC4IReLyv/Qv9fiQba51ttSWvHuez
X-Developer-Key: i=shivendra.pratap@oss.qualcomm.com; a=ed25519;
 pk=CpsuL7yZ8NReDPhGgq6Xn/SRoa59mAvzWOW0QZoo4gw=
X-Authority-Analysis: v=2.4 cv=EuPSrTcA c=1 sm=1 tr=0 ts=68d1521b cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=w06kbW2hXDg5FjFnD0gA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: gA7f2L2BYmdb7w5l4mo4WXv63NlWygo6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA5MCBTYWx0ZWRfX/I/lb/nSHf8M
 SkqtUiZrTyIwBvvGMhGjaEgBeM2IU1LZVUg0pvyr5phxMcbt1nas+QnNwnEC+x/zSYWxNLE2tNg
 CLJAmHXsP5ak98XR+KAt7Xq1BTxW+aqen9s3KzoK3DP9Q7fr+2bk0QGxksgM4gj3Z+aUZLsvdsf
 fA5+Z5GF4WIyXcaTn/mrzxhlaBq/+Zc7J5PKlN9ynWgjGLDVndOophUHwecm0idEZ+dxvvcf7Id
 kagwyPCuvqCtLU+f2sFATA6mBFpX2D4AyaBhvlJ2ACLmWHrkmIYOE8h4j/r9QYOK3g7ykrYb3o8
 70qieyxnELZfp3Pr0F4osMYWG7dRxrtAgBojHQHN47c+nmxQZ5irI2kHCvgMxCRDt8+2nbqH7Vj
 0iAcxYJc
X-Proofpoint-ORIG-GUID: gA7f2L2BYmdb7w5l4mo4WXv63NlWygo6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_01,2025-09-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0
 clxscore=1015 priorityscore=1501 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220090

From: Elliot Berman <elliot.berman@oss.qualcomm.com>

Add support for SYSTEM_RESET2 vendor-specific resets in
qcm6490-idp as reboot-modes.  Describe the resets: "bootloader"
will cause device to reboot and stop in the bootloader's fastboot
mode. "edl" will cause device to reboot into "emergency download
mode", which permits loading images via the Firehose protocol.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Elliot Berman <elliot.berman@oss.qualcomm.com>
Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcm6490-idp.dts | 7 +++++++
 arch/arm64/boot/dts/qcom/sc7280.dtsi     | 2 +-
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/qcm6490-idp.dts b/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
index 73fce639370cd356687f14a3091848b8f422e36c..84322b74917f3a70adce5a4182adfa5d787ab11c 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
@@ -695,6 +695,13 @@ &pon_resin {
 	status = "okay";
 };
 
+&psci {
+	reboot-mode {
+		mode-bootloader = <0x10001 0x2>;
+		mode-edl = <0 0x1>;
+	};
+};
+
 &qupv3_id_0 {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index 4ac909214a8690111b2596d36a8e6e79d0f05131..bed389aec1c944a849fd2212e4e35e2a729fa935 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -858,7 +858,7 @@ pmu-a78 {
 		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_LOW>;
 	};
 
-	psci {
+	psci: psci {
 		compatible = "arm,psci-1.0";
 		method = "smc";
 

-- 
2.34.1


