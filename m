Return-Path: <devicetree+bounces-270023-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uFP/EqCSpWmoDgYAu9opvQ
	(envelope-from <devicetree+bounces-270023-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 14:37:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B780C1D9EBF
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 14:37:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 27D31305A96A
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 13:32:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34D4E3FB077;
	Mon,  2 Mar 2026 13:32:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lWwG309B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D7B3FB045
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 13:32:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772458341; cv=none; b=GNsykpngWGvC0oN4+mrjVppfJZJ16PFYBpjEoEORLXiDkNQkNtKOXvv0Z7Gggjgpd1i7VFiUFIU8H5QLkqJEf4bGDv4CCFcHm024s/Y5aH1lZ65OInrPTcphWpph4L7axCsEB5FvJqqCQVjLIn4Kue+3qH1QzeOiddKKh/FT/UU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772458341; c=relaxed/simple;
	bh=tN/WXJoP7ER+xNNQ3wof85nYFtwctlJaEphC1C0qnK0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qkXYVdhisWeKgFkiHRZLFyHTqHNjAJE/Qe38/b1WCNzsUhsAMNGLPXv390OriMak5SsjuEaS4OHDGZV5WcjtTn6SOKFAkh73vB5whZo4NSmHBluiqde6SZmYuZw0b8QlZqN0NsQOKMrGPmUqzm85lhjzgS3Rzf6YzRmq+bY69z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lWwG309B; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-b936331787bso709516766b.3
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 05:32:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772458337; x=1773063137; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=46zMNmq5bUi3mZ6HnIKgyhoL+nelJFQRkft5kdOS8cA=;
        b=lWwG309BsaBW5FKFuvSWcxIRTgUdVr2yTDKggr4mLjnHMl87iwcGTItJ9u7C6kuUvo
         H+JauiJo+kc+XLLQW47gjvQVSxSjrKlcPX4xH2bDDEOPaSed3vMfJUVwp1tP4AsR1PwP
         JBvw6XacVVdHTEyFxgQKe8iHXFSPDsSm8a+vm7EOH9yxy0v+/Xqrjf8V+K9oz1wGX2Vm
         /qc0pWa9T2AUgqtjt7/md7RfGwpSGVDNbmgxzRV6TT7Id1kUX7dXOlTUvnzEFYiYMr1K
         nOByMUxcNidxf06IAfOyeLZY98LvGOHebZHZHNllZk1LSmeVGAhVSlrhAWrdfASw42L9
         f5eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772458337; x=1773063137;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=46zMNmq5bUi3mZ6HnIKgyhoL+nelJFQRkft5kdOS8cA=;
        b=hDUHaRFyZsMpd6luZbKzwWoa4wbYLIsWD1DFnJBYb34tuMQv0unZcrpcC+sW5fDv+Z
         tw9B3Rtlz6QigJMZfGP5iIZk8d3kJylaJH7zJnz3YmjVKImUZrsvEPOsKpzWYZ/NroJr
         ovluOVjo3sT9hI5vRuNKPN4N+ZT/Drvrz1I9c+mc9uJvyKl3N1XGD8Gk3S7UmCYSbwr3
         QLi5CqNcg6GWtb2zQQtEX5T/p4lx3wFT0bikc85/omWIlo8nTvmqoVyfFXq0mk+oz/N+
         GHCrbEDnSKT+LW28r1wiSVRRjGpF7jIP0yC7pgOTV++/vwPYkpzGr8P16PKhulybZm5N
         zj3w==
X-Forwarded-Encrypted: i=1; AJvYcCXOW4QDqClr8Q5wyOD4CoBenqN2ZITFP255eQA+fxiDnk9aXdhZxg6KpiCUnrGDrCPMagm5dIwuRpJ2@vger.kernel.org
X-Gm-Message-State: AOJu0YwGGTYU0qEY0+hV0dLkpzizmlu9BLaeNHuZ75RX9aU07TzHG1ta
	PfqXw4T+ul3Qaz9LhYqaamO4AbiJjBn8sav5Oxo1ttGQwroOIAlTAarmWs2JiTx8nTg=
X-Gm-Gg: ATEYQzxzDIVS+oZANZ+2VnTme6fP4MdY1R1hl5cGj75Hqdsj1ErNMLuxRj9PGhEfEkv
	2US3bg/yr52/adwB8XMCm6a4AWBmp5lHJP7BqQkB0Y8ykkC2s0O1ZOcp01rfrmINPMjWquTYxE7
	vm4hLB+OJUnaqz7nInanpUCuKuimfwxanJ2BPj6DqJIH3qxTnxSQTE04ufiRqPHA41H9L5yt6/o
	0xKKvCCiO8EuBndbmdIKKuPRjTeKEX1MrS6zpgsaAuyXdX3kKyXsNNmBlE6T9eNZtIfL7B4HinO
	Md8WKh8fAETrqXUSwWo1IDialev42RtcQLMGZXXtJ6Vd9ZM3JRGKIYzKrfZ0KHf6YOEbyP1ZNrA
	o+RihDgIv5noZew/Wo8g6D3vye0Rpk2SQBo7GqaZlGsInYIKB7BJBaQLwGf68jmTwdmnDURCoGB
	rGJIVwP0SIOnpRCuXDMK9f75zFdiOWOc1c2o/4A0yMaSfJ4NRHWbtXXnwvsz4LnyG/tajC86bMw
	Q4Txs+Cn99VFV4=
X-Received: by 2002:a17:906:564d:b0:b88:5e32:5357 with SMTP id a640c23a62f3a-b93765818acmr661349866b.59.1772458337515;
        Mon, 02 Mar 2026 05:32:17 -0800 (PST)
Received: from puffmais2.c.googlers.com (221.210.91.34.bc.googleusercontent.com. [34.91.210.221])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65fabf6d1c6sm3282988a12.17.2026.03.02.05.32.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 05:32:17 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 02 Mar 2026 13:32:02 +0000
Subject: [PATCH v3 03/11] dt-bindings: power: supply: max17042: drop
 formatting specifier |
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260302-max77759-fg-v3-3-3c5f01dbda23@linaro.org>
References: <20260302-max77759-fg-v3-0-3c5f01dbda23@linaro.org>
In-Reply-To: <20260302-max77759-fg-v3-0-3c5f01dbda23@linaro.org>
To: Hans de Goede <hansg@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sebastian Krzyszkowiak <sebastian.krzyszkowiak@puri.sm>, 
 Purism Kernel Team <kernel@puri.sm>, Sebastian Reichel <sre@kernel.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Ramakrishna Pallala <ramakrishna.pallala@intel.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Juan Yescas <jyescas@google.com>, 
 Amit Sunil Dhamne <amitsd@google.com>, kernel-team@android.com, 
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270023-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,linaro.org:mid,linaro.org:dkim,linaro.org:email,microchip.com:email]
X-Rspamd-Queue-Id: B780C1D9EBF
X-Rspamd-Action: no action

