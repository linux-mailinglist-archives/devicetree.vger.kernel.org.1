Return-Path: <devicetree+bounces-272021-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0Kh1Kla4qmkiVwEAu9opvQ
	(envelope-from <devicetree+bounces-272021-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 12:19:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3430721F8F8
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 12:19:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 683CD304C2D0
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 11:19:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8422D37CD22;
	Fri,  6 Mar 2026 11:19:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ndFK8GrL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 683C535F160
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 11:19:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772795987; cv=none; b=aI88xKa+ZDRF/itBPFOqlqTx/e9Ilj3iaRFTAldwWYNdX+7+p3iWC3S84lQxzGcSddL8bewdh64Gxf6iCENPWjDKjUwjZHNt55RkTFn1YoSK+2lpc9+5sBrUoQA5O+Fepo4QopdFrO+/iy8vTkmtJC26SOJPK2vwOfrT1iz5Vo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772795987; c=relaxed/simple;
	bh=h4gOd+UQkfsuU8dfRXEsm3/VN4Iz5YJm2OLlL8dMYmM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=AleBdjgMnHGdyrtE1gO9VaVu6U+Tch8BKjSPXv2Ea56XCV8I0V5m1atNZewcybsPHUeLwbVwm457d/jZPft+lMrDmejyz4x4TTpQenoEKKvDgPsXTOTmzj63hJm3qp/QJlrXWpWm9IbPkjWn2lfXam5T4yV9oNZmVt0C9Td+E1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ndFK8GrL; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-8299c75f730so559366b3a.0
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 03:19:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772795986; x=1773400786; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eWAv+cXchBb/HIG329G/h7rJcEkvvlkIxA/O7EdGmJQ=;
        b=ndFK8GrL8/KeRMaoM5+AzuOtSylcP8MiccGVzhsZ45VSDt5/hyTPbWdyW/LbmJKYMK
         nuFIwh/6qyggqZX9RC/D61eav+7mbsMgBZx/aA+Gzrj2UBqAKnBoqzNYOXx0kTi/RFRb
         tv+OJmpKrfabUXti8Yo/BtfF8P+oy9NdQ8h+4f1dBck+X0O1kgLeJGuSVBDGKQglGW0j
         s6fYLYjFgc9vCU0exeW+jhA1H9iZPrLRGK7bgKep6Tqw+hgCQkWkM2eafznnOjH7ClOR
         qY1grf2NtsmvWqDCYUAq/VnWo075hk7j7LMg7cqx7wVgnfz9xyINQ4KAoMK575P7zJuA
         GgNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772795986; x=1773400786;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=eWAv+cXchBb/HIG329G/h7rJcEkvvlkIxA/O7EdGmJQ=;
        b=fcpM0UaSIf0PU2hU4w5ALJPduoIZNqnkx0t8ioYA6ozMXrx4diIWylMq/DKtLYSMaZ
         q/gOQXRXYkGOWXfa+NCy8hBSiqRRbC+gVwyEcG9w0za68PN/UMZQ0G7A/Xg07yK/s2Dj
         ejZPWezk5WFtOK/xEnDVFt+vN+wdgIUBcgMQZ4u1q9myY010M6lcPjcs6ZZl87aH7qtl
         kx3hqVee7cgjjnMuiDJja5jnTwrzFeQlO9CKjvArTfY+xGJCH7PnhX6+2Z2xbN+Xje28
         Fra0ioA0I4b+cLyJ7S7uev9SOsp2qqVRRHZtmqhuTiOBHkjBKqQVOMNTei6QOsPrtNF4
         2M6A==
X-Forwarded-Encrypted: i=1; AJvYcCW0XibpgyfVU+p2v2MhdQNa4fjMoVjcZU2m5rf0KCyXL7sFbH9c3rVSqEyMFI+G42e7GXLG+p88dzG0@vger.kernel.org
X-Gm-Message-State: AOJu0YzAjxrdVbPqXnLoRX61pgS5YCi+IE6O9q/r5mWpJkyOTQCdycxe
	TOfkeEUKvhMn++TxDxu0jROHC/TGWhzGYyQLXRvOzLVWA/y9zpOIYOhv
X-Gm-Gg: ATEYQzwocZa0PY44n8UB+2dSwEImt638KXLr9R0NrDRJY/b4ZoyQI3VNcOlF7Mykd58
	dLtPiTqwZU7nStCSt08fnwhcJ6Q2D8+W65cOGbs4vlUL2BG+dQg+I4FE94dRZZcR3rHrBezAwIa
	hF44jh7eq8Ep+1EVZ4TIQS1IpPQXvfbsWFJSAr7KAht2pPwJv37PUr7Uogizlklk99zzSa4q+Jl
	WOVLEWRxzKabWU34LC3WZopIQe3AvTWBogYiIT9b/3pM8XPiIYwNtwsi16tNKedMCQdcu8SczMO
	FiMgQOWzgnCH9P1r4sWvf//kbiQoDRFZ2zzu5Fzz14zIAhnGR4GbMskuvnrcI/eUc/kGQhgRHrt
	jGV53k7AiUs41LIotNJMVAKTUr4qMgxVN0lLxEU0WyVZqk7CiSSH7b0OY8NSsRV8Rz6FOhZHmTj
	pDXSk+ub8CkF6dy++KBwGw8H76tlrKLR3SU38TNaPe6YCRXO9axw6AxNTaIw==
X-Received: by 2002:a05:6a00:1c96:b0:824:b03f:2f65 with SMTP id d2e1a72fcca58-82985586d87mr4495740b3a.7.1772795985792;
        Fri, 06 Mar 2026 03:19:45 -0800 (PST)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-829a4636cfbsm1475973b3a.13.2026.03.06.03.19.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 03:19:45 -0800 (PST)
From: phucduc.bui@gmail.com
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Jeff LaBundy <jeff@labundy.com>,
	Bastian Hecht <hechtb@gmail.com>,
	Javier Carrasco <javier.carrasco@wolfvision.net>,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	bui duc phuc <phucduc.bui@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v3 1/3] dt-bindings: input: touchscreen: sitronix,st1232: Add wakeup-source
