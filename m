Return-Path: <devicetree+bounces-36682-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F2D8424AC
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 13:19:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 455681F251CF
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 12:19:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 608DF67E6A;
	Tue, 30 Jan 2024 12:19:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b="FoN8UqId"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86B7666B5B
	for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 12:19:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706617161; cv=none; b=ehZ0dwRR+pDk4KcTaCYPIsjG0HQau4X2tWX6oQI5qdFmFgf4huDc0GZA2dwpP/5yYJKWFfPSVRv+riLSbrGRJD+HDyyP8RFaZWcbrd1W+FnRPTtjHG9GgPfepOJ+Vz9+zYWV/iWRsw5keFvDwUjK9FIzpyXVIb5Htb1SGPRecpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706617161; c=relaxed/simple;
	bh=Hd1RHTBtH/cnzQe4G9j54UYePvNcRisBiWelTnaOKz0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=gJvcGce+8uHOStgnT5BW7qcq8Vy/nnKQ8fHaVBvfo4DZgnrUvP/bu1V96irTNxsHOn90NYjuy7g8vd5NuEXC/fJWDLXSNTFRvSdzWlPnkN6KIsraBUjmCtitRI7ttcMwOK0+t84wl7rx322feO6RA/fDLJHdIJnEEmTCBH+bZ80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=9elements.com; spf=pass smtp.mailfrom=9elements.com; dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b=FoN8UqId; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=9elements.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=9elements.com
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-510322d5363so4225862e87.1
        for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 04:19:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1706617157; x=1707221957; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=G6xinykc8GRQgs0/mcWgeatG2se7xZDFQ9kexfXSaok=;
        b=FoN8UqId3Ym2kjWJZqqv4dEG3yWxfkWXbMtEkBxrunAmzrVfCIu4ZsZGdd5on/IiuW
         DAMyv/WUnzs3nWa+bV99D7wEiq/dYbgcMoKwrG81kV0gltEVVGGjQ/sJUlleMTE8b7M0
         T9T4nX6DVKiQ4+4hyBGqz7VSejXVnQsHtDy9pRvT+SWD4iDaCJxCMv0IuBWgSyqJRoDf
         gEio4g10qlObBox5K59Zf22qCL5OyuubIt996KCztl4z8AdzY+tYlz/PEwWtYcPysliA
         EkOium8yYUBsbCLremhthoamavTGnxo3Zj7eKeTmT1F0W4Il1I440aLJMZZ4Eu+iifjO
         quiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706617157; x=1707221957;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G6xinykc8GRQgs0/mcWgeatG2se7xZDFQ9kexfXSaok=;
        b=bT8lV+1c1ScFI4d1+1ylj5UkilL+Zk2Pm/BNXd6bhkiUN9rCOj/M1HHpJw/myhe/HE
         JGq1ytDlMa+LZNdsV8nW8DeIEE7XKF6nLwiHD2co1MxzE803FAqP8akJgIbl2dc4Ip4P
         lEwoB6Rch3nT5aTL8/65O3jLOsSaufD8OCf/VaKr2UlreHX94RSJ8cYMmamhxsQil5R2
         AFx7EswgaTqMVWEel6pLZWh4qggNKHNNllb7FDdgn979349DkluEGo1w8XW3VUy0jjxV
         e9/k/M9yUZNT3LqvO47omVUZQLkB18FVF+YkJZwMRGo8Qy5uSwiKw3r9QmOKUqCLxCSj
         1cmw==
X-Gm-Message-State: AOJu0YwMOLdjUetQiTMzQvOx07RddDI6I/i6R3HO80Hs3zmcwvMPu+Ox
	Et7o0itEPg5wIBodpvBWBgV0wKYpjSYob6ONaLyIvLVEpyL4nlfKW0P0fR4DrEQ=
