Return-Path: <devicetree+bounces-221430-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 036EBB9F8DD
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 15:25:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3A0FF1887BB9
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 13:26:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3744327A47F;
	Thu, 25 Sep 2025 13:21:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="JIf2cors"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8382D23A995
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 13:21:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758806484; cv=none; b=CHCV9mY64naF+6l2LnHh94jIVLAr/Fi/n4S0WEA+jVowGYeBfoyOFSikmYU9CCgWQpFjgS02tXHVtec1rBBG18EUR8oSneJnkqpZ6WJ1MNNQx6bYQtOWarz1m8T3W3zuMW0ABT3/MocnLh91mcOeJCvAxuRbd6lxdPpLn0SPA2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758806484; c=relaxed/simple;
	bh=6DkEKz0Sd3dC4Jk9T0dI0jxA9uPtNze3gqNwzDK472U=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=F229P+kPCCDWvr2VZjOx1Hh5cvPFTgtfNsiC0qLEuLhXyjCKFGASEIuEDl693T6xS8zFAmoRng/3latJddc71k4TT74PGPfm4d3n9QRJbtf+31gicub2vU4aE0pZ7kywcUybS25ZSsLMMmu+q6IO7u4y8TRXa2dFnsSFlDY78ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=JIf2cors; arc=none smtp.client-ip=209.85.219.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-7a97ed209cfso7154566d6.1
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:21:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1758806480; x=1759411280; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ikj1YYbJyMMY0I/qjjfkDNziE+dHmdeEHUJPM2fNZ0w=;
        b=JIf2corsoOsyql/FH2Ec2/kvrjna3ECx4pG7e787xzTh93tpFyk5oos5oNEi/ng4vh
         huUjSSdSGxML/f+PbbyAZpC79/o7Y2ke0kdJgd9LzPOuAKUhLD+/qechTJZpnvq9u8mg
         5RT0Zz3J6zF4ywUBdFVAoaN1iV8TYEtilAGkIFNUMIFRybgKu17qNiTnf6XwZNTvu6BH
         LP6jf/vQXUp1UPUH/iAUUu9C6O8Rid75gjGQKcFwqXn5os4UcQhA1STH2lTT5M9o5QzK
         T013pnimKPBdEDQU2HBZzyFOSksQDgODDWf16hT88qlP2KA1Q5ehO7KPj2F7XhymMGlm
         r1rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758806480; x=1759411280;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ikj1YYbJyMMY0I/qjjfkDNziE+dHmdeEHUJPM2fNZ0w=;
        b=SljSRhnHpZSNqbaZ/0VYxSi6Qab8sEeXKI92VM/JoYLsYzadsSp4vOsEq3yWkmgE0D
         kQA0p6wgvqkpX3FE+e7P6PzGbxBeMFDROyf0yojgIQl9HZ7FzmKEx/gy4ISON1YgrzFJ
         FLllcKVnJi6Qo6I3Qrgq082sj/8wb7oM4cnoUoMjvoQAKnUs8P0+g265Q78nR82KaUv3
         f4r9Fa2wknY1AwzmzW57uRbh+Q1SdBF12awmERI8mwbOzYpPqMvQVCA5p8fmOXVlWJ/0
         Jp41KdVq18CyPLUAH4HEcyin4z8TtMwuo88u/ly9qXbJDunAE2FTjB/46DbxH/I30qpG
         pe8w==
X-Forwarded-Encrypted: i=1; AJvYcCVlC+9RLET+0HEYMIByeSrx3whtdcj7GF5RisX0UD31lphO/xqFtnAnrdU+OitXcSyMYBiUzi5losL0@vger.kernel.org
X-Gm-Message-State: AOJu0YyebdLrAtw9ig23Wjxd8CC8XJOFDjlUdaxKJu2b+rdxNB6F/96c
	XVks3Y3QYxelNvrhFNtcsipkEjK0zp2/ZTNaUfxm2opvi0g+5E5Y4VaAaSPOBgBYfJI=
