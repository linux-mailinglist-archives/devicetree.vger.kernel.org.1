Return-Path: <devicetree+bounces-40217-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE7584FABC
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 18:12:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 71365B27059
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 17:12:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CDF07C0AB;
	Fri,  9 Feb 2024 17:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=smile-fr.20230601.gappssmtp.com header.i=@smile-fr.20230601.gappssmtp.com header.b="s6n60y/D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD5F6BB2F
	for <devicetree@vger.kernel.org>; Fri,  9 Feb 2024 17:11:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707498713; cv=none; b=Vp13IAbE0QNm6gMnN9OwuMBZzPvXnelqQcQNn1jfCgaIIXAP2MLGQ0h5KmoZTmYK3JYwwG5AiORl3pB8mIBXu4CYKpPshbOe8ERMnynx9XwRrRmllxR3eFrb7/kKCKB8EjhYWZghzK7rJRfLpAKinY/ZRzmrE12z29AzVdVCbmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707498713; c=relaxed/simple;
	bh=Bjsp+KZtyL8O80qh9O9Z57mm54YKxPF3W3gwM9bSRzs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=LXkeFsfXL4zkTM6t6V4EiQEkrxbZAgXdOGAc0KCzWQTkTXDMa/y5l+SZMCGZZcg6e2DojrfkS2vpxyoi5eOD0b+sXgPN2NhVlsHxYVXx9rqashrwrKm+CXRUWUDS2s6TqqtqSBuDPojNjKdbCC702xEk3G1XggS6QL/8wPoZwr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=smile.fr; spf=pass smtp.mailfrom=smile.fr; dkim=pass (2048-bit key) header.d=smile-fr.20230601.gappssmtp.com header.i=@smile-fr.20230601.gappssmtp.com header.b=s6n60y/D; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=smile.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=smile.fr
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4105876a3e5so10179265e9.3
        for <devicetree@vger.kernel.org>; Fri, 09 Feb 2024 09:11:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1707498709; x=1708103509; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ue3Hv5Tp9scHSTy47Ds5eoq01BRybMaUAWCl5QsfxDE=;
        b=s6n60y/D8uuNaQaAiVLb9KCOOovA9VhkYxVUiN7vvSjhjHAKHkI+L9xPs7incctLlQ
         /V0tHLMiorUdxlAA7sciC8Je1H1zBRUYBkjLZ41nI1GnAqCqiGWKeQTG2jN8LfCb4yDl
         0QXjT7EruTPtjfRrrojCA85mGR+p0Q+aCg0dSqZ1196nXQwngUylcJygHKqDDFXEAZue
         qrzcDFVp9/QenktIj2DoSAN/BvScQq14fTTaIMongtH1+CJJ9Qa2wRqb/snERwK/doLG
         MMbKfoPNJlmltp8e0ZjFv04PA7FKAIhkYGPx7peghIgyUNkez+OgsdzyuZ/xeoEAXNRs
         6ZqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707498709; x=1708103509;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ue3Hv5Tp9scHSTy47Ds5eoq01BRybMaUAWCl5QsfxDE=;
        b=eq7cfluVdnVKzkQTRh6MhjVb02ehJ9APLQS7nCTT3rUMIywUfOd6iBlu7D1TUkl2Uz
         BMLEIvYsF4H4U+ILM47CrAwjHkrh9tg3/bsaPfM37lpOn97KdYdUV5/75t031DAcfT7l
         gwtuAiM0+0SE/YNSNnnJ4P0C84Jntajk+3svg/0b+wv2hesHWpDcgKaRYywBHr9bTGff
         kW6IkUv8ubtQDJA5gXyi08B0yrzFaxkbo9rX4IAIN8pfeJ5gXIAlIlpGWeVNi4piZ1sG
         DnQe9b98vWZpCBkA8I3/OcWCyGHch3CO6jv/naN0B2MQvM20OZBKhTK35fdETQrbCTcN
         wn/w==
