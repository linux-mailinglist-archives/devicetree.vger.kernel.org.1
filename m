Return-Path: <devicetree+bounces-127221-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 979B09E4E86
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 08:34:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 46DBB168DE5
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 07:33:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F1331B2194;
	Thu,  5 Dec 2024 07:33:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zzzAYX+M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83DAF1B6CFB
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 07:33:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733383998; cv=none; b=Xc1LhE/NkmfIqPd0RPxPc9qLVkVpic3zgtggvBK8Iz2rcTID+BKFBmv2vmqXcfv+1sD25MtHNHPOsLjPnP4zRU/AggFN5qEsmD0knDB7CgdSYPgwnWF+CP8OSNL8K3F2VADtXbAUDj54uPkWk3UrYmCgwGkUJGRbka38urK/5ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733383998; c=relaxed/simple;
	bh=4L1d1fZ/CUtuGNTGhkvnq4cl0ag43qy7j+Nalp/6Vps=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FHx8A3f1SGhkZg7UuKfBExt2kgu22XmabglCB0VlEsTmyFrgxUvzOI9gB+c0I0LkMzcVnenOgxc+uDVSUd+3wevux4modr9Z/msWYUldtO+mU/IKRgnomkmOcRmXDua1BsdcD1d3aNMGIQiH0alAjJ6Q/zLeg3pRDlzb4iJmJLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zzzAYX+M; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5d12709e1c1so578906a12.3
        for <devicetree@vger.kernel.org>; Wed, 04 Dec 2024 23:33:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733383994; x=1733988794; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VPcp32i194zjkohuP3ghdoazYclk/zwkpzXjsI6FYvY=;
        b=zzzAYX+M1JXfgq82egqDzRNPTVzp+DJUbvGhE55CUnCey4JjdAe2U0jLE7W+9b4a83
         yQJE3hveCc2utd3uUBX5BteJyxcuAaA6XWVfYaJwY1n/y7xQOsC6Ci8bnNrWzEDKQzfC
         YObqLOtb5Eze2LWfJyM3H9V5j3WfIxkCI0Fyz3PlE6299JUCgTfIYUFib4kVLHHBNtMC
         uJeqjeJYLLXPueeBoZMINhTNgOIsAfmLKOzIG8ozcyXHjM2lI+8aM3vu5h/8lLh2PNGv
         gVVxrs2CPo6/rOZrmPfEqWjyJdDZmgGHAl0d8yV0ezuyTA6SjT15sH12bLMnMRWv3eJ3
         lKUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733383994; x=1733988794;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VPcp32i194zjkohuP3ghdoazYclk/zwkpzXjsI6FYvY=;
        b=NqpFxr7eXht8O/AtBCpqtJhk5CHCGrfHDHQ27r+lK6/DBuH6XWLyl7w9KyUTmmQMFl
         epoUeldGjcJg/Ar39gDjRGoeWY4HveHuGXuNEtu6NxMMwCwI9VFXoJ43x7VwUmgA33OZ
         LAKGzNiqkVwzpMIc9/AVR9ml8e74GGsBsm2wXxN1MAYQ1hQ1mQ088JM7htZHSRnPHYY8
         MD66aGEgpHd8K8X/RNaTAKxVU828JZ9QUWOBXS/ZIzXUmSDG23PgT62tO1YU8sTBYyOP
         4zkjCmgrZOKI4SRIDO9bHZOAyGbOZnnDaK/v/IdcTA2V8uCZKDEFKf9z9rX1/wJm46m1
         zhGQ==
X-Forwarded-Encrypted: i=1; AJvYcCXJhtDChtPWMtnspGHdc3f/KeLT0Ths9yOc3z7zHct7S6kR9dv6R9/S8erVvYcia82xttoW7HWAbFw1@vger.kernel.org
X-Gm-Message-State: AOJu0YxUQtuSsAma0ijzsrkPoX1xdvlkVWPVxBbbH7Gb73W33vbnwAvI
	Mme76rfSpo1wk/5Sn1ay5MKW8jcWDWmHChfhJ3WbpdMYO009Bl7D87MAKFeT2Os=
