Return-Path: <devicetree+bounces-52374-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C51E8866F4
	for <lists+devicetree@lfdr.de>; Fri, 22 Mar 2024 07:43:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B62461F22BA2
	for <lists+devicetree@lfdr.de>; Fri, 22 Mar 2024 06:43:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0188FC8FF;
	Fri, 22 Mar 2024 06:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="n3H7ZnqK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FD00199C2
	for <devicetree@vger.kernel.org>; Fri, 22 Mar 2024 06:42:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711089752; cv=none; b=UBruqfjiuf/iJlTE+QCSv1o+bNn5RTY7EVdtppm0ASlVfcbOXWUzKJfETehXA86XHKpaDrKzE4gSn/AxrwB6006qac5mzv7ybYWymJwCz/L40IqN3thxxmIFhp1n2Vwu7MFdZ/ZNkDsdKGBqXkDzLWLN2rEVoQaEVUT5EqzWzR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711089752; c=relaxed/simple;
	bh=9bdjqCAyvS7k1BS7Lhjz19NNuYfcjp2pCZWc4hg6CHY=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=HxGW4QjkCiADCRcxcfDEJJxks6uQkJZw0GFMLz9nKraXcckVOidrv2uVR3jnzMCTeaKm+et8Te5zJGXgxXt+dIZDunsOMWWfPJ9exedXDydgb6o9Ymt6nV9RTJjAqlZZEFq2i/dxzaQX27LZqBMj7jdfmm7GWdowTNL6J17pFj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=n3H7ZnqK; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-55a179f5fa1so2440933a12.0
        for <devicetree@vger.kernel.org>; Thu, 21 Mar 2024 23:42:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711089748; x=1711694548; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BmaPEfXpnyUWO4tk/lYu9wRilg7S6pQ6tbGno3QPjdk=;
        b=n3H7ZnqKKHlBSYPu7tTeNj2R3K7tdVZRPhdMA1+H1J+2f+e7QsLbbQZLgJRhIaqDva
         ZSvORsxZfDBoDTk985oitAkBzRHet+ZU9Afqssft8uwEOeg+QhjaSlmGd2q4aRgfUjdX
         5JLIImnVX8SQt6VktVR1DSpjeJDMoiD4H/reFsufUCG2efKN8rCMKhQtEqfS+Oa8II8n
         aM67M5RAjxlB7rXDZodXReKUGHATxarpSiK7WuByfmgx+ShHDVWVSfNB/OovY0NwGP4A
         RG3jsvVV8FAXdj0sQ2X6VVaZ546RpA/E3AQ05WBsZjd4J8ZsiWiOqHwEo0PFwx4XjfQG
         wgDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711089748; x=1711694548;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BmaPEfXpnyUWO4tk/lYu9wRilg7S6pQ6tbGno3QPjdk=;
        b=mRL6MLEijpLe6ZwNY1nQEXHzL3dCc+lG24MTP5am/jTAIdiWevjLDQxYzOhTdfGeye
         R/btArKh9cLFhLnpPq3izVFPZ6UrcjVusblrij/mta9/gXilmWpxRryugGlPty/HhESt
         TSqlii/LSjUY6ziMg3ydtQ6vLZrEiMVsqDdFhnGPgzbeZbmungtw7B57BB79KuV+fB99
         33/tz5GfVA98R4L0gzeRXplwYGL/c2zBlXCpw2fNrFsH/upJfcDnAsG27O+sDHNBSAcM
         64akH4o4X6yaHIB7UOVxhknnKoldHspta021bJtbGUxi5mIAzh0syGr+/AqlOMxhfS68
         J/ew==
X-Forwarded-Encrypted: i=1; AJvYcCWzU1y/4yVEdVv1xAAM8viI1L8Qwmv839EN1Af305OI2ACSlZi/5QCgMs02hYTs5CpvPOG7xOX3Q1upPMWI/bJJJFjPQYarkKjzEA==
X-Gm-Message-State: AOJu0Yw4NBfI3j2bKk8FsW9CfLgDuIMrB2d9PEYoxHGqsgzRz6nqaF/q
	WNxbNWM+eFR1QmYwHQ02fI5KNzojMzVFiXCMtUjHWWRpVyXEmWrg3O48e05Nxvo=
X-Google-Smtp-Source: AGHT+IFjCUgRktXwrv+Lvi6UwcbsFwpnpkk/JBK3O3IuUm86QVwXhrso59zXtrI/2Z72EZMRI6ku9A==
X-Received: by 2002:a50:d559:0:b0:567:a318:ac0b with SMTP id f25-20020a50d559000000b00567a318ac0bmr916782edj.16.1711089747857;
        Thu, 21 Mar 2024 23:42:27 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id p8-20020a05640243c800b0056bdc4a5cd6sm645506edc.62.2024.03.21.23.42.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Mar 2024 23:42:27 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Yoshinori Sato <ysato@users.sourceforge.jp>,
	Rich Felker <dalias@libc.org>,
	John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>,
	devicetree@vger.kernel.org,
	linux-sh@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Kousik Sanagavarapu <five231003@gmail.com>
Subject: [PATCH] sh: j2: drop incorrect SPI controller max frequency property
Date: Fri, 22 Mar 2024 07:42:21 +0100
Message-Id: <20240322064221.25776-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The J2 SPI controller bindings never allowed spi-max-frequency property
in the controller node.  Neither old spi-bus.txt bindings, nor new DT
schema allows it.  Linux driver does not parse that property from
controller node, thus drop it from DTS as incorrect hardware
description.  The SPI child device has already the same property with
the same value, so functionality should not be affected.

Cc: Kousik Sanagavarapu <five231003@gmail.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/sh/boot/dts/j2_mimas_v2.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/sh/boot/dts/j2_mimas_v2.dts b/arch/sh/boot/dts/j2_mimas_v2.dts
index fa9562f78d53..faf884f53804 100644
--- a/arch/sh/boot/dts/j2_mimas_v2.dts
+++ b/arch/sh/boot/dts/j2_mimas_v2.dts
@@ -71,8 +71,6 @@ spi0: spi@40 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 
-			spi-max-frequency = <25000000>;
-
 			reg = <0x40 0x8>;
 
 			sdcard@0 {
-- 
2.34.1


