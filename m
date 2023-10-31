Return-Path: <devicetree+bounces-13066-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 256E17DC772
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 08:39:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D3A55281666
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 07:39:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA36110A00;
	Tue, 31 Oct 2023 07:39:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b="PGtix28Z"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A19C20E5
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 07:39:49 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine.igalia.com [178.60.130.6])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF736DB;
	Tue, 31 Oct 2023 00:39:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
	In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=RyOH+5XohJsIi1BgqWOXofRQQQgrLCw4FAt/fm6z/yk=; b=PGtix28Zf4pAIEsP4nKidFn+f7
	huANLzHOeBDGKkkye39AHonmxcBa0p3WKZ4Y1JXbx8+tbZHTOC6f4WAB4IoamKHiye39bhyRlkw9e
	K0JUM74BPxm7yTs48GG8xbds71OmjUBUWw7jQBrWYQp2deNtknGblZTVrxS8zvIIGcIwBYA1Q2FXE
	kVBIsQPUSNhE5rwFfWaN0uOh3cRfXiahY0T6bgkLNOAitTfhvcQaA58rinWweUsG6FGds6LFrK98y
	9mFAvwij9iuTlU4WCx9jjwsZW/mHHxNjc68jTnxJWFwHS+Gco2U9xFKbxReucCYJpKvTz5PTHI7lM
	6ws7In1w==;
Received: from 251.48.60.213.dynamic.reverse-mundo-r.com ([213.60.48.251] helo=vega.mundo-R.com)
	by fanzine2.igalia.com with esmtpsa 
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
	id 1qxjLW-00FHU5-63; Tue, 31 Oct 2023 08:39:30 +0100
From: Iago Toral Quiroga <itoral@igalia.com>
To: dri-devel@lists.freedesktop.org,
	Maira Canal <mcanal@igalia.com>
Cc: Emma Anholt <emma@anholt.net>,
	Melissa Wen <mwen@igalia.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Nicolas Saenz Julienne <nsaenz@kernel.org>,
	Stefan Wahren <wahrenst@gmx.net>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	kernel-dev@igalia.com,
	Iago Toral Quiroga <itoral@igalia.com>
Subject: [PATCH v3 3/4] dt-bindings: gpu: v3d: Add BCM2712's compatible
Date: Tue, 31 Oct 2023 08:38:58 +0100
Message-Id: <20231031073859.25298-4-itoral@igalia.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231031073859.25298-1-itoral@igalia.com>
References: <20231031073859.25298-1-itoral@igalia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

BCM2712, Raspberry Pi 5's SoC, contains a V3D core. So add its specific
compatible to the bindings.

Signed-off-by: Iago Toral Quiroga <itoral@igalia.com>
Reviewed-by: Maíra Canal <mcanal@igalia.com>
---
 Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
index dae55b8a267b..dc078ceeca9a 100644
--- a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
+++ b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
@@ -17,6 +17,7 @@ properties:
   compatible:
     enum:
       - brcm,2711-v3d
+      - brcm,2712-v3d
       - brcm,7268-v3d
       - brcm,7278-v3d
 
-- 
2.39.2


