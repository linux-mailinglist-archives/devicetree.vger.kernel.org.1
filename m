Return-Path: <devicetree+bounces-205816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7353FB2A5B9
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 15:37:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D7C497A5679
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 13:30:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5632232275F;
	Mon, 18 Aug 2025 13:25:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ynqefdyw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 974FA32A3D1
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 13:25:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755523543; cv=none; b=Suh7V+FXXTxKzomu3vwUFLncFwViGtthVTLpr2nUa55UCV3PDMQ0QXo6WMkdbV4AfSfgDD25CcmVN9cmnmMFCQXq62SJeFY6qBp12NivvkU4B08TYrgtwYEzvbcqmDBJtOrzIe59eM0TYi2YVeNEqqkalY1NsU0s41vW50mKMjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755523543; c=relaxed/simple;
	bh=6JR1LVebOXxxeaQ4S5lLeeRJ9S1bg4bX5A94bCi7/fk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Tylqsk8qfN7BP2VMFRMjXlTXr/qy7Cta1GGOXl3bCVzjAe5p5aoBUIZxqApHsBKrmJIX17sxDiDPNBn4XUDhoPEyN9DvsOA0L61hOiAJ+O7Ej9EGPkLHPAuMIZA2hV/FkG0J2/RAf2fv5EiBLOZ5aEeyWqS0mgoNlt2fQgXoMWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ynqefdyw; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-6188b6f5f9aso684479a12.2
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 06:25:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755523540; x=1756128340; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Dskx83gqYw6HIwekfhSxt+SB5Uxf0f9bmjL+pr3dbfw=;
        b=YnqefdywV4QjPUGgHqu8gLdCxR2IW7iWOyYl6uvEqJUNfxHqrjw2c5RCBJFg3Sq62B
         Yw3U10127wFEY4luRXiMbuw0k7amdIbTfgsGLQOb575qxYKNi97jcJIMurnKBbVDLvvw
         2ctUfalCG/NX/u7Qb6+0cjitDoHSUddLfTPATxIUxlDOVyD/dqzS6CDkvKRouQhw0WMF
         bAOb6P5Ci2gLbFA5YiaDOk7Z6d1ID2ny9/vUmhMuVgMdTzeMTwNOGHvIYfy5htcZfL+e
         nAYdEvAuHBxgtsdvV5Ap1lMFUeDqHF1mxOB3WUfnI6EL3+wMDf8FG6i2CVo40jL2wx0f
         9LHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755523540; x=1756128340;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Dskx83gqYw6HIwekfhSxt+SB5Uxf0f9bmjL+pr3dbfw=;
        b=OJYPxXMzHEnXijCJA4OqNZIhy84scY0MqXQt9QP0UezSYAMsP2mf67lLSowI+x2GlT
         J4MfMdIGRHY8X9pczEmJuIKocj6eBfSYUcAgmRnZYV52RlMSGHv9Mzxn4Px/ca5UQvJ1
         BJl1WKZ+UJEAEzP8O0GRf/VnIO6w17fB6FmObYlH4sl/RcD0JRxpmG14ANh96wMLvIda
         21E0MegX4VZASIwc0yBQXyjclSsJy9pg6e2Fay0488CfVA1eTRiEkdFLWmQswRh3FmqK
         5A2HFXXQ70d5zoxKy2rNUgQMGI+N/YdZrjCzUwCosb5xvTllb4jAWWXcUQtj7+tnklZe
         kOlA==
X-Forwarded-Encrypted: i=1; AJvYcCWPIpHt7IKwP4Mc91dWKpKJTSrkT986twUBsBJm+g3iJJFyQpYluC1oXv5w6l95YfRYgS/acCwZLKbe@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/K19l123TOfKLnieJnPmK31s5zU6k/jHP0dFT36pCsQ4f2zb0
	1g3ULEn6zAuBT6XZTQKsCVAwdHDFQEKYazS0YmAMkq8eaT3A7H9plwAAApbFFSLcCcc=
X-Gm-Gg: ASbGncutAEFRnjcZ8GzUG2RF0tLwIPYMLlFVjzVsdTgZpzC7Aj3/YOWSc0pXp5+Uwno
	R5GGAXFZ4IdSy6UyqwZe+KhraiHLFXuMt+jkk/qD2d/+q5JonQ9SsAPIugw9m5nByyZg/6dad91
	bXbhwBxQuIqLM130X2+/O+eztYTjOJyxP3j1smRl7F0VcN7LmBTPBDSA9FbnFpD0l3fVYSN13zC
	GeN/Tz++DxsXTOt4H41aMBn1xFsQGmczMtt09sV8gb7tNCFYV0vIqlPUhxNmtFtpYgSAMaugxaD
	uzKRlAGYLuRusXqDXC5Y1mJ8jgPuIsxmPHpVkMrJSvZcCdJrS+1LFYNJmjevKOe1NxoeB4A9cNK
	Ib/yfyhkmhK3pn1FEm6uFm93JMgUoyPjVBw==
