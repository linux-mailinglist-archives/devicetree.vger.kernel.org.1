Return-Path: <devicetree+bounces-41330-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 276338532FE
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 15:23:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D1CC2282135
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 14:23:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96E995811B;
	Tue, 13 Feb 2024 14:22:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b="eU75/7y+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62FC15813E
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 14:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707834157; cv=none; b=iiorO59X5Y+pzIGSjJCiK+2tbEd40qcrDuk3gT0RXQxXN18gWoFwzw2WldNJZzRDTR4DDic7IURQ4o10OHBtqYcEO2tSVmd9CX9eHt2IcjEy/GI0wlhcB2jcdI7gc9N9TqM3L/w6sVTNpOVjEhLrTFYJe1zuNphY5+YBwDL+joI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707834157; c=relaxed/simple;
	bh=ZVoWPkWDGGWjLhBURKBmzMi+6xun3d9llfJxTCKJHGg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=mRORW5BkOqRl3UbfMTLs8KNP9M9GqQ0oxwnbyIoBfCHKm3Q4ehsNsTRqat5Uy6LWesTGuFD6nZdw7fDm+DIhf0sjy5IL0fcO/LVOaSQ1lyF0WyfDfTlKgA9osTeNJxZsfnFRi71jqzaoFn5kw7Nv/wREpg4DWrNOMFM0VZCmHT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=9elements.com; spf=pass smtp.mailfrom=9elements.com; dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b=eU75/7y+; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=9elements.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=9elements.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a3be744df3fso460088566b.0
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 06:22:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1707834152; x=1708438952; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Pe27R5El4Dv++yOPITXX9+jKm5cvh9lf2r0jCzdmu/0=;
        b=eU75/7y+/ncyhIvIzIHB4qn+JYpdwDi8TnP0yHpG47ZP7p55jEuHekB1Ad1MpfdjVk
         kIOAVaM/VG5l3x0Tdjr56C+dYw+pCcu0Oz2ITmlhlSqWodHoWdbGOnRSlRjTe9DkSBYh
         q5iN3mItwftPkZp7E2gkJjLqY4sHYGiwWY1BcVBiwG63Xe7uTyfsTQF4Qze3+pqbwQOW
         CZy0VkM082Pxg/xAJV4lA8+yLw7JAwmnNEuB1FoyG7fksFmIG2IkuKVXKTxTkelSphaT
         vtD4CyqJe2764+gl9++IU4TPLXlafCEJIEviM1WO2t6XVS9niFspNNazzAjXapMeLQ8y
         y3Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707834152; x=1708438952;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Pe27R5El4Dv++yOPITXX9+jKm5cvh9lf2r0jCzdmu/0=;
        b=G7UlGz4TxSsZ3nU6mqwHbt/mg1xn/tywEUDxbt0Hxo68ZcedpQcbcj0uTUxU/nP9pn
         KD2zPtGxtxKMV+7Ty0r1UP0CGOlFxCy3oDJ9++7HpWlj3MTfxbU4L4+v8pJ8uQZLLInx
         GsKgRky6lDVflB1pW727ohgW7LDH/ZQjMe6ZHZsfO2OzESd7feGGNsvwyP1gkk90JwHz
         XnsaqiVDXBiqX9VhXyDXuM3KpCfjjU7tnMOWhttxOvEM7MEsUQoESVBcb0ROFhc9IOmZ
         E5pV5CBbJldct64Pm/d10kuLk4s1VYVMQPXjCeh9Gq8J1C3M9yX7njBZnRrcyHlnYEFd
         IK9g==
X-Gm-Message-State: AOJu0YyX2S1f1bMgz9LYbGQ711JF55cF10BLDD7ZziJHU88+V67q4cIQ
	QQjnn9Q6TL8iZI41alcp4hkbFnz8lhTbOVCPR/Oph6O68AsqmvQ6sIKljoiAuVE=
X-Google-Smtp-Source: AGHT+IEjdJlI+v2B9qEuDNoYryH+pfyZufoSFK6R/DxHy1D5Wnu9OAm2rP/1KTC+/s9cofb5iWWA9g==
X-Received: by 2002:a17:906:a419:b0:a3d:fb7:84a3 with SMTP id l25-20020a170906a41900b00a3d0fb784a3mr864127ejz.77.1707834152688;
        Tue, 13 Feb 2024 06:22:32 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXImBO3mmi4JY0TRPPzH+4244VODD/T2hLnxKqUoEVlKwe0g7ic8MIyyAPFjyIGcgh4iWydYEZvYuNSWCg1t2ZMB3LcqXeSPn8B+CrmOaJTTqf/ghzMTQ0DTic2JE3rUNGRPxfQhHU2yWKJIG6eDRySV4mP5csLxky1SKuAAjPoiAVZNIH1jf2NaM8RKe2jrhzryIPQmMKE9ip43fQvQFbySLzCdma6gFXZqpMM/4ZOrtPVWN4EdOldaQSQRA30VGeYFcddDRUyEV92wrOY/rWxQcq0d690exWGMb8XZjI+KQjKQ61iap2Y88tEUgdjPoIGI9n2L47tLdk9pAVEP3AsuzRKY7xZn4sOuEr9hZZWOSHNlQCFn5zwf+T/nHxQTZwP/h+0sq3ebW74WzPqAqiuDsbEiJMebIkTQvwN/4zsvGpkTG6Pp3hdMs8YB2iKONeo5oQ/Fg0c
Received: from stroh80.sec.9e.network (ip-078-094-000-051.um19.pools.vodafone-ip.de. [78.94.0.51])
        by smtp.gmail.com with ESMTPSA id lu1-20020a170906fac100b00a3c97e49bc9sm1322671ejb.218.2024.02.13.06.22.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Feb 2024 06:22:32 -0800 (PST)
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
Subject: [PATCH v5 1/2] dt-bindings: i2c: pca954x: Add custom properties for MAX7357
Date: Tue, 13 Feb 2024 19:52:26 +0530
Message-ID: <20240213142228.2146218-1-naresh.solanki@9elements.com>
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

base-commit: 957bd221ac7b2b56cbdf56739e3a94d4f479209e
-- 
2.42.0


