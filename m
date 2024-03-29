Return-Path: <devicetree+bounces-54712-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B2738924D2
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 21:06:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B1CEC1F22480
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 20:06:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0895C13BAEF;
	Fri, 29 Mar 2024 20:05:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="IVkB5qu4"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D558213AA54
	for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 20:05:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711742731; cv=none; b=FHAXMI04mvenwyKCCBXJ4FtLOaudmf70bf4BDQx0B0fqum/8g+T6PCrKZQge1GKVpe2pWk0CfB+8Zk1IwmLSEgWUAWPSDC2Jb47flA6crOTFzIEVeZtakylYTGLOUXJFyVdS19/4o5vFczjeCRQ/cV6x4N47SAgRVTVrQJQgU3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711742731; c=relaxed/simple;
	bh=x17cpD0ssTnsMTSeMcB6KMh78X6RtLqdVZUufL1mCUM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PaPdfBXBfF5ikjyIN/WTSxnIgWWAIgva5/fqdsoD4isF2wgQU2hAMup8qMsOpymxM1bLWrN21izHMonl26Zwl/Mcz4xXSAdDy5o61+z0lUukztEJw4x3yn9GXlcGuoollu7JxV6W+W7zEB4kn6Hi/nQHDLRfeqBGkUgksAlvNtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=IVkB5qu4; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1711742729;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pnNZnWrnFQuL9z8tKMfOjE6Als92KSQE2PBtCEWHcNY=;
	b=IVkB5qu4P08PtOZm5L+TrXq8vy4N42zYOild8LVJbRHIrch9JUJx5oGYpbQzuqSxXrQo44
	HGQFASk+WgqNJGnWrMAZ3iOcOFOFf4aP3w5Q4gGiBdTKqKJl89XEY2TauRD3U5xw/Y4wkV
	VshfBeQf5dXhJza8liiAyPGUNupI/tk=
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com
 [209.85.215.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-577-va3ls9xeNVKLOGBPROCUTg-1; Fri, 29 Mar 2024 16:05:27 -0400
X-MC-Unique: va3ls9xeNVKLOGBPROCUTg-1
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-5e4df21f22dso1751775a12.0
        for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 13:05:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711742726; x=1712347526;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pnNZnWrnFQuL9z8tKMfOjE6Als92KSQE2PBtCEWHcNY=;
        b=YbWmPk94J/ukSKk0ccS4jU4i+WmbXHslBTRW7lHpw+VuTXRkr6VvLx0F7upPBQc9yT
         rS6Bg4KD+MvwZb7ATOb0LUndcZHMW3SU3T+Q9y6JI2NBOS0IrztSX7zh4vdGFHu+A371
         snxj0Pk4PHMKMw9CEPvoVgEB/g3VNsGiRpPxDnZ6Pf2UitQQ1FJXfs/QaKi1VeDjDjDI
         pFwldQQaW3I8rU8Zp1N2HxEPtvopaBtZvR1F5A8xT+Wv5yTa47JiK3idvxNNrIGp9LxD
         8Wjj/UE/C+qtc1jrBwOnP4p7mK0Qv5atFHKeFhjhhbP3lw1p+bB5M94bqp9xWmoq77XP
         4txw==
X-Forwarded-Encrypted: i=1; AJvYcCWgbrH9KNoZBWwAdQS6plpoY2wsJoUP9gZLb3uH1JDF3daYeD4uSYx7BQUnHpvmDmti3NJHBOnyuo6S9+pfc4dKf+p2VAg5xobp6g==
X-Gm-Message-State: AOJu0YzpsZuk4I2V85enywwDGVwHhW5kMsQDzRta3vyAdj9umuo6Z8Dv
	u2Ax//szpmZjTnzG73/myLINQ3s3v00s0nKJEuXfgP7CHtaiFQO7L9fscHWutkPT8/eHce0HtmU
	NEw9TkDM/kXEXVdsEsLU25H1cmY3V+82vumgcUnoQ5hcvCiyXTdxwV6oqAz8=
X-Received: by 2002:a17:902:d511:b0:1dd:8ed:997d with SMTP id b17-20020a170902d51100b001dd08ed997dmr9174647plg.3.1711742726552;
        Fri, 29 Mar 2024 13:05:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEJYw4jR0YEnb8pmE90nAgE4U0L687WOcBXmCkEU8q6jh3nVskf4AhRBUJH/lIDQYZgDuFnCA==
X-Received: by 2002:a17:902:d511:b0:1dd:8ed:997d with SMTP id b17-20020a170902d51100b001dd08ed997dmr9174602plg.3.1711742726167;
        Fri, 29 Mar 2024 13:05:26 -0700 (PDT)
Received: from localhost.localdomain ([43.228.180.230])
        by smtp.gmail.com with ESMTPSA id e4-20020a17090301c400b001dd6ebd88b0sm3830017plh.198.2024.03.29.13.05.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Mar 2024 13:05:25 -0700 (PDT)
From: wefu@redhat.com
To: jszhang@kernel.org,
	guoren@kernel.org,
	conor@kernel.org,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	jic23@kernel.org,
	lars@metafoo.de,
	andriy.shevchenko@linux.intel.com,
	nuno.sa@analog.com,
	marcelo.schmitt@analog.com,
	bigunclemax@gmail.com,
	marius.cristea@microchip.com,
	fr0st61te@gmail.com,
	okan.sahin@analog.com,
	marcus.folkesson@gmail.com,
	schnelle@linux.ibm.com,
	lee@kernel.org,
	mike.looijmans@topic.nl
Cc: linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org,
	Wei Fu <wefu@redhat.com>
Subject: [PATCH 3/3] dt-bindings: adc: Document XuanTie TH1520 ADC
Date: Sat, 30 Mar 2024 04:01:26 +0800
Message-ID: <20240329200241.4122000-4-wefu@redhat.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240329200241.4122000-1-wefu@redhat.com>
References: <20240329200241.4122000-1-wefu@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Wei Fu <wefu@redhat.com>

Document devicetree bindings for the XuanTie TH1520 AP sub-system ADC.

Signed-off-by: Wei Fu <wefu@redhat.com>
---
 .../bindings/iio/adc/thead,th1520.yaml        | 52 +++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/thead,th1520.yaml b/Documentation/devicetree/bindings/iio/adc/thead,th1520.yaml
new file mode 100644
index 000000000000..80890ce62810
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/adc/thead,th1520.yaml
@@ -0,0 +1,52 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/adc/thead,th1520.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: XuanTie TH1520 Analog to Digital Converter (ADC)
+
+maintainers:
+  - Fugang Duan <duanfugang.dfg@linux.alibaba.com>
+  - Wei Fu <wefu@redhat.com>
+
+description: |
+  12-Bit Analog to Digital Converter (ADC) on XuanTie TH1520
+
+properties:
+  compatible:
+    const: thead,th1520
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    const: adc
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - status
+
+additionalProperties: false
+
+examples:
+  - |
+    adc: adc@0xfffff51000 {
+	compatible = "thead,th1520-adc";
+	reg = <0xff 0xfff51000 0x0 0x1000>;
+	interrupts = <61 IRQ_TYPE_LEVEL_HIGH>;
+	clocks = <&aonsys_clk>;
+	clock-names = "adc";
+	/* ADC pin is proprietary,no need to config pinctrl */
+	status = "disabled";
+    };
-- 
2.44.0


