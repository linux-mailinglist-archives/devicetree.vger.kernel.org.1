Return-Path: <devicetree+bounces-214005-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3105CB47C05
	for <lists+devicetree@lfdr.de>; Sun,  7 Sep 2025 17:26:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1BD747A785F
	for <lists+devicetree@lfdr.de>; Sun,  7 Sep 2025 15:24:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F48B27E05B;
	Sun,  7 Sep 2025 15:26:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PQpqrQoF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AC3C21B19D
	for <devicetree@vger.kernel.org>; Sun,  7 Sep 2025 15:26:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757258764; cv=none; b=pv6hE4R53oiyaJA65PAbMhAYx/tv4xqbT5WPMXl9aTQZj3BdpMbuIKU8OVYAfFxj+enVDn3k/q5RowMYE/Ons2j8H3ACyOYDzfvBgHN8cEjHcPJJqABs6LL0MHVaHv9+Lx7IzoJGIwdbpR1xCDKk4SPvS0gjH/cm476aaUjPJ5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757258764; c=relaxed/simple;
	bh=SJR9ISraSt48bMazgZ/+RZz73Nx9kKuxR7hBom7893E=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=L2HpYSKVpb/WRb2FOQmEGWKN6Rs4Q23HEVny616gDtJkZCwSEOcyRGgUAQTcXCwMP91MSBa8IBa4Btl8ode+pHGpKZbtL6X2xGJBVwfWYk0JKC6EzEsl/mpHKujDcJVDO2Y3bRKOqGwVIk3b758Cn4Y7jZmPmO69nBX8MN3RiVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PQpqrQoF; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-7722bcb989aso2653834b3a.1
        for <devicetree@vger.kernel.org>; Sun, 07 Sep 2025 08:26:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757258761; x=1757863561; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=h0ivnGXi36o/sU7j7MnP1FEPUQCEFmJ8wm0JLvzvpOE=;
        b=PQpqrQoFmUhSnQo6+m78mXDbxa783oPq4fRPHtc46ajxCd8IonIMLGoO1cIRKBnFIJ
         TitmzkMKQIv09Z6oi+rLh7KvKQtrYoBG4s5b4vnjvOerT/iA4FYHUuWeLLZIP+AZ1O9d
         y4JqJBhrbXjSDOgMq8sBFx1I9rXB46nD6J4Biy2FgDmW2Fp4MBOcv7N6XhKTWGLW9CQn
         0ZEPRZSz7l+J7Ouxn0JHrfXdAs0KLVhgvTp2XMmukA1LGRaopG18YhSvaRTx6iZVbRdo
         gkqRZo9fJXP790cxBcxGWZjD069awPLGaKUo6TJuHtbQwSSE71nIsNX1fEmgcl6gZX4P
         OoCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757258761; x=1757863561;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h0ivnGXi36o/sU7j7MnP1FEPUQCEFmJ8wm0JLvzvpOE=;
        b=ENDPBQa3eeKRUuyCMwqidYVYkvSwu7jmCciYPrpBArzCoGoXfWj8vNMxdi6KyP6T7Y
         OsfX49ne0sIFVFk9TCKeY0fjEOn0cWmtZdtS1EOAO7cpr09kx8w5rSSr/U5tHhAajIGL
         IhdhXxV65Nd3RU2QIwRO2ZGk6ylEMu8FNZT3lTqwHJp0mqE5GAfG8ZtMhtdg70Gel8x8
         5hwEsSQHkipG2nYSdQK/9GlngrA8cDwHFmqWxOR7sWNauNdrGQNlbfTh9AGixSZLCOWz
         w2gxG3dJGk5VcGZn6rju5dJb1xJU4YWNvpNFz5jTRn0E3XkMsz53pSwrPR7lsB3Cw89S
         hEWA==
