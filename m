Return-Path: <devicetree+bounces-168942-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 567A1A94F3E
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 12:13:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5DADD167EC0
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 10:13:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 044F3262807;
	Mon, 21 Apr 2025 10:13:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="P7wHBAdW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 772532627E7
	for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 10:13:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745230396; cv=none; b=SINY5J3rwVzwctQWbhcqGX+Qr1l6Dz5jHkVTF5088cN12S63+nGwiYGHWfH/opINWvk6z8PWUZ5WjnhdH0or3pXtDOy0FUTHvPjhHkd89Dx2w4y7ghYOqmGsdqVG1sLOMGUtCBF/TKTm8GcLYPk5Y6At75WXknezh8B/eurn/EY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745230396; c=relaxed/simple;
	bh=34zm+yxWUtR/Lbc2SeD4Q2rTlj6zy2/A2wbsfBG4WVw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=s9TsrHxR6kgH1Czy7blXtmxYdPheVdurZflfC2l9NDGlqAWSc7mSaaxrTEZDSzSRDOcLjOzIKS1jETsl9aBd0Iq6cevR4g3q2GLANZWD3UdjpSgIhlHSMW/IVvdX1JWQ3Km/bYDUj3Ckk/sBLqoCoY6MCEEhrEDi+DamRr0/jTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=P7wHBAdW; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-223fd89d036so46038855ad.1
        for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 03:13:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1745230395; x=1745835195; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4d0RlzVUiZ/GjheYPmzU3+xaXB4NRkzjoXsemgEHtik=;
        b=P7wHBAdWO1tsY4cly0bqVuhDJ36LA1IrNEPqKwfouHhpFonk1iv4xJEdC+d5gQ3bp7
         5oI+pzdpdXwrgLJsgKFRATSxVbAbBEjjZi9r0B6YasUvVAfNliKGGzwQHkzg7HpqUm8b
         ilLjtMdWwFEi3LjjGf49JbAjU4pt3XhdjW+l8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745230395; x=1745835195;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4d0RlzVUiZ/GjheYPmzU3+xaXB4NRkzjoXsemgEHtik=;
        b=H1fmE6EPhwwGQQqnJN4NCtbLdiKiULZf6iW8lGU6/8ZfFYMxm/WYNPtV9hxuUoSEeN
         mxHcEa4etapo/Rjis53sbKZJXlRKh+yXSbda3TYQjMs1Muuw+k3njz4UdIj8jPOBQrwE
         4mpXRrsTvt2INdTa0vfIv2Kkx2VEsejv9qgrUADy8wZpgsU+6w5FSuPWnceeXga5tP5z
         wEbxsMLoAFZC2PS1kUm7ed3S7aFAXx4vOJ0mVdA1DFt7ITubmb7Ley0e5QEGm2waSs2m
         i0twGQze6hfVpXOOdHnGbWsaPJzZtVi3jzOxg9zCgQ/ld9L9XRrE37ic3rnav6I4Ik13
         mjJw==
X-Forwarded-Encrypted: i=1; AJvYcCX5JVuODQ0EAhMhUkHt0eE0/eur7kpPQsnk5J1PkonHZC/uC0/pBHGwguCMxbVaBIpTuXvgALDmPHen@vger.kernel.org
X-Gm-Message-State: AOJu0YyyovQElFjTgJmOZHlaQX7aOtn1K2KbphUf5jZjd5eYricGFtTD
	f6xJ2Xp8ycvB59Ok9g9b4Sn3wyx5t2Le7EzeMrUT+jQrunC+NPqVUBq3pe4h3Q==
X-Gm-Gg: ASbGncuo9T1VAEW0kPyj61uL3WqqVXI+Wu0Qh6qH/kr20XUrFrFyHo9i6qFh6i9fUU4
	/r3bSQOoz+PPqXinI4W3/i3+5BXBLPu1v9JKFgdued53G5qjReA+baE2kaJ9Bku9ipOKaGuFX30
	qqi75vJ1BFjpbVEJeYL7RZJ20r9VHcDDuZoU9b1o0gi8IdGOdri4DTYGIhAxXtT2BIxXf+0LyzP
	VnxOB+7g+S+V0GrBfOf3qy0aYoQr+vMW0fDwTWxcQO0M4gAQWcdZXkKeu5xFzG9j81n7CMFdRxa
	k4u06Q3lnorbCx1zRSlpXm42rCRMjjXaimEQT7njTgHaeJe+PiPX+AEZs/c=
X-Google-Smtp-Source: AGHT+IF+AnZFOOLJPlbiAxkDb/YuGPI7JP89xIJch2irCDOD6BFYAkiFyfLLQWgKCePZd7wiHYd+Wg==
X-Received: by 2002:a17:903:3c6b:b0:227:eb61:34b8 with SMTP id d9443c01a7336-22c535a7eecmr173618945ad.25.1745230394801;
        Mon, 21 Apr 2025 03:13:14 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:7633:f42a:d31d:3f9c])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22d78db8b04sm38985205ad.238.2025.04.21.03.13.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Apr 2025 03:13:14 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Benson Leung <bleung@chromium.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	chrome-platform@lists.linux.dev,
	linux-input@vger.kernel.org,
	Douglas Anderson <dianders@chromium.org>
Subject: [PATCH v2 3/8] dt-bindings: arm: mediatek: Add MT8186 Squirtle Chromebooks
Date: Mon, 21 Apr 2025 18:12:41 +0800
Message-ID: <20250421101248.426929-4-wenst@chromium.org>
X-Mailer: git-send-email 2.49.0.805.g082f7c87e0-goog
In-Reply-To: <20250421101248.426929-1-wenst@chromium.org>
References: <20250421101248.426929-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add an entry for the MT8186 based Squirtle Chromebooks, also known as the
Acer Chromebook Spin 311 (R724T). The device is a 2-in-1 convertible.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
Changes since v1:
- Added Rob's ack
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 49ddc504c160..f0b4ccd81c4d 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -291,6 +291,10 @@ properties:
           - const: google,steelix-sku196608
           - const: google,steelix
           - const: mediatek,mt8186
+      - description: Google Squirtle (Acer Chromebook Spin 311 (R724T)
+        items:
+          - const: google,squirtle
+          - const: mediatek,mt8186
       - description: Google Starmie (ASUS Chromebook Enterprise CM30 (CM3001))
         items:
           - const: google,starmie-sku0
-- 
2.49.0.805.g082f7c87e0-goog


