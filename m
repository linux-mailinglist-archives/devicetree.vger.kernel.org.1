Return-Path: <devicetree+bounces-244209-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CBC6DCA2761
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 07:07:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 99DD3300A8C1
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 06:07:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C70830FC1C;
	Thu,  4 Dec 2025 06:07:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AZEkKPyk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8CA30B50F
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 06:07:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764828422; cv=none; b=Cac2Dcophw8n8IkZ0RzSv7oCKgGVP6NkBFUHd/tBsCV1Ky7JXMUCC5FEGXCX5Rc4rhok5I4WbjdPyRUtSh23bn21hY5Yompm7r21Hy4GtciZ7OpmSyNNOl5CC2LSg7WN6EIXXghI9WWNRqkn5JpqjX1swheNGDd9TtcnMC2cK48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764828422; c=relaxed/simple;
	bh=459dlBPh3LInR8NOH/R4UDIusnkt1kveYPqleYn7ivo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bLQq4QQycCyCGiOBsI8X3v5z8wS7d3kF/wuyg9DUpXVcs/XMdSbR4Xdy75QXEQE2zUSU2MAszSiyQA6YIOG4Pa76X8YrNWsRAgzwAUQFPGWTDFX3POCt7/7fz/j6vbYy5S2UrxOu1aF/Mr24Ag0JmwX2QQ6sM75vNxFhq23Jn/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AZEkKPyk; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-640aaa89697so634597a12.3
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 22:07:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764828418; x=1765433218; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0+a5/f/Fx6IMBMc0auLZUB4h0ES81R10KOuZfrxfUU8=;
        b=AZEkKPykXBYKowsUpJ0XQ5e+DTgecaBXRz7spBAzpKQ6JjGDtL+OUOWu6JaEGQdxrF
         t8z9ju0ZD8J1GKsNXV3pKyj4kmdNIqnN1TazFcuODyk21V02VmEtrhbhJp5+BJalg7T7
         jwiKVnL2QH3yIvVz3cf+eoY9mHVuJeIm19RN5iqwNEeT+ISoP7h06wr6KSrZ0AEWM2kO
         5qYiCQsBE9nPQ8V5UfeNMorQS9ENmKaplATDe801ZAg/CZx1Hya0YygJb9gAXU0y3sBp
         rGtEusr1R9Apg21ZPEOWrPwESQzNfp0/1MHTGYZ5B1+xyaW2QFkR2RtrI9rBFGPoc3V1
         /haA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764828418; x=1765433218;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0+a5/f/Fx6IMBMc0auLZUB4h0ES81R10KOuZfrxfUU8=;
        b=m0veBqo1gkbdmcrL6bEEaYu535Tly8v7qjQ7j0WtluwBkziG5uHH8wKdwLVKblHj5a
         6HqbhkFh5iv1Fm2gdzCjbSULmKj9rpdoo/yOPQavAhzxCq6kNFhmAEAhl9EJYhRFZZVJ
         eaFedfxYvrOalMHk8GU+yJdB7e5EMH6KSvoHV6AIWJjj71XONuMqHO+A1uGBrNeIlkT2
         ThV8RVqLHB6vh4e1WGqTo5mF5MIwf7RdzAGriiaRBar24RJItlhPzMtxvCT+nbTg7hEz
         Qt4TfaQ4YXJN5ViavwDPU1MRNFo/UliKIe0285u66CsQaSOfajPBCxltG0pwnmOLV+oV
         NxJw==
X-Forwarded-Encrypted: i=1; AJvYcCW3agHbhq3Nx5rLGTQyRFgbzfsTM5HziTZHBklN966SjjLPPJsUm4eGPF3X1yhuZWLJSdVnITu/Hppw@vger.kernel.org
X-Gm-Message-State: AOJu0YyYb1u9fdpUop7iGFNSd4SI8RcVavj0XbfiVFTaLEoVQ9iPWOxt
	65Y03F9NZ55ncJ7G4ex/+HwbdKpbMNNEjKURJMgYYaNVh61kgaZJKHGN
X-Gm-Gg: ASbGncsobiV6/ysXv/bfg5Bfz2vakIZbTKKP/8hyLqAJVv+UpHGBvDoKxvuAUiq4V9O
	cS/uSJLsGpW2FYzwmuc7GG55bIlg1VWRDut1nL5Sn73eXECMuR3XCl1N1RAGLLq9Be6/1imvCDW
	jbiONA57tmqCF/yselIJBZq4P7MF1ATS9r6Pldr/XreII0xSdO1prfPvPxHkvqcE5Jj9RhnhytA
	zeIRYPKQdTz24Ko1xDc1GXJdP/hS+s8g6aQRjioO1L1KQd6zrmPuSc7GUipC2N+z/j4PUXVRtoy
	YJzsuEpw2BU+D0kJRzoGLPitwoeIl20tD5ac7+Irm91zfr5mzVW7VOH6keo8pgB/m4l8D1eJpTy
	uVTaf3P9HKLswY6BqFxNKbEgkco1RmldRvPyd7SvbwCLKNsDji3l9gNIqKzzkl3CZu0HBQK9xUb
	8=
X-Google-Smtp-Source: AGHT+IGXflP92wBX3QY5yGh88FcTws5u5X6jjlfnKknX5OJZU/5ArSGnkpWD3xgTqzGaHgNugxHWww==
X-Received: by 2002:a05:6402:2110:b0:640:b06f:87ca with SMTP id 4fb4d7f45d1cf-6479c471f5bmr4545828a12.6.1764828418360;
        Wed, 03 Dec 2025 22:06:58 -0800 (PST)
Received: from xeon ([188.163.112.74])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-647b2ef7798sm460296a12.15.2025.12.03.22.06.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 22:06:58 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Douglas Anderson <dianders@chromium.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	Sam Ravnborg <sam@ravnborg.org>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-tegra@vger.kernel.org
Subject: [PATCH v3 6/7 RESEND] dt-bindings: display: panel: document Samsung LTL106HL02 MIPI DSI panel
Date: Thu,  4 Dec 2025 08:06:22 +0200
Message-ID: <20251204060627.4727-7-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251204060627.4727-1-clamor95@gmail.com>
References: <20251204060627.4727-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Samsung LTL106HL02 is a simple DSI which requires only a power supply and
an optional reset gpio.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../devicetree/bindings/display/panel/panel-simple-dsi.yaml     | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml
index f9f1e76a810c..01ac0af0e299 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml
@@ -52,6 +52,8 @@ properties:
       - panasonic,vvx10f004b00
         # Panasonic 10" WUXGA TFT LCD panel
       - panasonic,vvx10f034n00
+        # Samsung ltl106hl02 10.6" Full HD TFT LCD panel
+      - samsung,ltl106hl02-001
         # Samsung s6e3fa7 1080x2220 based AMS559NK06 AMOLED panel
       - samsung,s6e3fa7-ams559nk06
         # Samsung s6e3fc2x01 1080x2340 AMOLED panel
-- 
2.48.1


