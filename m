Return-Path: <devicetree+bounces-239006-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 516CDC60711
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 15:15:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id F3C7735D59A
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 14:15:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6FB730148C;
	Sat, 15 Nov 2025 14:14:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hmg877+x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98AFC30148D
	for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 14:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763216065; cv=none; b=oIJwUFBNEYJw/4+bnmO0Ij2HLfzKtc17tjwCfQiOwmgnopyp0QaBxbyLp4k4DbjNxjuqYeGWjrVXtM6iia+0sCdq/xn2Sje5eTtZMaJG3X0Vsqhj12OwYcxzBDfGcEjrbU32rhITPKeessT3izMjZFuWb7JXffahCQZJDf4yDIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763216065; c=relaxed/simple;
	bh=/HxRScD2cq+UVkPX3OMV/vSVclwgfb2Shsd0VzOJaW4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qAU6cDB45vfv88SRRhpt2zbJTVCUVBYBEMbnera5U8Ce1FRMAlP7xzDmWR3viNxaddTfDVE9wVPn+aTk4Fm3aR82DnY/NQ1wjWbhiKBgKzFelyB88x5BFvUE6eHoh1d50CotafzedPC9MoqBfbADYWi0JuZZzInb7JYD8YrLrr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hmg877+x; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-b73161849e1so500080066b.2
        for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 06:14:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763216062; x=1763820862; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LChDHbx4y116grQ6jx2/dXjEvBwJOxeh6WSv85ZRlvk=;
        b=hmg877+xRIyp2uBdsxoXhMnj+JbSiO3Q4DlNEQc7jDiFylhKCZsR/d1kdwFpZfq6Ua
         DboQcOATBTAIwTPwj6QCUgZlMQzTF1/g433plzX7K4XksbrjryUDD2LFjITfyS+l+2EH
         1KgdnjcgFTTDm7LdVoleugOt2DVXtjkPlFdhCPNg9W0rEdiS3sjkwD8IgKqxScObfj2R
         VBFW7JoAe8jeV7haUz6UXNKU+P3IJmf7tgFDcH40jNet6sVTs7OVbOT7RnfuDb0W661p
         j9Ho7PQTcgEsRDhCzHf/QGGALjkH6Jftu8dDybR4cIxn9736/Nrd95+u5GImeMaqZX/w
         CpyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763216062; x=1763820862;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=LChDHbx4y116grQ6jx2/dXjEvBwJOxeh6WSv85ZRlvk=;
        b=Z9MYew9RNxqWxgBaPt7oTwlLt17+ow4LAik99TfPoBqPVhuMB/YV8mHZOgrqngtPRN
         5JDNMzVsWTQEA2O4p7XQcPxvo0McSLswUsKBaqH0EwUFXcCZOPlmPomDGvzFUoKIwtMe
         /w8GDwAjG+5++TdXih+DoIHkMO1Yd5CuiQAVxW8kVufSW3fdABSeZ8KiovwSwhYoRqie
         8Gzzpr1dtRZsa4UmmvkDtkGjvu4GblMW4cZ7lLVEGMGPOPfdxuQHDdQrCdZIZhgxW4do
         CFwNzN7QRu7byDjRhIv6Ei5jFk9OEtcZV7QQDIx7npecj/V86i29pQrIlZ+mz+ov2p/y
         RrkQ==
X-Forwarded-Encrypted: i=1; AJvYcCXBIRhtjFn9bq1hv0obcPq8hsC8tFjPC1GvELxhlN4s1hUw6dYpQU9jIJaxr2FYc3n/q4SJoGzlmIOE@vger.kernel.org
X-Gm-Message-State: AOJu0YzkJ6Xw+4JVYkWq427oVc/bRQ6lsNlsbBe1Ijxgx1QUzqBZIW87
	98PUaGSoTw+eeivyytQkcrpMmp/giaeTGCw/LP7AV2gw0kHQjINXDhGi
