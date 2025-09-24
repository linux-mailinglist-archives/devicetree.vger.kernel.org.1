Return-Path: <devicetree+bounces-220677-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D3298B99377
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 11:45:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2A87316FA31
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 09:45:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 590212DAFBE;
	Wed, 24 Sep 2025 09:44:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UYvH2jul"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D1472D63F6
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 09:44:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758707098; cv=none; b=O9bd/lvFgQBnx3u5qgcMvMjN3PrH+dBo2DNDXyYMYjwhaW19xxLDvmLHmKAHXTV+4OTuvPX8x2NpBuS89Ms1ZHmzACieTMNihtHwg22QwcxW9IYPaaCfOZmXYNVQczMRzphU3KKH35957853X4m/O7e3bWXV1Ji8YkBInd+gmo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758707098; c=relaxed/simple;
	bh=2cljBbctUpov7EPp9dHLO/NTrzVDPxTc08Ag9XJ0xdk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MSScnIopOhC80IQW7gA9beDS7FuBAbQuLPKcWEdWgOyKeuWN8yXmE6tjE4vRFkDxpDcG+n9yocrnDyIP+PL4gwh5tqgZyOwxSJq2z6JHRSRTfufsYtpUYi/2kGVlEJAOvgYoKlP7E0RTQHAWK7TUoQ5sB1ilhWnwO8AC2y4ZIqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UYvH2jul; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3f1aff41e7eso5536084f8f.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 02:44:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758707089; x=1759311889; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8htGACZZYE1dIEbtDAUA+3P97IrmED7ZD9WcIPqTfx4=;
        b=UYvH2julEtiVLHK5cq3xe1ZDrFicw+myAajPVWZSgqRPu7nbZcPbxrASYkrKMg/2ao
         +tyXlZcSqUCL0jeVk2+PzgmwVq7ty9JnLVqJGAsFGFpMmTPZ9kVsjaPCtF4W/6UseHI8
         lvnpXYibMv5KK0NYroHDZLnPE9FSu990CuLK0veA3huexyAGtkBW3M5SFuY9Y6c9KWwD
         pi6BXTEqUtCUSMQ8UhTtPQMMSmFWMyCdQEolTAvkzTsiqzsw8ztPj01qIzQtLJfq7wYe
         7zoM446lJV6Xmgyg3XqoOObCYvIebemVkfH2b8v0z29yEM7B5KKSBNEudP1l4p1YiCW6
         qqUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758707089; x=1759311889;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8htGACZZYE1dIEbtDAUA+3P97IrmED7ZD9WcIPqTfx4=;
        b=OarsR8s1K1cFmQbBbMKp17c0x44UnUOCWoLZr/hMox8AMrLUD0SLbBm246mf4LdVhV
         U0gX72tgWsvX5z5176lgVnrkyjl6GvpJ3ijh4j4H4E3gxVlDOTOgbrBWPZvn3FWT/mRZ
         5dc7q4KhM1FPepOuA63l44Mf1rPEr9yYejPKgjUHyHvTBy6dc+ufgSg+D7R6Bonp6c0E
         66go48kJr5FOWWAk8UXzcr4DDbQ81WuovHL8OqjhjGE7KNv56NYMmxfRGdHRbCF2kSGZ
         FTfCAioiGDWX7uRafuhqiZaAkgxkRo7FO61mZTjfarqD1wo/IglSKv1lSrCwrGiRyZ8T
         j6AQ==
X-Forwarded-Encrypted: i=1; AJvYcCV53Qemv0I4BSn8ktLZHA/RhuqU+xutkNfCH23PuWE7dwCndZ2u5X4ikVvDpi/XRcDX5rO9tucdsvDA@vger.kernel.org
X-Gm-Message-State: AOJu0YwLwtJtj+J2SdfhEnPR1U8/b/8a9DiO3hFVLINDtcFoAgdueHRB
	LZJkdWduouJbiYtojOZkVtfS8zZwINhjR3DaJMtlgIpri1H0GxPtyBco
