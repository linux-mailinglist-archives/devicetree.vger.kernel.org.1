Return-Path: <devicetree+bounces-49811-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 08A5F877ED1
	for <lists+devicetree@lfdr.de>; Mon, 11 Mar 2024 12:20:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4213C1C20AD1
	for <lists+devicetree@lfdr.de>; Mon, 11 Mar 2024 11:20:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CF8939FF2;
	Mon, 11 Mar 2024 11:20:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yVNEo3YT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD74D3B79F
	for <devicetree@vger.kernel.org>; Mon, 11 Mar 2024 11:20:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710156043; cv=none; b=KgT3SS/GfRcz8vfOnyDDlcZmex4CyLAL8ORwTGvpN99dQSxqsMCAk8bvaMRbn9J8fcEuRLQlOYAW/iyIcb3UwYmSoV3iduZRHQvEzqc+AeQj3+Aw/kyRlrec0wHx7+JIz6SZAJcwRoK9ctBzKg+eBxPKnQP3NwHuFDdP7z1+vJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710156043; c=relaxed/simple;
	bh=HJWqx05Y7sFlh+0kSF4Jp43KRSRtmVmSwPbpig+Jz/w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=K1RgoR0n3JhM3IgseIgeqd3TyWAi7h91ifWJehbDzTsSAxIYU4jSWYzF84m99nOyS0vreLegU+7gSbYe2rlaELcXWIJwWOcSbm1+lH8xbjtT/C4V8AZGwajCOmPkowYJBYtr5MdQJnlioZkWe/p2btjHcsqB265azGYVfiwFBTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yVNEo3YT; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2d2509c66daso44803121fa.3
        for <devicetree@vger.kernel.org>; Mon, 11 Mar 2024 04:20:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710156040; x=1710760840; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FOnGUUSPDhVt2hmPu4weKhalmHR2vV5a1NMlqOPGhZM=;
        b=yVNEo3YTGOegJFmWjNnshlvxbvruI9eUJ5jmrUnSWyqsHARdtg4oL98Od891ulVyA3
         WfaGInf+QFU/aKsb5YLap30BbOmT8+dF5s3bjZDJe2junIA3FMJM5XNfEf0B2gDJFZbs
         aCeV1oWNho+bHRsEXtOLt0Oy/Qk9JWN6ljXL6EwPnbJN7xHdEQtwEcJ/zBkfxuIf+ZNy
         Vglu+mHdZQilhAjG54vtrc2T5vRSqlbbTOF5FDvrk065ru4XkGAR66SG1bOt/T198NAO
         1rUX7OCb0wJEGKSUqpiiUXCkzL/Wi5yB0XE50P2Ehp6sA6sDDkW3Q0MLDNj8azU2WFFF
         G11w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710156040; x=1710760840;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FOnGUUSPDhVt2hmPu4weKhalmHR2vV5a1NMlqOPGhZM=;
        b=jC1RhKJAzhcxkP2q7ERBYVbjXjwT7kRRz8rLL3QZtsmAKJc+21h+OBoQvHlVZH5f66
         A+ZUVaUSn1VfMOkwIVGyBW2ZhpVBXrgWo2wU2pHTQumIC1UPm/6SexWqNXpOixjjnxKa
         nu487pgVPk83lTDV8jcOAQ3mBnNDSLICSU2tiPGAJr/z1cMb5USOUMHAXxSte3bMHXQi
         /DMWA5vHQILRVsc0TrUKh5G/he827hUttGASQOW1dbOR22xn8k7OBeDWzn1Ych1kM8n1
         r2m+phwAu3RznZ6qucSJUpvoiZvMusEF56dcisi++hibIn/Bc64F2AyhImtPpsnS6d6y
         6xpg==
X-Forwarded-Encrypted: i=1; AJvYcCV4s5pREj+Fx4VLchaFQPi3BfxNIpT7QXx0YMirpz6CGJkO36wnzEHGv/eN9C8P3PXDKj9jQ30xhBvyvdalPG/pDEy0n5aqjd+cCw==
X-Gm-Message-State: AOJu0YywDCqSSpn+BzwN+FVGM/sFliibKi17h4Oogj5vdnkM40hRGxWn
	cvGkhFvT4PhKC6HbbnIuBwoysJWcr5Ibf0emsG8pdj/z2SoA6MiUAL2RvSrKg7w=
X-Google-Smtp-Source: AGHT+IHckBn7OVk6ZNbhFfGx+109UqdO7X75yFgk7cEh5ltxLP0S0lkQQAPlPytUbqRVpqfoZAqIOQ==
X-Received: by 2002:a2e:9153:0:b0:2d2:9e6b:27f8 with SMTP id q19-20020a2e9153000000b002d29e6b27f8mr3942230ljg.50.1710156039914;
        Mon, 11 Mar 2024 04:20:39 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id by10-20020a05651c1a0a00b002d2aa0b0d01sm1075200ljb.82.2024.03.11.04.20.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Mar 2024 04:20:39 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 11 Mar 2024 13:20:10 +0200
Subject: [PATCH 02/12] dt-bindings: display: imx/ldb: drop ddc-i2c-bus
 property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240311-drm-imx-cleanup-v1-2-e104f05caa51@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1103;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=HJWqx05Y7sFlh+0kSF4Jp43KRSRtmVmSwPbpig+Jz/w=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBl7ukDPDKCwBOTTQDaMy+fAoU3+mAeWJ79vy8hZ
 HXiIFHMrqOJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZe7pAwAKCRCLPIo+Aiko
 1Ud9B/48QbueaFlREX/3zgbkla7nTCKzXqKHUxFNfTU0aFAnEG+CUtAhb+6cCPIwi6oHD+mONx3
 rAkCur8LLUVLh9nVzExyPa2J8Q5BwXfN/Nkhesnp08Tf5l1PdYo5mAzE6yo0tfcmjZdHC8K9WcV
 w4g7PGdxRybCLJs8PlrR9Pr5xJLvylg29b9JTmugzVgK2y40F3xWWi0Zb+lbYHBQgguTOZapdYB
 foMN6HZnH1y+GbLZL3n/7/VwYRsYASaj3ALQs25mr62h/7lbUpy8sXtPEDvRvuAYVV2rpAOODJT
 b4Q3FFjDK2PKTczRrn62jy99/quRZ1HHaXCiyO0VsmrdQCO/
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The in-kernel DT files do not use ddc-i2c-bus property with the iMX LVDS
Display Bridge. If in future a need arises to support such usecase, the
panel-simple should be used, which is able to handle the DDC bus.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/display/imx/ldb.txt | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/imx/ldb.txt b/Documentation/devicetree/bindings/display/imx/ldb.txt
index 8e6e7d797943..03653a291b54 100644
--- a/Documentation/devicetree/bindings/display/imx/ldb.txt
+++ b/Documentation/devicetree/bindings/display/imx/ldb.txt
@@ -62,7 +62,6 @@ Required properties:
    display-timings are used instead.
 
 Optional properties (required if display-timings are used):
- - ddc-i2c-bus: phandle of an I2C controller used for DDC EDID probing
  - display-timings : A node that describes the display timings as defined in
    Documentation/devicetree/bindings/display/panel/display-timing.txt.
  - fsl,data-mapping : should be "spwg" or "jeida"

-- 
2.39.2


