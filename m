Return-Path: <devicetree+bounces-269940-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aBV/NQpzpWlsBQYAu9opvQ
	(envelope-from <devicetree+bounces-269940-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 12:22:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 12E1D1D764A
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 12:22:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5DF2C301069E
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 11:22:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6306836309A;
	Mon,  2 Mar 2026 11:22:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="lTTzIgpT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AF28361DDA
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 11:22:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772450535; cv=none; b=cQwzmEE/4s5GnN9RszB/oIVTYtrrjJYVOylnQZ9Enr1i71Onbt7xFhfeoyyNwZhjtJ1oKzJ2Ss3Nnn1vNzXAr042cs9IeWahrNMNCInZneML8kiMhZLnvRR/NN4I+Oanezn78N6vO8dbOlpZmfYXOicNrvX2SQaxqjUcdTbvaQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772450535; c=relaxed/simple;
	bh=5YXoza1npYaJ9tc4xJEPvhZRjZCxh9QfUM1VALrscjA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KaABQfwwL2eZEtFEhX69kQzfqzgqGyWNQrW0aDFQr3hOG26u/+n2XxEIiOrPxtbiiGWEXPC/MQqXAJNcnoo8C15sX85DKL+KzTqryvS076e0xdQUr9cloCNs8QIthhJSV3oUlNmYNklbvFwuwpaGTWYXreaM5IDeQf0XY6cDrBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=lTTzIgpT; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4806ce0f97bso37193085e9.0
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 03:22:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1772450531; x=1773055331; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9ESgBMDji8rov6yYhnHGaS+/+l3/SjDdxdOhefVJEU4=;
        b=lTTzIgpTiNx0t+9SMh3MlGQYkXFZy15WCA27C9rEH091hqDRqfkh8C0o/9AE5HcYe/
         dDpN4OL6ea6MDTatMK5gxWagxQNrHP1qKpvK2Q/0EWHM8aYDLPheH6h8lnZfWL3q0Q6v
         LPlUAlkFznXbOzlro0zXoOl3xcBIVDgAkdk18UU/gMmwXDzAlAUsTXSWDTHDEY/5RuCD
         x9pOz/iUN59iKNG9DV54hfNS6AKu1IDBMrtgSIaA785Y7m95k2CVQMeXm37evukqRP3E
         Lm/djHE9I+YubkAcxBkHKSBhMbIvQai3cm1gyxHtbnLcpnNfmtkCwaiBrvQar4vFV2rF
         AwcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772450531; x=1773055331;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9ESgBMDji8rov6yYhnHGaS+/+l3/SjDdxdOhefVJEU4=;
        b=ZtkMQzBlTOqRyt4GgMWFAEixKM8/MYX/1rogj/2joC3Km95oqu+N2fEzxm7GJqqJ27
         gvcahD9lV+dTCpE1h9rbZ717E0SY1Sz+abgZynsQJZvlqiYa32HfkWdSrW+d75lAHCr+
         7LTmtoUvNAeewJPMRpIND9nB3zYqC8Oo5R2qGz0FfxG5nymv5Djfco6HaJleZLeQh/7/
         XiJyL87CqTK51QW4+gMZp1t0+jBLzwrkX+C0eLB3peAM5M/MRceu38YLu56ppyY2CgvZ
         cRWcPAWVROicq3yF1WxozVRrKqfS+PhBT/tWKJao/fZZKuJtM61IPUxcgGBLWPioSmnw
         osbw==
X-Forwarded-Encrypted: i=1; AJvYcCW8BivVnFdmWOqjbVSRUnqcXu3dkQwe525YQ99UnK3p8x10QETbc+DcApXPf89dtL271c9yGRn3gjNh@vger.kernel.org
X-Gm-Message-State: AOJu0YxC3YLBotRHT1v7v+QSm5v12ZMODRN44A45vN22tT5c67A5xkyN
	Z/ohhZUFiPK3QU7EKcrvPD16ePwnJOZNeQ8M2dAFJBZTtzb3zUR8JD1FDd/Odd/eZPM=
X-Gm-Gg: ATEYQzw1KOWM13WzD6oVcSgU3VFF4+0Ww+Y5NKm5nqP9NetxxfP9aZn3B+A6mCxDi28
	wRfxcYEs/6+IcMqy/gMNpR4yeKX4iet7WbxFbeXGizB/+16tlxsWhnSQEvoX/FsPF0WH0KPchpO
	eZMuorS/L+KUkPVrV7pKh52TQoR4SUZ3WsW7plFfKcw+wFbZI9oe3yR4rpDzqrFS2qkUe4aMvdt
	OoG9zrDM3tD1r1YRzrU1jSNz6b1vUZpDSdvDw5OVlI4zidHCIqmfIH2qxO17zO6HHilFbk75S7G
	Y6lLO/chqQAvltGRMYqcLMzFKzz7yybnDvue0t6lJARHjwbf99NqUMMaReN6Nv0fiMK2CqIU13A
	B8nf5TVIQi0qhYkikZj9gjoZakkUaZsKGjHeu949rI3sRA2LW+8UxX3EqXtPFi/NYkCR50sUp6H
	2oN0pW8l0shwxkIiRp76kX1KHJBl9PEn8cNGFIllhHQE0a8Wz/urllwI4unn2grx4MkwGilVYbl
	xjTk+8fdyWSAxRAn+88FwD6Nlo8hbtpgMdRNiqqWcY=
X-Received: by 2002:a05:600c:4fc8:b0:47b:e2a9:2bd7 with SMTP id 5b1f17b1804b1-483c9beaca0mr247748075e9.19.1772450530729;
        Mon, 02 Mar 2026 03:22:10 -0800 (PST)
Received: from fedora (cpe-109-60-83-135.zg3.cable.xnet.hr. [109.60.83.135])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-483bfbb465bsm292493035e9.3.2026.03.02.03.22.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 03:22:10 -0800 (PST)
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
Subject: [PATCH v6 5/6] dt-bindings: arm: AT91: document EV23X71A board
Date: Mon,  2 Mar 2026 12:20:13 +0100
Message-ID: <20260302112153.464422-6-robert.marko@sartura.hr>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[sartura.hr:s=sartura];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269940-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[sartura.hr:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robert.marko@sartura.hr,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,sartura.hr:mid,sartura.hr:dkim,sartura.hr:email,tuxon.dev:email]
X-Rspamd-Queue-Id: 12E1D1D764A
X-Rspamd-Action: no action

Microchip EV23X71A board is an LAN9696 based evaluation board.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>
---
Changes in v5:
* Pick Acked-by from Conor
* Pick Reviewed-by from Claudiu

 Documentation/devicetree/bindings/arm/atmel-at91.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/atmel-at91.yaml b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
index 68d306d17c2a..bf161e0950ea 100644
--- a/Documentation/devicetree/bindings/arm/atmel-at91.yaml
+++ b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
@@ -243,6 +243,12 @@ properties:
           - const: microchip,lan9668
           - const: microchip,lan966
 
+      - description: Microchip LAN9696 EV23X71A Evaluation Board
+        items:
+          - const: microchip,ev23x71a
+          - const: microchip,lan9696
+          - const: microchip,lan9691
+
       - description: Kontron KSwitch D10 MMT series
         items:
           - enum:
-- 
2.53.0


