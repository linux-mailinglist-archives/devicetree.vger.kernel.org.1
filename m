Return-Path: <devicetree+bounces-45500-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 198A68623C0
	for <lists+devicetree@lfdr.de>; Sat, 24 Feb 2024 10:13:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 84AE01F2503C
	for <lists+devicetree@lfdr.de>; Sat, 24 Feb 2024 09:13:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 363341BDD9;
	Sat, 24 Feb 2024 09:12:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Zru7m329"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8F418E2F
	for <devicetree@vger.kernel.org>; Sat, 24 Feb 2024 09:12:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708765967; cv=none; b=qUoxqMubhJmLIJ7xEvPi1GlXKpRlNe5cz4Am4s6vIR65FZaFYsSkPjjxYj5MUi/bOhgBVoU1MBObpBizVdZ4H6o6jpN7GFASNZqh1V7CnzbHABoChyKzTUhFL6jLD/rsxiRNY1yzNMIYCgRQbrYPmfSwokYZN52biby0rQXmz0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708765967; c=relaxed/simple;
	bh=tEtR/F26NrPfZmPfy9jCU2rCqh9zqVAXMlZEQCwoR6o=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=pkrJtTH6P+wwsRYsbrru/XY9KTbcCpypxGRiMxGfGMvwHGB4HNkZOS7uF5IsIeuB0hJNaVEVmjUlp4t0jE54ZPjzzNsEV5WFs6XiT4ocLWLN3BNXzToeoPo5/PiXNmJdwjK/x/1t15DIzK8PBPQtDSZiE2l/QWXvKbO3nuySyiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Zru7m329; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-563cb3ba9daso1238571a12.3
        for <devicetree@vger.kernel.org>; Sat, 24 Feb 2024 01:12:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708765962; x=1709370762; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y3V9HFRuoqtjW1LykcoyHkl9RX/XvqqL8Qk3NeqSQF4=;
        b=Zru7m3298vACTpUAjkK34t2jE19/7eERe5jtMEK19+OqQIZbc3V3idaLU+mjzUAtVk
         obg7XLsHjgm5H1vpPNsZ8tingaG+lNBLw58VR1/OgmA/Ul3y9xpyktbbscF81WCWGlt4
         B7csRRDYVP+/Fy4b3O2SBSiCOoml/6czl/+4yCz78PP7uon97hbP2HNQ5Uep0vvPMKIe
         aGwTxW8pUutbeJGPi3y539EA9vFpEeEZuuzZSNHkQe28o5SlHR4LCxWEeaVeFamWk422
         mdQF0QpYe53uuvfw2O3F0rN2OnKVJfL03OMaL4P4kZnD9btFQZZ6c6b2ZkC4870eq098
         hqzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708765962; x=1709370762;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y3V9HFRuoqtjW1LykcoyHkl9RX/XvqqL8Qk3NeqSQF4=;
        b=IvUFa9hqU9+83JGOamfW3A+F4qZv9wPxuUtiaLMj+mPOfYLB93Ze7CbzKKnWe3ltPX
         EQL9AYZjzPO3TekXm1g9e4jEEsksAYb81nS5lLWOAnGHHywMmFymtpSdKkBZ1M74DOtx
         Dp3npU13ghl8KmL42u4F5JbsZorQBS8fuoZMceL2GnKpFd80fJPr/4ivggh4ubGCxQOc
         27OwzPe+a0NU88v9hya5gLEJGWkF36ubDb3x3i0tqh9JiwGphT2fFYOGmSSA6LXtnhv/
         Fp3u9cdnzuyeUaeLiooDdcV/h3r2jq2ICtK/iIe7N+S67zfucsRyDJFA3Qd91qJp7/Tw
         iefA==
X-Forwarded-Encrypted: i=1; AJvYcCUi0X54/EKU3Xy9Vyc7gNF2w5VNehhvtXB7zKbz8ch7KeTS+73gQoYHQ5kra++dCXC2d3yfkjbDDPFn69TxrynnXzuzNlH0cjhCRQ==
X-Gm-Message-State: AOJu0YzpsVnBVGEaEq5IlK80spylz7mRNz4b7+Wurkupr8aLYLdXXBTn
	/ukRU7+R1mihRqx+WJTfp6oRs2sZmRPJNw5gQbKsc5FCO+Tzq00gN9p/2Z/4LgM=
X-Google-Smtp-Source: AGHT+IEYiLYKvXagL3AWNRM6q2rkZnZ1nJuOlisCVTcsSPubLmjUDsDdI+NfdBiD1iYDPJUAe6sDLg==
X-Received: by 2002:a05:6402:d72:b0:565:a7b2:2703 with SMTP id ec50-20020a0564020d7200b00565a7b22703mr446912edb.1.1708765962305;
        Sat, 24 Feb 2024 01:12:42 -0800 (PST)
