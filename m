Return-Path: <devicetree+bounces-221087-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AA48EB9D2A0
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 04:30:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 375AD1B23770
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 02:30:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAF3D2E8B67;
	Thu, 25 Sep 2025 02:29:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="J1wDHdzW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E16D72E7186
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:28:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758767341; cv=none; b=sVIgKN+kZgg+gcTXqoG+7HZe8IBgeBK36qVyy92qOcBJpiYReiJ3cIJ2FCReq1HmR/kOlMP3AOk2A7xNR4IA+L+rBKum3OhbSyXkfLuH+IYuPqrVZ7Cx4K6SZf+pz/oQpdKs8d3ISgrHumNKjsPDiIddP/3q4boMCe0r/xKSOuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758767341; c=relaxed/simple;
	bh=Li7Axgqj1Qyy3uX3oX9irsrd0UwAJw/MhTIJL1ssmMQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=HroWcvUKa/mcmABRXwm1UG9DxgY8o75hzVbOZhfRz2gU/wEuEU3mkYofIIpH92NERKiRDalEnegklaH9LYyPCnLuJCaV4kO+q5ZWArLsL6WaW3dcQ1OQynQLHkMtFCukGUierIMTOn4/5Ze7K9aXCVR25YbWA2ej+xZF9a0hK7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=J1wDHdzW; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0Jous017470
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:28:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=NkSIvXe2PoZ
	kc0A70JhcEzpgbRLO6/8AmGazVnh8Tx0=; b=J1wDHdzWsDKpAy1PIx5WXXmAS5l
	4Y0MZfOTMAW/u23Ac2cX6SBTPZtKF6dEFNSo5/UzFw0jNDmNce8SdXUyBrDEBSJS
	Xpn8rrAoyStypUmA6i3vfWrphgI84b8QR04b6T4HwTwUcTU+xtdUstAjnDkzziuw
	Q3REK25run5gZ0vvVpC+LgUsarJth8J+UPeuoLQrwU/zBXdqJMoOdkIo50Ii8yJQ
	IBPE580NzBnclsiLED4mjk2qVKMpm5W5PMrzz5hdxWX8L3Y68SVq6nVpjrlJWX+Y
	OGcqqWgiUHWFu0uUJ2500C8RYAfCgkpZHCa74xrpVpL14+d17sX68SKupXw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bhvjys12-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:28:58 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-32eddb7e714so414530a91.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 19:28:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758767337; x=1759372137;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NkSIvXe2PoZkc0A70JhcEzpgbRLO6/8AmGazVnh8Tx0=;
        b=olyrZ00b/DOup6uzO6rR6adokyJC+vCVETFNf8SzYHxAUFfo6pDmFDo4a20qAIPkg/
         gfYOPDIyxbC1TeY5/WCgknDcY5alHb0uNpWhBNhsI/qFKtlykKA0W7hTU4sUkFizQLYt
         Q7JUntqIN9aVuvGoHCtHIEP2MmNKCpMoAXTK/S5jZrXg5PdMwBdZfHgaiieD+60lsykG
         a1oTFQs3B16WzUxU939lCd6ys2q52qQ+APRrYvy7OjFo4TnRYN98upQZinBbMvWRWT8m
         6YYlHGvQAY8Qirb6unEUEHt8rW6+M+smlEm+TiWQp8PBxiy16WbL3ZzwKcm9mSsKT1DX
         J4LQ==
X-Forwarded-Encrypted: i=1; AJvYcCWEwq2QciCBaUT23m5//KwgvmxRseVN7zEDDEe42d0zTRADz1nZw9OckxBv7c3w3DVwoWHe/dWU96Ro@vger.kernel.org
X-Gm-Message-State: AOJu0YyO75uy0AvoVZKYBa/wQL0lJ37LlYQuWZwMpgIxd8cU68Nt/gAO
	daXtKGwq2Yntz92kk17GEM3PisKQLiv+ZkGQzHWm1ZZjQUGmpn2Rt+tf/1eK34S0xC1cpYzeO72
	dg57o3XuQjObYwRj9cfos0+UfYWYAvVsFUc0djLxNhJd+dO5s2IYciSxjBSo4L22X
X-Gm-Gg: ASbGnctHKPZJZWQCQmeIvnhU7JpdRWFXhPPY2fQODca8BGoHvGGAkePPENS0fcysqpB
	zF+PwPq2aOEYiRnfCEPDtDWcVAX5xXpqDBJgNmUzxf34JA8tBhM4TT5YHuqi0BJtlzw5PVT/m/L
	u0wgcV1Q4p6Uw51MmxdBtl3+XGTbbUQzClvWYDXlOwhH7RU0/PqXD2vI1Pkp0Ldnh3ph8EWpkgv
	Bk2/evZknVBqRPUR1qQQH7eKcJMFAQwwRn24V2+IUUy/5Hx60m3JlFK5OKxx6MKegw3YDqsEn0d
	qoP6caTsspishU1NBrcmXn4w3qM1Uf37M2uEuCXxPP93LassyFu40FJ87oTXMJrcIwcc2pTi0YH
	2rgKAE1ka4ERCWq1i
