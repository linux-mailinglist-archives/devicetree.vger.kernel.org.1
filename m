Return-Path: <devicetree+bounces-222708-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F47BAC1FF
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 10:48:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3007B3210F1
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 08:48:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DE982F7467;
	Tue, 30 Sep 2025 08:47:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="f9dh15bq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEAEA2F5327
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 08:46:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759222021; cv=none; b=gCqdMkX2SzYeO/LlMY7wbZms74beunkQ1F34FcrAfeUAX7WIxcuhiPF/BT/+bUYolU+mK2nXttqrpHGyrPCerVsVCPq0LPmZZdUHyUsbt5RkCGm6HbwDkBeXKTReiQfuthoRBg4h4eiGOC4ElyuCBuofwOATfDARM9jrJCiSrtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759222021; c=relaxed/simple;
	bh=p6iwdyUUP5W8+77ExyG+J/4KTfuGbStSzXc5YQJ6uQg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kqnXfgzYQm80M91e0DJbd3nJUKi1gMvMJKjeFLDBsk9s7ixC88rPFRNwDpoMeEjEzqq5sdr/I2suJEYAR/usr/0OB6R72dIk77K+2dcX1xJGK0OU12HN4PzUe4HKyEiizRKWwEW7/dUuwgnyOQSzsbaZjSNi4bvw5FE4veLyeMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=f9dh15bq; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-46e42fa08e4so32335745e9.3
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 01:46:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759222018; x=1759826818; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Zz313f5+9XsH5+Eb3Bh9XStxpTdiNn9ua8EWNmWWJg0=;
        b=f9dh15bq/TIr5hGuMsYYaq8g8FVEROOC21yX3JNqal3LzK1rwDh/m4xC+zHmKmJbm0
         PfaARLi9p7iKXAkSn8/2NMiDJ2xw5RO7nffl7xPmBa5Vu4PnziI2hYe6Cv6o8XWyVG8m
         SMzK9UQoAyYwMxTGMRRwvdhZxyrue7n6J58UTG+yJbJ8u7LAPpbBsxKSZjAxIvf08Qei
         EUC2zbiH36fyhRNsIXjdo+c+2MDtfkTqq454XJhaeKglm++iLmiqNih2tg7qpq8I+rTl
         OW19rTRMONTNKwL8f15flj2/KnyZM+vtWIiJZsMBPEZFSX5l0laJlj36sJ1ewZezkpR7
         z5xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759222018; x=1759826818;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Zz313f5+9XsH5+Eb3Bh9XStxpTdiNn9ua8EWNmWWJg0=;
        b=iDwBp5Xv2KzjIZk0WaNTHZpneOJ3R/M0CasAhgZOmeiMjv3DA9Wk3OlAivV3//TrH+
         9OZSy5idem86Zja+I9erQ3SD9Tf9r0a2WnHRhZ/udS9JDmeOnElHWMOPvYYv8amByN7Z
         jxMqPVFYvDfkUZW7u4d13x4YF2oiLyH7jX/QztyyMC/y3LdawQLTiMGt5CVIzY/B/6iJ
         zGZVpvVvzdMIszQnVP0tN8TiLHRxg5CJBVzzKaJbL7E9gj79QlvnRKUoBmVUysXOfc20
         8tjzV/A/M4SMHlZCeItT6ieETlEOjLYwLypswpN1BxC9+sBrNFdXw62wbtc5OEOgMi9V
         AjFQ==
X-Forwarded-Encrypted: i=1; AJvYcCV99EarZZKGia/e6bXR2/v2F5+Dny47AW+N1l57trbrb1BZKbzdoS8NapvJXXcLApzjwhdACXb1JkNY@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4KrMkcjxSOQVzKc9hzuv5AtslMkFl2XcGnEHibRu1tdiryLll
	87CHBCTKJ8K2+SNCmkxHS6+r7b1XyA5syzsMhmPis4euJlDm+QMRsJa4
