Return-Path: <devicetree+bounces-158403-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F0D8A66481
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 02:03:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 725CF1894E45
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 01:03:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C72D46426;
	Tue, 18 Mar 2025 01:03:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b="Sj4PzN59"
X-Original-To: devicetree@vger.kernel.org
Received: from fanzine2.igalia.com (fanzine.igalia.com [178.60.130.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B3123A1B6
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 01:03:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.60.130.6
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742259821; cv=none; b=sSffAg0G3t1QDURgCA8aQas8k1D5FLpKcyx6CBAXTniEtHnWc44VTJT7QrWuZJIZqUVpMRuPFJgjXn7WPaEgyTTDqVPwo88IBGefKxbdwzJoI7yH+DX12oIFW9pPayWQ2QY+kABjhnbabef5v9SvDwP44mIQEQHP/+K5g7MUXS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742259821; c=relaxed/simple;
	bh=rJbTknw79ReeQ6TgfiOLvPcNamduI2cLLWcndgkzxHc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ERN55lhOEYI6YKm9MA45oj3f6GLn4s+rbvx9HrQSYZdvuXz3FnpN9RxHgSxTvlTNewoKEbTKW9IpfLBuTsEipn4CW6CTtiV1bhhhGgy+1VwZOLbIcOUfYjTWsupu8Ap49f8d3/Z04zEm4PIluZTmho8CDYuZfKUuF4DjCo4uUi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com; spf=pass smtp.mailfrom=igalia.com; dkim=pass (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b=Sj4PzN59; arc=none smtp.client-ip=178.60.130.6
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=l8NxVomW9DWAYhxW1+ZIVolnO/+UNs5eeSPgtB/h/M8=; b=Sj4PzN59A03zaO+q3OMLF2+6uZ
	wXiulUB+WrDhqxWV2ZMhwlCPlzL+stJ6IzhfUxRgT6CPuOYj2q7v7RXBnhClHG0lR1FHGZprjZQWV
	Rnu6j2RuY8T9SHnhxUR4e/PzO8A1NOj6tD9dda3d33haHa+uNnQCBLE3d0KZqd1TTcyFtyy7XPhg/
	5ISjzflSwTHz+axuQ65XUSVW6H28+otFVePXYUI++DGLPxgR7xLqhcFYKhhfmP+K17CjvA32fiK1p
	f5EMyrdrfCoB0yvGnEyaissv5hfkMUx/QZnDF0AT0PxbSzwq1ENmj3eSslCo/fpLxbikOAKq2bmsW
	1ORbAteQ==;
Received: from [189.7.87.178] (helo=janis.local)
	by fanzine2.igalia.com with esmtpsa 
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
	id 1tuLMh-002UCS-Od; Tue, 18 Mar 2025 02:03:32 +0100
From: =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
Date: Mon, 17 Mar 2025 22:01:11 -0300
Subject: [PATCH v6 3/5] dt-bindings: gpu: v3d: Add SMS register to BCM2712
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250317-v3d-gpu-reset-fixes-v6-3-f3ee7717ed17@igalia.com>
References: <20250317-v3d-gpu-reset-fixes-v6-0-f3ee7717ed17@igalia.com>
In-Reply-To: <20250317-v3d-gpu-reset-fixes-v6-0-f3ee7717ed17@igalia.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1205; i=mcanal@igalia.com;
 h=from:subject:message-id; bh=rJbTknw79ReeQ6TgfiOLvPcNamduI2cLLWcndgkzxHc=;
 b=owEBbQGS/pANAwAIAT/zDop2iPqqAcsmYgBn2MZHE5MmRnWamdkPq4xoiS2j1Dzg4tLtKaEVL
 w1MqBdV4b6JATMEAAEIAB0WIQT45F19ARZ3Bymmd9E/8w6Kdoj6qgUCZ9jGRwAKCRA/8w6Kdoj6
 qqdXB/4qLFTgdUcLG61sC0yWNQ7FgY0ocZLSoh4FnMLrW4eN0mGYF4lu1/Rw5awKya7M4JB6e1R
 MVbFbe2oyDNn2LLWQq0hlrDlnEjcifEc7skDEF4wL/gs9QkhoqfzNCGZhc/MqqqW2vsqDEIMRuP
 vA66R5E3z6q5/UdrCwGuIIVU65R9tyanOmqDlfLiow/g2ah0hJWCoeaDVi9/Vu2EV548PwcERzi
 HrgN6G9IMe5eiE3Kntp2qz9YFkkvtTptKCVBjaAn6aju0elM3QCy/TAN3b0oKbZKdnqhR9kEM4d
 +Kb8nQGT0IFiGbmGZWIZM1qbkJ2ECRCiaYIL5BweIPIfW2tt
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
index 6a1a09031983eda4691a939329ed159b32f77669..dd2cc63c9a51da11691e4e81b225b74fbe86d709 100644
--- a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
+++ b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
@@ -77,10 +77,12 @@ allOf:
           items:
             - description: hub register
             - description: core0 register
+            - description: SMS state manager register
         reg-names:
           items:
             - const: hub
             - const: core0
+            - const: sms
   - if:
       properties:
         compatible:

-- 
2.49.0


