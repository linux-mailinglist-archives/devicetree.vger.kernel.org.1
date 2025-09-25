Return-Path: <devicetree+bounces-221230-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 64E34B9DE9A
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 09:48:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1BD084281B1
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 07:48:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 339A3259C80;
	Thu, 25 Sep 2025 07:48:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="A54ecc7i"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EBEB24167A
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 07:48:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758786520; cv=none; b=Srog1on7WboaB1tKILWIh3+EFxFbylwztbri4NCW6xhS4lJxkTD3rs4sxY+Y4euMenLTesrla2llf06o4GP6E1oro10hBUfNwGnfIqOGswKVvyrpCr6V0+EXIp67SCRXHhgLdX0lPBmhxb/C9AwFR8MYs+tEq7QFcf3VG4wvlzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758786520; c=relaxed/simple;
	bh=kz8AhvRoxv5DfLNMb3yysS74jj5lUiwIoMBErv8uovc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=Ot9LzMh6dhb4vujuug0159iooCci43twhaew3lzILcFiAjK0Mx/LjTTYk0ZACWFDj+95LLwZ1Fy3WI2nrXdCzTCELnZHFX+sNY53qxbE2hNQ0iCxyoSH6Z5paslPgHOJkKWsvZDpq15qrpEOjlLsdBLhJKzfSyAq849AqZ0iiQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=A54ecc7i; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P4adfP027863
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 07:48:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=t4DS4g/Aw4p9+wY0COWtzd
	LqmJu6dcvqt1gLW1rsNW8=; b=A54ecc7iIrfKN8frrBC1E8WDuvKRZCtm5kCYju
	FJFwXpG5MDTe0pUy/Ni22/r037WLxwba3/NTP9HQIh2zKej15dLMiCYEhrsuBECT
	lS/HT9q8TsZsAuNG3GFJqHxmZLtQPp9ibOojVlapjHt3Gy2TUWEAD6+RSgZdBm+q
	3luLt5jMhHgT4nCEYQTJWroEg6cJzONAYSVX9sk7FJ8qs7wbdKQzKk2gCn4tLUpj
	la4xW4UMXCgrOEU25GH3Nm+rs9Q56byo9NVgCTfJJ4YYibj+F/qlk8ebRhdXchrm
	L+nqnVeh31QL4zzZgBbBU/7KpEwBjzd2G4LN/vu2e51sfqlw==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49cxup0fju-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 07:48:37 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b55283ff3fcso538032a12.3
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:48:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758786516; x=1759391316;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t4DS4g/Aw4p9+wY0COWtzdLqmJu6dcvqt1gLW1rsNW8=;
        b=eot5W170haIavcX/rQUOVv6aNgiPFpM1n7eYRzjrljlFUvIA5kU4fkO7dUJSkFJYoz
         aNoD/gr82rBQzFYyx3wP+D5GEd78m+Y0agkRTP4DJv948yoEiQMarzdzSl2kY8Vea/f0
         AeZjWNb5ec0m9N4wn9f7erhUhILhL55Vdz5qLd8jZqgpfOw3Bvb/gQI76uMUXBeZRJ/P
         WHbpjzUD2p5fduVnFQSVQ4bE4G6u/mkHdQSkfQxjn0znbgc0aJudOnguIz5S5zLW548J
         oiZe/ztrkTyo0EFCJO8fJHMuHM436COY9Y8Q8l0Gtd3vgymU1ADo50N9zRtjAWyC3U8c
         QR/g==
X-Forwarded-Encrypted: i=1; AJvYcCWFNIUh9/tB8LpwZT96yv0OXk9mx6boVFLAkPDufzIj/sHtKxA/aOAA48XTwD+8RXLVXwtszq69zIXG@vger.kernel.org
X-Gm-Message-State: AOJu0YxeAm6sy+uh8GhunVknJYFwvBPoL+k32UuYZKXq0YCsg4P2DwPn
	lsJ+g3FIYMV55A9D9N8Bz3WKKTcvhXrkn2P72dSTDTC4n58KO7vH9yRUzCr1XDoojgz7NSbdmSF
	l8yGQkatx0HbZ1Y2ogO9Cdxf4DdAcKK/of/61y6jY5fOR4JnhXXaitkpJJHUWYWd28ewCF8O9XD
	5zYw==
X-Gm-Gg: ASbGnctqE/BWgc8yC/B+6H/evFoXvs66IHXTEjCNGGTZKXTv8WkXMv54qsU+vEYMpiO
	F+TSc4cmHuUEqdS84aHJHSGHy+8IqtXQ67Cocmz4bDLt/w4UYTMlprlYcC2mP2/SF8eelL5Ap4S
	RncAUAJiwGlXdhr8kzq7B2pzo7lm/TP2iGCFsOk8WG/7kFv7Fp0BQL4Su69jRyetWzdCR31Zhlm
	d4lPLQ0MTogkHEsdX0KpVLOFkVA5Pou1VurXcM++I9CXkgze3RT9T047FtVJaQ4R7xKd7VS6fb3
	vClb3P3dB7g512EuTPDAD1TR83yGPlDnvAUMcHfokq5rGYRok/+6fq9jstqHBxKP/yaY9bHVGw=
	=