Date: Fri,  6 Mar 2026 18:19:10 +0700
Message-ID: <20260306111912.58388-2-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260306111912.58388-1-phucduc.bui@gmail.com>
References: <20260306104025.43970-1-phucduc.bui@gmail.com>
 <20260306111912.58388-1-phucduc.bui@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 3430721F8F8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272021-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[kernel.org,glider.be,gmail.com,sang-engineering.com,labundy.com,wolfvision.net,vger.kernel.org,oss.qualcomm.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

From: bui duc phuc <phucduc.bui@gmail.com>

Document the 'wakeup-source' property for Sitronix ST1232 touchscreen
controllers to allow the device to wake the system from suspend.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 .../bindings/input/touchscreen/sitronix,st1232.yaml           | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/input/touchscreen/sitronix,st1232.yaml b/Documentation/devicetree/bindings/input/touchscreen/sitronix,st1232.yaml
index 978afaa4fcef..fe1fa217d842 100644
--- a/Documentation/devicetree/bindings/input/touchscreen/sitronix,st1232.yaml
+++ b/Documentation/devicetree/bindings/input/touchscreen/sitronix,st1232.yaml
@@ -32,6 +32,9 @@ properties:
     description: A phandle to the reset GPIO
     maxItems: 1
 
+  wakeup-source:
+    type: boolean
+
 required:
   - compatible
   - reg
@@ -51,6 +54,7 @@ examples:
                     reg = <0x55>;
                     interrupts = <2 0>;
                     gpios = <&gpio1 166 0>;
+                    wakeup-source;
 
                     touch-overlay {
                             segment-0 {
-- 
2.43.0


