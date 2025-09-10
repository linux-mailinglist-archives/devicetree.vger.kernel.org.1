Return-Path: <devicetree+bounces-215663-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F2A2B524B6
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 01:34:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7F13E7B606D
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 23:32:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 452142FABF8;
	Wed, 10 Sep 2025 23:34:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="B5cVBIwZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD32B2E2DDA
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 23:34:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757547254; cv=none; b=CPn3J5ysaQsifsKC/tAgo209U4/2KwTdDOWMavwYICmccr78G+PYJ3NrpBXeO9C5ramxlB9EZRqAvG3jDKKjGRp9alznxpWoUOMw71SvUHE3mZqOe8PKH6ymLmC51Jmg/3yQjXJW8EfRnJUjBdB8b1SjRKDiZPUxD0VdxLXw6K0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757547254; c=relaxed/simple;
	bh=i099labLySvdDdsbvUbHj5s+OPJb2qtVXH+y5SY+zFQ=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=kUKLXox1zQjMWKikcczBcdBG28Imd2u6E2PqFj9QEgeV9NPHj6ABGvzj3rd5Oh1RZg0myE9pDwQ6/84cdfpH9rEbk8PfC0pncJE38wkDIKXlCRuHxl+rLSQObRwiA2cXU7M+EJnFbvhzLepW90z0rreffaS5UQdm9tRj+gaGsf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=B5cVBIwZ; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-772481b2329so154470b3a.2
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 16:34:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757547251; x=1758152051; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Mg4r6tqzHUH80N6S4z7Ye3MQyAcaZEeUKqyv8uKPNHI=;
        b=B5cVBIwZw0XxOPWlWBAA0NFbPZ+50bD3sa5Ki5hVzWAPcrwkZrIzwiVwpS2NhuinpX
         GtoFAucCN5NUNjNIvYFTLGot1sFSxA7ZV26UXq2vqYrclfGZAy7QHYz4BiIH6LOfLnAc
         u4kBi++mqrCWZXVN6jzGvwc+NWONafOJmmrPWXHEp44gBWDHDBU4DCN/PlKdA4rVSZhJ
         y/Knxfb56PX3hReAWuLN25UNCk85PGF28O8o4NR96jR3u39WRVL2Jz7N+a9/Szpxt7pE
         obwtQH9pL2DIh69oD93rNiwDBvHH5DkuTEaqCRKYQAyXXfizlW883KfQRUJeBKEIUPGU
         RmBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757547251; x=1758152051;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Mg4r6tqzHUH80N6S4z7Ye3MQyAcaZEeUKqyv8uKPNHI=;
        b=kimWtxY/8sG+j+CHFFErmDpM5xhtaotfb5IQp2DOtAdzVKhJA286w9Tz1ViaBg14AK
         To+B6TL3OnocyL4rYMUmHQwGnBVjvo8m95yGxUW0Z1UesVrdTdDIuICWg8+IU2tZ45eC
         RAvVMP5gH4UNWT5zSdSHs+aQXjEA6h3Ch3VWZXNE/RA1OrhyQFNp5ve3h7Ia4r8rtsID
         jXs8DwUnfDv7VwnAORfENuE3VBnRhhGO1w/UgFooopY0E/WlY+7HdwcD+KimG+UyiFkj
         oMCWwWCdFUQ8cPNIJR874wQDqeH6fI6wh1oyXuVArRLvZKgDwk+QEJYlxBIYS7C68r+B
         aBWw==
X-Forwarded-Encrypted: i=1; AJvYcCUKBul6hHztIOBu9KaQrPz+h3BV6HN1zhj/Ce3fNl6FnoyKM81smL+k0uabE42EAox9A98LnuXVhQVR@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9vXXQrmURtKtMKUEOhOz1yB46O00qn2510WBgHt8fhu9TpJ+c
	+o5RbQbDDnTW9W0mE+EeUbgbyUctV3IEbCPPfE+fwJuXb0WO44zQUUkS
X-Gm-Gg: ASbGncukfTGDASzbaQ3JlcwsHQLWkKExlyCpHa+rAuMCs2PAqwdCXlruAwjnC6/IRJ/
	oykmxFdH/rBcaVId8NNMpLVj4yBQdljYZhOWemZeROlRUNnVjXtfoF4nm9XA0Fe5Ye46P/EC90X
	gujKUikIrO904hSgKT46aIiruCIxvc1gKinQUMGhDDMvnyJpt56u1aM+nr2QhMCrdmv89f15rhN
	V5HidVkLMV6DX4LAachDDcG5oXacVeO1zRnRkLfZQxsDxhaMZIOUnGja8qJLzxCuQco6q28055h
	dClXY9NG7W3iWNCGD8Lk30Lx0vl76WcD6d1ESFgmANHChsKvFMCEg/ywLcsGXOvljibI327rf01
	t6umil+GcYiZN3/Sip3lcnPiM6tJKRXSmn1m0a3JeM30RlNw=
X-Google-Smtp-Source: AGHT+IFyFjSxsyaF2RJnC90z3QvBijSexO6xHZxytRiU9jodFdMt2l4JVc9tzY8yfXcH4+xcKOaQMw==
X-Received: by 2002:a05:6a00:7094:b0:776:2e3:a95b with SMTP id d2e1a72fcca58-77602e3ab24mr1427978b3a.1.1757547251235;
        Wed, 10 Sep 2025 16:34:11 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:d19c:8c03:e9d7:2ba6])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-774662d2395sm6299114b3a.88.2025.09.10.16.34.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 16:34:10 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	frank.li@nxp.com,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v2] dt-bindings: soc: imx-iomuxc-gpr: Document the CSI mux
Date: Wed, 10 Sep 2025 20:34:02 -0300
Message-Id: <20250910233402.567245-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

On i.MX6Q/6DL the following subnodes exist to describe the CSI port muxing:

- ipu1_csi0_mux
- ipu1_csi1_mux
- ipu2_csi0_mux
- ipu2_csi1_mux

As they were not documented, dt-schema emits warnings like:

  'ipu1_csi0_mux', 'ipu1_csi1_mux' do not match any of the regexes:
  '^pinctrl-[0-9]+$'

Add a top-level patternProperties entry for these CSI mux subnodes
and restrict it to i.MX6Q.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
Changes since v1:
- Restrict it to i.MX6Q (Frank).

 .../bindings/soc/imx/fsl,imx-iomuxc-gpr.yaml     | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx-iomuxc-gpr.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx-iomuxc-gpr.yaml
index 8451cb4dd87c..719de0489002 100644
--- a/Documentation/devicetree/bindings/soc/imx/fsl,imx-iomuxc-gpr.yaml
+++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx-iomuxc-gpr.yaml
@@ -50,6 +50,22 @@ properties:
     type: object
     $ref: /schemas/mux/reg-mux.yaml
 
+patternProperties:
+  "^ipu[12]_csi[01]_mux$":
+    type: object
+    $ref: /schemas/media/video-mux.yaml
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          not:
+            contains:
+              const: fsl,imx6q-iomuxc-gpr
+    then:
+      patternProperties:
+        '^ipu[12]_csi[01]_mux$': false
+
 additionalProperties: false
 
 required:
-- 
2.34.1