X-Gm-Gg: ASbGncvWyhj2CsRDumGDVscwzq2eIWUEoos2SwDlFJ+mIVNA5bJio1yESxhXpfNjcHm
	sddN1NKmTUBv2V6vpxIDjL6IsomD825+6Ux3KDukJdOeHBm08EDRSZrLXUFwj780kDQrAL8LcwS
	4k7ZVFnPzFYnumvOZ97J77ILZUarPXDMuOruwopJ6UxH380vBL/6NVfigYRR0OORWfDlmxncKbF
	lswsHqpNCPSFxLbOoFGVaTcOFARP0pvRsgriMZdiH2tUnfDTlsxOjhmYWSGv+cpJoBwDZDOQkh5
	Q2s276Bjs2wJQelDfTXA2JGDGOibp0rrOLOj2Kg6cPqmqhZe5Heudw487irRje25Wap4zbhDg9H
	PV4njpf1S7trijDXieRQUj+j+s3OwaOeesPaeUbVdYnoceEr6Dez584qVeBG+SsrtcNbIxa1iX0
	dbau25BFCXzGdWbaP5Qk1JtdI6yu5l7q+tNXqjRCRz4Wc7Xklz5/2C2Hh8LBV7Aa9/Tfg=
X-Google-Smtp-Source: AGHT+IGK96g9RzM8eg44aCNe4s7zkdHo6HIsmO/rv+pQP0RPewfWCNhEzO33viKn6j62oVKNtGFutQ==
X-Received: by 2002:a17:906:fe07:b0:b73:870f:fa2b with SMTP id a640c23a62f3a-b73870ffaf8mr113667666b.27.1763216061567;
        Sat, 15 Nov 2025 06:14:21 -0800 (PST)
Received: from jernej-laptop (178-79-73-218.dynamic.telemach.net. [178.79.73.218])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fda933fsm606189866b.56.2025.11.15.06.14.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Nov 2025 06:14:21 -0800 (PST)
From: Jernej Skrabec <jernej.skrabec@gmail.com>
To: wens@csie.org,
	samuel@sholland.org
Cc: mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Jernej Skrabec <jernej.skrabec@gmail.com>
Subject: [PATCH 6/7] dt-bindings: display: allwinner: Update H616 DE33 binding
Date: Sat, 15 Nov 2025 15:13:46 +0100
Message-ID: <20251115141347.13087-7-jernej.skrabec@gmail.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251115141347.13087-1-jernej.skrabec@gmail.com>
References: <20251115141347.13087-1-jernej.skrabec@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

As it turns out, current H616 DE33 binding was written based on
incomplete understanding of DE33 design. Namely, planes are shared
resource and not tied to specific mixer, which was the case for previous
generations of Display Engine (DE3 and earlier).

This means that current DE33 binding doesn't properly reflect HW and
using it would mean that second mixer (used for second display output)
can't be supported.

Update DE33 mixer binding so instead of referencing planes register
space, it contains phandle to newly introduced DE33 planes node.

There is no user of this binding yet, so changes can be made safely,
without breaking any backward compatibility.

Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
---
 .../display/allwinner,sun8i-a83t-de2-mixer.yaml  | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/allwinner,sun8i-a83t-de2-mixer.yaml b/Documentation/devicetree/bindings/display/allwinner,sun8i-a83t-de2-mixer.yaml
index cbd18fd83e52..064e4ca7e419 100644
--- a/Documentation/devicetree/bindings/display/allwinner,sun8i-a83t-de2-mixer.yaml
+++ b/Documentation/devicetree/bindings/display/allwinner,sun8i-a83t-de2-mixer.yaml
@@ -46,6 +46,10 @@ properties:
   resets:
     maxItems: 1
 
+  allwinner,planes:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: Phandle of Display Engine 3.3 planes node
+
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
 
@@ -74,22 +78,22 @@ allOf:
       properties:
         reg:
           description: |
-            Registers for controlling individual layers of the display
-            engine (layers), global control (top), and display blending
-            control (display). Names are from Allwinner BSP kernel.
-          maxItems: 3
+            Registers for display blending control (display) and global
+            control (top). Names are from Allwinner BSP kernel.
+          maxItems: 2
         reg-names:
           items:
-            - const: layers
-            - const: top
             - const: display
+            - const: top
       required:
         - reg-names
+        - allwinner,planes
 
     else:
       properties:
         reg:
           maxItems: 1
+        allwinner,planes: false
 
 required:
   - compatible
-- 
2.51.2


