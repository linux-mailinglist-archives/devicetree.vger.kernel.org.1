Return-Path: <devicetree+bounces-11394-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 098317D598A
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 19:13:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3AE7E1C20CE9
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 17:13:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D99B03A28F;
	Tue, 24 Oct 2023 17:13:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZR7bZJAD"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E7733A286
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 17:13:25 +0000 (UTC)
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85CCB118;
	Tue, 24 Oct 2023 10:13:23 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-507ac66a969so6365113e87.3;
        Tue, 24 Oct 2023 10:13:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698167602; x=1698772402; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x9fNjyF1v5YksnWbAbpME/leIFX1OZIHlz6r3I23R8Y=;
        b=ZR7bZJADqP5yHYJ1NfiEN+wxwS1YHjJnUV2ZjtnInu0R8IGdBgJR+valiywSi+cVfp
         tBAV6bEAiSxqepmZx/oNX3P/nGYmu4IlVGxBU5waJciSjuj60kbskssYw8vV5iJHi/Yf
         ACJpI3xhu22hzmieBLZtXc2ZlpeMHOgb61Mf7PhHTok0GbdzmSJCjHPFxRGy0p4ziTs4
         bx56PLHsZ7biBzZSzkV154pQbLuitTLMSSKd4Psxy5HsRNGfBV4foH/sCxmtpVD2R3wg
         nSqSfiopw4RNEGXn7zdSxzXwNq1hFvaQa/sNzejECTkCxWKpVoMreZu4Xf7zUoe+THgr
         CWcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698167602; x=1698772402;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x9fNjyF1v5YksnWbAbpME/leIFX1OZIHlz6r3I23R8Y=;
        b=sjlrEFaiOxFCyEuy8Q6CV+8X/42Vnjm8syCNF3JjgJBg4J+/O9lwRO+7dsc9oKYF+g
         Zgk7Ge5MmimIOKOQw+FNymBJwG93wsYIh0Z7WvfpKBw6v5fHVGXok8I35IDbopkwlmpB
         HMLC5xe/RjSmcQWFHpp5YYp0J1FgbFPfyIIeoy3fDZPXTThiL8n+k1BDJm7G9HhsFDlO
         vhR1lKQSbB27tPJYt3gS9yGMQV2Qz8KNSj9Dkp/EPEvJ3fwFSYRkFdoN4zgFh5jsqRIZ
         gWOanmlhLSvwBaN3sn/xhWCC7v3nGCl+xq3D7BXTuD2FYdhh7sLqAyXaOu9tDkkwF7zC
         pKvg==
X-Gm-Message-State: AOJu0Yw+dqvIGpEs3wFtATqPTq0pMODLLgzVlDzB6NRMIvl0lMKRgMuj
	Nzmz74D9XcfQUpbEGOnSmLU=
X-Google-Smtp-Source: AGHT+IEcCwgneLND5o7bHUBISV9MdVzV/sMKw7Tq9M+fpNLyyTN50vBBXmjkI52iU1JqHSFil7yqoA==
X-Received: by 2002:ac2:46c5:0:b0:507:b1e2:d3c4 with SMTP id p5-20020ac246c5000000b00507b1e2d3c4mr8591914lfo.58.1698167601562;
        Tue, 24 Oct 2023 10:13:21 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id o12-20020ac24e8c000000b00505a5ea726asm2202413lfr.309.2023.10.24.10.13.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 10:13:21 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Maxime Ripard <mripard@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-i2c@vger.kernel.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH 6.7 fix 2/2] dt-bindings: eeprom: at24: allow NVMEM cells based on old syntax
Date: Tue, 24 Oct 2023 19:12:53 +0200
Message-Id: <20231024171253.19976-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20231024171253.19976-1-zajec5@gmail.com>
References: <20231024171253.19976-1-zajec5@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Rafał Miłecki <rafal@milecki.pl>

This binding supported NVMEM cells as subnodes and that syntax is used
by few in-kenel DTS files. Modify binding to allow it.

Reported-by: Rob Herring <robh@kernel.org>
Fixes: c5330723d5a0 ("dt-bindings: nvmem: move deprecated cells binding to its own file")
Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 Documentation/devicetree/bindings/eeprom/at24.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/eeprom/at24.yaml b/Documentation/devicetree/bindings/eeprom/at24.yaml
index 6385b05a1e62..b6864d0ee81e 100644
--- a/Documentation/devicetree/bindings/eeprom/at24.yaml
+++ b/Documentation/devicetree/bindings/eeprom/at24.yaml
@@ -12,6 +12,7 @@ maintainers:
 
 allOf:
   - $ref: /schemas/nvmem/nvmem.yaml
+  - $ref: /schemas/nvmem/nvmem-deprecated-cells.yaml
 
 select:
   properties:
-- 
2.35.3


