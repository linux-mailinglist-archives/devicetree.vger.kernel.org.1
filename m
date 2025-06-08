Return-Path: <devicetree+bounces-183591-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 281D0AD1340
	for <lists+devicetree@lfdr.de>; Sun,  8 Jun 2025 18:16:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 798C33AB774
	for <lists+devicetree@lfdr.de>; Sun,  8 Jun 2025 16:15:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18E1B194137;
	Sun,  8 Jun 2025 16:16:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="J+/WLugt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 811C4174EF0
	for <devicetree@vger.kernel.org>; Sun,  8 Jun 2025 16:16:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749399373; cv=none; b=K3eiRQIhq4GvzW4c9ZUBuhFpLcedVKBHs2OBODdUa4cCk/rZKhJrFILuSkACFJj+xJydTzV0qPZmObs0VEcAJfF3vy3JPxyyT6gNJT17rc+lI08uFrTFvgLMS7uC3e7lr6qwyQkaSTeAsRB5uWBdkdIITDPYkPU4Nl45idCxm2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749399373; c=relaxed/simple;
	bh=OxBUrTXg+SWiOJc0ww+XKhPts7dGDQJeof1BxyM+QtY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=quFrikDtrcHvOyiofyZbFFl/kIyVDogoXpxY6I0x3LClabDuKn5ayoH572Bu3LKHJML45cwl3Bhhjwrw/24SBZAkq8PFR4WHGR6rpnH1+ULjUo2fA6RaoR+VVIsurx1iTYg/GCPV5PHaU+RDL8oHULSV0lvF//xU4UXkgo/eG+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=J+/WLugt; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 558BwKFn003345
	for <devicetree@vger.kernel.org>; Sun, 8 Jun 2025 16:16:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=t3svtrQzhPcJLweM25Qjv2
	aAx639KNBgFsUiIFX+8Xs=; b=J+/WLugtUKgtqAuKrrZ78mentCFpRhzcbLFDCx
	z6Dv/wtFYM6QI5veiqPpdzUQ+ebIQqZKtmyHP37NN289L5rUabubWaPLX3x1YL3O
	lLNfgR9DE6/WpaWwrbKUT8Ovsx6WlgFs+PPsyvmYebNxVe5UHjMI7HzXj3vz0P+M
	Emq4BKKN8N/9/S2CJDzdytNg6AbZ9MM8ivcf3Z1PgrkJb23to8iAdXWt/zwRc6d+
	fFWLkYEPcEJtcCBjDL+sTAb66v/rUGLrVQJ0guLxEcMPhm5IB/qVXWJrOYRCbHR3
	F0CyybIifLKwcmRrsGHaoY8CLXbJd3WoDktddbiNj51Gxb+A==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 474ekpk3u4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 08 Jun 2025 16:16:10 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c53e316734so572418585a.2
        for <devicetree@vger.kernel.org>; Sun, 08 Jun 2025 09:16:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749399369; x=1750004169;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t3svtrQzhPcJLweM25Qjv2aAx639KNBgFsUiIFX+8Xs=;
        b=o2z9VdxDZenBE3TSBzY3Uv8EMjnxJwnc5sq1zXNeH05xVgCKHMVdlDHKVCDGQxq0sZ
         HvDCL9TsNucKPCGtwNI9Ke83exj+YS7fYv/wjNW3sXikC40kCb/pKFe9lpSGBvmpMeta
         JjYIVACXAUeZhDffOv/VxK5sUdZvqxHZanHBSe01DTR8tfm85E0hTEqipyNg5Elrly4f
         DMFe1p3E20cfuZ4KZeKQXxw8AE6kAq9cVvV8Cnx4wC5EWZwgxSoqiY01ZeAdyzb90Ed2
         7ItakidJh5Tzr2wopb80/0zTAHGRwZU9TaAoanVOl/Y00A4J3AaYeoXDdHx2Ge6kmuZE
         tWjQ==
X-Forwarded-Encrypted: i=1; AJvYcCUcjrqwRM6iicGT34VxG0PYRDQEisn/2rELERiIgLlo7bGtYZN6/bZ3mNr8hBoUZcOietX8EEtFhoE5@vger.kernel.org
X-Gm-Message-State: AOJu0YyOT/LriHQ33aT5Juygte6pGZczaZnZJxEDoFHCEZTAGI5WsUTx
	ozB/aYixaGLhvRLJRfFQOEJ4ZQ6szgN411olbimuOTrW1Cl1kPUQBnDxLz+BFrb2L9yLbk3ueeH
	oLXF7Au/s42Sa9n39pOtNfz3T7P26O0QA3r/buRxsSHxjzehZ2FSa44Fui+CsATWj
