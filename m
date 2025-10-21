Return-Path: <devicetree+bounces-229423-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC39BF74BF
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 17:23:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1C5594EAF8E
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 15:23:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CCCB343D9D;
	Tue, 21 Oct 2025 15:23:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WvffEN+H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02D3F340DB8
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 15:23:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761060189; cv=none; b=qp/myLODip4j6DIFK9cEJarYKyw8g7b3d1WLl3eUFhFDCQfppxxs4sk1ybfnZ3k/cTxZcZ4qr3LpM3DOx9jQ2i37Y87I2s4JFFNliRZz9dlsoRAI3teWJqixsG+BGDcMNv2cMj/WLmPfmKRaU26wgNzHtr6aW+U+MN/do85IRvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761060189; c=relaxed/simple;
	bh=PQHRQLkaOpocDVovjq9TPa+wLtVR6j8ujZmxOlMN0iQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gOQkiQ40V4OWorxawHm9QzV3iChn6a7/342oIzk2pVyETzxfW+FP1Y7DRzXuagKErxeeT+0FJ3o8IZMqfXxEqejp3q4GSZVxpOppJeBYFUrC8enO0O+i9rXb7DYFMNI5SYFDBkDV9zUi/q0Otkv4fP/0eiti2i/+LpzP+VG9+6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WvffEN+H; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b5e19810703so940946866b.2
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 08:23:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761060185; x=1761664985; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iRUWZKJz8QXcL7JDWXMsqyjuK/+v8dxv2RUaG2Er49I=;
        b=WvffEN+HXsNxwsmIX6BjV53e9GzOA0KzMuEg3fUpOA4nYpqfEsFLMNOVDGYY+uXyOF
         /3i4GlCuF7JYNaTZeQJQsrYplQUaLknxEAlNACAxWfldiJVOgtGVeXRIvxHJu0i8wvRK
         SfCQCQcYxSF+1fuxT22NnhYsE+DEmh7ROF3P2lbQyBmWJ/YFwVcyEamf2SINh1mh7C8m
         qfO1Z05YHn80ItWJ8MsIQQrPdwYNDOw2ZZr+tm3pWbalb5u+aT29/DcODcnhxI/7tNnE
         b+/bW+Az6NZ+ioSSB2t1HVxKinIMcMePd/bDrvNRNn2AY1B9Y9YyN6F2xoCcHZ7tFg8R
         duOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761060185; x=1761664985;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iRUWZKJz8QXcL7JDWXMsqyjuK/+v8dxv2RUaG2Er49I=;
        b=vD7TWL4tC9fPSqOFsH2JcD2FwA1B5xouyLp+Q9E55AoGEsc0948oOVI+4oO/PnS8S1
         z4UOv+jpiJtSXNhS1qHpfe9S3/uSO8f52m89o3m7fsdxRqw5jciSr8uggah6iHY47pOd
         PgQRAggwLsM56S8i1VL4/2KEtg4/ZnKd7MztuEofHi10cF4OdHL2T4rQN2wfN8rThhXO
         q6jhkQvmIVZGIDor3uR5FkJLuKpwrBjgvV60jeNwlMkyCcfknkaAQr8C49Vgw7qpyz0p
         oHLo78Wl59L9CmHE2+sWCqaaEtr0aeNJAUpwS8OzRJdF4Co/tnVp/Dzc8n5Yb/DxPoHh
         +SPw==
X-Gm-Message-State: AOJu0Yz8EcwdezjmNnFZPKfB0Uap5TIsqM0mMVXQm5iLRRlLw+zAHNuc
	DVrKQcHcamE5NWyQnpAP1ucFNnWbzu7LlQ44v399fqxuOsoxmwWtqak1
