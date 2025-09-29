Return-Path: <devicetree+bounces-222346-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B03EBA83AB
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 09:23:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1AF973BCB2F
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 07:23:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8672A253351;
	Mon, 29 Sep 2025 07:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="XEg28HcN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52E0024E4A8
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 07:23:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759130602; cv=none; b=go7xpg1n88VNGxCd9VxAN9ogWHALJrRa8KV/GLvfs8b73ljZoMy3evNHuZd+AcrubMaE7ThU/Duh+2+3r300I/WBANkTn6+mwsfZi0McCdCQrzZJkwNrbuI/cbRfnJ6H372XgBJvG4TP7LRZImUxde+SGySbx1NHW4t0Eomw6/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759130602; c=relaxed/simple;
	bh=kH3QJ/0ymsVNJZvRPMjt7T69wHLI8967r0QgMznqKOk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ndIfITYdOp472/qfN14r4dsxqnIfqw5AxNlH1O9BsdxyGvOAXw78Jz1gpvljZ+ycync95uDSedHH9dly3YGlnGJSqkAqEWITshhqmNw3MB9IhYt98xfRCs0KinQVkIrL8WtLVzG3FZtidz9INJ5HjfdMtAVGEgMGNyvP5pNtmzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=XEg28HcN; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:mime-version:content-transfer-encoding; s=k1; bh=73S58KutHbjhLt
	8pmc5mm38D9C5OVGnA59+LsgoomP0=; b=XEg28HcNIOtjoJ+2Rwj3RIg272zKFD
	IiljTe+9/PQOJnOjGRPopFgAySTRk1rAb+HcfIGj02Qn4OYLcOtL8VtoUJ5WAOUW
	i4tm6TJkXtQ50FV1XiahpjHigBXs521viwmAYBJxpkcHqMm61gOgJzETjeyBCu6D
	bUrj1QbqcaOiW7ul5Y0NJcPImH+VM8f5T2gTy1wVEJ6LjjmkB6w284ZatqoImaht
	k9snzZ1DUXc30sB4V7uh8igUjjZzkgmS6l4I21US5ZNItHCjQUTIpmYhw83WjC2/
	GHvTHqNKVOCm34/BPFC9dNA6Xdl51Pjb7X0YuoeuYcH4aquk530zSF1A==
Received: (qmail 3162345 invoked from network); 29 Sep 2025 09:23:11 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 29 Sep 2025 09:23:11 +0200
X-UD-Smtp-Session: l3s3148p1@S3z5ges/do0gAwDPXwQHAL/S9V79e5yL
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Support Opensource <support.opensource@diasemi.com>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Steve Twiss <stwiss.opensource@diasemi.com>,
	devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: mfd: dlg,da9063: allow 'interrupts-extended' property
Date: Mon, 29 Sep 2025 09:20:47 +0200
Message-ID: <20250929072306.5634-2-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

If nested, DT schema cannot extend required 'interrupts' to include
'interrupts-extended'. It needs to be added manually. Fixes:

arch/arm/boot/dts/renesas/r8a7791-koelsch.dtb: pmic@58 (dlg,da9063): 'interrupts' is a required property
	from schema $id: http://devicetree.org/schemas/mfd/dlg,da9063.yaml#

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---

Copied this solution 1:1 from:
  Documentation/devicetree/bindings/mfd/samsung,s2mps11.yaml

 Documentation/devicetree/bindings/mfd/dlg,da9063.yaml | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mfd/dlg,da9063.yaml b/Documentation/devicetree/bindings/mfd/dlg,da9063.yaml
index 51612dc22748..4af5fcb856c7 100644
--- a/Documentation/devicetree/bindings/mfd/dlg,da9063.yaml
+++ b/Documentation/devicetree/bindings/mfd/dlg,da9063.yaml
@@ -110,10 +110,16 @@ allOf:
             "^buck[1-4]$": false
         thermal: false
       required:
-        - interrupts
         - interrupt-controller
         - '#interrupt-cells'
 
+      # oneOf is required, because dtschema's fixups.py doesn't handle this
+      # nesting here. Its special treatment to allow either interrupt property
+      # when only one is specified in the binding works at the top level only.
+      oneOf:
+        - required: [interrupts]
+        - required: [interrupts-extended]
+
   - if:
       properties:
         compatible:
-- 
2.47.2


