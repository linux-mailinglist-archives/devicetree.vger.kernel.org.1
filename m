Return-Path: <devicetree+bounces-248247-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B7300CD04F8
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 15:40:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1E6DF3049B1A
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 14:34:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38E1732AABC;
	Fri, 19 Dec 2025 14:34:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b="LfH8wftG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-00128a01.pphosted.com (mx0a-00128a01.pphosted.com [148.163.135.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 940303246F4;
	Fri, 19 Dec 2025 14:34:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.135.77
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766154888; cv=none; b=sg92U3exImaeRwloKZ/NJ5QiIl//Csl0pFbB+/HhDQElfBM5jYaT5SNLvQY0SA+m6WVousw6bC88CMeDrCjQxmU7M09qbO2N55lQQElyM+Bf3YX9p8AW+XvcPRX9AmbhrJuJQJfqFymMhPqXVAGmzjwb05HROwnoOGRytomNChc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766154888; c=relaxed/simple;
	bh=ufHDcAe8viGe5TG3AFXGVLVzxEErXWA15cay434LyJE=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=brrFdmqc/3zXJwaWG8yJ+5dsiGkGQcbA/jAlkhZFFHJAAHPPhGdq+nEEK2eQCBTuG3NAgy7FsdK0Hv27acP2Id6DhuT6P5/qTeJLlNPw36CnkLdvdcWF9xxOwlb53Eg+j8XOkXQeHBQ+hyeecrB2C3HMnxcyCEuvSR86g9/koKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com; spf=pass smtp.mailfrom=analog.com; dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b=LfH8wftG; arc=none smtp.client-ip=148.163.135.77
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=analog.com
Received: from pps.filterd (m0375855.ppops.net [127.0.0.1])
	by mx0b-00128a01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJEEkWp799628;
	Fri, 19 Dec 2025 09:34:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=analog.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=DKIM; bh=Vu1Pj
	w6QITp2saW7rIIsvPiL4pwX2On+VhAdulHrubU=; b=LfH8wftG/ujisaTpzOm51
	MYooZs/XDCa7HaCchJ3E2nh9ESLUEn/aW0+zf5PxjqTnkjfkO66efPCz09XcGHm7
	AlZEKQE6YYCp/wPmEpOP3UZGpl06jQGWQltoMQP0IrPYj3xPkVumyXH7psGO7V9f
	i0Rva5N/vXpJZ3dWdPav55hqagHl+BHLEqEWTatwSVDRJmSe7XyhRxOYVHgvpure
	Jr7UkCEFjtVcoa9g0pyMmgLhOVjESz6qcf6a8C5MLvEGQJC3mfqDvKQ92Z6/KiPE
	FJbgfKSEcOWpi9slLETdOyglH9rDApV7zSh0EVSJsLlfKjUPhqcVmq6DMMC+dFAb
	A==
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0b-00128a01.pphosted.com (PPS) with ESMTPS id 4b4r3tvbfa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 19 Dec 2025 09:34:31 -0500 (EST)
Received: from ASHBMBX8.ad.analog.com (ASHBMBX8.ad.analog.com [10.64.17.5])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 5BJEYU8S045151
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 19 Dec 2025 09:34:30 -0500
Received: from ASHBCASHYB5.ad.analog.com (10.64.17.133) by
 ASHBMBX8.ad.analog.com (10.64.17.5) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.37; Fri, 19 Dec 2025 09:34:30 -0500
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by
 ASHBCASHYB5.ad.analog.com (10.64.17.133) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.37; Fri, 19 Dec 2025 09:34:30 -0500
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.1748.37 via Frontend
 Transport; Fri, 19 Dec 2025 09:34:30 -0500
Received: from HYB-b1tGeUj4GP1.ad.analog.com ([10.32.13.98])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 5BJEY0kJ001327;
	Fri, 19 Dec 2025 09:34:23 -0500
From: Antoniu Miclaus <antoniu.miclaus@analog.com>
To: Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>,
        "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "Antoniu
 Miclaus" <antoniu.miclaus@analog.com>,
        Arnd Bergmann <arnd@arndb.de>,
        "Greg
 Kroah-Hartman" <gregkh@linuxfoundation.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 1/2] dt-bindings: mux: adg2404: add support
