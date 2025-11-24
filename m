Return-Path: <devicetree+bounces-241629-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DCE2C802B6
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 12:19:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 468774E526C
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 11:19:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 823672F5473;
	Mon, 24 Nov 2025 11:19:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XV0V9zUy";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="P1SCBsom"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2DD32FB0BA
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 11:19:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763983166; cv=none; b=YCJyfq8Hh3dH6D6evCDzzfPhSTQB9GsZs1bJ0pXO8IJ7csdUwdcsI8TfQcIBSSO9gStd1VVUFDUpQ3qain4wOEUkAGof5FX8d0iRytF7slxUKWDsmOXbahjldNBjm+F9Iq9oYUAM4yQO6556OcTyV/8cL38V/MIjLCk6s9gWXSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763983166; c=relaxed/simple;
	bh=jJNP7fhiYa5NXhP2ZCyBQvZANGHpz/q82PDVglB5fWA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=YPsipHAVhQOJoHsqSUi4T9ywJfTcmJMh7jreLyvYwpTdwcujnOAFDqLBBjp57h34Xw3rk15c4DFigHDt/rDgnWRNudoHiJkRIXEGlY0cpdeKOXC+bSSQMivs2udf7blYoXNF6AQyQ73ZS6ywYLKmFn5v4jICnejUCITgDUYvir8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XV0V9zUy; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=P1SCBsom; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AOB328e3884670
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 11:19:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=cUF0GA4Fgp6
	HZRZuuhnb+qO3BSsRgQEVHtyoMxCiTZ4=; b=XV0V9zUyQ7oXAksIcxpQMnBrhJF
	g42+Mt8mVt5UB0quUDcgzMYe0RfVg6mqMCjLkHJOLNX1yyK0FKI/oljBpG5kBbB+
	oCG9dp+Q7QNN+r5+3HGr58Va+oGXiljnspDJ6h/HRFxSSvRc2pByV99nwbj7ylC5
	FJL4WN/6KW8bCjQzm+qpscXsNavnvHjRag5cnfldAB+UZq6obmWrsNpbwyJVxB7Z
	V37lx432H2ddLEQ/7jxMj6oNRCXHCU9+EdqxxMb65AnQGYFEKeO5XgrrrhmbVjWx
	0wuBTnXU+tjw96TJ7rAmKikbCqzJIABPxF1UM49wDjQiuGc5mN2YWLyzANw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4amp5681dq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 11:19:24 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2958a134514so57153035ad.2
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 03:19:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763983163; x=1764587963; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cUF0GA4Fgp6HZRZuuhnb+qO3BSsRgQEVHtyoMxCiTZ4=;
        b=P1SCBsomhFc4srr6qqW3fiubVuJO4xW+vjLeZUfrypKPiqeaOR/8H8XxdjhnQ+nsqM
         bbYSl/KgkCJg6epkpJaCnXKM5OnnfZJ562BPuisbsFTFx8mwTjTjn0zI1N2c7rNkbsPQ
         0GOk0Gg+W/qcOWsnh7M+jPKeefjSLSXGIg37GSDCG925hp6Ztg+tnI8EDkf2ZTzTUh1/
         RWfSDJOZUfjPpgleroB+RuiM4veTht5I+AtAgqgDLW8hpMk0yyPic13PEYQp05/NEtlW
         gTqKlQV9soyt7Ss9Ho+I69J9kquWZthA/lIBfchmsBF/pr3USrNXXBugxeSwaQ5V0XEC
         dZcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763983163; x=1764587963;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cUF0GA4Fgp6HZRZuuhnb+qO3BSsRgQEVHtyoMxCiTZ4=;
        b=okqUF021ekr7pXbGlo/O/KQ75uS1MLxVF6o+paSG+0KegOxd3B6YLy+OM0yrztAbvc
         IDHCd/xdLgaJBbWfQSgmAZtUdlj0oru35kKOT5LVFS1bYFutKiVsBXqam0nnweUp/uXl
         iPk8ZTvYVeFvpFfCd8es+pBXRWCSsmbKN8k7Aj789V5pSnvKzCPdhFS4TIP9VX69o2vN
         WPpNPsBY/NbCR5n6AOhMbWbee6tgz908D+zMuGQ8yK7WjZNQjQM6yE5uGygSWwgNgNoM
         BPi62EIQ4ar21mjAH0+4lyIHOTqMf964mOSabXyuwMyDpcV45y9UAZ3P5tbWk6JLhTI9
         dJFg==
X-Forwarded-Encrypted: i=1; AJvYcCXpHmOmUJA8Iw+rG5jiaqa0PfcjQJK/IZ/8zR4OcKDy6Uh6DGnBg8yoVqRz0YvgEaPaQZsQN3E8MSdD@vger.kernel.org
X-Gm-Message-State: AOJu0Ywcb6VqzsmMSlUl3PHuA1tniz0nQoSYBnsOv/dUBMqwR4nDWWVx
	glnyB7H0TA9SAr16SmfUMM+E/yb/CpbbuWrG/ewQYISquWgt9G393O32Q8r28kxeK8YgS8+7UiC
	6mZ5kHXE4v0AidS7D4TlytUKuBzX2Sh8165OKNjboBEBnwurtKF5rij+lmh7Z/vn0
