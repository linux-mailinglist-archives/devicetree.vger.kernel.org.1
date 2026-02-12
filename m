Return-Path: <devicetree+bounces-264911-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0NSSHcFzjWn42gAAu9opvQ
	(envelope-from <devicetree+bounces-264911-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 07:31:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B99812ABD5
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 07:31:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7B52230022CE
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 06:31:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE9652BE7D6;
	Thu, 12 Feb 2026 06:31:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gUQQd6F6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f174.google.com (mail-dy1-f174.google.com [74.125.82.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A87112BD013
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 06:31:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770877884; cv=none; b=M2wOZn+lcpLLv6amiShRf1qFKjplb5Wp5RafjfFWP052nvRj4O3Ts/8eTWOWVPyydqPXN92eB1RNndeKmv0JhZSBl7AY+yu4lNsdZUDLtMmqToaUxvs4B/ARCflB152gHExYacdwj7mc2ShMNMEBUhlYdve4TX5gsiNMKKPwYMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770877884; c=relaxed/simple;
	bh=sDskIjgemhXe1gLZvONHkbd0VO07jwLoHOGyyeLZ4tg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=R9xvWc0lVxsEhhiooWcQnhkAxjB+jQSPOn+uGj+s4GrSTuNx3m91xYMYiaP61DY9cbdNzdnw+2XuWE/LJGLi0J2/yBPrA7OyY27+AVhuxfbylNBA/gH44Amldgwbx6xy6SLCBrXHMGAA/yc6OspEoyltFNyRWDcHdzZ24PnPcLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gUQQd6F6; arc=none smtp.client-ip=74.125.82.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f174.google.com with SMTP id 5a478bee46e88-2b866f98574so266603eec.0
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 22:31:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770877882; x=1771482682; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VS/5lyCSMomFl4sGXRo0flBVBz2382VDyGRJidcfeh4=;
        b=gUQQd6F6JCwGG32ZHmsj/LYBeqSH+A7x+HtAHNAofuc1sy30viME1fEkpoRdG/GJtP
         CAf/VymK1h3RurfIC9Wlx9Gh1XllhmppRgeXA1l0zQD3TnnfRE+rhnPlhyV4r1dRmfMw
         0rdkqv6hr3Vz2EoG2Lf7xUY3MTf8Ctbn9/qDadxqY7nnpriIyKGgz98MUXTDZXvzIphU
         dIoRxVRKxqtNjj3PETrrSY3QXnflA4mAw8fgOspGppEEkOm5uSpWrryLIp3ql5GxYdVb
         GdBEl82d/D8I5I5Cr7tJQTFw2ikoR+f5EpA8fFfq6eWG0KvxO+yloRLLcDz8e7srfZ4I
         vw/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770877882; x=1771482682;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VS/5lyCSMomFl4sGXRo0flBVBz2382VDyGRJidcfeh4=;
        b=r4Fcc2hJtnvgIgLcU22NmBdY5F2zrj+BzEysnPIuf/KLZvoMyz4kh97S+tRbGe/CQs
         rJaSlwcW+juYsW6wcg319zPMppz4aT+DiRghiA1iCkt2QTYFcbsjVyKyRN5iIoqVVc0s
         jOpRSmj+vzlMtuNEeqgIQLh3EWwnk+BP0C/sqcui9OZd3vG/IUVU7EaSpkYN051xnnVd
         r5XXqTFFGUovXYwN4OnfheE/3pyTLjcMIDabwVgznzaqLXCEYv2BXCnE2oYnqWsU7WrS
         zFLgBFpNUElCbiSsuafxUNhYeySvyAk8CGdgcgfIbJzAEb98Ahsf46ohXdwZQv55KYyA
         LOnw==
X-Forwarded-Encrypted: i=1; AJvYcCVdFvnfzNiyJKZUFFUUSuzTMriJ3xKQDilfV0edPotNYaXRyZR/fSNiwLtE7gxK5eZXwU4gv+AwX3IM@vger.kernel.org
X-Gm-Message-State: AOJu0YwKZOim8cR8VJ29cU5O0TEawSeTKnzHimrS8VeKtnFbX3vDRYg7
	vUT2DdoygSYPofcjksmthyBEvrWRiixHQyEIrYZukeCJ+sbOHISDLSPL
X-Gm-Gg: AZuq6aJejx9V7Jo1YPbp+PQzZNfhAb3W6ombpciVEpIxTmK7fd0ITB6W6rrgpYcMBKq
	cVI3fd4wbtqtdzGYMaiVbfKeZ0J+/cHqw4my0ogEAWVbOPySlCy7ZRhohAKWjxojbxx6jZr1dIm
	GXT4YYElpFNzm1HmXF0zrE1JTFXkUf0WiAqDABtwsW9LzCM0T6NSXlcPQ3a3ThzeXsMr9M4U3ib
	CRRFe2/3sPZJeR4RgVGdufKO2oxPKu2Nd5HNLt76SGltInLuy7ZK6xQJ1mkcxVwjfUHymL2gbR2
	yw4mUmudN024XsVj3abOflbixECmeKdDUmmQ1Kkkp7Yqf9/QW8B/2VL/xEy8AowjJAgioFIbr3x
	rWyI5P8k02yh7HvMkW25AkEscYmYGX8++rE8Z6l9pQkh6s+upfT+lKKtzoIUtVYScJWAb6kK/Cw
	/Xr98FuqE6nY7BjFnLBt1QQR8WRoG35Ajq59HM2UiUzLk0fsT0iX1yRJo=
X-Received: by 2002:a05:7022:6ba0:b0:123:308f:667b with SMTP id a92af1059eb24-1272f73bb50mr354141c88.2.1770877881762;
        Wed, 11 Feb 2026 22:31:21 -0800 (PST)
Received: from [127.0.1.1] ([45.32.86.188])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1272a6f29dasm4313870c88.12.2026.02.11.22.31.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 22:31:21 -0800 (PST)
From: Yasin Lee <yasin.lee.x@gmail.com>
Date: Thu, 12 Feb 2026 14:26:54 +0800
Subject: [PATCH v2 3/4] dt-bindings: iio: proximity: hx9023s: support
 firmware-name property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260212-upstream-20260219-v2-3-2b28fce5d09e@gmail.com>
References: <20260212-upstream-20260219-v2-0-2b28fce5d09e@gmail.com>
In-Reply-To: <20260212-upstream-20260219-v2-0-2b28fce5d09e@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, yasin.lee.x@outlook.com
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Yasin Lee <yasin.lee.x@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=977; i=yasin.lee.x@gmail.com;
 h=from:subject:message-id; bh=sDskIjgemhXe1gLZvONHkbd0VO07jwLoHOGyyeLZ4tg=;
 b=owGbwMvMwCEYyfeRr6Zs90zG02pJDJm9xUtf7FU1f3PD0ezY9po1GpknxC6tZeL4/kpOPcLx2
 XGlphy7jlIWBkEOBlkxRZYzr9+w5qs+3BP82zUDZg4rE8gQBi5OAZjI3SxGhu1X+3WvXemcHHdE
 5sr3SW7P3omUK0/9oW90Y+6uVNZJ1saMDCdfehz+vaSuOpv9U4rOV1cexWtqucVy6Xx/Ha4zSZ9
 eux4A
X-Developer-Key: i=yasin.lee.x@gmail.com; a=openpgp;
 fpr=CCEBEC056F25E1BC53FB4568590EF10E7C76BB99
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264911-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,baylibre.com,analog.com,outlook.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yasinleex@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1B99812ABD5
X-Rspamd-Action: no action

Allow specifying the firmware file name via device tree.

Signed-off-by: Yasin Lee <yasin.lee.x@gmail.com>
---
 Documentation/devicetree/bindings/iio/proximity/tyhx,hx9023s.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/proximity/tyhx,hx9023s.yaml b/Documentation/devicetree/bindings/iio/proximity/tyhx,hx9023s.yaml
index 64ce8bc8bd36..cc5b5284c267 100644
--- a/Documentation/devicetree/bindings/iio/proximity/tyhx,hx9023s.yaml
+++ b/Documentation/devicetree/bindings/iio/proximity/tyhx,hx9023s.yaml
@@ -28,6 +28,9 @@ properties:
 
   vdd-supply: true
 
+  firmware-name:
+    maxItems: 1
+
   "#address-cells":
     const: 1
 
@@ -65,6 +68,7 @@ examples:
         interrupt-parent = <&pio>;
         interrupts = <16 IRQ_TYPE_EDGE_FALLING>;
         vdd-supply = <&pp1800_prox>;
+        firmware-name = "hx9023s.bin";
 
         #address-cells = <1>;
         #size-cells = <0>;

-- 
2.43.0