X-Gm-Gg: ASbGncuHD1nMfcoXEN6j5Hd44hu8UPgjKzBwfMxMY6HbUbzBtKaILhlrwJvPCrD45py
	3xAlp8s+8If5ahfW768lLKRZmGs8hkiPdOyX17NiWO9yeVPCkBFeKkg/+FsbxdMBBNVbN5f4ZKi
	bEIDO3kZLlWqyTab1fKLjY9p9SigGAiDkC00ZWCBOkzvoZSz+GliOGeF5Df0YMvkPh06g4VlflD
	zlvo6XjD23QtIgsGfD/bERiwm8KrMqyznBuNQPNfno6iJ4nexqGB6EIY7hXT7XAQ//4gTTvpvxn
	f74+Whywr575US+XQ+JKSjFMm23W4Bo8xWJ51yrV9aRsOaXjK9ckjn98hlss4b3fHyZ6UXg1jLK
	ee9VOCWl7w4D+iD19wUckFX76XVjverqR5lPdg/FMw1sco+cR9GUBqtcRYbhm8xa/nRhU3dTtsP
	cz2jzK+ibCs/w8dnttDJKZWLvKwxY=
X-Google-Smtp-Source: AGHT+IE+grqHyHjvdfn/+GTlut2T9pN+smpWyR3Zmo3k/imM3uqNFy7DYPHxH9YOxjwJjGQsNYol+A==
X-Received: by 2002:a17:907:1b15:b0:b48:4966:91a5 with SMTP id a640c23a62f3a-b6474439497mr2369303966b.30.1761060185029;
        Tue, 21 Oct 2025 08:23:05 -0700 (PDT)
Received: from tearch (pc142.ds2-s.us.edu.pl. [155.158.56.142])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65e8581780sm1082737866b.31.2025.10.21.08.23.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 08:23:04 -0700 (PDT)
From: muhammed.efecetin.67@gmail.com
X-Google-Original-From: muhammed.efecetin67@gmail.com
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	neil.armstrong@linaro.org,
	lee@kernel.org,
	rafael@kernel.org,
	efectn@protonmail.com,
	daniel.lezcano@linaro.org
Subject: [PATCH v3 1/5] dt-bindings: mfd: khadas-mcu: add new compatible for Khadas Edge 2
Date: Tue, 21 Oct 2025 17:22:41 +0200
Message-ID: <0e604eca9ad9ce71f74b6f3aae60bbb949697590.1761059314.git.efectn@protonmail.com>
X-Mailer: git-send-email 2.51.1.dirty
In-Reply-To: <cover.1761059314.git.efectn@protonmail.com>
References: <cover.1761059314.git.efectn@protonmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Muhammed Efe Cetin <efectn@protonmail.com>

Add new khadas,mcu-edge2 compatible which is going to be used with Khadas
Edge 2.

Signed-off-by: Muhammed Efe Cetin <efectn@protonmail.com>
---
 Documentation/devicetree/bindings/mfd/khadas,mcu.yaml | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/khadas,mcu.yaml b/Documentation/devicetree/bindings/mfd/khadas,mcu.yaml
index 084960fd5a1fd..c0f91eedfa8ab 100644
--- a/Documentation/devicetree/bindings/mfd/khadas,mcu.yaml
+++ b/Documentation/devicetree/bindings/mfd/khadas,mcu.yaml
@@ -11,13 +11,14 @@ maintainers:
 
 description: |
   Khadas embeds a microcontroller on their VIM and Edge boards adding some
-  system feature as PWM Fan control (for VIM2 rev14 or VIM3), User memory
+  system feature as PWM Fan control (for VIM2 rev14, VIM3, Edge2), User memory
   storage, IR/Key resume control, system power LED control and more.
 
 properties:
   compatible:
     enum:
-      - khadas,mcu # MCU revision is discoverable
+      - khadas,mcu    # Used by VIM2 rev14, VIM3
+      - khadas,mcu-edge2 # Used by Edge2
 
   "#cooling-cells": # Only needed for boards having FAN control feature
     const: 2
-- 
2.51.1.dirty