X-Received: by 2002:a05:6a21:328f:b0:244:3a85:cd7c with SMTP id adf61e73a8af0-2e7bf47c149mr3190241637.10.1758786516495;
        Thu, 25 Sep 2025 00:48:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGC9M2BzjYTN1XPbvEUL80XC19PxiMlS3DyAurda1UfSKIrYxvl4PtOHp7rKLinnx0E0Otp7w==
X-Received: by 2002:a05:6a21:328f:b0:244:3a85:cd7c with SMTP id adf61e73a8af0-2e7bf47c149mr3190214637.10.1758786516079;
        Thu, 25 Sep 2025 00:48:36 -0700 (PDT)
Received: from cbsp-sz01-lnx.ap.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-781023ca296sm1209518b3a.38.2025.09.25.00.48.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 00:48:35 -0700 (PDT)
From: Tingguo Cheng <tingguo.cheng@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 15:48:06 +0800
Subject: [PATCH] arm64: dts: qcom: lemans: pmic: enable rtc
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-add-rtc-for-lemans-v1-1-17fc56451c84@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIALfz1GgC/y3MQQrCMBCF4auEWTsQ0yrYq0gX6WSqAybRSZRC6
 d0N1uX/4H0rFFbhAoNZQfkjRXJqcTwYoLtPN0YJrcFZd7IX16MPAbUSzlnxwdGngsRh6vjcWeo
 J2vGpPMvyQ6/j3sqvd7PrPsLkCyPlGKUOJvFS8e93MG7bF1BAsr2VAAAA
X-Change-ID: 20250924-add-rtc-for-lemans-cedb3e630c4c
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@oss.qualcomm.com,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>,
        Tingguo Cheng <tingguo.cheng@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758786511; l=1098;
 i=tingguo.cheng@oss.qualcomm.com; s=20240917; h=from:subject:message-id;
 bh=kz8AhvRoxv5DfLNMb3yysS74jj5lUiwIoMBErv8uovc=;
 b=dVdVUOE3ajtl4HqTD/3n77q1GENbi+6wzPD480EffVNQiKPp5G2NdIeSn0+XIc692ldBJfiGa
 9NbQ5CgvNdtCJp2U0CHgeBLc34QT65Ac9bKcx8IA7N3BUBHuDZB7dVu
X-Developer-Key: i=tingguo.cheng@oss.qualcomm.com; a=ed25519;
 pk=PiFYQPN5GCP7O6SA43tuKfHAbl9DewSKOuQA/GiHQrI=
X-Authority-Analysis: v=2.4 cv=B4a50PtM c=1 sm=1 tr=0 ts=68d4f3d5 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=C6FE1wmIh1dHcrcE-zYA:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDA0MiBTYWx0ZWRfXz0xo3IUcoWbR
 NwGNkBrxmTZ0JkFTLT7lFV7iodKnVLBF96FtINfmKknLmoVtjPBe1t65EiiTdWioptwL1FAsSlj
 OEPJ017WxeI+w+hORklc/WFW3IOBd1QW/vA8h64+jbP5ROPPLdNXhAADTi3ZLkIyPzZJip7WrvM
 pdK6RzxJ2UvuqGoV5IK5oLo2Fq/E4TEYyvcIjSlbdvVZz6ub0kDhzPSuQ/Ysua/0lC/HvZYxUY0
 rFa7EI4go//52DUmfoiY/8571GO4UmxnkZoxX/rD4eTXFDq2wMCC12Elg7a/nqBV12WXqaFnlF8
 S+MYaK3ey0j9KKsHoKT6Gr0CkbehvTupd0CLPPDaQgZLSQB34zpTfpv+g0ZlZrfQIMKN9kZRTxP
 1E7WHvMD
X-Proofpoint-GUID: XecZdMpR7QrSf8NHPKpaLg0NAcnLtbxE
X-Proofpoint-ORIG-GUID: XecZdMpR7QrSf8NHPKpaLg0NAcnLtbxE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 suspectscore=0 priorityscore=1501 adultscore=0
 phishscore=0 clxscore=1011 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509250042

Add RTC node, the RTC is controlled by PMIC device via spmi bus.

Signed-off-by: Tingguo Cheng <tingguo.cheng@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-pmics.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-pmics.dtsi b/arch/arm64/boot/dts/qcom/lemans-pmics.dtsi
index 1369c3d43f866de9d8cd5cd4985241b99c0a0454..9e0d05c1b39ce229d5d4310ea1df1bf02e689178 100644
--- a/arch/arm64/boot/dts/qcom/lemans-pmics.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans-pmics.dtsi
@@ -132,6 +132,13 @@ pmm8654au_0_pon_resin: resin {
 			};
 		};
 
+		pmm8654au_0_rtc: rtc@6100 {
+			compatible = "qcom,pmk8350-rtc";
+			reg = <0x6100>, <0x6200>;
+			reg-names = "rtc", "alarm";
+			interrupts = <0x0 0x62 0x1 IRQ_TYPE_EDGE_RISING>;
+		};
+
 		pmm8654au_0_gpios: gpio@8800 {
 			compatible = "qcom,pmm8654au-gpio", "qcom,spmi-gpio";
 			reg = <0x8800>;

---
base-commit: 8f458a3ce73750c16af26aa154becb22bdf3bb0b
change-id: 20250924-add-rtc-for-lemans-cedb3e630c4c

Best regards,
-- 
Tingguo Cheng <tingguo.cheng@oss.qualcomm.com>


