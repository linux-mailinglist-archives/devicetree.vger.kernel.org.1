Return-Path: <devicetree+bounces-24330-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DFD9880EBD2
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 13:31:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9BB9528124B
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 12:31:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 405445EE82;
	Tue, 12 Dec 2023 12:31:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="m26AuvK1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 176FC171F
	for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 04:31:15 -0800 (PST)
Received: by mail-pj1-x102b.google.com with SMTP id 98e67ed59e1d1-28ac11407cfso117686a91.1
        for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 04:31:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1702384275; x=1702989075; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pkeEHXB3/T/jnmWhl5vUXIuVy5c3DWow9x1MikiYeZc=;
        b=m26AuvK1a1pcYnzI8Dbw20XBKJfqC/g5L87zvM/83moUJ6GPu80tU4+VkWOTq3PMUG
         NBZEwUs9+Gj/77KKZVU1vHsoPQKjcNB8s8E07TQWQ5NUUN7/8t/1TnmR1jflRcvQBlMP
         ho3cXdfbF98LbicCWFd+VpkGdoBOoGMECz0u5Vkj9DgMhxV7ra4BJYbLwBzl+PiABUUy
         vxYxzLWyFfclz8ri0EjGHW5+JfGAGKpQaUKZqzOSh9zmZCEsQ58FSE+rORrCUYJjg0C2
         H4l0AI4IV23m5vXCXnDFUrMaSjFcQy4ZL0uLo3EAXGbchZ6wdou4W+o7abSLVqbrdPb/
         ODBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702384275; x=1702989075;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pkeEHXB3/T/jnmWhl5vUXIuVy5c3DWow9x1MikiYeZc=;
        b=vDoayFnPOXPpHS5N3dbSK9KbPhuBs+NX+zfHTBU31SI6zYqVewIklk7WdWH0WVDR90
         L4lsNnqi9TmXs0N9U4l1UsmbcRTgrHSJuWq7wFvw9J0OSPu8EpaQK/OgIqMuU3dgAyag
         6NvAz9IYeiU6USuL+tZvxemR7/eljoZ8qHHMI19oP0lpsyqyJrfeB0gVv++BagQOea1/
         gnEobjMWzVtwVwvgNwsZtW0NIfPurmawJ7DK/i+s+ZJuXzO8kO/2IyRj+yRjTzdC6ia2
         gDJy3Bc/10CnzfQB3SjOA8S7qdcCm5aVc+7VuCj029lYwEfLHfVLB50KlDYSFOMeIEiJ
         iLCQ==
X-Gm-Message-State: AOJu0YzE2zFy6uFFQ+r0sQrqYC47upk8LSLJZQIB8aXY6fc2uJjR9Xsu
	RqqtaBG5k+F7a1282RMD7QOjCw==
X-Google-Smtp-Source: AGHT+IE5sCF4shEEIJbHK+h3p3TmCKRBlnwVW/n53llShsrKb4WCrNbGIGBKDw0YVDdNQclsPnMbOA==
X-Received: by 2002:a17:90a:898d:b0:28a:d0c1:3015 with SMTP id v13-20020a17090a898d00b0028ad0c13015mr89056pjn.75.1702384275122;
        Tue, 12 Dec 2023 04:31:15 -0800 (PST)
Received: from localhost.localdomain ([101.78.151.194])
        by smtp.gmail.com with ESMTPSA id z5-20020a170903018500b001cf65844874sm8517471plg.45.2023.12.12.04.31.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Dec 2023 04:31:14 -0800 (PST)
From: Rui Zhou <zhourui@huaqin.corp-partner.google.com>
To: lgirdwood@gmail.com,
	broonie@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	perex@perex.cz,
	tiwai@suse.com,
	trevor.wu@mediatek.com,
	allen-kh.cheng@mediatek.com,
	kuninori.morimoto.gx@renesas.com
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	Rui Zhou <zhourui@huaqin.corp-partner.google.com>
Subject: [v9 4/4] ASoC: mediatek: mt8188-mt6359: Enable dual amp for mt8188-rt5682s
Date: Tue, 12 Dec 2023 20:30:50 +0800
Message-Id: <20231212123050.4080083-5-zhourui@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231212123050.4080083-1-zhourui@huaqin.corp-partner.google.com>
References: <20231212123050.4080083-1-zhourui@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable support for dual MAX98390 amplifiers on the mt8188-rt5682s board.

Reviewed-by: Trevor Wu <trevor.wu@mediatek.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Rui Zhou <zhourui@huaqin.corp-partner.google.com>
---
 sound/soc/mediatek/mt8188/mt8188-mt6359.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/mediatek/mt8188/mt8188-mt6359.c b/sound/soc/mediatek/mt8188/mt8188-mt6359.c
index d1884f23a1a7..a391066ab204 100644
--- a/sound/soc/mediatek/mt8188/mt8188-mt6359.c
+++ b/sound/soc/mediatek/mt8188/mt8188-mt6359.c
@@ -1448,7 +1448,7 @@ static struct mt8188_card_data mt8188_nau8825_card = {
 
 static struct mt8188_card_data mt8188_rt5682s_card = {
 	.name = "mt8188_rt5682s",
-	.quirk = RT5682S_HS_PRESENT,
+	.quirk = RT5682S_HS_PRESENT | MAX98390_TWO_AMP,
 };
 
 static struct mt8188_card_data mt8188_es8326_card = {
-- 
2.25.1


