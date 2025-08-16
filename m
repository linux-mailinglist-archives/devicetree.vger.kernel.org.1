Return-Path: <devicetree+bounces-205362-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3862BB28D07
	for <lists+devicetree@lfdr.de>; Sat, 16 Aug 2025 12:50:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 76A8D3B5605
	for <lists+devicetree@lfdr.de>; Sat, 16 Aug 2025 10:47:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1347239E6E;
	Sat, 16 Aug 2025 10:47:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xaKjal/M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B13F299A9A
	for <devicetree@vger.kernel.org>; Sat, 16 Aug 2025 10:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755341230; cv=none; b=e5d7wNc59tYtdCsNvUEjdsLbrG0YagQ6VIoqRzX1S84ymwrsa+VfF3VaZY7yac3cPdTiHjNWAENMJG2x1mpYMtJ0/nVeUFciGwvAgxywOZWjk6OYMCSon9vasmv+HvBtxT4mi7ndWOYqHYJvEITmPXzJSdLK8gEEHKdKNJ71Yog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755341230; c=relaxed/simple;
	bh=OeKXcWK76d0yWclbpyunEcAV1pszEggwnOfT37LA7fQ=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pNlzgIvbAmF2TfOcshQNQOxvmrNrLeLWwSqQZxQOIq5WtfGx3tmHgxDKIIiTv7DNGJ6HISDYbTVCU6NnWI3IMXr/Wd2Q/o6vdSbsgjZabz94J0u2gl5CcieefDqHREbtBFZv1U7TWgRtiMxDjgZqb8CJFfL/nm1ZTqkzipE6Oig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xaKjal/M; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-45a1b0c8867so20379895e9.3
        for <devicetree@vger.kernel.org>; Sat, 16 Aug 2025 03:47:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755341227; x=1755946027; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=EaoEKTWawmv6w2uMw9L7nlPWvxX14sx+nVz1q6Hglg4=;
        b=xaKjal/MVKu8eFuQA3R3PpiUsVMPjumaRFtVEvgWF5lFa2DFsVEBzO05KK9KLaq8R9
         H3ouzDvy0B6Cw8os0QWM7s60QdCMNCbyF5/xFM5p9esSflXFn4mMIR/VpvTXd/Oihki5
         dcQxMnWk5Y8NbiC91mTlEY7+f9rnnJImiunL3xkY5R5WH27AyFFS1k+08T8uSRytF4sJ
         krMQrX5Fr6PkNvXhZQa83nPg+ZjLtB1tbOOTUQtN0CRopQ6qU2HXDL+uVQfdtMtnCYUK
         orBdnY0NmcgNsO/fkPgiZiFzvxs7CLOGz6LHGZi2MgUOKLW/Ww1rYTufSrf/jKkcPoMZ
         Hegw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755341227; x=1755946027;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EaoEKTWawmv6w2uMw9L7nlPWvxX14sx+nVz1q6Hglg4=;
        b=GmrrFLZTOC3ElVob8ZXD1uGvzywqVrVcG/shi4mhP618cTuRr8QGGICx6Jm0sYGeOt
         dI7BYqNtp2qsBQ8EyUHFxGtK5NYo6rpjjp/1DO0nFpZqYEONpcf1ViLxzMpM3ODlZxKy
         qVfMP0sUCbC09lO+qZ9LAUNWUqzwL5GGL0Bim46OBt/Sm3W5HW60o/CtaBgBtX0YbxKD
         WQBaG7J0v+BbwFaqGqK0dkvdIjEqr5nZrLsEpEeNkufJftl1G0qHFYuGkX0swimxTBtQ
         tmeMtMv8c89hWhZi+kiaXRKl8zcNFzMte3rToNd/n06JX5gcimQV6l0atyor7f1WGqw+
         dH+A==
X-Forwarded-Encrypted: i=1; AJvYcCVsO4WPDPm3r0/nn66T4kRSWhTWKsBA2O/sEgZkSLpzmpb8q9+kHxB0UgAUuAiJSdCi3G1TzWXwwCMd@vger.kernel.org
X-Gm-Message-State: AOJu0Yyl+O1KKlhj5Iu2Oa6VGV5Ufaq6MzxuZ+fpQQNNqckMcrEGEVrf
	jcKLckCCijhORV85hI3aAQ3Ze4ebKCO6MC/Ds5bfnXq/EzhRO98jI1NlWXGSnXjoics=
