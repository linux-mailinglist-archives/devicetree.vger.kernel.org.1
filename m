Return-Path: <devicetree+bounces-49810-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 88470877ED0
	for <lists+devicetree@lfdr.de>; Mon, 11 Mar 2024 12:20:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B56C21C211B9
	for <lists+devicetree@lfdr.de>; Mon, 11 Mar 2024 11:20:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AFDB39FEF;
	Mon, 11 Mar 2024 11:20:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GOSrhvsa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A09CB3B797
	for <devicetree@vger.kernel.org>; Mon, 11 Mar 2024 11:20:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710156043; cv=none; b=Qy7yBth7YJAIM/Ez1nXMprM+OrASfAFM5p15tI5K2yki9OS4EB8khh2aCz2Zxwo3MdZoRBaVp8DTQBJvqNtGPf5WjHBY/Kk30dVoJd8iTQtiDh9E5NC/UuYHXzj3NIwTWGlumJpbYgJin2cxKIyJevH4+feApbo5MtyIYFHUniE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710156043; c=relaxed/simple;
	bh=qEtbmPTQ1hWUAljrEFOM5fEpd9T1vWp4LF7YuGb47NU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=G1NCBVa09jPtOiCc8ddKm80ItLWrBYlYH4n1UTPzK2CP1M1hWazJfBvDzN55cyshXA7W9B/CsPMSl8vHWj1oXOPUkqgWF40/bumBZ9di5DPAZIWPiJ/xV5q47iciz5HI7aN1Y7ujmrabPzsRF18YrUMIr+bgpA0TU3KQAMAQh4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GOSrhvsa; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2d33986dbc0so45993331fa.2
        for <devicetree@vger.kernel.org>; Mon, 11 Mar 2024 04:20:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710156039; x=1710760839; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5K+8RS+ahU3ghC9Eek+RlKhdxsgzsxyDagZOon3+/co=;
        b=GOSrhvsa2l+zfesazJnGWYNicVGFWs2wfg5TFryXGqpqCZVa99vFgOb8XiElA/+TB+
         3DeFkreK/KcbcDt4ED4COicJ2GMBJ6/dPUcL2VGeujwuoCqjimi92Bo+nyN8B72JB3Rk
         g9tbhLvLNqHN0xkKRRhw9+LmaZUoacKPMaEA3+AjTnCzZuxTQwC0iLr2GMzS0cWd3XzF
         lVQCG1OXa/JY85nUlPd+rdOMUYZK4X4mUCJMltBNh9XHvpoX7ZjGMm2C2+YUN2hL3zNg
         EHyhrXR2L85r3K/cNzQf8+FaqAtdeMcjIg1CYqAS024Cc8Ggzm/wocV94pwKyHug0GuD
         ijMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710156039; x=1710760839;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5K+8RS+ahU3ghC9Eek+RlKhdxsgzsxyDagZOon3+/co=;
        b=TZICH4THHYuwJlr+keVCsPGETyVdxm1TBKOzZxy+w6pOhDP/Q2CINNpYRn/HeQmuW6
         3aLDdNbVmByMKvAyS5MzXJ+DuUEUFdJaAqIWr7Hws9LHxz7NqOmYKlM3FMozl3dUsfH2
         pkUmZ73ddguwpjnaVjSHcxDOegXhO2oUpbCN247ndA2DMrIgqv5V9FB5hpn+hcpUHkdd
         cMw6/Y6w5vrDNYXrKOqoTFQ/Kh4Rhk+mvjq9Qlp4NaD3Lt+vif5LBcHss2nSpGTVbF5G
         OOlo9rrC1o0a4dLlTzDm0WgdlKEseATx4PEKj3guWu1hnZQpNX7mMQgVQqr8cb5xY0ZV
         00BA==
X-Forwarded-Encrypted: i=1; AJvYcCUejyhrfOm82q/lnZMrh+wOp4cVcrz0AcRl2g0PNmOuH4fqpqVfGD6VQT8e/sy8Cx9vBOnmRAKwuIwFGu8T/dKPq509zd4hJHnOOw==
X-Gm-Message-State: AOJu0YyRz7SFrjFHQVagmRkUX9RsN64MDmsexj4LyEipgbdnsmbx+D3s
	UnzZbp9QpN6PrK8x12AThbdjl3w3wCx6AvP2Zg65t3ZVMybNoDdMrrQCqSQwuzg=
X-Google-Smtp-Source: AGHT+IEJhMAtLOGdKJeKecm7sYEKvYcwwx9duwSC/xm8nUskzRXaHqSqFQNqsYJ+HOB9PEoneZGAlw==
X-Received: by 2002:a2e:bc17:0:b0:2d4:2651:1483 with SMTP id b23-20020a2ebc17000000b002d426511483mr4965661ljf.35.1710156039078;
        Mon, 11 Mar 2024 04:20:39 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id by10-20020a05651c1a0a00b002d2aa0b0d01sm1075200ljb.82.2024.03.11.04.20.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Mar 2024 04:20:38 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 11 Mar 2024 13:20:09 +0200
Subject: [PATCH 01/12] dt-bindings: display: fsl-imx-drm: drop edid
 property support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240311-drm-imx-cleanup-v1-1-e104f05caa51@linaro.org>
References: <20240311-drm-imx-cleanup-v1-0-e104f05caa51@linaro.org>
In-Reply-To: <20240311-drm-imx-cleanup-v1-0-e104f05caa51@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1483;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=qEtbmPTQ1hWUAljrEFOM5fEpd9T1vWp4LF7YuGb47NU=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBl7ukDR8/XphsjX9E6ftv7NHIwcR6vVy3NYlC/d
 zXcBG5F1AKJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZe7pAwAKCRCLPIo+Aiko
 1S/TB/9vuXwtn84QJjHwWRO7IIGZ4o7Fqk8/BZcRorA2Fibr15CVuzrPG05KtxepCR49FHcaL3o
 G4d8QEWJTkQDEdZge69TTVqoSWw1GyhXhSc4G3Fwwa8ZOiz8KRjjjfrU2hxcFbqH7iRn1/cJCtk
 70J7bqowfyNagfeYY9+cyAzLGxG73o5my1xA5NmcILa/IwDguTDE3TFvfV2RLUVPFfeRSPmTiaU
 HTYUs7p0BgIoClf9wen96Ee/SZQ9lbbYlcNx2D0vNTe/EgUVSycN/80gkxjVxcteUUGIDLx/ibh
 kJ7Ypvg9Ti7aOhkeSWy65CdQpiACyht6VgF/WLPThx5CcM2z
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

None of the in-kernel DT files ever used edid override with the
fsl-imx-drm driver. In case the EDID needs to be specified manually, DRM
core allows one to either override it via the debugfs or to load it via
request_firmware by using DRM_LOAD_EDID_FIRMWARE. In all other cases
EDID and/or modes are to be provided as a part of the panel driver.

Drop the edid property from the fsl-imx-drm bindings.

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


