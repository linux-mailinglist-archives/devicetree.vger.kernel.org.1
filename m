Return-Path: <devicetree+bounces-34069-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F59838926
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 09:37:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BA0471C25179
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 08:36:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6177659B7A;
	Tue, 23 Jan 2024 08:35:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GR4tLhjo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8EF359B57
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 08:35:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705998911; cv=none; b=a+lZdi5dbXvmofeskI7AnwYFOnEKI3hPNAwEuv4XcLuMOPS/ckD+d4Dr1QU4xOERPnvhs4jlVxVLJT+rvGpgbfLVGcc/r/KRu39fCnCt7k5i2UyRgv5KUje558ixDCGzuZK9dR2Jm6s0bI3+erC/C5dHIbAh4uEockvO939XZ7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705998911; c=relaxed/simple;
	bh=DZbbg9fc8tIY6L+loVofMvAfnbeqAQK9ZlfBzcnZ0jI=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=FCQvjp8agQYso5o9TLvZiG1NyB1eimI9fuxFqj+GQJ1oabeNB8GaWF7oZdzP+j9W3ff7KybwsAHang90z2elygxyP4xJgiRneZTXGa9byv6LOG1Gphlp9IcCCHKk6pO6Wc95Ufz0/i9Ty7YW1H/892X9zfQDVZoNxshzp5IT8qI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GR4tLhjo; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-336c9acec03so3537064f8f.2
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 00:35:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705998908; x=1706603708; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/QjaGhFynx3OiMJAeNynrRZeB0XStseOjfzkj/KuMDk=;
        b=GR4tLhjofQnKtqRJU/oqGg+hV469Nqys5MQQ0D1SPf9ihRcJMfOJO3gvsSRWDxhj8f
         4Efw8Cw9PGAqp0YELUAEVh3SNPqirs0GEaqYeIUpeQtFGWZTtvxoDSi2aEsrthGn8IjW
         kJGBvZMnoJeZkBBMTz+gnteNNdT83IzEoBDS5aER9wYHv56Ni6K05ZvD+D7aDplVE26i
         /Cr7iCqOu5xlyxuWnDpAzJhX9F4el+PP5BUFWtrze5cSdYxqWBTdDt22X9lZsWM8nenW
         +NfnsRyI3jBKhcEeCX4SHczFtuJEp9t1dELo8Vd4w0LyqQ3YHAshz7lFiL3l8pkvCQTe
         CgFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705998908; x=1706603708;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/QjaGhFynx3OiMJAeNynrRZeB0XStseOjfzkj/KuMDk=;
        b=giKVVQWQRzhLJRENuIkw7O6mhGtRtSuVRaXgFP9S2qL2m/RT7MqC4tSv4piXOXyUiZ
         x3w5gxmBlh+zVVB527vgCQmX1zGbl7JTjZUDrqqaa47Vif8ziSaPKXZGeQR53OxoQ/5f
         toydJrJVVV/eyGbD2k5kQ56HyM3P+jmXKfe6ttq33zvqVq+i/MtH/5OvXerEZ8eS3pJV
         K5T10c282NwWEmFgwfXXXXsNLWHbfQtQfX1H9IWdEbuwg3vDPdObYLGufPcpUBpsVMON
         aUivlGuMin8tTiVt6i07Tx2WKJpUgUlGp0qIXZ1DHKUQawsMoK9f7y1szpgyRoSd3rfa
         DnVw==
X-Gm-Message-State: AOJu0Yxhq5uepltgD3iCz+5wrb6gDp3C4OtrdDFsfBXfLcN+nH/L57L1
	cn+8oGANlLISQksnfl/eIEn4agcqes2Y4R6ji88Cc+ExiZ+W7Kj3nGIIEgc7BpM=
X-Google-Smtp-Source: AGHT+IHsQ/BwTzppVWU2bmvX+sEXQXhfeltua0zOuRy3ttSc8+mgMhgLWY9Buv8z1Ew4rWkOP+Dnqw==
X-Received: by 2002:a05:6000:402c:b0:339:358b:b84b with SMTP id cp44-20020a056000402c00b00339358bb84bmr2342507wrb.16.1705998908142;
        Tue, 23 Jan 2024 00:35:08 -0800 (PST)
Received: from krzk-bin.. ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id h2-20020a5d5042000000b00337d941604bsm11506193wrt.98.2024.01.23.00.35.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 00:35:07 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Li Yang <leoyang.li@nxp.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	linuxppc-dev@lists.ozlabs.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: soc: fsl: narrow regex for unit address to hex numbers
Date: Tue, 23 Jan 2024 09:35:05 +0100
Message-Id: <20240123083505.21029-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Regular expression used to match the unit address part should not allow
non-hex numbers.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/soc/fsl/fsl,layerscape-dcfg.yaml        | 2 +-
 .../devicetree/bindings/soc/fsl/fsl,layerscape-scfg.yaml        | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/fsl/fsl,layerscape-dcfg.yaml b/Documentation/devicetree/bindings/soc/fsl/fsl,layerscape-dcfg.yaml
index 397f75909b20..ce1a6505eb51 100644
--- a/Documentation/devicetree/bindings/soc/fsl/fsl,layerscape-dcfg.yaml
+++ b/Documentation/devicetree/bindings/soc/fsl/fsl,layerscape-dcfg.yaml
@@ -51,7 +51,7 @@ properties:
   ranges: true
 
 patternProperties:
-  "^clock-controller@[0-9a-z]+$":
+  "^clock-controller@[0-9a-f]+$":
     $ref: /schemas/clock/fsl,flexspi-clock.yaml#
 
 required:
diff --git a/Documentation/devicetree/bindings/soc/fsl/fsl,layerscape-scfg.yaml b/Documentation/devicetree/bindings/soc/fsl/fsl,layerscape-scfg.yaml
index 8d088b5fe823..a6a511b00a12 100644
--- a/Documentation/devicetree/bindings/soc/fsl/fsl,layerscape-scfg.yaml
+++ b/Documentation/devicetree/bindings/soc/fsl/fsl,layerscape-scfg.yaml
@@ -41,7 +41,7 @@ properties:
   ranges: true
 
 patternProperties:
-  "^interrupt-controller@[a-z0-9]+$":
+  "^interrupt-controller@[a-f0-9]+$":
     $ref: /schemas/interrupt-controller/fsl,ls-extirq.yaml#
 
 required:
-- 
2.34.1