X-Received: by 2002:a17:90a:e705:b0:32e:7270:94a1 with SMTP id 98e67ed59e1d1-3342a2b94aamr2128075a91.17.1758767336941;
        Wed, 24 Sep 2025 19:28:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEU67qmxExDZGHwTuZe0bg+hJ3mFuAKodDprKDYzQgHWUaEECh5/A/FMklWCasb9xyD1Ojlog==
X-Received: by 2002:a17:90a:e705:b0:32e:7270:94a1 with SMTP id 98e67ed59e1d1-3342a2b94aamr2128050a91.17.1758767336533;
        Wed, 24 Sep 2025 19:28:56 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33471d711ecsm499881a91.4.2025.09.24.19.28.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 19:28:55 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        kishon@kernel.org, vkoul@kernel.org, gregkh@linuxfoundation.org,
        robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v3 02/10] dt-bindings: phy: qcom,qmp-usb: Add Glymur USB UNI PHY compatible
Date: Wed, 24 Sep 2025 19:28:42 -0700
Message-Id: <20250925022850.4133013-3-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250925022850.4133013-1-wesley.cheng@oss.qualcomm.com>
References: <20250925022850.4133013-1-wesley.cheng@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: A-cHbTAtsEajSQup0GaVfSzaZfZ2iM2-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAxMSBTYWx0ZWRfXxzHqIceFpEgo
 l/oArv7ZmXClZBYznHAW/G4G22s3+VqKzHpu8iYcqlWVtYa5G79ZcOSeohKl1MX19KU5yHkxRDW
 +C+tkLtOHD3IwPwQ09ua/l14LpzDkQmjLicUGgDPDVxYPXMmNOqflf71YHm9I1JL1LorAyK/LMc
 4homPcynNZTAt2q+UBVVfuWqqN7kgPNjtnzbzPZ4IzNs1Mc2J3m41H+sU21Ze/jKsC/q5QF3R+N
 BW3MTzhrMsxkRt7XGX1Gpbhr70m/ARYHwtxBgjomPDT1yQel1h2hF3sVQAOCiZ2ocDxezC7sUSR
 dEdokyg63EwhBVkq0lCHMvzAsGZWrGPOdnqZoDjpQ8JN1YBpv6V1sspEG4zfLVCThSJsWRuRk0c
 /zt5UDbi
X-Proofpoint-GUID: A-cHbTAtsEajSQup0GaVfSzaZfZ2iM2-
X-Authority-Analysis: v=2.4 cv=Csq/cm4D c=1 sm=1 tr=0 ts=68d4a8ea cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=e4LYGitkWRZSOGXTHbEA:9
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 adultscore=0 impostorscore=0 phishscore=0
 clxscore=1015 spamscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230011

The Glymur USB subsystem contains a multiport controller, which utilizes
two QMP UNI PHYs.  Add the proper compatible string for the Glymur SoC.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   | 35 +++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
index a1b55168e050..b0ce803d2b49 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
@@ -16,6 +16,7 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,glymur-qmp-usb3-uni-phy
       - qcom,ipq5424-qmp-usb3-phy
       - qcom,ipq6018-qmp-usb3-phy
       - qcom,ipq8074-qmp-usb3-phy
@@ -62,6 +63,8 @@ properties:
 
   vdda-pll-supply: true
 
+  refgen-supply: true
+
   "#clock-cells":
     const: 0
 
@@ -157,6 +160,25 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-qmp-usb3-uni-phy
+    then:
+      properties:
+        clocks:
+          maxItems: 5
+        clock-names:
+          items:
+            - const: aux
+            - const: clkref
+            - const: ref
+            - const: com_aux
+            - const: pipe
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,glymur-qmp-usb3-uni-phy
               - qcom,sa8775p-qmp-usb3-uni-phy
               - qcom,sc8180x-qmp-usb3-uni-phy
               - qcom,sc8280xp-qmp-usb3-uni-phy
@@ -165,6 +187,19 @@ allOf:
       required:
         - power-domains
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,glymur-qmp-usb3-uni-phy
+    then:
+      required:
+        - refgen-supply
+    else:
+      properties:
+        refgen-supply: false
+
 additionalProperties: false
 
 examples:

