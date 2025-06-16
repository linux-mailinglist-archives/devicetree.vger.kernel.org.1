Return-Path: <devicetree+bounces-186152-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 54F09ADA8DA
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 09:05:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 19CD77A7B55
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 07:03:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 750491F8BD6;
	Mon, 16 Jun 2025 07:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="n1UB5XK+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED3631F4CAE
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 07:04:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750057474; cv=none; b=FIyyswJKGIM32xf2XKnI7wuiIcSdGsahx0ekE681+fzpzjzaiVuKWQEVeMvCDmXHe/iANOzlIO4IMYOHdq80Y+uKnAImSNm0Pn9vh1L3iIlzMeHVuEy60WKINHyXJzYIdbZF2pmW4TpBF4MsOe7xlF7lRd4D8NL1Axn027RasRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750057474; c=relaxed/simple;
	bh=Yku77j1H71JfQ/twHVlYKlXs/8EsIDDQPIPX+lny6TE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=QxjiN6kYWUqkiU+S15DUNBIVmvZdopYst4BXksZJalE37/wq6xom1OGqqSXL5rTwNFyClfJ17aYWu7X065fsUvX2E08ZVJpvTDjV0NKggKxEIAaJM1HAuuPqHDXz1jHSoq5kC2R1r06SJQo7QudfPgjNUVEvdipv0doIuQZ4FVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=n1UB5XK+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55FNcWNY003266
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 07:04:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=REn5KerYQ+u
	Iw8V+Q4CeAOn6cwn/KOHFnel4TKPwLg0=; b=n1UB5XK+pPGGziBWq00WJaLr8nr
	3AK5zDJWCYD9pKiSfPPy3D/Ypf3wF01kOjTz/Ffc/kME+bk+NrSXKNNPoES5b0Mj
	lQByHt1SM+493a9ifjl/GgZTuNeAR2U+LdGcJTnDRxPLrAxYdsuPzRJMK/i444xD
	V+ailudOxiuZKT57v18Q0P5jnPqbIyrmEvL7Yzf+UrCRteXuyl1HVFJTR5WIQ4sv
	/mYDr35ic5dhaJpO8AAzo48EMQkIqRATR6dzQ0p+d0QNNRbqmdtMFx9slhO2Y6ke
	QBKrCuJYybyjl+W/NxWEiYofCAZUppJVY0G2nVwYNfLPXlzgE5qmm6rTswQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 479qp5j05v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 07:04:32 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-235dd77d11fso33716025ad.0
        for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 00:04:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750057471; x=1750662271;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=REn5KerYQ+uIw8V+Q4CeAOn6cwn/KOHFnel4TKPwLg0=;
        b=EhZFCel2G7QPg2oHk1vTSKYBtude3/Zy8QJ+bEJvj3vtsFTw0Es15+yBBj5T5Oa6KX
         67iB+HC7JkA31KkSk6Cgs9N/kXK87+rgl+rRXOIRWSJfAbUl/xhdDZ3WfJHBfLFpTzvY
         GEDUUELtIcNBFGStB/cJgE4XHy4Brvr+1xRx/VQK/RcETsVwGjxLQ51rMTcSRHyXrafs
         J5z54kNkK4tJTlOvDh0M7R13Jj8ivC4KbAUg+oGKpivo0lyEeN/NrjzkmNznYJeCLBcK
         tLjCrLvnKuwcRvcNLrFXr/ZXZP43CY3AF1nw1eZzX6iNR6KFihI7oHyiwj1Wg4oHM9sm
         Zz3g==
X-Forwarded-Encrypted: i=1; AJvYcCWwjBKoR/8MBNeU19vn++C6GZOVKstJaI+jYeT/zfipmX39hfbzR3VTQtSG54tYCxgv2IyP5XE14iqQ@vger.kernel.org
X-Gm-Message-State: AOJu0YxJUZ1l4aXXS8yAzZ+Qqi3ighFhQS7HRbkbD+FKMaPhazLsA/fl
	0ieXL4qYPqeJj5+RLRRcD3BdxSgLnetAr0ySF6hkgQKxY4+h90NWbmKPb8KmpqkwoIhglf6N4mg
	rGPFM9Ivd7Sym9jadeLTUkz2sIWKRJ7tCtPMioh3DsSYgYjdNrf0nN1SXTFG/NqSuNxLxRALM
