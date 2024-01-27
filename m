Return-Path: <devicetree+bounces-35722-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B46C83E825
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 01:19:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1C4671F22853
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 00:19:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DD551873;
	Sat, 27 Jan 2024 00:19:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ajlb2/23"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13968635
	for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 00:19:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706314785; cv=none; b=dBiBxIp4/hBkoxlKcBsPQeav4r3TkoqCDoPcTWlt6sztKOxxrSI5CO00VHEUAf3r04y7FtGeSQHRyfq9c0q5piHGViuCz5apjXRAMITki3U09fLWUtNLPm3eqMrIKqIdpAh1gP9prHs1hPzJ/1c1Umd/kU1fgMbdApjpPEP2k2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706314785; c=relaxed/simple;
	bh=c7iK9Q9i+/5KtbjjQ/B86HiRg6utBMxubkhs/C/qBEo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=LAtjUJ8DN+5Eewm5E/wnCUxGG5WYG2ObnTbETacZwEB8DppU/WkLVjECJGLFIGjqeLjdg5aX8Z89aYVg3V24GTnfIlBQcns3N3K0k9CYi2NprL8nnS0/n73tfQZZHvpYMtOgRhTH4WKyvFbBXjmB6dQBt7+3B9l9WU8Og3RTLJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ajlb2/23; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a28a6cef709so87785866b.1
        for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 16:19:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706314780; x=1706919580; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R/Rm0yYDXOMu68wV8GexASxsNK6lcu3pWifwK+J3GEg=;
        b=ajlb2/23tvb/6s+91Mu7wtxth3Evb0cqF/86MJou4CjUGOLJBikgYLRQu3CMJMA2bA
         3L9q6gSK8VVzY2/YL2S+24sqabt53VhdVUj10EetXXQIXbpQ2lvehyB7s4FGdWCQ+QZ9
         BR3lu4haE3GlLtQnLegJn3jBkXHq9ZhzLXxMJ1yN3oZhtJYxfvo/6JwxLT/X/FZK8qjR
         gq9e9fUW5ta/YsA+R8nJ2Bq+bYCM3Z0B/ubdeQwj18m+a5CJGDpdqL8bqBD87zZDsqPB
         /6NqPfcdWpDuAlLXTGWQbYe7chIUr+0BDwkmGsCUd+4HJgGjXvy75E0J+qsZFrrzY/g3
         9jqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706314780; x=1706919580;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R/Rm0yYDXOMu68wV8GexASxsNK6lcu3pWifwK+J3GEg=;
        b=WIR/eoeshu6XrfvkXiYv/kR5HbaZ/XfbXNydOlzyK99j7Ckr5XwY+e9bn9su1+0Gtx
         p67qmKlDCdcj2rh1ljulT3fPDfZWkz0PTPwEFgSn9tYR39MPdxH9zJKlAtk9lTYvbVOF
         qDmx/uP/++ho/RP+FqgxSXlhNXTV9NBbMhYhAMzFPpR6MvCtEX9yAdRzMDbyPek0+/aN
         cC8HcfMRDkOlqHYca8G9y+12jmYdV6hyG7Lf9+FXbSacYyOpaXGff/hRYI0aErNHHVgU
         4dnbgmxJ2q/Ym84HrkfPYuXRnkrWErIeZl1MQW49bq3D+Jvek0cZb674v7KhDjW7jFEr
         ZCdg==
X-Gm-Message-State: AOJu0Yynk5UaFVeBdhwI5zGFevR8MX6IXpSebFs6CVJkmKpvMD/PBxr6
	ExiF1XjqmTmKB02yYf5ONoL7/cgpy168dLIhzBB9UUkrXZZRC/nZd8Qlg4EA7Lw=
X-Google-Smtp-Source: AGHT+IHLOaiuHvoFTH+gfWrR6r9blUug2B/0DbKBGkdsAnqaaQUsJ3oQnpIIzDIfgkkkW6+UsehFug==
X-Received: by 2002:a17:906:470a:b0:a34:e324:c8d5 with SMTP id y10-20020a170906470a00b00a34e324c8d5mr309303ejq.33.1706314780146;
        Fri, 26 Jan 2024 16:19:40 -0800 (PST)
Received: from puffmais.c.googlers.com.com (229.112.91.34.bc.googleusercontent.com. [34.91.112.229])
        by smtp.gmail.com with ESMTPSA id x16-20020a170906135000b00a339d705a10sm1141359ejb.80.2024.01.26.16.19.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jan 2024 16:19:39 -0800 (PST)
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
Subject: [PATCH 1/9] clk: samsung: gs-101: drop extra empty line
Date: Sat, 27 Jan 2024 00:19:05 +0000
Message-ID: <20240127001926.495769-2-andre.draszik@linaro.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
In-Reply-To: <20240127001926.495769-1-andre.draszik@linaro.org>
References: <20240127001926.495769-1-andre.draszik@linaro.org>
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