X-Gm-Gg: ASbGnctBv1kpYYGUf7SWNIpbfav6Cuc/zYx+xsnnZuI2N9wiSHVRAKVJJILWftEEwbm
	FfP0StGj/wrtxDMGvMq67u+gbLrpqCVbfIZFEoE0BIfqGxqpqYAPx+L4sKeOHBq3t41awuQ0b6R
	woyGXEc0ePw/vdFSR0KHIf3IgpiopcN2UcDpoXVkPRvmWYINSi3TIBsu0Y2d29TwXjF9uO4vay2
	cyXDZveOUrnrwd03ej/Ih7ezFQnsqfjqNFKAmSURkMWkKB2OaXSZLWXf+h5XU6pC+AGH2WE/NJ0
	IuyOpB/AwbOs7wZ48B2RkWmwnmHvawVLaG+Wxw/NaXQGDCpWw8oW0iRo69bmOLLh/facUX9WQiN
	KGFNWlX388Ofnwy7yqE9h3JExL5kSSYrhsNRodGz71TVCmHe/DPE3WtNDO8eETTpsmTTq5XHTop
	JPl8XGEjmF+qkn+Q==
X-Google-Smtp-Source: AGHT+IFDGC5gILr6xmz9HYWmbPGf7fv1JpRWluY5ULikXOKvBqLdmUKtTk3mYXekw57q/HwxxJNkVQ==
X-Received: by 2002:a05:6000:186c:b0:3f0:9bf0:a369 with SMTP id ffacd0b85a97d-405c6d1024dmr5131775f8f.14.1758707088783;
        Wed, 24 Sep 2025 02:44:48 -0700 (PDT)
Received: from localhost (2a02-8440-7503-805b-0076-f865-8f03-23d3.rev.sfr.net. [2a02:8440:7503:805b:76:f865:8f03:23d3])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3ee141e9cf7sm27213765f8f.12.2025.09.24.02.44.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 02:44:48 -0700 (PDT)
From: =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>
Date: Wed, 24 Sep 2025 11:44:42 +0200
Subject: [PATCH v8 1/3] dt-bindings: stm32: stm32mp25: add
 `#access-controller-cells` property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250924-b4-rcc-upstream-v8-1-b32d46f71a38@gmail.com>
References: <20250924-b4-rcc-upstream-v8-0-b32d46f71a38@gmail.com>
In-Reply-To: <20250924-b4-rcc-upstream-v8-0-b32d46f71a38@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Gabriel Fernandez <gabriel.fernandez@foss.st.com>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>, 
 =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <clement.legoffic@foss.st.com>
X-Mailer: b4 0.15-dev-0dae4

From: Clément Le Goffic <clement.legoffic@foss.st.com>

RCC is able to check the availability of a clock.
Allow to query the RCC with a firewall ID.

Signed-off-by: Clément Le Goffic <clement.legoffic@foss.st.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Clément Le Goffic <legoffic.clement@gmail.com>
---
 Documentation/devicetree/bindings/clock/st,stm32mp25-rcc.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/st,stm32mp25-rcc.yaml b/Documentation/devicetree/bindings/clock/st,stm32mp25-rcc.yaml
index 88e52f10d1ec..4d471e3d89bc 100644
--- a/Documentation/devicetree/bindings/clock/st,stm32mp25-rcc.yaml
+++ b/Documentation/devicetree/bindings/clock/st,stm32mp25-rcc.yaml
@@ -31,6 +31,11 @@ properties:
   '#reset-cells':
     const: 1
 
+  '#access-controller-cells':
+    const: 1
+    description:
+      Contains the firewall ID associated to the peripheral.
+
   clocks:
     items:
       - description: CK_SCMI_HSE High Speed External oscillator (8 to 48 MHz)
@@ -123,6 +128,7 @@ required:
   - reg
   - '#clock-cells'
   - '#reset-cells'
+  - '#access-controller-cells'
   - clocks
 
 additionalProperties: false
@@ -136,6 +142,7 @@ examples:
         reg = <0x44200000 0x10000>;
         #clock-cells = <1>;
         #reset-cells = <1>;
+        #access-controller-cells = <1>;
         clocks =  <&scmi_clk CK_SCMI_HSE>,
                   <&scmi_clk CK_SCMI_HSI>,
                   <&scmi_clk CK_SCMI_MSI>,

-- 
2.43.0