X-Gm-Gg: ASbGnctSJWsYQtY9GOu4maVgjqc89mkegDmRmFyfRI3RsXy1YehGabag3wBr8u8pxmy
	mHWF3s1PNMQpNq3tOkmepO3Cyhn3k49rmPuZAy+Z5Fo+15rY+8ujrV3MZUSs1ReZSbVub0cVahw
	e3nd1cbcrJvYITKKNYMozsJ20D7X4zrX3+YYBu/VH6My1Tw513qt8gp7qXUudTJ2lRosl+R91/l
	hUj9frC91Kxf5mjfmXIPIKB34/bAyuCXVwETnfKi04uRPYEGXn95QUIz4K/GyNQFVD1+1Ewc/jt
	NW6V/qG8MEH0hxT2bVq8TVjCSXrdt1Vy8XKDN8fJUbeOr1dqlItb9G8ctow=
X-Received: by 2002:a17:902:e745:b0:235:27b6:a897 with SMTP id d9443c01a7336-2366b3c5ad3mr121973565ad.34.1750057471211;
        Mon, 16 Jun 2025 00:04:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGIjOGzxocwotSO3DLN7Z1O8JiPGy3RDCh5cpXniIq3OezTeuvNAfTP1/bRoL/5jWy743us+A==
X-Received: by 2002:a17:902:e745:b0:235:27b6:a897 with SMTP id d9443c01a7336-2366b3c5ad3mr121973315ad.34.1750057470817;
        Mon, 16 Jun 2025 00:04:30 -0700 (PDT)
Received: from hu-mohs-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2365d8a19e3sm54435825ad.82.2025.06.16.00.04.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Jun 2025 00:04:30 -0700 (PDT)
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_pkumpatl@quicinc.com,
        kernel@oss.qualcomm.com
Subject: [PATCH v2 2/2] arm64: dts: qcom: qcs9075-evk: Add sound card
Date: Mon, 16 Jun 2025 12:34:05 +0530
Message-Id: <20250616070405.4113564-3-mohammad.rafi.shaik@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250616070405.4113564-1-mohammad.rafi.shaik@oss.qualcomm.com>
References: <20250616070405.4113564-1-mohammad.rafi.shaik@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: ErK17lEKAx5Gc_AnxkBO5mP6-8WbZfb6
X-Proofpoint-ORIG-GUID: ErK17lEKAx5Gc_AnxkBO5mP6-8WbZfb6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE2MDA0NSBTYWx0ZWRfX58wTcv9D9T9S
 9lcbfQ1eArUy9CmnDuYbB/28/HKk+FMM/m9vOI+s/uxZLudyJpKC91tDMzGu4za7q493kO3eA3+
 XHCOE6+5sFm6W2gxa1+GzOsOWsDT2P5Z7sDDUkCWr2Uzmy1Szrt9bitkzO0XZqs6BTJ/avIVKEc
 1ySgj65gsKgYPrIvE3jBpI1YPOKuUUDYCNReh0zCl9SLHgeMNoU288DWd//KTq/mmca+5/2/YjB
 J2v4tYbOb9lGOeXTkMay6o9E0I+fOtnY4mQXngSf84MLKhbJQUfWFT5Wr+0YoUQgKc0uLK66SC5
 /u4d5AsGQv9CvW+bNQI+nlWAvSJCz5TEZo5PP/HVcqB6Rb2Lis5WN58W3/OP+3qwMxv/F6Jyhtq
 gKS9a8ijV6YG844V1MJq8Nm/M9YhGPpytAbPJdgHBw4Wh/u4jsanUo4Avmec4NeCRea8kjQx
