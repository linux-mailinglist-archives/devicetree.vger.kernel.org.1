Return-Path: <devicetree+bounces-276607-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QDkwGgMruWmVtQEAu9opvQ
	(envelope-from <devicetree+bounces-276607-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 11:20:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 15BB92A7C25
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 11:20:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ADEE93063769
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 10:16:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C5FC3A451A;
	Tue, 17 Mar 2026 10:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="l4M5zYhb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29ED039FCDE
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 10:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773742594; cv=none; b=f6Qxp0pnZ4R+XkmGjwtu2FoAaXJjDWJwXMiVLDhSVvbBppoL5e9aOQLqqYhpQJnNclltV2+FGJGNMLIFm90rCGxExCWrFrbYbmHS4viIeDRQlBVVuRCtGVix/T4T1tpyt5yDtKax23Ueuo+ZfBKjiIV6wBhh6tOcAwNbjtg/rAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773742594; c=relaxed/simple;
	bh=MkKJsnHJt0I3M0VDRqlYD6Y/FYCi4SGRoTsot9r9C98=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TqHDyiBrfh2faykm9e7Ab9b3ExtgO1M9dH3n4cuwGQu87Su49XZLTFlpttxqoF1N8fHlboJd+RE/OxRFZIGDQ7LEN47zFjeWXaoOogLek4QXAN5/ZKrRiqwpmoyGSQnm/R/w823F1wNtdyslfqdDpyCrI3K3pUm9GhVwvm8efcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=l4M5zYhb; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-485345e1013so4406175e9.1
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 03:16:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773742591; x=1774347391; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UPU/OB6JjZLkGjsMveSgC+3WpNZwaCIVZ3MgU8COI8Y=;
        b=l4M5zYhbKZqXFBOmgxRGR/CjiszGzCFNsHkEFIe1hwMV5e8Ug3YlnHDBEBUIcER6rP
         4B/1LaiVYpV+MWrfulMjc67iwNjNGeziIOw0Qaq2t+k0+L+hYF4WrKsOWT5d4gtYv935
         6g0P5TIJ3jcLbSAvUczLr3XYuA8KMaIGS/JWXZ2i7rBwZ2CdhjjmdztoI5f7fk6NFCXR
         OzKmO/APIGYblGveonCdYYvQgBxqXqjRj0eYcpVG5pkXeYrZ9vga7JH9nixcTkY358sM
         vX8LJmg8mfFvxfCzrbaxrjFyh91dG8ALK2qGhLbAfeW9gOEB6VpD3XUVvJByoL9i+WsP
         Y+9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773742591; x=1774347391;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=UPU/OB6JjZLkGjsMveSgC+3WpNZwaCIVZ3MgU8COI8Y=;
        b=NCsAa0lzuZ+KY/THusifUPTWnHpNLuu93r/ne7z4CBwUphV06FB9pbwnYZd+yqXeJD
         Bo04Q+cBkVNwM7bvOjXltZi6k4aIzA7TgqvCQCwlE8E5G0vjjoFrmYedY18kcciTymgB
         KhinVxefqYq3D/Y6kBbiatjwbJfH3Za7a0mJSCQqDtW8Bb+npRzdP0ZrgX9TRbP27ai4
         8WPJeGlxEqGCDpc2CIoLPseIvcAhO7RrmG4IrnoHgv2/48oiIqJznH4XkwKNrIBL1M0h
         CUUPcCRMfpnWroQbWFeg8mQ+cOYeRZKqe71QMnOZH0KFVF2OdyWeVv70xw746xfaFBJO
         KSJw==
X-Forwarded-Encrypted: i=1; AJvYcCWuEfcdcISt1yAsJ07xGBWMGvEgh3eP2WQyWiGLuRdCTLw1ET7bjxaucEwdX1K38Ofpchcm9KCpI05l@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1/+POCO4qRsyFXH5Nb04jgNUrKK5QJlLbzeeTpxZ4PccrXPJL
	eJ48SkFQTihl1sv52cLck6nHblXlfpKMIBC046ZjtUATpd4XbzZj61lW
X-Gm-Gg: ATEYQzxFHJSzuJHOM2TftnAOufOOq1hK85be2yv9ZvdpB3vsmW/UgTIqHR0UXeKg/3i
	S3FZgkPqV89AgjeguIf/FS+2Wb+LTgKccoK/dxEDNwqBDaJUmMHl+z5Sj6MJZntSxsdEZQNp9JK
	m/R4K+U0I/i4FykL6v0MYwrHHpolxzZZRzXnpfTJ0mbwtfsO5HisPAzNnxXgFV6mHEH1w8U2BiL
	4rIzt21JADQxF7FcJ9Llz/3eP5p82WclhE6IoeClHmC1Dk2MclrQ6TXLheefcpr16ycI5KRL7oY
	wGyx2v/qCJ+TritPQO4WW6TA+QcZTS6r0Y4UswT/BcJC0E14MZaR4wm+mh+qfptcF+nLsp9mNZD
	gWzO+EGth56udSN42fKNGa+uttENZaSZS2aSe2j4RztKez8KZxi9dahAz3YXcc/uQtmhPUS3JYi
	TC+EGbGVGEAqAEPpS+/Xk6cwJJpbh5J5PkvgCEaHyXeTxRCV6v
X-Received: by 2002:a05:600c:4f92:b0:485:3cef:d6ea with SMTP id 5b1f17b1804b1-4856eadb12amr36947195e9.13.1773742591264;
        Tue, 17 Mar 2026 03:16:31 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a758:8a01:e16b:fc56:e220:9aa9])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4856eaee510sm53903275e9.14.2026.03.17.03.16.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 03:16:30 -0700 (PDT)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Linus Walleij <linusw@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	linux-renesas-soc@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Biju Das <biju.das.au@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v3 1/8] dt-bindings: pinctrl: renesas: Document reset-names
