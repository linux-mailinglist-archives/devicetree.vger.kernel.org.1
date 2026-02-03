Return-Path: <devicetree+bounces-262258-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kOcALU71gWljNAMAu9opvQ
	(envelope-from <devicetree+bounces-262258-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 14:17:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D4E70D9D03
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 14:17:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0C2B53019305
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 13:10:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65A9B34F48C;
	Tue,  3 Feb 2026 13:10:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jrQTZfqW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D66B34F257
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 13:10:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770124256; cv=none; b=JSO+yA9EjvISK6oyc91kMrYJPX4GwU4dIqy1dOeK5A1HcUN8SH7KQVWj+rFkubQr8r0rTcDGjqbm4f50hg7vYIQIHxtU/mpx3VvHyOrV10KRts0mMnVZKQNRMybDAYFZN7YlLRpldHT7iFleQ5TW0QU/ChzIfGG30r72+kBhDhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770124256; c=relaxed/simple;
	bh=MfO+O2YIqgFjV0xMOvjI6RbABmQ4PgBS+Zzi7LOgdkc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=n/nrehJ9ygIfZQSET6KxC8DuIcbF0OXUB/d+mQL0niUsm6KYEp9zPqQMf/IyHfQ4aZg20xLt6nyP184sZs52rQ4erw3y/pygzTxzbAOTu0nB1WJTLadUvfiwMtXn9xThqlziIlwGH8yhEca6yR42nLA8xDI5wvixHN6qhBbEk0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jrQTZfqW; arc=none smtp.client-ip=209.85.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f66.google.com with SMTP id 5b1f17b1804b1-4805ef35864so48579935e9.0
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 05:10:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770124253; x=1770729053; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ghdEIhwuuFTCq/342nL9qPsHPejvBlYx6BjaZbJT+n4=;
        b=jrQTZfqWLuok6MK1jHkOVhBUPzDys3r2FvUurxxfNFufuPG/YkHNhPQdfsINFcBCzT
         m4GM8oUL0oS9SR4gtAkD2XYFdF8Gy3j3QPNzRcw3EpvrSizMVdUTPTKjLr8FSEnzCrw7
         DIy/uAoEX+j2ZAu2KbuHwaKNliQwDD8A7uhTLzLy1J9sPi+YdyZQnC6wq7I6+vQD5ETE
         NT4V6I+cly/6NRIQy8aIrG/0fj+NmBEzCZDEMFfWz0sKb+Q/rscmgpAgtFlY1Dzj1+cm
         88prTDyQZYGYYiRYBt3R8ZcW3tkbeSIRN25f3BouFSCLyzBB1YAvm7+gNVx2ZmSwTCqI
         0NsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770124253; x=1770729053;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ghdEIhwuuFTCq/342nL9qPsHPejvBlYx6BjaZbJT+n4=;
        b=qR3BO5YpeM2+7l+zf7Cvvl8qHrKY1BwXwOKtQu0rutNN/8WOWK4H2pg/hKNA5G0lqV
         qnmelIJfnm4klJyjNoUuLzH8eLFVCaUNfdbbIoPDDgJt5JEQiQjUO99PqkTM3ylx2Hft
         EjHdgNTzWK3AWfjrfZQdxtycJO7KmCgfhCtNY6VArhSHYIgF957hX7Snx+v2FDNbnmTl
         qUoJPcWMPt6tBx7XKZ+9fAe5mEt76W2UfASUXuZSUWPApxOSJrg4KZ4yz6nKDZ5OZKs0
         n1Hg9hNdzzMbX3L7q1pGHhqdkozu10eeZEuq+3QoVvKghGZbDDriVR3vxRYpLO3bW7jX
         iVAA==
X-Forwarded-Encrypted: i=1; AJvYcCWQpOhGlC0h+1lcbcyd3xyYxZJwAghgHqnQf1AR/MClHDlYWbPU67XZko319Vk/MoNMJul1E/O1B1lw@vger.kernel.org
X-Gm-Message-State: AOJu0YwiwjybqFmyJbaOpK/9HamCJOo1IyeIf3TVcP7YEd7TFF2vApm3
	GQ0uHOQq6jFD5N2wyDo64HCwV3nSSYbAM0yH0a8scE1agBu1G1Kqg+VV
X-Gm-Gg: AZuq6aK17nVBcjM6gRMnPv5/y+PEUPGSQynzZTaYVjROQw48SO05LLRXSDQ+zCgZaR2
	hpxdqzq2OD5oLEgaR4C8IheDFXHIS6WyNGFwg7e+7+LGmkHNJQzCKuznWUYNLHuRojeHr4L8Uik
	swo9q7/1ZyDoRjPeZ1rCasqPj54+4sXlYsxefH0FTjYRP6cOqIEfyEFKr7Bs8iYxxB6epOkKNP4
	PPSLsCQfMeR9t0PwDV0uLJRPx770Cb2jTS5Z+fziCaH0erPXCMuAGOOte9n5yv8XCSzI98aOp6j
	IN1bKXiGdeNCvg6IXfXVjdGK6Lq1iJhjixcmGtr3KnFj98pYvLiCbFbRKTTCHnsRZjo2CMN9OxC
	1PXwVtghcxPy4p7ggYuiadWEivi0ya2MN2HLKHTZp6XszOPv54pn6w5D929iFBACTPOYRXZ0/oW
	kWLdthbOBIWzRnpjnHnA==
X-Received: by 2002:a05:600c:a087:b0:479:35e7:a0e3 with SMTP id 5b1f17b1804b1-482db48f2ccmr214592465e9.30.1770124252683;
        Tue, 03 Feb 2026 05:10:52 -0800 (PST)
Received: from biju.lan ([2a00:23c4:a758:8a01:9cd9:f748:166d:55fc])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4830512ddd0sm63662185e9.9.2026.02.03.05.10.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 05:10:52 -0800 (PST)
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
Subject: [PATCH v2 01/10] dt-bindings: pinctrl: renesas: Document reset-names
Date: Tue,  3 Feb 2026 13:10:24 +0000
Message-ID: <20260203131048.421708-2-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260203131048.421708-1-biju.das.jz@bp.renesas.com>
References: <20260203131048.421708-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262258-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[glider.be,kernel.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com,microchip.com];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,microchip.com:email,renesas.com:email,bp.renesas.com:mid]
X-Rspamd-Queue-Id: D4E70D9D03
X-Rspamd-Action: no action

From: Biju Das <biju.das.jz@bp.renesas.com>

All SoCs has multiple resets. Document reset-names property.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
v1-.v2:
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


