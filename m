Return-Path: <devicetree+bounces-203546-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F926B21C57
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 06:52:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BCBFE3AD062
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 04:52:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BC8B2DAFA2;
	Tue, 12 Aug 2025 04:52:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jBvPM3Vu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F6F52D6604
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 04:52:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754974347; cv=none; b=n9ZirlJ+PhpeYFfUUGmxkwaYgOPGKUtzogbmIvyJUdkglzWZAioA/3p56DuSRFtDGotTKwcRo5zk9IyrCHUeRGUAwqlwsvt8xlPhz/LxwLD2B2x1XQWrU5hLcIWdfy6YaQ0HR8/AeP20ToNWlymubIWr25j2UIDs1aBB5xSh4ok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754974347; c=relaxed/simple;
	bh=keOPTciquSA4p02WljqtBMUoteLbhLVc28UUhuCOfQE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=gay8OqIFIYGWRaimbuUoIdD4WYpV2M3uQq8ErunJlxmNWyX9FC2opWx9Z+nEbMZkKeCDB4/J6mX/rONBM8Mcy5hbqShsmSFeR+pQ7n9baRqryDLqRIqUTSMxq0Zs4nycr2WX/NNppPvjMV6WWRGuvRBBarzq9pN10c8MNw6a1G8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jBvPM3Vu; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57BFxiIX005283
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 04:52:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=+v4I7Q97HUADgUFEs7f+Pr
	vptjZ+glS7epDTdSXOiqg=; b=jBvPM3Vu1VjtJdQobzKFG7MI/v9r+tEpgbwJ39
	4QurPij0Bgg4x//SHrPCOGWEPkBFhnI7irTVKeg+EoQ2UnrK5X+4xlc0XDLM5x39
	lxgLucTfNJ6/2Slc1b2T8c1N/mOtU3RZSG5yit1Ho5XTngpcPwTOznfhyeO0Xf3Q
	VQCnpXYn+sAIuy54iTPyz9c0oaV2HjUdiiPAD7pIg1hnRkItQVupoZWD9saQmAFw
	IYiw/IEbVw7waIdsFxSiMWOVGXZ4w41V19qusjkq6oULlRFMhajGzhr2MYZu0Tks
	RM5ayBIOPXmFwoqf41qfuOSI501PEYcHNW1N5i0Q4mvjLFfg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48eqhx50xm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 04:52:24 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2424aaa9840so55254445ad.1
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 21:52:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754974343; x=1755579143;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+v4I7Q97HUADgUFEs7f+PrvptjZ+glS7epDTdSXOiqg=;
        b=ddyrlJSKYPJ5IWQtxtJMw2s+SHxKg7RWoWrAXxLjwQBTUzV2v33ujdGH171+o9VVN5
         DvKiAVtEmVNoTEH44STki2HnsR4Vsz2l1HMihUdReLn2c+R1CX7sKDUOBUaNZe7Gyp5c
         NIomCj/u/knhgh+NoTENMIjhblyGDSVXJqyCwyCaIszEeHx5Hrr4lirOv0+PJwivQ7B/
         ExhaZ/CtagM/jyHfd/5AAmByoP8yoHmBL/DZxGjgwFga3+PjARuQSxqsNnrhtT2tGl8f
         INq0BtcpAs1LlltuQ5wBxwJEcTDGBiF7rWs87OFTkIUBm6tqyfWOVsFDU6DrTnsc7o/x
         R77w==
X-Forwarded-Encrypted: i=1; AJvYcCUWVXOQmGzxlf6VOF6AuAFIbrygpv7g0vQc66va622WG9jbD9xkhfGv0LGDWgayNCnEDHVINQ5nB+v6@vger.kernel.org
X-Gm-Message-State: AOJu0YyYE/HclBDzk1vnOKInFrAdWGwngsQ47jm1MTEg//KMGFI1N8k4
	S+tDoqQPZZU061zSnGK99LpBs98A7ooAuXO4pa3QPyNh/IQ40MkK4XpMpBJfg7UFRgdd58kS6lz
	pdOrsm+EZKBplmrTLxCyiuc9qZ9MoENiUpAHj1USQZWC0+qH+vBI/ZYCZoL/cAIIe
X-Gm-Gg: ASbGnctHliH3g/wl5h8w/TFL5TYVGDi1o+9M1xifjPxE22vFdIh4fl17BQpyFKmtIa2
	GGG5aWDIo3pHWwYyZsn39XpvYSDmRsfxA2PsXeBgi0HmGbIp/Glegjf3vVCY5OxbN1n5OcCU8rp
	wju6HpMzA51RPnWy9XjlybS8oN41EtPV9EGCrXVH8iC/azKQy99KCTSzDW1D9ooN0pzVTg9Ibiy
	5yOAXq6HCK5GXiTNiCFpRGYCSM0i3PJggZ3Srzo/G0h6VhnWBrc7digADetwLxfYXyHBXEChVKp
	sowH3SI+YhowSOmgFipVLvMUma+GpgWs/11lm1czUasO/Wfa6sk6kN/zrVWB07m19RFg4+kcUfa
	Ag8d45Rlc5tg5G5CfbM71VS5urbUN3fM60Aj+hbZUdDzQ8vIEn+UY1x10HX15+E906mj4Q0h1ZU
	s=
