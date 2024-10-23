Return-Path: <devicetree+bounces-114812-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BAEA19AD15A
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 18:50:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7B8F0285015
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 16:50:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCF8B1CDFD1;
	Wed, 23 Oct 2024 16:50:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="AoNGYgDR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 089761CDFA9
	for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 16:50:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729702212; cv=none; b=dA5+4V8H9IDOqD7T+mnrsbgGOMu05RD87K9z3pl7hB9peY8mXz3B7xTA//zpdsEDoLhCGcgjn80K9eo3dMQ2ylxOquXreuheYW2vs/IzrILso0EVny+1jrJcmQs5o0xHD7NAe9eSS6gnkA6lokhkntYX6BRNiQv4tnwD7RQai24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729702212; c=relaxed/simple;
	bh=91Jie+ws5L+cGWdYzocLxQpP0tGJPoUasR/nJIADUQc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=r3wj4TIv1HJCqlbFt5SZFTaoI+eJISABaNGCiSgBObMKUCkUNsOg0dUu4KzezdEY8IctEn+DZBp8JwQspp/SEdujV+06aE5pV48xV+YzJLj0W10VWzxWu4QxlepLpSnpWdFovT5hUjPlqM86rANlGWPQq8GQBN2CGLq7vtF58xI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=AoNGYgDR; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-37d4c1b1455so4669244f8f.3
        for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 09:50:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1729702209; x=1730307009; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m0VXG7M0+edMYKBQpiJHMGtp1VEyRPMm6kVJ0JBtPBU=;
        b=AoNGYgDRf4cCSy/ypmkqOeYZGGHj0JpGHYovU2YZWsN+BXHHSlLH/6uAj841BB+tfq
         GpHMQdcMJFzpORh1GyKbZV/0QlytVt71Tr0eVWjdFRaAo54UukceSq5HAIjXautmQb/I
         lWOSMhEoDFl1sTtFPEFe8zGb8pTSfjwGvsYgfUXrMYcn6iRJmA6CpNz+aG1Kv902jspB
         XrfVqgM/piC+rmsSGWQBqE5c8xW3ybhTJg1fZguqmO3pCaGhzDaXwY07UQNhF4SfTM2Z
         oaV84G5Ltc15MkZvjGDuU3j6gcNARUKzfNiJvJPcWcAnrEYnip6OyjCkiqtzNp+RDU/X
         S9sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729702209; x=1730307009;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m0VXG7M0+edMYKBQpiJHMGtp1VEyRPMm6kVJ0JBtPBU=;
        b=mlnDqBc7aICOELBakaMUbt6glt2mMbtRpGehnYhmNsjcSx8ycl1BVoIL0U2zjb6YBy
         pHAvPsGXHaBvd0Gb7vhu13fH7lNa9aa3ZN4AVR3Ap6BCqB7dMPTk1H6uLGZhjZVZasJR
         MJtnnnOFd6Qc13fpe3svCTtTniSG2KkSaKy4ED/gm4a2Q5eDwuWSJSUs89C2Von86v9K
         r1W6Zr+X0C+Sfp1wF/LUacN8wvbikEZF61zQrNYx1WHhXWtX+Fstl+257ngz866QPJaR
         /rsap3tnCg6JvNgSPYjVfQlQs4kPZS6/p3sMdoPLNS+BOjSfGOYmOXvB+sODyHtbiKs2
         JzyQ==
X-Forwarded-Encrypted: i=1; AJvYcCWvS275nhv9nMzR3ztiz7uifkFWmZa3Riy1y+FHHnKLuvvCFUFI8rFSTF/07UbUFE1Bqw70ZAp8Vydt@vger.kernel.org
X-Gm-Message-State: AOJu0YwcHbc6ch8iZpgqRnGarF4+vGDRc5+VAgDaC4492Cp4oXo3Tq58
	QnMDeeU8aF0V6oiSYVb1cMXCQwRgr5XkyK2R207OO/aV4DDfOdSeJQxCi5mDZoM=
X-Google-Smtp-Source: AGHT+IERCELF/aNULiFYaJhFKCUgkKnhHnsR2hcb6th/CbnCs93DrujrebahUME8WNgVcpsKAm29Eg==
X-Received: by 2002:a05:6000:1887:b0:37c:f933:48a9 with SMTP id ffacd0b85a97d-37efcef117cmr2285226f8f.1.1729702209268;
        Wed, 23 Oct 2024 09:50:09 -0700 (PDT)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-43186c50445sm21642035e9.39.2024.10.23.09.50.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2024 09:50:08 -0700 (PDT)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Wed, 23 Oct 2024 17:49:58 +0100
Subject: [PATCH 01/37] drm/vc4: Limit max_bpc to 8 on Pi0-3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241023-drm-vc4-2712-support-v1-1-1cc2d5594907@raspberrypi.com>
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

Pi 0-3 have no deep colour support and only 24bpp output,
so max_bpc should remain as 8, and no HDR metadata property
should be registered.

Fixes: ba8c0faebbb0 ("drm/vc4: hdmi: Enable 10/12 bpc output")
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 drivers/gpu/drm/vc4/vc4_hdmi.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index 62b82b1eeb36..6ebcc38be291 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -640,6 +640,11 @@ static int vc4_hdmi_connector_init(struct drm_device *dev,
 	if (ret)
 		return ret;
 
+	if (vc4_hdmi->variant->supports_hdr)
+		drm_connector_attach_max_bpc_property(connector, 8, 12);
+	else
+		drm_connector_attach_max_bpc_property(connector, 8, 8);
+
 	drm_connector_attach_encoder(connector, encoder);
 
 	return 0;

-- 
2.34.1


