Return-Path: <devicetree+bounces-170023-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F22A9965C
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 19:20:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 982711B855EB
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 17:20:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE1FC28BA88;
	Wed, 23 Apr 2025 17:20:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="OmyDzFzZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFB8828A419
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 17:20:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745428841; cv=none; b=GKVPefOIARKCLAelkUkFu3lcV8CSYFmGEtd3VJAI+gn6UzhzctlbWpKh7POAGSayEkfiF8mTtq6WMkTWuoUV0J4OLCwz4jqanYj06zm1Z4DB1AHMZMHJqyyA+GUqBqCgMDOd8FYMTRz+9Ui1mtupvbtFb2RCjM4sTI+XfVNAxpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745428841; c=relaxed/simple;
	bh=o80nFA9ki1lj4fsMeet2lUWOP7Liqo/x1fkL1KJz1uE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UuTLg1S5OgkccEkOfZSAHfQwAnaPXNWowOq9cU4qtaRtg5LGFTdiHkE4tB9l3EaWb4y6DHVOPMFKjWJKShhCgZYzm8eB7JY6mitEBYoDdLOcXuyycAXyCuC50i1pe+BVC9XFchUXPd9NCDjY/Pn+3iCPQ9VPOjVFlv73FuV/suE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=OmyDzFzZ; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-43cfba466b2so699385e9.3
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 10:20:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1745428838; x=1746033638; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dY5Z8v+X+nz1eokOU34c0ipWgG+WmjgO9GaqVuQeGj8=;
        b=OmyDzFzZUgiVaDgUbwKcwSfF5HnyjD0MYPKbj6XSNSA4GVzQjkToq/OVd75uM1dj0s
         hlkcYfXzncHRwPCtcXMtGG73I/Ic2rjC72TD596kk2wUfC78lsRlt7h6Zz7C0GqL4x/B
         899o+fn8XqfsbOe9x3j3R4RFAe+iY4BGmGB5Eh9ZfDXLGOVmAZ5rXHt0dXeLSSoMYntH
         d2ssR5qe4bNq3Amh4gqB7ND2KDAEay2Q15mePHDhnCubfVdUPJgJ4bNxmkDuQl+1btbX
         apxeDCXnDb7yLYdDfQ+r0rVgDafuMxnJbhDeHgwjLBvZUuU4tlTHoimbJlLbwBTt8Kuy
         L95Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745428838; x=1746033638;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dY5Z8v+X+nz1eokOU34c0ipWgG+WmjgO9GaqVuQeGj8=;
        b=MBbKPbQp/bxsAZneXmTetmy+z3PD04+b3bt/p/s56D4ca0ONNO3HCGC0qOkn0KH5DY
         RapY7jHXy5Bb03SwwyKPlto4A/Ps+zllkaHhFLPYnafHWluTZH7Aq3OxnxCBYJ08U84X
         uq7Fy/irE9DWTtqZyNz4tpt4xQrkDzzMMXG/nm/ng3EFUY/kaRKnmxYpKhUEY8MRSdyj
         QTRswgHm83ZwtHl3P5buX/C4I+DMeBPh9IEc9hpHaHUwrjKlf/hMACoO7H2Aw271iNCB
         tRKnSBGGFDvYsVbgbsWa1ro2JFNP9+e5cRqwQfiySGWEpbrzUZmdNrT6LM+U7abus9k+
         YfnA==
X-Forwarded-Encrypted: i=1; AJvYcCWT3ep6Ug9N+R5JmZyEbVcrVhoABY1qvDlYkWbSUcXpZrlqP26Y2OjZ38DPvInfCU7FBFJfJtCFFnHz@vger.kernel.org
X-Gm-Message-State: AOJu0YyQMAoGgarOEYsI1t3USialOR0COgngbI01qeqvtGciIIP0rPug
	UwZUo5kE/dvpMNNAg2ztWIWzj1UhdepdBxFXITnwo6njlgRiNifQukjMRfwTZEQ=
X-Gm-Gg: ASbGncvVhTk9TsIYk2aMP11Lx1LT2NX9iHz8OtN6nzvd3Lb8sjOSi3zb5RD7muMZCjb
	LB8gbybs9UHNpfrFQLo5AFCiGZaVKO9WIuUQRFt+8ycjI3aetMtVnnAVJEbGwAlBPeR80UB7Pix
	EAcIMFquivDlSrJfISmjEVH7DkiJOir56BDCONMACI3oV00bDE18yIn4dQlohaFSCK2peyhO6xB
	+8yDJeNugWMdF80BaM6ikKOaTphETDEVaLjHKjHtphJdmqIrgS5BBkF8thDASS/eu15pdGV1ztR
	2wADhvIR+R7KBEASZ6ZmCd+CuQTI3FNj
