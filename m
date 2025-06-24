Return-Path: <devicetree+bounces-188957-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CFE00AE62A3
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 12:38:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8799D1925131
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 10:38:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1816E286D77;
	Tue, 24 Jun 2025 10:36:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hJC9YcOI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 831E824EAB1
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 10:36:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750761417; cv=none; b=DFreoTbY2RZESrYFUB/WV8ZoTYZBbGDmCUq0zz+YsquMLbUYSkkWzQgoPH15YgTCisNGsYfSR3d2rWURx9eNfOZFrfFXnaxlGc82NNVMpqkBjB/vaYlMTX73w2dR/e72RsPhi2CmvQlgCjX1jDYws7jkHRkZWu7WqpDzCSmlz4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750761417; c=relaxed/simple;
	bh=FWxibcNeoUrwd5pY9mHTYhwEDhN6YSBaZ2tj26tMzMM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=lMJmYiuJKnEsK82nvwrFNymbEpCsVh/M0TbGjIfHlMm+xKsXb/3/CqGiKk1RgxiGm9ckv8EVC2CCv6C6dwAsL2D1gcqO6ne976FJKbNsbjzFUPT7lT96UOC2t5XEmYilcqwP0bQsDy0pyTvUdeDRvBfALp9fQ/rrEndBED8OFFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hJC9YcOI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55O8b52U021046
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 10:36:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=EukidgrEuMOj47GtkCmNs/
	Aethas1AU3JO0SAf+anLM=; b=hJC9YcOI0l4bJ3N5ngxsAypV1LOYq+HIpC5tBa
	W4chmcU24zLgk3cTeMzpbxNs4Dd3e2U6NiswS7fz4xVgq1yiDQq0kiuaHCEbLhIy
	XCuIBVnNJwcYs33qae+oE1DrHLa36+4ZaXhX3zmiw+QQLcB/SpbUbQXCF7XkllrE
	2iJrdIu5jIQrPBRahvaFSrgSVhzHvu16VV0sgt83yWsL4TBhOQpD2Fn//WyM9Jtv
	4Ib8UvfJ1ziJIM7JeLrL0dt5mOKkQuD34321PezuGJA2IG8wvCPn/7GfeUlplKNd
	0t6aoHWuN0ub3K4ACIyMP/tFU/A2oVkPDfxdTSInAShAcR9g==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47fdfwsxe8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 10:36:54 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-748efefedb5so460607b3a.2
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 03:36:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750761413; x=1751366213;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EukidgrEuMOj47GtkCmNs/Aethas1AU3JO0SAf+anLM=;
        b=ZDc0HvEdn3FtiPE3OxGktKVPcBhladailWNwJakHkGmJoI0cs6VLWQct9RO7KNwfPd
         kUnLW96DarGmPiFZHOxNhokDEaXBUSiC53ntzUrgh8LTziPuh+WDTjhUi3eWVXWHeFsz
         c+WQJ5FOENNT7q1Fc9J7GdK5CG3dhonFBamwvEykEQ1W2IXIl5l6ZH3ElegFXheS8EB+
         1uf8XBFcf/vdNKJC+/1j7e/jkw0j78lFSOmlsveBzSUl2AyR+k1w0GvqRb0MgPQyIqER
         Pw3zUfOmHmlhv3lri002XnyKkKVfLCieWfituIKy4bRlXD5coDp5ELGzk2w3yDbFpMpr
         6xwA==
X-Forwarded-Encrypted: i=1; AJvYcCVPH2p848ycbS+ALP8tavJnObFugclUhE1638lDH2FHyBuNwnAl55T7HPYL3t0rywSOqHqJOh2yeRKh@vger.kernel.org
X-Gm-Message-State: AOJu0YzzRrs2pEYywQEezDsuTSOLzMs9zI15jAbotKP7pDrrqeTPAPCC
	zwxObwg5D4gm4IQON90P5aRScsEm+QdTwnAgq5u762EaPeZqPaDiYDXRsORRgUN0K1j3EoNGrER
	A7bRHYMLGbGlW9Ww3Flrt7CSvLPvNLiUGPLE9a5rhP/7c5Z3Ds0spB94wWNL+nOqt
X-Gm-Gg: ASbGncsuxOv7gfUcuAS3UAS0xwhYjEvf7UWgC6tCOAFgInNlmivcHJex3+VMbVNXSG5
	bhmtpP3qdezv0r5GR7NCqpPgCCv3CkcJiuOwBOEYUTd0322eDYF4Bifi97IagHk5JZmC4owBmZ4
	KKfW5WQMMHvNfo2BijBksDukiObnQzuS+RONo8Qm+TiWW/BYoz+N0zrU6VDlCXBnBBO8BY8vtOa
	g3lWluLrWJIBFZGtKM72eqW1T0fpouz3XlpkUfRkL9fNAdZUj/7zuccAJQO8VCQ+mYnxF/2Lisd
	P+XSpBmqUniJpLIYl17g63YU6bbfKQhXSnoetFciHjtZfBkGWtsXpdSb+AfUsEKJve/wtIsrk8k
	WJCcGA4TA5GaXrJicgKIWr7ZgCvVQqC0tQulMcbUcMfYx7/RZ+o9VIUodOg==
