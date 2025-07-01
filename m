Return-Path: <devicetree+bounces-191629-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DDB7AEFED7
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 18:03:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 24F7F3AABC0
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 16:02:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4F1227E056;
	Tue,  1 Jul 2025 16:02:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="tBw/LCHz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3586927C175
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 16:02:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751385725; cv=none; b=STkR8ULMsS5CvXFONJdzjWigGAXXIsuzrwtChR4G33up/TDIp3yoOodecGQ9DlYUnOyJSwMHIOeP11+akWh4rECwDjaXkCRv2ZTrKw7MfPyenkZOlw2WeQg6JGU2Aa4ow6LeBgMv3fB6zp6ezo7ZbSsntp4GKfqWYambl9seE/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751385725; c=relaxed/simple;
	bh=Eb8wuovSBuSoIotj4pnFiy2j63/jKfYOw2hKqjPwOoI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZfLI3DYpszzB326n5tQlXsI4H7nzv2hcuQv5mNV1k87k5EKlM+pwZCLt+ZlIfib/yAr4jAy2qY0ZjLooy7w7qMNqyaNtEB6eEKNQhFrJm6QQ/gKRT5yRJb9KoeYJrByGpW6ux0mR6GM/RPQ1JCRcaRhWQ2Oe0cL99BaMq/PRfO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=tBw/LCHz; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-3a528243636so3698055f8f.3
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 09:02:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1751385721; x=1751990521; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EOZP3BcptZSYROqm0ele75c0kFNzuWVKa5tBqUZYrLc=;
        b=tBw/LCHzRk4aNynL2Ar+OPkH99+QZdBE6O46mepYpVUqbD2F7f5p2IZNhlT7KZt+aH
         ksE7O7X7Seqwc0VpTaS3wmusUJMGd3Ywc3HNrIX9tYPXL3IvM2ndIPX47zNUKRGfxv82
         dD75toq+UpSWhKY5ZQKV0dyEEGrL+Q1A0lQuCcrU5ybGoJuloNRtRhFvCw2fi38rxrS1
         QTwucPUD9+EDMJAgCKe+4PA9gnXJwf9KoQwi2ivs1BbfE67zMBQ57Q/Uy4eh+YW2HTOl
         RwkWoyfLQpM4IT+a++VPz8DQUsJ3FCsatzVqlNFDA1sniRpQnKUb+NetqbLchgUbGLmD
         iF0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751385721; x=1751990521;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EOZP3BcptZSYROqm0ele75c0kFNzuWVKa5tBqUZYrLc=;
        b=fyuHBN1TlJGq1HbFCnnNo0aR5ErEkiO9PMXsEb5w9GAfaeWbg1Uo9MYksiU+pIe/EJ
         OIujYp3GLi5Jel5IyjWWfm+HnWAquQd2kjFYRcq9Tzwm0nOIngLJVq19XJ/qTWYQjV7R
         yweQQm9l1EuyBALTkDpOei0/TR26Pz/q40FOt2hIj1hULVkS1B6c5e4ND0P2h/uwL4rP
         xXcBPh1AWpGMVNfpFVjAQFMQbhPZCDAdyOf6JyQAEa/fjRkQx/aljtQ5LBaejwsjxaYj
         qRmoKQytrmpm5c+1r3po4dwhM5OrvJAHJyJzs3JzvQSDJgVFAWiYMR2I+c/hoj8P3/8G
         iCSQ==
X-Forwarded-Encrypted: i=1; AJvYcCUw8jE33Jlb3xO5KevM0u9Mdjz7Xe91nLfFkkZw6hKFM5mG0UDBkkSsBJ09YNEEaFwxQ63qOBay+JFB@vger.kernel.org
X-Gm-Message-State: AOJu0YyXBQ33zVKHh3g1onSQnKoN8LsO4Wu+9lmpwqkny0wBZM+zuku1
	ZePf7bLKRMrorix74LEi+bV68rJtz33KxUeZG1SrDQNywFK0FsaAM5zsD0oBVjI4uMo=
X-Gm-Gg: ASbGncu4pkiyvrgaiOA0B/rQKsodvOhshrzmR88nxIWLo8hIdWi3hdcrTC39RzetwGK
	Ku1W15tPlhgVoNgQnoJlsDCSb6cFtbYlMljbZKMtreC24ns0WgOuU5XDOakbkn98STXpMI4HKge
	MN10uH2zlUnzKw2qHJzHso8DkHMsdDdRezrh6kF1TWxYdHwmVgX6ojaVXE5htRmlIksEGeMgAeo
	BDcisnFNlHWg3hb0LTKb+f0sBgADI7ian/9DnO3X7PlI4Vq5UKgEqFhgaGGtKPjR5kqv56lpdmm
	ouZxLerH2WMzxEqmAoU11LrFrXjK3kFbg3KXmuzNqoHlUdOfw7qy9yydb6432MeZ
X-Google-Smtp-Source: AGHT+IGrDuGREIKIk2nqkFoR8uzIUjeElqTk8BPXwPJayvJvDoPAeAcRb+gzpufKi2d4K71fEGSFzw==
X-Received: by 2002:a5d:530d:0:b0:3a5:27ba:47ba with SMTP id ffacd0b85a97d-3a900296715mr14744114f8f.44.1751385715670;
        Tue, 01 Jul 2025 09:01:55 -0700 (PDT)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-45388888533sm182500995e9.21.2025.07.01.09.01.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jul 2025 09:01:54 -0700 (PDT)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Tue, 01 Jul 2025 17:01:36 +0100
Subject: [PATCH v4 1/5] docs: uapi: media: Document Raspberry Pi NV12
 column format
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250701-media-rpi-hevc-dec-v4-1-057cfa541177@raspberrypi.com>
References: <20250701-media-rpi-hevc-dec-v4-0-057cfa541177@raspberrypi.com>
In-Reply-To: <20250701-media-rpi-hevc-dec-v4-0-057cfa541177@raspberrypi.com>
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
Cc: John Cox <jc@kynesim.co.uk>, Stefan Wahren <wahrenst@gmx.net>, 
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, 
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
index 6e4f399f1f88..84ec1dbcf41b 100644
--- a/Documentation/userspace-api/media/v4l/pixfmt-yuv-planar.rst
+++ b/Documentation/userspace-api/media/v4l/pixfmt-yuv-planar.rst
@@ -955,6 +955,48 @@ Data in the 12 high bits, zeros in the 4 low bits, arranged in little endian ord
       - Cb\ :sub:`11`
       - Cr\ :sub:`11`
 
+V4L2_PIX_FMT_NV12MT_COL128 and V4L2_PIX_FMT_NV12MT_10_COL128
+------------------------------------------------------------
+
+``V4L2_PIX_FMT_NV12MT_COL128`` is a tiled version of
+``V4L2_PIX_FMT_NV12M`` where the two planes are split into 128 byte wide columns
+of Y or interleaved CbCr. The height is always aligned to a multiple of 8 lines.
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


