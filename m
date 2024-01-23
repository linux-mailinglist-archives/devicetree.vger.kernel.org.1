Return-Path: <devicetree+bounces-34420-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F5C8839AF8
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 22:21:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EC66B28C19B
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 21:21:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D52E939848;
	Tue, 23 Jan 2024 21:21:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="c08MyxVI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7390133CD2
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 21:21:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706044881; cv=none; b=DuFDDc7l5tXc1lMJ5vZfNacRiMqP5Op22H4jqzZtdrqJM6k90anzu7trkZ7UBnBT/KqwRcJCuXIWJZWOI9b5SZTyziBCQJNQM4a/OA/ykrqsOjr8sfkmkNsPvVe8WJqWTOyaOlFNCelVqfuoOnOp3k6LMjO6zUvmZMUzyKynu8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706044881; c=relaxed/simple;
	bh=mT3LHcSVS0wNEtYyIcmIub8y/2+sQ0zbTNTXIH2BM94=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Fw//ubtfanWiFnsyFJO7JtDBN5yNynGJFETqqXlBFm/m61LjMwTcIFSaH1e9b7cPKpiryNQkfRxmVXJX4Y3fsPqEY0aW0FZPxWSpZhC+5++5GV/BkRDMlmKVo39puenSggoTLDQ5ToQl4uAJ7WVUpT4IkRZMDsZIAqm+kywlmU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=c08MyxVI; arc=none smtp.client-ip=209.85.160.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-214917ed35aso483821fac.2
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 13:21:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706044879; x=1706649679; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gdI9GpC3LsV5yV1jgeEDWbIrpCqx193PqpqMfGpnGfI=;
        b=c08MyxVIkPAJll7ScaUYHgvF5zzaL0q2OC1NHoABT2wy6SRK6Myv6fxYHJ+DZn8DhO
         W9tHtbS8CzVSFQlBgxakBwO8Ukz2zeBPJEyPpootVpzRGDLPevUxokBX3I05bohF0igc
         jttHARHgt4suMj4WhzM3kF5sbJFsWgicTImJRRBd/vj3xzPkCQzqhBGSrquWVslRAaiG
         1QVkvTQR9u8F2yNG9H+pxFXdJcnEGjyjKxmbK46frfGiBXfwjOcU5jIOhNyn2vWtzR8q
         Ji69QIqZBWEKF0z4XLPsKg+uivzl4+1OSa086FXyvXs9GfEtAuVLDRan2D0ZucXfoi6D
         6Deg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706044879; x=1706649679;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gdI9GpC3LsV5yV1jgeEDWbIrpCqx193PqpqMfGpnGfI=;
        b=Qw5nHEKWSTWF5yHjb7ha1g20czznngBPni0SFog8BG8KBI5LP1ROsXh7gGhPH/nRja
         GZZlHaqcR1ZMF1QG3NSL7BtSr5kaS+hDwnc+HbvMhpg+PfXSnyCHZ2/CZlMZ+OiyN4EI
         GIH9vcUlc12h23s8Fdro+3NzY1Mgk1aju0tMANmsBwrmrBJKKOUOsityQDFFD100ghB3
         1F9Fb393obkasbsORzyC4iHuV6z2Uv+TgEKSWCXxsnWoFSTdWqVctMIDwyCsB7iWUnUQ
         J/UiPjBI9i78yg+w3DKLTnE1tvxgB/FXz5hnWQ8K/460xma3Y5bTmKqUYi24+ns0xcOt
         y3+g==
X-Gm-Message-State: AOJu0YxPr1CMpy8D/12XOlQVc2S5ViY2ErIN9vT04kS/STFYOmZ7Lrig
	Rp9QK3IuPAj7R6JeLTxG7ppefqqs1pmxlgK1vLrvQ/00pJ8R0yZq
X-Google-Smtp-Source: AGHT+IFR/4/GLbQGIaVwftUhbm+Lbo0xKQHUz9CIpu47XVWOREN12miXKXEwgyBWKKx+gxxMyJr+kA==
X-Received: by 2002:a05:6870:a495:b0:214:2e3b:3742 with SMTP id j21-20020a056870a49500b002142e3b3742mr2825076oal.90.1706044879423;
        Tue, 23 Jan 2024 13:21:19 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id w2-20020a9d4502000000b006dc6e40ba97sm2265770ote.72.2024.01.23.13.21.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 13:21:19 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 3/4] clk: rockchip: rk3568: Add PLL rate for 128MHz
Date: Tue, 23 Jan 2024 15:21:10 -0600
Message-Id: <20240123212111.202146-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240123212111.202146-1-macroalpha82@gmail.com>
References: <20240123212111.202146-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add PLL rate for 128MHz to allow the panel for the Anbernic RG-ARC
series to run at 60hz.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/clk/rockchip/clk-rk3568.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip/clk-rk3568.c
index b786ddc9af2a..8cb21d10beca 100644
--- a/drivers/clk/rockchip/clk-rk3568.c
+++ b/drivers/clk/rockchip/clk-rk3568.c
@@ -78,6 +78,7 @@ static struct rockchip_pll_rate_table rk3568_pll_rates[] = {
 	RK3036_PLL_RATE(200000000, 1, 100, 3, 4, 1, 0),
 	RK3036_PLL_RATE(148500000, 1, 99, 4, 4, 1, 0),
 	RK3036_PLL_RATE(135000000, 2, 45, 4, 1, 1, 0),
+	RK3036_PLL_RATE(128000000, 1, 16, 3, 1, 1, 0),
 	RK3036_PLL_RATE(126400000, 1, 79, 5, 3, 1, 0),
 	RK3036_PLL_RATE(119000000, 3, 119, 4, 2, 1, 0),
 	RK3036_PLL_RATE(115200000, 1, 24, 5, 1, 1, 0),
-- 
2.34.1


