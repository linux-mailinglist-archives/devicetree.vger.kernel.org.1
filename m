Return-Path: <devicetree+bounces-115805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB5B9B0B76
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 19:26:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 247FA1F20978
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 17:26:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 530DF22CC66;
	Fri, 25 Oct 2024 17:16:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="QkROaNsk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C013222AD82
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 17:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729876599; cv=none; b=YiFUWAuOHyKef5syCt/CcX2rGFGRprjZFuI0YMoZHcwhXx0rU64vSwCn8XydUTx8cGdseM8yTMuk4ZGTUI7x2Rpy37yGyOrQYSIhtdAFheSmK+KgHJSrnBbwduqcVxwVxL+Mvy4J2Yj4tAf2UdgkLaBMQ9p5SykD0dGDGOccdRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729876599; c=relaxed/simple;
	bh=gDetkg9bcTzrR7O835LrIsBPAY/4zF75oSJMNh2My2Y=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=iWgpQxoTWg2C1loMG0+/gT6nlmSksD7wMDn19N7aTSN/zY6BEYhi0T/exyJIM5QK48zQryoA9jMobhJSczjFnLbeBkIWlaH9TYDXPRcVQV1pO0ORobek5FRbNBgNV4WaEJZNlqK5ydxvfJpNHRB8Otn7LXfebaJm5vnUzIVAhXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=QkROaNsk; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-37d70df0b1aso1770644f8f.3
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 10:16:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1729876592; x=1730481392; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yUMbW8c4fnS4xc6t+S+xmsFii0Nh8WSEhqluNBn7tHo=;
        b=QkROaNsk7CrE2+ZJ9WwKDE+K172he2S2K1jv/3GHo7jFJIkcLwtK31dPp3dLDSQT1e
         0qdc3/XkpTfYBDQKX7d0lsD3L1gGH6csAMO0SqU0EtFS3HRg4APiCBp+KU53W1nTAY27
         eZfClYZnvjLxbrWJZs57VP/zgqU3OD4X8lFHZ/isn4qgRPWm/YRLAYyBFhF8tISR8qSu
         +o9ssVYqaHJcOAW09eZP2uIgmXFiWJH2u5/OZbbcBwT+nHyuV3Oiw8UN+PRmCFWgkkJa
         jiSkBxL72vsaKnmXksuiCkLMfaPMpFHk31i/2fFJ9vpKKfwUH9T3UL9wOPPrBAHP8jqQ
         79tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729876592; x=1730481392;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yUMbW8c4fnS4xc6t+S+xmsFii0Nh8WSEhqluNBn7tHo=;
        b=Y2J2f1A5MGtbQxIC62828dV0X/rwFu+FNwLrUIiW3ahsXGlnB/OZSZFy6DtNkjqH0u
         J1Wqt17XjTtiy88ssE4I1S1FznLI+OZQNhdWhM7nzeuMa9PN3XMJF41DspgFPfFJY5Kw
         zxfibNZQ5c+5bTY7mBNvIyf80U9I3B1dYXn8bRJOWn0gXKUeZXfmWs7EPRHEwXxf0YAs
         Zq6L/a2dgOswRDu8ToGb9e15z5TQUrm6asGf0pMJod0VmKMfEFdBJdw7xn+jofZdtAIn
         8+Fo79JHfr0B4jRbHLCt/bK8/LohR0YL/bNtUHk6Me3Kw6A0I0NSC2HMl0gAjuxgzEm6
         gbbQ==
X-Forwarded-Encrypted: i=1; AJvYcCV8xcnwI2/QzApvUkxgekHoap8rl4QQ/vWavIN70xysDVAGHHf9um+VpKR6DSt6UFXEe1u2xReXNogw@vger.kernel.org
X-Gm-Message-State: AOJu0YweyZcdYuxw7E69/ONEMDOJkr6R4ckqPkXMxzosDzlCriMWS6Vi
	+d0kzsanEF64tGA5Pab+J0FWmFIgS7rUDfrp9Y7QJXpIzasLPUdUQ9SKaAf10oY=
X-Google-Smtp-Source: AGHT+IGlWiJn7Ozkgg+McXgEdyvgzuVLywKtK/tT5oVLgmb42gKrNvsGZclRa3uCRrKPuzJCn2aCmA==
X-Received: by 2002:adf:9bd4:0:b0:37d:4e74:687 with SMTP id ffacd0b85a97d-380611e1392mr111275f8f.41.1729876592186;
        Fri, 25 Oct 2024 10:16:32 -0700 (PDT)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-38058b91f50sm2013649f8f.94.2024.10.25.10.16.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Oct 2024 10:16:31 -0700 (PDT)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Fri, 25 Oct 2024 18:16:03 +0100
Subject: [PATCH v2 32/36] clk: bcm: rpi: Create helper to retrieve private
 data
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241025-drm-vc4-2712-support-v2-32-35efa83c8fc0@raspberrypi.com>
References: <20241025-drm-vc4-2712-support-v2-0-35efa83c8fc0@raspberrypi.com>
In-Reply-To: <20241025-drm-vc4-2712-support-v2-0-35efa83c8fc0@raspberrypi.com>
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
index 9f716b2223ae..b12d86720207 100644
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
@@ -176,8 +182,7 @@ static int raspberrypi_clock_property(struct rpi_firmware *firmware,
 
 static int raspberrypi_fw_is_prepared(struct clk_hw *hw)
 {
-	struct raspberrypi_clk_data *data =
-		container_of(hw, struct raspberrypi_clk_data, hw);
+	const struct raspberrypi_clk_data *data = clk_hw_to_data(hw);
 	struct raspberrypi_clk *rpi = data->rpi;
 	u32 val = 0;
 	int ret;
@@ -194,8 +199,7 @@ static int raspberrypi_fw_is_prepared(struct clk_hw *hw)
 static unsigned long raspberrypi_fw_get_rate(struct clk_hw *hw,
 					     unsigned long parent_rate)
 {
-	struct raspberrypi_clk_data *data =
-		container_of(hw, struct raspberrypi_clk_data, hw);
+	const struct raspberrypi_clk_data *data = clk_hw_to_data(hw);
 	struct raspberrypi_clk *rpi = data->rpi;
 	u32 val = 0;
 	int ret;
@@ -211,8 +215,7 @@ static unsigned long raspberrypi_fw_get_rate(struct clk_hw *hw,
 static int raspberrypi_fw_set_rate(struct clk_hw *hw, unsigned long rate,
 				   unsigned long parent_rate)
 {
-	struct raspberrypi_clk_data *data =
-		container_of(hw, struct raspberrypi_clk_data, hw);
+	const struct raspberrypi_clk_data *data = clk_hw_to_data(hw);
 	struct raspberrypi_clk *rpi = data->rpi;
 	u32 _rate = rate;
 	int ret;
@@ -229,8 +232,7 @@ static int raspberrypi_fw_set_rate(struct clk_hw *hw, unsigned long rate,
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


