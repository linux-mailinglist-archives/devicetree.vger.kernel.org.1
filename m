Return-Path: <devicetree+bounces-13067-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B7D87DC773
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 08:39:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BA01D1C20BF5
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 07:39:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF3E510A0A;
	Tue, 31 Oct 2023 07:39:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b="MkjxmaIf"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F67010973
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 07:39:50 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine.igalia.com [178.60.130.6])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D178C1;
	Tue, 31 Oct 2023 00:39:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
	In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=wjkfA18vskmNpwq7uCNBs7pSL6GNgLLuP059XVeOTOI=; b=MkjxmaIfzpb2fodXDU2+I0m+bt
	tpGiekNhBPCx2qnvqa6reui58D99bNsjrtEgR7Dnz3K3ik8EomJbsDYSOOaysjMufrqLHW6N5p9Lz
	rXl52CeviBKM0YwHz34Eyoa9SX5q2pBsR5eBJ/yqj5KKoAlY6ICQGm3qBUHtKnDdnpdnmI79Nn6OG
	vIHYehHtYxNqovYMm/V5ljot8VcbUw+C613YKj7cfO2r9ktj4eXvZUVWS918k+kQmlchxDGb4ztUp
	GX/sfmj9BnPVC78th+jdXR0kbAXSDqATWbePnCs2/baYo8hhUJHdXo9dCgQ+z2D4Qd1yg2oZd9xxz
	I8dPD+jg==;
Received: from 251.48.60.213.dynamic.reverse-mundo-r.com ([213.60.48.251] helo=vega.mundo-R.com)
	by fanzine2.igalia.com with esmtpsa 
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
	id 1qxjLV-00FHU5-13; Tue, 31 Oct 2023 08:39:29 +0100
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
Subject: [PATCH v3 1/4] drm/v3d: update UAPI to match user-space for V3D 7.x
Date: Tue, 31 Oct 2023 08:38:56 +0100
Message-Id: <20231031073859.25298-2-itoral@igalia.com>
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

V3D 7.x takes a new parameter to configure TFU jobs that needs
to be provided by user space.

Signed-off-by: Iago Toral Quiroga <itoral@igalia.com>
Reviewed-by: Maíra Canal <mcanal@igalia.com>
---
v2: added s-o-b, fixed typo in commit message (Maíra Canal)

 include/uapi/drm/v3d_drm.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/uapi/drm/v3d_drm.h b/include/uapi/drm/v3d_drm.h
index 3dfc0af8756a..1a7d7a689de3 100644
--- a/include/uapi/drm/v3d_drm.h
+++ b/include/uapi/drm/v3d_drm.h
@@ -319,6 +319,11 @@ struct drm_v3d_submit_tfu {
 
 	/* Pointer to an array of ioctl extensions*/
 	__u64 extensions;
+
+	struct {
+		__u32 ioc;
+		__u32 pad;
+	} v71;
 };
 
 /* Submits a compute shader for dispatch.  This job will block on any
-- 
2.39.2


