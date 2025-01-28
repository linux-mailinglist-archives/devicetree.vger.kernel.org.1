Return-Path: <devicetree+bounces-141359-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EE807A207A3
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 10:47:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2BF5A3A50B8
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 09:47:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A5F519B5A7;
	Tue, 28 Jan 2025 09:47:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OZA64Pod"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81A73199FA2
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 09:47:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738057646; cv=none; b=kheBgTxn9PALcal4jXd7D/RubFd19N72n5L+88TOynM+uY0gTdNEXp0DI5KpeXvRteci6sX/SRuqKPkWGPEladX2TJcFLFtTC9uqA7nfTt+8f1lm80osSzQVt3lS2qkKKulVHfKUSRBSdEGLpoBF7WOVlhNFp1L3jseiIoXyL6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738057646; c=relaxed/simple;
	bh=Md/5da+88yo3EJ4Jmesyr5X02uyFCpA6HuzLXyhsrR8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=h72b/STiAii+WYPT98z6kaVoCwd11OpqQYG9LIK1/Iq6X4/EItj1O78Ew+UnyrAMguplvsbvOlEfQVU6D2E6bMiYW/njUo+juv2ZpQzUbvtxdRDQMsdDj1C9xL/8O6VnfBBALnVLTtec5cnSSpz0Afw8dEe5MyyIJR/T1AIlK6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OZA64Pod; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-434f398a171so4622205e9.2
        for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 01:47:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738057643; x=1738662443; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lTmfrndiqp9foNBlo0TFMcTfyEKWgHjTbx0OZ/UMQ8s=;
        b=OZA64PodP6ABG2YEmsTy+t9JWBLeZIhOZc+tH3O+COHD91SsQvuNAAbWAuQZbGI8ZZ
         qgO3Flnp8oq8jftct7FWoM8hYibf8vevRx5pP4OtSn7g8LMJwPDttPQxFMhbz10Gz8hs
         x2TBZkps+50oMVuTeQ0z/ljDLGvcZK5L63prTYPihA0ZXwwwUqD44gkhE6ue+o4wzlaF
         UWt5N82kfw7PxtpaaJD2FsHpf0oWeu6an28KXpsYHPS7XmPD1ba3L56UQZoUVfF157GS
         dDHrP7U1kr5WSk/X5wSWOEhghj5CrMPTcc6MqzjZmLmxv2EmeeU1yJTFPpe2QLrMEzp9
         l0yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738057643; x=1738662443;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lTmfrndiqp9foNBlo0TFMcTfyEKWgHjTbx0OZ/UMQ8s=;
        b=eS62gOSwv0Hsi0bywSz0rTxFAP/nCUxNC8ayF1pnysNiSkcCZHX1HiCoRujTzQ4I37
         DG67ISzRfSC+pQRDCol/MZXK9rcLITqRM6ocgAJDw8NkR/TOfcdMoF5gwtQaGwGNyCj6
         8LSRWM65fMMJnCFSC+3iFCggEHhgfmrWnmi9bu+ymxxdDocF3KuJAZhhbFe1Ik587Phw
         1S09qPZyVUOs4nUsptbaPpmSvyXDo4H5tIy2FJf75nUN0IhwD1AMPlZplrV1s7CB/9XH
         PS5hbwNhc0RzmMLhVkciBPkipC/KPcnQjvFfcNcqNsdGjifiOmrxDDhoNHpXegiysHIA
         iE0A==
X-Forwarded-Encrypted: i=1; AJvYcCWKZyXxlaPXui/yZ+4Xw7q41T0seMp4cgRBgXUUfF8G+OEKCnEUnmCNXvZxQe4ppaSQXicCuALhbXfh@vger.kernel.org
X-Gm-Message-State: AOJu0YypvpyLOFW1cAazuFYrmNs5rNodtKAm2weIHZa3y5u/0zClUqL4
	YNt9dr8ZvWBUTCRWzfjqLh1ouMgGu4VChuvMt39uyOY/1tJVC/vMrtqQDaImK0Y=
