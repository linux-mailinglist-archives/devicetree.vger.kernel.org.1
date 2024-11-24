Return-Path: <devicetree+bounces-123961-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7929E9D6D25
	for <lists+devicetree@lfdr.de>; Sun, 24 Nov 2024 09:59:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F280B16196E
	for <lists+devicetree@lfdr.de>; Sun, 24 Nov 2024 08:59:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3A0E1865EE;
	Sun, 24 Nov 2024 08:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="KvlG8RPH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51595154444
	for <devicetree@vger.kernel.org>; Sun, 24 Nov 2024 08:59:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732438762; cv=none; b=ObqDxgpn5bYmJ+YHyqV3O9Cg1K9YfxzhU9SR+IZlh3gPkpUf3Gam1sInfk6Zduyd1m0ibEcfA7EmiMG6YXjeIkFPCCQbCgihVOrCt4nBKwAXIqRykQDGTfAytJ2IYI8csVLU+TRAWUJqQHdO2qf8/Hr6bXnSkTGVvztUtmDBPKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732438762; c=relaxed/simple;
	bh=sCFf8fnkrq9R7Lkd1c3bEfaiB1jb8kVcwtp3GOGOp0E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=AVaiYjtF0vGDt5VSBhTmw2eOJ96SEtLDH5h9JUctJ0VPYzW0mYpMuMpIY8sg0hCs4+bgRsk1IhFTdLgE8adclZ/GU1MJQeKv6vv/DCPkWHwHm3PCPC0YjGTlsbUNUnKHW51c48QTPHVm5UmvadbjsWj7qIU63raHBj7ZZ9COjsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=KvlG8RPH; arc=none smtp.client-ip=209.85.215.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-7ea8de14848so2633721a12.2
        for <devicetree@vger.kernel.org>; Sun, 24 Nov 2024 00:59:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1732438760; x=1733043560; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I/IvUBcoipMDIe3/pYAHB/bcuEx/FUoQvLyB3GzlNVU=;
        b=KvlG8RPHN52xSXzJsiGpx9zW0hp+vqwzv5F9gojh8aNSHaeD3o8kmpukhAcW+37ovC
         W0RPEYAHvuFR6sKeJwUEL9tFYjfqwAu1yWTHppR12MefFzaQNvE+Igm/5relp38Kd1yV
         HkpxPL72DE7TMgXjBCYK/duN1r0OoH/RN3Ngs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732438760; x=1733043560;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I/IvUBcoipMDIe3/pYAHB/bcuEx/FUoQvLyB3GzlNVU=;
        b=KrroEab5apR+0yn8/fkOa5jBE3hjzMnfPZ4dsY2SuwgtlYH1XU2B2XlgSMzFQkoikO
         fMIsnwPxGyp58OkopsVW679OEKho9/4O3OHNkQ3KwHlS44m3E+lk5FflU3mu0f7MJXzg
         ZE2p+TGHkZ9dLJv7uK1cK4Wxlwoi6Pxw+5iis9qEx2lVNMyboG/2v/1bJsOW2oORw9Xq
         0oHj3p3nqlLPfcAQB2o9eWT+74I2IDi8TOJA8hfCmiK6Fz0xWKsv22wD8qOiWDOgjSHK
         jXuSuCD/kVXpeoWdgeLPHyy58XZwZV8Nf1hmuiA4IJT97VIdpnfiEOPs20TeIspjc6Ak
         hYBg==
X-Forwarded-Encrypted: i=1; AJvYcCVp+mhhoI9qFpzZ3iB3WKzf9IwDQ6trzkGT0uWDZjQVF+wcdjY8E8YtWx9jiQ2rcSqn2u5ZVq3K0cMo@vger.kernel.org
X-Gm-Message-State: AOJu0YwhD8O9GwGDXbR8WY/uYach2Tu3QDnuRUucRlIkuBGWRGV7TqU9
	Q7O0oi0ySj7DgRXlsn3U2d1eMQIkMKbCE6D+fTQdb0BR6cVSwIwEM4aq0kAtBg==
X-Gm-Gg: ASbGncuC1KMT7UHT38Meqh6INe7GV8bf4SK+TrtnklszMF7TZE5d5wygeCB7SiRY3d3
	9kKc6Be+8i8KR2xOlNzDvujL9CvUyGRFqxtqjyYSdjDPrh7x3Iej1EZomZM0HB/ehKZoV9sXmKe
	zpqFYvutIDBMmeIHniJIeMjA9qGgOpptZmBnph91rmWX19Rr4lnxGiSi4FWi7vcqu7XH902fJfS
	veiKSzqZQ/M+ZQVb/OEbNDnDiQtzyf+8V+fhE2u31STlmh7ZNKKXN6U7gpZgUB5l8fruA==
X-Google-Smtp-Source: AGHT+IHfzR8ObvybrfM7pUctOZmJy+v/RQYyVAaGYmK6XbUOyVSBD4McBx6obvZbzN9dxMWFrAHZVg==
X-Received: by 2002:a05:6a20:9155:b0:1db:d932:ddcc with SMTP id adf61e73a8af0-1e09e452055mr9437889637.19.1732438760553;
        Sun, 24 Nov 2024 00:59:20 -0800 (PST)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:f699:9cb9:f928:9a14])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7fbcbfc4c28sm4465890a12.3.2024.11.24.00.59.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Nov 2024 00:59:20 -0800 (PST)
From: Fei Shao <fshao@chromium.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>
Cc: Fei Shao <fshao@chromium.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v3 1/2] dt-bindings: arm: mediatek: Add MT8188 Lenovo Chromebook Duet (11", 9)
Date: Sun, 24 Nov 2024 16:52:37 +0800
Message-ID: <20241124085739.290556-2-fshao@chromium.org>
X-Mailer: git-send-email 2.47.0.371.ga323438b13-goog
In-Reply-To: <20241124085739.290556-1-fshao@chromium.org>
References: <20241124085739.290556-1-fshao@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add entries for the MT8188-based Chromebook "Ciri", also known as
Lenovo Chromebook Duet (11", 9).

This device features a detachable design with touchscreen, detachable
keyboard and USI 2.0 Stylus support, and has 8 SKUs to accommodate the
combinations of second-source components.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Fei Shao <fshao@chromium.org>
---

(no changes since v1)

 Documentation/devicetree/bindings/arm/mediatek.yaml | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 1d4bb50fcd8d..4b68f0baf010 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -307,6 +307,19 @@ properties:
           - enum:
               - mediatek,mt8186-evb
           - const: mediatek,mt8186
+      - description: Google Ciri (Lenovo Chromebook Duet (11", 9))
+        items:
+          - enum:
+              - google,ciri-sku0
+              - google,ciri-sku1
+              - google,ciri-sku2
+              - google,ciri-sku3
+              - google,ciri-sku4
+              - google,ciri-sku5
+              - google,ciri-sku6
+              - google,ciri-sku7
+          - const: google,ciri
+          - const: mediatek,mt8188
       - items:
           - enum:
               - mediatek,mt8188-evb
-- 
2.47.0.371.ga323438b13-goog