X-Received: by 2002:a17:902:f68d:b0:242:bfdd:4100 with SMTP id d9443c01a7336-242fc360a3emr32943525ad.47.1754974343289;
        Mon, 11 Aug 2025 21:52:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHqjilSokN8Xz2NAcRSfcsKgGxkpfgvqLlIxZzpG/SVEk/p7hxnKUIR/MkpuiGK/RhwX+PDog==
X-Received: by 2002:a17:902:f68d:b0:242:bfdd:4100 with SMTP id d9443c01a7336-242fc360a3emr32943185ad.47.1754974342791;
        Mon, 11 Aug 2025 21:52:22 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-241d1f0fb4asm285629825ad.60.2025.08.11.21.52.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Aug 2025 21:52:22 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Tue, 12 Aug 2025 10:22:12 +0530
Subject: [PATCH v2] arm64: dts: qcom: ipq5424: Add reserved memory for TF-A
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250812-atf-reserved-mem-v2-1-1adb94a998c1@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAHvImmgC/2WMSwrCMBQAr1Le2lfya4yuvIe4SNsXGzBNTWoQS
 u9ucOPCzcAsZjbIlDxlODcbJCo++zhXEYcGhsnOd0I/VgfBRMcMF2hXh4lqVWjEQAF7J40hqbU
 7dlCzJZHz7+/yeqvuUgy4Tonsb6SF+h8VjhyV7PlJMRKmk5eYc/t82ccQQ2grYN8/4gxa/bEAA
 AA=
X-Change-ID: 20250812-atf-reserved-mem-bf388e366f75
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Vignesh Viswanathan <quic_viswanat@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1754974339; l=1582;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=DowvsxMqe7mQ1mJ78TGuzzaLzFMh0ArYDeyQ3gsV86g=;
 b=Us7HCWkCJWg1rKiAlWkEPrhYZ3A0uFb62a2GPp7wbYMVnT2K0mPgrk6ElVKisAxiKueMPmGDV
 umvXTqIw5+kDzHGQVsGxxoidUXkrp+81ix+Oz2p8wVOUu2/iirh/Mql
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODEwMDA1NyBTYWx0ZWRfX5rAqCkq/aCXP
 vwiUkS2kxIX4xlFIxGlcyOyKb1sL8/XK1E7M17mlRzSAPwCxGEFcfr6lPtZMJ4QiUaFSuk4k2TN
 xu9YugS8SQKWoCaIXK79ygR7iOhki7DB7RlwO6fvkppWxHhr76T9q7YDbqElNsjlD6/JemuX6KV
 9FkDY6FYnroFvVSu0M9anKOCjdPQGldEyfP46zNQ9E4/9azYikFIdS76ZYKOzFEsaaIh6L/ykY8
 mHZNkEYQIONjtY7H37tAx3ve1kviOrjM75oTTkOHy6G4NyG7cM4cvCLRh50kE/J0JebnkIw16w1
 W4KYXfLSpyRM8yim2RJsSMp8sZ94+q+POSCQ2nOa10aCtKKDVYeu53CZ57nfPQYX2GpJd/DzHAq
 +2IWLzKw
X-Proofpoint-GUID: EEa_T420cws_37RIN8q1eUivGl4PCy2q
X-Authority-Analysis: v=2.4 cv=aYNhnQot c=1 sm=1 tr=0 ts=689ac888 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=LHHpOU43DGDhQHPplI0A:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: EEa_T420cws_37RIN8q1eUivGl4PCy2q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_01,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 priorityscore=1501 suspectscore=0 phishscore=0
 impostorscore=0 bulkscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508100057

From: Vignesh Viswanathan <quic_viswanat@quicinc.com>

IPQ5424 supports both TZ and TF-A as secure software options and various
DDR sizes. In most cases, TF-A or TZ is loaded at the same memory
location, but in the 256MB DDR configuration TF-A is loaded at a different
region.

So, add the reserved memory node for TF-A and keep it disabled by default.
During bootup, U-Boot will detect which secure software is running and
enable or disable the node accordingly.

Signed-off-by: Vignesh Viswanathan <quic_viswanat@quicinc.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
- Rebased on next-20250812
- Picked up R-b tag
- Link to v1:
  https://lore.kernel.org/linux-arm-msm/20250624-atf-reserved-mem-v1-1-43b1940e2853@oss.qualcomm.com/
---
 arch/arm64/boot/dts/qcom/ipq5424.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/ipq5424.dtsi b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
index 2eea8a078595103ca2d3912f41e3594820b52771..e31e328bdf0e9aaaec3019e5a7bd71c7126e5fa8 100644
--- a/arch/arm64/boot/dts/qcom/ipq5424.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
@@ -163,6 +163,12 @@ smem@8a800000 {
 
 			hwlocks = <&tcsr_mutex 3>;
 		};
+
+		tfa@8a832000 {
+			reg = <0x0 0x8a832000 0x0 0x7d000>;
+			no-map;
+			status = "disabled";
+		};
 	};
 
 	soc@0 {

---
base-commit: 2674d1eadaa2fd3a918dfcdb6d0bb49efe8a8bb9
change-id: 20250812-atf-reserved-mem-bf388e366f75

Best regards,
-- 
Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>