X-Google-Smtp-Source: AGHT+IFy/fb4Ne/fOHxECTlS3L5e+Z9Jpc/7CCSqrdcg80XkmEz+0Vx+EycKaRw+SqrdTWd/oZIJag==
X-Received: by 2002:a17:907:1c90:b0:af9:3d0a:f370 with SMTP id a640c23a62f3a-afcdc2e3a97mr523623866b.8.1755523539797;
        Mon, 18 Aug 2025 06:25:39 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afcdce53c5dsm808250266b.3.2025.08.18.06.25.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Aug 2025 06:25:39 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] docs: dt: writing-bindings: Document node name ABI and simple-mfd
Date: Mon, 18 Aug 2025 15:25:35 +0200
Message-ID: <20250818132534.120217-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1973; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=6JR1LVebOXxxeaQ4S5lLeeRJ9S1bg4bX5A94bCi7/fk=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBooynOYCmpa38692JuocFCFpnz0qcsCklt/To7A
 ojuw57eBaWJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKMpzgAKCRDBN2bmhouD
 18PXD/97gvZjl9oqs83IIzo6cqmfdKWrty9vsxDWR/WMuor/QGBWnAhqyjJnemYSJ1XaJ+qIYba
 aVFs2ky4MgRzlvhvHEZCjHr58DKVtctJlCjE+jKUtN7cW1SgPjz9SD2uneecyBEKBlFqGqgxyRS
 rVsytQCCIMpe3xFkSaiEDiU79PTVL2AgN2762gaq98yfwKExElPsxe1GW88Gbza4mbfgr6aIsDs
 R1I+tPStFeiYuQMV6+lllHve8MnnvXTM8rLRvA2kYKPmx2mz68LhNIuVNJyS4+gDFruRfJzdArJ
 HRuohjN35tMbSQccI/cO7CgytO2BzqGkF+jBSrmuNW4bOag95TrZmtdiSbxCWWkSAulNYhHhOVO
 jnfBW/idogkI8j9GRNfzqREuo/HKjrZeiOj2cCEZNixcAAQsltogvaQuCXdY5vMJdTn/mf7v0B9
 LuAqyxkN2ZY7e0oqyxazXahZlfPVOa8oEOz6TUp/LmKTJOxamzeYiXErr8cqgIX6oENmQnPJN4S
 YijLSKMxq2Vk7Z5jXYS0REFLznLVtjVWSx4eW+y41h4zkTjR4Tk5Wx5LDGwW6+y8QsxjFWW621s
 u0V3bVVlpifAlpWmKLgBDnbiFKk0wSgKlDIZx5rmHqV1aoR+p7P7+bKH2jkJwKd2VZXxDyDDSAV TnY7mSW4g37C9PA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

Document established Devicetree bindings maintainers review practice:

1. Device node names should not be treated as an ABI, unless for
   children of a device when documented.
   There were many patches posted using of_find_node_by_name() or
   of_node_name_eq() for accessing siblings or completely different
   nodes.  These cases were introducing undocumented ABI, so they are
   discouraged.

2. 'simple-mfd' means children do not depend on parent device resources.
   'simple-bus' is so simple, that even 'reg' properties are not
   applicable.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/writing-bindings.rst | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/writing-bindings.rst b/Documentation/devicetree/bindings/writing-bindings.rst
index f8e0293a7c06..667816dd7d50 100644
--- a/Documentation/devicetree/bindings/writing-bindings.rst
+++ b/Documentation/devicetree/bindings/writing-bindings.rst
@@ -31,10 +31,19 @@ Overall design
   devices only need child nodes when the child nodes have their own DT
   resources. A single node can be multiple providers (e.g. clocks and resets).
 
+- DON'T treat device node names as a stable ABI, but instead use phandles or
+  compatibles to find sibling devices. Exception: sub-nodes of given device
+  could be treated as ABI, if explicitly documented in the bindings.
+
 - DON'T use 'syscon' alone without a specific compatible string. A 'syscon'
   hardware block should have a compatible string unique enough to infer the
   register layout of the entire block (at a minimum).
 
+- DON'T use 'simple-mfd' compatible for non-trivial devices, where children
+  depend on some resources from the parent. Similarly, 'simple-bus' should not
+  be used for complex buses and even 'regs' property means device is not
+  a simple bus.
+
 
 Properties
 ==========
-- 
2.48.1


