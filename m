Return-Path: <devicetree+bounces-270022-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SPz8IpiSpWmoDgYAu9opvQ
	(envelope-from <devicetree+bounces-270022-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 14:37:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 14EB41D9EB8
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 14:37:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 977E33054CB6
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 13:32:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 774CA3FB060;
	Mon,  2 Mar 2026 13:32:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yLGBhyBU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 942293D6CC9
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 13:32:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772458340; cv=none; b=I95dWMkdKCihhVAyInsx42qkXbZOo3wR/fpNzzzxodL61dOqCiBwqx+d6baJptrYagsEvrE9sX+llZYqYtz4quoCkkHOZMVPF14K6ofhBWblK2cobpQB5fP1eBmyareLHPhmcOnjfztE7G6+IsCM4NH8dMH2jL+hn8ZOMtHZDtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772458340; c=relaxed/simple;
	bh=iJGqesgR7MlveqxFlCsVL9U0vJy5z+2BB/KiYiOfDGk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VIF1WqiOGNGzqd0imxL3ZGJ95jSRFfKZPs4Y6Jm5ZYwgaHVtkVbkDj1DJpNSO04C6wNjq5QejyGzcOFHHWpDjPLOi5R5BZvfHD3z/1OxS9+PYEPZTUcl6ntS+lVd8FqpmlwVSAD7SeGpONzK6JdS6Qv3xZilTqlIFk6+dTX0ZTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yLGBhyBU; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-65f71ed7c6cso7577741a12.0
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 05:32:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772458337; x=1773063137; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uxDE/h9r3IL5ikz6wtRHyU9C69/csAcT/xjQxm2w5X8=;
        b=yLGBhyBUDP6PDFUvR4w9DizPd2ddUN3z/heixPvjbFlAYfAsdJBpAVJK2a9K3AAQAH
         gLE72lrkEbnrFOyEAUMc7ezO7JuNE1wIAMv1VJmyHIZUBtMWE97ceBJIQRKNo/Is+qMg
         v2+Tmf0OWNOsm/uPRlLML7N3fK/DXTYwsCecZ+LcbA963kr/G6Sz3zc558b8ChDCAofQ
         4Uk6GHNTVrZSB9tIq7Ty4rg6ppJvth8hcFIX70m4tm8u+PYT3uiRaN4ntsx3zej4CQhp
         5w0ho1UtqZuaAAYhT5iVZYkiM0kVYjRCIOiquhKFOk0En89P8Qr3zrSXrXqBhmw+MH27
         F0cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772458337; x=1773063137;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uxDE/h9r3IL5ikz6wtRHyU9C69/csAcT/xjQxm2w5X8=;
        b=mXjjN9twmzSYjXz1M4gdrZohaw3pV1YQfzObGDBPUk0rIrsUjW8oIfKowNWzPzytKR
         /iVmVNasJSKjzbeB888ddPFV3kUElDS2UFZl0184kPGcqVFk6VcpeC6o8nMWZCwIqT7O
         3grSg+Kv4jpNSch+v//AGD0ohcU+6knTMMNaTY//g7BpdR9WXIFoedV4jiNfk9qhyL42
         DTnZndOXnamLoDgDWsBnMafjsk1JcXE3kF1pP0RQtB10DI6ndsPqGTtx9V9lOmN1D1Ex
         k4BK7QUdtO2bgE61qmX6gK7kw7TCHjfRWdowAELlZt56OqJyWPERmG12X+fzfOhwBmQR
         jA8g==
X-Forwarded-Encrypted: i=1; AJvYcCV1Kw2hwmj/LKMZH+uyePOe2+oVvsIxST4k8oJS7bwsjP3xXq2tsVFKS8zo9fiTpzctEya9UTWp7pzF@vger.kernel.org
X-Gm-Message-State: AOJu0YytigPg9EBi5VGlrE+fNRKCRzl4zoOxQeGH8laOG66fckClD4cw
	B80a/XRN3rfLLbWyrTUhNL2SHKB0sLZD0v/u7GM1SsPbNyT5Gj/bBVqSf0hj/nQJGK8=
X-Gm-Gg: ATEYQzxXZv1RJiTSYRVGh4SOPuqQ+DXiZd+qZvyFt+U62kDEt85vqkY7w424Lg6x4KI
	TAJRaZ1XBkoi9pMR9MXNOuc5UQ6ON4QRZnZZAFY3c7d0FJG5Rbf7VSkW7smeTd5o3Xh8axQnZYl
	4sUPIVK0UZ+/0rZraq6HJGrXSIfKBC67KdQv1Uy5EPW2j+Wr/8gskbu5wYhxwEmBjaWh+6Mm766
	8uIC2pOdkfiYjo/LBLYQdHk3UwpFZgJumauiFJmjiAYRdQB5gud7kQRrDvp+htA1EKTvvhCH4vq
	TWjw6q2+iZKWPyW/sU/KxWNyTJx4Q0Kyyej2ksJcEDGam7fBwm/hO8XHjLEJUc/NmeUtQDkxwMb
	PDJCaV2WmPIdxTS+E2iK5u5OBmSjj0WfukJAc/ELf62mnPKlTQjOFyqXYJ812DnruFyYwflJmSL
	pCR6oZTBEzzdCbGDc7vznGs7GApuGXbmKesb7aO3PEN65I97Og2t84+IIiVhBtvWuqE7XRlAGyU
	FCcM4bE7EOk/rI=
X-Received: by 2002:a05:6402:51d0:b0:65b:f30a:1081 with SMTP id 4fb4d7f45d1cf-65fdddef45fmr6870024a12.26.1772458336913;
        Mon, 02 Mar 2026 05:32:16 -0800 (PST)
Received: from puffmais2.c.googlers.com (221.210.91.34.bc.googleusercontent.com. [34.91.210.221])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65fabf6d1c6sm3282988a12.17.2026.03.02.05.32.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 05:32:16 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 02 Mar 2026 13:32:01 +0000
Subject: [PATCH v3 02/11] dt-bindings: power: supply: max17042: support
 shunt-resistor-micro-ohms
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260302-max77759-fg-v3-2-3c5f01dbda23@linaro.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270022-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,linaro.org:mid,linaro.org:dkim,linaro.org:email,microchip.com:email]
X-Rspamd-Queue-Id: 14EB41D9EB8
X-Rspamd-Action: no action

This binding supports the vendor-specific property maxim,rsns-microohm
to describe the value of a shunt resistor required when measuring
currents. shunt-resistor-micro-ohms is a standard property with the
same meaning. Standard properties should be used instead of vendor-
specific ones of similar intention when possible.

Allow this standard property here, while also deprecating the existing
vendor-specific property maxim,rsns-microohm.

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
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
2.53.0.473.g4a7958ca14-goog


