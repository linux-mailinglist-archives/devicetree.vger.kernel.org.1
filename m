Return-Path: <devicetree+bounces-265176-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GIHwOQEajmkX/gAAu9opvQ
	(envelope-from <devicetree+bounces-265176-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 19:20:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 761E01303AA
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 19:20:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4959230C4515
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 18:20:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F064128134C;
	Thu, 12 Feb 2026 18:20:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AGxv24LH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A87E427BF7C
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 18:20:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770920425; cv=none; b=qzG1CH8NqBID1RfPwW1mKKKYeafMIMMqT3bkOWDuRjyzjAomb805t3UF9IDOq43NVgKl/S+TbnCRfCxhSA7Sa9Azez7mFm5wCWYTZ1ICaopSxMK+PMy62OM7LqTGNYP+9ZsRgGXTMU87biLUqXVLZj6gTac1Y8wC/ZIIUJqBOQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770920425; c=relaxed/simple;
	bh=cih/c/q4/7Hg68boWh+HLVoGUUsEO5l70x0eaBfgVYo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=g4N0HL8NOl1mgSLfwPGRFIiUoOJxKpQOanJMYrEsb82ALEQ6M7chCRVm7CrGoM5RMo/MMaNR3xLJV7PegDM9XNQzmwK7k2G2Zq0ymglpiw3LdybrrDe6J1asoR2jJ1Mo7vkjNYOieVnc9NsPGgZdDyxdpHlI7/vVR/DDA4TE3Jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AGxv24LH; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-48068127f00so1102155e9.3
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 10:20:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770920423; x=1771525223; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Bprsrllva8d7VsynFvqVLjqVpekx6Ne+uNmXQ1YCZFo=;
        b=AGxv24LHx2yj5QQEV7TS74Wl5bLLTLONGJhZr4awWP3v5sdhvNkEnCGzkxpTkG0BtN
         Dv3V+XE/MZaVrLsd4i40PnWAtDZsM4UUFFCmIJfAndP1jcW/1fFv4VcgGt/dXH+nUda5
         xqM2eDMDdnUnKiFCglfPbAnCe72KE/Eo7uAM4vMkuZUj/ezuRfl+Oz31QXUhlbmnnXH3
         Ao6hSnwdYRUbKK7pMBzwTrRX9gwNvrNGElzpJEJMv9rHwNr6IOLJZQEWpqlghqca+L5W
         2zmlJfl6jG3b2H5lgUoFP8MExzX3Y/9609RUxtU2b9GU4eW8nL4FMrDv5SAYvrcQ/oPG
         N+5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770920423; x=1771525223;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Bprsrllva8d7VsynFvqVLjqVpekx6Ne+uNmXQ1YCZFo=;
        b=WBeGOMYpnmBFc7UX4Ensz5aUNvgQd1yN4gZt4Hht6ru8Z49GrCrAAi01CfCVw2n/QU
         gSBAbKS1HCnFpdvw4uZrOFEG1MaEBOwSryS0NOm1kH0Dzr+Lll1waPftD5SM8eDm2DcH
         1qnblcqvBb7/O76LDDrpjP4KS0YEmsM3D6oQjqfzDUOQI23Tsgyqnop0Dqq1jCNxs76m
         qSZhKjgVmJoH3TfgA3FKZ9SLqd8U6qibj4I0jQZI57gUo87gMof5QDxYD3qnOi1wbJv9
         QnG1uSy5YtY6LgHMh00OQaP90dQAeEry3dXp5gKbGoL5mNoodx0/TeVwPOzY1nY/1RO0
         RRIw==
X-Forwarded-Encrypted: i=1; AJvYcCVeWY4OR7SMUkozfgyx9ZbJ+WD5xkuLl0i0eH7sfngH3hmLOOU1GrVf4nrKSmir9+ZI44JweIYtRFjW@vger.kernel.org
X-Gm-Message-State: AOJu0YxicS5eBjGuovUShUMtLerfHZxyUm03jHqOXtbwtITzr0Ul8gM9
	I3ELh8HkvS6WfCziutnD15TLdpTRo/Pf21OOmkR3Jur0Qs3TE4C/5MQo
X-Gm-Gg: AZuq6aJhT4Wb28Ft1GEgqeGGkX++V53v7dOSBX7W33izXHwm0aUNer81t5Apk5fWiyy
	rHPMHNDxhuViOxphnw2aiI8u8c3dRVx3FKm8OOPjfIOYa/k2AH2UJ/RCJbuUvacyt3eOJV5zikX
	Zj5ZBgmyOUij51aF2IVPQFknxR/GEoZsqnfZoZeWLXE6eXWgrO7SKwznqu/21TD9KpDQOSLqEpp
	CIOfUCjwlOK3eOCwitdGB8XzG3jdCUwqttRnWwqjsTr3AkwfF7DA6G3cDabWjjxjO0R0M7nQ+kY
	txOKKf1tWoj+nwgqQ7E5Ph6A76FVUWLrRS6Afhsis1lAvfsJa6ebCeiUWA6aVeA47Vt7zTxMrij
	httlChHbO2U/rQN+p82/ZkO/PnbZ4xfJ2JBS8Db1J3VcrW8ye29j0q0prtK594U5JoMwNCwCH+E
	Onvwb2V3huInou9gX8TT2P4nJfrzNqFg69GEKybUKS1DexSWY857PmJYZX+vIIzuuZ
X-Received: by 2002:a05:600c:6792:b0:477:b642:9dc1 with SMTP id 5b1f17b1804b1-483710368cdmr371995e9.20.1770920422733;
        Thu, 12 Feb 2026 10:20:22 -0800 (PST)
Received: from db07.UM6P.local ([196.200.180.25])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43783dfc2b0sm13239933f8f.21.2026.02.12.10.20.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Feb 2026 10:20:22 -0800 (PST)
From: Taha Ed-Dafili <0rayn.dev@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: David Lechner <dlechner@baylibre.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mentees@lists.linuxfoundation.org,
	me@brighamcampbell.com,
	skhan@linuxfoundation.org,
	Taha Ed-Dafili <0rayn.dev@gmail.com>
Subject: [PATCH v1 1/2] dt-bindings: iio: dac: ad5504: add output-range and missing gpios
Date: Thu, 12 Feb 2026 19:19:54 +0100
Message-ID: <20260212181955.42724-2-0rayn.dev@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260212181955.42724-1-0rayn.dev@gmail.com>
References: <20260212181955.42724-1-0rayn.dev@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-265176-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[baylibre.com,analog.com,kernel.org,vger.kernel.org,lists.linuxfoundation.org,brighamcampbell.com,linuxfoundation.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[0rayndev@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,baylibre.com:email]
X-Rspamd-Queue-Id: 761E01303AA
X-Rspamd-Action: no action

The AD5504 output range (0-30V or 0-60V) is determined by the R_SEL pin.

Add `adi,output-range-volts` and `adi,output-range-gpios` to describe
this hardware state, using `allOf` to enforce mutual exclusivity.
Also add `vlogic-supply`, `clear-gpios`, and `ldac-gpios` to complete
the hardware description.

Suggested-by: David Lechner <dlechner@baylibre.com>
Signed-off-by: Taha Ed-Dafili <0rayn.dev@gmail.com>
---
 .../bindings/iio/dac/adi,ad5504.yaml          | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/dac/adi,ad5504.yaml b/Documentation/devicetree/bindings/iio/dac/adi,ad5504.yaml
index 9c2c038683b4..3e832e501b0e 100644
--- a/Documentation/devicetree/bindings/iio/dac/adi,ad5504.yaml
+++ b/Documentation/devicetree/bindings/iio/dac/adi,ad5504.yaml
@@ -27,12 +27,50 @@ properties:
     maxItems: 1
 
   vcc-supply: true
+  vlogic-supply: true
+
+  adi,output-range-volts:
+    description:
+      Hard-wired /R_SEL pin state. 30 V when pin is high and 60 V when
+      pin is low.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [30, 60]
+    default: 60
+
+  adi,output-range-gpios:
+    description:
+      GPIO connected to the R_SEL pin to select the output voltage range.
+    maxItems: 1
+
+  clear-gpios:
+    description: GPIO that controls the /CLR pin (active low).
+    maxItems: 1
+
+  ldac-gpios:
+    description: GPIO that controls the /LDAC pin (active low).
+    maxItems: 1
 
 additionalProperties: false
 
 required:
   - compatible
   - reg
+  - vcc-supply
+
+allOf:
+  - if:
+      required:
+        - adi,output-range-gpios
+    then:
+      properties:
+        adi,output-range-volts: false
+
+  - if:
+      required:
+        - adi,output-range-volts
+    then:
+      properties:
+        adi,output-range-gpios: false
 
 examples:
   - |
-- 
2.47.3


