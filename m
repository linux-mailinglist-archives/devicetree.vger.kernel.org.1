Return-Path: <devicetree+bounces-155647-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B3FA57B15
	for <lists+devicetree@lfdr.de>; Sat,  8 Mar 2025 15:34:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 01EDB189313E
	for <lists+devicetree@lfdr.de>; Sat,  8 Mar 2025 14:34:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC3C91624F7;
	Sat,  8 Mar 2025 14:34:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b="aeM2FO03"
X-Original-To: devicetree@vger.kernel.org
Received: from fanzine2.igalia.com (fanzine.igalia.com [178.60.130.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A79381DB37B
	for <devicetree@vger.kernel.org>; Sat,  8 Mar 2025 14:34:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.60.130.6
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741444478; cv=none; b=uwyRc7s3+0HD0Qgj2D7plyRSf6pLcNl65DbxD36s7Qb7iSdJuUIC7IHfeo4D651w+1KQ+tpAdNG5Dy2tD2coIKWUfRGAtiUG42TMxbLRwHGdn0JxSGzqQB4LqE32g6l71RbaDK+EsKVQkprWKksMgB6w1+tD6I2b2dO1xjiduQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741444478; c=relaxed/simple;
	bh=M1hH3eEzspm1bp2SdyONWZV/EeoTA8zCydWVMsj6etY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uX1Z4DI1v8ORC68daH8sTDvm8g3TYAVmvwrhNEU/EZ6dNYQzdic8Zr/4Udt6RiM6HcxbkxJh+P/ZAheUfbdKhBA4qaBtG/vPzmCMGE3dH1TkEpyX1SaTqJZ2OpyXqFwDVF/vRz7LztkCC3EZ6H1VCVKzDC73BqekbqLg4SVV7xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com; spf=pass smtp.mailfrom=igalia.com; dkim=pass (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b=aeM2FO03; arc=none smtp.client-ip=178.60.130.6
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=USp/ULxCTxrL3DMzDK4rkj/asevt7M0dLP9Uh1DzA2s=; b=aeM2FO038sQpNpqXVjTIbeA/uD
	1p+G2lU9s/10kpPoZuYDSs0DUmnXN0RITO1fmRomWepVqBafxvryHWTeyg//jG2WE3VyGa00vtTC4
	zraqr+8h1ELPZOkdVJTxuCTU22KTRL5pQ+vHNJd8vqstcu7LywfQYYp9lbBdER5EqQOUdwLCcuyOM
	0wyx21WqR0xQaACt+A/1vJaPg0NXl+sc0AjllX1stwSvPi7EHa/rsIgnVwx/WGBK42X/pbaoXaHES
	5iXwtRzcLPqyzw35UEdHIrVZ4SA39oM0huYUNaINJ7wBEWyhkLaP5u9MukG1iggGShWoA5QRqdfUv
	qVEQpZhw==;
Received: from [189.7.87.170] (helo=1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.ip6.arpa)
	by fanzine2.igalia.com with esmtpsa 
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
	id 1tqvG0-005pPS-JK; Sat, 08 Mar 2025 15:34:34 +0100
From: =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
Date: Sat, 08 Mar 2025 11:33:45 -0300
Subject: [PATCH v2 6/6] dt-bindings: gpu: Add V3D driver maintainer as DT
 maintainer
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250308-v3d-gpu-reset-fixes-v2-6-2939c30f0cc4@igalia.com>
References: <20250308-v3d-gpu-reset-fixes-v2-0-2939c30f0cc4@igalia.com>
In-Reply-To: <20250308-v3d-gpu-reset-fixes-v2-0-2939c30f0cc4@igalia.com>
To: Melissa Wen <mwen@igalia.com>, Iago Toral <itoral@igalia.com>, 
 Jose Maria Casanova Crespo <jmcasanova@igalia.com>
Cc: Phil Elwell <phil@raspberrypi.com>, dri-devel@lists.freedesktop.org, 
 kernel-dev@igalia.com, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nicolas Saenz Julienne <nsaenz@kernel.org>, devicetree@vger.kernel.org, 
 Emma Anholt <emma@anholt.net>, "Rob Herring (Arm)" <robh@kernel.org>, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1326; i=mcanal@igalia.com;
 h=from:subject:message-id; bh=M1hH3eEzspm1bp2SdyONWZV/EeoTA8zCydWVMsj6etY=;
 b=owEBbQGS/pANAwAIAT/zDop2iPqqAcsmYgBnzFVjvyDssZDv2QQ4D97DG0++KrsyeyRK3LU+M
 kB5UAJsynWJATMEAAEIAB0WIQT45F19ARZ3Bymmd9E/8w6Kdoj6qgUCZ8xVYwAKCRA/8w6Kdoj6
 qjvnCADOVMCRhCeNoJEaOW3NXgbXjprAu0e6f/O8dcxZvi+GiM2CWBwmzG+PCPvaNVvxy6Q1+54
 N5wThoqDyjAwCnCI/6mrKSe2rg6y/zuPKFgdNNkRJQaDb9rxu4inzzJiLO929IAE8La7RLt4eTa
 csAqmcWc7BBDQEPw1qqqueVFKRlm3oM597ZrfpUof4amo4ztIJoK1l27Kb6zS3H06PX7xEVy0kN
 xjGgbehI90vvuCIv6/0v5IxaFcFEhgTDdg9Md9oOnFL64YdmWo8hPG84plDxqJg/ZfXhlTsXra2
 UvcCQGf1XXBCVAYSbmz3O81VAdultmXqh5RcsT10n5EmxRlc
X-Developer-Key: i=mcanal@igalia.com; a=openpgp;
 fpr=F8E45D7D0116770729A677D13FF30E8A7688FAAA

As established in commit 89d04995f76c ("MAINTAINERS: Drop Emma Anholt
from all M lines."), Emma is no longer active in the Linux kernel and
dropped the V3D maintainership. Therefore, remove Emma as one of the DT
maintainers and add the current V3D driver maintainer.

Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Nicolas Saenz Julienne <nsaenz@kernel.org>
Cc: devicetree@vger.kernel.org
Acked-by: Emma Anholt <emma@anholt.net>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Maíra Canal <mcanal@igalia.com>
---
 Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
index c0caee055e8c18dbcac0e51aa192951996545695..ae890a46712477034f4efbc4d02635953bb68a40 100644
--- a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
+++ b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Broadcom V3D GPU
 
 maintainers:
-  - Eric Anholt <eric@anholt.net>
+  - Maíra Canal <mcanal@igalia.com>
   - Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
 
 properties:

-- 
Git-154)


