Return-Path: <devicetree+bounces-71576-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A0468D7527
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2024 14:04:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A60FC1F21C76
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2024 12:04:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97C7E39863;
	Sun,  2 Jun 2024 12:04:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cVd45mVN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D87B3376EC
	for <devicetree@vger.kernel.org>; Sun,  2 Jun 2024 12:04:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717329891; cv=none; b=h4+ygEuMMVJ/Ptzl/BQdUu3qvgP02lnjIF1OoOye7xZX8MPp+AAsVoPbENZlEse0Dk8pjjFiO0490xNcdRD3IOOmav1mCbLk5fYzyAcAQYScejkW5TrBbveQTmC1eT7Xs8QZVKBTpxC/ush9mfYOcgGQMYY88g/8qzhriBA8WME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717329891; c=relaxed/simple;
	bh=SFNXn1zh/yUH5lKBoXzlQkp+p1CQ7cqY5rYlPQmKP7Y=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LLzJulEqva54uCTLYSbadSvnnBTZinUkKEolLrgB4TrYfQqo4H3ZPl+hg2crn46qqBR2iJFw2YN0M6cbKaG11lVlDpxceUVsc/gj4paUECecGAE8gjC2QACZdSmjZgZTGErUFCmciDFc1ZVxxGFwWfq/L9hC43Jy+dCDijPsB2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cVd45mVN; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2eaa80cb550so6677201fa.0
        for <devicetree@vger.kernel.org>; Sun, 02 Jun 2024 05:04:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717329888; x=1717934688; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pQWdjTwgnIdZS6takOhMDQQy8XjSBnwUC2ksC3WzZco=;
        b=cVd45mVNGmkSACX1SoK2r8jKfmZrhYSZFn56ij56o95dPmalhsfRyfGeO/ExAEHDt7
         Rbfm/yaGNkOAn3yZoA+m2HBnrcJJaNBk2NN7k5plCHiK/7T632z4g4L86jeu6NXSx+oi
         4jgCQgNQNwgRgHD72O80QThxy1CcGdZEfsDbBzZFN0nJXwktGlcJ7EFzGAurQHQYRK0V
         h4okiO4KS+HyCBAM3RKIR2lFczAok8HEokZiSBY+UEf2N3vJCFwepErLY4OKLPR8EyxY
         sFAxCU4fDd9kY6PC77fQ+3BvfDdL6oLJemXAENUFQO+08KWI2k9I4z4/xF6+pKeLh565
         t8tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717329888; x=1717934688;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pQWdjTwgnIdZS6takOhMDQQy8XjSBnwUC2ksC3WzZco=;
        b=Bngp9AanOaK3l4gDXYxK/Fr8p2+79DEUwTN88oSwYS0xtmo6FCOmRQ+Tk/UsCjylP1
         8LqR+f2mznqk0d4c/Pz9uecopLSL1UOzgPFl41XJzn7853bJA0Hg97G0el5fHvF14F7/
         1ZdFIr/r71Mxxa/tgFH8klHwmFKGo2F3+2r917IG/fGTNIUhAgLxrzI0BiEPbjvd0iN4
         OQF1wPLEyE+RyvoMay8kd9QehFTFXD8bLFTo2rU4P0oebM2k9rYz44x+LV29krhe58iY
         0j6293nXS/Ok8QGZVWifErkaN0skrTelDSY/XlqCPzTHpK+AOg1YlOdicr5WmUx9csIv
         66Xg==
X-Forwarded-Encrypted: i=1; AJvYcCUjaWpPs1HgMkJfMNAZjKI5jghHjTt/6frybRh8ulvfxslASRwyAz0bec8B8YFnzliyTv5RekQv9/Is6kHwFhm78JqZlg4kBM2QOg==
X-Gm-Message-State: AOJu0YyVQOYP2Eg1Ofqo050UZXo38xTzC2xbRNrEi75p0i1jy2gvkPvg
	6xy7EoJKH7IM7LmIL5VnFesPzFxts9M6MX8FjwF/DJd/tUP6NWbpV+wgMasG4q0=
