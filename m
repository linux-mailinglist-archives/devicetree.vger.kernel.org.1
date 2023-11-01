Return-Path: <devicetree+bounces-13467-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AE18B7DE2CB
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 16:15:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6307B2812F1
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 15:15:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A12EB13FF7;
	Wed,  1 Nov 2023 15:15:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=hefring-com.20230601.gappssmtp.com header.i=@hefring-com.20230601.gappssmtp.com header.b="Al4PRtuD"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C41511C8E
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 15:15:49 +0000 (UTC)
Received: from mail-qt1-x834.google.com (mail-qt1-x834.google.com [IPv6:2607:f8b0:4864:20::834])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E15F102
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 08:15:47 -0700 (PDT)
Received: by mail-qt1-x834.google.com with SMTP id d75a77b69052e-41cc44736f2so49411321cf.3
        for <devicetree@vger.kernel.org>; Wed, 01 Nov 2023 08:15:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=hefring-com.20230601.gappssmtp.com; s=20230601; t=1698851746; x=1699456546; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=scSvTq12ck6hKrL81KpyijuxTwLdmUzADFiheIKoCgU=;
        b=Al4PRtuD4zlZWphIhzD6z//EhVgW3NV60YaR3jACu/UQy0XM91nW2dvef2gHdBDo/Q
         G/BbQTjYJdgIHkpOnO4lEwoFs7aeStMYGviqgU+ehNiyRlNeAqBtf8c2qycnze8uQh1l
         S2YADvJIwQaP7qWrOYFcozSgLDBm1w84x0sCCe8JATI3V5AQtsT5RagyD79ZNvvbUC0Z
         M+h01PwFJ3YzrO+Ssm/FwR5EH1/+ZpCDQWcPHctCQXRf2rTCYyhJyWoXsmMNqPK99Afw
         NpfpzWnXwP5PAbWBxchN4n8IcEVJtmUny1GddR0lCPkNkSWyOyk7W8TOIePg5br2FyF+
         LGTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698851746; x=1699456546;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=scSvTq12ck6hKrL81KpyijuxTwLdmUzADFiheIKoCgU=;
        b=umjtuw18cyw5dYcs2b805Nlwh6TN3rpcgiOpfs2hEvDdX/CaTND4BBjW3PgaiCg+uM
         N4IFkbXEepxwaDsFo6AR974BV+b7O5WxiWOa9pV1Cvbi1484EttlpRn7p3uYfKrV9znS
         p7kAsYYBeo/VV/QjsknTReCAFmnBcf6tBArBJz2+G7G4KDMaYEl0MDUqCYEAa3WKvj6p
         Lu8M7aEV7FeTMhWGN98sg65qNZLonY80Iu643ZCIl9IIGLOLwffzeqkPludWMymnBlvG
         9NGB0NFrdV7u2wJC6NEx3S/dfb8Hz8rEVPb7EAaWtpvYPVt3NaCVu143NkWByX3SwPlG
         yFig==
X-Gm-Message-State: AOJu0Ywjb46Y9kh7zWY+RXTUjwO/tGeTkzYkWsAS2QXTAqj8r34gSKi0
	0uqpZB2a10ssW35m1IpRi0ijVA==
X-Google-Smtp-Source: AGHT+IGG1RpnEwK+BTs6NWrgE9D/51hktrLMdXeYOhyejbjS26AScKHpDDXPsTpMZl3VpU8YIWQ/lA==
X-Received: by 2002:a05:622a:1aa8:b0:41e:20b5:fc58 with SMTP id s40-20020a05622a1aa800b0041e20b5fc58mr18826579qtc.47.1698851746656;
        Wed, 01 Nov 2023 08:15:46 -0700 (PDT)
Received: from localhost.localdomain ([50.212.55.89])
        by smtp.gmail.com with ESMTPSA id dn5-20020a05622a470500b004181a8a3e2dsm1477165qtb.41.2023.11.01.08.15.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Nov 2023 08:15:46 -0700 (PDT)
From: Ben Wolsieffer <ben.wolsieffer@hefring.com>
To: linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Alain Volmat <alain.volmat@foss.st.com>,
	Erwan Leray <erwan.leray@foss.st.com>,
	Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
	Ben Wolsieffer <ben.wolsieffer@hefring.com>
Subject: [PATCH 0/5] Add STM32F7 SPI support
Date: Wed,  1 Nov 2023 11:08:05 -0400
Message-ID: <20231101150811.2747455-1-ben.wolsieffer@hefring.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series adds support for SPI on STM32F7 processors. The STM32F7 SPI
peripheral is nearly identical to the STM32F4, with the only significant
differences being that it supports a wider range of word sizes, and the
addition of 32-bit transmit and receive FIFOs.

Ben Wolsieffer (5):
  spi: stm32: rename stm32f4_* to stm32fx_*
  spi: stm32: use callbacks for read_rx and write_tx
  dt-bindings: spi: add stm32f7-spi compatible
  spi: stm32: add STM32F7 support
  ARM: dts: stm32: add SPI support on STM32F746

 .../devicetree/bindings/spi/st,stm32-spi.yaml |   1 +
 arch/arm/boot/dts/st/stm32f746.dtsi           |  60 +++
 drivers/spi/spi-stm32.c                       | 455 ++++++++++++------
 3 files changed, 367 insertions(+), 149 deletions(-)

-- 
2.42.0


