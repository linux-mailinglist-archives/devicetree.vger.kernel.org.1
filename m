Return-Path: <devicetree+bounces-157279-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E1DA5F8E8
	for <lists+devicetree@lfdr.de>; Thu, 13 Mar 2025 15:47:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2FE2917E59D
	for <lists+devicetree@lfdr.de>; Thu, 13 Mar 2025 14:47:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DAF3267AE8;
	Thu, 13 Mar 2025 14:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b="fX+B5TS4"
X-Original-To: devicetree@vger.kernel.org
Received: from fanzine2.igalia.com (fanzine.igalia.com [178.60.130.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2C0C267F4D
	for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 14:47:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.60.130.6
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741877229; cv=none; b=RwGh4kWNytkgXKfVdGFLLryb8wCdhtQEsxMget0Z7Tw4olorPRBDGhEgf4qoHOUnPyNJUuCSPJEt35ad1gUv9rVEg7Yhliv6urn6H5T07YUUWrVceF0kXLJ507JvSoUIwc3xaSA2PL0T2CjcbAYfzl2jIlD/XoBaFwOPMYVuCkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741877229; c=relaxed/simple;
	bh=AYQpa+lLCT/gJFjXsPTbg7lMEMQt2GqcT1gzUMZPWj8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RPgAhIE7CGJ512622WeEV+i87nPFAc+ZQBMNned1vDkJPDARNlcBawU/lnPo9k1mrj2MXqNJOWCqB6sz3yH+nB1+V6BaKwx9vOwDLj/wIM8xX86GvnQLAL0KoJf7sp1hpnnSBEzRHmu/k0WMzEwkIEGwwB3Hq2yP05wXULzwsRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com; spf=pass smtp.mailfrom=igalia.com; dkim=pass (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b=fX+B5TS4; arc=none smtp.client-ip=178.60.130.6
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=5z11XCkk+Olrb0qdRXbaySaPHVPUwcEpmj1dOh7LRYg=; b=fX+B5TS4BhxefCfs/kzwUczxnL
	46ODNgz4PF3miNqkFRhTHkmx6Rd2k8MipkGjPUplg+8Ni4KFc2fTfaKTd7pFzeqCwt+iT1stqkyZ1
	FdLyKRhOVHrHH692BBS/nkNwvHWdKCMt2WRDiATCzUnPzyugH3VxbDlJvvqXxRP07w7FmOdWEklyu
	3pSl63gTpEbXjgltsnIsr1Vnlne2Oicqu5xpMvMdfyTmp+y595/MKvjyNOBZrQix2KpFuMdSmJgMA
	43OAF9XFHG51G+AP6Lsw1gZoWIW8w55nAs7xhbXfKUMKjt5CZAXxdJn3wgPdmRFCZA+x3q9wqHtkS
	OoulcJgg==;
Received: from [189.7.87.170] (helo=janis.local)
	by fanzine2.igalia.com with esmtpsa 
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
	id 1tsjpp-008Cju-K2; Thu, 13 Mar 2025 15:47:03 +0100
From: =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
Date: Thu, 13 Mar 2025 11:43:32 -0300
Subject: [PATCH v4 7/7] dt-bindings: gpu: Add V3D driver maintainer as DT
 maintainer
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250313-v3d-gpu-reset-fixes-v4-7-c1e780d8e096@igalia.com>
References: <20250313-v3d-gpu-reset-fixes-v4-0-c1e780d8e096@igalia.com>
In-Reply-To: <20250313-v3d-gpu-reset-fixes-v4-0-c1e780d8e096@igalia.com>
To: Melissa Wen <mwen@igalia.com>, Iago Toral <itoral@igalia.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nicolas Saenz Julienne <nsaenz@kernel.org>
Cc: Phil Elwell <phil@raspberrypi.com>, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, kernel-dev@igalia.com, 
 Emma Anholt <emma@anholt.net>, "Rob Herring (Arm)" <robh@kernel.org>, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1160; i=mcanal@igalia.com;
 h=from:subject:message-id; bh=AYQpa+lLCT/gJFjXsPTbg7lMEMQt2GqcT1gzUMZPWj8=;
 b=owEBbQGS/pANAwAIAT/zDop2iPqqAcsmYgBn0u/JcspJ7uVcOQS6Z9nOGZ0zyV5GHU+U12Wr+
 zKkUVpsEvKJATMEAAEIAB0WIQT45F19ARZ3Bymmd9E/8w6Kdoj6qgUCZ9LvyQAKCRA/8w6Kdoj6
 qvqACACMJrGZ0e8kJO7n6rumxmCljyyKj9aZg1A/X663z1bSfrb5xIY8eXjTbArrSBwTADDZHp3
 +wdHTgUnFg/j7ul0MMp5eRGhcNOfa2gfzwbI0CEsAHxiWU9PwKq9/oxPKvjSELU6C+2kN6BlJCF
 1r1m77WF7Nw2IJzY1Srwkik7BhjnDw1gMCIOU1u0ustaax77Zr8MFes+DRrspubg81O+6l51xdK
 5QISUFk1DqhuHLw4BcVKXEWTxDH78RaoRnNCGMCD0CdKfiMmJgw6N1o/LIrefdhSYjwhVyjWvTI
 JdpN9+t7LHhzqL77Q++Tyj31BKBoYGdg3pNN6RbDEfdFCGSe
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
 Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
index 739e8afcacebe63ac6cd8853a58750f4f83146d3..82bc2f7c4006055df1031ddd4c64432c5ed3a14f 100644
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