X-Gm-Gg: ASbGncuAWnXERPe3MzFGjc9HwSAI+WTRof9tzUT867wedIEBB5y7xcm+3JDcDKGyLDG
	13E8p4P7ANpPnDiBXFwmYzJW9M2Zi7NvHehpMXtTKE0FXjzYe6tXTBPeqiNhMGxDTDPKvMtKNx7
	aecJmYErBmhL3wVH1Trfu0CRH89zj4/RbzXv06xusCn3+3cnvXZukRiT3B1FdYKofBJb//lbFzb
	8qZeRFd6xa77JyA4uKRy2CJhg8UAEDiYMbhRBybj8qrHfz3N0prgV2miLoHFJoeOumnufwdjqZ8
	jzFIn3f9TMWyWFbtqL37IxIdK7A2
X-Google-Smtp-Source: AGHT+IGphrYVnQBNjNT6KJSZMftjAwxom8RcLx/vroNRf4BTwzMuXyMxnbel4sP5xzTO3KWriWLgAg==
X-Received: by 2002:a05:600c:350a:b0:436:17f4:9b1b with SMTP id 5b1f17b1804b1-43891476efamr162532165e9.6.1738057642769;
        Tue, 28 Jan 2025 01:47:22 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.98])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438bd50233dsm159711095e9.15.2025.01.28.01.47.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jan 2025 01:47:22 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	dri-devel@lists.freedesktop.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 1/2] dt-bindings: display: renesas,du: narrow interrupts and resets per variants
Date: Tue, 28 Jan 2025 10:47:18 +0100
Message-ID: <20250128094719.63776-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Each variable-length property like interrupts or resets must have fixed
constraints on number of items for given variant in binding.  The
clauses in "if:then:" block should define both limits: upper and lower.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

This was sent already in August 2024 (!) and still not picked up. Thus
some other people started doing similar in December.

Can this be finally merged?
https://lore.kernel.org/all/20240818173003.122025-1-krzysztof.kozlowski@linaro.org/

Changes in v2:
1. Add Ack
2. Rebase
---
 .../devicetree/bindings/display/renesas,du.yaml      | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/renesas,du.yaml b/Documentation/devicetree/bindings/display/renesas,du.yaml
index 3880b4c2ea9a..88ecabc4348d 100644
--- a/Documentation/devicetree/bindings/display/renesas,du.yaml
+++ b/Documentation/devicetree/bindings/display/renesas,du.yaml
@@ -174,6 +174,7 @@ allOf:
             - pattern: '^dclkin\.[01]$'
 
         interrupts:
+          minItems: 2
           maxItems: 2
 
         resets:
@@ -229,6 +230,7 @@ allOf:
             - pattern: '^dclkin\.[01]$'
 
         interrupts:
+          minItems: 2
           maxItems: 2
 
         resets:
@@ -282,6 +284,7 @@ allOf:
             - pattern: '^dclkin\.[01]$'
 
         interrupts:
+          minItems: 2
           maxItems: 2
 
         resets:
@@ -336,6 +339,7 @@ allOf:
             - pattern: '^dclkin\.[01]$'
 
         interrupts:
+          minItems: 2
           maxItems: 2
 
         resets:
@@ -397,6 +401,7 @@ allOf:
             - pattern: '^dclkin\.[012]$'
 
         interrupts:
+          minItems: 3
           maxItems: 3
 
         resets:
@@ -461,9 +466,11 @@ allOf:
             - pattern: '^dclkin\.[0123]$'
 
         interrupts:
+          minItems: 4
           maxItems: 4
 
         resets:
+          minItems: 2
           maxItems: 2
 
         reset-names:
@@ -534,9 +541,11 @@ allOf:
             - pattern: '^dclkin\.[012]$'
 
         interrupts:
+          minItems: 3
           maxItems: 3
 
         resets:
+          minItems: 2
           maxItems: 2
 
         reset-names:
@@ -605,9 +614,11 @@ allOf:
             - pattern: '^dclkin\.[013]$'
 
         interrupts:
+          minItems: 3
           maxItems: 3
 
         resets:
+          minItems: 2
           maxItems: 2
 
         reset-names:
@@ -726,6 +737,7 @@ allOf:
             - pattern: '^dclkin\.[01]$'
 
         interrupts:
+          minItems: 2
           maxItems: 2
 
         resets:
-- 
2.43.0


