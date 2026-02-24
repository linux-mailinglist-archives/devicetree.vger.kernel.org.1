Return-Path: <devicetree+bounces-267904-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cEUKBHuknWmZQwQAu9opvQ
	(envelope-from <devicetree+bounces-267904-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 14:15:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id AE12018772A
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 14:15:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 221C83029A9D
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 13:15:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00ACE39C637;
	Tue, 24 Feb 2026 13:15:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mdCpSlH5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCD0F39E164
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 13:15:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771938936; cv=none; b=q5xVVjRwm0p6afQ/ngNDmlkPF8xg+Yj5z5K5H6KSWeRjBNja7ZkWhlKbsvJtZENfYKza1+KN/A4OVqTBO8InuRMrCY4u1LEsKVaadbH4UWHUH9hebeq3Ucc9kXNyFkCE3E/XsCURTc8IeTXEM1f5K9oYZeXmYNvhwqXZoeebkE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771938936; c=relaxed/simple;
	bh=Gggo2FgINM2WUDHfNHU07LBnf1tkxqi7jKz6gpfZ9Cw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Q0Frtmw4Pp63KFUvn4VCGxXhKOsYA5d7zifLsXIqqb2RJqusT5S5F/pLSUKt5RkEKcm3d+kaTFQi24I+OL8O7wdu4C7RDNtKhl2WzObFv3RPai8WLrhRrNFX1D6aMIuk8Tc+slsO+RtLDs9Uk7TgOvfd7y76eCfdH2j5zBdwfQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mdCpSlH5; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-8249fc726e9so2864048b3a.2
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 05:15:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771938935; x=1772543735; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KKCYhHbR6vSjsD8wHgb8LL/2bafBoxxkBbchRF8aJrw=;
        b=mdCpSlH55n1i90IQpYSETcv90bbdjyDpI77mChTx2UEHaK8fF12QD4eQbptkVIDJSd
         qBReks3beVCCqm3oebYIrv5wnyT3OmuIx/6TCFUXgn4gcjXhMUWM7qzvH9NWm7UPrc8X
         ZVw2lTf51jqjwDkgHAJS/ScmVjG9kn3lLHbFiCPyWCkTJUQScIJXOR/KL0+QnEZQe5fp
         /yNy48EjmeFYu6JpSut9goYiftiUF71B6v7nwfMnSE9Zvi3vFEYyFoJSQ8gi+xW3JmN9
         pb19eQf6GQUYuEkWxCjaESeynHhsFgmARonTNcuvKOfolWucFL9+vn5gqLg1xIQxsPyN
         M/7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771938935; x=1772543735;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KKCYhHbR6vSjsD8wHgb8LL/2bafBoxxkBbchRF8aJrw=;
        b=tIkzTvDwa2uaeGvxdHkxDOkvxn1sctPNx4AmSplx9OZxmG0Cv9Crkdw2qY3iPEzZAl
         u20OVhg9xPhZ7IWI2Xnz+c9s7/Djs2e+m360WNNyn9+wu8lA8ht5Pwlu5rVHG5VhE8fL
         yc+7gJH9hc0x1seWvVFFdPPrkSdj2TMsMNYKjwifot1R9Q4euYfb90RF15GBPw5Ro3DA
         FtWWTK18eRph+nngQIsoXC7hPgjmO63tzTYjB/uyAC6z7Pu6dP5l2eAigPNELXdLdJEf
         QSyiTCVTzfBOJ4YDcpqe9rAiOfzCrGZbQV4Gn6rLJbPfkY/wl8+/pq3yBiNfpXaVnnt4
         FWfQ==
X-Forwarded-Encrypted: i=1; AJvYcCUVOx7B3yjfAzsmsjDJAGjwoD2fmMBJsvMZkrbzc1hycJR6meNxmuOAu1Bo3Qba1QbIRbiOMux2QV1R@vger.kernel.org
X-Gm-Message-State: AOJu0Yw77sAGmcHjs/LIqs4mey81dEMJZW+FAp6iV8IAjgyVsx+bSa8N
	Tx0FqikS9XTDtAwlVZHfy+j29ivIbNgb5Nkt2Xo2kVZi5Y5kLIQQRBxq
X-Gm-Gg: AZuq6aIObw393YnwGDT84xkjhQ337bJuio8fuBip19fWM3jsOS4BZK1nPpcnBRUhOqp
	5fkeZDbHkl3Hv151Xkq7ysjUKUbyNpuGmmwwX7SaZJIHaRLxglaE6t1k/WcGu/QW3ndvHhtD09U
	zZBvF0NuXIt+T+fnIaqvasq70RBT66AVx072XYcxaJH/HyO8ITaN4tkQPh4EisYm3LFRdR3hybF
	5FsfpXcpbeEHa//KmV7z6v3rugZ6veVqain/Tngfnb54kn3urHO40OWm9bY+UGV2Q2em34Zgptp
	1mh7XCMk8eGZWw/Ggh5viArxi8X6cyH1VZtfLk1pJORPK5KG+lm9Ale1azNomDazKDvkHUlTm7Z
	6+ub/DYTYMZUbAb4+Y13fcEScUrvMS1UzMlEwT7YXBM3A+bMRfE32lbWpARE2Lxsc3NK2b1Q2sV
	KUtekG2Xx6alxvDz4x+/R9r5qPT5FyB4RMT9PhY8Cu+g==
X-Received: by 2002:a05:6a21:9984:b0:38d:ed39:35a0 with SMTP id adf61e73a8af0-39545f8e14fmr11302252637.61.1771938935081;
        Tue, 24 Feb 2026 05:15:35 -0800 (PST)
Received: from Black-Pearl.localdomain ([27.7.171.51])
        by smtp.googlemail.com with ESMTPSA id 41be03b00d2f7-c70b7253a70sm10794013a12.24.2026.02.24.05.15.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 05:15:34 -0800 (PST)
From: Charan Pedumuru <charan.pedumuru@gmail.com>
Date: Tue, 24 Feb 2026 13:12:59 +0000
Subject: [PATCH v2 2/4] dt-bindings: usb: generic-ehci: fix schema
 structure and add at91sam9g45 constraints
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260224-atmel-usb-v2-2-6d6a615c9c47@gmail.com>
References: <20260224-atmel-usb-v2-0-6d6a615c9c47@gmail.com>
In-Reply-To: <20260224-atmel-usb-v2-0-6d6a615c9c47@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
 Herve Codina <herve.codina@bootlin.com>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Charan Pedumuru <charan.pedumuru@gmail.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267904-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[charanpedumuru@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,linuxfoundation.org:email]
X-Rspamd-Queue-Id: AE12018772A
X-Rspamd-Action: no action

Add clock and phy constraints for atmel,at91sam9g45-ehci and reorganize
the allOf section to fix dtbs_check warnings.

Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
---
 .../devicetree/bindings/usb/generic-ehci.yaml      | 46 ++++++++++++++++------
 1 file changed, 33 insertions(+), 13 deletions(-)

diff --git a/Documentation/devicetree/bindings/usb/generic-ehci.yaml b/Documentation/devicetree/bindings/usb/generic-ehci.yaml
index 601f097c09a6..55a5aa7d7a54 100644
--- a/Documentation/devicetree/bindings/usb/generic-ehci.yaml
+++ b/Documentation/devicetree/bindings/usb/generic-ehci.yaml
@@ -9,19 +9,6 @@ title: USB EHCI Controller
 maintainers:
   - Greg Kroah-Hartman <gregkh@linuxfoundation.org>
 
-allOf:
-  - $ref: usb-hcd.yaml
-  - if:
-      properties:
-        compatible:
-          not:
-            contains:
-              const: ibm,usb-ehci-440epx
-    then:
-      properties:
-        reg:
-          maxItems: 1
-
 properties:
   compatible:
     oneOf:
@@ -167,6 +154,39 @@ required:
   - reg
   - interrupts
 
+allOf:
+  - $ref: usb-hcd.yaml
+  - if:
+      properties:
+        compatible:
+          not:
+            contains:
+              const: ibm,usb-ehci-440epx
+    then:
+      properties:
+        reg:
+          maxItems: 1
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: atmel,at91sam9g45-ehci
+    then:
+      properties:
+        clock-names:
+          items:
+            - const: usb_clk
+            - const: ehci_clk
+
+        phy_type:
+          enum:
+            - utmi
+            - hsic
+
+      required:
+        - clocks
+        - clock-names
+
 unevaluatedProperties: false
 
 examples:

-- 
2.53.0


