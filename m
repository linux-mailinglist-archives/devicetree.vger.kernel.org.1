Return-Path: <devicetree+bounces-186718-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 786FEADCED1
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 16:08:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1CE393A8947
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 14:05:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB6D0215787;
	Tue, 17 Jun 2025 14:05:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QWRdIz4I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 699DE2E7180
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 14:05:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750169128; cv=none; b=mv3wgDkttkPsgORQ6WZw3kIF/5hui68GYpLpnXJxptfdYrBTnvP0V0Yx3KsMDx+YH8pJBkuBq76Tj0ogm6Z/x9LARotTPYGxU1dSeJfpd4CUCgdhQ9Tk+3OHuoO04YtZ/5etn02Z8vjV6iulbKvZnmzciP1Q/7QQ7b0Ho7OQn6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750169128; c=relaxed/simple;
	bh=no98p9WaVCfzywtMIq55eDMklzt71WxACb/1xOAbajQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=XlXAo/nOoqSfplI54ZWcH+yf9yOmfhiQ/ffaP8yw7ZXVZXPsEoQZC3AtD4nO892L8mkHEwYGuDwqh7Kgza2rVvfhjnN2ZuuLYL/HAxAvHI10x5GIPDkBWKBArwnlQ96iXGfxC48qxbZJ0uVzW1RWdVNYN5rjeQo9s2RCtwU/jRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QWRdIz4I; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-234d366e5f2so75684115ad.1
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 07:05:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750169127; x=1750773927; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xxX2EQ/ifCaF8Tj3G7wW7shR3P5CgH/KG2s1rdkQtN0=;
        b=QWRdIz4IxQ+3OiDgJZAxKv5Uvm0kPKL2PZp9W2G/AMjJEhJdC/t8NXYX2oQ2GBLLTz
         AOFCWPE0eOJMvfrn/hgr0Dj/vNHq6BcX8ToZscKlIa2HxSibUiFMS8OOrphppyb+WtxT
         LR6ZN4k999dIJXRy5PtqFMR87egX/TfgBN2LE297LOGcmWxNLSjgtZxJPfYGzMd35AN3
         ZFu4GWPEQiYUpTkjmnnFeESTuScIHVoA85blFn7tgkJgOF+bdbXEZ2UnyGgR8P/ZDoyb
         5h5ZvO3sNd6hU0VkzF3piQZrXuvptVZ4GNt4jBrm6OfLOXGfYIio9FeA+cXAhCwBZcrL
         GLBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750169127; x=1750773927;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xxX2EQ/ifCaF8Tj3G7wW7shR3P5CgH/KG2s1rdkQtN0=;
        b=GGHgA1lumWPTc2GZNSe5y64C0rSMtt16moJbOiH5fUbUEvBRWmqseCbaq9q6pxI7U7
         2jbi3i8Eq469UGbVWvdc9z55eo3CBmLuHz9IbdqJgOR+GCIh0M3daGgqCSo+7Hlr624o
         AYVlANUiPNsgnSzeecxkYAAR0kkI3R7EEehTd5PVRTSXmbNLdD4VVPuDStKarpXgiG+e
         03bpc7x7fQeNbme31vYjf1uvgX2bnuk0cxkChgblZvD4n4ZRMhMvY1+4Yn41qve4QayG
         UsxybGS0YNwMQG0/L8zR6IS/CJvoU6viou6z5gVaof5fF7jb+a8Zv4L08EsoQyRtCVAJ
         Ft5Q==
X-Forwarded-Encrypted: i=1; AJvYcCWoEsb0z3gDByKkb3wexln23dcCjjNziAj/vRqizYCO86z5GvN6JZAwgkT25t3FXC6qjGIHzP3ZL5wq@vger.kernel.org
X-Gm-Message-State: AOJu0YwbSCzUUF6W/SUtjCJ8sM7p03vgRQdAI5sKLwiycJnYwHIjD12W
	nXTzjyJn0pLs+PkhBQWelquKIfgAPMQKgbN/vmq8FzQ85SdEBKsuUNcJ
X-Gm-Gg: ASbGncukCi0wJO/+jJnu3oW51jeM+5uhPoToiY8gTtFSTpwFQO3S05iQ7/IzwJhZgNr
	0/BxjqVmYNqcdgGLg8XNKtxlcEx/FZIzdcpJLSxSG5ZgIel788x5AQtAaIiBLdYTFeRk/bgsBpE
	4EZVAonYEQUCHDhvubfx6Zmvv8toqVW7gxvsYs14MCuOEUX3h3GHzPekQqRnkPcVKbA20tGfMWy
	e3EbQf6TurajuPRl0VGGPTppKGdUFb6gqtzuoHGGU91090DF444p51/QzObYicrYM4Wb5aBctOL
	OrM7FgpGlFIeQMr9P0S6kvhFhTp8rdhrnoNMg8jQPVxEGIKOZaQj38O8Dhrh7qJPy/L8
X-Google-Smtp-Source: AGHT+IHajMzqisLRHtxmxLwgUDzyX4LzRsBt6Q8GnG2QttPXlJ6ExUGs+lD0ZpGbhIq4W0UNGTh+3A==
X-Received: by 2002:a17:902:cec4:b0:235:e942:cb9d with SMTP id d9443c01a7336-2366b32a038mr184085865ad.17.1750169126612;
        Tue, 17 Jun 2025 07:05:26 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61::1000])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b2fe163a0e7sm8906127a12.16.2025.06.17.07.05.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 07:05:26 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: claudiu.beznea@tuxon.dev
Cc: linux-arm-kernel@lists.infradead.org,
	nicolas.ferre@microchip.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH v2 2/2] ARM: configs: sama5_defconfig: Select CONFIG_WILC1000_SDIO
Date: Tue, 17 Jun 2025 11:05:02 -0300
Message-Id: <20250617140502.1042812-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250617140502.1042812-1-festevam@gmail.com>
References: <20250617140502.1042812-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

The at91-sama5d27_wlsom1 SoM has a WILC3000 Wifi chip populated, so select
the CONFIG_WILC1000_SDIO by default.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v1:
- Make the change in the correct defconfig. (Claudiu)

 arch/arm/configs/sama5_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/sama5_defconfig b/arch/arm/configs/sama5_defconfig
index e447329398d5..2cad045e1d8d 100644
--- a/arch/arm/configs/sama5_defconfig
+++ b/arch/arm/configs/sama5_defconfig
@@ -95,6 +95,7 @@ CONFIG_LIBERTAS_THINFIRM_USB=m
 CONFIG_MWIFIEX=m
 CONFIG_MWIFIEX_SDIO=m
 CONFIG_MWIFIEX_USB=m
+CONFIG_WILC1000_SDIO=m
 CONFIG_RT2X00=m
 CONFIG_RT2500USB=m
 CONFIG_RT73USB=m
-- 
2.34.1