X-Gm-Gg: ASbGncu0Okr55YMrYzAJ51VuPDcIbUXx+1hip+EQRk4lz5+Beb2yBxTTT/XTZpzLZNz
	XkcEPIprqG64OX262mJutT7sQZDtEyvCe1vt4uMFKh6s3R1MyY6ou+c+ThL0BbBvT0mj0cefKWD
	OUFP1TlbH22waxbk/MSyQOCv/4B+FHX11FSL6U//c1aAg0ulsk1r0dk0Td44fyXHvJeBjOdHu1B
	6Mxl0DcJAW16u3gkm0n1ohpKjaEVCRyTgycnpGlKt0iVkV1KIfWHAv1vw+5T1UpBmRspS5lblfe
	HIdS1Th8/IoTLA36s0nUyO1nNiDAt/bhJhEUtDPqSvjacJTegS6fjew05MsVzrgFa4Gawum0vZS
	z5Z2mCjnBQ+k+wC67MAEWf56BdLNY500LB7M=
X-Received: by 2002:a05:620a:28c5:b0:7c9:6707:b466 with SMTP id af79cd13be357-7d22984817cmr1438702085a.11.1749399369245;
        Sun, 08 Jun 2025 09:16:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF2ECLvAGwHxlGpu/aiaKaMlVgptTqoaYM3u06cN0ZwmKGTc8l57wixyXulc+n+Bvw4GnIbkg==
X-Received: by 2002:a05:620a:28c5:b0:7c9:6707:b466 with SMTP id af79cd13be357-7d22984817cmr1438699485a.11.1749399368863;
        Sun, 08 Jun 2025 09:16:08 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32ae1d01debsm7472621fa.103.2025.06.08.09.16.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Jun 2025 09:16:06 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sun, 08 Jun 2025 19:16:05 +0300
Subject: [PATCH] arm64: dts: qcom: sdm850-lenovo-yoga-c630: add routing for
 second USB connector
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250608-c630-ports-v1-1-e4951db96efa@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAES3RWgC/02NQQ6CMBBFr9LM2sYBKWivYliUMmAXFOhUgiHc3
 UaMcfl+8t/bgCk4YtBig0CLYzf6BNlJgH0Y35N0bWLIMVdY4lXa8oJyGkNkaahqEbusKC1BOky
 BOrd+ZPf64EDzMznjMUJjmKQdh8FFLTyt8TwYjhTgP6fFL9aTJ37xt4e3AivTKKVMq5cM6n1/A
 0QU1wDAAAAA
X-Change-ID: 20250608-c630-ports-ae7d00f146ce
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3452;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=OxBUrTXg+SWiOJc0ww+XKhPts7dGDQJeof1BxyM+QtY=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoRbdGNzhmbLV5Cxp7xfsO2uXQgMvf4n7qhyHXW
 4XnmI3DVDGJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaEW3RgAKCRCLPIo+Aiko
 1XPjCACFiWDtKVUqHyE7H76GRKWQ1inlljYNLIcmLRcV72U9wUWLA66PUFEiBe86DoFKoLYHwm9
 8i7Yw4Cx5erhQ6i94D36F25xX+Vz9aYnvR5+U4E366jJvaJsxuKfAKY1K1a0p+6y2Qnx4rs8qZm
 cjn98D8J6Ge6or+9qJzSrUc4gNglB6StgPlrhiZm/lSQB4OOjEgJbXB8K00fvg1ppVAeeWiNGFP
 eexhQnhZliDf63BO2SKb+lcLauOb8s89MSRN6zOitvqDvV0ROiBJvx/7tiyVoeo8WgW7Le4ERQp
 IsGytg1D3ZCs+mrwTKM5a/sAxky999wHTAOELCpYk0EQQDf0
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=JcO8rVKV c=1 sm=1 tr=0 ts=6845b74a cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=4HiTP562T1y0kxfXC7QA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjA4MDEzMCBTYWx0ZWRfX+xzJGyeBtAfR
 g42/1kjGpHxYm60xGGtACI+Fi67Bbz1FLCIRlSU5HEc5gFhPUeX+IikbAHhLa5rywJxoEm/p9U7
 Rk6ahpZE7I1jQrYuIVIgdngcQR5+Jy7sajHRPekIczCyjWbeg+aSbe9EWBzahwzqbNjcgmgpRev
 P9xFlIx6sFFZvbm4320VLAtjXhhPyQqbB3g+L/kxxQSaeb7juD7DevEYfZfnxSbBoM0ll9LXFap
 TG2j+eRc4S5+phFOrS6bJmsxW3Me+ZcW06butxFBzbQEeoEKnya/z5eCNnnCSJ3fluzjPWnhQdJ
 cjBIy/efhBQmODzk0E9qJaznQAUOEcwG9yMkpXlISUtcux6o5E7trGCFmWUR2gGvOUcGI4oL62z
 TuuneTOSWVcj0OYL8fZxsopLoi0zdE8IM7qa0PKHpD0Rgb+cKStu1YzkQhkzO+DfD1oGtvMp