X-Gm-Message-State: AOJu0YwfpsXy0DE5x0QnLWXUuaDyDNp/ANP63+URJC0OXVev7qbsZy0s
	uKkY63c7NGolc/I+xRsg/fZ7WqUO/aUmOy7SKC/02s+EKAUO4ZZebC+CR7hOlPE=
X-Google-Smtp-Source: AGHT+IG3dN9xA5+wcmP96KwiTqU26PY7MdzhjfvXcbM2slJ41I/tBrhwgRalwRcfYEQbgIeuH0KsAw==
X-Received: by 2002:a05:600c:4f4e:b0:40f:df17:f0ce with SMTP id m14-20020a05600c4f4e00b0040fdf17f0cemr1831671wmq.28.1707498709226;
        Fri, 09 Feb 2024 09:11:49 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWnGar+cKZgWNeQ+21aAnbQeq2d4Yu8sDJR2KwQt0t2Wfq1JY6aOrqPBbuAEeCTxHBHSdNWhRKvRCRO/tQ6+//8xe9IpiwFKOfZl02woAXSjYD5u1kE4W8wrZyoSfUxYBgTZ1jHDzWEz0LnS1N+ZAXRsX6kVHUWhIu/vlFsX9X8MmKeZB3v7sBTXlfFyRLjzfUQa8S6/VoM9DzhRhAawEP4Does1m2A6wR34qifhA0LabZTvLF7+ouhkpZVgqt4/GbZlFmiPqr1nKnbLLE6uXztMdLyt0jqztuMJZ6rVr0TB11LjVwzqsnxPxodLgf1w9uxKq7azYG+xBeT8DuE
Received: from P-NTS-Evian.home (2a01cb05945b7e009bdc688723a24f31.ipv6.abo.wanadoo.fr. [2a01:cb05:945b:7e00:9bdc:6887:23a2:4f31])
        by smtp.gmail.com with ESMTPSA id a20-20020a05600c225400b004104ecb39d1sm1154711wmm.32.2024.02.09.09.11.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Feb 2024 09:11:48 -0800 (PST)
From: Romain Naour <romain.naour@smile.fr>
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	kristo@kernel.org,
	vigneshr@ti.com,
	nm@ti.com
Cc: Romain Naour <romain.naour@smile.fr>,
	Neha Malcom Francis <n-francis@ti.com>
Subject: [PATCH v2 1/2] arm64: dts: ti: k3-am69-sk: fix PMIC interrupt number
Date: Fri,  9 Feb 2024 18:11:45 +0100
Message-ID: <20240209171146.307465-1-romain.naour@smile.fr>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The tps659413 node set WKUP_GPIO0_83 (AA37) pin as input to be used as
PMIC interrupt but uses 39 (WKUP_GPIO0_39) as "interrupts" property.

Replace 39 by 83 after checking in the board schematic [1].

[1] https://www.ti.com/tool/SK-AM69

Fixes: 865a1593bf99 ("arm64: dts: ti: k3-am69-sk: Add support for TPS6594 PMIC")
Cc: Neha Malcom Francis <n-francis@ti.com>
Signed-off-by: Romain Naour <romain.naour@smile.fr>
---
 arch/arm64/boot/dts/ti/k3-am69-sk.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am69-sk.dts b/arch/arm64/boot/dts/ti/k3-am69-sk.dts
index 8da591579868..95c9d3da59d3 100644
--- a/arch/arm64/boot/dts/ti/k3-am69-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am69-sk.dts
@@ -646,7 +646,7 @@ tps659413: pmic@48 {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_irq_pins_default>;
 		interrupt-parent = <&wkup_gpio0>;
-		interrupts = <39 IRQ_TYPE_EDGE_FALLING>;
+		interrupts = <83 IRQ_TYPE_EDGE_FALLING>;
 		gpio-controller;
 		#gpio-cells = <2>;
 		ti,primary-pmic;
-- 
2.43.0


