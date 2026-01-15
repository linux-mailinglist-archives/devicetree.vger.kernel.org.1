Return-Path: <devicetree+bounces-255585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB84D24936
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 13:41:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7653B307630F
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 12:34:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46B05399A53;
	Thu, 15 Jan 2026 12:34:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b="0PL0w47F"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-00128a01.pphosted.com (mx0b-00128a01.pphosted.com [148.163.139.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3890E397AA0;
	Thu, 15 Jan 2026 12:34:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.139.77
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768480474; cv=none; b=Ad6iSrM06pMflEcH6ZUevUC7vnOMlhMNiIatmR/8cFKEcaZtD38N4lTb42iDuATxIqt83XhJrnS2uoOxmQJtEukDk/TAalOlImE3tsyOCKfELN4HRNHLx7ZLRzk3qSOsU0pcuWvRQofxIz4kbakMjWEGzIgGJeHu9g8ZVR++V08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768480474; c=relaxed/simple;
	bh=42YW3qdDlBG0/OIlter2QCZV13OhY5S7ogWrR89SVDU=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=U9OfOVbfxxrCOuY727Kz9fhnR7TkepC/M/zQMexk3/rCwQgSGs2iALSNxJNh3H9Kt15etX6Z1A83TSpZw3MMDZLl1PRjv5CTwQfCXyPOWahY8nUXNaHqIuKsYj738x1wsnQ0dgBVj8YqaaMzKRLSnzec3znRKqH82UJOif8YVrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com; spf=pass smtp.mailfrom=analog.com; dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b=0PL0w47F; arc=none smtp.client-ip=148.163.139.77
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=analog.com
Received: from pps.filterd (m0167091.ppops.net [127.0.0.1])
	by mx0b-00128a01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60FARKwj4076099;
	Thu, 15 Jan 2026 07:34:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=analog.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=DKIM; bh=xF/FF
	aH0y6ePp2nimSPem3I4cH0i27tY2yvpLXKexZ4=; b=0PL0w47FI0JFHSd0xP1nm
	Z8QLyLlkJ7rRHDdXPn6sUgGygNyFrmyLZvU1fvCGmWx/egqLle+gOdb8ektAu7sk
	WRvsw9BAYs5kZ2Q5lV6wDEiEq6n4Fl/27mI4czqYBZawcPksHl8nvh7BrIz5K9u3
	V18gHr+Hi6JOSSUM7fa+yHjYV7TaBxDgAkH8XxWBggYJsWj7ffEMmfRXUD0w1ZdS
	Ty9GFuoslzjfSL4uBwZDz7I/3ep7ewOWChmjUk36BrymnNNWe0JHKJX214RLDQD/
	ffJxL1tGyxSwY1WeLLI5PwHwyAxxLbfRDrbU3ZS2l1wxnm3q4tXFbzcUT466BWlN
	g==
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0b-00128a01.pphosted.com (PPS) with ESMTPS id 4bptvkhhgd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 15 Jan 2026 07:34:22 -0500 (EST)
Received: from ASHBMBX9.ad.analog.com (ASHBMBX9.ad.analog.com [10.64.17.10])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 60FCYKdN041546
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 15 Jan 2026 07:34:20 -0500
Received: from ASHBCASHYB5.ad.analog.com (10.64.17.133) by
 ASHBMBX9.ad.analog.com (10.64.17.10) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.37; Thu, 15 Jan 2026 07:34:20 -0500
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by
 ASHBCASHYB5.ad.analog.com (10.64.17.133) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.37; Thu, 15 Jan 2026 07:34:20 -0500
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.1748.37 via Frontend
 Transport; Thu, 15 Jan 2026 07:34:20 -0500
Received: from HYB-b1tGeUj4GP1.ad.analog.com (HYB-b1tGeUj4GP1.ad.analog.com [10.48.65.177])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 60FCVsdF030437;
	Thu, 15 Jan 2026 07:32:06 -0500
From: Antoniu Miclaus <antoniu.miclaus@analog.com>
To: Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>,
        "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "Antoniu
 Miclaus" <antoniu.miclaus@analog.com>,
        Srinivas Kandagatla
	<srini@kernel.org>,
        David Lechner <dlechner@baylibre.com>,
        Bartosz
 Golaszewski <bartosz.golaszewski@linaro.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v3 1/4] dt-bindings: mux: gpio-mux: add enable-gpios support
Date: Thu, 15 Jan 2026 14:18:19 +0200
Message-ID: <20260115121943.23715-2-antoniu.miclaus@analog.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDA5MiBTYWx0ZWRfX+ka9M+Eksp+R
 AaxCqVE+EgdbMvsV3f2JPlcEFQumohuZ4MFKc6uu9f0CFQhuExBMqWkJAvFVn+j0aX8GjvjL2l3
 GA3DUOh/8R617EqhGqlpVSEJjXEY7nBNuTUWosrPvo3rjQppwHMzFspoN17gWXMC2Otj/1akMPe
 D8vyYl8RmCgkqlDkuQaJrv1sbcV1NPjOKUXxWrf5evLKRvWwYA5QN9XpEJyZravC0NAszE2BehP
 DniOow0hjKQrZinuIvns9p0hGC7V8fLN/kXW81aEKAC7StB96Ol/IgGOD88LqJ9enoSN4tf9VBQ
 g9+WwIafJBI91oHY0aWzk/coB0ak/E0WHW48dxzjucb1cLYRfQyl8rlDF+DJmcmgwd9RUB4NOer
 11om61zoc5YLB6rlys6eZdwqWLl3eWp6pn1kgYIe/GRnhZnSK6oZD0i6AzVw1EBYIxuHdmj2V46
 +uC/BhUep0/XcebIFfg==
X-Proofpoint-ORIG-GUID: seRsVSqZlw_3eP4zi5A8No4mqFkrnpKP
X-Authority-Analysis: v=2.4 cv=PdjyRyhd c=1 sm=1 tr=0 ts=6968dece cx=c_pps
 a=3WNzaoukacrqR9RwcOSAdA==:117 a=3WNzaoukacrqR9RwcOSAdA==:17
 a=vUbySO9Y5rIA:10 a=VkNPw1HP01LnGYTKEx00:22 a=gAnH3GRIAAAA:8
 a=UpupB87I3hMshzmTAxEA:9
X-Proofpoint-GUID: seRsVSqZlw_3eP4zi5A8No4mqFkrnpKP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_03,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1011 phishscore=0 suspectscore=0 priorityscore=1501
 adultscore=0 malwarescore=0 bulkscore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601150092

Add support for an optional enable GPIO that allows the multiplexer
to be disabled.

Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
---
changes in v3:
 * new patch - extend gpio-mux instead of standalone driver approach
---
 Documentation/devicetree/bindings/mux/gpio-mux.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/mux/gpio-mux.yaml b/Documentation/devicetree/bindings/mux/gpio-mux.yaml
index ef7e33ec85d4..199792d42323 100644
--- a/Documentation/devicetree/bindings/mux/gpio-mux.yaml
+++ b/Documentation/devicetree/bindings/mux/gpio-mux.yaml
@@ -25,6 +25,13 @@ properties:
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
-- 
2.43.0