Received: from krzk-bin.. ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id s8-20020a056402164800b005652f6a9533sm363120edx.74.2024.02.24.01.12.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Feb 2024 01:12:41 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-remoteproc@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/3] dt-bindings: clock: ti: remove unstable remark
Date: Sat, 24 Feb 2024 10:12:35 +0100
Message-Id: <20240224091236.10146-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240224091236.10146-1-krzysztof.kozlowski@linaro.org>
References: <20240224091236.10146-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Several TI SoC clock bindings were marked as work-in-progress / unstable
between 2013-2016, for example in commit f60b1ea5ea7a ("CLK: TI: add
support for gate clock").  It was enough of time to consider them stable
and expect usual ABI rules.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/clock/ti/adpll.txt            | 2 --
 Documentation/devicetree/bindings/clock/ti/apll.txt             | 2 --
 Documentation/devicetree/bindings/clock/ti/autoidle.txt         | 2 --
 Documentation/devicetree/bindings/clock/ti/clockdomain.txt      | 2 --
 Documentation/devicetree/bindings/clock/ti/composite.txt        | 2 --
 Documentation/devicetree/bindings/clock/ti/divider.txt          | 2 --
 Documentation/devicetree/bindings/clock/ti/dpll.txt             | 2 --
 Documentation/devicetree/bindings/clock/ti/fapll.txt            | 2 --
 .../devicetree/bindings/clock/ti/fixed-factor-clock.txt         | 2 --
 Documentation/devicetree/bindings/clock/ti/gate.txt             | 2 --
 Documentation/devicetree/bindings/clock/ti/interface.txt        | 2 --
 Documentation/devicetree/bindings/clock/ti/mux.txt              | 2 --
 12 files changed, 24 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/ti/adpll.txt b/Documentation/devicetree/bindings/clock/ti/adpll.txt
index 4c8a2ce2cd70..3122360adcf3 100644
--- a/Documentation/devicetree/bindings/clock/ti/adpll.txt
+++ b/Documentation/devicetree/bindings/clock/ti/adpll.txt
@@ -1,7 +1,5 @@
 Binding for Texas Instruments ADPLL clock.
 
-Binding status: Unstable - ABI compatibility may be broken in the future
-
 This binding uses the common clock binding[1]. It assumes a
 register-mapped ADPLL with two to three selectable input clocks
 and three to four children.
diff --git a/Documentation/devicetree/bindings/clock/ti/apll.txt b/Documentation/devicetree/bindings/clock/ti/apll.txt
index ade4dd4c30f0..bbd505c1199d 100644
--- a/Documentation/devicetree/bindings/clock/ti/apll.txt
+++ b/Documentation/devicetree/bindings/clock/ti/apll.txt
@@ -1,7 +1,5 @@
 Binding for Texas Instruments APLL clock.
 
-Binding status: Unstable - ABI compatibility may be broken in the future
-
 This binding uses the common clock binding[1].  It assumes a
 register-mapped APLL with usually two selectable input clocks
 (reference clock and bypass clock), with analog phase locked
diff --git a/Documentation/devicetree/bindings/clock/ti/autoidle.txt b/Documentation/devicetree/bindings/clock/ti/autoidle.txt
index 7c735dde9fe9..05645a10a9e3 100644
--- a/Documentation/devicetree/bindings/clock/ti/autoidle.txt
+++ b/Documentation/devicetree/bindings/clock/ti/autoidle.txt
@@ -1,7 +1,5 @@
 Binding for Texas Instruments autoidle clock.
 
-Binding status: Unstable - ABI compatibility may be broken in the future
-
 This binding uses the common clock binding[1]. It assumes a register mapped
 clock which can be put to idle automatically by hardware based on the usage
 and a configuration bit setting. Autoidle clock is never an individual
diff --git a/Documentation/devicetree/bindings/clock/ti/clockdomain.txt b/Documentation/devicetree/bindings/clock/ti/clockdomain.txt
index 9c6199249ce5..edf0b5d42768 100644
--- a/Documentation/devicetree/bindings/clock/ti/clockdomain.txt
+++ b/Documentation/devicetree/bindings/clock/ti/clockdomain.txt
@@ -1,7 +1,5 @@
 Binding for Texas Instruments clockdomain.
 
-Binding status: Unstable - ABI compatibility may be broken in the future
-
 This binding uses the common clock binding[1] in consumer role.
 Every clock on TI SoC belongs to one clockdomain, but software
 only needs this information for specific clocks which require
diff --git a/Documentation/devicetree/bindings/clock/ti/composite.txt b/Documentation/devicetree/bindings/clock/ti/composite.txt
index 33ac7c9ad053..6f7e1331b546 100644
--- a/Documentation/devicetree/bindings/clock/ti/composite.txt
+++ b/Documentation/devicetree/bindings/clock/ti/composite.txt
@@ -1,7 +1,5 @@
 Binding for TI composite clock.
 
-Binding status: Unstable - ABI compatibility may be broken in the future
-
 This binding uses the common clock binding[1]. It assumes a
 register-mapped composite clock with multiple different sub-types;
 
diff --git a/Documentation/devicetree/bindings/clock/ti/divider.txt b/Documentation/devicetree/bindings/clock/ti/divider.txt
index 9b13b32974f9..4d7c76f0b356 100644
--- a/Documentation/devicetree/bindings/clock/ti/divider.txt
+++ b/Documentation/devicetree/bindings/clock/ti/divider.txt
@@ -1,7 +1,5 @@
 Binding for TI divider clock
 
-Binding status: Unstable - ABI compatibility may be broken in the future
-
 This binding uses the common clock binding[1].  It assumes a
 register-mapped adjustable clock rate divider that does not gate and has
 only one input clock or parent.  By default the value programmed into
diff --git a/Documentation/devicetree/bindings/clock/ti/dpll.txt b/Documentation/devicetree/bindings/clock/ti/dpll.txt
index 37a7cb6ad07d..14a1b72c2e71 100644
--- a/Documentation/devicetree/bindings/clock/ti/dpll.txt
+++ b/Documentation/devicetree/bindings/clock/ti/dpll.txt
@@ -1,7 +1,5 @@
 Binding for Texas Instruments DPLL clock.
 
-Binding status: Unstable - ABI compatibility may be broken in the future
-
 This binding uses the common clock binding[1].  It assumes a
 register-mapped DPLL with usually two selectable input clocks
 (reference clock and bypass clock), with digital phase locked
diff --git a/Documentation/devicetree/bindings/clock/ti/fapll.txt b/Documentation/devicetree/bindings/clock/ti/fapll.txt
index c19b3f253b8c..88986ef39ddd 100644
--- a/Documentation/devicetree/bindings/clock/ti/fapll.txt
+++ b/Documentation/devicetree/bindings/clock/ti/fapll.txt
@@ -1,7 +1,5 @@
 Binding for Texas Instruments FAPLL clock.
 
-Binding status: Unstable - ABI compatibility may be broken in the future
-
 This binding uses the common clock binding[1]. It assumes a
 register-mapped FAPLL with usually two selectable input clocks
 (reference clock and bypass clock), and one or more child
diff --git a/Documentation/devicetree/bindings/clock/ti/fixed-factor-clock.txt b/Documentation/devicetree/bindings/clock/ti/fixed-factor-clock.txt
index 518e3c142276..dc69477b6e98 100644
--- a/Documentation/devicetree/bindings/clock/ti/fixed-factor-clock.txt
+++ b/Documentation/devicetree/bindings/clock/ti/fixed-factor-clock.txt
@@ -1,7 +1,5 @@
 Binding for TI fixed factor rate clock sources.
 
-Binding status: Unstable - ABI compatibility may be broken in the future
-
 This binding uses the common clock binding[1], and also uses the autoidle
 support from TI autoidle clock [2].
 
diff --git a/Documentation/devicetree/bindings/clock/ti/gate.txt b/Documentation/devicetree/bindings/clock/ti/gate.txt
index 4982615c01b9..a8e0335b006a 100644
--- a/Documentation/devicetree/bindings/clock/ti/gate.txt
+++ b/Documentation/devicetree/bindings/clock/ti/gate.txt
@@ -1,7 +1,5 @@
 Binding for Texas Instruments gate clock.
 
-Binding status: Unstable - ABI compatibility may be broken in the future
-
 This binding uses the common clock binding[1]. This clock is
 quite much similar to the basic gate-clock [2], however,
 it supports a number of additional features. If no register
diff --git a/Documentation/devicetree/bindings/clock/ti/interface.txt b/Documentation/devicetree/bindings/clock/ti/interface.txt
index d3eb5ca92a7f..85fb1f2d2d28 100644
--- a/Documentation/devicetree/bindings/clock/ti/interface.txt
+++ b/Documentation/devicetree/bindings/clock/ti/interface.txt
@@ -1,7 +1,5 @@
 Binding for Texas Instruments interface clock.
 
-Binding status: Unstable - ABI compatibility may be broken in the future
-
 This binding uses the common clock binding[1]. This clock is
 quite much similar to the basic gate-clock [2], however,
 it supports a number of additional features, including
diff --git a/Documentation/devicetree/bindings/clock/ti/mux.txt b/Documentation/devicetree/bindings/clock/ti/mux.txt
index b33f641f1043..cd56d3c1c09f 100644
--- a/Documentation/devicetree/bindings/clock/ti/mux.txt
+++ b/Documentation/devicetree/bindings/clock/ti/mux.txt
@@ -1,7 +1,5 @@
 Binding for TI mux clock.
 
-Binding status: Unstable - ABI compatibility may be broken in the future
-
 This binding uses the common clock binding[1].  It assumes a
 register-mapped multiplexer with multiple input clock signals or
 parents, one of which can be selected as output.  This clock does not
-- 
2.34.1