Date: Tue, 17 Mar 2026 10:16:14 +0000
Message-ID: <20260317101627.174491-2-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260317101627.174491-1-biju.das.jz@bp.renesas.com>
References: <20260317101627.174491-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276607-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[glider.be,kernel.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com,microchip.com];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bp.renesas.com:mid,microchip.com:email,renesas.com:email]
X-Rspamd-Queue-Id: 15BB92A7C25
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Biju Das <biju.das.jz@bp.renesas.com>

All SoCs has multiple resets. Document reset-names property.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v2->v3:
 * No change
v1->v2:
 * Split DTSI patches from bindings
 * Fix typo maxItems->minItems
 * Collected tag
---
 .../bindings/pinctrl/renesas,rzg2l-pinctrl.yaml   | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/renesas,rzg2l-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/renesas,rzg2l-pinctrl.yaml
index 00c05243b9a4..1a94e396b1b0 100644
--- a/Documentation/devicetree/bindings/pinctrl/renesas,rzg2l-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/renesas,rzg2l-pinctrl.yaml
@@ -78,6 +78,16 @@ properties:
           - description: PFC main reset
           - description: Reset for the control register related to WDTUDFCA and WDTUDFFCM pins
 
+  reset-names:
+    oneOf:
+      - items:
+          - const: rstn
+          - const: port
+          - const: spare
+      - items:
+          - const: main
+          - const: error
+
 additionalProperties:
   anyOf:
     - type: object
@@ -152,10 +162,14 @@ allOf:
       properties:
         resets:
           maxItems: 2
+        reset-names:
+          maxItems: 2
     else:
       properties:
         resets:
           minItems: 3
+        reset-names:
+          minItems: 3
 
 required:
   - compatible
@@ -187,6 +201,7 @@ examples:
             resets = <&cpg R9A07G044_GPIO_RSTN>,
                      <&cpg R9A07G044_GPIO_PORT_RESETN>,
                      <&cpg R9A07G044_GPIO_SPARE_RESETN>;
+            reset-names = "rstn", "port", "spare";
             power-domains = <&cpg>;
 
             scif0_pins: serial0 {
-- 
2.43.0


