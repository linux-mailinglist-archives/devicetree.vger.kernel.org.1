Return-Path: <devicetree+bounces-268820-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UC8iNtBGoGkuhwQAu9opvQ
	(envelope-from <devicetree+bounces-268820-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 14:12:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A5CE1A628B
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 14:12:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 85E34305AEE3
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 13:12:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A60B531BCAE;
	Thu, 26 Feb 2026 13:11:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Cu3MHKkZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA55318B96
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 13:11:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772111502; cv=none; b=hwt/QJSwgt+Fg05hck5ySoeA75v0Em+goaCBXqyBBRzSw43iQ/6WdxrOKJxGKxGc6qgGU/cSG0hFpYYeRD7/0t6vyIlmZmTI2R7RkQqrLimSFVA7kUU1CGGtS2AvMukBIJCi20D0+NG0zutMiEJChmn59TpldXD1Pp8At5y9SVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772111502; c=relaxed/simple;
	bh=uM7acMEWg9xtVde6an/R0rIMKgGj7N5BbTvZVGi3OsE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Ozrj8s6w3HuHOHScHj1bzPz+PQRB3T+uNr5phYf4Joyh/Yqx3m9bQXGJn67+yrvOTfOv1Rf05wV9APgifRjof33Var3M+r8r48bOq7RIhDBv+cQyP5ioAvFPdrherCgLtqIrp9OcHfnt0YQuMwzAHtFj1XpAjL4KGjKsK5Xgadg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Cu3MHKkZ; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-b8f992167dcso107170266b.1
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 05:11:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772111499; x=1772716299; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nnfas49B5o6rQmk/3s9tmpPhHSMTtzj52htjuhnyrV8=;
        b=Cu3MHKkZVtEB65OSPnmYD70WZBW0/GwOGAgzIjAw9Sg/wo+MrGfXwNXXPa/uEMx626
         XBc/ZpEXuN2nImP08y45knBEV/hNKxm2kJiTsC6Q+R5+OfH3RiXPobBLxX66eFW64UUu
         oQTtxboW2XrDaczXM/6Rntb+8slzR5U1zVKc5H1MtbiliNjSkesTYSLaDJmXkniWPliS
         BC4Ezx9GKQJ67NtnWfabkarJ+y+ML5k1xZl98jKJoWdjm13PZly5qC7UX1OcXVczfHhZ
         nkIJSGJkpQu2f+PsL1F19XXs6njH49Lv7oQ4RCDqLuIhAjBLF9luFLVoTvYG5KUVBsBh
         QaSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772111499; x=1772716299;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=nnfas49B5o6rQmk/3s9tmpPhHSMTtzj52htjuhnyrV8=;
        b=u40NDhNWaz5muR+WIf1RreiUQ0sIL0kOMrJQU/sxgWDRCmgOMTPDlMLNnjJSv4wNnU
         CccCor2FGZmzXycaPhZYnZw0P4B7rQ1W+cljVsbclOPFRcFli43MFBRiti8iFjCgN3St
         MmWvFq5EtJHoKc8EDEkcNaLLyPrULpY7NSqVOmh/KT62OL0wOj/H6s46cLbqnt1zLzbo
         w73DYzuXkZTcr/5bkQOphw3jwQklAphOJp2N3nvfd1zX4Wf9fslV5VHiY61c3qM+G/M4
         6eAs7qq6SVO8Ys9mHxa7ZPqlWqftMUTH5KippHkJq5vo7U1Uwjjv2Ym8HND8CsQfK8UG
         S3wQ==
X-Forwarded-Encrypted: i=1; AJvYcCXC5XgVBrpIsCkNTCvmhOzTqg7xumYHiAinrrBypCiKYTQJIqTwzAf4WsbVg7obC3Cm02soGZRjMJSK@vger.kernel.org
X-Gm-Message-State: AOJu0YwgSOlvlAMXCSMtHYpv1Yl+8mkBRO9Bfp9zDbv/SWa6QWk0JELs
	Ejq8CHVl2vtEfFypupKYAhouKBZ6LnK/0kTaxa3XFumZm+csx1V+vadonKqkfmkf3E0=
X-Gm-Gg: ATEYQzzgQ+mLRRzdKQCZABck+KVDDnJ2mbYprcN9qXeOEqBDlnOEaaSGXb0cV7OP9Wc
	QNnSxmI/g2WqeAOKCEbEynYTpwpnXDdLGmYjzRHZbQcxZbmZvy8Aq/0dqqftH3vjaK9AGktRsqp
	8sLNq2i6odNcAitBTbtXnauARg2CqpycSfl9CGVaDo5QTXFScO2TdLcbOc081wY1C3i7GJA2KgL
	Uz4VkI+UtwNIOIpB+M7IYpQWwI8cIv4hDQ6AEldVSw0xjBWbC7EzXXHFEO3sUKi0EdFP0yB0VOO
	u/Btya+IENoJ1+2zdoAkVoz+E4s1OvRSrD3G4etvb+iAnrFlvd6boaMtbEgxJfX1kG2b9+mnnGd
	ZlBASdpG8rUBcMvrxjjdY1vbB73esftRs5IjbCWxBFJ69Nvivx55eAuDMaHbOZlLFt1J5XhhUE8
	RCAstDxkgrFNYw+X1EC1V2TSKDaiz94enOPABMEVOEfGY58S+tCMJbAZs7OirRL6DJiaf5o7xLS
	iPYRXL5KKnQyQF72uUGWkNXjgOM
X-Received: by 2002:a17:907:982:b0:b8a:8537:e399 with SMTP id a640c23a62f3a-b935b9324d7mr149288166b.48.1772111498522;
        Thu, 26 Feb 2026 05:11:38 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b935ac73d2asm55125866b.26.2026.02.26.05.11.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 05:11:38 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 26 Feb 2026 13:11:36 +0000
Subject: [PATCH 02/11] dt-bindings: power: supply: max17042: support
 shunt-resistor-micro-ohms
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260226-max77759-fg-v1-2-ff0a08a70a9f@linaro.org>
References: <20260226-max77759-fg-v1-0-ff0a08a70a9f@linaro.org>
In-Reply-To: <20260226-max77759-fg-v1-0-ff0a08a70a9f@linaro.org>
To: Hans de Goede <hansg@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sebastian Krzyszkowiak <sebastian.krzyszkowiak@puri.sm>, 
 Purism Kernel Team <kernel@puri.sm>, Sebastian Reichel <sre@kernel.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Juan Yescas <jyescas@google.com>, 
 Amit Sunil Dhamne <amitsd@google.com>, kernel-team@android.com, 
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268820-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7A5CE1A628B
X-Rspamd-Action: no action

This binding supports the vendor-specific property maxim,rsns-microohm
to describe the value of a shunt resistor required when measuring
currents. shunt-resistor-micro-ohms is a standard property with the
same meaning. Standard properties should be used instead of vendor-
specific ones of similar intention when possible.

Allow this standard property here, while also deprecating the existing
vendor-specific property maxim,rsns-microohm.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 Documentation/devicetree/bindings/power/supply/maxim,max17042.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/supply/maxim,max17042.yaml b/Documentation/devicetree/bindings/power/supply/maxim,max17042.yaml
index 055d1f2ee0ba..25ea8e19b980 100644
--- a/Documentation/devicetree/bindings/power/supply/maxim,max17042.yaml
+++ b/Documentation/devicetree/bindings/power/supply/maxim,max17042.yaml
@@ -31,7 +31,13 @@ properties:
     description: |
       The ALRT pin (or FG_INTB pin on MAX77759), an open-drain interrupt.
 
+  shunt-resistor-micro-ohms:
+    description:
+      Resistance of rsns resistor in micro Ohms (datasheet-recommended value is 10000).
+      Defining this property enables current-sense functionality.
+
   maxim,rsns-microohm:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description: |
       Resistance of rsns resistor in micro Ohms (datasheet-recommended value is 10000).

-- 
2.53.0.414.gf7e9f6c205-goog


