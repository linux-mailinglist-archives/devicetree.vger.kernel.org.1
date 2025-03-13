Return-Path: <devicetree+bounces-157277-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A7E3A5F8E4
	for <lists+devicetree@lfdr.de>; Thu, 13 Mar 2025 15:47:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E1046189DCC8
	for <lists+devicetree@lfdr.de>; Thu, 13 Mar 2025 14:47:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44D61267731;
	Thu, 13 Mar 2025 14:47:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b="dem+SQj3"
X-Original-To: devicetree@vger.kernel.org
Received: from fanzine2.igalia.com (fanzine.igalia.com [178.60.130.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B552486337
	for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 14:47:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.60.130.6
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741877222; cv=none; b=eRL0M/bNvyboI9lrpvyWVs944pRuEiJfy3AiHdnkk5ALyCwwwaCVP7oXw/nvUhvFZ7g82duEgOJx9eBwdc0xbXFJOCSoG5bUZiHPabHNv8fLlR30PpXp4eS3tjt2xe0Gq8qtV70AecX1RgmZR7sNcY2m0KvhROMZxPq7wTIaEpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741877222; c=relaxed/simple;
	bh=r5imuymP4X0zUGvpGaAkVo75JWLZIVFCwbk+odMdqSc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bKjw+sExJ0ljgN4kXtpUD9KU0RolWgIxd4LkwA32yKTYw4JuDIPQIcfkn4Osg2ef4Ev9MwBwCAocNNAwBpQtiyLQXAO2WbKnFcXTLB/Zs5WQAKRUn8lOU2J+d8Z/9kNZjjCwDsd7gJHQJ0WhxNGEXFrcAqkWHOw6/iMWjW1LM9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com; spf=pass smtp.mailfrom=igalia.com; dkim=pass (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b=dem+SQj3; arc=none smtp.client-ip=178.60.130.6
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=hGOuamMSkBkgB1uiAeAodBYuwsjFtZOlYclf9AOrTik=; b=dem+SQj3/UUsdId4+/dkPFS+qw
	6DLtDpBmw0AMrBeEVTe6oRLRCcFrLdP45uucF+wuKybrGZv+dge8Nci5auBvqGPkrRMJ4MRibYBWm
	Cn3uEbl/jHNSyi4dJFCuR2sNF9uv9yylFeuD5f6dadFc6h/B7XT6v6Fp5GJsmWjIH888BBPY2f0CY
	k3EBh7uL7gbtOaL1GmkMFd2+28SbOH+PDPsUND4GC6bg7s2ugKrJRSD4P/4OViis2ZzsBpmpRKCsu
	W4mzGbZ2Ai5PVA+vBrWS6Pre5YztYL84I0NrRexFowsMavcApAYq4VhvNSMZoP6+8+wuDoet1kx5z
	ZIkc3KLg==;
Received: from [189.7.87.170] (helo=janis.local)
	by fanzine2.igalia.com with esmtpsa 
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
	id 1tsjpi-008Cju-F8; Thu, 13 Mar 2025 15:46:56 +0100
From: =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
Date: Thu, 13 Mar 2025 11:43:30 -0300
Subject: [PATCH v4 5/7] dt-bindings: gpu: v3d: Add SMS register to BCM2712
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250313-v3d-gpu-reset-fixes-v4-5-c1e780d8e096@igalia.com>
References: <20250313-v3d-gpu-reset-fixes-v4-0-c1e780d8e096@igalia.com>
In-Reply-To: <20250313-v3d-gpu-reset-fixes-v4-0-c1e780d8e096@igalia.com>
To: Melissa Wen <mwen@igalia.com>, Iago Toral <itoral@igalia.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nicolas Saenz Julienne <nsaenz@kernel.org>
Cc: Phil Elwell <phil@raspberrypi.com>, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, kernel-dev@igalia.com, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1129; i=mcanal@igalia.com;
 h=from:subject:message-id; bh=r5imuymP4X0zUGvpGaAkVo75JWLZIVFCwbk+odMdqSc=;
 b=owEBbQGS/pANAwAIAT/zDop2iPqqAcsmYgBn0u/IYGgl95UOhl6r1F1d0Quk4tDL7e4Vs4Dlk
 A1q211C0oaJATMEAAEIAB0WIQT45F19ARZ3Bymmd9E/8w6Kdoj6qgUCZ9LvyAAKCRA/8w6Kdoj6
 qsDXB/sG5DkDOjt0FoT+GPSiTTIsYZ3k2uUdRaJf94Qlb730EoVwMp0hr+qutLNGXyreilcjeRr
 sC4fp124VLFgb/ogR+jxlYZ8SlF/BteqOenlhRbrzv0A1j+TXcYAwLMn2Jv9B+z2PlhaGWs0ifL
 /sNBOL3RUMXFv/NgmWEZCHHIsZ13GIvlPnK1n3UiluDkBkp6mbKrMzROXCu2Fv8g80aBOLwVWx9
 N73Tl5Pfnt7DsUFi8LwRSXPAmmiyg60CMMSnflCihkBQRBUwLuyB0bHa7eh7tUsB8byIH1m1XAY
 y9gHuzfnY26px+ViiTxKISwZpIiohQZFaheyKqfFVkfRYbcy
X-Developer-Key: i=mcanal@igalia.com; a=openpgp;
 fpr=F8E45D7D0116770729A677D13FF30E8A7688FAAA

V3D 7.1 exposes a new register block, called V3D_SMS. As BCM2712 has a
V3D 7.1 core, add a new register item to its compatible. Similar to the
GCA, which is specific for V3D 3.3, SMS should only be added for V3D 7.1
variants (such as brcm,2712-v3d).

Signed-off-by: Maíra Canal <mcanal@igalia.com>
---
 Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
index 9867b617c60c6fe34a0f88a3ee2f581a94b69a5c..739e8afcacebe63ac6cd8853a58750f4f83146d3 100644
--- a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
+++ b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
@@ -81,10 +81,12 @@ allOf:
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