X-Proofpoint-GUID: zfl3K7bAU5pULC95aGa5b5cQm3wGxCs4
X-Proofpoint-ORIG-GUID: zfl3K7bAU5pULC95aGa5b5cQm3wGxCs4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-08_02,2025-06-05_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=938 bulkscore=0 spamscore=0 impostorscore=0 phishscore=0
 priorityscore=1501 mlxscore=0 adultscore=0 clxscore=1015 malwarescore=0
 suspectscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506080130

On Lenovo Yoga C630 second (left) Type-C port is not connected to the
SoC directly. Instead it has a USB hub, which also powers on the onboard
USB camera. Describe these signal lines properly.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
Note, corresponding DT bindings were submitted at [1]

[1] https://lore.kernel.org/r/20250608-genesys-ports-v1-0-09ca19f6838e@oss.qualcomm.com
---
 .../boot/dts/qcom/sdm850-lenovo-yoga-c630.dts      | 104 ++++++++++++++++++++-
 1 file changed, 102 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
index 3b28c543fd961c787d7e788995f8fe0e980e3f68..794ff455bca58c3e201208a338238f90bf4f1ba7 100644
--- a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
+++ b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
@@ -421,9 +421,46 @@ connector@1 {
 			data-role = "host";
 
 			/*
-			 * connected to the onboard USB hub, orientation is
-			 * handled by the controller
+			 * connected to the onboard USB hub, each pair of lanes
+			 * (and D+/D- pair) is connected to a separate port on
+			 * the hub.
 			 */
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					ucsi1_hs_in_1: endpoint@1 {
+						reg = <1>;
+						remote-endpoint = <&usb_hub_2_1>;
+					};
+
+					ucsi1_hs_in_2: endpoint@2 {
+						reg = <2>;
+						remote-endpoint = <&usb_hub_2_2>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					ucsi1_ss_in_1: endpoint@1 {
+						reg = <1>;
+						remote-endpoint = <&usb_hub_3_1>;
+					};
+
+					ucsi1_ss_in_2: endpoint@2 {
+						reg = <2>;
+						remote-endpoint = <&usb_hub_3_2>;
+					};
+				};
+			};
 		};
 	};
 };
@@ -836,6 +873,69 @@ &usb_2 {
 
 &usb_2_dwc3 {
 	dr_mode = "host";
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	usb_hub_2_x: hub@1 {
+		compatible = "usb5e3,610";
+		reg = <1>;
+		peer-hub = <&usb_hub_3_x>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		camera@3 {
+			compatible = "usb4f2,b61e";
+			reg = <3>;
+		};
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@1 {
+				reg = <1>;
+
+				usb_hub_2_1: endpoint {
+					remote-endpoint = <&ucsi1_hs_in_1>;
+				};
+			};
+
+			port@2 {
+				reg = <2>;
+
+				usb_hub_2_2: endpoint {
+					remote-endpoint = <&ucsi1_hs_in_2>;
+				};
+			};
+		};
+	};
+
+	usb_hub_3_x: hub@2 {
+		compatible = "usb5e3,620";
+		reg = <2>;
+		peer-hub = <&usb_hub_2_x>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@1 {
+				reg = <1>;
+
+				usb_hub_3_1: endpoint {
+					remote-endpoint = <&ucsi1_ss_in_1>;
+				};
+			};
+
+			port@2 {
+				reg = <2>;
+
+				usb_hub_3_2: endpoint {
+					remote-endpoint = <&ucsi1_ss_in_2>;
+				};
+			};
+		};
+	};
 };
 
 &usb_2_hsphy {

---
base-commit: 4f27f06ec12190c7c62c722e99ab6243dea81a94
change-id: 20250608-c630-ports-ae7d00f146ce
prerequisite-change-id: 20250608-genesys-ports-09407ab555ad:v1
prerequisite-patch-id: 6e11f311167600e5a2fe4de47eb499a87cf49acb
prerequisite-patch-id: 18df27b45207f004f55a6dd5d558b84ba8b224c7

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


