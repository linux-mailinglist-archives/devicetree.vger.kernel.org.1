Return-Path: <devicetree+bounces-221197-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EEA9B9DB1D
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 08:41:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8F6137B6351
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 06:39:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B73D52FB0B2;
	Thu, 25 Sep 2025 06:34:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lO/DcirY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 466722F2902
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:34:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758782061; cv=none; b=bxUSMmmbTy769QZC2AF5kkx4ikKTYQSd6aZvxzyfcXC34DSlceMlpiqfWfaivcJc/5OEOpO605UcfRdB0JnxkgxgemXjO4oVWK7xEZtYwpXbj2jTfuLZh71L3pp13PG97xjkfpyQR0510BoLKfRPfj9PukDBZaHfAzSfyt4ptEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758782061; c=relaxed/simple;
	bh=zAluZpUSdpNgn+3ulofSw8QkVZRy9NzA5+UkWEERqLk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YzmooE6FNSf7EGcLNNqYDr2mxWyk4/fO80vl+BtUFz1BVsFl3akjfK6BQEV+KekssRkXmvHhk8ax7QfUc3fTByoM78q5Nht2I4O1fLjZUwz/CDx0MoLF7pMIOzhLRYorfxHrFrptgyuQqREO4pp0Lt18Hzn/6iIIgBMaoiQgimI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lO/DcirY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P4a77B026648
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:34:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ueg8cSB9cvZ8zN3y2yyPUU6opBQriygJdKD3HM9HZ1c=; b=lO/DcirYB2f487eX
	R09xbXyA83a/yT8wr0Kv6EqOfiq35Ks9m66ZVBN8PSndPkdd39YtUgGhL3WC5vWl
	CNkDKiwIYcuLYU3NA4Bturd6ANxBR8PHiFUD1fODtn749HLVHvlCbC7VElXU8Xzf
	YUHzY+ei/hczKpWfz0EcZuCgW+GgMkXA91pnCAD/BBQOaA5O//NmcBFKs9OAiHbS
	86PKlkFAUMR/ehT1LYjo0nFp36uUKqVAKZolGfh4hB3P1nE+ohG2PIGObyXuOLSg
	p46Y/Audp44o9+Eiw4mK311/xegu6YlYUYBvUGx8LKkFe6NYv19MPa0YwwmR63o6
	7PNO5A==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49cxup08wn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:34:18 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-244581953b8so6706735ad.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:34:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758782057; x=1759386857;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ueg8cSB9cvZ8zN3y2yyPUU6opBQriygJdKD3HM9HZ1c=;
        b=GKpMWOFPCbImrglI1/Qr8yiVzOH7XjdD80X8t5V9BXs3PqwC43Em+Nd4aOxw0bRH0C
         BVOClPXMflVZvS5+1qyxrG/kXjur6Eky+BEESsPgaZ9ISEwMGwJYsXOeh1VLGlNf5AAC
         dr4NmkFhmqK47ZZKB6um4XH3dAPIvVnC4+gmRue/J8AMsqszQRrKgyNMAeLaJLYkhCOi
         XdqKYIEHBXDMB935VzwrHeAMMH8D7eXxntKcR3m4DTXTuqYwdQf0AU6a+SUx5BciRhxy
         bbycHt2pksGsxDSPGdaZPyCI1u8UQa2I8EgNV51aQAfDQlJkd/MjzBU4sTgLc57Xr7/g
         rLRA==
X-Forwarded-Encrypted: i=1; AJvYcCVkQ8Dk8pScSduObOQRfCP3bIyll7XjHUmKYqVaapjimhjtHPDljteoWog/J5iBjO8oY2wHN4q6sl1x@vger.kernel.org
X-Gm-Message-State: AOJu0YxI1KU/CPzPXoxRs88EOJD6P+BvlTXz1roFxZ6OA35S6fXLpLu7
	aXa9m2gORpPZP2SIyoOxgj3sjbNk0b+tjD/AdyFyl3+LjdwnUo2YnlIw9vO1EeNx1nXsluMNoob
	lxeWFf13Vwql0F4nWe9i3dGXZwXqJCRc+cPLLvgHGeR41pYwBI6K2k2PQ/7AQ6Pr3
