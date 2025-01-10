Return-Path: <devicetree+bounces-137461-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F383A09159
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 14:01:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6CA1A1882254
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 13:01:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E18C20E32D;
	Fri, 10 Jan 2025 13:00:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="HMf6eD4n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351EE20D4FD
	for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 13:00:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736514041; cv=none; b=c1K4ZUJuqkMvKOrbtpRBvvZDGjmlJzydUg4b2vTsdRq6bMaJ+q43rSNVWZHHVdbyQ5xNEssE3mte4qLJKEIRqIoGfLtbId/plkxRpSHTBTbTMqMlFM9AK9N4oNc4nFDqG8Gc62U0kvTplw8K9De/DN1lXxvrXGPO0lx6fD59r5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736514041; c=relaxed/simple;
	bh=NI94rkazrHFiOl0XdQvbczTPb0hren50HBQrX3tChuU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MAz/Sf48CeRyRYGMFJ1n5AOznf2x5gHKZ9iz9J7wOFhp7AcNFQf/cppw4sDdiSkHsT+jB/SAc3bHxYgzDUicQifYOfdAaU/UgmQgCSpm6+y0SINipTlBAMPIf0f/CQMf5HWNKh7U7ddp9fjDjURxH1MZNabF94HU6Hkvgpxehf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=HMf6eD4n; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-385ddcfc97bso1763140f8f.1
        for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 05:00:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1736514036; x=1737118836; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mDCD62Pui8+0UkwiGsBc4nPgO3uBLewidrJs9+oBlXo=;
        b=HMf6eD4nprPWZDSj/opVtLIXWW5ofyOxBAYyqTKnMk1F+Vst0jl8y12ArINzO/pnXg
         GAaq0PwPoRa/8XjJKI0w4sOOTb7oj48k7v7IRcxUY616vwTmFRC7bW6rUy5axKRFE5qj
         vYSlFVTtBTLVEDBSTpFBb4Zwqa63MAocDhx2/lhMw3QbLgfiY2PDSAqWs/ujsnNUi2ej
         qDNYPs7hBUenHY6GjXTpgpRBi9QJdjnp66k2UdIgFtZafdmZET8ZsWR+fjzhCd0C6yFv
         YaG70R+2zmv2c48J9Thpf92xUiKMQAKg5SHP+ZVmaxpPxcUWSMbEwKgnu7D18mMFFxjX
         C31w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736514036; x=1737118836;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mDCD62Pui8+0UkwiGsBc4nPgO3uBLewidrJs9+oBlXo=;
        b=CWEv3uvg/Wr+M7z9nr+vXphbAoIoe28JI/IWmTsgZqvi++4ZSa4fdbke4Hk2V2EoLC
         nQPtjhmm7sfj+8Q9m5C1XS6uIhyFNQMy6nl9NKrtmFUGqaV3H2EcuD/y+m24l4dMhzDU
         bOuaDy+ls0ca5awDb21Wt9OEfobDygkccnNKaYSjeY3xfdggfOPmdIy2XRqLWJiadbUt
         taVEU7a0IhparukI97AAWO92+WLrG9n1h+2s4UmZOnp/tgpHRLHK5tVHeNeTVwvqtIDS
         c9p2Mv/zKMPUfXt7IxTLQV1oVPzzi+0mADW9PhGwGTfg8+WlBm0fvI+RVaMsNR1/Ts1A
         sNnw==
X-Forwarded-Encrypted: i=1; AJvYcCUF3CZGJFuLJWA8k0P3usZdO5ZPPDUsBQbr1zIIWSPl/0Gop04zJUadZn96SJ4vXWuK8atHjI/ZZgPe@vger.kernel.org
X-Gm-Message-State: AOJu0YwxndOSZOGQX1YWoAEga+vpX+I6NvczfeNRXOdZBANaJU5X+1Jj
	MNEzVaG0mwteQzelr799XoMEW/B8CPQptsIQuCKd+wg5kYQDcDLi/CHpOmHkxoQ=
X-Gm-Gg: ASbGncsVntCdVIbpJ5cjrBg/3xaPYpAWtzbhmS4asLMiV3mrwuDx10xsxRoF5CjIWf6
	qDVnHL5drf+whHDTBPahVcgC3wLH9u+nGxcSTvPTK/f7onKSGJ0UDcKNk5ATkc+7kmZER70+zKe
	jPhiEoGYyNWxIAUM7f9I8IFIzgfuongj9kOaT4J8mtuM+I2FO73aaBT7K7RiypMiysFd8q5Uilq
	blGfKusQ3PWOb2tI6Pbn6hBRlOZ+gNRIAAI4LH8AMQIH2IvsB5Zygw=
X-Google-Smtp-Source: AGHT+IG/Z301PbNUmfwGgNeewmZnvFfB+D5Qh8Yoe/mPcCOg5S5xly8CpbeGJdRKhVQh5rwbALv9ZA==
X-Received: by 2002:a5d:598d:0:b0:38a:624b:e7fe with SMTP id ffacd0b85a97d-38a872d121bmr9293319f8f.7.1736514036429;
        Fri, 10 Jan 2025 05:00:36 -0800 (PST)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:5581:e96f:97e:b3a7])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436e9e37c2esm51360745e9.28.2025.01.10.05.00.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jan 2025 05:00:35 -0800 (PST)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Ripard <mripard@kernel.org>,
	=?UTF-8?q?J=20=2E=20Neusch=C3=A4fer?= <j.ne@posteo.net>,
	=?UTF-8?q?Cs=C3=B3k=C3=A1s=20Bence?= <csokas.bence@prolan.hu>,
	"Geert Uytterhoeven via gmail . com" <geert@linux-m68k.org>
Cc: linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH 2/2] dt-bindings: gpio: fairchild,74hc595: use a fallback for Semi MC74HC595A
Date: Fri, 10 Jan 2025 14:00:25 +0100
Message-ID: <20250110130025.55004-3-brgl@bgdev.pl>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250110130025.55004-1-brgl@bgdev.pl>
References: <20250110130025.55004-1-brgl@bgdev.pl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

This model is 1:1 compatible with fairchild,74hc595 so use the latter as
a fallback instead of adding a new stand-alone compatible.

Fixes: 0ba6cec7acbb ("dt-bindings: gpio: fairchild,74hc595: Add On Semi MC74HC595A compat")
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 .../devicetree/bindings/gpio/fairchild,74hc595.yaml    | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/gpio/fairchild,74hc595.yaml b/Documentation/devicetree/bindings/gpio/fairchild,74hc595.yaml
index a209c5b4f6e0..da462dddb140 100644
--- a/Documentation/devicetree/bindings/gpio/fairchild,74hc595.yaml
+++ b/Documentation/devicetree/bindings/gpio/fairchild,74hc595.yaml
@@ -28,10 +28,12 @@ maintainers:
 
 properties:
   compatible:
-    enum:
-      - fairchild,74hc595
-      - nxp,74lvc594
-      - onnn,74hc595a
+    oneOf:
+      - const: fairchild,74hc595
+      - const: nxp,74lvc594
+      - items:
+          - const: onnn,74hc595a
+          - const: fairchild,74hc595
 
   reg:
     maxItems: 1
-- 
2.45.2


