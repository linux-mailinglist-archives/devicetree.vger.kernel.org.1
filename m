Return-Path: <devicetree+bounces-223182-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BAB64BB1EB2
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 00:06:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6D8762A52C9
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 22:06:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A298312825;
	Wed,  1 Oct 2025 22:05:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VwPLdRDZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B38E73126A2
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 22:05:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759356345; cv=none; b=r1KVa27W1D0AepK37J+P48RgVaEHgfENh+Hhlh/oTucLoCIlJ4UDPgSQxjTJp2p8hPSwwBYVptk7SgsIh1DziLRDoUzCkshZIBNf6a0lQ6WuzeeuNwFSMQnzzlHwXuaZo3P6S70SBx0DCCjFz9rBjUEtexaAWGMkxSgWaiz9edo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759356345; c=relaxed/simple;
	bh=cfM3s21T8CQ3sOfi9Dc1sx2mJ27UuKxMJmEc0kjDpws=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=N8lmns8/X9sgcO1X5cd89UvwRDvrBFQdIgGX/zbz0FjL+k1UyTxSHRei49x90HSwiMzf1cyyOZ0V123G696UdCf4Uz9QqOl087IChh1djM/rDxZP1eKGQaDBHZNy3PQc0JyvMcGNLNQZN+YIYDJPlEhb4dC2ZWIS7NDxPBOmpyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VwPLdRDZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 591Ic91I023832
	for <devicetree@vger.kernel.org>; Wed, 1 Oct 2025 22:05:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=YaQd3cF9DM3
	ZawONJKkUUZT5oOk1utb/PQbw+Tb9ZII=; b=VwPLdRDZx8FXXZy/LdNwLw7sWso
	nNXohyNnyerO+pbHcfUtgzYc47FUOfVpoQQwyGk+uECmqtttjLCxfaQnfcuiMKy3
	COPDcecXaKKtbiRMxxTaa/NKEJDeeUj7X9rodNSdC09vJFbV18sQWiHgGRmTu4RR
	Y5IeOAYXUy9XZO9qAkUwZzYEQMHnI/DQOTt1aRtQSLurRyeU5HC8OhqfJhybPEbg
	emV7DosVkILOfae0zWqIBZQE8tOfTQqI2Qa0xQ5uZGBLA4bVgYwZvYdoda5haBrW
	tzuMNTj30oAma1cX0li8t2rht8QpPYfu6sz0qZNLTT7Hb679cAqJekVCgmQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e977wtxr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 22:05:42 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-27eca7298d9so5806125ad.0
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 15:05:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759356342; x=1759961142;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YaQd3cF9DM3ZawONJKkUUZT5oOk1utb/PQbw+Tb9ZII=;
        b=X3EJxpqZun0GJ6IAyhxVzP7jme11KMgrHzQzcUJHZMlRRrkq/phtwFG2tGvO50OvpE
         yQQvoFR7dYFVpVCVyhWpyR0opZhFh/0RMnKPm/ubA+TAkvUqybpOl3G7aFbxRE9+ujpO
         upTCHDxQ6MOv2VfkYdjFdzmXy+fbadIch0TR1nJqCEb2yMYqkq04jJKanKwMJtn0mj7F
         ymZhQQyLcs4CtCuCNnb8PfCoNExY5yLXPIiEtInB4ePFW2BGGUYRlTFXo6xCA2BtSJC9
         ZG2Hp+OaIkXCGyTW9CzktUlxRRgmOVALSJqXRpTysyirhF63o7+jKYHAYtyI3RH2tx/y
         0dzg==
X-Forwarded-Encrypted: i=1; AJvYcCXf+jlmKHwR8D5uF02K7O2A3kxCWob/4EPXYDOwEt42XhECe1T5Wqj0ESq+uV/4xm48QbBDrYSC8lZi@vger.kernel.org
X-Gm-Message-State: AOJu0YzCSCCtBr1yeES8sxMhDfCHwX4ZuRfpjwJ4i6xnU9YG9nPBW/To
	tUGGtKp5g6D2YiAA7cPWKhBzBQy/oJ80h1If4ievtX1hgtzI24emwzUmz8brrpakYgn3aGR5KMj
	zx6DHSdDWWH014P1QbdD76J8P+YLhz1ux3I5WbIrAwvFVEZsjRX7mMmC+TWdHVchc
