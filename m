Return-Path: <devicetree+bounces-230549-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 17E65C038E3
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 23:34:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 264E13A42A3
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 21:34:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBA7E28489B;
	Thu, 23 Oct 2025 21:34:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="So2QKNNg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410AFEEB3
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 21:34:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761255249; cv=none; b=ZDs0o6nVDc9Fa8GaOtCzP1YQhevORHa/paUgrmV5pxU/pkBGSVUK7MM+SCwdWddDslGNpVKghArUWCDfWbUd3HeIgQOqnwemdcVmzo2Wjq/8sIqpAOIh4y+Dx/6YLkRSJxoakAcBRnXin/lJ4cQXJhZpKGN1o/0fLhmhQwBtn+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761255249; c=relaxed/simple;
	bh=QrDsumBR7XmAXhTajPbH62vMSoYGzD7KDyrcNpl1qMM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=dqYdyLRvDueupeZyYuYiPDVlttoYbkPzil52VZnxNViuf4wbXMZDyLhl0qiDqgwV2J5dNLMRt/htHkUdgsRpJBtMVgLu1J0CSsS0cde6YXnm0i9Md6EHb8Nbi0wMqC0Gb0PMLWHgbF89h+KCVeyT6F1sgUzTtkpIpwcPK+yXlBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=So2QKNNg; arc=none smtp.client-ip=209.85.216.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-33bb1701ca5so1319890a91.3
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 14:34:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761255246; x=1761860046; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=q2pvfpdVDgSz+tiqLq0LEmu6krJe5n3X3t1r06M3DaI=;
        b=So2QKNNgz1ATgQrl3e+Xr+vCfYF4tbJFsCV59f6j7YDRjo8X0dLnSlx9t0fJ9uU7wB
         7EHYYEb43mJQE7tOb0kSOJq5hZ+kWqzMm3MhNWODf7guMHEvD/CQuiL0AjpSDfQ/HaSW
         uUHqdP6kMCzAYu+4/LpgtJoX8fTB44dtcFVMzln1ARY91IgbdnmYUTH6iAtKRzxpAmOx
         Bt6ZVekrDR25uInq/85hfm6t0dOPXaYBGGwFWfv0NqOH6uSapGweTcOBG73gohUsPz0E
         pN1dunbOSeA28W8SYxO3fY4MUsGpYkauwgyyq2VmHU/jt1h66U2xzAbcDQ5FbVoWwK1C
         fPXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761255246; x=1761860046;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q2pvfpdVDgSz+tiqLq0LEmu6krJe5n3X3t1r06M3DaI=;
        b=efl5cJKh97D50yptYTrTEcVHM48Ag6FiUcewVSgt/UChDQLoxI/avwEmaSJcm07vVb
         PtTsrOq1VjAgouYlNjMxNWT2KHwcOL01vToq6Qj6oe/6H/TjXCcCJLap7+lIorrcmug4
         F54A3Mnu9tvwk8TRjvB7tOJMMDutIQJljmtJlHmofHnk0xQI9t0yFmFFfTm9pylulP1j
         CQsBIow9i7uQMf7gi0tjFL8wKIQAc9QJW6oL9iY4omQL8FLHn5mRnVMRYssJI3ZAh89w
         iE11Zi4wOPi/XEPMVHSqDU8Gv6SJacQIO/mhCU96joB05j4kZuZQbEo+tWPh4rf42s0K
         Jplg==
X-Forwarded-Encrypted: i=1; AJvYcCW0kGMQ6b5mLeGnfx27mAsyRGjNJTg5qMPP+T4uA0g5lFzOruCsaH9xrf3oP9Ggp012pOmnX7nzLtU7@vger.kernel.org
X-Gm-Message-State: AOJu0YxrQkCTF+6kz1LcpWRZPTxiewP0eSb4nUEEKchEbeRKOrHE4Jmq
	wSCRgvkMWAGMI7ks+K0Tt6aO3boK22mWbj6mero4atjnDhW394j4NPAV
X-Gm-Gg: ASbGncvVH2Cmo+uQzWNoeibbsHMQbA1Ex8KkI+sENdS8qaipBXE/PdUfp2AlADGQh5J
	UYUbDKHkMvaSn7P5EaaS2ZwThIFYIoGxYRXDX4+ZEEcWKm3o6uMVN+xqwxS2PXgRcnmBeXSplOx
	aqJRoV0b21tMgeKPixcfXPQOfwSiDTPvLS8BV6MdTs3IQPNDR1wYbT+VEffP4gSjYs61qrUUQ27
	GwcWWeS64HYCdaNQDFSu00cyEcDWSAexBLcj8LdojQBMJ949o1wmsJIzHWFRqA6jBKPVS70Egh5
	Nd1jKj9AF0h5et+yxg6ZDLdKEg3jcIXZtjvkfU3gaNVzi2k8sSr/PnZFAkX69T13RMlCVXKNWUA
	x7DC3YeecjdvelqqFKLzEcEBelUwNHqXWbUCZbBAQbB0z5yyRYz+p+DUcGiRMdyMjOItDbyUlq6
	FwBuur+twetHie37BcP8otrKD2n66HxQ==
X-Google-Smtp-Source: AGHT+IF3YGWDNWYMokVO+WXERUpBjg0IQ+EhQnmcd8t7unNBGwlJ5PPtm2xykzvuMO9uNrjZL1vC5Q==
X-Received: by 2002:a17:90b:3e43:b0:339:cece:a99 with SMTP id 98e67ed59e1d1-33bcf86c699mr37737123a91.13.1761255246585;
        Thu, 23 Oct 2025 14:34:06 -0700 (PDT)
Received: from iku.. ([2401:4900:1c06:ef2:36b5:9454:6fa:e888])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33fb017249asm3450734a91.14.2025.10.23.14.34.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 14:34:05 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Biju Das <biju.das.jz@bp.renesas.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
Cc: dri-devel@lists.freedesktop.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2] dt-bindings: display: renesas,rzg2l-du: Add support for RZ/V2N SoC
Date: Thu, 23 Oct 2025 22:33:50 +0100
Message-ID: <20251023213350.681602-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Document support for the DU IP found on the Renesas RZ/V2N (R9A09G056) SoC.
The DU IP is functionally identical to that on the RZ/V2H(P) SoC, so no
driver changes are needed. The existing `renesas,r9a09g057-du` compatible
will be used as a fallback for the RZ/V2N SoC.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
v1->v2
- Added Reviewed-by and Acked-by tags.

v1: https://lore.kernel.org/all/20250609231905.511904-1-prabhakar.mahadev-lad.rj@bp.renesas.com/
---
 .../devicetree/bindings/display/renesas,rzg2l-du.yaml          | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/renesas,rzg2l-du.yaml b/Documentation/devicetree/bindings/display/renesas,rzg2l-du.yaml
index 1e32d14b6edb..2cc66dcef870 100644
--- a/Documentation/devicetree/bindings/display/renesas,rzg2l-du.yaml
+++ b/Documentation/devicetree/bindings/display/renesas,rzg2l-du.yaml
@@ -25,6 +25,9 @@ properties:
           - enum:
               - renesas,r9a07g054-du    # RZ/V2L
           - const: renesas,r9a07g044-du # RZ/G2L fallback
+      - items:
+          - const: renesas,r9a09g056-du # RZ/V2N
+          - const: renesas,r9a09g057-du # RZ/V2H(P) fallback
 
   reg:
     maxItems: 1
-- 
2.43.0


