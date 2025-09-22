Return-Path: <devicetree+bounces-220069-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 96DA9B91B30
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 16:28:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E8B037AF1A4
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 14:26:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB0771EF39F;
	Mon, 22 Sep 2025 14:28:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="Bsp0jTHa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13CAE18BC3B
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 14:28:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758551307; cv=none; b=nrliNbNYNZguRupGxpfjWjKCZFdwdwx/ue2BhcxBCg5Fp1HHbBG4/pkduk2XALXSU0EGWnHnOmbqz/x3wONXBe3QCQZSIifR4qhlbj0tnuhZBqBukbFRREhZbS/ZNpV5HUfoPFpuD83VF6/gSioUnN5FXgyafsAXLpJuUv+9phI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758551307; c=relaxed/simple;
	bh=SvK7btLYRO//NEuSLQunuo6sNLbgIRPNMFVxPrxcILk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Ug85kQ7sIHnmd2ghw7EosuQ2rzdQFeKWvNuMeHeaWOPz8aqG7SgyMbtT2XxA9HD80N93yQGtzaZXdTC/yDndoiLBZM7ZwSNvTHiwkB32qbPpEkaB9RL/Kr+6IeOuGjMfcbLGvOKMH9/1ZX7kxSYJsZZqcid/obgruDBWvddqKbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=Bsp0jTHa; arc=none smtp.client-ip=209.85.219.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-ea5c1a18acfso4203830276.0
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 07:28:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1758551305; x=1759156105; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ix+hu5NanbKuv9VZhmjhSAP9/8kt7Tc9p5wZOTLERrA=;
        b=Bsp0jTHaxGxDMrKSTjsbYpDejdQIFz04VtbQgqxENNU/UtnTV7/CmZX3xqs+i5zUcx
         Hr+U5lWkE/gVYqezmiH8Pj08uREP5zwecu4DiYFkVSW+t0DYoloA1IxjuQn/gjycGoWh
         3EyWENvOv6zlDbrY8Wz3vsAc5kanRlPTZRLyOPYckWfzYeFNbS1ei0ut2gtS8kD18RT3
         eTYptX2YYDH9Wo2JBgKyeakKm3UVHoIDAsyo1VmUkGWoK4VrI1NPXgK+VOwUgufaxdZ2
         X9h19XEDjg1XThRRYwGixfJrg+UOXxpy/osb//IK8+BZicE2sKT6wuPLO1omCv0an3/w
         GTQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758551305; x=1759156105;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ix+hu5NanbKuv9VZhmjhSAP9/8kt7Tc9p5wZOTLERrA=;
        b=lxi4G+f3AIZr3WwzhiWsXb+0JsuVZd8NJAE/S0s27uf3HvvDvwOIu5hIe9/394yiBE
         4bdCFPCrU5tZD8jr2g3eZ0Lm27JtYzFeWuwWhRc/rIh2kcySdSHHioZ2BXGNPgppvKKX
         1UFO1fI3rJVO9x7YgyL4R2zY/WgvokIaE5y7Ztu4Gnu7ehidzgt01Bgqg3Kbuenbuul3
         hF0bDSgaopLMXH+F0mMDJ9h/r2lQuPk7XxZELCwAZXtVBxkJrxzOHC0iaejk5w/zBdKb
         VhejqqYNVAxGMs0GqPeOoZkr6mpqnvhjqYtl7gSnKi58ZVTTWTzS3l2hCpMGdVIRqCHP
         bbXw==
X-Forwarded-Encrypted: i=1; AJvYcCUu8ozWmnKbJG1v3ETuNF8W+IW4cRpQhVqQCdh4IPwyFNOnnqI/fmEvLHagZ4lxeUFjb7ouXOhU4moJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzmDLUgc40wUGHzMNtRZXyy8/UqLd5VVXy7qSL/KXiW6dXqn+2q
	/3anu5BaueD/Je93Ng99Huu8X/l8XWZfI7Kdb5pDy9VuiCodEelJyuiTBOSWUW1FuHk=
X-Gm-Gg: ASbGncv9VTMJ08aehkisdZXfgnCkMP5A6+5Tjm1YO+MsDA2DKasqHHUIIbFdXk2i5jD
	KnpwHtoqJIWYa/zPdjq+39s+kMpW1budGrScL3AF4s3HDv0h/6UaIIa1p5O2C9jADHnQtFihzof
	uR2ickh+wRELlhegYrnWcktVAij73YyozmgaEZ+VdAQn2Z6IB2K1BpH7OwQa8khZU3Ta6MGefLf
	osbfDWPrwRJFm5qa+UMnmdg2QxerCxv9kh7WjoIwt0mKYd/MVBmrJE/QSN8UgLnouhF8PVRRCZS
	06zUmRVPi0iEdKhqA7Whht7ltCRgkvtnqN164itA5bW3rotp3CEj8XtU5BCuRlK4dm2OHCF4HP5
	nkQPbPNaws8tSwIlSy1Knsb/yRQ48MhKcejy6X1BSOffjQwykgAINpg==
X-Google-Smtp-Source: AGHT+IHgHNnGSIkqfxadXFSwLUGIDeGN7fzklQfcWRZ5+8r/Qi0U+5pV4roKHuT4HCHEmzJ79dd0zA==
X-Received: by 2002:a05:6902:f84:b0:eaa:251a:a4ab with SMTP id 3f1490d57ef6-eaa251aa597mr8087710276.40.1758551304769;
        Mon, 22 Sep 2025 07:28:24 -0700 (PDT)
Received: from fedora (d-zg1-232.globalnet.hr. [213.149.36.246])
        by smtp.googlemail.com with ESMTPSA id 3f1490d57ef6-ea5ce709efdsm4163124276.1.2025.09.22.07.28.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 07:28:24 -0700 (PDT)
From: Robert Marko <robert.marko@sartura.hr>
To: p.zabel@pengutronix.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	steen.hegelund@microchip.com,
	lars.povlsen@microchip.com,
	daniel.machon@microchip.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: luka.perkov@sartura.hr,
	benjamin.ryzman@canonical.com,
	Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH v3 1/2] dt-bindings: reset: microchip: Add LAN969x support
Date: Mon, 22 Sep 2025 16:27:28 +0200
Message-ID: <20250922142813.221586-1-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

LAN969x also uses the Microchip reset driver, it reuses the LAN966x
support so use a fallback compatible.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
Changes in v3:
* Fix compatible indentation

Changes in v2:
* Use a fallback compatible

 .../devicetree/bindings/reset/microchip,rst.yaml      | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/reset/microchip,rst.yaml b/Documentation/devicetree/bindings/reset/microchip,rst.yaml
index f2da0693b05a..e190e526f3e9 100644
--- a/Documentation/devicetree/bindings/reset/microchip,rst.yaml
+++ b/Documentation/devicetree/bindings/reset/microchip,rst.yaml
@@ -20,9 +20,14 @@ properties:
     pattern: "^reset-controller@[0-9a-f]+$"
 
   compatible:
-    enum:
-      - microchip,sparx5-switch-reset
-      - microchip,lan966x-switch-reset
+    oneOf:
+      - enum:
+          - microchip,sparx5-switch-reset
+          - microchip,lan966x-switch-reset
+      - items:
+          - enum:
+              - microchip,lan9691-switch-reset
+          - const: microchip,lan966x-switch-reset
 
   reg:
     items:
-- 
2.51.0