X-Google-Smtp-Source: AGHT+IFweCjsqiHYLJWwsAue42vx1B5R3jvo3j6Du0bPHaMEXysoP4buOT9c7/E9TkhblIoRX38pvg==
X-Received: by 2002:a19:f716:0:b0:510:da7:bdbb with SMTP id z22-20020a19f716000000b005100da7bdbbmr5375617lfe.45.1706617157505;
        Tue, 30 Jan 2024 04:19:17 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCU/tRUi6qNWTLscmYMoZE5cbSgq9p2WLkDFHlb1N+udx6tl3o0crFc+zRK/vtr1Qke1dqZQ7qfmMQtVhcTuOrbiFPrzJs7f6jv6onROzvzdsZmKdqvmfU/a3DxIFD1SdIBle0T9EjWMDF7d7KehwhO3mvvsNYM3C2o9T9bMg7bm1/KaLv050AGt1MA7vhi70G93NOWAqWQbDtjAi3zUYMmx70xGatkoufI6Pai+q2prRCl2H8cpvGSYQHIfB+Hq4QzIteoMpEUBehMMbncNGUzUfZwij4Dn0vC4gVvR7Zzj/CaMUga6Zjkq9caBgIGnfn95WlVljued1bdc6QvYvElotiZDk0n4IHgKatumc/dPFjJ6lvi6sCPeVBmok9Two7gqkNmcQW4E2P85wksAgTdl04ex1z25ZQ+CqcXDtoe07ow5z7YntiKznoeHPspwYFkiKuv4vG+j
Received: from stroh80.sec.9e.network (ip-078-094-000-051.um19.pools.vodafone-ip.de. [78.94.0.51])
        by smtp.gmail.com with ESMTPSA id n21-20020a05600c4f9500b0040efb503d58sm4049446wmq.28.2024.01.30.04.19.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jan 2024 04:19:17 -0800 (PST)
From: Naresh Solanki <naresh.solanki@9elements.com>
To: Peter Rosin <peda@axentia.se>,
	Andi Shyti <andi.shyti@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: mazziesaccount@gmail.com,
	Patrick Rudolph <patrick.rudolph@9elements.com>,
	Naresh Solanki <naresh.solanki@9elements.com>,
	Rob Herring <robh@kernel.org>,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [RESEND PATCH v5 1/2] dt-bindings: i2c: pca954x: Add custom properties for MAX7357
Date: Tue, 30 Jan 2024 17:49:00 +0530
Message-ID: <20240130121902.462619-1-naresh.solanki@9elements.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Patrick Rudolph <patrick.rudolph@9elements.com>

Maxim Max7357 has a configuration register to enable additional
features. These features aren't enabled by default & its up to
board designer to enable the same as it may have unexpected side effects.

These should be validated for proper functioning & detection of devices
in secondary bus as sometimes it can cause secondary bus being disabled.

Add booleans for:
 - maxim,isolate-stuck-channel
 - maxim,send-flush-out-sequence
 - maxim,preconnection-wiggle-test-enable

Signed-off-by: Patrick Rudolph <patrick.rudolph@9elements.com>
Signed-off-by: Naresh Solanki <naresh.solanki@9elements.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
Changes in V5:
- Append Reviewer-by
Changes in V4:
- Drop max7358.
Changes in V3:
- Update commit message
Changes in V2:
- Update properties.
---
 .../bindings/i2c/i2c-mux-pca954x.yaml         | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/Documentation/devicetree/bindings/i2c/i2c-mux-pca954x.yaml b/Documentation/devicetree/bindings/i2c/i2c-mux-pca954x.yaml
index 2d7bb998b0e9..9aa0585200c9 100644
--- a/Documentation/devicetree/bindings/i2c/i2c-mux-pca954x.yaml
+++ b/Documentation/devicetree/bindings/i2c/i2c-mux-pca954x.yaml
@@ -71,6 +71,23 @@ properties:
     description: A voltage regulator supplying power to the chip. On PCA9846
       the regulator supplies power to VDD2 (core logic) and optionally to VDD1.
 
+  maxim,isolate-stuck-channel:
+    type: boolean
+    description: Allows to use non faulty channels while a stuck channel is
+      isolated from the upstream bus. If not set all channels are isolated from
+      the upstream bus until the fault is cleared.
+
+  maxim,send-flush-out-sequence:
+    type: boolean
+    description: Send a flush-out sequence to stuck auxiliary buses
+      automatically after a stuck channel is being detected.
+
+  maxim,preconnection-wiggle-test-enable:
+    type: boolean
+    description: Send a STOP condition to the auxiliary buses when the switch
+      register activates a channel to detect a stuck high fault. On fault the
+      channel is isolated from the upstream bus.
+
 required:
   - compatible
   - reg
@@ -95,6 +112,19 @@ allOf:
         "#interrupt-cells": false
         interrupt-controller: false
 
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              enum:
+                - maxim,max7357
+    then:
+      properties:
+        maxim,isolate-stuck-channel: false
+        maxim,send-flush-out-sequence: false
+        maxim,preconnection-wiggle-test-enable: false
+
 unevaluatedProperties: false
 
 examples:

base-commit: 41bccc98fb7931d63d03f326a746ac4d429c1dd3
-- 
2.42.0


