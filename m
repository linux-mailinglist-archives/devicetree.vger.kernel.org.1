Return-Path: <devicetree+bounces-24326-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C56580EBCD
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 13:31:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1CDB5B20B0C
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 12:31:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC38E219FA;
	Tue, 12 Dec 2023 12:31:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="czdfD9ko"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FBBBEA
	for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 04:30:59 -0800 (PST)
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-1d0b2752dc6so48917265ad.3
        for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 04:30:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1702384259; x=1702989059; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oUJk9866S4PAQXmA6qnwohjo1oiLjXwOVCALe6AI8vQ=;
        b=czdfD9koET+L59iW5hh0EjqCNneJWJqaoxBG8nikyZKMnW3FdHYQpr1+4BXD5PiNeA
         Zhz9NXCk5Qvv045M9w+fG4ixQ3NyfzIzLL4OF0L4csKSSd7ZRdIDMJsI/bhASDEy6dVH
         jnN9yerEibqR1+Mq/Zeu1YLm3iTFxjXjj6qgTa/4Otu4Q6gvwo1s9g3pYjrar8XQy1AW
         UUqYdMSJeHDbrLwXF6ltnt0t4cFx7dxlaA2KbEcs3NmNr208Q/i2d04WJVD4XDPENzKg
         cZ3xPmB2GIiLHh9jUa7w79qQxgKXR96rEhOLpx6Zy9xvMBotvGvGBDf9XBh+8AL9RNji
         rLsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702384259; x=1702989059;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oUJk9866S4PAQXmA6qnwohjo1oiLjXwOVCALe6AI8vQ=;
        b=MiudgVrARtwsXQrjy6Gl3v/5AZsUk7UD5EbHxPGlNEy2yRH8XGUKsm3VY54k//WCc5
         fEkjL8+mN8lIbIt+Mk//k5z7t7fJf3nYOxAiGhRzTB/ii8xsOjNmsFAzxbgZtYuOd0PM
         XVxKdpKSGZLtb0evQn4FmbdciFNA6RQOvXcj8CGGbtkCfDf15oL0Ng4e9Sj8YEwCY9++
         b0JcD+0Yxz0Il/SvbLZrScQw2WH69tWWCJIZpMF0Ktw1o0EwWHGgFl8uiX7Ua6VNOQh3
         c5g5buDlcpp+VVGmAlx+YVU0tSNxsEVS7kaiFO9MWjU9oDrDr0lXOM9xMIBuToerASei
         Qg4A==
X-Gm-Message-State: AOJu0YwJjfFoFZ1jJUOawCJdOQ/ORIxHLJNBq0D08rRnGJbUYk278SKY
	2zQpEXZIhNG33f1swPYrmmulcA==
X-Google-Smtp-Source: AGHT+IFU9pkU+zSIJxSZTuCh+xEhEUbw/pYIMBMqlqIDsVlUDvgUNuGnVZcwWbSidghtupmjgmjpPw==
X-Received: by 2002:a17:902:6806:b0:1d3:3eb8:3691 with SMTP id h6-20020a170902680600b001d33eb83691mr480195plk.6.1702384259076;
        Tue, 12 Dec 2023 04:30:59 -0800 (PST)
Received: from localhost.localdomain ([101.78.151.194])
        by smtp.gmail.com with ESMTPSA id z5-20020a170903018500b001cf65844874sm8517471plg.45.2023.12.12.04.30.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Dec 2023 04:30:58 -0800 (PST)
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
Subject: [v9 0/4] add es8326 dt-bindings, commonize headset codec API, es8326 support and Enable dual amp for rt5682s
Date: Tue, 12 Dec 2023 20:30:46 +0800
Message-Id: <20231212123050.4080083-1-zhourui@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add dt-bindings for es8326 and codec es8326 support. 
Remove duplicate code, commonize headset codec init/exit API.
At the same time, Enable dual amp max98390 for rt5682s.

Changes in v9:
- PATCH 3/4: Add comment for MAX98390_TWO_AMP.
- Link to v8: https://lore.kernel.org/all/20231208070933.720324-1-zhourui@huaqin.corp-partner.google.com/

Changes in v8:
- PATCH 3/4: Change the #define ES8326_CODEC_DAI macro definition and filter the es8326 widget
- Link to v7: https://lore.kernel.org/all/20231116093512.4180240-1-zhourui@huaqin.corp-partner.google.com/

Changes in v7:
- PATCH 3/4: Completion "}"
- Link to v6: https://lore.kernel.org/all/20231116073106.3757618-1-zhourui@huaqin.corp-partner.google.com/

Changes in v6:
- PATCH 2/4: add a patch, commonize headset codec init/exit API
- PATCH 3/4: Remove generalized code
- Link to v5: https://lore.kernel.org/all/20231115090903.578438-1-zhourui@huaqin.corp-partner.google.com/

Changes in v5:
- PATCH 2/3: Change the names of some apis
- Link to v4: https://lore.kernel.org/all/20231115085329.541764-1-zhourui@huaqin.corp-partner.google.com/

Changes in v4:
- PATCH 2/3: Change the names of some apis
- PATCH 3/3: Change commit description
- Link to v3: https://lore.kernel.org/all/20231108063804.592982-1-zhourui@huaqin.corp-partner.google.com/

Changes in v3:
- PATCH 3/3: Change theme description
- Link to v2: https://lore.kernel.org/all/20231108012617.3973539-1-zhourui@huaqin.corp-partner.google.com/

Changes in v2:
- PATCH 1/3: Change ES8326 location in bindings
- PATCH 3/3: Change theme description
- Link to v1: https://lore.kernel.org/all/20231107031442.2768765-1-zhourui@huaqin.corp-partner.google.com/

Rui Zhou (4):
  ASoC: dt-bindings: mt8188-mt6359: add es8326 support
  ASoC: mediatek: mt8188-mt6359: commonize headset codec init/exit api
  ASoC: mediatek: mt8188-mt6359: add es8326 support
  ASoC: mediatek: mt8188-mt6359: Enable dual amp for mt8188-rt5682s

 .../sound/mediatek,mt8188-mt6359.yaml         |   1 +
 sound/soc/mediatek/Kconfig                    |   1 +
 sound/soc/mediatek/mt8188/mt8188-mt6359.c     | 125 +++++++++---------
 3 files changed, 63 insertions(+), 64 deletions(-)

-- 
2.25.1


