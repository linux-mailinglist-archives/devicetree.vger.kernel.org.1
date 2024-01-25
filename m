Return-Path: <devicetree+bounces-34861-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B4E7883B6BF
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 02:39:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6C9F528197C
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 01:39:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3E0663DD;
	Thu, 25 Jan 2024 01:39:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mAwp39rj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 179E35232
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 01:39:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706146743; cv=none; b=pv4T+t3ne8GSZ5DSv3nrhS7HU4gq7DCleYXd3E+Whidw7IM2HLojHNEHOh3IPPGwyQy9fSLoDuRKOhCKXqftqGpKtb9TRSF/hSwM01lsSNaAlpWeXlCfYWYcZIMsuJLFvAW49vQ5c84IkxUeW0OLJiE/+JTtEGNxer8VQmWpPsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706146743; c=relaxed/simple;
	bh=UecBJlCGnBcs6D2LscfjQO975kiIPSTNfeRKciZdpls=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=a/FYR2moY7bN+3C6R7N8iqiUN3EgFZdpLU9qS6dJSBoSpkpzfPrK6gqvhk/1DmbnvJNdoRMiCI1yPH0MlGRxzAclWT5CbelQceSxE6VofgEEd/H9OP8VjKsWqPG2OCwH4+Nn6EhJ7TME3KVVzGh8wquZG4xBRqheZvSR7ElY+Vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mAwp39rj; arc=none smtp.client-ip=209.85.167.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oi1-f174.google.com with SMTP id 5614622812f47-3bb9d54575cso4228640b6e.2
        for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 17:39:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706146741; x=1706751541; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Cd14S9gVt8ajgJuri9OeN7aZLThOvunLIv6HZZP7bpE=;
        b=mAwp39rjUN9tp2brPSdglZr/0FknSKlAnC+PIy6OOhc9V01LDXo9laubS9klcBiAjg
         qq3M+VRcEyz4pOgI3f9PPyD4Ko2jn4vRhJkFZIZB6TGMsXDz86Wt53zAax70nvzx96rP
         mlqFNcZKeCA4LvfUA8hs4UV0P7orEFjrFvYGcIWbJ6g0cCAEWWHt200eazY4RsP51Sx7
         lnlHWPfH7jEFh7k2X/9yWlpP5Z8fScfBBNo3ZTyhUCAgTwU1TVnUeucr8k2uTUiQqCMq
         dKtxSM/pnHdhWcIEex4APIA5SqqjVnqYDWdRF0GEWjpq3OGUOmPbV+ODUSvqxAlQzsvm
         EcQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706146741; x=1706751541;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Cd14S9gVt8ajgJuri9OeN7aZLThOvunLIv6HZZP7bpE=;
        b=vusT7AwwPYP48i5OWT24Io/WHs8vUOeAgP/l5LxNGxrjAehB052k94RjgxkHOw2sSY
         nWXxiTm+oG7/rJGJOUhmN/sE8rVMwE4OZDo72FVidgMOjFf8h50TGJ+N7gLTw8BWhFan
         EvVnFsCgynw262nZrZEAgLqEwNiZu6tP0EUYTn91Izr72pDn7BRTUNF68OSSmsiOjuvU
         ilRvcQEWO+O/ozZ5JFWXNVjQcABmkWdiNO9rqzS5nrG+Vg+txdknwfobLlaXihv3W9yJ
         jUtkYa8vuDHNe4WdVvd4V3jHRoi5+LqlSzjgrz/F+NcHpr79KHLxaY3ErIMN9qeRfXuY
         X1fQ==
X-Gm-Message-State: AOJu0YzWAhIC3dbrFrFfuuDS/eyN9nZroWT0wWIOJ13kj/XlIkUak0pu
	mD60l+YzG7PEoca86yG5+L0opDQhWmqTHMAHAPv/TPrCmWNNFo253kMKYvURwmI=
X-Google-Smtp-Source: AGHT+IGNzOOC6dwOU5Fgft4DlrzTKACngiq/T9rJ3NZO/iXhvAACtkl6FDHW66WWR1iaI45JSgHD7A==
X-Received: by 2002:a05:6808:16aa:b0:3bd:8ceb:da6d with SMTP id bb42-20020a05680816aa00b003bd8cebda6dmr157088oib.34.1706146741020;
        Wed, 24 Jan 2024 17:39:01 -0800 (PST)
Received: from localhost ([136.62.192.75])
        by smtp.gmail.com with ESMTPSA id dd1-20020a056808604100b003bb7fd5686asm2827162oib.23.2024.01.24.17.39.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jan 2024 17:39:00 -0800 (PST)
From: Sam Protsenko <semen.protsenko@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Tomasz Figa <tomasz.figa@gmail.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/3] arm64: dts: exynos: Add PDMA node for Exynos850
Date: Wed, 24 Jan 2024 19:38:57 -0600
Message-Id: <20240125013858.3986-3-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240125013858.3986-1-semen.protsenko@linaro.org>
References: <20240125013858.3986-1-semen.protsenko@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable PDMA node. It's needed for multiple peripheral modules, like SPI.
Use "arm,pl330-broken-no-flushp" quirk, as otherwise SPI transfers in
DMA mode often fail with error like this:

    I/O Error: rx-1 tx-1 rx-f tx-f len-786 dma-1 res-(-5)

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
Changes in v2:
  - Ordered PDMA node by unit address

 arch/arm64/boot/dts/exynos/exynos850.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/exynos850.dtsi b/arch/arm64/boot/dts/exynos/exynos850.dtsi
index da3f4a791e68..618bc674896e 100644
--- a/arch/arm64/boot/dts/exynos/exynos850.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos850.dtsi
@@ -184,6 +184,16 @@ timer@10040000 {
 			clock-names = "fin_pll", "mct";
 		};
 
+		pdma0: dma-controller@120c0000 {
+			compatible = "arm,pl330", "arm,primecell";
+			reg = <0x120c0000 0x1000>;
+			interrupts = <GIC_SPI 479 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cmu_core CLK_GOUT_PDMA_CORE_ACLK>;
+			clock-names = "apb_pclk";
+			arm,pl330-broken-no-flushp;
+			#dma-cells = <1>;
+		};
+
 		gic: interrupt-controller@12a01000 {
 			compatible = "arm,gic-400";
 			#interrupt-cells = <3>;
-- 
2.39.2