X-Gm-Gg: ASbGncuNvdMm0zyGgUaRNzFMqIlCI2cj5gcq+7Txdw4DRGCJwcUcZYnN2lZTIHQDQh2
	E+S1LGgDHM64vRYZ0+JdjoFVraLtb5WH8/IcrEvN8lzP67eOAnAGtanHE4NmxHkM3GJqlVFFyCw
	a78GABuq0qIp70DM8eBppgPHEqfCXCnGiCk17xeOcOKJITuzGxedPA7nnTBfjMK7Wcnev2vdtsD
	i9BwkI2BlbAbdzIMO6y2RvG2/5VoSOFEEkOG5R5zABX4k1IaHzESvs8X5l+zAHWyHW4NIoT1IE9
	R6zI2vFwxXY/c1sHit/49hNz5Y8OSiNOBGKN2HGAympUFaZrjgA23HJFOPhtkUw7SwQNss7XYai
	ZAZepWhKHfMfknlqR47IkrdwQKp2jkcahC7izjYY2ilo=
X-Google-Smtp-Source: AGHT+IH8XUinRdR3zGGiBp2m82mpBfD/3zmwNXqhrKUwUBHni0a1zJyvS8LqAu4izyJ4awYO1sa/1g==
X-Received: by 2002:ad4:5e89:0:b0:773:292c:4f69 with SMTP id 6a1803df08f44-800e5116d46mr30765656d6.10.1758806480193;
        Thu, 25 Sep 2025 06:21:20 -0700 (PDT)
Received: from fedora (d-zg1-232.globalnet.hr. [213.149.36.246])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-4db10872737sm9887351cf.30.2025.09.25.06.21.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 06:21:19 -0700 (PDT)
From: Robert Marko <robert.marko@sartura.hr>
To: andrew+netdev@lunn.ch,
	davem@davemloft.net,
	kuba@kernel.org,
	pabeni@redhat.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Steen.Hegelund@microchip.com,
	daniel.machon@microchip.com,
	UNGLinuxDriver@microchip.com,
	lars.povlsen@microchip.com,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: luka.perkov@sartura.hr,
	benjamin.ryzman@canonical.com,
	Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH net] dt-bindings: net: sparx5: correct LAN969x register space windows
Date: Thu, 25 Sep 2025 15:19:49 +0200
Message-ID: <20250925132109.583984-1-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

LAN969x needs only 2 register space windows as GCB is already covered by
the "devices" register space window, so expect only 2 "reg" and "reg-names"
properties.

Fixes: 41c6439fdc2b ("dt-bindings: net: add compatible strings for lan969x targets")
Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
 .../bindings/net/microchip,sparx5-switch.yaml | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/microchip,sparx5-switch.yaml b/Documentation/devicetree/bindings/net/microchip,sparx5-switch.yaml
index 082982c59a55..5caa3779660d 100644
--- a/Documentation/devicetree/bindings/net/microchip,sparx5-switch.yaml
+++ b/Documentation/devicetree/bindings/net/microchip,sparx5-switch.yaml
@@ -55,12 +55,14 @@ properties:
           - const: microchip,lan9691-switch
 
   reg:
+    minItems: 2
     items:
       - description: cpu target
       - description: devices target
       - description: general control block target
 
   reg-names:
+    minItems: 2
     items:
       - const: cpu
       - const: devices
@@ -168,6 +170,26 @@ required:
   - interrupt-names
   - ethernet-ports
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - microchip,lan9691-switch
+    then:
+      properties:
+        reg:
+          minItems: 2
+        reg-names:
+          minItems: 2
+    else:
+      properties:
+        reg:
+          minItems: 3
+        reg-names:
+          minItems: 3
+
 additionalProperties: false
 
 examples:
-- 
2.51.0


