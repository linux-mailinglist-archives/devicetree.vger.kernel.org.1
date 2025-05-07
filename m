Return-Path: <devicetree+bounces-174826-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EA876AAECFC
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 22:23:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4EBA87BC5F6
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 20:21:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 826B628ECEF;
	Wed,  7 May 2025 20:22:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dxvdeDpb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB32F28ECFC
	for <devicetree@vger.kernel.org>; Wed,  7 May 2025 20:22:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746649361; cv=none; b=BdNY3sPJPPmNDMqnWlZ/xMCZHT+LsVKvZ0Vr5BGCpQvqSnh0bGPM+896xveLvxRw4zACndj237ZMFgt+KPK+SCB6aBjTYo66QWB+J8RVYzGMsAIXc50i8Ph0HRALhciGEPCXgr33NUKnA7VrpLf+JeZ8Svio0kv8bVTek+MHZQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746649361; c=relaxed/simple;
	bh=2yDnuvqnsMKb5v7FhJuaXMCece+lX8rcJxBH6QMUn9Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cpV9HJHjHuVzLR5sw5ksP2aRs1AAerVL2jtJ9rxlhc7LtPhm/2q+VA0Gm5U5P9atxlfJJHfb06wQAbSZyVcU5Vmem6tAisaoHSVOGoZdkTHx6DrHv+PAVRk7lnXNvvY9mPUoLIQngPkvmk18YBSMxEL9iOfdTMzEzpAItDGlAVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dxvdeDpb; arc=none smtp.client-ip=209.85.210.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f51.google.com with SMTP id 46e09a7af769-72fffa03ac6so170212a34.3
        for <devicetree@vger.kernel.org>; Wed, 07 May 2025 13:22:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746649359; x=1747254159; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=id9bhPaJz6moPdglTk4FYXKc5tAiLx4T44z9LJHeLkM=;
        b=dxvdeDpbUFiS+9ve/+ChCYLaNHc21o6iNRmI1Nx33I6lBPl7/4wyoEGU3nWJQs2hg4
         0yWEqOR1Cu6Fo/3vmUJL1SfE10iXdVmGDMxn/rQTwgIfAHQ+j0Qx+P6w50joio2dTL6D
         5v9s9SSshVo1phk6RpDWZQdHZcy4YQcfDf3DCm+VN6y0/LuLCcjsAkaGNo+d7KkbHSvX
         lQx7u1ASDP/e2kD1zBISfHi9F6ZwFeLuNNesZMAUDSgldC7+Q+bNRU1uGGqJm7OcZQ/E
         +Kq33WTm/sH/9IdXlNzL0wqjc2kilbQRMDaWfkRjgjIZD80xK2f14Ltq4UxEvzG46pRx
         TMdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746649359; x=1747254159;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=id9bhPaJz6moPdglTk4FYXKc5tAiLx4T44z9LJHeLkM=;
        b=tDTT/tFOZmBVIDNTc8LOrLNVBX09io/t+nI8s6ALd8PSy8gt5P+rm+C5HphZwhmIWw
         XRftAZqNsTahGmYxxAqvU9sb04Ky+YUkHFTrWHt+/Sq9zgI+g2C8JAYWwSD7Jp0hf/mS
         1XltPQqrAhIZKm/NfSCMESYPY3XNsS3nJ1lOdOZqxAY3VyPeThOtuaVJpuUlKFS8m5Q3
         KHz0hbwLjsm8h7wXH787+8H2cYE4ZpCbN81k10Lf+UKF9907ADPHonZpqQQRyzHwQdU0
         La4CWCF2iaas5OPS9oFkjySAH38FY0v3OCpm3ZEBe7IlKFgRJ9xhIrdI4v2NdChVDxTg
         lq2w==
X-Gm-Message-State: AOJu0YzttDXM2m6s9hrcf4C2qxsNfAJSMhjuu66kdswAdvI9xKTf/hkF
	WQUudATwhUzQTu7Gnv+NrysB45YuBHM1S0SfIlhiV4nLDMKprkgQ
X-Gm-Gg: ASbGncv3tJqVZmOHS7mcFDXvMAXpMxzYD0Ci0Nj0blI1Iv43eMufZKPcdetHW3KhkKL
	wFsIgBN0ZTYpLDstYWCHoBSW/hclar60pHCVK6iPs8RJcQ8tm0DQ2EIV+uBQYg65zplXeW1Dmhj
	Dkymq4PGx48hW9VGhMLYxOI2gOjaw5m9WhN1WSRAwQwgerxrJe+soLIqAKXIJbkXoHcY2HJ3R6n
	LuwzzsqV1XCiIYSUrfQAaSKgQrYAfufTMOrq5bAYUWiEfpaV7V/msdaX+DOeZ7yVwlEFev48K12
	QzLe2TKmeD9xQTyeonatrG/zfxTjkoe90bzJpBHDAgkYVTLoTf1dofbehoX1
X-Google-Smtp-Source: AGHT+IFO2FSa+xQWdLmtuKlKo0tEBUduiG8HDfdozWd6lG/VFdAHRJZVwS50QY1s0aePXNuu0vX5ng==
X-Received: by 2002:a05:6830:418e:b0:72a:48d4:290b with SMTP id 46e09a7af769-73210b239a5mr3495379a34.26.1746649358947;
        Wed, 07 May 2025 13:22:38 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf:e46c:46ba:cecd:a52c])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-732109df2dcsm725945a34.9.2025.05.07.13.22.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 May 2025 13:22:38 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sunxi@lists.linux.dev
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	ryan@testtoast.com,
	macromorgan@hotmail.com,
	p.zabel@pengutronix.de,
	tzimmermann@suse.de,
	maarten.lankhorst@linux.intel.com,
	simona@ffwll.ch,
	airlied@gmail.com,
	mripard@kernel.org,
	samuel@sholland.org,
	jernej.skrabec@gmail.com,
	wens@csie.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org
Subject: [PATCH V9 15/24] dt-bindings: display: sun4i: Add compatible strings for H616 DE
Date: Wed,  7 May 2025 15:19:34 -0500
Message-ID: <20250507201943.330111-16-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250507201943.330111-1-macroalpha82@gmail.com>
References: <20250507201943.330111-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add compatible strings for allwinner,sun50i-h616-display-engine. The
device is functionally identical to the
allwinner,sun50i-h6-display-engine.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../allwinner,sun4i-a10-display-engine.yaml   | 39 +++++++++++--------
 1 file changed, 22 insertions(+), 17 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-display-engine.yaml b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-display-engine.yaml
index e6088f379f70..81a173b41534 100644
--- a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-display-engine.yaml
+++ b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-display-engine.yaml
@@ -48,23 +48,28 @@ description: |
 
 properties:
   compatible:
-    enum:
-      - allwinner,sun4i-a10-display-engine
-      - allwinner,sun5i-a10s-display-engine
-      - allwinner,sun5i-a13-display-engine
-      - allwinner,sun6i-a31-display-engine
-      - allwinner,sun6i-a31s-display-engine
-      - allwinner,sun7i-a20-display-engine
-      - allwinner,sun8i-a23-display-engine
-      - allwinner,sun8i-a33-display-engine
-      - allwinner,sun8i-a83t-display-engine
-      - allwinner,sun8i-h3-display-engine
-      - allwinner,sun8i-r40-display-engine
-      - allwinner,sun8i-v3s-display-engine
-      - allwinner,sun9i-a80-display-engine
-      - allwinner,sun20i-d1-display-engine
-      - allwinner,sun50i-a64-display-engine
-      - allwinner,sun50i-h6-display-engine
+    oneOf:
+      - enum:
+          - allwinner,sun4i-a10-display-engine
+          - allwinner,sun5i-a10s-display-engine
+          - allwinner,sun5i-a13-display-engine
+          - allwinner,sun6i-a31-display-engine
+          - allwinner,sun6i-a31s-display-engine
+          - allwinner,sun7i-a20-display-engine
+          - allwinner,sun8i-a23-display-engine
+          - allwinner,sun8i-a33-display-engine
+          - allwinner,sun8i-a83t-display-engine
+          - allwinner,sun8i-h3-display-engine
+          - allwinner,sun8i-r40-display-engine
+          - allwinner,sun8i-v3s-display-engine
+          - allwinner,sun9i-a80-display-engine
+          - allwinner,sun20i-d1-display-engine
+          - allwinner,sun50i-a64-display-engine
+          - allwinner,sun50i-h6-display-engine
+      - items:
+          - enum:
+              - allwinner,sun50i-h616-display-engine
+          - const: allwinner,sun50i-h6-display-engine
 
   allwinner,pipelines:
     $ref: /schemas/types.yaml#/definitions/phandle-array
-- 
2.43.0


