Return-Path: <devicetree+bounces-269089-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GIkIGodEoWkirwQAu9opvQ
	(envelope-from <devicetree+bounces-269089-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 08:15:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 518751B3B07
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 08:15:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B62D5303D398
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 07:15:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C660346E7F;
	Fri, 27 Feb 2026 07:15:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="O0xMzaZc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F82D1D6187
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 07:15:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772176514; cv=none; b=pdaIReZiMXNpdOKFxZlCP/bMq+JhXceaPIST1hE+82oEqRB6d+JztgDLGwWjn49nBu3dTuq5VgMDxRcTumzls9Lgainc7QsmBSQJRLYyGad7VITd36Hx3niMoOXUrQfGZjtwIi7EqmW/HeirIIjyqjLNFOZeFepjJEOr7ardbUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772176514; c=relaxed/simple;
	bh=3JVAjTwT3ohLd4vEPh2z093Td9rgxW04VPfzBtVCgZw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NBbwNIoSK+X1G3wM4y2NXcodokdl5kUWank0vztD0O02KRhIYVfS6wrNjFPF44t0CFit/jKeZ7ThKuwFKkE5xFkK9stvEQ/wMZAMSNfuHRDINMzfu3cYZ2DaLua+vp9DX41uLJrscrk4LKlFNbhnFrEJTRREkhmarrFHepowQV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=O0xMzaZc; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b9362ddbee2so195210866b.0
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 23:15:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772176511; x=1772781311; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cVZfNr8fycE2VrenjkdzC65ZyvHlcR25n7A+WBQPeq0=;
        b=O0xMzaZcya6f9y+Bm3XLvOVDdnIz/z9Eu2xZzHFYTDkXYHSKknvXyfHwK9OwJ8UEEE
         mcXtNSasw0aqtsk9EfuWfzkIF2Cr8RQST9S5qfOmVN5n3lGKAOg+ZrXUc/bHcylqFs/X
         u/k3hAbjVHLEwv5DQrD/LGtk2LazPm8669zSHfIt+29xBfPmYQPOcDoaRxuSiohAZh+b
         FlWy49/D+J+f4w9yVfdtDLvOpeXzt3/55o7/x9smLnMGpg9lngSVcTEwLWz48CR0zloj
         N+A8dNXwXtj/Fvf/qkFVj1kBz7kAtEodlognniKd88Wgy6POH5QkF1TRbDgGBFuepHN0
         h/iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772176511; x=1772781311;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cVZfNr8fycE2VrenjkdzC65ZyvHlcR25n7A+WBQPeq0=;
        b=HTXs61RDbdI6DYa/YImslq/rC2c7BdUsbeg5AJE34/sz92ZfLLO4NaKpYBIWAPh6Z4
         SXd+DLbay6IBo4PdV4rVgFVBobBVhNiGRVVgaaEwZomEtESvOAei2+EO+1nHlWqJKjud
         n9UuURGSdxSY3+QV8z4ef+I/y+CYeTnmhp3d4eJBsgObq1W3ROyj4/r2717mpGq4hde2
         JiA3drMOESjECOcMJ3GkPTvlANehzT8grpIPtHWWeeqCJBUW7aIu3DkmTgTxBu1w8H+1
         5wpGxy24FPXUcoj83gv19zarIYRbbNDi2J9HItLTyliIJ8pthZFITRvtt/iIej3enib2
         qY2g==
X-Forwarded-Encrypted: i=1; AJvYcCVK0rWMivPjXBkb/S/mtJPDT3UuN5x3+rMrmvBMHUQVG5Q+1giqHLROkM+z51C/moOT9QGKwuZAIDl0@vger.kernel.org
X-Gm-Message-State: AOJu0Ywe9scp3KLf3iXzl2jqsIG0RluVvon0YEXJ6FcH2GxEESldkhrv
	1aHYK0mnv+BV59u1YPCw0nBElejXsVd8DaC5TB/5A4eyvX7w6RhcCU7vfQECLwa6LQY=
X-Gm-Gg: ATEYQzxp8BwwG63g/E9rcWXOCeUQvo8mH7/mW4IkPyM24RI6oBvJhQF9exjWXCdlDKi
	TkAOK8yJKceQJkY3pERAcfxmztbBR4NkArJL+pBzsX5hF+sB2UYhW5ou9OgYCu0gJ+dVR4kuKXb
	qcq11WySMe47mfXdRcHBMuo7tE0fEoH+wdDQhjkPi0xjp5WRgPIoTzG/cAiqnFSWfsVuPb2lBK6
	pC58Q+X5lHWapwS0+HI6JQ+Q8s7oRf44TJmCl6hMrFu0mF5/aby978/y8gq0qSe32aUBRX+T8fG
	VhuqeTqIFz5nv7nZlvS9tlVf8k7nryoqoB+gztH3m6D+vveFF7pG35seG7NKiRsgQQrB9XSw/YU
	XRzbk2noTdfKl2tJBnmBWJa24XvoIW6ESq1oSELE2RzUeDazayT5C7NTrYAFgANmfMiDi3AOkbs
	2pRwgxsvkAixJYDAyapp7m7FD9n6r0PMp5JPunvKrfuUpTXC3pxqI93BYZZNw+LL4v8pAAa/6x9
	ShXIw0KfRdYDuEI+w==
X-Received: by 2002:a17:907:3e9c:b0:b8e:7d43:edd7 with SMTP id a640c23a62f3a-b9376510131mr98725866b.30.1772176510504;
        Thu, 26 Feb 2026 23:15:10 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b935aeee867sm124205066b.66.2026.02.26.23.15.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 23:15:10 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 27 Feb 2026 07:15:07 +0000
Subject: [PATCH v2 02/11] dt-bindings: power: supply: max17042: support
 shunt-resistor-micro-ohms
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260227-max77759-fg-v2-2-e50be5f191f0@linaro.org>
References: <20260227-max77759-fg-v2-0-e50be5f191f0@linaro.org>
In-Reply-To: <20260227-max77759-fg-v2-0-e50be5f191f0@linaro.org>
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
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Conor Dooley <conor.dooley@microchip.com>
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
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269089-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:mid,linaro.org:dkim,linaro.org:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,microchip.com:email]
X-Rspamd-Queue-Id: 518751B3B07
X-Rspamd-Action: no action

This binding supports the vendor-specific property maxim,rsns-microohm
to describe the value of a shunt resistor required when measuring
currents. shunt-resistor-micro-ohms is a standard property with the
same meaning. Standard properties should be used instead of vendor-
specific ones of similar intention when possible.

Allow this standard property here, while also deprecating the existing
vendor-specific property maxim,rsns-microohm.

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


