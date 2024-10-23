Return-Path: <devicetree+bounces-114846-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E6779AD1E3
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 18:58:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1B0D7287B40
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 16:58:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FE4220898F;
	Wed, 23 Oct 2024 16:50:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="bL2DrpR/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDC6A205AD7
	for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 16:50:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729702258; cv=none; b=JXMXEcWEvspXdJOnNxH6QjHwA2GlWMhOLjmrQzYlBb1OVY0BzGtEottc3lAZB+cStPAdj7AOylL4SVisFqf+QsIPRqM6s+onR6l7gvgN54mn4KsnybBEtUDl7YcFmPZyPn01SpxkPq+LU5z3DHZrdo1Ij0o4Y6bVhEg8Eu8RLrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729702258; c=relaxed/simple;
	bh=h60g8ThwYT/UJQE4G2CP6rUIno0KoMdhzemrzgI+AYI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lg/xZJUcdPYOOw1pmfoRz+/u9i4CmDkAXQUV++Nq22oy8Pvh/2wk/jMC7qgOO4bPA/4Dshfa/7L3jWPpqnEkme9qYsS4UK+j9aa+t2e616HIYH4SSCGZv6e+0TZbKBBMV5WXYph3Wi7x+gyPwQMw7XbAAYbV9hVB73YQwzqjIdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=bL2DrpR/; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-43168d9c6c9so51276605e9.3
        for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 09:50:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1729702253; x=1730307053; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L9MiZUhuAcE+DC6JkjBsIZrkLkLAyStuyfWQoaNqfXQ=;
        b=bL2DrpR/FWJvjVHisJX0luDsjeVwtalgpvJdWsZ+637rtRRezTKHRugwXfdQ5bf/+y
         uiqlIT3FA0kmVYEA7kMVrRN6QnUPNoFuTfEQvSKB4QeY1EaMmOP14jpQ1sCjLjp6XG9j
         O8EPae4nTBvCJTUxZTiHeI1ndfQxE3+hcyWQH4QRa92YrkJz9ZxX2NTo4hfeUjuNBKlv
         UPfQlQpYrJp7KaxsDXY49plKI9POTVha/1Cv0HMY6xFqTl/Qnpyid/8wYQnXRKoKyl2z
         y+s4TBiCEi4qkFmmQkNJpubQvFxgKMRb2gxTpIZ5yLv8VqQqYBO7Q/0AdpdJ2V2Yedr+
         f3dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729702253; x=1730307053;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L9MiZUhuAcE+DC6JkjBsIZrkLkLAyStuyfWQoaNqfXQ=;
        b=EFyPENs2+nnvOnYVHGm8VytYQVa8ixgg6BDy2lY92afUQtsEf0WtHvmOAbqJHRfgG6
         bBPwFkY8DlwNHniGu6JUHn2WLNssc5m4u0VnjWlD8+6FUH3qQtDQagAwBGT/MxH/N7TI
         gnQYD7J0uan5pntkDbbmBYA2FdFHLMxNv3QjkpOnq6vOA/LOeQIWlDhRJwBZS2dKEceq
         18XWWxXgHV7cMOqHynUxFP5oQBtUIZJS8tVQg0Bq9PbFYZB5eyGHgFChxT7Biy3Bhaqo
         Y/pH3kU4vGVF5GLqQsLU1kFDhlby0I+DtaoXVz1HTMn65BKptEvFesr/wKtNEi4DUAmQ
         EcKw==
X-Forwarded-Encrypted: i=1; AJvYcCVxurSSgy9HQftPNODR9AyIUuioon+yeOGPDvNWovkB/UGCWfGRo5NwISwb4Yxdz/o5PskHkB6yVyeO@vger.kernel.org
X-Gm-Message-State: AOJu0Yy13AcDNpCNJKlFsoh5EIXAizWx2IjeyjHjeYmDNiomyA9XT2qc
	Hag8fkcUOb/IqfvUdELovijY9dBXotIWhma4UN2eq9yiXcsJW34Xj/OCAKFZh4I=
