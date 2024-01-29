Return-Path: <devicetree+bounces-36412-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0953B8410E7
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 18:42:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9B3261F22794
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 17:42:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8241376C9E;
	Mon, 29 Jan 2024 17:42:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="me9cGA0E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 156113F9C8
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 17:42:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706550124; cv=none; b=b0X3zTaxCOrKHOutO15nG0bjUoQ1U8Y2eWRuvaPl6whOMrz2yzZsbGKym3SMtfFjUYEb6PIs5XE4Ff4VoHDVJu5dHrAwmQRSicDCtXdH8XE5NsGFWrV9buo4dV6rOYd3zbwWBhk6/LxaczML3QiKH/yXF23sub+dB8HumR6dmk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706550124; c=relaxed/simple;
	bh=XockLcIBDdsNmpd6ix/ucnZWIpV6IperXyESZagDcx4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=tesHkCZoLpkRdf8ZunYdxgZtyClDN6OHij+sTNzwVYSgwrni1ThK6NUym+qqoKj5C8j1THc6lZdJ6J58neaXtLY0U+KKRYNEtm6K+SWmhwUtIT7zJw9jayXIyRfxaUtnaRZvYonw+EMEzeGjVTje3M5i/BejgVKrTEOWDza+Qj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=me9cGA0E; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a3566c0309fso213744366b.1
        for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 09:42:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706550120; x=1707154920; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OXk8/+S7v5krsenTsUmli2T0MASw2Emo0XGTAotRCmQ=;
        b=me9cGA0EUFrX0W+iIdnXGySO4TUUQGkpFYHT74zpHsq2oVO+ubUeP0LJELuERdzyPt
         d7OBKNHf6TpsU6D4tUtvCvuntEiuBJEAgxx9j0cyX0MuuotnVq/vUHFLFn3i6Kb23ZeN
         9TYhxqQ0K++Ul3mdzSV33KJFwqCu57kfeFSnWz0BneZuP/D9QUPp+ijcOVBGOmjfYahQ
         r2CUWOtQLoQlr5neVWekZkM5158/WQz+gezqielAm19N/dtr/eEZRmx6gyHaaNExkjwd
         SCF6oD7ScxgmTX5m04N1ug1tK30R+F2oVA1Gs65DAG7KktoVkv2Tlthz6nED1ndAQ8lL
         G6UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706550120; x=1707154920;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OXk8/+S7v5krsenTsUmli2T0MASw2Emo0XGTAotRCmQ=;
        b=A+fYUYHko3N0646E5UvrFKp/RU/8hOXWfkSmG3wWEX63bvaIPTQl/yVgfdRGShlfnr
         IMJRkPT9YH6iUIRERQ6aI4jAhOd1PTURT6yOdorCjr9jTMbtzSfMGHtXn9LIJikPvnvY
         igybA5UyI1cqw9GItivAY0xn6K3N/sj0/J1j6b0JlHtIfFVTlDB4xepukerdrm9+kXW5
         KI6j6vetfmZgJE2Hls/Z6GuJA3dpILLkr1+yX+qTpBoNNS6fIjm1U35pgY/oOCnLCD1z
         xazGQfi382om7kU3Y+4Zuab+Q6X3lCFUFYokGepjv1Se7GPyz68Uj3toHPkX3Y+dRa84
         EzIA==
X-Gm-Message-State: AOJu0YzmCy4l3Mo9fNaU98Vh0yrqNOyCAuZD22cbo+A2PVIUHZef1vB0
	aAS/etXize1LgvMhUVN8nhhc35up1+D9LxtVVbM67gihO8/OVmWSZWHWbfHAFXA=
X-Google-Smtp-Source: AGHT+IGunLZoBTEVBZdI1yEcs5rhi6jXpqBCIk0DL8PFhzzjG2+46lPnju0xv+N8if+ZBexF9oVlcA==
X-Received: by 2002:a17:906:4a4c:b0:a35:f2a6:3172 with SMTP id a12-20020a1709064a4c00b00a35f2a63172mr1154142ejv.43.1706550120260;
        Mon, 29 Jan 2024 09:42:00 -0800 (PST)
Received: from puffmais.c.googlers.com.com (94.189.141.34.bc.googleusercontent.com. [34.141.189.94])
        by smtp.gmail.com with ESMTPSA id qx25-20020a170906fcd900b00a311a360433sm4237765ejb.143.2024.01.29.09.41.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jan 2024 09:41:59 -0800 (PST)
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
	inux-kernel@vger.kernel.org,
	alim.akhtar@samsung.com,
	s.nawrocki@samsung.com,
	tomasz.figa@gmail.com,
	cw00.choi@samsung.com,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 1/7] clk: samsung: gs-101: drop extra empty line
Date: Mon, 29 Jan 2024 17:40:04 +0000
Message-ID: <20240129174151.1174248-2-andre.draszik@linaro.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
In-Reply-To: <20240129174151.1174248-1-andre.draszik@linaro.org>
References: <20240129174151.1174248-1-andre.draszik@linaro.org>
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


