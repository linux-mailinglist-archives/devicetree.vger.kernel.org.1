Return-Path: <devicetree+bounces-121332-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DF2C99C6767
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 03:41:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A4492284E1A
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 02:41:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86422157494;
	Wed, 13 Nov 2024 02:40:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="gE7I88bB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06405155308
	for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 02:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731465637; cv=none; b=B36uE1Wg4w/9RR/rNgdHLlPqr3RPqatFfNRcVD5IcBDhxRzJoW5Ip1Rpz8OMygp9PJVR71RQWkkgB8fCAHVO/woBRcBmrmSjz+bfgUYiPq6lgBR6l51RXLV8OhK+VyxD8013PJ/CZIrhR4FitIxIqjEZsQxoSRR7EeIjHIzMv6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731465637; c=relaxed/simple;
	bh=8lt7eykDFZw7fIigqij0E5lpK1ubBDThz9WowdmROho=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jl8ubSFDzCQ4OEPrUFlN+RGEaK27E0870sEz7ZJcMW0vYyTDlSArpeunvsEHFKToCyPAXuh6TKzsNYbNTFLYmCdWuUKqSXuVgfDkq7JLGIY2DXGGSO27MeHvZT9bGyQRJw2C7RpI8bx93u4zpbrXjB2KZ3BxU6MVtp7ANcgvg8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=gE7I88bB; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-20cb47387ceso66371325ad.1
        for <devicetree@vger.kernel.org>; Tue, 12 Nov 2024 18:40:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1731465635; x=1732070435; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Vjvrd2avQzhgqp6lHzhNNlW4+aoD1gw3mVGy/cwxKNk=;
        b=gE7I88bBD0HdWSXQlYMBNj/ZD7ByCp6yeH/JxP8Ln1zfoJL/eypAhjCrZFiO54328r
         4vH1nXWQ4THu7TS0L4dRRWqukzyIbyQU0ec1sO3NwOWjZ3tN0/DjB+qTFcd5zfMZLr2p
         L8jenlp0k50FBeqqfWRzsxGWAn3Da5F5yU6Mg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731465635; x=1732070435;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Vjvrd2avQzhgqp6lHzhNNlW4+aoD1gw3mVGy/cwxKNk=;
        b=qE8t5mou/M2YwMOZyaYqgUc0fR1ekvqnBPC1EBU9H050sZQomMtyWqViYaJdBRoo73
         5CtgTdImnCFuFxzwJA2F93XUI9NLhXs0jk95eQFtnk1odpxOtTK3rqjoatcxBEF8FCRh
         HkqdhAtcM10s9QyHEeEf3CAJ7pKk77wSYMSK/i7KX0OxD8v2BXsCWvfHebTk1MPje8pv
         ltlnbJOf8ZzYG7uhTCE8VJRf/oHcoDdbHP3YX2n6Tq8ZgAwlj2yI08LGfLrLo1/GWWkT
         iYFm7D5X21Vf6tVvTOp/PAqZWouS40oPcGtGNS89yW2gpppKGWPL+/xGVWkjr1d9Dzda
         tcsA==
X-Forwarded-Encrypted: i=1; AJvYcCXbxqIKFovodRveBCN5zuvIAH1kW+Vxfpnj3E7Y1TIbaS3yC0AEBngbuE7Cn6lK3EyF5bpxY7UY2bY/@vger.kernel.org
X-Gm-Message-State: AOJu0YxWOYTpXUT/K0rOiDs6ON3GIelkWfxJU5/tZilkjbviBDp9E8e2
	L1BhBRUbEl2n0fhsWou9+Niv9NqXGZe0G/u9MElif1tDGPULyM1CDCNgY++Ukg==
X-Google-Smtp-Source: AGHT+IHe721yXQHCRZeRjkW+n+uLrfYbkZjFfwy3XKSXli/Bjhg1eEXBQdFZlkHS9zXTLG7hxYMmCQ==
X-Received: by 2002:a17:903:1cb:b0:20c:bffe:e1e5 with SMTP id d9443c01a7336-21183521d84mr274072955ad.19.1731465635278;
        Tue, 12 Nov 2024 18:40:35 -0800 (PST)
Received: from lschyi-p920.tpe.corp.google.com ([2401:fa00:1:10:3dd4:86fa:9696:4236])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21177e418d6sm101831325ad.142.2024.11.12.18.40.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Nov 2024 18:40:34 -0800 (PST)
From: "Sung-Chi, Li" <lschyi@chromium.org>
To: 
Cc: "Sung-Chi, Li" <lschyi@chromium.org>,
	Conor Dooley <conor.dooley@microchip.com>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Benson Leung <bleung@chromium.org>,
	Guenter Roeck <groeck@chromium.org>,
	=?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <thomas@weissschuh.net>,
	Jean Delvare <jdelvare@suse.com>,
	devicetree@vger.kernel.org,
	chrome-platform@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-hwmon@vger.kernel.org
Subject: [PATCH v3 2/2] dt-bindings: mfd: Add properties for thermal sensor cells
Date: Wed, 13 Nov 2024 10:39:52 +0800
Message-ID: <20241113024000.3327161-2-lschyi@chromium.org>
X-Mailer: git-send-email 2.47.0.338.g60cca15819-goog
In-Reply-To: <20241113024000.3327161-1-lschyi@chromium.org>
References: <20241111074904.1059268-1-lschyi@chromium.org>
 <20241113024000.3327161-1-lschyi@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The cros_ec supports reading thermal values from thermal sensors
connect to it. Add the property '#thermal-sensor-cells' bindings, such
that thermal framework can recognize cros_ec as a valid thermal device.

Signed-off-by: Sung-Chi, Li <lschyi@chromium.org>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Changes in v2:
   - Add changes for DTS binding.
 Changes in v3:
   - Remove unneeded Change-Id tag in commit message.
---
 Documentation/devicetree/bindings/mfd/google,cros-ec.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
index aac8819bd00b..c7d63e3aacd2 100644
--- a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
+++ b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
@@ -96,6 +96,9 @@ properties:
   '#gpio-cells':
     const: 2
 
+  '#thermal-sensor-cells':
+    const: 1
+
   gpio-controller: true
 
   typec:
-- 
2.47.0.338.g60cca15819-goog


