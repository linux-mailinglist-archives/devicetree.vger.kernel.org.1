Return-Path: <devicetree+bounces-265101-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cOR0ItfojWkm8gAAu9opvQ
	(envelope-from <devicetree+bounces-265101-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 15:51:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 21DEC12E8FB
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 15:51:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DE23030E2A0E
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 14:46:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38DC835CBB5;
	Thu, 12 Feb 2026 14:45:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Tqtwan+M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A96B35CBA5
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 14:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770907556; cv=none; b=Z7KYdMN9fBTuQbgHaNQbaPsUsl4JwVjazuXmJBvldcaN+JY14izPzdV7PEBI8pUMV+g/vyrUE/kkZXjoHNurkf31bD+CZNZM9VgK5vX+OQTGYPGSuaRq5pVfqVe/ZOgAUVeGc1lupVEfHp7yyokcvU9sgaTnAoJZkZlnX3qy2OA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770907556; c=relaxed/simple;
	bh=lazVxl8WJKg/jltTmr7HFjMBJRcsa2eV7m49E9VAdAc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=oaCxjEynExoEmx9u4edVXp4nq7kcMvaDmxMBDEANqFj4AwhZ+12A9tdUwHlbbZPggJ6D68YEwcHwT0jTX5gg6bW5yBeyQ/JuJQI1gA4FpE+ITZ+N34MgOdtDYrPMEkzt9NfMKam3BBMIjQhRTyz0QFJZmgvGWLcbJ+7/oMHcKyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Tqtwan+M; arc=none smtp.client-ip=209.85.128.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-794fe16d032so30374327b3.3
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 06:45:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770907554; x=1771512354; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OiO+nVc5IO8Z6Ent3/Ayytw2yL90H0wfU2AM1rR7mW8=;
        b=Tqtwan+MxuRKTgh2+k0wpds8w/n7bD7UIZaxveWzj2zYi3Q3i9ZRfEBBmwp+7t9ylO
         HPoW92/P0kAek6NBLT/7ygOxMaMA+GB2AhZBgopJN1TfG60RwI464ic6e2QX8kYIiiIE
         NKEDiGDmapKWQtotggWqFH0ky/kV8jTEeOdMvY0ym1xLZRuUspjXkMs3pgHs2eOX5PBQ
         jW4+jHyh6FMQD7weZiUacoL37vtv4I9hVoBUoWZQfBI7v4NKsblTFO/nPh+o8MGu9vUs
         BjPYpouCZuRfJQbHSHsdriTiywsdUubDfLPBkvUTS68HMb0vRFY4+MQOMPTpUVu4FISh
         ReCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770907554; x=1771512354;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=OiO+nVc5IO8Z6Ent3/Ayytw2yL90H0wfU2AM1rR7mW8=;
        b=hUpFKEvx3wWp8wsVHWeEzCs7J4JfGHCSGQADg8N98QgP1BBcw7p6RKvCjVKRPwStMt
         b1wBucRaTXxDA0ByiXdDL8MWa5pWkXKMs9noPKz/1ROHjNEkqdg2ooH92DtZX6Ygun6v
         pHDOROgrd7T070QgvSJXfWAgmtA8doedp40FC8uaAPpa4zLMxzkXEllTTvati+hVIWvE
         Qa9P13edk3nv07+iUG6Hbo9muccsbwzx/xvgk7kcL2YJZQYwTaIAZ4kutUh1b1inf596
         LV7SJ99h61sZXT1+hMnu1yTJIKffGnwPJzFDnmqCxqL3i7jIO0iIPuWTV6mhTInUZhy7
         7BvA==
X-Forwarded-Encrypted: i=1; AJvYcCWIUMNotb+IBBPknwgkiqVhgkXM2S5mN+/FV7iWhR+vCw5DFu53GLhuvvobXqDagqS3Dz/IeBSxIfc2@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8wvosyiEs5+qz9Lq8b+dhl+yY33CCu/q71wKpxJA1oxKPHTxY
	21IncoH10jPdm8iGSATAufUqGwyx15pDDvBXSb3uRdhIDzVVp6B239Ux
X-Gm-Gg: AZuq6aJWihnNxpnlT7ARF0e/evUd0dstlJuTk9hCbp03UZPC7g4bmr/gnCpLZrTmhMW
	HJr6tL2huD/8PKDH2r3xvzOWpuypJIOADRf4fe3nkKvtWtxZMk+rCAyMU9zUivUoVW6upihVURp
	TiiKGlUPISg7zpfsJDOHtqp6E+6FCtYIrO7O5+P22f0A7+g/vl9lFAhKv4CglhR63Wo5FDyfa07
	hAvx8T4D65zLXK9af4ZYp4i9D12adwqffhTPMz77GlpAdHNgM7cA5OVcUai6RTDsIRYWVPZNh6Q
	5PVS7mK8I32UXAAMD1Vmnre+tuk085f4Oxz+NNeQMxW+kwYbJ4i26MSDzNebki54FNyxvcgvBWZ
	yAqBtyw/L2HiBexmusPuq0Ygkb+5ECKLORfZA5oVtQO96sa6LdwI5Wihln9FJkWgmVHJytcUI3c
	sdu+bCls0w6D7H9jzUESGX3l/9Nw==
X-Received: by 2002:a05:690e:400e:b0:64a:ee9d:8b83 with SMTP id 956f58d0204a3-64c081ea5a8mr1592504d50.41.1770907554038;
        Thu, 12 Feb 2026 06:45:54 -0800 (PST)
Received: from [192.168.0.40] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-64afc83c201sm4897318d50.3.2026.02.12.06.45.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Feb 2026 06:45:53 -0800 (PST)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Thu, 12 Feb 2026 16:42:47 +0200
Subject: [PATCH v4 1/2] dt-bindings: iio: light: vcnl4000: add Capella
 CM36686 and CM36672P
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260212-cm36686-v4-1-8f587d4a72bf@gmail.com>
References: <20260212-cm36686-v4-0-8f587d4a72bf@gmail.com>
In-Reply-To: <20260212-cm36686-v4-0-8f587d4a72bf@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Peter Meerwald <pmeerw@pmeerw.net>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org, Erikas Bitovtas <xerikasxx@gmail.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-265101-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 21DEC12E8FB
X-Rspamd-Action: no action

Capella CM36686 is an ambient light and proximity sensor developed by
Capella Microsystems, now a subsidiary of Vishay Intertechnology Inc. It
has an I2C address of 0x60 and is fully compatible with an existing
driver for VCNL4040. Capella CM36672P is a proximity-only sensor that
is fully compatible with CM36686, and therefore with VCNL4040. Add
compatibles for cm36672p and cm36686, with a fallback for cm36686 of
vcnl4040.

Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
 .../devicetree/bindings/iio/light/vishay,vcnl4000.yaml  | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml b/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
index 4d1a225e8868..2ba4d5de4ec4 100644
--- a/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
+++ b/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
@@ -18,12 +18,17 @@ allOf:
 
 properties:
   compatible:
-    enum:
-      - vishay,vcnl4000
-      - vishay,vcnl4010
-      - vishay,vcnl4020
-      - vishay,vcnl4040
-      - vishay,vcnl4200
+    oneOf:
+      - enum:
+          - capella,cm36672p
+          - vishay,vcnl4000
+          - vishay,vcnl4010
+          - vishay,vcnl4020
+          - vishay,vcnl4040
+          - vishay,vcnl4200
+      - items:
+          - const: capella,cm36686
+          - const: vishay,vcnl4040
 
   interrupts:
     maxItems: 1

-- 
2.53.0