X-Gm-Gg: ASbGncvluAcgvrM6D9WaxIKsc0Ns6+7w00Gj8FV3pl+XJ3zIMq7DxSSARNbDGKjl1WZ
	zx2wIw3laaJEawpKasbV3xdVsm2AfdFr9JAMKIc3WnWwtlDUqDokzwwIMdwIJ5jet/kqTKCwUI3
	4d8Cr94XwI6QVt6noocZWE8HnrcfdwI29PGGpFWJk82t+e9n5/sI8LdCG7oxX+wObXWszwSQVQM
	1Jzm43pvn67taPfylqpnGNspDe7ldumSYhxCMBwETwzlbL54aFaJ3vNun9pha9Glsz7saZWap5J
	fBsHFB06TD60o6pzeC0j7klEctaUSjWG4w==
X-Google-Smtp-Source: AGHT+IG2cRFoErHvd+1EuK9aLmhx/7F0pkt3orG+NahV6/yW750scFnzkpmch+QEqJyukIDF69QaRw==
X-Received: by 2002:a17:906:328d:b0:aa5:30c0:384b with SMTP id a640c23a62f3a-aa5f7d4d1f6mr732358166b.24.1733383993763;
        Wed, 04 Dec 2024 23:33:13 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6260888casm53371766b.133.2024.12.04.23.33.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 23:33:13 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 05 Dec 2024 07:33:12 +0000
Subject: [PATCH v3 1/8] dt-bindings: phy: samsung,usb3-drd-phy: add blank
 lines between DT properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20241205-gs101-phy-lanes-orientation-phy-v3-1-32f721bed219@linaro.org>
References: <20241205-gs101-phy-lanes-orientation-phy-v3-0-32f721bed219@linaro.org>
In-Reply-To: <20241205-gs101-phy-lanes-orientation-phy-v3-0-32f721bed219@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Sam Protsenko <semen.protsenko@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, 
 kernel-team@android.com, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0

In [1], Rob pointed out that we should really be separating properties
with blank lines in between, which is universal style. Only where
properties are booleans, empty lines are not required.

Do so.

Link: https://lore.kernel.org/all/20240711212359.GA3023490-robh@kernel.org/ [1]
Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>

---
v3:
* update subject line (Rob)
* collect tags

v2:
* collect tags
---
 .../devicetree/bindings/phy/samsung,usb3-drd-phy.yaml     | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
index 16321cdd4919..1f8b35917b11 100644
--- a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
@@ -83,14 +83,19 @@ properties:
 
   pll-supply:
     description: Power supply for the USB PLL.
+
   dvdd-usb20-supply:
     description: DVDD power supply for the USB 2.0 phy.
+
   vddh-usb20-supply:
     description: VDDh power supply for the USB 2.0 phy.
+
   vdd33-usb20-supply:
     description: 3.3V power supply for the USB 2.0 phy.
+
   vdda-usbdp-supply:
     description: VDDa power supply for the USB DP phy.
+
   vddh-usbdp-supply:
     description: VDDh power supply for the USB DP phy.
 
@@ -117,6 +122,7 @@ allOf:
             - description: Gate of control interface AXI clock
             - description: Gate of control interface APB clock
             - description: Gate of SCL APB clock
+
         clock-names:
           items:
             - const: phy
@@ -124,10 +130,13 @@ allOf:
             - const: ctrl_aclk
             - const: ctrl_pclk
             - const: scl_pclk
+
         reg:
           minItems: 3
+
         reg-names:
           minItems: 3
+
       required:
         - reg-names
         - pll-supply
@@ -149,6 +158,7 @@ allOf:
         clocks:
           minItems: 5
           maxItems: 5
+
         clock-names:
           items:
             - const: phy
@@ -156,8 +166,10 @@ allOf:
             - const: phy_utmi
             - const: phy_pipe
             - const: itp
+
         reg:
           maxItems: 1
+
         reg-names:
           maxItems: 1
 
@@ -174,12 +186,15 @@ allOf:
         clocks:
           minItems: 2
           maxItems: 2
+
         clock-names:
           items:
             - const: phy
             - const: ref
+
         reg:
           maxItems: 1
+
         reg-names:
           maxItems: 1
 

-- 
2.47.0.338.g60cca15819-goog