X-Gm-Gg: ASbGncv4+xHdFueFlsTA9NPpF4MXkiUTHZv1LLojl7L+Jalq4PXzYea/LlgWE26JHzE
	1s1FiWDzWWZmFanI8IhphLdTM+uCdjm3P86XFqavWIUK4aCuKazZMbffqLwun+JxsGuZqecqXrX
	6rYAqQ/H9tSgEbuvBwF9Zl1HuKKx1ZX3H7lCoNMpOCc32+RvpJxO362xlFil72oPXv7oFrsP60z
	2PKqcdFuw38WVsZ9k/M2O6CcghrJ/JM9OEWVc4Wf+eKtiKSE4tTRlCf/awFQ+kAqZADbuUJzcXU
	V0Xsw3ZCl60rh61kdXSuYc2GIxpCgWiagKl41B5XQh9Ji05NzeZE0OjZJESpENZQmkhMppndK7E
	aH3E+vEe/SFIkMNEn+KR7H/gTJeRnKZvny/dUrbWnZqNGcFv61/tDWdC7GZE=
X-Google-Smtp-Source: AGHT+IGkWKzC/ZUC892QL7yJQoZJoHNrOosh02okhIhcrBnZmgy1YSlQeu1lm9PX58OU21V8+jK1HQ==
X-Received: by 2002:a05:600c:5287:b0:456:f9f:657 with SMTP id 5b1f17b1804b1-45a2185e6cbmr36481925e9.27.1755341227201;
        Sat, 16 Aug 2025 03:47:07 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-45a1c78b410sm96162985e9.24.2025.08.16.03.47.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Aug 2025 03:47:06 -0700 (PDT)
From: Ciprian Costea <dan.carpenter@linaro.org>
X-Google-Original-From: Ciprian Costea <ciprianmarian.costea@nxp.com>
Date: Sat, 16 Aug 2025 13:47:03 +0300
To: Srinivas Kandagatla <srini@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ciprian Costea <ciprianmarian.costea@nxp.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linaro-s32@linaro.org, NXP S32 Linux Team <s32@nxp.com>,
	Srinivas Kandagatla <srini@kernel.org>
Subject: [PATCH 1/3] dt-bindings: nvmem: Add the nxp,s32g-ocotp yaml file
Message-ID: <7d0e025ed3fdc9e545f1d0b84f6a1cbb9dfb4e91.1755341000.git.dan.carpenter@linaro.org>
References: <cover.1755341000.git.dan.carpenter@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1755341000.git.dan.carpenter@linaro.org>

Add bindings to expose the On Chip One-Time Programmable Controller
(OCOTP) for the NXP s32g chipset.  There are three versions of this
chip but they're compatible so we can fall back to the nxp,s32g2-ocotp
compatible.

Signed-off-by: Ciprian Costea <ciprianmarian.costea@nxp.com>
Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
 .../bindings/nvmem/nxp,s32g-ocotp-nvmem.yaml  | 57 +++++++++++++++++++
 1 file changed, 57 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/nvmem/nxp,s32g-ocotp-nvmem.yaml

diff --git a/Documentation/devicetree/bindings/nvmem/nxp,s32g-ocotp-nvmem.yaml b/Documentation/devicetree/bindings/nvmem/nxp,s32g-ocotp-nvmem.yaml
new file mode 100644
index 000000000000..19f3bb6b7eb0
--- /dev/null
+++ b/Documentation/devicetree/bindings/nvmem/nxp,s32g-ocotp-nvmem.yaml
@@ -0,0 +1,57 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/nvmem/nxp,s32g-ocotp-nvmem.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP S32G OCOTP NVMEM driver
+
+maintainers:
+  - Ciprian Costea <ciprianmarian.costea@nxp.com>
+
+description: |
+  The drivers provides an interface to access One Time
+  Programmable memory pages, such as TMU fuse values.
+
+allOf:
+  - $ref: nvmem.yaml#
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - enum:
+              - nxp,s32g3-ocotp
+              - nxp,s32r45-ocotp
+          - const: nxp,s32g2-ocotp
+
+  reg:
+    description:
+      Address and Size of the fuse bank to be read.
+    maxItems: 1
+
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - '#address-cells'
+  - '#size-cells'
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/nvmem/s32g-ocotp-nvmem.h>
+
+    ocotp: ocotp@400a4000 {
+      compatible = "nxp,s32g2-ocotp";
+      reg = <0x400a4000 0x400>;
+      #address-cells = <1>;
+      #size-cells = <1>;
+      status = "okay";
+    };
-- 
2.47.2