X-Gm-Gg: ASbGncs25ewz1HHuW72cdb/Hks4yJCF/71BarNaaTiIADstu/K9hRabq+kb5kzE9LQj
	d7MKr+JysYQP9Qrn1fm3dJe1ad/vI0NjwD6FccOwK3WYxbiIeeU5/q4gK2z6F3t+OcMxqV3UF7X
	Thd33WR7y1e7LNkhnrUGUxBlO/T90MB1ueJi9YhhxFz3VpU4a3pKzRKgE67humR3/9K1qHj44XQ
	Z2w408JxcqJGOpxOGyzCjGS0ufxpHHJ7MpycIP6RB79F85V5eUn2vOW/mSbgabrpQEc2MkVcGZC
	zbtDCkhqi06GsHFruKdwX47/3XXuX+7ZvyWNo8o6ZWiRHGgjsiyX1JX3WjrYCiJw4QTOKsbYBJ+
	Dmax1f1E9QxNmyypkT6fXgw==
X-Received: by 2002:a17:903:144e:b0:27d:69de:edd3 with SMTP id d9443c01a7336-28e7f2a2aa3mr55519265ad.20.1759356341900;
        Wed, 01 Oct 2025 15:05:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHfcBhsPzH4uOaOTsLowdy78HnwI16bUIuuSFnXJDMrE5c2ZqQJDOV6y9FJ6jkCyNo9Jw2ddQ==
X-Received: by 2002:a17:903:144e:b0:27d:69de:edd3 with SMTP id d9443c01a7336-28e7f2a2aa3mr55519015ad.20.1759356341468;
        Wed, 01 Oct 2025 15:05:41 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-339b4ea3c3dsm702085a91.5.2025.10.01.15.05.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 15:05:40 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com, kishon@kernel.org, vkoul@kernel.org,
        gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v4 03/10] dt-bindings: phy: qcom-m31-eusb2: Add Glymur compatible
Date: Wed,  1 Oct 2025 15:05:27 -0700
Message-Id: <20251001220534.3166401-4-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251001220534.3166401-1-wesley.cheng@oss.qualcomm.com>
References: <20251001220534.3166401-1-wesley.cheng@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 51zS8d-uX3DH9G8PFU7yJgkTH6N62bvU
X-Proofpoint-ORIG-GUID: 51zS8d-uX3DH9G8PFU7yJgkTH6N62bvU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDA0MyBTYWx0ZWRfX94tTTeiGvsfo
 Oa9sdA0bUQENZVA6Swiog6NkYLNTlm4PPLtq0//Pd2SylTeC90g7jsB/5ptiK1mmqcL8p0iNse2
 J8eRbkcVAXvs/HGXBMcTzSpjZPqgH5oVNSVLu/Z7GkZOK82rEYryc9EdNqR45/UYDZsfwuNkd/y
 E/RKeAAiOoz/wQ6GDKI/evcNOdpPvt2C5EbDBmTevMTuSWXiNUjIorRQC7zdnhdfRWvqx7ECfke
 HHDjCUbb7hwatJonnVzoAoukOk1eWFSW/W5VJbvvX2kbF8zFFe1UZLCWQTJCtcpiS7w9qJSh9m0
 1UU3fr7QGNkO0CsDZ1zfn8woOldYuP2kqyuQlsUs5mzPErkGs20YPPiDW5C+m5y601wZ+G4SZ08
 qJ00Z3NwR7nNUkIgHakXcEk38Eq9lA==
X-Authority-Analysis: v=2.4 cv=Sf36t/Ru c=1 sm=1 tr=0 ts=68dda5b6 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=dJG6SERxbJy7wEyxA2sA:9
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_06,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 suspectscore=0 adultscore=0 spamscore=0
 priorityscore=1501 malwarescore=0 lowpriorityscore=0 phishscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270043

Add the Glymur compatible to the M31 eUSB2 PHY, and use the SM8750 as
the fallback.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 .../bindings/phy/qcom,m31-eusb2-phy.yaml      | 21 ++++++++++++++-----
 1 file changed, 16 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
index c84c62d0e8cb..0d5db71e0ad8 100644
--- a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
@@ -15,9 +15,12 @@ description:
 
 properties:
   compatible:
-    items:
-      - enum:
-          - qcom,sm8750-m31-eusb2-phy
+    oneOf:
+      - items:
+          - enum:
+              - qcom,glymur-m31-eusb2-phy
+          - const: qcom,sm8750-m31-eusb2-phy
+      - const: qcom,sm8750-m31-eusb2-phy
 
   reg:
     maxItems: 1
@@ -53,12 +56,20 @@ required:
   - compatible
   - reg
   - "#phy-cells"
-  - clocks
-  - clock-names
   - resets
   - vdd-supply
   - vdda12-supply
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          const: qcom,sm8750-m31-eusb2-phy
+    then:
+      required:
+        - clocks
+        - clock-names
+
 additionalProperties: false
 
 examples:

