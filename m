Return-Path: <devicetree+bounces-174821-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E449AAECE9
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 22:22:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8DCCD507074
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 20:22:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DA3328ECD0;
	Wed,  7 May 2025 20:22:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GQvjCa64"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ECB728ECD2
	for <devicetree@vger.kernel.org>; Wed,  7 May 2025 20:22:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746649358; cv=none; b=tmYyix/dv+/dap7y+zpyyD/eQL9iIUM4rYWdfnUUVgLv8BXTmxAcZ20sCDw59zGcbcaDaaS6Ro7EV8Bi9c2q5jBGLZkMXDQ1biLJENX1tQ3Yi4oXKzMPif/g4+wllLIlpumnCYXoBc0MWXbaPQQCKr+wDWJibamEgKWPomfH3j4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746649358; c=relaxed/simple;
	bh=7vLz3rjjqDY4MqwZRIg3tRY0XIdpWv8QPgzT+83NvjM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Qn3qR4jsPamiqqk5794D/eLBIXqSX3Lsr4EN74h+A/9QPtE063YHtux6G2FLHYPpeWx67K/ZRkOEVO4ROmGCEEy6g91uvQlwC3ZESuQLsCnJKi+iI31hew8G6QYipvnP5gSGgdUyehmGTWArdDN9rKKRIlzmJcHJeK+WuRWN7Uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GQvjCa64; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-72bceb93f2fso782067a34.0
        for <devicetree@vger.kernel.org>; Wed, 07 May 2025 13:22:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746649354; x=1747254154; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=seKIm/ljynfx7Gt5G3g1qPbmhqkI57NM8oBXOLDsPF8=;
        b=GQvjCa64gUH5hslxhexwpfaMWxskih5qmdWo94Y8najxgr6xVm69zkbG7TZB2B3cDY
         Ab+6sf/A0mn5nmSskGphrSy0wAYYvbO0CpMr3wn3H8AWS48SaT2Y8FRSMSxoHfjZAJJK
         JSXef1e8L9F5Yd6ec7WTgSHu6SapcuVxPEvEnmFePy4l7OaMf/Cka3IwiV0Yd6GTwZB+
         ZfTQdERE6n+qGPgxD9Rbh5gBI6U8QoHMWsw3CHOEPisbSjzfzVJAOr7Lfvffw5WpYKKY
         Vt7XF6UigkpW40Qry3Wow35JHOUyQ0z67onU1h/4n7Qn1OwArUPcpSbJHnMpELIUVyKZ
         a6nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746649354; x=1747254154;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=seKIm/ljynfx7Gt5G3g1qPbmhqkI57NM8oBXOLDsPF8=;
        b=DUrqHR455BGcakwFj3Qn4fjLon1dOdgAw/Sp+G4ZpXAbED50v9TmfYoqpDe55LaSBc
         2tlvebCJ3O0qXwxZ2v872FBpCFdXV3AvOg4HR8Q8p3l9iGMP4JoBri3S7/iJiVaN2YLB
         xNG29Gb12W/BfTKRxuctRkR0Fexdb3veA8hy2dtgbnsPjNsFN38vxjSHFfGqw3jcdlkN
         84TwRqSvzxI/1QyuepIbk8X7PzyEilt4SMWKKoJRBX9dbZeUMnbUG01Vh3Elh6FcPLwo
         tVtLuBOXkfTY3Ggbci1lp4GfGdd7x1IPq2cJTdZMLpVx48ClapC3JuNQnHb0QBGc4Va4
         hPTA==
X-Gm-Message-State: AOJu0YzUQW+39dwRIXcZZ9TKZxbHuVQDLtrtoJbXD9F2cE8xAcEaPNDr
	dyzsJ3omdDmIzC4CrFlPYSA4a4wmzL4vWHOvgnPYq2N6utiAYPdD
X-Gm-Gg: ASbGncvBGGdt67KLFmW2GB+evR5M+g1upyKHcFK+H5rQeVa7W2VDmdL0YMhDA05rF2U
	D1w7OYpAzv7W5DbaVVSYj+vglXg9nJKlqR1om7fSvRInD7gskgn48QwS0YySnB0s0CyRJhsbjas
	nsuVmkM4OxPxhki4W8rbPSoLW7M+vW6cLg/siL5M99Tx9aThMgq3mxZ1KzzCtcc/hlZko0Mhsg2
	h6BtyaRuQFeAGoNeF9Yb45QxiPYIA1AWLQkrOJ9RRn88nWe+y2+oJWkaaTS2VpW2zrRs7FMwSvY
	V6CpfiCZ2xRwQ7OnJZ1HkG958G2RCFohh0qtwH8faYRqiCfAKUdl6bFgz1gRoheOmp0ht8Q=
X-Google-Smtp-Source: AGHT+IHALZ6h0iSHrJndLa4ejWvNDTzp2WRFgVlLimexXrna9Pc67+SeUmi8bDDRLkq9QHonddAS4w==
X-Received: by 2002:a05:6830:33f8:b0:72a:b2a:476 with SMTP id 46e09a7af769-7321b364c5dmr525759a34.3.1746649354490;
        Wed, 07 May 2025 13:22:34 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf:e46c:46ba:cecd:a52c])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-732109df2dcsm725945a34.9.2025.05.07.13.22.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 May 2025 13:22:34 -0700 (PDT)
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
Subject: [PATCH V9 09/24] dt-bindings: allwinner: add H616 DE33 mixer binding
Date: Wed,  7 May 2025 15:19:28 -0500
Message-ID: <20250507201943.330111-10-macroalpha82@gmail.com>
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

The Allwinner H616 and variants have a new display engine revision
(DE33).

The mixer configuration registers are significantly different to the DE3
and DE2 revisions, being split into separate top and display blocks,
therefore a fallback for the mixer compatible is not provided.

Add a display engine mixer binding for the DE33.

Signed-off-by: Ryan Walklin <ryan@testtoast.com>
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
Changelog v2..v3:
- Separate content into three patches for three separate subsystems

Changelog v5..v6:
- Increase reg maxItems to 3 and add conditional for h616-de33

Changelog v8..v9:
- Correct conditional logic for reg items as it was not working for me
  when using dtbs_check
- Add reg-names property and description for the registers used by the
  DE33 mixer
- Removed Acked and Reviewed tags so that change can be re-reviewed.
---
 .../allwinner,sun8i-a83t-de2-mixer.yaml       | 34 +++++++++++++++++--
 1 file changed, 32 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/allwinner,sun8i-a83t-de2-mixer.yaml b/Documentation/devicetree/bindings/display/allwinner,sun8i-a83t-de2-mixer.yaml
index b75c1ec686ad..cbd18fd83e52 100644
--- a/Documentation/devicetree/bindings/display/allwinner,sun8i-a83t-de2-mixer.yaml
+++ b/Documentation/devicetree/bindings/display/allwinner,sun8i-a83t-de2-mixer.yaml
@@ -24,9 +24,11 @@ properties:
       - allwinner,sun50i-a64-de2-mixer-0
       - allwinner,sun50i-a64-de2-mixer-1
       - allwinner,sun50i-h6-de3-mixer-0
+      - allwinner,sun50i-h616-de33-mixer-0
 
-  reg:
-    maxItems: 1
+  reg: true
+
+  reg-names: true
 
   clocks:
     items:
@@ -61,6 +63,34 @@ properties:
     required:
       - port@1
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - allwinner,sun50i-h616-de33-mixer-0
+    then:
+      properties:
+        reg:
+          description: |
+            Registers for controlling individual layers of the display
+            engine (layers), global control (top), and display blending
+            control (display). Names are from Allwinner BSP kernel.
+          maxItems: 3
+        reg-names:
+          items:
+            - const: layers
+            - const: top
+            - const: display
+      required:
+        - reg-names
+
+    else:
+      properties:
+        reg:
+          maxItems: 1
+
 required:
   - compatible
   - reg
-- 
2.43.0


