Return-Path: <devicetree+bounces-255583-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 13E56D24889
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 13:34:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 62AB63022814
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 12:33:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B832396B60;
	Thu, 15 Jan 2026 12:33:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b="y4dR8ut2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com [148.163.135.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F6F0379989;
	Thu, 15 Jan 2026 12:33:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.135.77
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768480428; cv=none; b=EAsT+nYXqhFYNpapDnz21DDWLa4TI6A8006ofkV9d71x3jJOPIs21SDmd0iSrVa+HJ24rEOlR2DTiS3MtwvvYv1eegW6zZn4DYj5ne4cPWl3aIPKbrAJo5ukHbbjVrztJXNXRxuGTelLESOatSwYKhGH2LNb9yKTfCkYaiqurqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768480428; c=relaxed/simple;
	bh=pswblZNWZ3IP5kltmX4w1+HOYs/JzOwlwVTxZUVckfg=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=JAVoz6P0SwARSDCl8/UadOKsma2jdh2v7TACJPqowg7NxkpcW45IxA3VML2NJZJctjlpnWVP/pLM+2A/Ng8GAwTLiuGXZ25HMlQ6DwTqD/EkJho61CfLSOUfcNsTf3o1UlNX009qWtkJKB3OSCCrqFJn2LCjfRk0XdshFgA39/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com; spf=pass smtp.mailfrom=analog.com; dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b=y4dR8ut2; arc=none smtp.client-ip=148.163.135.77
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=analog.com
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60FBeAPl3414874;
	Thu, 15 Jan 2026 07:33:27 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=analog.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=DKIM; bh=fFYpj
	168zW9Ws3QThhB/GH4Dk/qIUx2mJb6L3zl+L9k=; b=y4dR8ut20pXWbGEQcoSg9
	FyGWcQJEwG0Ur9Ia5lHXA1f6ARpp6qMRCgn7aNc9PjH8tUgabht1gVZqBUpACvcJ
	ObmGBmN5Im5UHSUalKRjlVfUujrLREUyt0kxk+a9y/WNuLdJ35EWYrzvQnj/OCA6
	l62z+8LpIBGsNBBs6UW9TLR6lq+gtYPgXJKVyhE1HQ1NAyccvjIJZhTFhPyH3GS+
	oE2sywnHSmLt2UU6XChNMecUkG2MaCDZA5LaQwiK3gNpYPeF42nIF327uOkUKSiW
	W/FJL5ia8EyowPKwwYE0frJH+N+TdNrR+g/69jbKU8y4BICOk3ZfmABN2C0+Xmyk
	w==
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 4bpm0xkpyr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 15 Jan 2026 07:33:27 -0500 (EST)
Received: from ASHBMBX9.ad.analog.com (ASHBMBX9.ad.analog.com [10.64.17.10])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 60FCXQQO041427
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 15 Jan 2026 07:33:26 -0500
Received: from ASHBCASHYB4.ad.analog.com (10.64.17.132) by
 ASHBMBX9.ad.analog.com (10.64.17.10) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.37; Thu, 15 Jan 2026 07:33:26 -0500
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by
 ASHBCASHYB4.ad.analog.com (10.64.17.132) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.37; Thu, 15 Jan 2026 07:33:25 -0500
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.1748.37 via Frontend
 Transport; Thu, 15 Jan 2026 07:33:25 -0500
Received: from HYB-b1tGeUj4GP1.ad.analog.com (HYB-b1tGeUj4GP1.ad.analog.com [10.48.65.177])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 60FCVsdH030437;
	Thu, 15 Jan 2026 07:32:15 -0500
From: Antoniu Miclaus <antoniu.miclaus@analog.com>
To: Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>,
        "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "Antoniu
 Miclaus" <antoniu.miclaus@analog.com>,
        Srinivas Kandagatla
	<srini@kernel.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Bartosz
 Golaszewski <bartosz.golaszewski@linaro.org>,
        David Lechner
	<dlechner@baylibre.com>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: [PATCH v3 3/4] dt-bindings: mux: gpio-mux: add adi,adg2404 support
