Return-Path: <devicetree+bounces-67755-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EAFB8C9971
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2024 09:41:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AC6C51F211F6
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2024 07:41:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EA891BDCF;
	Mon, 20 May 2024 07:41:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PopMMAVy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80E8C1B7E9
	for <devicetree@vger.kernel.org>; Mon, 20 May 2024 07:41:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716190888; cv=none; b=avaSEJYIsXx1ujPjESxsLBAtxCKXuS1iT5dGXzCtRbvV2msRPFmK8RN6hrFinmH04BIlFJWzKqrV/cr1/iI0nEC5ddCZNaNungEi655zU5FqlxoSpyaktfHaOYbmi4v4L0ACmOrS8529t9XnN9F0zNkRo5j/1I4QaCo8pNaHfKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716190888; c=relaxed/simple;
	bh=plzvp7rNugX3K6ANyXjr92sRX1YWIuJEC3UHm68SOb0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=qDoaFHpLry7XEamf9YxEP31sS9pryFBosoeU0GPUwwX4MxNDPaaiShBxUXE/zvWw15xfgLfCoa+NWMr6GJDRakAc6lrffhkyGDOGYSdh6FodqkbqctH/SstlmpA7EC/E/F3X7b0d/udK54DiX980V6wq5BoSsJYEUZqdFLOOVw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PopMMAVy; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a59c0a6415fso728134166b.1
        for <devicetree@vger.kernel.org>; Mon, 20 May 2024 00:41:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716190883; x=1716795683; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9y2+R5Z+lMlXgJtdu7Zc9o7DnmU5CSj/l6XtGSHRsxY=;
        b=PopMMAVyZIXgyz5xm/mDb3uJeyXYybjA4txKywJB7MaIZDlwvt7R53tzFR5qZhuvQX
         NdiJpoD7UM7DFTu3sZNoEd7g3/hJUOoBD/HCx0wHV0T/O0egtl24CAk9byQPvzE+L3+6
         cxtmsXoBqQDGLveolFYZvOiLDVFCrmD2Ez+QgeqjMIn5KOUEcwXX4oxoU2wj7wdvCOwE
         03GkKcafd5pk9pfKTXZr01s12MqW7gUzznAlv2M1npuZ4XtDaa0fHpsETS3CNEiDlGtj
         PZoJFRCbLhPqwV5bxfXULmt7bz9yLs/eiFbxKg6RWn+djnKBSLGfGf80eGBcJ+/p5RLZ
         nS/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716190883; x=1716795683;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9y2+R5Z+lMlXgJtdu7Zc9o7DnmU5CSj/l6XtGSHRsxY=;
        b=GGJyAwHpQHaxvjQreZMZxt/vQ7BSm39SE9IWFHc6ptY9ETZBgx5375EyJX09qqpfbb
         J+VuzasViVZwvz2XuS3kSD3udtZ90tdc7BvPh6PTJOlmJKjF/n0dOQ7PQW9JyRknQAG6
         nt4If/hJKS5DzL6RvKR1BMXqnb5YjryvE4tvi/elewjLPpjrMq+h+39R24sEC8efY3CH
         ax01XG1K8RFHL6veuZp3b+dZMvsUUYnt5B220njokwEdqOd2jr79+reA5H4mt4y2xTGw
         mT4S3EyKmBku99u8yIcxSwPBib2b5E4jvBljon836rHNGasEya0fLBBPsUN4IS+xz2bf
         s/lw==
X-Forwarded-Encrypted: i=1; AJvYcCU8WFFfgBplDBJSso1N21oHyY4N9/BhTisEYrA7RyhrGbKcuN7L/VpFsmgbViJFfyd4q3z3t5hY5P4h+wvcrCepMIrJWWdaAl0JmQ==
X-Gm-Message-State: AOJu0Yz4x3yiv0uAx1dMuMj3jqzw8kgiwh/4bdJ4xMQMw4LK2RzYWuRR
	2k2BdGGpBIYa8Vyi4T6mo4yI1Uzjd9f0+SLIrpc4as0kF/J60CkSke4g95qlyBOw1XAlka2KXfy
	c
X-Google-Smtp-Source: AGHT+IH9haA9iR4YwoKX0PzjzpCIy5yTTINDqwVFObjzHq50kZ9iLXtPJQM9TPGv9QNsFnHhLLi5EQ==
X-Received: by 2002:a17:906:6a02:b0:a5a:7c7e:a0d3 with SMTP id a640c23a62f3a-a5a7c7ea16fmr1445195766b.44.1716190883404;
        Mon, 20 May 2024 00:41:23 -0700 (PDT)
Received: from krzk-bin.. ([178.197.206.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a893a91b9sm754853166b.7.2024.05.20.00.41.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 May 2024 00:41:22 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>,
	arm@kernel.org,
	soc@kernel.org,
	Antoine Tenart <atenart@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Tony Lindgren <tony@atomide.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-omap@vger.kernel.org
Cc: Bartosz Golaszewski <brgl@bgdev.pl>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] =?UTF-8?q?ti:=20omap:=20MAINTAINERS:=20move=20Beno?= =?UTF-8?q?=C3=AEt=20Cousson=20to=20CREDITS?=
Date: Mon, 20 May 2024 09:40:12 +0200
Message-ID: <20240520074013.9672-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Last email from Benoît Cousson was in 2014 [1], so remove him from
maintainers of the TI OMAP platform.  Stale maintainer entries hide
information whether subsystem needs help, has a bus-factor or is even
orphaned.

Benoît Cousson, thank you for TI OMAP contributions and maintenance.

[1] https://lore.kernel.org/all/?q=f%3Abcousson%40baylibre.com

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 CREDITS     | 5 +++++
 MAINTAINERS | 2 --
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/CREDITS b/CREDITS
index 0107047f807b..ea84fb373310 100644
--- a/CREDITS
+++ b/CREDITS
@@ -796,6 +796,11 @@ E: luisfcorreia@gmail.com
 D: Ralink rt2x00 WLAN driver
 S: Belas, Portugal
 
+N: Benoît Cousson
+E: bcousson@baylibre.com
+D: TI OMAP Devicetree platforms
+D: TI OMAP HWMOD boards
+
 N: Alan Cox
 W: http://www.linux.org.uk/diary/
 D: Linux Networking (0.99.10->2.0.29)
diff --git a/MAINTAINERS b/MAINTAINERS
index a482f2a499e4..8193bd95c84c 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -16147,7 +16147,6 @@ S:	Maintained
 F:	arch/arm/*omap*/*clock*
 
 OMAP DEVICE TREE SUPPORT
-M:	Benoît Cousson <bcousson@baylibre.com>
 M:	Tony Lindgren <tony@atomide.com>
 L:	linux-omap@vger.kernel.org
 L:	devicetree@vger.kernel.org
@@ -16202,7 +16201,6 @@ S:	Maintained
 F:	arch/arm/mach-omap2/omap_hwmod*data*
 
 OMAP HWMOD SUPPORT
-M:	Benoît Cousson <bcousson@baylibre.com>
 M:	Paul Walmsley <paul@pwsan.com>
 L:	linux-omap@vger.kernel.org
 S:	Maintained
-- 
2.43.0


