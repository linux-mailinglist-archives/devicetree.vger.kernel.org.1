Return-Path: <devicetree+bounces-234178-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B7FF7C29845
	for <lists+devicetree@lfdr.de>; Sun, 02 Nov 2025 23:17:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 4F5204E67B3
	for <lists+devicetree@lfdr.de>; Sun,  2 Nov 2025 22:17:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FAF7246764;
	Sun,  2 Nov 2025 22:16:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HJWsYRZ8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE802244668
	for <devicetree@vger.kernel.org>; Sun,  2 Nov 2025 22:16:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762121819; cv=none; b=Wb6TjjncWocTuDG0xm61T/xuagB6xg30LFNV9a/8uEhcJ6NjdfKt+bjQEs765yaajPHpCMSlWJQ8EoV2kXz8VXT3ADaZ92BwCX7gMb7Vo6RvQK/I/hFvq5rOrAFGTjVsrQZ1mX+zstti+HV47W8M5NtcNch8GxVuxgMHXi7BcUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762121819; c=relaxed/simple;
	bh=PhZLtyuX6rsStPuOx2GzI5uvef40yRsEPWniw+A0HX0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RjqBNjRmNPJBJJbbJrssIi+A0Kl8o54bGRZQVJW2/Vt1v5ayNZzJZy1kD58zJWbR05cha7QEQMFx/tQHriPan1mleKclJPey3cxZbm8SmDPN+YEOZGJq6wr8aLJYm+72u9MpStjo35VHX6sESyBHK9ZcTxq9SOqj1vCTF1LwkTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HJWsYRZ8; arc=none smtp.client-ip=209.85.216.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-33255011eafso3207758a91.1
        for <devicetree@vger.kernel.org>; Sun, 02 Nov 2025 14:16:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762121817; x=1762726617; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=++a2qLFT2GMKZSkfaoicvFef3e/M9je5Z9y3CGUMY9M=;
        b=HJWsYRZ8wV+reWfkB/zKBhyOzaA5IIEitvFDrGUlG0CHlGVspNYpXKNSGEGKwQNgIz
         tGWHYtGOIRcpUDy2pbTXisvkvRUPPh8xpmqIBCcwGoJ8Djh/iUdSfaclohzxReOROa10
         Bnq4fwanDX0jNFhBktmXaVDNH0la5qJEe2CjpSY7mI7Bv0yjNdHsAWwkt9lfgT4XzuX2
         cXDv+gmtEKXcEWBH3bWMBzA6BovEPftS2+qcFScnNuthSEGR3BvaCSx5DzjQHc35YcV8
         tXVn1tJF0gcL69dqdszFgbSuBZrI6iVrjg6wboFNMc9AfZ1HKG25N+uI7ysXLWVPdejN
         Eumg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762121817; x=1762726617;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=++a2qLFT2GMKZSkfaoicvFef3e/M9je5Z9y3CGUMY9M=;
        b=ALNExl21B1vOD3waEsgqac4j8tE/063qJmvFT9wc1ie3eNf4cgm0v8EGcicPxZ4MVp
         1wXDdyscd8Z7yMur9mBV7rLK/PtYoncOebOlCTgLmekP6OcsFLcf5QwVs0HaJ0SKAsjo
         wlvZGI2xH5UHmtOHc2s/IFMAay3yjN4aHrqCUTHkz2FK9C+rjXVYhnCU5ZUS0Z6rU1dG
         jN4jACXigVTSq0grSkBFSmLy15fjnaaV3ExiTLM3GT3Li7/whujA4xZFImxy1JfAuGoS
         gvU1PrYn5PQ+UUT86wq1o5GBhE2m688F7JQWqwIkPi4K/A+HYieQZzrqYB/ADpMnNkqj
         xZdw==
X-Forwarded-Encrypted: i=1; AJvYcCUM4sCn1QDIqUP/TkMfb0wbD8nblx1ePlsHJdC/KLx8+xSvfN+VMHKU+N1Og9Go04667/M9ODLQCSDZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5MihaR6nNYA4GwlgtDv9kU44oQfHHPGoogNPtHpXaEx4VIW7O
	571Wxp64VTT67gZ+Q4MDv7DWIdU2YEVCebxwa+7ZGOZuorLgyLLOiVo9
X-Gm-Gg: ASbGncvUjX5J3Z5x59321kS6AImtB+bFTJf75g31hrUz9pahDKETT8TD2ZF4UU/w1cv
	KlWnYQYVy0hgPMkPTPri2FVtwEJGfhOmFIBXG85OXEPtPJXD2FoCQyBGnczgOHuB9diApqHlUkB
	Lw41+xiU92TFp/On5INJA40fjrwPtx5g87pl5IPudjp8xjyUdsMp6LlXD069y3rK3WD3Qea31rw
	wmVSD8qOlgsU/1wHdUBThzmliPtrEPzJkpkPtMNaEdMbfANJnTagSWUyU5EwWJQfZhvejlyZhpT
	/nkokyFuZ+ZIHB14gDt7n+dUYeK6qWnBSspvqyrAJOOTsrDoLuxXk75+Gg8cMKWeIICisr9JXrF
	q/IBIbxd7YWQbSliXAtrzqMnPyyz0Wwub5LutPcKgV+gleDjtZd+DPwozfCaWOPdGFqxiW3wc8J
	NwVGJbEDu0fvoBg+VuvdN4skE=
X-Google-Smtp-Source: AGHT+IE/IJ7vHfMPuDFfKJz9U9NU8Ff7jxfU7dFthw7esoi33MHL4uL+OykKom/Ms2RJAZVJxbkMeQ==
X-Received: by 2002:a17:902:e84f:b0:295:507c:4b80 with SMTP id d9443c01a7336-295507c4c3cmr93301125ad.61.1762121816969;
        Sun, 02 Nov 2025 14:16:56 -0800 (PST)
Received: from localhost.localdomain ([2804:14d:4c64:860f:2214:33ff:7c70:4d9b])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-295357a1851sm83362835ad.27.2025.11.02.14.16.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Nov 2025 14:16:56 -0800 (PST)
From: Rodrigo Gobbi <rodrigo.gobbi.7@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	jic23@kernel.org,
	dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	conor+dt@kernel.org,
	mranostay@gmail.com,
	wbg@kernel.org
Cc: ~lkcamp/patches@lists.sr.ht,
	linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 1/2] dt-bindings: iio: proximity: Remove Lidar-lite-v2 from trivial
Date: Sun,  2 Nov 2025 19:10:26 -0300
Message-ID: <20251102221643.9966-2-rodrigo.gobbi.7@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251102221643.9966-1-rodrigo.gobbi.7@gmail.com>
References: <20251102221643.9966-1-rodrigo.gobbi.7@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The lidar-lite-v2 IC is not a trivial device because it has a few more
pins like power-en, mode ctrl and supplies.

Signed-off-by: Rodrigo Gobbi <rodrigo.gobbi.7@gmail.com>
---
 Documentation/devicetree/bindings/trivial-devices.yaml | 2 --
 1 file changed, 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index 2eff6f274302..e344613aa265 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -357,8 +357,6 @@ properties:
           - onnn,adt7462
             # 48-Lane, 12-Port PCI Express Gen 2 (5.0 GT/s) Switch
           - plx,pex8648
-            # Pulsedlight LIDAR range-finding sensor
-          - pulsedlight,lidar-lite-v2
             # Renesas HS3001 Temperature and Relative Humidity Sensors
           - renesas,hs3001
             # Renesas ISL29501 time-of-flight sensor
-- 
2.48.1


