Return-Path: <devicetree+bounces-36424-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 69CA9841128
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 18:47:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1DA361F27AD0
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 17:47:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60C603F9F6;
	Mon, 29 Jan 2024 17:47:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OpITgUiW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA19F76C96
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 17:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706550432; cv=none; b=gLpbaZgYOrIY6esMN5h5A00crDg0P7NhhQ6s23aTMBTxi6SjK4/kfHWPQmiIbiGoYSpE65Lyv4uypFaZxsbH2nK2Dq6MezNF2EiyrsBtw6uF8dWrpOL1D93qcYfJS+JMLMG/Wb+h2QrZHVUp9kpawerGQB3Q/nZhL7StbdfcqQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706550432; c=relaxed/simple;
	bh=XockLcIBDdsNmpd6ix/ucnZWIpV6IperXyESZagDcx4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ZFR/ACnPjsyzZg4Pd5Hy3DBVEj1teazeUXaqS5tN78qFxgjRmMYgfuSVaNyzvOm7waqpPk5TiNhVe2KS9YNC3TikU8K5NV7UmbuYY6cZUUhfT5gsjoaQ6EGHvAugSSiGJS4lXJspOJi7TgeiOvZ3Gwpe+FuqnrtktlXJ+grzCaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OpITgUiW; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2cf4d2175b2so27334871fa.0
        for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 09:47:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706550427; x=1707155227; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OXk8/+S7v5krsenTsUmli2T0MASw2Emo0XGTAotRCmQ=;
        b=OpITgUiWDR7zhVxvLeFuLxDaC7Na+frgrQxYsK0GRoW4e3OmEVehfOls8+c/uotGky
         fF8jY2Efk9LMEqj5zba+oOYJPilVy5DmkOVaQd0wHUhDIjvCdB5hf9wa+jNGt4qlODr1
         ZDghHYycrq4/Rs4K0sdA8MDynDrKH9xbxfmtDAwsOOkJ1AdjhVTLELlQpv4W3ee/VlGT
         kAv24c+3bpk+5aqyM80m41ag6Imw+VGh+zQolQgLd1Sb9DG1vjsKmJN8h05NKVM00P/h
         gfJwke4E5YNDoOrpzY1nZj3OqVRkpxMpaBz75vxk6BCJCHq95bY71CuOzilvd733GE/F
         AJrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706550427; x=1707155227;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OXk8/+S7v5krsenTsUmli2T0MASw2Emo0XGTAotRCmQ=;
        b=lBpzjRfXCmwBe3V9uNF8TV4Ph3KV8Hpi5eKAcFM4Lmy1jp2g9WBhJ9V0W8YnUcE/lu
         /i+8msQUIHXurqMZ5fhTV/qFWoDCkgR889nr+D1z5HKGZaUOIrtJaZQB3z+EoxImUs1w
         R0tdu22UbOAFcB2eK26y8ZSMvA6XyE/JczBapliPH5cdkwpXpW+0nkegY6iDfzNQIwNZ
         8llI9i91/7VE10fukHJ0psfVEMtzQFrUcGsBryu2CXqXD+WWmluSthZTGhQ79yX1Dryj
         yrLWGrQwxK4agZkXQcc32Ts1HNmbWPNHLw8qQvL81DUyiH2GdNixC5LTYNe8TTYjOrpz
         iCww==
X-Gm-Message-State: AOJu0Yzw9oYGrSxYGXO/G0b8rTcM0Seyoqmt2OVrjQw3tGwbIZp5h3IA
	Ppz/tCT8Lx6FKoRD/J2e6O+zshmHN1q5BFh2uETUuKpVfN7KXLGe4DEWdJ3Ts5c=
X-Google-Smtp-Source: AGHT+IFWsCWmbf0pgSK/LUtos+SsTDg1P/Vmv/W6gu2h/rBPT9knyOGto+Oe8LfUI7ng0ex0fRdTmg==
X-Received: by 2002:a2e:910b:0:b0:2cc:f993:e40c with SMTP id m11-20020a2e910b000000b002ccf993e40cmr4757461ljg.9.1706550427405;
        Mon, 29 Jan 2024 09:47:07 -0800 (PST)
Received: from puffmais.c.googlers.com.com (94.189.141.34.bc.googleusercontent.com. [34.141.189.94])
        by smtp.gmail.com with ESMTPSA id u10-20020a05640207ca00b0055f08fa9286sm1000999edy.23.2024.01.29.09.47.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jan 2024 09:47:06 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>
To: peter.griffin@linaro.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org,
	kernel-team@android.com,
	tudor.ambarus@linaro.org,
	willmcvicker@google.com,
	semen.protsenko@linaro.org,
	alim.akhtar@samsung.com,
	s.nawrocki@samsung.com,
	tomasz.figa@gmail.com,
	cw00.choi@samsung.com,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 1/7] clk: samsung: gs-101: drop extra empty line
Date: Mon, 29 Jan 2024 17:46:00 +0000
Message-ID: <20240129174703.1175426-2-andre.draszik@linaro.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
In-Reply-To: <20240129174703.1175426-1-andre.draszik@linaro.org>
References: <20240129174703.1175426-1-andre.draszik@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

There is an extra empty line here which doesn't exist in any of the
other cmu code blocks in this file.

Drop it to align cmu_top with the rest of the file.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>
Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Reviewed-by: Tudor Ambarus <tudor.ambarus@linaro.org>

---
v2: collect Reviewed-by: tags
---
 drivers/clk/samsung/clk-gs101.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/clk/samsung/clk-gs101.c b/drivers/clk/samsung/clk-gs101.c
index 4a0520e825b6..27debbafdce4 100644
--- a/drivers/clk/samsung/clk-gs101.c
+++ b/drivers/clk/samsung/clk-gs101.c
@@ -25,7 +25,6 @@
 /* ---- CMU_TOP ------------------------------------------------------------- */
 
 /* Register Offset definitions for CMU_TOP (0x1e080000) */
-
 #define PLL_LOCKTIME_PLL_SHARED0			0x0000
 #define PLL_LOCKTIME_PLL_SHARED1			0x0004
 #define PLL_LOCKTIME_PLL_SHARED2			0x0008
-- 
2.43.0.429.g432eaa2c6b-goog