X-Authority-Analysis: v=2.4 cv=fMc53Yae c=1 sm=1 tr=0 ts=684fc200 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=_dDu9j5-v2Tbu4HaPncA:9
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-16_03,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 bulkscore=0 clxscore=1015 malwarescore=0
 mlxlogscore=999 spamscore=0 lowpriorityscore=0 impostorscore=0 mlxscore=0
 priorityscore=1501 suspectscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506160045

Add the sound card node with tested playback over max98357a
I2S speakers amplifier and I2S mic.

Introduce HS (High-Speed) MI2S pin control support.
The I2S max98357a speaker amplifier is connected via HS0 and I2S
microphones utilize the HS2 interface.

Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
---
 .../boot/dts/qcom/qcs9075-iq-9075-evk.dts     | 52 +++++++++++++++++++
 arch/arm64/boot/dts/qcom/sa8775p.dtsi         | 14 +++++
 2 files changed, 66 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs9075-iq-9075-evk.dts b/arch/arm64/boot/dts/qcom/qcs9075-iq-9075-evk.dts
index ab161180d1d5..d073c6f95d4c 100644
--- a/arch/arm64/boot/dts/qcom/qcs9075-iq-9075-evk.dts
+++ b/arch/arm64/boot/dts/qcom/qcs9075-iq-9075-evk.dts
@@ -5,6 +5,7 @@
 /dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/sound/qcom,q6afe.h>
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
 
 #include "qcs9075.dtsi"
@@ -21,6 +22,57 @@ aliases {
 	chosen {
 		stdout-path = "serial0:115200n8";
 	};
+
+	max98357a: audio-codec-0 {
+		compatible = "maxim,max98357a";
+		#sound-dai-cells = <0>;
+	};
+
+	dmic: audio-codec-1 {
+		compatible = "dmic-codec";
+		#sound-dai-cells = <0>;
+		num-channels = <1>;
+	};
+
+	sound {
+		compatible = "qcom,qcs9075-sndcard";
+		model = "qcs9075-iq-evk-snd-card";
+
+		pinctrl-0 = <&hs0_mi2s_active>, <&hs2_mi2s_active>;
+		pinctrl-names = "default";
+
+		hs0-mi2s-playback-dai-link {
+			link-name = "HS0 mi2s playback";
+
+			codec {
+				sound-dai = <&max98357a>;
+			};
+
+			cpu {
+				sound-dai = <&q6apmbedai PRIMARY_MI2S_RX>;
+			};
+
+			platform {
+				sound-dai = <&q6apm>;
+			};
+		};
+
+		hs2-mi2s-capture-dai-link {
+			link-name = "HS2 mi2s capture";
+
+			codec {
+				sound-dai = <&dmic>;
+			};
+
+			cpu {
+				sound-dai = <&q6apmbedai TERTIARY_MI2S_TX>;
+			};
+
+			platform {
+				sound-dai = <&q6apm>;
+			};
+		};
+	};
 };
 
 &apps_rsc {
diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index 07ca6dd4f759..968730da180d 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -4711,6 +4711,20 @@ tlmm: pinctrl@f000000 {
 			gpio-ranges = <&tlmm 0 0 149>;
 			wakeup-parent = <&pdc>;
 
+			hs0_mi2s_active: hs0-mi2s-active-state {
+				pins = "gpio114", "gpio115", "gpio116", "gpio117";
+				function = "hs0_mi2s";
+				drive-strength = <8>;
+				bias-disable;
+			};
+
+			hs2_mi2s_active: hs2-mi2s-active-state {
+				pins = "gpio122", "gpio123", "gpio124", "gpio125";
+				function = "hs2_mi2s";
+				drive-strength = <8>;
+				bias-disable;
+			};
+
 			qup_i2c0_default: qup-i2c0-state {
 				pins = "gpio20", "gpio21";
 				function = "qup0_se0";
-- 
2.34.1


