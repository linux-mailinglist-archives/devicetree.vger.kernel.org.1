Return-Path: <devicetree+bounces-157911-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F66BA63608
	for <lists+devicetree@lfdr.de>; Sun, 16 Mar 2025 15:17:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 58D8B3B0690
	for <lists+devicetree@lfdr.de>; Sun, 16 Mar 2025 14:16:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E3421A23B8;
	Sun, 16 Mar 2025 14:16:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b="DfMjcH89"
X-Original-To: devicetree@vger.kernel.org
Received: from fanzine2.igalia.com (fanzine.igalia.com [178.60.130.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 569A01A5BB5
	for <devicetree@vger.kernel.org>; Sun, 16 Mar 2025 14:16:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.60.130.6
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742134616; cv=none; b=eKxxvnaKRreFTlwi8+z88L3p3UfAxFuQ89/DOXCv7GgCGJV7ZcEJn0nFrLGgd6bPRwqba+0Z/1cziDxuPoVWzoJbRD4uNJJgRcGSZh8BuYvbpINQhheTms3DlkhA7NA46d4L6jb2oI0VuYlw1hOn3lRfxWD/cR7ZEyMQajlK6No=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742134616; c=relaxed/simple;
	bh=Euv/3NWvgCPDDYHuljbzm7CGJWe1ImTFFhtKIdR3PTQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=iXD56/rAxJbZYxk8yGCnm/z+4dC5MFZURl6CbFM7l1ap8Oy7YIBguT6ybIaadhD1go2BMmTGOzKD8j/UihCdLiGJ9Mnqw7H7Y+jSsdQueoHy5Qu/Nu999nptl72tVX5t/V2eGjDiOORLvuRKv7Y3bwUesk5kxSAWsW4ZCAejpn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com; spf=pass smtp.mailfrom=igalia.com; dkim=pass (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b=DfMjcH89; arc=none smtp.client-ip=178.60.130.6
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=yW80kGhERxvdgKvHJPIF2b1jQ8rLTpfgbI977TlYb7Q=; b=DfMjcH89HozFVWC+a7ydCLzZ+y
	o/nFtPYOBwPQmNd+4ChqSSpTYurw4C96jfZZ57Amd6cLC4IKO+SJ/+31Y/umLa2ky3LLmHYePxW/y
	yx/KqYY2msU4WxKLjPW4kNENJsgvutR9SOssztgM/Cm6+bGunNAuJKSAWAgGII85UtX36FxO4uRAf
	yGmTVXKEsTKF2MA8FXLWUpneCA9nMLKFrCqNQ6h/OL6uki3VTbenk55r6ArrKRImPyVCiJxmZO/TM
	NHB8pZ77Yp41jTCS27jgu05q+aQW99mYPyidcA32b2ARdRfyzL/cX0mlXPlaGXgtVn+7PQ7MlqESj
	vYV6C7hQ==;
Received: from [189.7.87.178] (helo=janis.local)
	by fanzine2.igalia.com with esmtpsa 
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
	id 1ttonH-0016D3-Lr; Sun, 16 Mar 2025 15:16:48 +0100
From: =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
Date: Sun, 16 Mar 2025 11:15:12 -0300
Subject: [PATCH v5 5/6] dt-bindings: gpu: v3d: Add V3D driver maintainer as
 DT maintainer
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250316-v3d-gpu-reset-fixes-v5-5-9779cdb12f06@igalia.com>
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
 Emma Anholt <emma@anholt.net>, "Rob Herring (Arm)" <robh@kernel.org>, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1369; i=mcanal@igalia.com;
 h=from:subject:message-id; bh=Euv/3NWvgCPDDYHuljbzm7CGJWe1ImTFFhtKIdR3PTQ=;
 b=owEBbQGS/pANAwAIAT/zDop2iPqqAcsmYgBn1t0z05M4NTQ82w54IjShUBiGzfqOUNuMLizoo
 z69mdeYmFWJATMEAAEIAB0WIQT45F19ARZ3Bymmd9E/8w6Kdoj6qgUCZ9bdMwAKCRA/8w6Kdoj6
 qnO8B/4/R9S/NytXS7zzXfzMCeReVbJGRuVWPkMsj1CPuAaYDSrgucnXdZ+JbHSoWPRO947wX0a
 joCN1up7CdF4DPWZM35ZPkCE22JlHlnseXW9W4DucXJjgzrqK5XyU2FLfALI3ggHslEfbMMeaRF
 TMvHeiEUT/JtDa0GxAJrZ99xewwGttXN74oPpydJLoqMeRGXTJTWqOhnN5u2KPSb9m3QnKzqqPx
 ijpuKQodow9/aoYfNPlVYOPFabC6wW+WsDwX5/dKOp7NiQ04ifiyADhxGEIyTG60Cl/jH7lsGr5
 HfPyAyWLMe8bXheLZbMP0gmhsPniTvQek6cTKa3+fGUN84+D
X-Developer-Key: i=mcanal@igalia.com; a=openpgp;
 fpr=F8E45D7D0116770729A677D13FF30E8A7688FAAA

As established in commit 89d04995f76c ("MAINTAINERS: Drop Emma Anholt
from all M lines."), Emma is no longer active in the Linux kernel and
dropped the V3D maintainership. Therefore, remove Emma as one of the DT
maintainers and add the current V3D driver maintainer.

Acked-by: Emma Anholt <emma@anholt.net>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Maíra Canal <mcanal@igalia.com>

---

Hi,

I'd like to ask two questions:

1. Nicolas, are you still interested in maintaining this DTB?

2. Florian, would you like to step in as a co-maintainer with me?

Best Regards,
- Maíra
---
 Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
index 39b8f0ee1f727628307d758844008ae1189902b2..219e1403516fa0c2f2944d50ca829ddbf14a8b79 100644
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