| denotes a literal (preformatted) block and is not necessary here.

Drop them from this file.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 .../devicetree/bindings/power/supply/maxim,max17042.yaml     | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/power/supply/maxim,max17042.yaml b/Documentation/devicetree/bindings/power/supply/maxim,max17042.yaml
index 25ea8e19b980..242b33f2bcba 100644
--- a/Documentation/devicetree/bindings/power/supply/maxim,max17042.yaml
+++ b/Documentation/devicetree/bindings/power/supply/maxim,max17042.yaml
@@ -28,7 +28,7 @@ properties:
 
   interrupts:
     maxItems: 1
-    description: |
+    description:
       The ALRT pin (or FG_INTB pin on MAX77759), an open-drain interrupt.
 
   shunt-resistor-micro-ohms:
@@ -39,31 +39,31 @@ properties:
   maxim,rsns-microohm:
     deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
-    description: |
+    description:
       Resistance of rsns resistor in micro Ohms (datasheet-recommended value is 10000).
       Defining this property enables current-sense functionality.
 
   maxim,cold-temp:
     $ref: /schemas/types.yaml#/definitions/uint32
-    description: |
+    description:
       Temperature threshold to report battery as cold (in tenths of degree Celsius).
       Default is not to report cold events.
 
   maxim,over-heat-temp:
     $ref: /schemas/types.yaml#/definitions/uint32
-    description: |
+    description:
       Temperature threshold to report battery as over heated (in tenths of degree Celsius).
       Default is not to report over heating events.
 
   maxim,dead-volt:
     $ref: /schemas/types.yaml#/definitions/uint32
-    description: |
+    description:
       Voltage threshold to report battery as dead (in mV).
       Default is not to report dead battery events.
 
   maxim,over-volt:
     $ref: /schemas/types.yaml#/definitions/uint32
-    description: |
+    description:
       Voltage threshold to report battery as over voltage (in mV).
       Default is not to report over-voltage events.
 

-- 
2.53.0.473.g4a7958ca14-goog