X-Gm-Gg: ASbGncuUB05H8yheFa5aSZ81JP2zTPzOOwO0EdsZOg1cI9fTF0PE5mLLgqQCNRXT7+5
	S4k7XuoezYjiOMvIgAm+YgAW4pvV2Q3F3RFtdzmQKWu9lu+iPmow+AooBbbHvGvyUCg9NSPJpgS
	VwLjliyZwIK+s0zRfb7YVaqd7LlFech9pTNN/+gtVL9ilnrpe2o76imGb+6nrk5tVCrMOYInuw2
	YJjJsGFtxgKXJae86iAcB26q39bHKOfrrFv5RwSLJi04bvXbgQrlahlmGCmcF3XjSAtBy+Sj/qq
	lw8T+KDAcwrBOheb4ri+rQrMJv++rW8juAnY2cI/OD7wb9JGIL7tXDPNDUhwlfqaNnxjBo6Kd+n
	AjaoycI3vCL7uWHRASLZ7Oo+I1ZOdtPqgxVWeUwi37Yen90wPNhULHPAAj61G
X-Received: by 2002:a17:903:3850:b0:267:9a29:7800 with SMTP id d9443c01a7336-27ed4ae4927mr28093835ad.59.1758782057546;
        Wed, 24 Sep 2025 23:34:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFpuQbjvhka6L8uxEmpmFi8kOowFBFt1od6WQeT/Ax2QNgL0pMDrQ7F4TD/30GBC+nOjY0wPQ==
X-Received: by 2002:a17:903:3850:b0:267:9a29:7800 with SMTP id d9443c01a7336-27ed4ae4927mr28093445ad.59.1758782057146;
        Wed, 24 Sep 2025 23:34:17 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed671732asm13793515ad.49.2025.09.24.23.34.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 23:34:16 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 12:02:26 +0530
Subject: [PATCH 18/24] arm64: dts: qcom: glymur: Add PMIC glink node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-v3_glymur_introduction-v1-18-24b601bbecc0@oss.qualcomm.com>
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
In-Reply-To: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Authority-Analysis: v=2.4 cv=B4a50PtM c=1 sm=1 tr=0 ts=68d4e26a cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=eTml_EgcGECvy2QnpD0A:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDA0MiBTYWx0ZWRfX97+1knlJgvxN
 cLAMajgJXEG1d0gwkd9qw4OOS7zw1cSLw5Ch3wfcTLKbbmvGBcmN1QQmiXjZSWsMYZYMgq9QpXx
 na09rJftQJ+W24g4Mm3IqijHp5leD5Z7BP0J/ozQA2qxkhGCqI81XV8nFvTjQhItBp6IeYfhw4V
 /LqcPCSafBOFYTx3+st1BkHbxPivGve9shZlMpb20875IaECItMeTalB/MtA706HmfzrSI7xb45
 gR+/SilgLDYY7efnGS6wegTdBhXg/EFMT4UlJxfJfeE6Sfyb1fvkEeTL/vx8HFdzsLbWmzHeD4o
 EOasz/RAOu+YgV4yZu2gQRVlUqfOmNhJuWReT0bhQaBLyuXML3HG5fmghox2qA51TwSZ01DqqtV
 nq0wn/Yr
X-Proofpoint-GUID: NX0lF_ZMyux32_Yf0310Ulfkv7TNt-2T
X-Proofpoint-ORIG-GUID: NX0lF_ZMyux32_Yf0310Ulfkv7TNt-2T
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 suspectscore=0 priorityscore=1501 adultscore=0
 phishscore=0 clxscore=1015 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509250042

From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>

Add the pmic glink node with connectors.

Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur-crd.dts | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
index b04c0ed28468620673237fffb4013adacc7ef7ba..3f94bdf8b3ccfdff182005d67b8b3f84f956a430 100644
--- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
+++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
@@ -79,6 +79,34 @@ key-volume-up {
 			wakeup-source;
 		};
 	};
+
+	pmic-glink {
+		compatible = "qcom,sm8550-pmic-glink",
+			     "qcom,pmic-glink";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		connector@0 {
+			compatible = "usb-c-connector";
+			reg = <0>;
+
+			power-role = "dual";
+			data-role = "dual";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+				};
+
+				port@1 {
+					reg = <1>;
+				};
+			};
+		};
+	};
 };
 
 &tlmm {

-- 
2.34.1