X-Gm-Gg: ASbGnct6ZKJvm7gMRG6xPoLKq/jq9ClqMekzlLHXqCKn2gFFAe9JASqXglyBU6DKtRZ
	IStyhGJeveUbLpiXkTJXa5YM0MFvvRh+ZSQH4sOwsvnDx7IptbRDO8RbEMIOV4ptuPb6gGY9oPQ
	81sv6UFV3DHRkZxqhBhicCjJkFDiDQB2yHw+txidkQvrb3g0wJ1jXI3Ag/48FPCUJXw4AA/j1pg
	x9/bhPp5GEcSgVI2L//aS38s+Nj8PuPMiV4ehOVFoyPVd0ZWjZFF2mjSj/Uz9denGfxdebQSZsx
	hDOcRcB0BPejql7BcYrMAVz0lGkB+bCq3qM7FO0naTCyu+H7IECdoCpVabQvcBmqgFBs6pKEn6w
	arWTyNg3JDHY6oCnV4akdIqvKXFBSaNW74IXFHYMe
X-Received: by 2002:a17:903:1aec:b0:297:e252:9e50 with SMTP id d9443c01a7336-29b6bf5daffmr131941215ad.42.1763983163448;
        Mon, 24 Nov 2025 03:19:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFZfyj4YguZoyGyeuCaIVX5lSOuQhqJPS0C8k4q3kuES2AMA+MD0guN4v97F5K/TusgIeeSHw==
X-Received: by 2002:a17:903:1aec:b0:297:e252:9e50 with SMTP id d9443c01a7336-29b6bf5daffmr131940865ad.42.1763983162964;
        Mon, 24 Nov 2025 03:19:22 -0800 (PST)
Received: from hu-neersoni-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29b5b15b851sm130313165ad.43.2025.11.24.03.19.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 03:19:22 -0800 (PST)
From: Neeraj Soni <neeraj.soni@oss.qualcomm.com>
To: ulf.hansson@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, neeraj.soni@oss.qualcomm.com
Subject: [PATCH 1/2] dt-bindings: mmc: sdhci-msm: Add ICE phandle
Date: Mon, 24 Nov 2025 16:49:13 +0530
Message-Id: <20251124111914.3187803-2-neeraj.soni@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251124111914.3187803-1-neeraj.soni@oss.qualcomm.com>
References: <20251124111914.3187803-1-neeraj.soni@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: x6UuDkOcbXJRse7T1ke626HDuhBwVJj5
X-Proofpoint-ORIG-GUID: x6UuDkOcbXJRse7T1ke626HDuhBwVJj5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI0MDEwMCBTYWx0ZWRfX4QHY93IATY2U
 DQWfFLZTXoJpGjG029WMy+E6XzQTMM8ubV+CXKlVE/0y2kKtft46WuRViSeaRTHTxYJz08vWN5b
 5eZpgYJefpXls6ciV6dINx8CKYTHARSdas3I/gWPvUMx54Wdh8UrvAn0SA+ENq5sLY+K+nyocue
 ZWRAkCYFSL2+tLEyCSfJYvIZpPp6eS9TX1wds7F+8vKfKfIYn5QVEPf5HvI0kYwD8dylKojCXUK
 GS0PEX0QB8iwb5zhNd2PhjMGJn0LieIAov0zgpydULPimFQxXUrz5wHGlmcO4QSEIZwfgNZYsaF
 WyFRZV8z6FAuCurdl5om2LH4b+Qal/rdtCjkrOUDYC/IGfoqvmpjTjwWXubnSufWaMTkqs+80+L
 7NC3FnCNzdtUci0K0aEIaOQCx41bZg==
X-Authority-Analysis: v=2.4 cv=dPWrWeZb c=1 sm=1 tr=0 ts=69243f3c cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=4iBehzXTjlExH0EJMJsA:9 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-24_04,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0
 impostorscore=0 phishscore=0 malwarescore=0 clxscore=1011 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511240100

Starting with sc7280(kodiak), the ICE will have its own device-tree node.
So add the qcom,ice property to reference it.

Signed-off-by: Neeraj Soni <neeraj.soni@oss.qualcomm.com>
---
 .../devicetree/bindings/mmc/sdhci-msm.yaml    | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
index 938be8228d66..154f8ce37da6 100644
--- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
+++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
@@ -140,6 +140,10 @@ properties:
     $ref: /schemas/types.yaml#/definitions/uint32
     description: platform specific settings for DLL_CONFIG reg.
 
+  qcom,ice:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: phandle to the Inline Crypto Engine node
+
   iommus:
     minItems: 1
     maxItems: 8
@@ -223,6 +227,40 @@ allOf:
             - const: cqhci
             - const: ice
 
+  - if:
+      required:
+        - qcom,ice
+    then:
+      properties:
+        reg:
+          minItems: 2
+          items:
+            - description: Host controller register map
+            - description: SD Core register map
+            - description: CQE register map
+        reg-names:
+          minItems: 2
+          items:
+            - const: hc
+            - const: core
+            - const: cqhci
+    else:
+      properties:
+        reg:
+          minItems: 2
+          items:
+            - description: Host controller register map
+            - description: SD Core register map
+            - description: CQE register map
+            - description: Inline Crypto Engine register map
+        reg-names:
+          minItems: 2
+          items:
+            - const: hc
+            - const: core
+            - const: cqhci
+            - const: ice
+
 unevaluatedProperties: false
 
 examples:
-- 
2.34.1


