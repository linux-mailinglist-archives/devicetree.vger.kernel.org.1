Return-Path: <devicetree+bounces-267903-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yF6kG+KknWmZQwQAu9opvQ
	(envelope-from <devicetree+bounces-267903-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 14:17:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DC8FC1877B5
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 14:17:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ABCD83198630
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 13:15:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5997539C65F;
	Tue, 24 Feb 2026 13:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jV2XOS2o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35AE139C635
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 13:15:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771938933; cv=none; b=b+RuSyR0qpX5nUN3nXwx6QmJpuwidujFoanHZwAWf0aWLT5MUyOO+Up14b2DkNlqJ87puCUCCYNrJ28c72DW3v1Sp3hcEZswFXLgfsSUrEzBw9JwklUZBHJbhJO7ZcbPU3SbzpsQ5pGNcy1wp6u5N5iYWXRV8sawrETi16Tuq5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771938933; c=relaxed/simple;
	bh=QmF4nRlOe4+5G1AVaitX4auwcr1Rx/GkEUkcIKW7RMU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XWq/h7Z+/5Fu+d25ey3IrVSjVQ3/heGymteYz2SwaSfKBad41skyMa+gnNz+3k+xi49upaYJJKnxIpiMTzfkeoBG2s4zdf+B5W8XqYWo4cCqoCO7MlQq83htsVNfqNYuUbS46+r/5oXmAMGvbFMqQqB6iGMs7hXgwCz2ulgGwg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jV2XOS2o; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-8249aca0affso2911788b3a.3
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 05:15:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771938930; x=1772543730; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1EF5DZh0w95AiZ3fg7AA2Xw4QIn2ePCxy3IrusVoZ7g=;
        b=jV2XOS2oooyeoaB0m/Ye20digP3eaGxtmn+x3aq/AC8QO2Wo9oEh+p0IX0dRYVMq1U
         TkYUl5Sx88IauemX03y7nxWyyOL71AMlwUMUxey9MXwv0ZIFZjUL6h7NLZz6IfMeVYyK
         /b4+kdnrl3ZQmU/ZjgS5LVoSKnYGwX2EKmQFDK0qN9rgCuK6PUWVYH/UapemoZ46WOzJ
         5CiUc8daBvlfjE0nqI9tHklvT4jyUsTZ5XFQG+iIeepA/jGwHBOiO9x7nlXlzvEGrKdv
         RD/KJ4SVwUaP7aJS/cTzYi9hTTP6SH1OR8ULbAi6F6w2O6HRtPGLk9pCBte5Z2nGo8zd
         Cf3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771938930; x=1772543730;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1EF5DZh0w95AiZ3fg7AA2Xw4QIn2ePCxy3IrusVoZ7g=;
        b=tEnwV2VeJjTQ2Qv/auWQ0eGha+aWxhBxl8VySoK/6QwwkKECNItlGtDMBC75F0iewL
         qiw1NrwVnL0wYlu0UdPdxlbRNt1OxNh9LDojOt8YFEF+iUDLSfTXBbsGFtWyyVdL1b2P
         kMRoafw0BMZ/5BGwOONAfPiDSQIitZgw4ppCY1cnlFfGdFafr13eB6y7+ZGH9g0tsOVs
         VmQeivnpcgmnsJpnwXpWJEeQLfjuVmiZx+z2MVu8hCfFpNlJek5SufaPlTCkBrA5Au9g
         mQs4m33c2Ex9zZ5+XfMelnKjhgMDQe0YWfAgrasy6PBfZmIIaj9xTnJHenF1wF1r2uZN
         FcIw==
X-Forwarded-Encrypted: i=1; AJvYcCUCwmXJVAA94lBhoOThythCmNYCFg1c3NsxXsVG9tsHDq+GecR7MBoS0zWKdy/Rds6yHDijqPkby/IK@vger.kernel.org
X-Gm-Message-State: AOJu0YwiNAhPaJL1H5VoXwFoGGGaZJ3IsvJm/jm7Fb+4euAWIqMFMZlL
	LQzwSnVgUHUuAWM9bANDm8ylIXIhnTD3hh+nbx7AiYtHVjIg+Uyy8w5k
X-Gm-Gg: AZuq6aLjgrBzQLxix5X+IZX3kz2tDK9LzrwXhDZBNDRa8KyR6BLj7k9tps2j4pQEZtx
	b5scgDn1H8XG2J4u8hEI4zHdwhjEA+tVhKH+Sscn82KCq2SGM6ISD68BjEzZuImBnhRb3Gm6mlI
	zwvARGYuMZXOxvuRZ5Rxf88h44WfcNYdusOTZCBi4x31Jr1Ad7230Ux5TyOSxDfr4C1SMmCrLgR
	LvpQ7k6B5l03h0aF7ZqYNujVwjPJ3FEAbwKtPjmmG6JCk88FV+iKNw/jZITCd7kOOES9+tzRCw2
	DcXU+CDD74UTlkKccv+eNltx5lgVeThTwc9c/CZpdHqWWwZaUlY5bFR7Q0SgSQqPJpYSfLQi9Zz
	uwdufWrZ6wkorpvheXf6hdyqPSHOvfNS95pduzDs2wtTdpaGF0wCC1IZ/QZCiUryvopcV+jCIrF
	wpJDKJUJSQF/GEvSoRO+onx5GtKUCcrkz7udy3QCzCqw==
X-Received: by 2002:a05:6a20:431b:b0:395:151c:4eda with SMTP id adf61e73a8af0-39545f553acmr12721981637.45.1771938930467;
        Tue, 24 Feb 2026 05:15:30 -0800 (PST)
Received: from Black-Pearl.localdomain ([27.7.171.51])
        by smtp.googlemail.com with ESMTPSA id 41be03b00d2f7-c70b7253a70sm10794013a12.24.2026.02.24.05.15.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 05:15:30 -0800 (PST)
From: Charan Pedumuru <charan.pedumuru@gmail.com>
Date: Tue, 24 Feb 2026 13:12:58 +0000
Subject: [PATCH v2 1/4] dt-bindings: usb: generic-ohci: add AT91RM9200 OHCI
 binding support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260224-atmel-usb-v2-1-6d6a615c9c47@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267903-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DC8FC1877B5
X-Rspamd-Action: no action

Add binding support for the Atmel AT91RM9200 OHCI USB host controller
to the generic OHCI schema.

Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
---
 .../devicetree/bindings/usb/generic-ohci.yaml      | 27 ++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/generic-ohci.yaml b/Documentation/devicetree/bindings/usb/generic-ohci.yaml
index 961cbf85eeb5..ab8a49142386 100644
--- a/Documentation/devicetree/bindings/usb/generic-ohci.yaml
+++ b/Documentation/devicetree/bindings/usb/generic-ohci.yaml
@@ -55,6 +55,7 @@ properties:
           - ti,ohci-omap3
       - items:
           - enum:
+              - atmel,at91rm9200-ohci
               - cavium,octeon-6335-ohci
               - nintendo,hollywood-usb-ohci
               - nxp,ohci-nxp
@@ -137,6 +138,16 @@ properties:
       The associated ISP1301 device. Necessary for the UDC controller for
       connecting to the USB physical layer.
 
+  atmel,vbus-gpio:
+    description: GPIO used to control or sense the USB VBUS power.
+    minItems: 1
+    maxItems: 3
+
+  atmel,oc-gpio:
+    description: GPIO used to signal USB overcurrent condition.
+    minItems: 1
+    maxItems: 3
+
 required:
   - compatible
   - reg
@@ -144,6 +155,22 @@ required:
 
 allOf:
   - $ref: usb-hcd.yaml
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: atmel,at91rm9200-ohci
+    then:
+      properties:
+        clock-names:
+          items:
+            - const: ohci_clk
+            - const: hclk
+            - const: uhpck
+
+      required:
+        - clocks
+        - clock-names
   - if:
       not:
         properties:

-- 
2.53.0


