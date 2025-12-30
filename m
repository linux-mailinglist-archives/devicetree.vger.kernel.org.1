Return-Path: <devicetree+bounces-250344-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A9FC8CE8857
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 03:11:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 54003301028C
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 02:11:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 800BA2DF137;
	Tue, 30 Dec 2025 02:11:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="P+FnncKZ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="eA9M75cX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD4F178F3A
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 02:11:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767060669; cv=none; b=m5cTPtDRNFYwkbI85qZjyzK24AOoQ4nrNODqU4GzlTtwAJogIf8Ay3ikxb8IgmpOTvepGhCf6E2i/7a+r8UBW14DeE49lUk7Neoy/rFrzdkaKSJ/uNWM+wyM6tm9yuRfnPCxzUEcdqbsYYuHF16q2U0ON89VwnQrh26lFyRJAI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767060669; c=relaxed/simple;
	bh=q040qxrszoLx72ZatF/uWVEn5RhRJPorgd4K3vHqIbA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=NmFd2esBXywCv0ij/SgxwQw6+MRRXUQ8C5wEDkLnCCOmt/jkqMEqsh/zJ85tNTotbPoiZ009ux5VlqejV3ggnmGBwkGCGe5TFu+LEiZetz5LTfYYqlEQGPh2URjL9uEGZeKsvCtdvvSXuBU67mgVuppBKeWCbpndR3v/ZrEatfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=P+FnncKZ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=eA9M75cX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BTNQivp3751745
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 02:11:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=LVX55IHeC0dKVknazZwGo4
	mtq6ImbxoRhLjZJNfH/qA=; b=P+FnncKZA9MvphDEjr0H4++mhRWUSt4V+eD4R0
	NLbnCpd8ev5C0+iBrE7LN596PlhtRjxb+O/aZEXdU1ZUeVOeVeaTkgwu60oETNlp
	6qp3FiWKD4IPthDWXVE8dQnd/K6NlJPGhX1I6jWVJ0Z1yVh6aPvaTmRDnJb8adp2
	dvnQJ6EXVWjvbD2DoZy5vZlPa4GNwQz4lOCMGgi72/609w6utufbSmAZHfpN8+tk
	lmzMvaq+Pc8EzpPbf3/U1IAeAg6YsOXeY389vJN0p//YTPmjXDbgt/kfRdsubJXv
	lbQ1xPA5eYeQh3lqBOCSYaJBZPFCJzhTVMCcJGoS+frpjAjA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba87bwv5v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 02:11:05 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a0a4b748a0so224467225ad.1
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 18:11:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767060665; x=1767665465; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LVX55IHeC0dKVknazZwGo4mtq6ImbxoRhLjZJNfH/qA=;
        b=eA9M75cXHCO0IcaE5FPryDv9uKBzJEzz1URtTh6gGqTDd9MXlAgUKikkSRKIllNW3q
         E0hUNV+0EEL0kb/Um/+2Utn4MfJ042FEq5VguHtGyyfHgVWji6XOPOmTQkHSz6iTOEI6
         zPHm9Dfqxc8I/rI7tFMuEk7R7Au6YP5aZZihcDCdrp7zU/R4QdAlZrBpn1L0m2CKOxk3
         EB1JU37yzXiwFJ+DaVCHu+7E0+vHLYbh0CiZoBfluZMGx+hIUDRwMTzuZN+2JTMp87wf
         XGEJnvfhRJAccLLdUenpaztA9gmRBmhn4FXJpNke5ruPpBrpdnRk7YMqM55btp9KRHta
         X7LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767060665; x=1767665465;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LVX55IHeC0dKVknazZwGo4mtq6ImbxoRhLjZJNfH/qA=;
        b=Jw70x+RIV+M3awXGRKkI2dviBWwivP5PoeNyukMTBnUNJopLXBM2dBwO53DxPc1LQ/
         tcCs5CFvVwI3gR2z9oi+CtA8D4gyb13AmP5H+OcltzAikSSSxRb0Oqf7MG/4KUI6Wjn6
         jUVafG5rLHybNpZSdXcqjCsDN+cI/CYdre+3M4EibZWtB45mlWz3N7JUP+Xw1vWJqP36
         JGXfGhn8H+3gX6wm2RC11fzvTaskC3wnnFgImsZbBRp0oHzAZZuA+kE0x56NekxQhXzj
         EEqbfErCP+8WE4/SJGosXdCRqEZpwq22IMqStQQlAvtivTdtvfFeV05KlqGkiY3fjRke
         QBBA==
X-Forwarded-Encrypted: i=1; AJvYcCVRxrprpgp1Tn5WJRA9COj0bh5tFamU1yAale/0MwGGggn1h2VJaW2jvc5KQBknNrQuX4tmyShFCDrZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9BpbkgjsXKlFOiuatO77r+z4DY4WPnxM9OjJJTJ6v9v/Y1Tum
	mUD285tbb075OM/E1jyuoldccSFzoSk619dykNOZsxj23MVbVngIY5v1PMx84kxthUHlGqW1grc
	eMmZqI8wVjO3HYlfO6VKRBQ4STyI4w3fgD4xjo0F5A5LszYQzy3sJBys6zX/9pj9a