X-Received: by 2002:a05:6a00:23c7:b0:748:de24:1ad4 with SMTP id d2e1a72fcca58-7490da9d641mr20898135b3a.17.1750761413064;
        Tue, 24 Jun 2025 03:36:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF0EPM60iHqu/wX+54c+M7UsbyOIw/F4FG2R9p17WZCLqPcF5YSQi7vCK+MDFvlHOW0xwJzvg==
X-Received: by 2002:a05:6a00:23c7:b0:748:de24:1ad4 with SMTP id d2e1a72fcca58-7490da9d641mr20898100b3a.17.1750761412679;
        Tue, 24 Jun 2025 03:36:52 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-749b5e21466sm1472393b3a.49.2025.06.24.03.36.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jun 2025 03:36:52 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Tue, 24 Jun 2025 16:06:47 +0530
Subject: [PATCH] arm64: dts: qcom: ipq5424: Add reserved memory for TF-A
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250624-atf-reserved-mem-v1-1-43b1940e2853@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAL5/WmgC/x2MQQqAIBAAvxJ7bsFEK/pKdKhcaw9aaEQg/b2l4
 zDMFMiUmDIMVYFEN2c+okBTV7Duc9wI2QmDVtqqVhucL4+JpLrJYaCAS2/Wzhm7iAXJzkSen38
 5Tu/7AU4dT7JiAAAA
X-Change-ID: 20250624-atf-reserved-mem-b84c7d45b624
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Vignesh Viswanathan <quic_viswanat@quicinc.com>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750761409; l=1349;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=JjAbPqvQATV3mxxNHKLMuXo+KgMzphIdVgAZtBEoIiU=;
 b=BDqkqAbbEG18WuRAkb/fatoDzzoX4vVU9i7N0SWURagr2F/UXiqBnqisYaMdnGxKe8tmpHitv
 Kg1hXLhFsxaCKW0IN5rJ3V+Ffi7ECyFamAnmf2Y1hraBAEE/ScTr62l
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-GUID: p6mS5ZYM0tBBBc5rDz-_rV5amnYR4nQT
X-Proofpoint-ORIG-GUID: p6mS5ZYM0tBBBc5rDz-_rV5amnYR4nQT
X-Authority-Analysis: v=2.4 cv=MtZS63ae c=1 sm=1 tr=0 ts=685a7fc6 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=LHHpOU43DGDhQHPplI0A:9 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI0MDA5MCBTYWx0ZWRfXzI4ZvmO/Umrt
 zgdUH4tWXqjTm9Cks82ql2iZpeDSCYf+JgXz1iVN+3mjiWAHShIVrkO/4MmMx1Cbt2gjQyRnD2j
 acZXDtvdS3PnNs0FK940Q/+Vo7fHHgktmVvYjQ0tyC06YMVPS0e2Mw0/SFulhiD0mjTdhk07/Gk
 +BFlX8jhCyk4qluPJxixnWfpuD/BlubEyvZvmHHPnwHxiGxmFIGxnQMmPoyEBCDVii9WFhqp5Bq
 InC79NsTAo0ae7WftICidCNOePQ0ayb+VW6X6wQkq3nFX9AeLrsO72+Em7k/ZiKjaN6vQGB1Fdn
 ucbgW7He/eNURBqY2xFlDTK2g775g8kecJ/+KidDj8dQx3/jpa1/yr23V6dchZHWru+WqsFId7c
 4w0K5AqxGPVFgfcifNdznLQ7nybS2jtliUeLqvbnpa3IMHAIvCwj74r/5VdAa3tOrnAu3CKH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-24_04,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 suspectscore=0 adultscore=0 phishscore=0
 mlxlogscore=660 spamscore=0 malwarescore=0 priorityscore=1501
 lowpriorityscore=0 clxscore=1015 mlxscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506240090

From: Vignesh Viswanathan <quic_viswanat@quicinc.com>

IPQ5424 supports both TZ and TF-A as secure software options and various
DDR sizes. In most cases, TF-A or TZ is loaded at the same memory
location, but in the 256MB DDR configuration TF-A is loaded at a different
region.

So, add the reserved memory node for TF-A and keep it disabled by default.
During bootup, U-Boot will detect which secure software is running and
enable or disable the node accordingly.

Signed-off-by: Vignesh Viswanathan <quic_viswanat@quicinc.com>
Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/ipq5424.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/ipq5424.dtsi b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
index 66bd2261eb25d79051adddef604c55f5b01e6e8b..d7264f7e2423510ca1f33bd208becc33bf231094 100644
--- a/arch/arm64/boot/dts/qcom/ipq5424.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
@@ -150,6 +150,12 @@ smem@8a800000 {
 
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
base-commit: f817b6dd2b62d921a6cdc0a3ac599cd1851f343c
change-id: 20250624-atf-reserved-mem-b84c7d45b624

Best regards,
-- 
Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>