X-Forwarded-Encrypted: i=1; AJvYcCX8KlLFet868l8j/8tSGfNrETR4aztRB4EHMN4J8fNrQXu2ZG5Wd69HAjWvi1IB+4RtItpyqX46rxEM@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4d087o8Th2FrSBfMV+fs+ajWE3gKtdnYeIUJCkzwR7VZqR4+G
	ej9yiovt8SY3oHHqwT1wbmlBsSlYMgU4kMxJEhKktv0Fc8oJk1D2n4iX6cC23A==
X-Gm-Gg: ASbGnct58PmlVEz+Z33YLXhxeq7rHiF97u5WvEk9OJS0Ho+pHmSNL0KlMxQ+vwHPbpl
	ttr7KoRMHFNujKWtQ4Fh6LWJfQZK2V4Ht0J//Fv75/XsnNa8ZDTFz+oOSTVt2nH3S2vWEtbCVVa
	O0SX7IxOH/4vXNyt4FIgIgSpOI/S/uFc7OyouxcVa99l+9ofLDwjPnvqhTa/1zmjQHBbPROsN7s
	IrZKbsCtMRp6eW9zVZOnU7HTSYN0GOH2UG0lIbczaHDZafY+cHjeDwDVblas1Q2lzlqjRqydM7y
	4Dl/ZINc6Af+o3BuRXi6Jl21FVCjqFW8MbOKsYPQ2rmNfK8agkaVVlSo2OtDZl77zmTTqGEt5aJ
	n14o8Kf7tDGb6wKxMtG3Ld328pFYjkVaE/0n1
X-Google-Smtp-Source: AGHT+IEXxVGbjrx+mDIl4n5Pah5SWlO7cPJ/pHhlYgr4VMUcUL2lv2/ujw+TscHhq5Xiq2PcIvgaVw==
X-Received: by 2002:a05:6a00:3c8f:b0:76b:ec81:bcc9 with SMTP id d2e1a72fcca58-7742ddf0f22mr6828838b3a.21.1757258761324;
        Sun, 07 Sep 2025 08:26:01 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:39bb:346f:503a:4669])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7722a090c77sm26811319b3a.0.2025.09.07.08.25.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Sep 2025 08:26:00 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: robh@kernel.org
Cc: krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	Frank.Li@nxp.com,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v2] dt-bindings: arm: cpus: Document pu-supply
Date: Sun,  7 Sep 2025 12:25:13 -0300
Message-Id: <20250907152513.590218-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The i.MX6Q Reference Manual describes the three digital LDO regulators
as follows:

"10.4.1.1.1
Digital LDO Regulators
The integrated PMU includes three digital LDO regulators: LDO_ARM, LDO_PU, and
LDO_SOC. These regulators provide power to the ARM_Core power domain, the
combined VPU, IPU and GPU power domain, and the rest of the SoC logic (except
always-ON SNVS domain)."

imx6dl.dtsi uses the correct names to describe these supplies:

arm-supply = <&reg_arm>;
pu-supply = <&reg_pu>;
soc-supply = <&reg_soc>;

'arm-supply' and 'soc-supply' are already documented, but 'pu-supply' is not.

Document the 'pu-supply' property and set it to deprecated.
    
This fixes the following dt-schema warning:
 
cpu@1 (arm,cortex-a9): Unevaluated properties are not allowed ('pu-supply' was unexpected)

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
Changes since v1:
- Explain that PU is a valid name. (Krzysztof)

 Documentation/devicetree/bindings/arm/cpus.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/cpus.yaml b/Documentation/devicetree/bindings/arm/cpus.yaml
index 4f1906d9fa68..c8a72fd02530 100644
--- a/Documentation/devicetree/bindings/arm/cpus.yaml
+++ b/Documentation/devicetree/bindings/arm/cpus.yaml
@@ -350,6 +350,10 @@ properties:
     deprecated: true
     description: Use 'cpu-supply' instead
 
+  pu-supply:
+    deprecated: true
+    description: Only for i.MX6Q/DL/SL SoCs.
+
   soc-supply:
     deprecated: true
     description: Only for i.MX6/7 Soc.
-- 
2.34.1


