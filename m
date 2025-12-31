Return-Path: <devicetree+bounces-250697-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E52CEB21D
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 03:57:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F277B3054D5C
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 02:55:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F24B12F549D;
	Wed, 31 Dec 2025 02:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=0x0f.com header.i=@0x0f.com header.b="kjYg4swu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D09F32EA473
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 02:55:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767149734; cv=none; b=CToZkG1AygHKRDGZ1us+bQDGypQvuD0JvGrA//iik4EulgVy1CkMbOMZEC44SkfqIhfZWyGxZWtGXcl0bPmm4BFgJslMYAz14JLkE+in/89FNs46frrs0dOYRwj6OzPVb8n/XT8I/garVyDn+IbA50Eqmk9qevVOu3ERwBspfSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767149734; c=relaxed/simple;
	bh=lw6LmHwkZ6s352IUgudlGEDT8hY2e8seyLZr80t51gA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Va4/FURXYf4DhklP8qhYjINWuQlG0Y+OqtBKcv5Y1W0SJWCLCz9crUrnmJ5rPC6Qn0yMR07fLIoJ7mQNV0sySGPXfXZJDY6Hqys3NKc8M/P66ViCQ7jkYLUBJfYlDfHsuByW0nXdz3Do4VBfujF6lKZMJU/jFJS/rGEfVhoQj8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0x0f.com; spf=pass smtp.mailfrom=0x0f.com; dkim=pass (1024-bit key) header.d=0x0f.com header.i=@0x0f.com header.b=kjYg4swu; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0x0f.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0x0f.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2a137692691so121503555ad.0
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 18:55:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google; t=1767149732; x=1767754532; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lkVbLY7WKxeFV6FL/1HrmcQC5sHa2aQeDppOR22AFY4=;
        b=kjYg4swuM5ScSS/4OvvGd1Z3jXCOSRaetTmZ0dojQaQ1Q7s8MdaiRsfxf3mfwv4PwC
         nMommboRD+K69eVGr8ssPya86rT5tLRUYMGLWuBky0Md5lpEaLWhnV4zn9APfhNaLTv9
         L5fzDAWzAXNj+l7YfMqWMLoxdyLWfA3BBFIKY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767149732; x=1767754532;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=lkVbLY7WKxeFV6FL/1HrmcQC5sHa2aQeDppOR22AFY4=;
        b=h8/7cR77EZCfmI3qIRCYX9drjTuEA5wIt5hkTXaS99LB9iW8PTKZFcoYATqoctoHGs
         hWq76b2ie9Dxuevvm6vTOamy0RVojMLAGdUoWZLXf1bu00OvrlzWBuny5CCIF8lsbddr
         6eEoW/1UvcjHlu4DbmH4GHNuCXgKu4W9O+Uua6rBVsJP3FsIuIbsbsFNdhQvvL5UsG/8
         QTcE2/AYmVc4FUfkfhKqF3LHHJD57amoGCKptQOR/gdKK9s/7Un212ZizkYdw2+LYEou
         TPfUFwTVLz35GaDW/TVDNCoBCeU+2gBPcNVlSi8+cm7V8BbmnmphqPPwtEnvnNSfmWjw
         lJVA==
X-Gm-Message-State: AOJu0YxaeF1LN0LuQzU1sqNGTqqNEOZ8p9WQyPkEPYfwrbcVATrqCypV
	tt4XPsZSn9OJ+pyA6N1WRh4aEnlATe5INDNzxWHDxK8SbiSeMKsdbdm+pRTsXqLJqAU=
X-Gm-Gg: AY/fxX6WmGrQDYWw14UzqYYh4KhjBjQAfvIIJ+1Zp4QgmvW3zsSWEsf2sqZ4sSKJ6d9
	dPjo5ibkfkUyaJORaOderc7KrsNwA/xHT0yJWf9ku9pDPWmX+nvhjLIgVPoq53TELgorHiiDkSl
	ea+YrdL2+JgiBs54dYiqF9bN62MXyeAYY0JIGmq8Ec+k72ZHAHzyzfo/kAbLz5MefgMtnoSInFm
	h9aT9q9glT9FlKsmXq8SsjwVFxNvEfBGe9CiM/SL5sSVSoBHoa1p9adNYRzXybB0vgUdilfUJVT
	FK0+iCQ2EQ7+Y/3IIPAfA77SAiNs8RayQrrKombAkxfp6DRZn/CxcYYpkmVL07Fvm2xIsaFnk+W
	PjWcLbL2+vhXMEGcP6QFBQmXqef8Y8D4RCAoQ/oxxQZuNSkO08dsFESydCjFH66SWo+C7rSpkwg
	Ve28ebsX2P5ghqBgWWWcAOy2cRwSZ+dyiOwdQSzIDrRh+aT59p5gku
X-Google-Smtp-Source: AGHT+IHG5Gi2hONkaKklkpa2PlYBR8Fgmr1o/L9fFONMqPgmMHSqOlvGJlmlQ4t1chHXQOHGi6o/dA==
X-Received: by 2002:a17:903:284:b0:299:e215:f62d with SMTP id d9443c01a7336-2a2f2202faamr370860135ad.5.1767149732109;
        Tue, 30 Dec 2025 18:55:32 -0800 (PST)
Received: from shiro (p1536247-ipxg00c01sizuokaden.shizuoka.ocn.ne.jp. [122.26.212.247])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a2f3d5d3e1sm307762945ad.76.2025.12.30.18.55.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 18:55:31 -0800 (PST)
From: Daniel Palmer <daniel@0x0f.com>
To: krzk+dt@kernel.org,
	romain.perier@gmail.com,
	robh@kernel.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH 1/5] arm: dts: mstar: breadbee: Correct regulator names
Date: Wed, 31 Dec 2025 11:54:58 +0900
Message-ID: <20251231025502.1139168-2-daniel@0x0f.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251231025502.1139168-1-daniel@0x0f.com>
References: <20251231025502.1139168-1-daniel@0x0f.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The regulator names had a "@<n>" in them so the dt validation
stuff wanted a reg property. Fix the names to match what the regulator
is for and remove the "@<n>" bit.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 .../boot/dts/sigmastar/mstar-infinity-breadbee-common.dtsi  | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/sigmastar/mstar-infinity-breadbee-common.dtsi b/arch/arm/boot/dts/sigmastar/mstar-infinity-breadbee-common.dtsi
index 507ff2fba837..aedea0fbbce6 100644
--- a/arch/arm/boot/dts/sigmastar/mstar-infinity-breadbee-common.dtsi
+++ b/arch/arm/boot/dts/sigmastar/mstar-infinity-breadbee-common.dtsi
@@ -7,7 +7,7 @@
 #include <dt-bindings/gpio/gpio.h>
 
 / {
-	vcc_core: fixedregulator@0 {
+	vcc_core: reg-core {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc_core";
 		regulator-min-microvolt = <1000000>;
@@ -15,7 +15,7 @@ vcc_core: fixedregulator@0 {
 		regulator-boot-on;
 	};
 
-	vcc_dram: fixedregulator@1 {
+	vcc_dram: reg-dram {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc_dram";
 		regulator-min-microvolt = <1800000>;
@@ -23,7 +23,7 @@ vcc_dram: fixedregulator@1 {
 		regulator-boot-on;
 	};
 
-	vcc_io: fixedregulator@2 {
+	vcc_io: reg-io {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc_io";
 		regulator-min-microvolt = <3300000>;
-- 
2.51.0


