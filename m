Return-Path: <devicetree+bounces-269937-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SOhqLTdzpWkNBgYAu9opvQ
	(envelope-from <devicetree+bounces-269937-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 12:23:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 623A01D7694
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 12:23:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8A2F0304DC97
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 11:22:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F18A36215E;
	Mon,  2 Mar 2026 11:22:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="LCeKqbO1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1959361DDA
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 11:22:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772450527; cv=none; b=a86mERzm/0AjY1p2olt+QgjIQYeE6jM2ISsL95nwU6BMItuOtMd7BKxr1YlyyMURvnVzAS1DHuNq8XRh/zZpbvaEyqznHr+82f+wtIqX+NrefwC94YNLjUxQcPJg/WTDULGCvHaDXCOC19U+PqiaaQ10MJ7Leu7ZX+lc6iEUq8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772450527; c=relaxed/simple;
	bh=oX67Uf2cuE1+33M2za+xbEhq+YUjBZnozzKI30MQNUA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=m87TV18xFamhdsB+nOFahl3LDhdBBROGLBKMTIpx45LGiBtPOTTHd6UR0giJKkKmgTNYfO6ARHcuAL1KrW5AtOY8yjiMGqJJd/iuhwwhpIuA7Q0OozVioJgsRSPIINP/65ETF2eVbN598dS4VdN7VzSWrT3k1m2wDtgj7WxL8xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=LCeKqbO1; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4806bf39419so38904695e9.1
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 03:22:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1772450524; x=1773055324; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P5eHw3BS810lHNeg7f4xIwnSQSat/sp8IElQzLbapwg=;
        b=LCeKqbO17rP5109OTJALG7smNOybvBTsEVgvkM3TcmGnYCcAzUN5fSoAOK1zB9IkmQ
         WeEeXt1F1GMfZb542AAlvPWN5q/DtUezGrgHUpwtGBrMw/rlyQHPclh5dFoA6h+K41jn
         XEM0uGw164ChBXSCR/q6znMhnkdqqPZlWBu7Mkq7+YbSaJtH+ULVDYO7G3DajKhF2Md0
         NNj1G2CPYwGVQ+9IqnEeU3Gv7oVuhJLyHQpbEKUKI0+uR+YqgSqXFhfYsNWPZzn2sMcN
         25nSYvtPqaHgedcPA8CIx65s1r3ilq/EnNxbcbzOL8eJhQJJqnlwOgqszGl24mP31upQ
         L2xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772450524; x=1773055324;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=P5eHw3BS810lHNeg7f4xIwnSQSat/sp8IElQzLbapwg=;
        b=lFdIBr4K85qCIk8YCy6hUP2QLOZKHMCD2lYR9FZd57gqb9BhZL4Z9FUft7UZKpy9IE
         QcmCTz9wsi/nowL29/bO4eoxqzFch+pXURhGIpm2J8ERtUO6Ti8L1H7SdildtPb0UsrE
         3oocOtMl3mydE8KzayJhUMBVC9jrqFneGq7LZ6Lzg6OrIs5uOAjgoaxZz9MVBGyvkRuc
         ap6EZaMwqKbN2KFi3PnmjpHsttbIbG8JHMZcTPsGsnpm2fb/SM0y6e+Cqli3ImhNi09o
         bUhce+doT5K3L3DwKbiUy/Z8Lxwl6tCaPqLtCkTfstUDXhW+mVjZ+TWTCdWccITzMric
         qT7Q==
X-Forwarded-Encrypted: i=1; AJvYcCWrXEo5OstpMZbjQxQda46bQFDNGaCYmbq1TkvDp3d6Z4Kabr2w14Xx2Lpcmm2L7EmRx8yTTnON2Xiq@vger.kernel.org
X-Gm-Message-State: AOJu0YxW6di3OYz9dE0z6cIefAvBwkEuKaOOXNkz9HMHYGnqS1U+Nksp
	NTwAWdk5m8rw9RdWGiBch8HQP4WyiGwcvagqQMkYOzKmr/rUqVVKKQQs+YZNmt3WDxI=
X-Gm-Gg: ATEYQzwOox37U0R0QOJi19v/BwMsU7cuc/HQuSbV6U58n919gInXgXeByeA1asZrKMI
	DzIUPUr7jMTozSY5cllquuxj9YguhMQTFcAIBnYvK73A4Gi/lIQqLXJaQEqeqwNHQo4/U4XS4L1
	uHGkkb5VdyFoLSD7dR3YvVIpnO65GXlOQwjY9137KicPqNJs3J9uQSSrpShVglgvVZFDSf6eCna
	3R+rf9YUfamFdajVzexWoEZhix8WtuSu/YmpiR+hilhJeWP8m3KwgAGaVdc1tXj/73O6wnJKRTo
	FVbazplJc0SnI9Og43AJ8OqTL5G64ggo3YDgX5Yl1qPJ+xPc6tV8mzluB8Dn0ygKDbTvPOeO5Z+
	5Rkijm7CAWzYY9Yuqs3HJYPxGTso9HPE9NyqL0t3/eovfjoEYgy53pinBVcuW2fT99b7pOl2AFl
	zkEIjRix5D27ga3stEWqCYIhQ04JFEBKn8b14vbvZ0T3hOu9nwMXCSErjad0JiXNt9wHUOGTK9W
	9beCUPJqfWmeWVj4ju3NJu/Gjx1v5LtK3uK6H3KSx8=
X-Received: by 2002:a05:600c:c8c:b0:479:1348:c63e with SMTP id 5b1f17b1804b1-483c992e3a4mr192566935e9.9.1772450523941;
        Mon, 02 Mar 2026 03:22:03 -0800 (PST)
Received: from fedora (cpe-109-60-83-135.zg3.cable.xnet.hr. [109.60.83.135])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-483bfbb465bsm292493035e9.3.2026.03.02.03.22.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 03:22:03 -0800 (PST)
From: Robert Marko <robert.marko@sartura.hr>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	nicolas.ferre@microchip.com,
	alexandre.belloni@bootlin.com,
	claudiu.beznea@tuxon.dev,
	olivia@selenic.com,
	herbert@gondor.apana.org.au,
	radu_nicolae.pirea@upb.ro,
	richard.genoud@bootlin.com,
	gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	horatiu.vultur@microchip.com,
	Ryan.Wanner@microchip.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-spi@vger.kernel.org,
	linux-serial@vger.kernel.org,
	daniel.machon@microchip.com
Cc: luka.perkov@sartura.hr,
	Robert Marko <robert.marko@sartura.hr>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v6 1/6] dt-bindings: serial: atmel,at91-usart: add microchip,lan9691-usart
