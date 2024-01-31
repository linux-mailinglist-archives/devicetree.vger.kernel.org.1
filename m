Return-Path: <devicetree+bounces-37103-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D003843B1C
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 10:29:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6F35C1C2858D
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 09:29:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD7A1657BE;
	Wed, 31 Jan 2024 09:29:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="eNs39sle"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1F653D97D
	for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 09:29:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706693369; cv=none; b=jjNZ0xko0T8auCN74kvomaw1mhkiBrbMbP4cWhygYlBg+9oKtGs1NU+XXh7dEIe+H85WCDHBC8P4MblZAAkJzkYcLqsqaOYrdTddJn+2nPaeQJoF8CGVyGJ+BLLKEqcx2geMzVREPEwc2/9X9KqKnQNAyDff1xLYgfGfEDTB9fc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706693369; c=relaxed/simple;
	bh=BA6fJEjCZMcaHnNBU5jDXRdTkCxnI8f7pf6sC+LoD0M=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=DeRvomNMnvcxCGpIxBBwWpk0AUp4NaN14Mqr778P0pdRJFnriD2sSOEW1+q5yzu52qNwTwVrgtApY2fstFxFDne85ukgYdWpYZf1/ykqX+MVsCUtBpPQE5STT+c0c7FTvOo61mgOauV3wj1r2A9EBijhnl48eWsF5x2D9vYs5Gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=eNs39sle; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-55817a12ad8so5268410a12.2
        for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 01:29:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1706693366; x=1707298166; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Xk9fhyP0CkSTpvqSdLIvIAOMOdEQrJYka04kzpQbSCI=;
        b=eNs39sleYkUhSKYpLISJR6koTI7sW0zVMpF1njA2cQe5A9wVb4CtMAKn5UPwt7Jgmm
         tjtpzmG7mtCD/DET1mGSqKnlj1vbt6A6WH3UILngrfVFJCw93eWKsaw/XJaNrCM40GVf
         QLm5SqjJmF37mV16UTngb5Y+zZqgSZU/lLIlM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706693366; x=1707298166;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Xk9fhyP0CkSTpvqSdLIvIAOMOdEQrJYka04kzpQbSCI=;
        b=Gq3czpZ2dQogKBaNqXH8OXIIFE7z/cMoShTM7/IeEWHXlzbqj8UdyneKDTSZWxWvyF
         01H8VYcv1VuDj+CUYm7UDbk8c7+LQJ+fst9MV6BAKcesOdiMv5/RkGocE5B9k3q3BanN
         KinnUiYFXlyFR+ANIryIPRXERBPkjZiWmAsGBzILz3Hh0SN9U7cnu0Gd5F9fMqkT+FXi
         nOxhnlvNo0hN+XlrjY7autaJtJWzQto3gMydjiMioI63lerLcDkJjuER5s+3cQdpBkBs
         5Tyanvf5/L/rTReTirlmMfAx4PfN4cifM3jAbWPYwHEDSp/bMqF3VUsbZu/ZWLba6LqU
         66pw==
X-Gm-Message-State: AOJu0Yx6fe8ncd1wlnlFtDE55SVz18sQI2KkT6ElP6Ob4ciqNyXtoY3L
	0agQ+ZLnmr8YRdMBufpux/KB+xpx5LZ/xYyA6ecpPQ9dpPCGEUJqk/mEbeanGw8=
X-Google-Smtp-Source: AGHT+IHXEGDr4fGmwlGPRIVoGEbaTU3wb+9v6LQhDK8+IaSm0AjVrt+5w0SlCJUkC1vHmi19sAEe4Q==
X-Received: by 2002:a17:906:190a:b0:a35:7191:d952 with SMTP id a10-20020a170906190a00b00a357191d952mr670959eje.53.1706693365993;
        Wed, 31 Jan 2024 01:29:25 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-56-30-170.retail.telecomitalia.it. [82.56.30.170])
        by smtp.gmail.com with ESMTPSA id g22-20020a170906349600b00a367bdce1fcsm321436ejb.64.2024.01.31.01.29.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jan 2024 01:29:25 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Sam Ravnborg <sam@ravnborg.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Subject: [drm-drm-misc:drm-misc-next v2] dt-bindings: nt35510: document 'port' property
Date: Wed, 31 Jan 2024 10:28:44 +0100
Message-ID: <20240131092852.643844-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Allow 'port' property (coming from panel-common.yaml) to be used in DTS:

  st/stm32f769-disco-mb1166-reva09.dtb: panel@0: 'port' does not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>

---

Changes in v2:
- Rework the patch to drop errors found by command
  'make DT_CHECKER_FLAGS=-m dt_binding_check'.

 .../devicetree/bindings/display/panel/novatek,nt35510.yaml       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/panel/novatek,nt35510.yaml b/Documentation/devicetree/bindings/display/panel/novatek,nt35510.yaml
index a4afaff483b7..91921f4b0e5f 100644
--- a/Documentation/devicetree/bindings/display/panel/novatek,nt35510.yaml
+++ b/Documentation/devicetree/bindings/display/panel/novatek,nt35510.yaml
@@ -31,6 +31,7 @@ properties:
   vddi-supply:
     description: regulator that supplies the vddi voltage
   backlight: true
+  port: true
 
 required:
   - compatible
-- 
2.43.0


