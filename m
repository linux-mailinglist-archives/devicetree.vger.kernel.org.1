Return-Path: <devicetree+bounces-241436-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 70F02C7E013
	for <lists+devicetree@lfdr.de>; Sun, 23 Nov 2025 12:23:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D2C064E2088
	for <lists+devicetree@lfdr.de>; Sun, 23 Nov 2025 11:23:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 753E12D59F7;
	Sun, 23 Nov 2025 11:23:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VqDfgt4z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE6C2D5946
	for <devicetree@vger.kernel.org>; Sun, 23 Nov 2025 11:23:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763897016; cv=none; b=UP1FJWNXdXMUPAo78+xIy29Z75ln8EeVgnrD/ZjAlnFmO+zAUYOjHapDO4yeWv7grLNECHmsY/BwvB0qKEXd1q5SQIHovOFpqa9PHSfueROVY9C3CAIqRXjE8HiphH9ZsXRskMYWNaYnS7JrgtOhPMwjzOmmn8C/ykUWiPpUmnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763897016; c=relaxed/simple;
	bh=uzEHYcoKTcfwr0Zzg183PcKDFO5v0fCFNVn32/9q7Ng=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lMLPRHq6ZOG0kt4Z8aKLSTqUeSM1kq6A79qJdT8ZF422YKGCj7hTTaT/6pmSWKMUgsITdDEWxDOfHYtRy1s9ax3NlvZ9BNybG3zsh/0iCWfW2qaCU0z5R8SVW1uZUIXE+vfAjDklhsYl1Lh7Nr4o2g6mQFZXzmQqw/27BBXS7m4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VqDfgt4z; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-42b566859ecso3044111f8f.2
        for <devicetree@vger.kernel.org>; Sun, 23 Nov 2025 03:23:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763897010; x=1764501810; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cmqYTRbC+N49mXlYWIz0dgPHO+8g2wZzchgn3hv3UQU=;
        b=VqDfgt4zRFqX17SfJe0Tz5FbP2rsXxHEUYLF8lxzU7w/om8q/MCgNaO7qy9u6I+3eC
         ycqm8FRwV2JMdsYQ/AnWPO1zeq+nhurjSUvvd/oVeDOv0Ak4YTfGpV+Z8SKIN88nQ0ZH
         1zKIq8Nv3QG8bo2WeonNJzj/aKUySzsCDD9wpV9OZtOimqEXD/w2DRZXq8oJaucqR5iE
         c5vW9y4fTXKeb13ARfWC9ZZ4acQLYlPoZ0DJxEQCrIMJxmDBk4SQDYWD07io6TLTTDZn
         TLarjZyf/qpHdBUCRPH8vpTIes9bCALE3gRB80kEvkp9hgp/rfj9yavGY88J4GfEQ6op
         BgGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763897010; x=1764501810;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cmqYTRbC+N49mXlYWIz0dgPHO+8g2wZzchgn3hv3UQU=;
        b=Kc2a87p79RDru2A09ehTi6xPkrNWVsqgyp3kidUlWnKnhzszRbQBcf0hGbU+aGlN/R
         THS9Xt1WHhGIutlrsOU0/bqlOrGw0w3gtH4AWaHIGkVvK/O1ITqZ9Wtdbg29RcbX8jwc
         pplOyrQxFL06QzgKqVBXpR7kUdStNZ7XdEtFlVjoa/k6mm5jqy2vHm19doZmS+YZ/pvo
         aO9VPND5Sn+wfktOLb33mEIEZCJZAJLBtgNBFNFJekSYr38zcLTWcZtPUGOKobq7U+id
         wzUvgL32CQUsIdEcEiOxWVxf8dO62amBy4oGGqp7zFY/EWuDzw+SATHzZFQnKS2FXL/Y
         uanw==
X-Forwarded-Encrypted: i=1; AJvYcCWr2vAzjmVynwPRCLsqKYniGA0qCDBb1oFvp6huPIeZ2rIVqQukqtCwyb9Aa7GUvcCJFvLYdwEHk7I/@vger.kernel.org
X-Gm-Message-State: AOJu0YzQ2kYbAi7Wyoi8+gEaUoPov1CDiKtYq8UuaSZ0UKIPdJxyiBFy
	ornxWjMpXdJC2hpY3WOKMgLMeYVoBY9j0MzHQpj6pW87QD15P+qjV/X8