X-Gm-Gg: AY/fxX5gyUEFTAVq5KhTK8z8BEkoVuEFyL60v6lc6BWM4go27DyWlu/THHQ3dAxzQKV
	R5Y3kC0xOLPKO3JKNkT9Fg2RpszfYXyAUu9PjOXYhygvW8ZpFiXv2DK+oqRmdJXsSEpfn/6w902
	N4RKlNXo05lz4LSHfQUT+9ApGNbxHaqqXwhcnFIUnv3jCWLnIgZx13kZTyLNwcRObOTvdy3okbr
	FT60VXIYmstK26VDbiSuKKwb0+kNkc9Ek/X1GDF9VFSpNB7r1VsBqwFsCOo65tkj+PLzcRmL38j
	XLovbZ2Hy6V3iG9JA/kCEYxa7b7FiZDOzgUJXFtDQVIV7nEsRLB6hI9Aji7uwULyXuwV8GSchOt
	cZXpY6NAnScykIVXcNMgSZrG5klLuCQGhmltOSnQ0+MmmqYrP+7fksL01TtHfeZhwHoDyC/aIGa
	tj
X-Received: by 2002:a17:903:1b2b:b0:2a1:388c:ca63 with SMTP id d9443c01a7336-2a2f2a35f98mr354226695ad.31.1767060664633;
        Mon, 29 Dec 2025 18:11:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGxTl2KV76dkdZFJhrpSAozNEKM3HJcWcBhDMr4HvuqO4vhIatd3rgSxO3rbUJMes1dXjv8xQ==
X-Received: by 2002:a17:903:1b2b:b0:2a1:388c:ca63 with SMTP id d9443c01a7336-2a2f2a35f98mr354226265ad.31.1767060663926;
        Mon, 29 Dec 2025 18:11:03 -0800 (PST)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e76de1e41sm15972926a91.2.2025.12.29.18.11.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 18:11:03 -0800 (PST)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Tue, 30 Dec 2025 10:10:47 +0800
Subject: [PATCH] arm64: dts: qcom: glymur: add coresight nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251230-add-coresight-nodes-for-glymur-v1-1-103b6d24f1ca@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAKg0U2kC/0WOzY6DIBRGX8WwHhJ+vCq+yqQxV7hYklFaQDNN0
 3cvUxezPN/iO+fJMqVAmY3NkyU6Qg5xqyC/GmavuC3Eg6vMlFAglTIcneM2JsphuRa+RUeZ+5j
 48vNY98QNgJ/NAD10yOrJLZEPvx/B9+XkRPe9eso5/mvG5iMRouf7LZdEuE6Hns7jKWwlRbfbU
 gM5oBQwQ9sa7cZD/4lmzFTD1jWUsRFicBraHpFgtkPn0WpyqGXfDkZ2xmrvUErFLq/XGzEUuyo
 DAQAA
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767060660; l=39883;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=q040qxrszoLx72ZatF/uWVEn5RhRJPorgd4K3vHqIbA=;
 b=HIFf2XAbqynBpQH+GWt7f27a5zjcv7/qHyEejEmtRWbGm7RUObbMW2EMBbwjLvxLnNTPWJUzp
 eAkKyNk4lmxDJvGreUxeJcZ/nVPUy9LSewijbaS/KrLyDg7iFxfNusM
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Proofpoint-ORIG-GUID: 0pz4uVsMElc4R_PIfgR9rgYe4TGExNki
X-Proofpoint-GUID: 0pz4uVsMElc4R_PIfgR9rgYe4TGExNki
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMwMDAxOCBTYWx0ZWRfX3bvca1soRPRa
 J8dRH9KHiygHqLTWa6m1ZVex2pJ7Ypef6/fMQB3K24n8o9+VGsdnPLMJ/6EWfqnWbQ6FUhA5/6Y
 1i+CzdPd3bUvDf8QPpb7UT+7HcAnyYL6/keHIAgSuMI4iEc567Z3y6+15S8Sf5QkHOgyL+MCeyr
 h3ZwuiRWw7Bbl6Bm77L4HjX//RCjxkgETdBfWAAwDap3Cq4tEM3bzSVo+/1JpThWSQ/Pkb03tR/
 JPnkk4EWt3uS9vsUgP8rwnLQ0T/hXO6+JJnMZBHdMCOimzD/HDh+A8IYXk9z7/Z69qV65yDO4rH
 edDla2x/i7hQ7uK1afSYUpFoDmu/bD9iPYWv8+GgCgcMdnynBW8oVOI/M/YdhWhrVuRPTyV2Ekd
 DHqrgYJgRwMytdIzKAVGPIQWSrfRdbKa4Oe/UuaW34/U5A08qgGbZqmGevhsYwik+ho6pD6NzJ5
 t0DLBZq4CW6wmxeoQTg==
X-Authority-Analysis: v=2.4 cv=do7Wylg4 c=1 sm=1 tr=0 ts=695334b9 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=puQops5cSOKntX4J9bcA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_07,2025-12-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 bulkscore=0 clxscore=1015 lowpriorityscore=0
 adultscore=0 spamscore=0 suspectscore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512300018

Add CoreSight nodes to enable trace paths like TPDM->ETF/STM->ETF.
These devices are part of the AOSS, CDSP, QDSS, PCIe5, TraceNoc and
some small subsystems, such as GCC, IPCC, PMU and so on.

Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur.dtsi | 1529 +++++++++++++++++++++++++++++-----
 1 file changed, 1335 insertions(+), 194 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
index eb042541cfe1..9ef1fd66168c 100644
--- a/arch/arm64/boot/dts/qcom/glymur.dtsi
+++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
@@ -358,6 +358,18 @@ domain_ss3: domain-sleep-0 {
 		};
 	};
 
