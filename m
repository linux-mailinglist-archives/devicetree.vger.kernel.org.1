Return-Path: <devicetree+bounces-115402-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 304689AF64D
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 02:42:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EAB15282FD9
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 00:42:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 244F72FB6;
	Fri, 25 Oct 2024 00:42:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Qds0cNiG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E0C45695
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 00:42:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729816931; cv=none; b=egBN6gDuY4ZM9gmml0qFnNahLzhDIp7Q3ZtV59PuCqVqLCvSZvMnKUmRwspMMQEgb5eiVMhWjHKQVI5mSZHIBBzg3m4twHcucJf/Zx0uGltjQeaaOlMwKTNtclpInPeoYFHuAV5RKwUnNgfDS68WzOU755wZ1rg9uDl0MQN02FI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729816931; c=relaxed/simple;
	bh=kpvJRcPqWC+dVghUUdeaMiwqWPQQEmBm2CSq9EI3mwA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=KkPLRRbqB3H61Tbtbv37/LeiEnYCF/7PzCB2dQCLWjdk22Hi72Pu+/D5Hx/Tegbxe81/gOJqZcZ/zaavAa7mwPdMZFRfX640E716YptWG2F2sWAZqhvw75ZPW6BX6VXCl2Py73ty7aUj3nAUKF8PekNz27Qw0RAvQ0iZBZK0q/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Qds0cNiG; arc=none smtp.client-ip=209.85.167.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f182.google.com with SMTP id 5614622812f47-3e5fee32e76so858736b6e.1
        for <devicetree@vger.kernel.org>; Thu, 24 Oct 2024 17:42:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729816928; x=1730421728; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/JH4ZQU5AFvRH7Qn9sg9MSQ3ssLfCpHuJRXQbGQoDWQ=;
        b=Qds0cNiG8lW6TjHPmTsVQ0JclKHY+H51I+oS+Jsrfnbxzycfo9oBhwqIDPGHoU15Nz
         78uFUr2aGIwVl1Z9GLOpA3MdjgZ1wQnCjgbtNVmS/MjT+cEcu/OUzwsXmKSml8SZjuUh
         x4q0SeHJdGPKl22Ehd7Qg5qa3hwM6fAqsgnz1MUnNKzeJQwcKwaH7Dma0ZsziVTzEhoD
         FZNP0n8FbAR7rtMaTOiyr32u01TIwFDMOnYwgOBPN4ab6sHxaOQlGyonyllBG/7rK7hG
         xYKfRcHZLiDoRM41Q8GJDWqCv9qeazR4KAKiCW6rKItZL/PDQ0yoFVyxoskwzGRVo5e7
         gXPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729816928; x=1730421728;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/JH4ZQU5AFvRH7Qn9sg9MSQ3ssLfCpHuJRXQbGQoDWQ=;
        b=NvDJhjlpwcOOueHDVjhVGIjW6+6RElvFRzQ22JQD6uTY6JLRurlwq4uLkLyJjh7HEp
         yKMmEMvAm+8ddjU1XGsQ4HKJtE00/GBAKdohJczx4lmM5nLz8GcIgn3DxVOJ27d0HtL+
         3leMCz0wsBHK6K8/Yqw+F8EsB+je7J50SIfc5kAGc7x1fDDYZpJN8wGx2oAxmM36jPGU
         gFmNVzVzme/Y4gopInxYNokiskbWUV6/sWs3dn/XKMh+6eUSyee0q0PhAXGUSKbxiEPe
         OMpRQSNlWLK/1uk1SZPkotuc196mqx+onekNTifMBn5y9Sx5wjwoJW1SY+a1uaSMy+qg
         mrxA==
X-Forwarded-Encrypted: i=1; AJvYcCVj2ltgZz2u0Uf4Qa58MFGkKRlciA8RRW3mMfpsIVhITePKy1neRDNUlMEG9rxLGC5RVOYsKZIr7FEA@vger.kernel.org
X-Gm-Message-State: AOJu0Yyam8AAujCRT1i9mB09ecmxohkn7eAjDeyYbQI4BOOoWBbE9tAm
	VrXvuld87IaBUbmLyoL+0R7bkoFfGiXh/RPwmjLyppnQh727jNuXwGP7fg==
X-Google-Smtp-Source: AGHT+IHhO0Oe/ES3dfFw2XAIiGrW09kdGvbnuxejTHYBTvDD9QQCbHbNJqfVJPaqKCqsiNhoGM7kEQ==
X-Received: by 2002:a05:6808:1490:b0:3e6:21a:9a62 with SMTP id 5614622812f47-3e6245014cemr8084123b6e.11.1729816928153;
        Thu, 24 Oct 2024 17:42:08 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:b160:3edf:6e5d:8d4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7edc8a3d2easm27289a12.85.2024.10.24.17.42.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Oct 2024 17:42:07 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	imx@lists.linux.dev,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH 1/2] dt-bindings: soc: imx: fsl,imx-anatop: Fix the i.MX7 irq number
Date: Thu, 24 Oct 2024 21:41:58 -0300
Message-Id: <20241025004159.1571782-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

Unlike the other i.MX devices, i.MX7 has only two anatop interrupts.

Add logic that contemplates such case to fix the following
dt-schema warning:

anatop@30360000: interrupts: [[0, 49, 4], [0, 51, 4]] is too short

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 .../bindings/soc/imx/fsl,imx-anatop.yaml       | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx-anatop.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx-anatop.yaml
index c4ae4f28422b..ae708a658d52 100644
--- a/Documentation/devicetree/bindings/soc/imx/fsl,imx-anatop.yaml
+++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx-anatop.yaml
@@ -36,6 +36,7 @@ properties:
       - description: Temperature sensor event
       - description: Brown-out event on either of the support regulators
       - description: Brown-out event on either the core, gpu or soc regulators
+    minItems: 2
 
   tempmon:
     type: object
@@ -52,6 +53,23 @@ required:
   - compatible
   - reg
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - fsl,imx7d-anatop
+    then:
+      properties:
+        interrupts:
+          maxItems: 2
+    else:
+      properties:
+        interrupts:
+          minItems: 3
+          maxItems: 3
+
 additionalProperties: false
 
 examples:
-- 
2.34.1