X-Gm-Gg: ASbGncvAqql08c3ZjxWUeUFtEKGy0MFVppymJww/5GrYLEPgirPfyeqci46NVUoEk31
	9XwZ3tIlK3QYRlR1YiZ5S20B6tIXQJuJBleFDUKmfYRYmXF+thbPk2rfB7oTp2caYKOnRZqO6aJ
	LNOFxBngd8h9W2MgcDc4e/6bD6KrhmNROG00Ov7K3mTzcJ1rMJ/bjtaoCjeysWI2Ttrq/VsWhiD
	qGfAnmE+9j/GizY+A57c0wahWOUh5akqo075caaQJUG2WfDZoBb8/AAPs0oxBY3hRTwW1iLh6gg
	wQARepBXAJWHlOTaz+IvhFzQR/G6XnUNiVewkEKIPqQTR4XgiEWAvdK1nzmw+mRHndNDrG3b+kP
	L/usnVzR03MGm1rhD9X/gWBYB8a500d/faHDB2Gen0tX5AOUmOEuMk/9ncUEmpqjNqW7MkXNygv
	BlXYl5h23eFRQBZQ7GtJ/6V7VO7U2Rzx1pisw5mkOtKAVialPF0o9HSHM74RhD9dka81y8avI=
X-Google-Smtp-Source: AGHT+IG1sPDsCSPRvqhQ38ght1LpqKVf02yiq3tLeARl0t5UZUBzeiVuumA6ww2SkKNaccehiLsiyw==
X-Received: by 2002:a05:6000:2f86:b0:42b:32a0:3490 with SMTP id ffacd0b85a97d-42cc1d19ed4mr8434429f8f.49.1763897009604;
        Sun, 23 Nov 2025 03:23:29 -0800 (PST)
Received: from biju.lan (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7f49a7bsm21765703f8f.19.2025.11.23.03.23.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Nov 2025 03:23:29 -0800 (PST)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	linux-can@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v2 1/2] dt-bindings: can: renesas,rcar-canfd: Document renesas,fd-only property
Date: Sun, 23 Nov 2025 11:23:20 +0000
Message-ID: <20251123112326.128448-2-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251123112326.128448-1-biju.das.jz@bp.renesas.com>
References: <20251123112326.128448-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Biju Das <biju.das.jz@bp.renesas.com>

The CANFD on RZ/{G2L,G3E} and R-Car Gen4 support 3 modes FD-Only mode,
Classical CAN mode and CAN-FD mode. In FD-Only mode, communication in
Classical CAN frame format is disabled. Document renesas,fd-only to handle
this mode. As these SoCs support 3 modes, update the description of
renesas,no-can-fd property and disallow it for R-Car Gen3.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
 v1->v2:
  * Added conditional check to disallow fd-only mode for R-Car Gen3.
---
 .../bindings/net/can/renesas,rcar-canfd.yaml  | 24 ++++++++++++++++---
 1 file changed, 21 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/can/renesas,rcar-canfd.yaml b/Documentation/devicetree/bindings/net/can/renesas,rcar-canfd.yaml
index f4ac21c68427..a52244f0b5d1 100644
--- a/Documentation/devicetree/bindings/net/can/renesas,rcar-canfd.yaml
+++ b/Documentation/devicetree/bindings/net/can/renesas,rcar-canfd.yaml
@@ -125,9 +125,17 @@ properties:
   renesas,no-can-fd:
     $ref: /schemas/types.yaml#/definitions/flag
     description:
-      The controller can operate in either CAN FD only mode (default) or
-      Classical CAN only mode.  The mode is global to all channels.
-      Specify this property to put the controller in Classical CAN only mode.
+      The controller can operate in either CAN-FD mode (default) or FD-Only
+      mode (RZ/{G2L,G3E} and R-Car Gen4) or Classical CAN mode. Specify this
+      property to put the controller in Classical CAN mode.
+
+  renesas,fd-only:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      The CANFD on RZ/{G2L,G3E} and R-Car Gen4 SoCs support 3 modes FD-Only
+      mode, Classical CAN mode and CAN-FD mode (default). In FD-Only mode,
+      communication in Classical CAN frame format is disabled. Specify this
+      property to put the controller in FD-Only mode.
 
   assigned-clocks:
     description:
@@ -267,6 +275,16 @@ allOf:
       patternProperties:
         "^channel[6-7]$": false
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - renesas,rcar-gen3-canfd
+    then:
+      properties:
+        renesas,fd-only: false
+
 unevaluatedProperties: false
 
 examples:
-- 
2.43.0