Date: Fri, 19 Dec 2025 16:31:44 +0200
Message-ID: <20251219143244.21674-2-antoniu.miclaus@analog.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251219143244.21674-1-antoniu.miclaus@analog.com>
References: <20251219143244.21674-1-antoniu.miclaus@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-ORIG-GUID: AfUIo1ndyBqWWB_icyH1qjXz2mDpaBV6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDEyMiBTYWx0ZWRfX5Zz0RoHfpRZC
 upXIOLqRTOrBJylI4lzMy5WxXByMPQQcpKuUb4Ya3TwQerJD8UFfkt4WOj18HC3Y7DLa7CNglKI
 Wb8rSe2q7aNcuio0Q2BmXoL1vJsjAP6C9zKIzUpCcVsC7KSGjhyM978aaJmCxRFOq/yomau/fny
 glJxiv/cy/fckT163khwu3aTyl4JeLg7Qaa9hh5keTSJq4/msNf/r+ORL7Kq9Y52lA/1zarY/Tr
 e55zR70iOnZcp/3k+KLdGhlnhQ4xqs9LneT/wYf/tWm4Pp3btOC0BrVEXtIXGaJHwmbYKFdUM0H
 kNayB38pDkmpVngysSXcTo0rimc4PCIhUxz667luLTgmeDwv7vf3UDP9ak/dufFjTabTPC4tS0V
 2hyeW3pUrpnguhRgTzDKPkoRmf/FfAq1nFP8jnaP1RY1QxrSRzrqiPrSVuW9AG9F1YEw43PLqtM
 erClAyfcPuqAr4XZsIg==
X-Proofpoint-GUID: AfUIo1ndyBqWWB_icyH1qjXz2mDpaBV6
X-Authority-Analysis: v=2.4 cv=Ba3VE7t2 c=1 sm=1 tr=0 ts=69456277 cx=c_pps
 a=3WNzaoukacrqR9RwcOSAdA==:117 a=3WNzaoukacrqR9RwcOSAdA==:17
 a=wP3pNCr1ah4A:10 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=gAnH3GRIAAAA:8
 a=EgIdapzY1BfK4M8Bkr0A:9 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_05,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 bulkscore=0 phishscore=0 adultscore=0
 clxscore=1011 lowpriorityscore=0 malwarescore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190122

Add dt bindings for adg2404.

Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
---
 .../devicetree/bindings/mux/adi,adg2404.yaml  | 66 +++++++++++++++++++
 1 file changed, 66 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mux/adi,adg2404.yaml

diff --git a/Documentation/devicetree/bindings/mux/adi,adg2404.yaml b/Documentation/devicetree/bindings/mux/adi,adg2404.yaml
new file mode 100644
index 000000000000..f28e66f7a250
--- /dev/null
+++ b/Documentation/devicetree/bindings/mux/adi,adg2404.yaml
@@ -0,0 +1,66 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mux/adi,adg2404.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Analog Devices ADG2404 4:1 multiplexer
+
+maintainers:
+  - Antoniu Miclaus <antoniu.miclaus@analog.com>
+
+description: |
+  Bindings for Analog Devices ADG2404 4:1 single-ended analog multiplexer
+
+  The multiplexer state corresponds to the selected input channel:
+  * 0: Channel S1 selected
+  * 1: Channel S2 selected
+  * 2: Channel S3 selected
+  * 3: Channel S4 selected
+
+allOf:
+  - $ref: mux-controller.yaml#
+
+properties:
+  compatible:
+    const: adi,adg2404
+
+  addr-gpios:
+    description: |
+      GPIO pins connected to the address inputs, with index 0 being A0 and
+      index 1 being A1. The address pins are set simultaneously to avoid
+      glitches during channel transitions.
+    minItems: 2
+    maxItems: 2
+
+  en-gpios:
+    description: GPIO connected to the EN (enable) pin
+    maxItems: 1
+
+  '#mux-control-cells':
+    const: 0
+
+required:
+  - compatible
+  - addr-gpios
+  - en-gpios
+  - '#mux-control-cells'
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    mux-controller {
+        compatible = "adi,adg2404";
+        #mux-control-cells = <0>;
+
+        addr-gpios = <&gpio 1 GPIO_ACTIVE_HIGH>,
+                     <&gpio 2 GPIO_ACTIVE_HIGH>;
+        en-gpios = <&gpio 3 GPIO_ACTIVE_HIGH>;
+
+        idle-state = <0>; /* Select channel S1 when idle */
+    };
+
+...
-- 
2.43.0