Date: Thu, 15 Jan 2026 14:18:21 +0200
Message-ID: <20260115121943.23715-4-antoniu.miclaus@analog.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260115121943.23715-1-antoniu.miclaus@analog.com>
References: <20260115121943.23715-1-antoniu.miclaus@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ADIRuleOP-NewSCL: Rule Triggered
X-Authority-Analysis: v=2.4 cv=QqtTHFyd c=1 sm=1 tr=0 ts=6968de97 cx=c_pps
 a=3WNzaoukacrqR9RwcOSAdA==:117 a=3WNzaoukacrqR9RwcOSAdA==:17
 a=vUbySO9Y5rIA:10 a=VkNPw1HP01LnGYTKEx00:22 a=gAnH3GRIAAAA:8
 a=d69XwWKql13BdTNXT4sA:9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDA5MiBTYWx0ZWRfX4aJP8bIWOU8H
 2qCRwoPpM9MvcThqou8Jp/N0bjo7QAQhfqc6Aq5t3XaCl6oCv3lYVeKvQvwe6tiDv7Ye30vbnRT
 EBThUxCiZW2SqVbuFKSPUmWTpgHZpPSF0qT6br2WDgxrM9RGwdUvtcmF5wstxSq5SFhtm99UmfA
 53yp8tNlY3B9d++nZo3LOp2hmKK5aSHD/ZA8ACgLN7vhpzantJawbbVNSHAUwROAcDHDTr7jl3G
 4EM6Wjjqlt4uAxCmYcgKxDJSR4WEdDZO8p3IgNcONYsATf2fOSeJxLux5Ynwd4paRaoICJ27DC8
 ojt/T6MjpCkHCJgTStN/FKcye8ho3T7S/nt038Ytm40XQYDLLFaKBdEFizEDEL3Fe8P3cEMiqsp
 pIjqYJrrO+rlUdcGv6k0Cau1swLPhJynhd8p/f+DP5Cy3MsimtZ0lENKrFEFV4X6xN3EIolwGtl
 MdbEBtn8UxtKBtNhU1A==
X-Proofpoint-GUID: uMlUc90o8NqbwW4gx8SBJENte20-OuH4
X-Proofpoint-ORIG-GUID: uMlUc90o8NqbwW4gx8SBJENte20-OuH4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_03,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 spamscore=0 priorityscore=1501 impostorscore=0 phishscore=0
 clxscore=1011 suspectscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601150092

Add adi,adg2404 as a compatible string. The ADG2404 is a 4:1 analog
multiplexer that uses the enable-gpios feature.

Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
---
changes in v3:
 * integrate with gpio-mux bindings instead of separate adi,adg2404.yaml
---
 .../devicetree/bindings/mux/gpio-mux.yaml     | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mux/gpio-mux.yaml b/Documentation/devicetree/bindings/mux/gpio-mux.yaml
index 199792d42323..f5866b9f46dd 100644
--- a/Documentation/devicetree/bindings/mux/gpio-mux.yaml
+++ b/Documentation/devicetree/bindings/mux/gpio-mux.yaml
@@ -19,7 +19,9 @@ description: |+
 
 properties:
   compatible:
-    const: gpio-mux
+    enum:
+      - gpio-mux
+      - adi,adg2404
 
   mux-gpios:
     description:
@@ -107,4 +109,19 @@ examples:
             };
         };
     };
+
+  - |
+    /* ADG2404 4:1 multiplexer with enable GPIO */
+    #include <dt-bindings/gpio/gpio.h>
+
+    mux-controller {
+        compatible = "adi,adg2404";
+        #mux-control-cells = <0>;
+
+        mux-gpios = <&gpio 1 GPIO_ACTIVE_HIGH>,
+                    <&gpio 2 GPIO_ACTIVE_HIGH>;
+        enable-gpios = <&gpio 3 GPIO_ACTIVE_HIGH>;
+
+        idle-state = <0>; /* Select channel S1 when idle */
+    };
 ...
-- 
2.43.0


