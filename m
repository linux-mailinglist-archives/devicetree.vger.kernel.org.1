Return-Path: <devicetree+bounces-229788-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CA74BFC2D3
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 15:35:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 6E3A4357AB5
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 13:35:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A92B134889D;
	Wed, 22 Oct 2025 13:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UrqLx2jX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CACF6347FF4
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 13:34:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761140074; cv=none; b=E00fsHK9GBhmkqoJBLuPs19b3NikpVLq6N48hQ32pfpBfjQmGxUQaad473k8Ogz0r78Iovj6YHPwdnmCMgRUc2TggjNIqhYg5C6Q5vV6d937Eh+7usJG9I/+0bZ4GsYNBxZcPWWzEnziLAeYbPtfK8/m+iF2oeLthZAbd6Q9HiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761140074; c=relaxed/simple;
	bh=T0KheH9SmHYRG9S90aXs4rewCJfStqdviPw1bBq61oA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=K/xgAD/tiK8QpV5o8PA1RuKanXWec4RSAmlwuKiTMbfUAPPTlAfQIVXqr46NGsVANkUs5Z1AvzEJ4mP1nIETuUFdiZELLKOttbzC5O0mqC7/J+CsZDPjddViAH6UWKRk9S2i//whExGIKU3nf4utKCz60nuHuUHQG0g6hmHLAGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UrqLx2jX; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-42702037a01so1026335f8f.3
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 06:34:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761140069; x=1761744869; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X6bRIK7N0Lc6wOEz1pBT1Kkom/tSArzPgk5+y4nbPsU=;
        b=UrqLx2jXTyMJkQCoL6eYFx82cCydhZ2Q1yowuxxOpVg41IMr+b3AWk5Qzc0UOSptmH
         YLxG/0dZ46P76ApNmc9iuQraPntbthmKCmpcVSilrmE+bkVmkPhZr7p2Pd5jAsXrJVjW
         o01Thw29jYBLuYdhAiZ80H4qh8Htqr/Oa6UtjcPBsej7EHKJCZAVZHXK6ank9Y7gKzwx
         NfxMHZZg9OSdfBmvAZDTqTgCQkV9ty8fSE+UOqMbwBDnj8Z2yADlAYJdf5wEVkRJFxn5
         39GNn2Nk2Np80n3/4xnsbSV42CQQaibbirfFF2ajUD+VeElYu3ck4RlO6NywhD0zCSHN
         OoAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761140069; x=1761744869;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X6bRIK7N0Lc6wOEz1pBT1Kkom/tSArzPgk5+y4nbPsU=;
        b=W49OTDIZhzeVkTvTt0rvN9vTJDde+hDjthu8N4XGpDumpbPKB9e9idl+8n3XkVnJ/E
         36jQJzaZLjmkfkz7pzndVZFyjtZ4EiEcVzeYernijxhABz0WEIGMVzJnTZBKKL/EsWJc
         whnj9/eUPIWR4E2G+XkJSHl6MUktdclr5w2L2ehr5I54vNjr2WS892dv1z4A7F6DzS9a
         LJpBGVEKaLCV2d+///s5yKJIEdbHccu9UTKCgt3GG98btlORtcDNuF6bcynHA6rGUYUs
         OmrFWdGxE88/Qb5yM+xFfQsV+HzcL2M26prrN7LNOrFerP8QmZSByAiommrZLFOXvwwi
         nF/A==
X-Forwarded-Encrypted: i=1; AJvYcCVo9JH1AxK7187c6SEzKQb1iryMf7gLtERV5lVdaZMCHbvZX8TgNfFDJTGVIXgXRSFkKNwY9oF6S5RU@vger.kernel.org
X-Gm-Message-State: AOJu0YxASJFvfgorpn0GOY964IhJSVWXI9hkEMqD3gfijF+BpijftLkJ
	Y9SZrkbn81UnOHC9usMyT7Ob0HpLkJ9GdHV7KG9ZwFouqfYkwi3kjPggImWK09d+IO0=
X-Gm-Gg: ASbGnctIYgs5crGPt0kw0iZ995AWa16lCQGjWRedyd000n5oV8fWk9LFN8rWIKMVFMM
	cOIE2zTZBnQj97KWM5cEO5+6MVAUw78UW6Vo009o3JfShH2dq23WIo96zffOW4J0HmL2EamByrC
	lNCNECkd6gbrs/Fv5dg6Hg+wx5AilkIWpWPRRrAv8TbAY0PX4cy93nliaVuYGfcvZoCJfoHQB7c
	T/sLAdwTadJWkBBv3cndJ/JL2zbScSFtjh/DBO3X66BQZNKvgZTdfTNRPzc+EgQ+TfM5RGSE/OM
	qVFrRwKpeF/GL3Gq5ZpSzUiFlTJsIhcZbE9HEjtrWnJIW4G2g8rDiOB3AdWV6bSft7Puglci7f4
	IvDLGBKS4nL2MtPzDAe3FVdTPiwBuBQ3Th8wfTTTxckwy8QRIJdQ3uyrpNn8DHa4IYy7HppmD+p
	XbvQ2XXBS7lj2vA6y4vWYZQQ==
X-Google-Smtp-Source: AGHT+IH/eS0bO2rVpOyBa4Ba5RIcrattnMm2FYtHvflh6MkB0GWk0k3OOmlqwAxRAezHhj8eTykIgA==
X-Received: by 2002:a05:6000:184f:b0:425:86cf:43bb with SMTP id ffacd0b85a97d-4284e55735cmr2864362f8f.5.1761140069463;
        Wed, 22 Oct 2025 06:34:29 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42855c2fb92sm2981201f8f.46.2025.10.22.06.34.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 06:34:29 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nobuhiro Iwamatsu <nobuhiro.iwamatsu.x90@mail.toshiba>,
	Punit Agrawal <punit1.agrawal@toshiba.co.jp>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] dt-bindings: pinctrl: toshiba,visconti: Drop redundant functions type
Date: Wed, 22 Oct 2025 15:34:27 +0200
Message-ID: <20251022133425.61988-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251022133425.61988-3-krzysztof.kozlowski@linaro.org>
References: <20251022133425.61988-3-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Referenced pinmux-node.yaml schema already defines type for "functions"
so $ref is redundant.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/pinctrl/toshiba,visconti-pinctrl.yaml    | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/toshiba,visconti-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/toshiba,visconti-pinctrl.yaml
index ce04d2eadec9..0eff0a0ee9e9 100644
--- a/Documentation/devicetree/bindings/pinctrl/toshiba,visconti-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/toshiba,visconti-pinctrl.yaml
@@ -42,7 +42,6 @@ patternProperties:
       function:
         description:
           Function to mux.
-        $ref: /schemas/types.yaml#/definitions/string
         enum: [i2c0, i2c1, i2c2, i2c3, i2c4, i2c5, i2c6, i2c7, i2c8,
                spi0, spi1, spi2, spi3, spi4, spi5, spi6,
                uart0, uart1, uart2, uart3, pwm, pcmif_out, pcmif_in]
-- 
2.48.1