X-Google-Smtp-Source: AGHT+IH3dVyDZOxIVjZAcfUl+JwKCM4Z59KdfEHOCGa0hmLNiw7CjeLKq/QM+g/Vjy8Ji+yxUeCFow==
X-Received: by 2002:a05:600c:45cb:b0:431:44aa:ee2e with SMTP id 5b1f17b1804b1-4318413209emr25331625e9.4.1729702253413;
        Wed, 23 Oct 2024 09:50:53 -0700 (PDT)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-43186c50445sm21642035e9.39.2024.10.23.09.50.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2024 09:50:53 -0700 (PDT)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Wed, 23 Oct 2024 17:50:30 +0100
Subject: [PATCH 33/37] clk: bcm: rpi: Create helper to retrieve private
 data
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241023-drm-vc4-2712-support-v1-33-1cc2d5594907@raspberrypi.com>
References: <20241023-drm-vc4-2712-support-v1-0-1cc2d5594907@raspberrypi.com>
In-Reply-To: <20241023-drm-vc4-2712-support-v1-0-1cc2d5594907@raspberrypi.com>
To: Maxime Ripard <mripard@kernel.org>, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, 
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, 
 Javier Martinez Canillas <javierm@redhat.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailer: b4 0.14.1

From: Maxime Ripard <mripard@kernel.org>

The RaspberryPi firmware clocks driver uses in several instances a
container_of to retrieve the struct raspberrypi_clk_data from a pointer
to struct clk_hw. Let's create a small function to avoid duplicating it
all over the place.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 drivers/clk/bcm/clk-raspberrypi.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index fd7ae0efcf07..89e2c0241ff6 100644
--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -56,6 +56,12 @@ struct raspberrypi_clk_data {
 	struct raspberrypi_clk *rpi;
 };
 
+static inline
+const struct raspberrypi_clk_data *clk_hw_to_data(const struct clk_hw *hw)
+{
+	return container_of(hw, struct raspberrypi_clk_data, hw);
+}
+
 struct raspberrypi_clk_variant {
 	bool		export;
 	char		*clkdev;
@@ -177,8 +183,7 @@ static int raspberrypi_clock_property(struct rpi_firmware *firmware,
 
 static int raspberrypi_fw_is_prepared(struct clk_hw *hw)
 {
-	struct raspberrypi_clk_data *data =
-		container_of(hw, struct raspberrypi_clk_data, hw);
+	const struct raspberrypi_clk_data *data = clk_hw_to_data(hw);
 	struct raspberrypi_clk *rpi = data->rpi;
 	u32 val = 0;
 	int ret;
@@ -195,8 +200,7 @@ static int raspberrypi_fw_is_prepared(struct clk_hw *hw)
 static unsigned long raspberrypi_fw_get_rate(struct clk_hw *hw,
 					     unsigned long parent_rate)
 {
-	struct raspberrypi_clk_data *data =
-		container_of(hw, struct raspberrypi_clk_data, hw);
+	const struct raspberrypi_clk_data *data = clk_hw_to_data(hw);
 	struct raspberrypi_clk *rpi = data->rpi;
 	u32 val = 0;
 	int ret;
@@ -212,8 +216,7 @@ static unsigned long raspberrypi_fw_get_rate(struct clk_hw *hw,
 static int raspberrypi_fw_set_rate(struct clk_hw *hw, unsigned long rate,
 				   unsigned long parent_rate)
 {
-	struct raspberrypi_clk_data *data =
-		container_of(hw, struct raspberrypi_clk_data, hw);
+	const struct raspberrypi_clk_data *data = clk_hw_to_data(hw);
 	struct raspberrypi_clk *rpi = data->rpi;
 	u32 _rate = rate;
 	int ret;
@@ -230,8 +233,7 @@ static int raspberrypi_fw_set_rate(struct clk_hw *hw, unsigned long rate,
 static int raspberrypi_fw_dumb_determine_rate(struct clk_hw *hw,
 					      struct clk_rate_request *req)
 {
-	struct raspberrypi_clk_data *data =
-		container_of(hw, struct raspberrypi_clk_data, hw);
+	const struct raspberrypi_clk_data *data = clk_hw_to_data(hw);
 	struct raspberrypi_clk_variant *variant = data->variant;
 
 	/*

-- 
2.34.1


