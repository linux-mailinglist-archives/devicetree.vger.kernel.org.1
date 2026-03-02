Return-Path: <devicetree+bounces-269938-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4HvwA+1ypWkNBgYAu9opvQ
	(envelope-from <devicetree+bounces-269938-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 12:22:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4671D763B
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 12:22:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1352D3030769
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 11:22:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 066D136308D;
	Mon,  2 Mar 2026 11:22:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="hA/l9mY9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B0413624D9
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 11:22:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772450528; cv=none; b=iFnClTtt9fk1Aj4/7SU9LPvd1KUEKLyaFkRB/QRI9cXOy/NMC2LAl5/HmA6+nxDysXyq7oMF/Gvs7QL1a6MpjRvyDYBZq+BvBB9IdJjfp9tKI58FlU9hWLsJHmzurpDNcCJocNdUI8+9z9j2cHGjQqMi4p41EJOFsFumkrCMyBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772450528; c=relaxed/simple;
	bh=to/yxjGiw472A4w/ZG9L65B9irkFq8+kpamX0PwYXGk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=OtILvC5CYqq2o7rwa/cEuOtb9ftpGOjDISNlr8AUwutrNwr65RDhDkyYJwu3pqLVTMjP1Q0au5yc0OXcKppsL1qi7BFaWbuq3b+qqSmeifLSLwvx3d/r1++ATfztHl1D2wrenD0Pr7GtD2FTLs0NnK5gMttGELlS0WdXCFqR8Z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=hA/l9mY9; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-48375f1defeso32270475e9.0
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 03:22:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1772450526; x=1773055326; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QOxR18o2+9ulYS4r73qXsZYgHJUpIGAEfbN7mi92aLE=;
        b=hA/l9mY9+sPJtrOeUv4fy4/o0mHnE5p/ulkXMbzB6jYdBNjEkROdCVi0Mx1p0bxAUS
         4GGvk/wlxvYP3/Ym6XEZYzGwN5ez0E27/AcIDCOay/KA/9uWJZuyTiwX56cGiHulakdE
         arZSRh//NnI0479BIEXTbiwYUUcagWai2wW0+F0baQgCwAeeSIO8yonEl/FAkmejimVh
         ljQqCJ+spXhLAyky3GTJNfaYhs+kjSEvbnv3KqfTKn1xxmu22yJAiF98/JoJDmUzHZoc
         MOV2CNLkorlzlvb0OALEa5nReobkDHldQoRpEiDBhNn3Dhd60XlyBVgRSbVWkFg/Dkhr
         Fixg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772450526; x=1773055326;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QOxR18o2+9ulYS4r73qXsZYgHJUpIGAEfbN7mi92aLE=;
        b=qUAxcDbUj8iUt/7/G+ELS68/gUf4uM/0gouAixNlLX9v8DyeH6KQPt24rxKNrtGw0d
         w5xeNnNr1nXjPk+BzC/pY12bmjdjlBrKwRSJZbYBaeGkIZKHFmyhFcdeTolhOr9Qu5/7
         2E8D/bBUlWLhp4M3WjR8VRbFQBy2hlRTv+G7iLi6iwpdONSZiKIdL2sBU8ZUZS40jmYa
         F1NXUiEzgLsJq6GkIxsYAfcvanDfjdw54AcgAA3lLrq8/JWIu0LJBoTCvoPu28Hw1f9q
         snFv2ZfzB+d4UfZFM/Ga4ukDpqEPYyq3AOLFdtGyvok0+nGkhgqWerqpws5fpNZdppdS
         DEIQ==
X-Forwarded-Encrypted: i=1; AJvYcCWiXgHRfBEPMNPfZEXD5lTkMIBQWWZV30fqLwZ1Oj1J4ncBeI+D/vKMkfd77aJL0APZEb1E/OzNu6F0@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8lTQ03qlR0s0KlXwK+TNWsa3lMXpQhUC0ggS5D2N/XMn7fK+D
	J5JT6Kan0JHnri+3WcGVUJfcpg6ddaQ9XUk7V1Ott/KK6z4JIzVl+YyDTmtn/H5m0Wo=
X-Gm-Gg: ATEYQzwYT+Jy3PXiksyBbHi/lFxviyp6kdDyX8AzPqe5KuqBJml7bDQ/bbWJpSuEOnx
	LOwhT4MNUh6Tr3+iq0Q6jAPdtypRDUliSkgzHpS2ZXgpjNhUovMK9+GV09x2KuOlaTrV1KyRtJV
	BNFs78uC06vaD8umjhtjOxunyoKngxPb127V6hm62uqSGArfGe2ttuFer+8rtPtjNlJiBXnfWI2
	kIT8onMxaifSorzAXlq3Z/bJgrx5KutbSJwim0iYnKWBXTSp++Q1jlUUatzTQZcjLwCBRJjnboM
	Z5WYpoNp682RbS7rWfB3yiGbN3L986wMBvR9fxgvjV9nY2/WGJOxYyOh0TtmfxXJnTxRh/ewRko
	77rVarQ+2lxfWnRyIA0crJCnCnxSAV+Wb4a5MxyC/M22/q/FxLFCgetZvHfJ7eBtHzRZiOboslC
	zPRo4cyWS1unhNL6TH9yd0vWgDxgMtaeCcuSVaclFb7GVezyWP7/WajtXq9bDbLLhOyWrPDP6oj
	SV74jwlhC2irLzzNrk3eWJQN/A98o6Et1wa+P7LAoY=
X-Received: by 2002:a05:600c:8b53:b0:47e:e91d:73c0 with SMTP id 5b1f17b1804b1-483c9c0bce5mr211979425e9.19.1772450525627;
        Mon, 02 Mar 2026 03:22:05 -0800 (PST)
Received: from fedora (cpe-109-60-83-135.zg3.cable.xnet.hr. [109.60.83.135])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-483bfbb465bsm292493035e9.3.2026.03.02.03.22.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 03:22:05 -0800 (PST)
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
Subject: [PATCH v6 2/6] dt-bindings: rng: atmel,at91-trng: add microchip,lan9691-trng
Date: Mon,  2 Mar 2026 12:20:10 +0100
Message-ID: <20260302112153.464422-3-robert.marko@sartura.hr>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[sartura.hr:s=sartura];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269938-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[sartura.hr:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robert.marko@sartura.hr,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,microchip.com:email,tuxon.dev:email]
X-Rspamd-Queue-Id: AB4671D763B
X-Rspamd-Action: no action

Document Microchip LAN969X TRNG compatible.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>
---
Changes in v5:
* Pick Reviewed-by from Claudiu

Changes in v3:
* Pick Acked-by from Conor

 Documentation/devicetree/bindings/rng/atmel,at91-trng.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/rng/atmel,at91-trng.yaml b/Documentation/devicetree/bindings/rng/atmel,at91-trng.yaml
index f78614100ea8..3628251b8c51 100644
--- a/Documentation/devicetree/bindings/rng/atmel,at91-trng.yaml
+++ b/Documentation/devicetree/bindings/rng/atmel,at91-trng.yaml
@@ -19,6 +19,7 @@ properties:
           - microchip,sam9x60-trng
       - items:
           - enum:
+              - microchip,lan9691-trng
               - microchip,sama7g5-trng
           - const: atmel,at91sam9g45-trng
       - items:
-- 
2.53.0