X-Gm-Gg: ASbGncs0t+4TcYI91Rt7S1OsH0178pSv6qpS97BiBUNmuteX5gEykmgLVsyQE07sBD6
	84xGVR4pt+TuIsPHAvVJwsp8zvpm4ABIQs2T4gej9Q7Z9O6ox7NwFH9Ko/SOm9Z0thO0Hvdhl8z
	YPqwRRY+6yMuwcus92n0/giD0wHhygHQjrd7KUTjJ/JE18vzeHtZEnU/IaOpVyM+Gut+L5nIPaF
	L2RtUfWvZ0bsMmm98BmJQybSAOS1APN88c5pX/x28Nv5ZoSYEJ1F73HDt7Vek2W7fH6qHZoL0Ga
	xi4iTyXXSKxTfW4tiOT813daJMKP4BCHjJ+IzFJd25YLeXuiW1SUc/pwmw89mYQ3mClx6ekDRMS
	XpLto9A5FtvyKY9FZHcZ8+sumZ6hLx3uMnRp4FLQ3CYfE4cAlOXU8geWw4XyeNvyTycyGt0Cw88
	Ekp/3JDee70J5djgLGfuMiXtthaov/5t8Mc3fBDSGh
X-Google-Smtp-Source: AGHT+IE5U4JjqYd6xwd8FJayS/jcOVFVp9zMugNYrK4b09ZbxPm2ncnyK5wWqHK+ARGFcMuJfSBjSw==
X-Received: by 2002:a05:600c:1986:b0:45d:d8d6:7fcc with SMTP id 5b1f17b1804b1-46e32a057c2mr162105605e9.27.1759222017757;
        Tue, 30 Sep 2025 01:46:57 -0700 (PDT)
Received: from localhost (2a02-8440-7149-a758-f461-9bc4-1c75-ebc1.rev.sfr.net. [2a02:8440:7149:a758:f461:9bc4:1c75:ebc1])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e2ab31f1dsm258242245e9.13.2025.09.30.01.46.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 01:46:57 -0700 (PDT)
From: =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>
Date: Tue, 30 Sep 2025 10:46:48 +0200
Subject: [PATCH v8 5/7] dt-bindings: memory: SDRAM channel: standardise
 node name
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250930-b4-ddr-bindings-v8-5-fe4d8c015a50@gmail.com>
References: <20250930-b4-ddr-bindings-v8-0-fe4d8c015a50@gmail.com>
In-Reply-To: <20250930-b4-ddr-bindings-v8-0-fe4d8c015a50@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Julius Werner <jwerner@chromium.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 linux-arm-kernel@lists.infradead.org, 
 =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>, 
 =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <clement.legoffic@foss.st.com>
X-Mailer: b4 0.15-dev-0dae4

From: Clément Le Goffic <clement.legoffic@foss.st.com>

Add a pattern for sdram channel node name.

Signed-off-by: Clément Le Goffic <clement.legoffic@foss.st.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Clément Le Goffic <legoffic.clement@gmail.com>
---
 .../bindings/memory-controllers/ddr/jedec,sdram-channel.yaml       | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,sdram-channel.yaml b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,sdram-channel.yaml
index 866af40b654d..5cdd8ef45100 100644
--- a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,sdram-channel.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,sdram-channel.yaml
@@ -17,6 +17,9 @@ maintainers:
   - Julius Werner <jwerner@chromium.org>
 
 properties:
+  $nodename:
+    pattern: "sdram-channel-[0-9]+$"
+
   compatible:
     enum:
       - jedec,ddr4-channel
@@ -118,7 +121,7 @@ additionalProperties: false
 
 examples:
   - |
-    lpddr-channel0 {
+    sdram-channel-0 {
       #address-cells = <1>;
       #size-cells = <0>;
       compatible = "jedec,lpddr3-channel";
@@ -133,7 +136,7 @@ examples:
       };
     };
 
-    lpddr-channel1 {
+    sdram-channel-1 {
       #address-cells = <1>;
       #size-cells = <0>;
       compatible = "jedec,lpddr4-channel";

-- 
2.43.0


