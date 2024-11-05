Return-Path: <devicetree+bounces-119007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 017569BC8E0
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2024 10:16:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A13201F213CF
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2024 09:16:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB8EA1CFED9;
	Tue,  5 Nov 2024 09:15:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="bcRwHDx7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ABCA1CEAD3
	for <devicetree@vger.kernel.org>; Tue,  5 Nov 2024 09:15:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730798139; cv=none; b=kWWzs0iYvYSh05h2joCcU+o51mnbykQEGo2XfkEK9ASgg7I2vU3eCOo85KktpyImlYv3hiYz5wcthDMTZkgxC9dRTCnZ3qywUHoFBX8ubHylOQQWM7beSHxdSGzd4GmmjCT4GfCqpkI4ZkPvLvKpMAXxHm/Cb9W0n9JA+EGHGKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730798139; c=relaxed/simple;
	bh=NoJ4ZGaZx7AkDYtA5g7KbWAi5e6RM2XncfGQkpsnNAw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=D0dmkjFMijqeir6Ji/8O7q0Xj9vdRLHfbDhcrpTrYFuFoxyoMB7lpuXUzrqShmz6RMGzHyE8gCwJiCoHh0CVzNtbhK4b86GIdik6R2lBD1HjQh51GN4BvPaRXoweDgEQnx7/OwDhhbm78y4UlIv/ApYAvOyE7J4791WME9RPb3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=bcRwHDx7; arc=none smtp.client-ip=209.85.215.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-7ae3d7222d4so3753988a12.3
        for <devicetree@vger.kernel.org>; Tue, 05 Nov 2024 01:15:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1730798137; x=1731402937; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bp5SzzDrkWzFz+KkFH2AjLFNmdPoRX4+H3HpHMfQq2k=;
        b=bcRwHDx7domjvFWQCpaq8ih8PLMPJ76H6WR3ocqINJyc9knP/GhsOcBaRbPm33J7aH
         E2a7Z2C0XiEaCoINUtw9W9oe9SNLrM2w+jcMZ0Ke62o96MvZSYBqPLqEg4/o2fQMBjUq
         AVxeGYtzw0RfNWm+Fey44MJN7/opG88VhKtvY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730798137; x=1731402937;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bp5SzzDrkWzFz+KkFH2AjLFNmdPoRX4+H3HpHMfQq2k=;
        b=nlEyYM/gbbrNuEMkHYr//t0CmgmoJZDTomFBwl45Zv8+bhW3H1HyZ58TMSRlw2YWKS
         yVXZiTE4KqPAHPhoJggP50FvSpQKCnimZWun2ugLqfl4Nual01mUHrdWgNirT17+s2AS
         6agrEagD1E3fp9ll1q4ZFYE8mymqlghQNNUPjBwMarSCid1DpmCn0YfgyquqXdKrv+V2
         oJp9P28WkB8eBnoWKelm2NIgw/XHkSFG9hanns73lFxa7XtJPzsenOdGRJfHMg1JB4dH
         V0y7/vaiQ0ycYh0OolVL2BHOw8YblQXxRNhB/7zDRHhdcOsC610606VTyHSGroLeC9oW
         jxug==
X-Forwarded-Encrypted: i=1; AJvYcCUrPOvdRkvH77cngufbUHEsXSJAZALC/c0gxrh50zZgWhGSHoZ0O6T56xSbHgkOOGVd+h5C5KE+tJc/@vger.kernel.org
X-Gm-Message-State: AOJu0YwpCVLYhLjeFQJNUKGxnAG+5c+GlClPr01IVzZ9zwk4m338pSdM
	wtk0YL9L00LkLsj5l4/e9/cEcnGY+H99cbzYqtZj5ibAkFNIOPjuIoNRzn242ixR7w4kwRQusu0
	=
X-Google-Smtp-Source: AGHT+IGHX0L4HfW1RQzdQL8LuZUiHavKnr2hG99pMYDCnlf3de5sLsOYbFCY7gSPwFvuixT4u6i6bA==
X-Received: by 2002:a05:6a21:2d8b:b0:1d9:28f8:f27d with SMTP id adf61e73a8af0-1db91e533camr28597387637.38.1730798137580;
        Tue, 05 Nov 2024 01:15:37 -0800 (PST)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:20ee:3712:ce0b:1ed7])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-720bc313502sm9137251b3a.182.2024.11.05.01.15.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Nov 2024 01:15:37 -0800 (PST)
From: Fei Shao <fshao@chromium.org>
To: Mark Brown <broonie@kernel.org>
Cc: Fei Shao <fshao@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org
Subject: [PATCH v2] ASoC: dt-bindings: maxim,max98390: Reference common DAI properties
Date: Tue,  5 Nov 2024 17:14:31 +0800
Message-ID: <20241105091513.3963102-1-fshao@chromium.org>
X-Mailer: git-send-email 2.47.0.277.g8800431eea-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

MAX98390 is a smart amplifier and exposes one DAI, so '#sound-dai-cells'
property is needed for describing the DAI links.

Reference the dai-common.yaml schema to allow '#sound-dai-cells' to be
used.

This fixes dtbs_check error:
  '#sound-dai-cells' does not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Fei Shao <fshao@chromium.org>
---
This patch is based on a previous [v1] series.
This is sent as an individual patch in v2 because the other patches in
the [v1] series are either invalid or for different purpose in different
binding, so I think it'd be better to send them separately.

[v1]:
https://lore.kernel.org/all/20241025104548.1220076-4-fshao@chromium.org/

Changes in v2:
- specify '#sound-dai-cells' with const value
- update commit message

 .../devicetree/bindings/sound/maxim,max98390.yaml         | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/maxim,max98390.yaml b/Documentation/devicetree/bindings/sound/maxim,max98390.yaml
index deaa6886c42f..d35dd8408c61 100644
--- a/Documentation/devicetree/bindings/sound/maxim,max98390.yaml
+++ b/Documentation/devicetree/bindings/sound/maxim,max98390.yaml
@@ -9,6 +9,9 @@ title: Maxim Integrated MAX98390 Speaker Amplifier with Integrated Dynamic Speak
 maintainers:
   - Steve Lee <steves.lee@maximintegrated.com>
 
+allOf:
+  - $ref: dai-common.yaml#
+
 properties:
   compatible:
     const: maxim,max98390
@@ -32,11 +35,14 @@ properties:
   reset-gpios:
     maxItems: 1
 
+  '#sound-dai-cells':
+    const: 0
+
 required:
   - compatible
   - reg
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |
-- 
2.47.0.277.g8800431eea-goog