Date: Mon,  2 Mar 2026 12:20:09 +0100
Message-ID: <20260302112153.464422-2-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260302112153.464422-1-robert.marko@sartura.hr>
References: <20260302112153.464422-1-robert.marko@sartura.hr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sartura.hr,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[sartura.hr:s=sartura];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269937-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[sartura.hr:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robert.marko@sartura.hr,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,microchip.com:email,sartura.hr:mid,sartura.hr:dkim,sartura.hr:email,tuxon.dev:email]
X-Rspamd-Queue-Id: 623A01D7694
X-Rspamd-Action: no action

Document Microchip LAN969x USART compatible.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>
---
Changes in v5:
* Pick Reviewed-by from Claudiu

Changes in v3:
* Pick Acked-by from Conor

 Documentation/devicetree/bindings/serial/atmel,at91-usart.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/serial/atmel,at91-usart.yaml b/Documentation/devicetree/bindings/serial/atmel,at91-usart.yaml
index 087a8926f8b4..375cd50bc5cc 100644
--- a/Documentation/devicetree/bindings/serial/atmel,at91-usart.yaml
+++ b/Documentation/devicetree/bindings/serial/atmel,at91-usart.yaml
@@ -24,6 +24,7 @@ properties:
           - const: atmel,at91sam9260-usart
       - items:
           - enum:
+              - microchip,lan9691-usart
               - microchip,sam9x60-usart
               - microchip,sam9x7-usart
               - microchip,sama7d65-usart
-- 
2.53.0


