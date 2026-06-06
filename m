Return-Path: <devicetree+bounces-307697-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YN9MOqY3JGrn4AEAu9opvQ
	(envelope-from <devicetree+bounces-307697-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 06 Jun 2026 17:07:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4891064DC82
	for <lists+devicetree@lfdr.de>; Sat, 06 Jun 2026 17:07:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=NX9iU0T7;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307697-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-307697-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E2AF23016EF5
	for <lists+devicetree@lfdr.de>; Sat,  6 Jun 2026 15:06:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C3FF38F244;
	Sat,  6 Jun 2026 15:06:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f52.google.com (mail-dl1-f52.google.com [74.125.82.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52060305057
	for <devicetree@vger.kernel.org>; Sat,  6 Jun 2026 15:06:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780758361; cv=none; b=X54yhxz7l8aTH6Ba4peDUfcLbZwW65Vtyh+PvFzOxB2H6zbijeLzXEg+FG1RwWQo4sNn+g+2vFBkX640paH/lidYqehDLmcNxfG2iGRPqK++hCQMsi5Q82U9tm/SGIQ6kZPy9hVGhb2F5AeCmADJ6SIocOkYril5iLi1ZGeiGlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780758361; c=relaxed/simple;
	bh=qk6/5zmmg9+asPKWV/NmxyRYbTZHz5EKsgeBfogyMXk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nPHfDkTkL41FxOJdqMwuKXRTwvF7Of81b1FDiVs7t2kMyQ4VyLI/wVZmre3TVZcgXHCQV5hoUi5+JE5RSx/Jew/GiXh5NW16Wi88RIlDd1TEjL4TdmbCmgNTbqYw31ycrVYeEUqXxaD/rWxJ0w+bmQjl4JAkV4eveYgtlC3kDrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NX9iU0T7; arc=none smtp.client-ip=74.125.82.52
Received: by mail-dl1-f52.google.com with SMTP id a92af1059eb24-138129a622dso2560334c88.0
        for <devicetree@vger.kernel.org>; Sat, 06 Jun 2026 08:06:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780758359; x=1781363159; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d1GndHLlQOy8H3OX3ghdSdW3rvI912309T34g52ZxgE=;
        b=NX9iU0T7q6ZRzMEB1nkQ8DJ1lHouOoKSkZj/339RK5gTlSJ7ZKOELqf2vWejuC4qdd
         6pvPJFMVMgWfLSwV8QCZmZlWF1N4mU5ZvObio+qTiCFDbv9o+Po1alYBvsrG8ck9T6xE
         qFFuT3c/MX0TcnuCgUzorFvAlFe0qdsAFpvTpHftEp69IOIvLkTxPcsapyG2NexWnqWs
         bUB6O8KGVKH4jU+DjCEBsTSHmaIafydfo1gMXI2jEgHxJHOmePQPDPR4HhDvmorms8/9
         yq0kXIFzwIHtMmjlIYx9gS6vtPK1zDFll0hBeNBk26+5OfmyAAcxnHftDF3W/4kzzpRE
         7bQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780758359; x=1781363159;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=d1GndHLlQOy8H3OX3ghdSdW3rvI912309T34g52ZxgE=;
        b=Y47Lq4hVftALxeFLPOXwwEfd3oynER4vOCqm3TYHFMc6X6yDAs6PHsk5nQ7OeSUvW3
         OJUFyYkgiwH9QTzfjdKtELZlKW7j8LUhymOTW1wEo+xZZ3jvZ42bM/DD4xaZ9VtDPmmq
         mQt2t60FGxz69zzQW9kYRnSMK3I9mjNLi3Usvo4KE9eoUn2fuVscOOxbaGNoOkVJzWGh
         /QDCeHj4SezxDDVWvrKV3qngXD0XH5UMY4UB4k3pdHZ3J+UbUnNQiAEt4MGIZbV4zMGc
         DWW13R/7LD1MDSd72nE737JLta3ephcqJD0h1KWUY3pZEn/ikywbjvOYK0oE7mHIAxm1
         nRSw==
X-Forwarded-Encrypted: i=1; AFNElJ9AkiLLixgE+5PrHfL5tvUwaEV34wSp17foTjGqj1N6bdy6FZ4eoC6ayYTNaTdnHN6i5Acy90LzUOCw@vger.kernel.org
X-Gm-Message-State: AOJu0YzaI9z4DeSsZHLbxnDzhs8xlZu4aovvatBplgBS78DDW6vhO1db
	E1o5WTgfeeitxvTNnqergqcBIdJVUzlV8Le3I58y74EiLMk1uPOJ1+5O+JKo1g==
X-Gm-Gg: Acq92OGkSOKeaaJiFFUXbEY3sDMD0eKgNYHLb2zLdeJOBjuaLxj+CGlGFKCm+bfPbmP
	NEqAGu4WJZmq4fDEiLFy4Rsq2yW7K0gJ70Y7ITXUknbwGCo/n2ZJmKhtNn761qk89TE7hs32Hnj
	nFuBnPeJpB0nO7byg31DkzABo1xCs+6dbXntDM3nsiZ/uxrP7W7kHzGNkq77hOsgk2CVJD31FDX
	jGTPGeUYKDfNZ391zpEPiz/h6hAFRW8MQWiEpvZAPHp73eH0CQpoNRx/bcLCHjb19sDjLQ8RKIP
	e6syAFR5tWyqB8s6EePXV/nTxNNwJYIIns6quc+GEjD1Xc6Ha9eHxmy57/vdYYhXSMffYTdVg7y
	pn6jLPoAQQlCn0bT//41dhTLJHac25W6a5YgG7Di+H9uyd04Lhain9V8Ip/IcnCWzSwvVXUxL3d
	6pEplEkFXFYaPCFUH0BENInRvBo4EM4zJ20LdVqad/J5jmtbmKiw==
X-Received: by 2002:a05:7022:4199:b0:135:3025:be5c with SMTP id a92af1059eb24-1380671673emr4238397c88.27.1780758359342;
        Sat, 06 Jun 2026 08:05:59 -0700 (PDT)
Received: from arch.localdomain ([2409:8a28:a54:e741:3a5a:3245:d3dc:4b5d])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-137f5539035sm8415607c88.11.2026.06.06.08.05.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Jun 2026 08:05:58 -0700 (PDT)
From: Jun Yan <jerrysteve1101@gmail.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Jun Yan <jerrysteve1101@gmail.com>,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 4/8] dt-bindings: input: microchip,cap11xx: Add reset-gpios property
Date: Sat,  6 Jun 2026 23:03:57 +0800
Message-ID: <20260606150458.250606-5-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260606150458.250606-1-jerrysteve1101@gmail.com>
References: <20260606150458.250606-1-jerrysteve1101@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-307697-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:dmitry.torokhov@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:jerrysteve1101@gmail.com,m:linux-input@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dmitrytorokhov@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4891064DC82

Add support for the optional reset-gpios property to describe
the active-high reset pin for CAP1126/CAP1188 devices.
Driving the GPIO high asserts reset and deep sleep, while driving
it low releases reset for normal operation.

Restrict this property to be available only on CAP1126 and CAP1188
chips, as other CAP11xx variants do not have a hardware reset pin.

Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
---
 .../bindings/input/microchip,cap11xx.yaml     | 23 +++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/Documentation/devicetree/bindings/input/microchip,cap11xx.yaml b/Documentation/devicetree/bindings/input/microchip,cap11xx.yaml
index 99d00f572a2d..e307628350c2 100644
--- a/Documentation/devicetree/bindings/input/microchip,cap11xx.yaml
+++ b/Documentation/devicetree/bindings/input/microchip,cap11xx.yaml
@@ -49,6 +49,13 @@ properties:
       device's ALERT#/CM_IRQ# pin is connected to.
       The device only has one interrupt source.
 
+  reset-gpios:
+    description: |
+      GPIO connected to the active-high RESET pin of the chip;
+      driving it high asserts reset and deep sleep, while driving
+      it low releases reset for normal operation.
+    maxItems: 1
+
   autorepeat:
     description: |
       Enables the Linux input system's autorepeat feature on the input device.
@@ -151,6 +158,20 @@ patternProperties:
 
 allOf:
   - $ref: input.yaml
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - microchip,cap1106
+              - microchip,cap1203
+              - microchip,cap1206
+              - microchip,cap1293
+              - microchip,cap1298
+    then:
+      properties:
+        reset-gpios: false
+
   - if:
       properties:
         compatible:
@@ -225,6 +246,8 @@ examples:
                          <109>,	/* KEY_PAGEDOWN */
                          <104>;	/* KEY_PAGEUP */
 
+        reset-gpios = <&gpio 17 GPIO_ACTIVE_HIGH>;
+
         #address-cells = <1>;
         #size-cells = <0>;
 
-- 
2.54.0


