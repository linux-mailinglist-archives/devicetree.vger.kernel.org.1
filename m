Return-Path: <devicetree+bounces-33352-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CAF083307C
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 22:53:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7EED71C20A74
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 21:53:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0C9A58227;
	Fri, 19 Jan 2024 21:53:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="S+Fq1RkX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 691BC58132
	for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 21:53:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705701188; cv=none; b=lwUAgtN6vwAmYfch0p3hRi35OHFlfbCDC/lsp2ut1qucgf+NRIz39PM5h5rIIp5TVgdyDgknl1Q8h8BEtxtB6mHiKLEdvr+TguYKAonlMtEHS7OT5mFowrG6WDUblYMfa98HZJ/vNVROxhX2dZbjlqnED0QeeY8m3Oenb2fo/4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705701188; c=relaxed/simple;
	bh=dWNEkY4iVt136RB63LZtGUPiVcPhJJH3UaLTdivTbis=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rEYS7TwbklrzGzDVYZsKLmhSToq7g+RloY07huUFmK8Ylh4ZDRBTYINBnhoLv4XkeBWeEXWddyhamH1AjeNJAv7aUD1lWQvcNDSoLk/cQf/4RdAnZJ2n5tgGb+H5KMih+Fe5vlDHtLq5NmsmYnC//U4pPfTPBnU3VSDdW1q0YB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=S+Fq1RkX; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-1d437a2a4c7so2371695ad.0
        for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 13:53:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1705701187; x=1706305987; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=52nF8gSoCS0KHkQNmOMGAsgA3QYBrBSfGVR4C/0u1l8=;
        b=S+Fq1RkX/R62eCMKUIV1DxIpypfdo2CW4dU335LxWnnHXdvHYZ//5p+fSKRlzkghDz
         3uXMwoevWj9aODnMHehISaOnha4s7odc9qNPWR1aQ8E/XNJVaE74447c5a8AwRRWGOCe
         voMgFlnDQwyaValzwLdLok0Ez4T6zDDGRvaM0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705701187; x=1706305987;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=52nF8gSoCS0KHkQNmOMGAsgA3QYBrBSfGVR4C/0u1l8=;
        b=AVaPiBhq4HCZ87c4fe+vD7FgZvbs/+S55cisEOgHFJkpagevRl81gnwZ+URkCp1yR/
         86bGzUH59xI5buEk5myflhkc2F5nTycKK22Ww1SulkqEShritJvYULiclaIA6nutTZyI
         M7DD+JYdoaB7wYHcz3QfcQAYxsLipNWkE6IE2G5HXC5CAozBhvo5Qa59MWYCK1rrUg8r
         7X7q/EtlsO1rRHWvBDLeHustsk43tvb2noZAx5mXEHNTQeS2601/fIr8DCWaLHiYWw3p
         hmVWNWmU0fZtUvfdKLkSTe634FRp6AE49K/3JoU4Nt1xqMwOJ3WPxIsTvafxYJrkVlvR
         Wt7A==
X-Gm-Message-State: AOJu0YyFIXz+s+y06B3Qhgori6VMlETRpDHGP9H5dB1TwvjRS6wsYMpt
	6TF68E4D4Xe2bGKuBFuk+zGVtOL4JqGWTFwwvJvHxrfL8oyQy3uOnkU43sjyfw==
X-Google-Smtp-Source: AGHT+IH5O1E+gk6Y/oXTYpB/Fc2FG0hNJT5sfeuxZewVV1P4BFfUXEUiI3byxpo+O9QfXbi5TLU/tA==
X-Received: by 2002:a17:902:ed44:b0:1d7:4e2:293 with SMTP id y4-20020a170902ed4400b001d704e20293mr1100074plb.0.1705701186761;
        Fri, 19 Jan 2024 13:53:06 -0800 (PST)
Received: from lbrmn-mmayer.ric.broadcom.net ([192.19.161.248])
        by smtp.gmail.com with ESMTPSA id g7-20020a170902f74700b001cfca7b8ee7sm3498494plw.99.2024.01.19.13.53.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jan 2024 13:53:06 -0800 (PST)
Received: by lbrmn-mmayer.ric.broadcom.net (Postfix, from userid 1000)
	id 9A751896; Fri, 19 Jan 2024 13:53:05 -0800 (PST)
From: Markus Mayer <mmayer@broadcom.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Markus Mayer <mmayer@broadcom.com>,
	Linux ARM Kernel List <linux-arm-kernel@lists.infradead.org>,
	Device Tree Mailing List <devicetree@vger.kernel.org>
Subject: [PATCH v2 3/5] dt-bindings: memory: additional compatible strings for Broadcom DPFE
Date: Fri, 19 Jan 2024 13:52:26 -0800
Message-ID: <20240119215231.758844-4-mmayer@broadcom.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240119215231.758844-1-mmayer@broadcom.com>
References: <20240119215231.758844-1-mmayer@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add versioned compatible strings for Broadcom DPFE. These take the form
brcm,dpfe-cpu-v<N> where <N> is a number from 1 to 4.

The chip-specific strings have been kept for compatibility purposes
(hardware is in the field). For new chips, the properly versioned
compatible string should be used.

Signed-off-by: Markus Mayer <mmayer@broadcom.com>
---
 .../memory-controllers/brcm,dpfe-cpu.yaml     | 21 ++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml b/Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml
index 3f00bc2fd3ec..42c8160d95d1 100644
--- a/Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml
@@ -10,9 +10,28 @@ maintainers:
   - Krzysztof Kozlowski <krzk@kernel.org>
   - Markus Mayer <mmayer@broadcom.com>
 
+description: |
+
+  The DCPU (DDR PHY Front End CPU) interfaces directly with the DDR PHY
+  chip on Broadcom STB SoCs. An API exists for other agents to retrieve
+  or set certain DDR PHY chip parameters by JEDEC.
+
+  Different, incompatible versions of this API have been created over
+  time. The API has changed for the some chips as development progressed
+  and features were added or changed.
+
+  We rely on the boot firmware (which already knows the API version
+  required) to populate Device Tree with the corresponding compatible
+  string.
+
 properties:
   compatible:
     items:
+      - enum:
+          - brcm,dpfe-cpu-v1
+          - brcm,dpfe-cpu-v2
+          - brcm,dpfe-cpu-v3
+          - brcm,dpfe-cpu-v4
       - enum:
           - brcm,bcm7271-dpfe-cpu
           - brcm,bcm7268-dpfe-cpu
@@ -41,7 +60,7 @@ additionalProperties: false
 examples:
   - |
     dpfe-cpu@f1132000 {
-        compatible = "brcm,bcm7271-dpfe-cpu";
+        compatible = "brcm,dpfe-cpu-v1", "brcm,bcm7271-dpfe-cpu";
         reg = <0xf1132000 0x180>,
               <0xf1134000 0x1000>,
               <0xf1138000 0x4000>;
-- 
2.43.0


