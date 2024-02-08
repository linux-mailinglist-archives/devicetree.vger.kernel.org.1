Return-Path: <devicetree+bounces-39667-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EEA784DEB9
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 11:53:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D0A321F21F89
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 10:53:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28B476EB44;
	Thu,  8 Feb 2024 10:51:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="w0/F5a7T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5EBB6EB51
	for <devicetree@vger.kernel.org>; Thu,  8 Feb 2024 10:51:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707389489; cv=none; b=rOoyZVmQM+Dn4X/cXcE0mH7TBNT5iz0fW+R28lLnHoCwQdLp2oen1pOryord3fnsSPSstdMpzP604oaKLoERYqrHNAgKqt5PW8mbIq/XEOyJqpZchtCNHwcOLolXGjP7ePW/68MaJ2wA7+FOr4d/GiavfF91pIEuKg7w7NN2Dto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707389489; c=relaxed/simple;
	bh=Emv88gdDG9pxYGUfTBsBEdEI0xWLZ5BnAsMkMUFkpJE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=pwyrBkJ9o3j++n59SEDOGeS1YtVcNRAdd9nZPks0pKFQt+phvcKAgzGQhnjmIgD1dcl0muAvTrjhah47++JJ2E1vqyi7H9xQqFnu2/72Kn/jR7sc81cwqt5TVidRk4zxvfhQ7lO9xIYSM1AH18nmOaH/mHJhRCKRFcujAUhkz8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=w0/F5a7T; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-410489e1a63so1241385e9.3
        for <devicetree@vger.kernel.org>; Thu, 08 Feb 2024 02:51:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707389485; x=1707994285; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HNZpB/EZ4NWTASPOpVzKWYUje+5cX+UaG3ufU3H/M78=;
        b=w0/F5a7TbKesblU+ree8wYDdzBzxvEw1iuv4lGfzoRHBucwhqMv94I2PG3uuBX0q2g
         8EMv8xjG8FJRsV/8tEWuCgee5g0Bgg/dx5x+TUxgeDM4wE3OzeY5YlSSY9omZOoNRdyL
         bI6Ev/VBNfN7Qdmt8R6jbibBbSXQ0nn0TJU7t/MEcEP6QAJawAkfxWYvm25InbHTgTAh
         1ebSB7esvkxAF50aa7ysxxUSpCL4Nu/WjGjoBS2DKH+y4W1KPGBGoE3P+aNghB6WOlmY
         jJd2AWXD39T9ejQBXQf61gHHcj5iaquvjgx+qM5mHLp5JpA6kZjqAFdla9RiY5lenwYa
         2TfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707389485; x=1707994285;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HNZpB/EZ4NWTASPOpVzKWYUje+5cX+UaG3ufU3H/M78=;
        b=BlfYBuZYVkWUSrwO6lCrQO5PvgMfZDUnhd5SOfmYC1EpK9A0u0pKh1V8PDjVWPaOHu
         fmKogEQfibSRM03cLQ5iV0lQYPbfV3vj7QPhMAY4R9uTlp2w6ftQP4QfhNTPx7+cXbzK
         7Q3DbrtKGiQPzKk6daGvViffPW2G6KvRZkzWeV90VeGY+gjOrjAoBsWw541hCUEV6ss/
         +StwJZNcldzBFu+ZtmDeSIyRZ+7p3N5z9OlITxdlmHRAcgba6Yly7LlMFwngRww8wivp
         RQ/kCAMMmy6qaONV2DEowNey0yAytgIiCmJxtPZxBdypVfUJ7U2WhHsRO4TaOsefZfbO
         gz/A==
X-Gm-Message-State: AOJu0Yww/OTq4TGS2bD08GNxRGOhmZ6pM7+Jneqr8IYcLdTnvjS9BViT
	2jNfXfws/apDnJaCdWPJ7uU7WmqZ83h7JSv3SFJNB2TWVcouWaXp5f6byWeG9/U=
X-Google-Smtp-Source: AGHT+IG/kpPi0hDLahtJf6Zl7iOAtwtOFLT5HQAwO/GC4rKQbHaL0ZIM+cfHVjTakOaZqbnsfVy1nw==
X-Received: by 2002:adf:b196:0:b0:33b:58dd:84c5 with SMTP id q22-20020adfb196000000b0033b58dd84c5mr941338wra.53.1707389485245;
        Thu, 08 Feb 2024 02:51:25 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVnciD60jji026n5unEXbnYRO2wX370lNj1yfb2eMmvYIkCLxGw+Fw70zuIAxqIwi24cZ1WAdRcI7uIY0UxF7OLxdCTQdWQtrcshhfQrCT1hh+T3i+WDxBHinbKaRqXDMgMGpwYRQ4rHj2cilTvoZ4nefbgo/ukzC83fTvCo2JKjvh85F+QXLcmoX8GVVG+2QegkzmYrt4O85p/0e7O3eV2HeYKqR6u6100FEaASTf370aYyyLBUSyo40zeNg5nzIwTUg==
Received: from krzk-bin.. ([178.197.222.62])
        by smtp.gmail.com with ESMTPSA id g15-20020a056000118f00b0033af5716a7fsm3328649wrx.61.2024.02.08.02.51.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Feb 2024 02:51:24 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Huacai Chen <chenhuacai@kernel.org>,
	WANG Xuerui <kernel@xen0n.name>,
	devicetree@vger.kernel.org,
	loongarch@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] LoongArch: dts: minor whitespace cleanup
Date: Thu,  8 Feb 2024 11:51:21 +0100
Message-Id: <20240208105121.128521-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The DTS code coding style expects exactly one space before '{'
character.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/loongarch/boot/dts/loongson-2k0500-ref.dts | 2 +-
 arch/loongarch/boot/dts/loongson-2k1000-ref.dts | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/loongarch/boot/dts/loongson-2k0500-ref.dts b/arch/loongarch/boot/dts/loongson-2k0500-ref.dts
index b38071a4d0b0..8aefb0c12672 100644
--- a/arch/loongarch/boot/dts/loongson-2k0500-ref.dts
+++ b/arch/loongarch/boot/dts/loongson-2k0500-ref.dts
@@ -60,7 +60,7 @@ &i2c0 {
 
 	#address-cells = <1>;
 	#size-cells = <0>;
-	eeprom@57{
+	eeprom@57 {
 		compatible = "atmel,24c16";
 		reg = <0x57>;
 		pagesize = <16>;
diff --git a/arch/loongarch/boot/dts/loongson-2k1000-ref.dts b/arch/loongarch/boot/dts/loongson-2k1000-ref.dts
index 132a2d1ea8bc..ed4d32434041 100644
--- a/arch/loongarch/boot/dts/loongson-2k1000-ref.dts
+++ b/arch/loongarch/boot/dts/loongson-2k1000-ref.dts
@@ -78,7 +78,7 @@ &i2c2 {
 
 	#address-cells = <1>;
 	#size-cells = <0>;
-	eeprom@57{
+	eeprom@57 {
 		compatible = "atmel,24c16";
 		reg = <0x57>;
 		pagesize = <16>;
-- 
2.34.1


