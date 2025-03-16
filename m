Return-Path: <devicetree+bounces-157908-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D0E27A63602
	for <lists+devicetree@lfdr.de>; Sun, 16 Mar 2025 15:16:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E3C253B07A2
	for <lists+devicetree@lfdr.de>; Sun, 16 Mar 2025 14:16:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 793E61A8F68;
	Sun, 16 Mar 2025 14:16:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b="WnBuQ/LT"
X-Original-To: devicetree@vger.kernel.org
Received: from fanzine2.igalia.com (fanzine.igalia.com [178.60.130.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F1005339D
	for <devicetree@vger.kernel.org>; Sun, 16 Mar 2025 14:16:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.60.130.6
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742134608; cv=none; b=p12nN89qFPktMu7N5LidG/5oQTQCX8XRm777GlrK9pBJqxoEMkbxP9MCMvVFs4Ve38BuXhWcWaMw3Cg3PfnH584/fayxF9FAkbWymL/CF+YcICDgQ3m0/A3lo7UYkC7kMReSiheJmqJJyPHXXg8Z7Yr1R8q5C0Wn7atKKuxQwZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742134608; c=relaxed/simple;
	bh=1JHZXkfVPgyQWTcW1WUoMK2E5izCuOpjwsBoEycDAco=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=r4/6a/OCRnP+g6FPqkUaKfcZCrnoIhAECdAWJy1YzZyMiCvdI837penVIiTgb7s4MDhjiOJKM5mQncxQtNZK1SPrRmEAAWMTW4TCQEkgv57DpbunXW2UEGE3VHull27nrHAGxIQnH/YhZ4NoDxb2C1SiOZWGXnfU8xuRa2dNC/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com; spf=pass smtp.mailfrom=igalia.com; dkim=pass (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b=WnBuQ/LT; arc=none smtp.client-ip=178.60.130.6
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=JpQ/V4V8/BjMpi0+QIotZYziuJM0Co7C1OiSx5drf3E=; b=WnBuQ/LTZbRCTEmqDIYMbPS3Y0
	WrkYpZMKjLR+Last6xnA2WEG6zB2DeR6Z3BgwHwtMW+gv8oTC7wjN3fGpy7njTEYIjWCJQYNAod/h
	FlPPGhpIXpEYXmoBCTqFHbrBLn76EATtASIQ0DjxbFFqPERHmuWyI3rGjNrBAFpwK9/HIki0CDlJt
	Ca9QfKfdmAdFQEtLmat1teqgFXPMy7+Fp7fKzxsQaXHiPbI14Tpoy6GOSe/M07c84eh14CGf4E6Zo
	sCnV8yEhh8bemYXptIvXtHXTEmYxhW4buKyEO1m5XCBM0xxDeapXuwrag4A3sFzS0p/+01cNKepbs
	/uF3NGRA==;
Received: from [189.7.87.178] (helo=janis.local)
	by fanzine2.igalia.com with esmtpsa 
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
	id 1tton9-0016D3-Er; Sun, 16 Mar 2025 15:16:39 +0100
From: =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
Date: Sun, 16 Mar 2025 11:15:10 -0300
Subject: [PATCH v5 3/6] dt-bindings: gpu: v3d: Add SMS register to BCM2712
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250316-v3d-gpu-reset-fixes-v5-3-9779cdb12f06@igalia.com>
References: <20250316-v3d-gpu-reset-fixes-v5-0-9779cdb12f06@igalia.com>
In-Reply-To: <20250316-v3d-gpu-reset-fixes-v5-0-9779cdb12f06@igalia.com>
To: Melissa Wen <mwen@igalia.com>, Iago Toral <itoral@igalia.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nicolas Saenz Julienne <nsaenz@kernel.org>, 
 Stefan Wahren <wahrenst@gmx.net>, 
 Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Phil Elwell <phil@raspberrypi.com>, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, kernel-dev@igalia.com, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1193; i=mcanal@igalia.com;
 h=from:subject:message-id; bh=1JHZXkfVPgyQWTcW1WUoMK2E5izCuOpjwsBoEycDAco=;
 b=owEBbQGS/pANAwAIAT/zDop2iPqqAcsmYgBn1t0y8ytSHryq4yXclfZcfnS2COX/3zaTHhdbj
 g/zPLQ19uGJATMEAAEIAB0WIQT45F19ARZ3Bymmd9E/8w6Kdoj6qgUCZ9bdMgAKCRA/8w6Kdoj6
 qpsmCACxoJIFL4hHl//RtLcHEahMSn/eT8AeVvF6YtbO5+NY25+71/ot8d/oWT/BBvWdMdZcmVL
 QfL07RmOv1SixynbjonaNmX9BtT+DzaXzeOKbe2Kba1j6jclF9UcRhNhSJyqxFp4Z41YJ189z0R
 uO8l0HTrcDknqaCvYt6V66RbPxi1ozYovf1EGBqGaNx0OiHy6f8OphxWD844mSSbh0eqsGPONGb
 gJg6eqP3a6XUd5p1/8aGJQa2XYlCu+3pW4CidN9NnBDG9b2Hy09JbIQCuJ3NkXU86yH5acKLHWR
 ezk5USmpg6b06NiZCoMtVb3Pa4o0NwcHEJcyJMmJgKlXBXmJ
X-Developer-Key: i=mcanal@igalia.com; a=openpgp;
 fpr=F8E45D7D0116770729A677D13FF30E8A7688FAAA

V3D 7.1 exposes a new register block, called V3D_SMS. As BCM2712 has a
V3D 7.1 core, add a new register item to its compatible. Similar to the
GCA, which is specific for V3D 3.3, SMS should only be added for V3D 7.1
variants (such as brcm,2712-v3d).

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Maíra Canal <mcanal@igalia.com>
---
 Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
index c736b3b00ed2c259c263615bdc2bc1899c8961f8..766a310ab653855d7cc9a80f18c2083218fe307e 100644
--- a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
+++ b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
@@ -77,10 +77,12 @@ allOf:
           items:
             - description: hub register
             - description: core0 register
+            - description: SMS register
         reg-names:
           items:
             - const: hub
             - const: core0
+            - const: sms
   - if:
       properties:
         compatible:

-- 
Git-154)


