Return-Path: <devicetree+bounces-24327-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D44A580EBCC
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 13:31:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E8DD51C20AB8
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 12:31:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A58EF5EE76;
	Tue, 12 Dec 2023 12:31:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="ujRNfPYF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4A3E94
	for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 04:31:03 -0800 (PST)
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-1d307cf18fdso11676345ad.3
        for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 04:31:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1702384263; x=1702989063; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OQqe+M0SciQZs03dKyyk03FflXJC4UVH/RDIGAymDmI=;
        b=ujRNfPYFflEeo7RXpcuG/E2EN0XjscQiN5coTK61OuFP//1QgyiMIIzz0/4B1SyZr8
         upZ5rY4usmZCU4KLiCyiu3Ntpg7Sv+YO0brGwrnr+nYClwOWkdLM+IE2I3Xx/clMiID0
         Fv2jsgPYSKTfOtj77HdB3Dpy06NvVyeB7l0Doz9mhpksaZgq0ZPBSnRnUHzIHgR3HzNr
         xoBq1fxdeK6s9FbTZHwYKxRPpiP2ZqvmcPqBifs7p63qr2xLrYaplW6QyC8bwnzPIydq
         Q1RPGS2NIGZdBmKoj3wzIi8BKkzkUzAeFC5YIoKW3JLYZJR97ALTXOWznR7TnWlK5fs+
         VcXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702384263; x=1702989063;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OQqe+M0SciQZs03dKyyk03FflXJC4UVH/RDIGAymDmI=;
        b=Che7JQmE6QYIxunWDG9ERsvM8OwqMQM6mcmax26gdgfUakzkEakWqMvD/0a3mg+dN6
         WGHkximMtp/IZMIrKJnF+uzxjVdwR03/0l0hSE56x9JmwsXERSf8xgkYLcNUUbKUjUGa
         optfbOh+iSw6NVnMVsCPrq0hGAO0zX2cd0/Ch3s8NT8lK4o3Z/MUAaOtqDaMLqRf1GUP
         cDHewaJZv8ViVqJB+iWiUk/xSGf3NFPgYQbjax2elqcfvEtXFTEyGEk8lO4+Favh80vH
         Kcs3bEnHBYz82vo+aREPHD/qNIS+EFZFfzgRbdumc3sOUkky7jK8ZeRsPXmLD53Zs+ke
         6eSA==
X-Gm-Message-State: AOJu0Yw729UJMEnxV+htJKw7rsNJ/5+J4A/LhEk0BaXixc0h6jmBFgiE
	USRjF33k1l2YLPFmDHwp5Ukcew==
X-Google-Smtp-Source: AGHT+IEDUBr/+oX1uIcLCJf/m0NlbaRCePwvYMtZ5/+9t/R/pYCnAZMXHXO1IYqgFH048E0hgIsy0g==
X-Received: by 2002:a17:903:280e:b0:1d0:9fdb:a961 with SMTP id kp14-20020a170903280e00b001d09fdba961mr2989604plb.32.1702384263212;
        Tue, 12 Dec 2023 04:31:03 -0800 (PST)
Received: from localhost.localdomain ([101.78.151.194])
        by smtp.gmail.com with ESMTPSA id z5-20020a170903018500b001cf65844874sm8517471plg.45.2023.12.12.04.30.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Dec 2023 04:31:02 -0800 (PST)
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
	Rui Zhou <zhourui@huaqin.corp-partner.google.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [v9 1/4] ASoC: dt-bindings: mt8188-mt6359: add es8326 support
Date: Tue, 12 Dec 2023 20:30:47 +0800
Message-Id: <20231212123050.4080083-2-zhourui@huaqin.corp-partner.google.com>
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

Add compatible string "mediatek,mt8188-es8326" to support new board
with es8326 codec.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Rui Zhou <zhourui@huaqin.corp-partner.google.com>
---
 .../devicetree/bindings/sound/mediatek,mt8188-mt6359.yaml        | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/sound/mediatek,mt8188-mt6359.yaml b/Documentation/devicetree/bindings/sound/mediatek,mt8188-mt6359.yaml
index 4c8c95057ef7..f94ad0715e32 100644
--- a/Documentation/devicetree/bindings/sound/mediatek,mt8188-mt6359.yaml
+++ b/Documentation/devicetree/bindings/sound/mediatek,mt8188-mt6359.yaml
@@ -15,6 +15,7 @@ allOf:
 properties:
   compatible:
     enum:
+      - mediatek,mt8188-es8326
       - mediatek,mt8188-mt6359-evb
       - mediatek,mt8188-nau8825
       - mediatek,mt8188-rt5682s
-- 
2.25.1


