Return-Path: <devicetree+bounces-256163-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E6FD3344D
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 16:42:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6CB2430E9D74
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 15:38:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92A0C33A9F0;
	Fri, 16 Jan 2026 15:38:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b="UP1nPRIS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com [148.163.135.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D0E333A9DA;
	Fri, 16 Jan 2026 15:38:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.135.77
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768577902; cv=none; b=Od+xudOOIUqhv4tHXkWHgh9l3XIIkDy1OY4ksqJRULifSZHXd3umJ8khisKrgYyrOI5TGWV3AHs2bonvCdTxxtKl826t1RFYMkmDGHeUAFxzXxsY/i7YRcxMolocjHWVr0CSNIkeTuEU8UkiTQiX2ZzQyceyXis0QFBicpMVb98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768577902; c=relaxed/simple;
	bh=hlQoZkGGZorwvOwwQyUtKXjEaqNwL2u5kv/7ArBGpg0=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=QP+EJmsNDjxeHjR5NwAPzQph78OZdNPtDbfVWXomy7l6bqBYUZ/kT2UNlveBkn3XFN9g0yA8J4/FZIsVbXFWHC41QIgzkjC/RPvJb/rgNXl91s43EZ7qcWJ7tHP3aACqajHHSYLWxetU9YR95AoohTrurg+bMFTkx2dWhlLolt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com; spf=pass smtp.mailfrom=analog.com; dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b=UP1nPRIS; arc=none smtp.client-ip=148.163.135.77
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=analog.com
Received: from pps.filterd (m0516787.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60GF9oHt181642;
	Fri, 16 Jan 2026 10:38:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=analog.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=DKIM; bh=RmzIq
	/YavdxwLd+j8jicRp/lSZoqpa2JUm3Nw+TFc00=; b=UP1nPRISSbHOIbJWtuhBp
	L3qWCx0z5anrNLCm+zZ5FVLSDLJ/cPVSCSDnOr//+EvIau1a7IxIR5ncoaN/inQR
	pNYYNBieMkC5SYE60WWMr2PgSZjnf/bWjCbkYoN9A73M1CUDH+80VD54vcBtOU7p
	ud6fz1cvWdyWXsFAuHAXNhiMXeNjvfxxuU39pc2J4o1yo+7E66fzvGHzSf+pJ2Vf
	qHjwFNduBSudRFl45oZR1dz1ztBGsYJicclsgw6X0Yok/dRY+Hq5TkuHkkfpvwFh
	Ge0Uz/znyhY6erg9QwVY9SZqX4zpsMBWc1bsQ+uaRqb4zeq17edvIc8VpWPgDdNQ
	A==
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 4bqhs819tw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 16 Jan 2026 10:38:08 -0500 (EST)
Received: from ASHBMBX8.ad.analog.com (ASHBMBX8.ad.analog.com [10.64.17.5])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 60GFc79u048553
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 16 Jan 2026 10:38:07 -0500
Received: from ASHBMBX8.ad.analog.com (10.64.17.5) by ASHBMBX8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.37; Fri, 16 Jan
 2026 10:38:07 -0500
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server id 15.2.1748.37 via Frontend
 Transport; Fri, 16 Jan 2026 10:38:07 -0500
Received: from HYB-b1tGeUj4GP1.ad.analog.com (HYB-b1tGeUj4GP1.ad.analog.com [10.48.65.177])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 60GFbnx5023155;
	Fri, 16 Jan 2026 10:38:01 -0500
From: Antoniu Miclaus <antoniu.miclaus@analog.com>
To: Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Antoniu
 Miclaus <antoniu.miclaus@analog.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>,
        David Lechner <dlechner@baylibre.com>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: [PATCH v4 1/2] dt-bindings: mux: gpio-mux: add enable-gpios support
Date: Fri, 16 Jan 2026 17:26:07 +0200
Message-ID: <20260116152621.75205-2-antoniu.miclaus@analog.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260116152621.75205-1-antoniu.miclaus@analog.com>
References: <20260116152621.75205-1-antoniu.miclaus@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDExMSBTYWx0ZWRfXyq9GQuLc0wY5
 Yh1VHjGo0fKdMsWQsYm8ENYzHM+LrRcHW2SDEI94xrEvKukdY3ypY6v32uSSRWr/km/6VJD7dF1
 F9y+ulnvHyOtCxPM9e/VOsADfsklhpotRKJ47RdsCdC3w4fft5jtgEhjNbqkK+RRDHk4zU1dwZs
 RdPy7leNWSiQn9o0MgKMmo1n6UnvDCakED5RrmrUzMXH0gcu0UtBlhdvVmWs2WdnTotnuTi50Ey
 qwcr9CB44DRMHf3sGjNCWb1SWX+p6Tw2z/Q/1OFJZVRtRMIzqksR6pldbKFEwYTkriGQDUG4yrs
 YNoEJSN2Ao3Zw3gKNE1tb7Qz28DH6BPuheSY/C0GT4xafaCp2t8zBWJAYkba7snVWNDKIkwBl75
 i+iKA90exx9zTggvCIXyVQkQuNuP5o2ge1JcGFPnUvngYfieCrNG3UAgVRBChBbLvceq/uRAquJ
 R5+EAaAb0kuJHhTl9Pg==
X-Proofpoint-GUID: agYRFhli1oL6LrcrqmPGd3-liJJmj4Xz
X-Authority-Analysis: v=2.4 cv=Y8n1cxeN c=1 sm=1 tr=0 ts=696a5b60 cx=c_pps
 a=3WNzaoukacrqR9RwcOSAdA==:117 a=3WNzaoukacrqR9RwcOSAdA==:17
 a=vUbySO9Y5rIA:10 a=VkNPw1HP01LnGYTKEx00:22 a=gAnH3GRIAAAA:8
 a=Hkm-oAngvxE-1qugaQYA:9
X-Proofpoint-ORIG-GUID: agYRFhli1oL6LrcrqmPGd3-liJJmj4Xz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_06,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 impostorscore=0 phishscore=0 spamscore=0
 suspectscore=0 priorityscore=1501 clxscore=1011 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601160111

Add support for an optional enable GPIO that allows the multiplexer
to be disabled before changing address lines and re-enabled after,
preventing glitches during channel transitions.

This is useful for devices like the Analog Devices ADG2404 (4:1 mux)
that benefit from enable control to ensure clean channel switching.

Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
---
Changes in v4:
 * Add ADG2404 to binding description for discoverability
 * Add dedicated ADG2404 example showing enable-gpios usage
 * Update commit message to reference ADG2404 as use case

---
 .../devicetree/bindings/mux/gpio-mux.yaml     | 25 +++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/Documentation/devicetree/bindings/mux/gpio-mux.yaml b/Documentation/devicetree/bindings/mux/gpio-mux.yaml
index ef7e33ec85d4..2d9f32012127 100644
--- a/Documentation/devicetree/bindings/mux/gpio-mux.yaml
+++ b/Documentation/devicetree/bindings/mux/gpio-mux.yaml
@@ -17,6 +17,9 @@ description: |+
   multiplexer GPIO pins, where the first pin is the least significant
   bit. An active pin is a binary 1, an inactive pin is a binary 0.
 
+  This binding supports GPIO-controlled multiplexers such as the Analog
+  Devices ADG2404 (4:1 mux with enable control).
+
 properties:
   compatible:
     const: gpio-mux
@@ -25,6 +28,13 @@ properties:
     description:
       List of gpios used to control the multiplexer, least significant bit first.
 
+  enable-gpios:
+    description:
+      Optional GPIO to enable the multiplexer. When present, the mux will be
+      disabled before changing address lines and re-enabled after to prevent
+      glitches. Required for MUX_IDLE_DISCONNECT idle-state.
+    maxItems: 1
+
   mux-supply:
     description:
       Regulator to power on the multiplexer.
@@ -100,4 +110,19 @@ examples:
             };
         };
     };
+
+  - |
+    /* Analog Devices ADG2404 4:1 multiplexer with enable control */
+    #include <dt-bindings/gpio/gpio.h>
+
+    mux-controller {
+        compatible = "gpio-mux";
+        #mux-control-cells = <0>;
+
+        mux-gpios = <&gpio 1 GPIO_ACTIVE_HIGH>,
+                    <&gpio 2 GPIO_ACTIVE_HIGH>;
+        enable-gpios = <&gpio 3 GPIO_ACTIVE_HIGH>;
+
+        idle-state = <0>;
+    };
 ...
-- 
2.43.0