X-Google-Smtp-Source: AGHT+IFF1u6bufdbWvx/7orMXvGpO3G+M0zO/iTcUIR8n1s+97nA5E2rJNbe44Zk4+MMT8SNyCMZ4w==
X-Received: by 2002:a05:600c:1f13:b0:43c:ea36:9840 with SMTP id 5b1f17b1804b1-4406abf992amr161169035e9.22.1745428838219;
        Wed, 23 Apr 2025 10:20:38 -0700 (PDT)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-44092d18433sm32940945e9.1.2025.04.23.10.20.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 10:20:37 -0700 (PDT)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Wed, 23 Apr 2025 18:20:18 +0100
Subject: [PATCH v3 1/5] docs: uapi: media: Document Raspberry Pi NV12
 column format
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250423-media-rpi-hevc-dec-v3-1-8fd3fad1d6fb@raspberrypi.com>
References: <20250423-media-rpi-hevc-dec-v3-0-8fd3fad1d6fb@raspberrypi.com>
In-Reply-To: <20250423-media-rpi-hevc-dec-v3-0-8fd3fad1d6fb@raspberrypi.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 John Cox <john.cox@raspberrypi.com>, Dom Cobley <dom@raspberrypi.com>, 
 review list <kernel-list@raspberrypi.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: John Cox <jc@kynesim.co.uk>, linux-media@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailer: b4 0.14.1

The Raspberry Pi HEVC decoder uses a tiled format based on
columns for 8 and 10 bit YUV images, so document them as
NV12MT_COL128 and NV12MT_10_COL128.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 .../userspace-api/media/v4l/pixfmt-yuv-planar.rst  | 42 ++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/Documentation/userspace-api/media/v4l/pixfmt-yuv-planar.rst b/Documentation/userspace-api/media/v4l/pixfmt-yuv-planar.rst
index b788f6933855..b5b590f234b0 100644
--- a/Documentation/userspace-api/media/v4l/pixfmt-yuv-planar.rst
+++ b/Documentation/userspace-api/media/v4l/pixfmt-yuv-planar.rst
@@ -827,6 +827,48 @@ Data in the 12 high bits, zeros in the 4 low bits, arranged in little endian ord
       - Cb\ :sub:`11`
       - Cr\ :sub:`11`
 
+V4L2_PIX_FMT_NV12MT_COL128 and V4L2_PIX_FMT_NV12MT_10_COL128
+------------------------------------------------------------
+
+``V4L2_PIX_FMT_NV12MT_COL128`` is a tiled version of
+``V4L2_PIX_FMT_NV12M`` where the two planes are split into 128 byte wide columns
+of Y or interleaved CbCr.
+
+V4L2_PIX_FMT_NV12MT_10_COL128 expands that as a 10 bit format where 3 10 bit
+values are packed into a 32bit word. A 128 byte wide column therefore holds 96
+samples (either Y or interleaved CrCb). That effectively makes it 6 values in a
+64 bit word for the CbCr plane, as the values always go in pairs.
+
+Bit-packed representation.
+
+.. tabularcolumns:: |p{1.2cm}||p{1.2cm}||p{1.2cm}||p{1.2cm}|p{3.2cm}|p{3.2cm}|
+
+.. flat-table::
+    :header-rows:  0
+    :stub-columns: 0
+    :widths: 8 8 8 8
+
+    * - Y'\ :sub:`00[7:0]`
+      - Y'\ :sub:`01[5:0] (bits 7--2)` Y'\ :sub:`00[9:8]`\ (bits 1--0)
+      - Y'\ :sub:`02[3:0] (bits 7--4)` Y'\ :sub:`01[9:6]`\ (bits 3--0)
+      - unused (bits 7--6)` Y'\ :sub:`02[9:4]`\ (bits 5--0)
+
+.. tabularcolumns:: |p{1.2cm}||p{1.2cm}||p{1.2cm}||p{1.2cm}|p{3.2cm}|p{3.2cm}|
+
+.. flat-table::
+    :header-rows:  0
+    :stub-columns: 0
+    :widths: 12 12 12 12 12 12 12 12
+
+    * - Cb\ :sub:`00[7:0]`
+      - Cr\ :sub:`00[5:0]`\ (bits 7--2) Cb\ :sub:`00[9:8]`\ (bits 1--0)
+      - Cb\ :sub:`01[3:0]`\ (bits 7--4) Cr\ :sub:`00[9:6]`\ (bits 3--0)
+      - unused (bits 7--6) Cb\ :sub:`02[9:4]`\ (bits 5--0)
+      - Cr\ :sub:`01[7:0]`
+      - Cb\ :sub:`02[5:0]`\ (bits 7--2) Cr\ :sub:`01[9:8]`\ (bits 1--0)
+      - Cr\ :sub:`02[3:0]`\ (bits 7--4) Cb\ :sub:`02[9:6]`\ (bits 3--0)
+      - unused (bits 7--6) Cr\ :sub:`02[9:4]`\ (bits 5--0)
+
 
 Fully Planar YUV Formats
 ========================

-- 
2.34.1