+	dummy-sink {
+		compatible = "arm,coresight-dummy-sink";
+
+		in-ports {
+			port {
+				eud_in: endpoint {
+					remote-endpoint = <&swao_rep_out1>;
+				};
+			};
+		};
+	};
+
 	firmware {
 		scm: scm {
 			compatible = "qcom,scm-glymur", "qcom,scm";
@@ -4076,251 +4088,1354 @@ rx-pins {
 			};
 		};
 
-		apps_smmu: iommu@15000000 {
-			compatible = "qcom,glymur-smmu-500",
-				     "qcom,smmu-500",
-				     "arm,mmu-500";
-			reg = <0x0 0x15000000 0x0 0x100000>;
-
-			#iommu-cells = <2>;
-			#global-interrupts = <1>;
+		stm: stm@10002000 {
+			compatible = "arm,coresight-stm", "arm,primecell";
+			reg = <0x0 0x10002000 0x0 0x1000>,
+			      <0x0 0x16280000 0x0 0x180000>;
+			reg-names = "stm-base",
+				    "stm-stimulus-base";
 
-			interrupts = <GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 99 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 101 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 107 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 181 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 182 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 183 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 184 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 185 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 186 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 187 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 188 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 189 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 190 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 191 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 192 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 315 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 316 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 317 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 318 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 319 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 320 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 321 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 322 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 323 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 324 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 325 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 326 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 327 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 328 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 329 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 330 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 331 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 332 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 333 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 334 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 335 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 336 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 337 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 338 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 339 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 340 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 341 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 342 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 343 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 344 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 345 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 395 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 396 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 397 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 398 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 399 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 400 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 401 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 402 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 403 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 404 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 405 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 406 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 407 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 408 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 409 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 418 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 419 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 412 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 421 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 707 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 423 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 424 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 425 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 690 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 691 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 692 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 693 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 694 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 695 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 696 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 697 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 410 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 488 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 489 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 490 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 491 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 492 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 493 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 494 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 495 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 496 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 497 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 498 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 499 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 500 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 501 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 502 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
 
-			dma-coherent;
+			out-ports {
+				port {
+					stm_out: endpoint {
+						remote-endpoint = <&funnel0_in7>;
+					};
+				};
+			};
 		};
 
-		intc: interrupt-controller@17000000 {
-			compatible = "arm,gic-v3";
-			reg = <0x0 0x17000000 0x0 0x10000>,
-			      <0x0 0x17080000 0x0 0x480000>;
+		tpda@10004000 {
+			compatible = "qcom,coresight-tpda", "arm,primecell";
+			reg = <0x0 0x10004000 0x0 0x1000>;
 
-			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
 
-			#interrupt-cells = <3>;
-			interrupt-controller;
+			in-ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
 
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+				port@1 {
+					reg = <1>;
 
-			gic_its: gic-its@17040000 {
-				compatible = "arm,gic-v3-its";
-				reg = <0x0 0x17040000 0x0 0x40000>;
+					qdss_tpda_in1: endpoint {
+						remote-endpoint = <&spdm_tpdm_out>;
+					};
+				};
+			};
 
-				msi-controller;
-				#msi-cells = <1>;
+			out-ports {
+				port {
+					qdss_tpda_out: endpoint {
+						remote-endpoint = <&funnel0_in6>;
+					};
+				};
 			};
 		};
 
-		watchdog@17600000 {
-			compatible = "qcom,kpss-wdt";
-			reg = <0x0 0x17600000 0x0 0x1000>;
-			clocks = <&sleep_clk>;
-			interrupts = <GIC_SPI 0 IRQ_TYPE_EDGE_RISING>;
-		};
+		tpdm@1000f000 {
+			compatible = "qcom,coresight-tpdm", "arm,primecell";
+			reg = <0x0 0x1000f000 0x0 0x1000>;
 
-		pdp0_mbox: mailbox@17610000 {
-			compatible = "qcom,glymur-cpucp-mbox", "qcom,x1e80100-cpucp-mbox";
-			reg = <0x0 0x17610000 0 0x8000>, <0 0x19980000 0 0x8000>;
-			interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
-			#mbox-cells = <1>;
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			qcom,cmb-element-bits = <32>;
+			qcom,cmb-msrs-num = <32>;
+
+			out-ports {
+				port {
+					spdm_tpdm_out: endpoint {
+						remote-endpoint = <&qdss_tpda_in1>;
+					};
+				};
+			};
 		};
 
-		timer@17810000 {
-			compatible = "arm,armv7-timer-mem";
-			reg = <0x0 0x17810000 0x0 0x1000>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+		funnel@10041000 {
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
+			reg = <0x0 0x10041000 0x0 0x1000>;
 
-			frame@17811000 {
-				reg = <0x0 0x17811000 0x0 0x1000>,
-				      <0x0 0x17812000 0x0 0x1000>;
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
 
-				interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>,
-					     <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>;
+			in-ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
 
-				frame-number = <0>;
+				port@0 {
+					reg = <0>;
+
+					funnel0_in0: endpoint {
+						remote-endpoint = <&tn_ag_out>;
+					};
+				};
+
+				port@6 {
+					reg = <6>;
+
+					funnel0_in6: endpoint {
+						remote-endpoint = <&qdss_tpda_out>;
+					};
+				};
+
+				port@7 {
+					reg = <7>;
+
+					funnel0_in7: endpoint {
+						remote-endpoint = <&stm_out>;
+					};
+				};
 			};
 
-			frame@17813000 {
-				reg = <0x0 0x17813000 0x0 0x1000>;
+			out-ports {
+				port {
+					funnel0_out: endpoint {
+						remote-endpoint = <&aoss_funnel_in6>;
+					};
+				};
+			};
+		};
 
-				interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
+		tpdm@1102c000 {
+			compatible = "qcom,coresight-tpdm", "arm,primecell";
+			reg = <0x0 0x1102c000 0x0 0x1000>;
 
-				frame-number = <1>;
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
 
-				status = "disabled";
+			qcom,dsb-msrs-num = <32>;
+
+			out-ports {
+				port {
+					gcc_tpdm_out: endpoint {
+						remote-endpoint = <&tn_ag_in36>;
+					};
+				};
 			};
+		};
 
-			frame@17815000 {
-				reg = <0x0 0x17815000 0x0 0x1000>;
+		cti@11161000 {
+			compatible = "arm,coresight-cti", "arm,primecell";
+			reg = <0x0 0x11161000 0x0 0x1000>;
 
-				interrupts = <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+		};
 
-				frame-number = <2>;
+		cti@11162000 {
+			compatible = "arm,coresight-cti", "arm,primecell";
+			reg = <0x0 0x11162000 0x0 0x1000>;
 
-				status = "disabled";
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+		};
+
+		tpdm@11180000 {
+			compatible = "qcom,coresight-tpdm", "arm,primecell";
+			reg = <0x0 0x11180000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			qcom,dsb-element-bits = <32>;
+			qcom,dsb-msrs-num = <32>;
+
+			out-ports {
+				port {
+					cdsp_tpdm_out: endpoint {
+						remote-endpoint = <&cdsp_tpda_in0>;
+					};
+				};
 			};
+		};
 
-			frame@17817000 {
-				reg = <0x0 0x17817000 0x0 0x1000>;
+		tpdm@11183000 {
+			compatible = "qcom,coresight-tpdm", "arm,primecell";
+			reg = <0x0 0x11183000 0x0 0x1000>;
 
-				interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
 
-				frame-number = <3>;
+			qcom,cmb-element-bits = <32>;
+			qcom,cmb-msrs-num = <32>;
+			qcom,dsb-element-bits = <32>;
+			qcom,dsb-msrs-num = <32>;
 
-				status = "disabled";
+			out-ports {
+				port {
+					cdsp_cmsr_tpdm_out: endpoint {
+						remote-endpoint = <&cdsp_tpda_in3>;
+					};
+				};
 			};
+		};
 
-			frame@17819000 {
-				reg = <0x0 0x17819000 0x0 0x1000>;
+		tpdm@11184000 {
+			compatible = "qcom,coresight-tpdm", "arm,primecell";
+			reg = <0x0 0x11184000 0x0 0x1000>;
 
-				interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
 
-				frame-number = <4>;
+			qcom,cmb-element-bits = <32>;
+			qcom,cmb-msrs-num = <32>;
+			qcom,dsb-element-bits = <32>;
+			qcom,dsb-msrs-num = <32>;
 
-				status = "disabled";
+			out-ports {
+				port {
+					cdsp_cmsr2_tpdm_out: endpoint {
+						remote-endpoint = <&cdsp_tpda_in4>;
+					};
+				};
 			};
+		};
 
-			frame@1781b000 {
-				reg = <0x0 0x1781b000 0x0 0x1000>;
+		tpdm@11185000 {
+			compatible = "qcom,coresight-tpdm", "arm,primecell";
+			reg = <0x0 0x11185000 0x0 0x1000>;
 
-				interrupts = <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
 
-				frame-number = <5>;
+			qcom,cmb-element-bits = <64>;
+			qcom,cmb-msrs-num = <32>;
 
-				status = "disabled";
+			out-ports {
+				port {
+					cdsp_dpm1_tpdm_out: endpoint {
+						remote-endpoint = <&cdsp_tpda_in5>;
+					};
+				};
 			};
+		};
 
-			frame@1781d000 {
-				reg = <0x0 0x1781d000 0x0 0x1000>;
+		tpdm@11186000 {
+			compatible = "qcom,coresight-tpdm", "arm,primecell";
+			reg = <0x0 0x11186000 0x0 0x1000>;
 
-				interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
 
-				frame-number = <6>;
+			qcom,cmb-element-bits = <64>;
+			qcom,cmb-msrs-num = <32>;
 
-				status = "disabled";
+			out-ports {
+				port {
+					cdsp_dpm2_tpdm_out: endpoint {
+						remote-endpoint = <&cdsp_tpda_in6>;
+					};
+				};
 			};
 		};
 
-		apps_rsc: rsc@18900000  {
-			compatible = "qcom,rpmh-rsc";
-			label = "apps_rsc";
-			reg = <0x0 0x18900000 0x0 0x10000>,
+		tpda@11188000 {
+			compatible = "qcom,coresight-tpda", "arm,primecell";
+			reg = <0x0 0x11188000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			in-ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					cdsp_tpda_in0: endpoint {
+						remote-endpoint = <&cdsp_tpdm_out>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					cdsp_tpda_in1: endpoint {
+						remote-endpoint = <&cdsp_llm_tpdm_out>;
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+
+					cdsp_tpda_in2: endpoint {
+						remote-endpoint = <&cdsp_llm2_tpdm_out>;
+					};
+				};
+
+				port@3 {
+					reg = <3>;
+
+					cdsp_tpda_in3: endpoint {
+						remote-endpoint = <&cdsp_cmsr_tpdm_out>;
+					};
+				};
+
+				port@4 {
+					reg = <4>;
+
+					cdsp_tpda_in4: endpoint {
+						remote-endpoint = <&cdsp_cmsr2_tpdm_out>;
+					};
+				};
+
+				port@5 {
+					reg = <5>;
+
+					cdsp_tpda_in5: endpoint {
+						remote-endpoint = <&cdsp_dpm1_tpdm_out>;
+					};
+				};
+
+				port@6 {
+					reg = <6>;
+
+					cdsp_tpda_in6: endpoint {
+						remote-endpoint = <&cdsp_dpm2_tpdm_out>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					cdsp_tpda_out: endpoint {
+						remote-endpoint = <&cdsp_funnel_in0>;
+					};
+				};
+			};
+		};
+
+		funnel@11189000 {
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
+			reg = <0x0 0x11189000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			in-ports {
+				port {
+					cdsp_funnel_in0: endpoint {
+						remote-endpoint = <&cdsp_tpda_out>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					cdsp_funnel_out: endpoint {
+						remote-endpoint = <&tn_ag_in53>;
+					};
+				};
+			};
+		};
+
+		cti@11193000 {
+			compatible = "arm,coresight-cti", "arm,primecell";
+			reg = <0x0 0x11193000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+		};
+
+		cti@111ab000 {
+			compatible = "arm,coresight-cti", "arm,primecell";
+			reg = <0x0 0x111ab000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+		};
+
+		tpdm@111d0000 {
+			compatible = "qcom,coresight-tpdm", "arm,primecell";
+			reg = <0x0 0x111d0000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			qcom,dsb-msrs-num = <32>;
+
+			out-ports {
+				port {
+					qm_tpdm_out: endpoint {
+						remote-endpoint = <&tn_ag_in35>;
+					};
+				};
+			};
+		};
+
+		tn@11200000  {
+			compatible = "qcom,coresight-tnoc", "arm,primecell";
+			reg = <0x0 0x11200000 0x0 0x4200>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			in-ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@6 {
+					reg = <6>;
+
+					tn_ag_in6: endpoint {
+						remote-endpoint = <&mm_dsb_tpdm_out>;
+					};
+				};
+
+				port@10 {
+					reg = <0x10>;
+
+					tn_ag_in16: endpoint {
+						remote-endpoint = <&east_dsb_tpdm_out>;
+					};
+				};
+
+				port@21 {
+					reg = <0x21>;
+
+					tn_ag_in33: endpoint {
+						remote-endpoint = <&west_dsb_tpdm_out>;
+					};
+				};
+
+				port@23 {
+					reg = <0x23>;
+
+					tn_ag_in35: endpoint {
+						remote-endpoint = <&qm_tpdm_out>;
+					};
+				};
+
+				port@24 {
+					reg = <0x24>;
+
+					tn_ag_in36: endpoint {
+						remote-endpoint = <&gcc_tpdm_out>;
+					};
+				};
+
+				port@32 {
+					reg = <0x32>;
+
+					tn_ag_in50: endpoint {
+						remote-endpoint = <&pcie_rscc_tpda_out>;
+					};
+				};
+
+				port@35 {
+					reg = <0x35>;
+
+					tn_ag_in53: endpoint {
+						remote-endpoint = <&cdsp_funnel_out>;
+					};
+				};
+
+				port@3f {
+					reg = <0x3f>;
+
+					tn_ag_in63: endpoint {
+						remote-endpoint = <&center_dsb_tpdm_out>;
+					};
+				};
+
+				port@40 {
+					reg = <0x40>;
+
+					tn_ag_in64: endpoint {
+						remote-endpoint = <&ipcc_cmb_tpdm_out>;
+					};
+				};
+
+				port@41 {
+					reg = <0x41>;
+
+					tn_ag_in65: endpoint {
+						remote-endpoint = <&qrng_tpdm_out>;
+					};
+				};
+
+				port@42 {
+					reg = <0x42>;
+
+					tn_ag_in66: endpoint {
+						remote-endpoint = <&pmu_tpdm_out>;
+					};
+				};
+
+				port@43 {
+					reg = <0x43>;
+
+					tn_ag_in67: endpoint {
+						remote-endpoint = <&rdpm_west_cmb0_tpdm_out>;
+					};
+				};
+
+				port@44 {
+					reg = <0x44>;
+
+					tn_ag_in68: endpoint {
+						remote-endpoint = <&rdpm_west_cmb1_tpdm_out>;
+					};
+				};
+
+				port@45 {
+					reg = <0x45>;
+
+					tn_ag_in69: endpoint {
+						remote-endpoint = <&rdpm_west_cmb2_tpdm_out>;
+					};
+				};
+
+				port@4b {
+					reg = <0x4b>;
+
+					tn_ag_in75: endpoint {
+						remote-endpoint = <&south_dsb2_tpdm_out>;
+					};
+				};
+
+				port@52 {
+					reg = <0x52>;
+
+					tn_ag_in82: endpoint {
+						remote-endpoint = <&south_dsb_tpdm_out>;
+					};
+				};
+
+				port@53 {
+					reg = <0x53>;
+
+					tn_ag_in83: endpoint {
+						remote-endpoint = <&center_dsb1_tpdm_out>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					tn_ag_out: endpoint {
+						remote-endpoint = <&funnel0_in0>;
+					};
+				};
+			};
+		};
+
+		tpdm@11207000 {
+			compatible = "qcom,coresight-tpdm", "arm,primecell";
+			reg = <0x0 0x11207000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			qcom,dsb-msrs-num = <32>;
+
+			out-ports {
+				port {
+					mm_dsb_tpdm_out: endpoint {
+						remote-endpoint = <&tn_ag_in6>;
+					};
+				};
+			};
+		};
+
+		tpdm@1120b000 {
+			compatible = "qcom,coresight-tpdm", "arm,primecell";
+			reg = <0x0 0x1120b000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			qcom,dsb-msrs-num = <32>;
+
+			out-ports {
+				port {
+					east_dsb_tpdm_out: endpoint {
+						remote-endpoint = <&tn_ag_in16>;
+					};
+				};
+			};
+		};
+
+		tpdm@11213000 {
+			compatible = "qcom,coresight-tpdm", "arm,primecell";
+			reg = <0x0 0x11213000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			qcom,dsb-msrs-num = <32>;
+
+			out-ports {
+				port {
+					west_dsb_tpdm_out: endpoint {
+						remote-endpoint = <&tn_ag_in33>;
+					};
+				};
+			};
+		};
+
+		tpdm@11219000 {
+			compatible = "qcom,coresight-tpdm", "arm,primecell";
+			reg = <0x0 0x11219000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			qcom,dsb-msrs-num = <32>;
+
+			out-ports {
+				port {
+					center_dsb_tpdm_out: endpoint {
+						remote-endpoint = <&tn_ag_in63>;
+					};
+				};
+			};
+		};
+
+		tpdm@1121a000 {
+			compatible = "qcom,coresight-tpdm", "arm,primecell";
+			reg = <0x0 0x1121a000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			qcom,cmb-msrs-num = <32>;
+
+			out-ports {
+				port {
+					ipcc_cmb_tpdm_out: endpoint {
+						remote-endpoint = <&tn_ag_in64>;
+					};
+				};
+			};
+		};
+
+		tpdm@1121b000 {
+			compatible = "qcom,coresight-tpdm", "arm,primecell";
+			reg = <0x0 0x1121b000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			qcom,cmb-msrs-num = <32>;
+
+			out-ports {
+				port {
+					qrng_tpdm_out: endpoint {
+						remote-endpoint = <&tn_ag_in65>;
+					};
+				};
+			};
+		};
+
+		tpdm@1121c000 {
+			compatible = "qcom,coresight-tpdm", "arm,primecell";
+			reg = <0x0 0x1121c000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			qcom,dsb-msrs-num = <32>;
+
+			out-ports {
+				port {
+					pmu_tpdm_out: endpoint {
+						remote-endpoint = <&tn_ag_in66>;
+					};
+				};
+			};
+		};
+
+		tpdm@1121d000 {
+			compatible = "qcom,coresight-tpdm", "arm,primecell";
+			reg = <0x0 0x1121d000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			qcom,cmb-msrs-num = <32>;
+
+			out-ports {
+				port {
+					rdpm_west_cmb0_tpdm_out: endpoint {
+						remote-endpoint = <&tn_ag_in67>;
+					};
+				};
+			};
+		};
+
+		tpdm@1121e000 {
+			compatible = "qcom,coresight-tpdm", "arm,primecell";
+			reg = <0x0 0x1121e000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			qcom,cmb-msrs-num = <32>;
+
+			out-ports {
+				port {
+					rdpm_west_cmb1_tpdm_out: endpoint {
+						remote-endpoint = <&tn_ag_in68>;
+					};
+				};
+			};
+		};
+
+		tpdm@1121f000 {
+			compatible = "qcom,coresight-tpdm", "arm,primecell";
+			reg = <0x0 0x1121f000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			qcom,cmb-msrs-num = <32>;
+
+			out-ports {
+				port {
+					rdpm_west_cmb2_tpdm_out: endpoint {
+						remote-endpoint = <&tn_ag_in69>;
+					};
+				};
+			};
+		};
+
+		tpdm@11220000 {
+			compatible = "qcom,coresight-tpdm", "arm,primecell";
+			reg = <0x0 0x11220000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			qcom,dsb-msrs-num = <32>;
+
+			out-ports {
+				port {
+					center_dsb1_tpdm_out: endpoint {
+						remote-endpoint = <&tn_ag_in83>;
+					};
+				};
+			};
+		};
+
+		tpdm@11224000 {
+			compatible = "qcom,coresight-tpdm", "arm,primecell";
+			reg = <0x0 0x11224000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			qcom,dsb-msrs-num = <32>;
+
+			out-ports {
+				port {
+					south_dsb2_tpdm_out: endpoint {
+						remote-endpoint = <&tn_ag_in75>;
+					};
+				};
+			};
+		};
+
+		tpdm@11228000 {
+			compatible = "qcom,coresight-tpdm", "arm,primecell";
+			reg = <0x0 0x11228000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			qcom,dsb-msrs-num = <32>;
+
+			out-ports {
+				port {
+					south_dsb_tpdm_out: endpoint {
+						remote-endpoint = <&tn_ag_in82>;
+					};
+				};
+			};
+		};
+
+		tpdm@11470000 {
+			compatible = "qcom,coresight-tpdm", "arm,primecell";
+			reg = <0x0 0x11470000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			qcom,cmb-element-bits = <32>;
+			qcom,cmb-msrs-num = <32>;
+
+			out-ports {
+				port {
+					pcie_rscc_tpdm_out: endpoint {
+						remote-endpoint = <&pcie_rscc_tpda_in0>;
+					};
+				};
+			};
+		};
+
+		tpda@11471000 {
+			compatible = "qcom,coresight-tpda", "arm,primecell";
+			reg = <0x0 0x11471000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			in-ports {
+				port {
+					pcie_rscc_tpda_in0: endpoint {
+						remote-endpoint = <&pcie_rscc_tpdm_out>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					pcie_rscc_tpda_out: endpoint {
+						remote-endpoint = <&tn_ag_in50>;
+					};
+				};
+			};
+		};
+
+		tpdm@11c03000 {
+			compatible = "qcom,coresight-tpdm", "arm,primecell";
+			reg = <0x0 0x11c03000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			qcom,cmb-element-bits = <64>;
+			qcom,cmb-msrs-num = <32>;
+
+			out-ports {
+				port {
+					swao_prio4_tpdm_out: endpoint {
+						remote-endpoint = <&aoss_tpda_in4>;
+					};
+				};
+			};
+		};
+
+		funnel@11c04000 {
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
+			reg = <0x0 0x11c04000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			in-ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@5 {
+					reg = <5>;
+
+					aoss_funnel_in5: endpoint {
+						remote-endpoint = <&aoss_tpda_out>;
+					};
+				};
+
+				port@6 {
+					reg = <6>;
+
+					aoss_funnel_in6: endpoint {
+						remote-endpoint = <&funnel0_out>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					aoss_funnel_out: endpoint {
+						remote-endpoint = <&etf0_in>;
+					};
+				};
+			};
+		};
+
+		tmc_etf: tmc@11c05000 {
+			compatible = "arm,coresight-tmc", "arm,primecell";
+			reg = <0x0 0x11c05000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			in-ports {
+				port {
+					etf0_in: endpoint {
+						remote-endpoint = <&aoss_funnel_out>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					etf0_out: endpoint {
+						remote-endpoint = <&swao_rep_in>;
+					};
+				};
+			};
+		};
+
+		replicator@11c06000 {
+			compatible = "arm,coresight-dynamic-replicator", "arm,primecell";
+			reg = <0x0 0x11c06000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			in-ports {
+				port {
+					swao_rep_in: endpoint {
+						remote-endpoint = <&etf0_out>;
+					};
+				};
+			};
+
+			out-ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@1 {
+					reg = <1>;
+
+					swao_rep_out1: endpoint {
+						remote-endpoint = <&eud_in>;
+					};
+				};
+			};
+		};
+
+		tpda@11c08000 {
+			compatible = "qcom,coresight-tpda", "arm,primecell";
+			reg = <0x0 0x11c08000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			in-ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					aoss_tpda_in0: endpoint {
+						remote-endpoint = <&swao_prio0_tpdm_out>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					aoss_tpda_in1: endpoint {
+						remote-endpoint = <&swao_prio1_tpdm_out>;
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+
+					aoss_tpda_in2: endpoint {
+						remote-endpoint = <&swao_prio2_tpdm_out>;
+					};
+				};
+
+				port@3 {
+					reg = <3>;
+
+					aoss_tpda_in3: endpoint {
+						remote-endpoint = <&swao_prio3_tpdm_out>;
+					};
+				};
+
+				port@4 {
+					reg = <4>;
+
+					aoss_tpda_in4: endpoint {
+						remote-endpoint = <&swao_prio4_tpdm_out>;
+					};
+				};
+
+				port@5 {
+					reg = <5>;
+
+					aoss_tpda_in5: endpoint {
+						remote-endpoint = <&swao_tpdm_out>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					aoss_tpda_out: endpoint {
+						remote-endpoint = <&aoss_funnel_in5>;
+					};
+				};
+			};
+		};
+
+		tpdm@11c09000 {
+			compatible = "qcom,coresight-tpdm", "arm,primecell";
+			reg = <0x0 0x11c09000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			qcom,cmb-element-bits = <64>;
+			qcom,cmb-msrs-num = <32>;
+
+			out-ports {
+				port {
+					swao_prio0_tpdm_out: endpoint {
+						remote-endpoint = <&aoss_tpda_in0>;
+					};
+				};
+			};
+		};
+
+		tpdm@11c0a000 {
+			compatible = "qcom,coresight-tpdm", "arm,primecell";
+			reg = <0x0 0x11c0a000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			qcom,cmb-element-bits = <64>;
+			qcom,cmb-msrs-num = <32>;
+
+			out-ports {
+				port {
+					swao_prio1_tpdm_out: endpoint {
+						remote-endpoint = <&aoss_tpda_in1>;
+					};
+				};
+			};
+		};
+
+		tpdm@11c0b000 {
+			compatible = "qcom,coresight-tpdm", "arm,primecell";
+			reg = <0x0 0x11c0b000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			qcom,cmb-element-bits = <64>;
+			qcom,cmb-msrs-num = <32>;
+
+			out-ports {
+				port {
+					swao_prio2_tpdm_out: endpoint {
+						remote-endpoint = <&aoss_tpda_in2>;
+					};
+				};
+			};
+		};
+
+		tpdm@11c0c000 {
+			compatible = "qcom,coresight-tpdm", "arm,primecell";
+			reg = <0x0 0x11c0c000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			qcom,cmb-element-bits = <64>;
+			qcom,cmb-msrs-num = <32>;
+
+			out-ports {
+				port {
+					swao_prio3_tpdm_out: endpoint {
+						remote-endpoint = <&aoss_tpda_in3>;
+					};
+				};
+			};
+		};
+
+		tpdm@11c0d000 {
+			compatible = "qcom,coresight-tpdm", "arm,primecell";
+			reg = <0x0 0x11c0d000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			qcom,dsb-element-bits = <32>;
+			qcom,dsb-msrs-num = <32>;
+
+			out-ports {
+				port {
+					swao_tpdm_out: endpoint {
+						remote-endpoint = <&aoss_tpda_in5>;
+					};
+				};
+			};
+		};
+
+		cti@11c42000 {
+			compatible = "arm,coresight-cti", "arm,primecell";
+			reg = <0x0 0x11c42000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+		};
+
+		cti@11c4b000 {
+			compatible = "arm,coresight-cti", "arm,primecell";
+			reg = <0x0 0x11c4b000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+		};
+
+		apps_smmu: iommu@15000000 {
+			compatible = "qcom,glymur-smmu-500",
+				     "qcom,smmu-500",
+				     "arm,mmu-500";
+			reg = <0x0 0x15000000 0x0 0x100000>;
+
+			#iommu-cells = <2>;
+			#global-interrupts = <1>;
+
+			interrupts = <GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 99 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 101 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 107 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 181 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 182 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 183 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 184 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 185 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 186 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 187 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 188 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 189 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 190 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 191 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 192 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 315 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 316 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 317 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 318 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 319 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 320 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 321 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 322 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 323 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 324 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 325 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 326 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 327 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 328 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 329 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 330 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 331 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 332 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 333 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 334 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 335 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 336 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 337 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 338 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 339 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 340 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 341 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 342 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 343 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 344 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 345 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 395 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 396 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 397 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 398 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 399 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 400 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 401 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 402 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 403 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 404 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 405 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 406 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 407 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 408 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 409 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 418 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 419 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 412 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 421 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 707 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 423 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 424 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 425 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 690 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 691 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 692 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 693 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 694 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 695 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 696 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 697 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 410 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 488 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 489 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 490 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 491 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 492 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 493 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 494 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 495 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 496 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 497 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 498 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 499 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 500 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 501 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 502 IRQ_TYPE_LEVEL_HIGH>;
+
+			dma-coherent;
+		};
+
+		intc: interrupt-controller@17000000 {
+			compatible = "arm,gic-v3";
+			reg = <0x0 0x17000000 0x0 0x10000>,
+			      <0x0 0x17080000 0x0 0x480000>;
+
+			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
+
+			#interrupt-cells = <3>;
+			interrupt-controller;
+
+			#address-cells = <2>;
+			#size-cells = <2>;
+			ranges;
+
+			gic_its: gic-its@17040000 {
+				compatible = "arm,gic-v3-its";
+				reg = <0x0 0x17040000 0x0 0x40000>;
+
+				msi-controller;
+				#msi-cells = <1>;
+			};
+		};
+
+		watchdog@17600000 {
+			compatible = "qcom,kpss-wdt";
+			reg = <0x0 0x17600000 0x0 0x1000>;
+			clocks = <&sleep_clk>;
+			interrupts = <GIC_SPI 0 IRQ_TYPE_EDGE_RISING>;
+		};
+
+		pdp0_mbox: mailbox@17610000 {
+			compatible = "qcom,glymur-cpucp-mbox", "qcom,x1e80100-cpucp-mbox";
+			reg = <0x0 0x17610000 0 0x8000>, <0 0x19980000 0 0x8000>;
+			interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
+			#mbox-cells = <1>;
+		};
+
+		timer@17810000 {
+			compatible = "arm,armv7-timer-mem";
+			reg = <0x0 0x17810000 0x0 0x1000>;
+			#address-cells = <2>;
+			#size-cells = <2>;
+			ranges;
+
+			frame@17811000 {
+				reg = <0x0 0x17811000 0x0 0x1000>,
+				      <0x0 0x17812000 0x0 0x1000>;
+
+				interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>,
+					     <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>;
+
+				frame-number = <0>;
+			};
+
+			frame@17813000 {
+				reg = <0x0 0x17813000 0x0 0x1000>;
+
+				interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
+
+				frame-number = <1>;
+
+				status = "disabled";
+			};
+
+			frame@17815000 {
+				reg = <0x0 0x17815000 0x0 0x1000>;
+
+				interrupts = <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
+
+				frame-number = <2>;
+
+				status = "disabled";
+			};
+
+			frame@17817000 {
+				reg = <0x0 0x17817000 0x0 0x1000>;
+
+				interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>;
+
+				frame-number = <3>;
+
+				status = "disabled";
+			};
+
+			frame@17819000 {
+				reg = <0x0 0x17819000 0x0 0x1000>;
+
+				interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
+
+				frame-number = <4>;
+
+				status = "disabled";
+			};
+
+			frame@1781b000 {
+				reg = <0x0 0x1781b000 0x0 0x1000>;
+
+				interrupts = <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>;
+
+				frame-number = <5>;
+
+				status = "disabled";
+			};
+
+			frame@1781d000 {
+				reg = <0x0 0x1781d000 0x0 0x1000>;
+
+				interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
+
+				frame-number = <6>;
+
+				status = "disabled";
+			};
+		};
+
+		apps_rsc: rsc@18900000  {
+			compatible = "qcom,rpmh-rsc";
+			label = "apps_rsc";
+			reg = <0x0 0x18900000 0x0 0x10000>,
 			      <0x0 0x18910000 0x0 0x10000>,
 			      <0x0 0x18920000 0x0 0x10000>;
 			reg-names = "drv-0",
@@ -5697,4 +6812,30 @@ gpuss-1-critical {
 			};
 		};
 	};
+
+	tpdm-cdsp-llm {
+		compatible = "qcom,coresight-static-tpdm";
+		qcom,cmb-element-bits = <32>;
+
+		out-ports {
+			port {
+				cdsp_llm_tpdm_out: endpoint {
+					remote-endpoint = <&cdsp_tpda_in1>;
+				};
+			};
+		};
+	};
+
+	tpdm-cdsp-llm2 {
+		compatible = "qcom,coresight-static-tpdm";
+		qcom,cmb-element-bits = <32>;
+
+		out-ports {
+			port {
+				cdsp_llm2_tpdm_out: endpoint {
+					remote-endpoint = <&cdsp_tpda_in2>;
+				};
+			};
+		};
+	};
 };

---
base-commit: 008d3547aae5bc86fac3eda317489169c3fda112
change-id: 20251229-add-coresight-nodes-for-glymur-955fb985756a
prerequisite-change-id: 20251007-upstream_v3_glymur_introduction-5a105b54493d:v3
prerequisite-patch-id: 2d0427a6e5a9310d8dd547eb3e2d9667ade54083
prerequisite-patch-id: adc6c3714b1636b0758d479b647389519e5199cb
prerequisite-patch-id: a60d247607692a62f8f1ad53697101f1845337d9
prerequisite-patch-id: 178e4c849a063a1e945155b6e5765150137a718c

Best regards,
-- 
Jie Gan <jie.gan@oss.qualcomm.com>


