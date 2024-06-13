Return-Path: <devicetree+bounces-75433-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A02B90739D
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 15:26:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AC570B21982
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 13:26:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF211145B18;
	Thu, 13 Jun 2024 13:24:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="dVtQKdED"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02DA7144D22
	for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 13:24:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718285060; cv=none; b=IVDBza9oR0/j3jcQZlx+i0gBRysx6i+t7u2hp/DC3ltkMtSMiYcMiPzZgByJfNRSXwau15hctX4pd77qiCcErh4DEGm84w2z+xwpVOGr4wIxzexFv6JidgTU704zYQS6C6B9gbejPbliEebRG4yKfUk71Ad9rDSvgRK43P4F+3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718285060; c=relaxed/simple;
	bh=rnldv7833XODCkkhE2IoJHX1ijFNhpuCcMgGUEpMC7w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lASxMnaDzwu5MXHdDSjmo42URfonESlKKI4Sh99kdZEftQrKgQHbpZHTlatcUu1yWtERX5o/nMpv2N6+EUALIFrvJ67AThkXevJtxIJ6WSLzK9OLo8j+xE6FyphM/0ahOzWbhvxv/c5ONb9a6aG7yQJY6gXtOWlJFj8ZifM0/2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=dVtQKdED; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-421757d217aso11819385e9.3
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 06:24:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1718285056; x=1718889856; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SJ3mx1HRwERqoH8XmiCBcC2qPne8ED2LI938/bq1eLA=;
        b=dVtQKdEDmWJhRc5J5qjUfL8DaZXdrdqZeBSpMsQcgTx7OhEmPo/A/H3GERSIrzUhf/
         NvmUs54kkXt7kLERWqk0cpe1owPb92fIwOzjwe9UmIvo26vaqB5Zb4lzPA7ymOLsW8MF
         Fku+erMegf/wSDFxSV1YfbHgtvGOlwxVIziNuwNrkyvtfdeh/pPBL3OQLGBpo0ITpOdT
         0JBJqfrWrUixz8Yhuj7X22XXxL4PXu2e7PC+pFl/J5Mpk4yLdGdTddFAmDFshUq2iwQm
         tDvREFDxXWywgDSYN3g716Ty8pdbe3ms24foPqM+bXE17693EmOsBJTShs2T07q1S7Au
         z2FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718285056; x=1718889856;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SJ3mx1HRwERqoH8XmiCBcC2qPne8ED2LI938/bq1eLA=;
        b=WX+YDLrjDfFubT1wPCcaO8Y9XXxRSVfUZwVmCDdtg18ANWtsTBHlCLM4d0HiY9WRAm
         dl+Yj/1rIuCh8PNl5L8Phk/1oANrIQBLmFivbF3K7D+SgdU0L6w72b8CuAT0XHmXixOC
         eOyIdPFchebtxZvzVkqAnXCocv9gg8BT7rXo3Y9bFBSsUxNNxTtjsyQLqv/PpOzBqn5U
         vsVysZdwlXRmNmOiOOrCQjddL7sd3CrgP+AjC7mJrx7CZkmMkK5OnAwkpA3DZId5QbZ7
         VFGNJutnhikgUFutauTiHaUJgjRBjVovjG0aYqY32cM/DpMsUXvirwHnkUxiQkXtgr5M
         Jj3Q==
X-Forwarded-Encrypted: i=1; AJvYcCXXiDT8CXo2qNyfsM+C1aK3ygbLMNy7yv5XYRmDLKyDTC9lE+2WNEwwWqQlMOx79Z6BTVmz6KX10aeHWgC24VD42uYp2aN72vNlaA==
X-Gm-Message-State: AOJu0YzfJWufedeqw9YdwmvZSVb76ahXoxWDE1074IDqV5X4ufwCAiPf
	zgHvWBgv812pkam9JCRBhuzIVgLryu9syrLdcTP1ydEZqgsIhPNlsSawlrEyKL4=
X-Google-Smtp-Source: AGHT+IEJg/QKxM4h1Il+pvifbmJ54eJISJ780cLTsOHK41otmROyNxfcRHscGOFu/oRAa2gn49Gm7g==
X-Received: by 2002:a05:600c:3d99:b0:421:dd8c:35a3 with SMTP id 5b1f17b1804b1-422866c2561mr59775105e9.26.1718285056346;
        Thu, 13 Jun 2024 06:24:16 -0700 (PDT)
Received: from blaptop.baylibre (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-422f5f33c6esm25086225e9.4.2024.06.13.06.24.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jun 2024 06:24:15 -0700 (PDT)
From: Alexandre Bailon <abailon@baylibre.com>
To: rafael@kernel.org,
	daniel.lezcano@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: rui.zhang@intel.com,
	lukasz.luba@arm.com,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Alexandre Bailon <abailon@baylibre.com>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v4 1/4] dt-bindings: thermal: Restore the thermal-sensors property
Date: Thu, 13 Jun 2024 15:24:07 +0200
Message-ID: <20240613132410.161663-2-abailon@baylibre.com>
X-Mailer: git-send-email 2.44.1
In-Reply-To: <20240613132410.161663-1-abailon@baylibre.com>
References: <20240613132410.161663-1-abailon@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

thermal-sensors was defined in thermal.txt but when the yaml binding
has been defined, its definition has changed, dropping support of multi
sensors.
Since we are adding support of multi sensors, use the original definition
for thermal-sensors property.

Signed-off-by: Alexandre Bailon <abailon@baylibre.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/thermal/thermal-zones.yaml | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/thermal/thermal-zones.yaml b/Documentation/devicetree/bindings/thermal/thermal-zones.yaml
index 68398e7e8655..fa7a72e2ba44 100644
--- a/Documentation/devicetree/bindings/thermal/thermal-zones.yaml
+++ b/Documentation/devicetree/bindings/thermal/thermal-zones.yaml
@@ -93,10 +93,9 @@ patternProperties:
 
       thermal-sensors:
         $ref: /schemas/types.yaml#/definitions/phandle-array
-        maxItems: 1
         description:
-          The thermal sensor phandle and sensor specifier used to monitor this
-          thermal zone.
+          A list of thermal sensor phandles and sensor specifier
+          used while monitoring the thermal zone.
 
       coefficients:
         $ref: /schemas/types.yaml#/definitions/uint32-array
-- 
2.44.1