X-Google-Smtp-Source: AGHT+IGfozs4AwvcZe4Ex5alE8/DWJLLE0peGqkDlWeKv2/RBkKRrvdguJMijbWU1spsIZJp4mhVRw==
X-Received: by 2002:ac2:4c86:0:b0:51f:696b:949a with SMTP id 2adb3069b0e04-52b896c7ae7mr4279067e87.48.1717329887841;
        Sun, 02 Jun 2024 05:04:47 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52b8b56867fsm759398e87.44.2024.06.02.05.04.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Jun 2024 05:04:47 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 02 Jun 2024 15:04:41 +0300
Subject: [PATCH v3 01/12] dt-bindings: display: fsl-imx-drm: drop edid
 property support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240602-drm-imx-cleanup-v3-1-e549e2a43100@linaro.org>
References: <20240602-drm-imx-cleanup-v3-0-e549e2a43100@linaro.org>
In-Reply-To: <20240602-drm-imx-cleanup-v3-0-e549e2a43100@linaro.org>
To: Philipp Zabel <p.zabel@pengutronix.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>
Cc: Chris Healy <cphealy@gmail.com>, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1524;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=SFNXn1zh/yUH5lKBoXzlQkp+p1CQ7cqY5rYlPQmKP7Y=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ1pM/J2vZz5Isk1dyi0v4TtXuFzuvoLEo4zOkvkbo396q
 dcI1ed2MhqzMDByMciKKbL4FLRMjdmUHPZhx9R6mEGsTCBTGLg4BWAiU1XZ/8rn3ldQjYy/vUz1
 1W3lC1Uxdfwmr+15haMreA5z6us5d1/sl+cV/7F9nXztqmde39LbHA92W/Qtj45XWC+yqWq6cnm
 o6kz7LPszV7Zs+CexOdpE66wmb/XGx3kHI74KN8i9mXT1Q6KBwjwe7WePr7ulZ175o9++4pSA4/
 XeGol1K6oq/Ccu+y+iqv//ntisVcpnG3LXJdpO+K5p6WibssF/v/r5d5xJhofe5laHLpvEbSs9/
 cjR8tJ/P3kn64tv2c/IOPeMt+ExH+ZZneyquzqenwhae2POpquM56XPVp5n5eP+nqMczKm1UIFd
 ebftxBcS/UqXLzhWyVYne6S/jPXIdGhpeWhuFu1v9O8BAA==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

None of the in-kernel DT files ever used edid override with the
fsl-imx-drm driver. In case the EDID needs to be specified manually, DRM
core allows one to either override it via the debugfs or to load it via
request_firmware by using DRM_LOAD_EDID_FIRMWARE. In all other cases
EDID and/or modes are to be provided as a part of the panel driver.

Drop the edid property from the fsl-imx-drm bindings.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/display/imx/fsl-imx-drm.txt | 2 --
 1 file changed, 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/imx/fsl-imx-drm.txt b/Documentation/devicetree/bindings/display/imx/fsl-imx-drm.txt
index 3c35338a2867..269b1ae2fca9 100644
--- a/Documentation/devicetree/bindings/display/imx/fsl-imx-drm.txt
+++ b/Documentation/devicetree/bindings/display/imx/fsl-imx-drm.txt
@@ -119,7 +119,6 @@ Optional properties:
 - interface-pix-fmt: How this display is connected to the
   display interface. Currently supported types: "rgb24", "rgb565", "bgr666"
   and "lvds666".
-- edid: verbatim EDID data block describing attached display.
 - ddc: phandle describing the i2c bus handling the display data
   channel
 - port@[0-1]: Port nodes with endpoint definitions as defined in
@@ -131,7 +130,6 @@ example:
 
 disp0 {
 	compatible = "fsl,imx-parallel-display";
-	edid = [edid-data];
 	interface-pix-fmt = "rgb24";
 
 	port@0 {

-- 
2.39.2


