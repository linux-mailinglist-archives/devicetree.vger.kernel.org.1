Return-Path: <devicetree+bounces-3049-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8598A7AD389
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 10:39:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id A1AA51C2036D
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 08:39:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6026134B5;
	Mon, 25 Sep 2023 08:39:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D41012B8A
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 08:39:26 +0000 (UTC)
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com [IPv6:2607:f8b0:4864:20::536])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC62D1A8
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 01:39:09 -0700 (PDT)
Received: by mail-pg1-x536.google.com with SMTP id 41be03b00d2f7-564af0ac494so3638558a12.0
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 01:39:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1695631148; x=1696235948; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Kt531lV/49PNzylTwWw5xyk5QvUpAoPyaIHXHiJOv2c=;
        b=yuUFGnr01i1fWzxBmGjLm7DnSnzIcwnMOpYclRR1nr2XP75CMWJRsdVvZGsENUBMph
         c6kExwKAYpCl3ND2Wlz+4vhY5mcxEgwA7egl6DT6vJkCrnnYVpEhDHoHjVFbES0Ot6X9
         QQfL8QOfzKguRnRMkVJsFe2L8WQwNyC7Y9NNSZpUDuALVZU1pcACM6IIx1E/6Ny8lI49
         6PuavQiEKHPKPf6+KKarUqkmntNdX3eZUinyRwBRNBtoCgg+DGlEner1z/FTC6AZKYTc
         /4pPNyoUn3WafzdXAsa0+SMX/UHLOnt6SpGPZeSHYMTvJpb/tFmUmD7KkEG5WO0rFKXP
         KGQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695631148; x=1696235948;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Kt531lV/49PNzylTwWw5xyk5QvUpAoPyaIHXHiJOv2c=;
        b=kq1B7eJyCtzF37YjJ9kGdtzg9HG6ZZmc2f30uyp3OQJn6vIYiBU6NrgLZcZWWDGfIw
         gi7h6RdERb82BL3ekVQzF6spm8c5LphqRi/EHifYtiX6pn1Q1Qpjb2151RFSJNvp5blF
         7wj4HisPOT7cewrIfHPIdnoqt9X4l1urwz/2jSXd0DELSfOtFQzDybPZQERaHFXvASiB
         CGSKdzuezN7Ifn6MzbgLSeiG2TUL7Ppbh/1Eox9s1fNITYuPfS4qNMus7CE01VQF5i8M
         2op6gFmVVZQiK8R5xipwlpoYy9TWYUak7wrrMzSiTsPgcXfMWZKgYqdFe2JiqMkzAmgW
         r8wQ==
X-Gm-Message-State: AOJu0YzMnWuH+X2h+oGk3e8eMSY5heiBYf/p+42XzS0l9KIm/AJIU/zy
	JRpL2C2MlIpx4PvIqXKMpFszQxe5+UzmWZyi9lE=
X-Google-Smtp-Source: AGHT+IHx3J5ySfw9Wuxosg5Z6sG1PprCJbEmmIZOATHNOQ864gnhC7D7+VS5LClGiArL8V2tqHkKDQ==
X-Received: by 2002:a17:90a:e50c:b0:274:1bb1:415a with SMTP id t12-20020a17090ae50c00b002741bb1415amr3509215pjy.41.1695631147932;
        Mon, 25 Sep 2023 01:39:07 -0700 (PDT)
Received: from ubuntu.huaqin.com ([101.78.151.205])
        by smtp.gmail.com with ESMTPSA id 14-20020a17090a004e00b0025dc5749b4csm10141132pjb.21.2023.09.25.01.39.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Sep 2023 01:39:07 -0700 (PDT)
From: xiazhengqiao <xiazhengqiao@huaqin.corp-partner.google.com>
To: lgirdwood@gmail.com,
	perex@perex.cz,
	trevor.wu@mediatek.com,
	broonie@kernel.org
Cc: alsa-devel@alsa-project.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	xiazhengqiao <xiazhengqiao@huaqin.corp-partner.google.com>
Subject: [v1 1/2] ASoC: dt-bindings: mediatek,mt8188-mt6359: add RT5682S support
Date: Mon, 25 Sep 2023 16:38:46 +0800
Message-Id: <20230925083847.1496-2-xiazhengqiao@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230925083847.1496-1-xiazhengqiao@huaqin.corp-partner.google.com>
References: <20230925083847.1496-1-xiazhengqiao@huaqin.corp-partner.google.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Add compatible string "mediatek,mt8188-rt5682" to support new board
with rt5682s codec.
---
 .../devicetree/bindings/sound/mediatek,mt8188-mt6359.yaml        | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/sound/mediatek,mt8188-mt6359.yaml b/Documentation/devicetree/bindings/sound/mediatek,mt8188-mt6359.yaml
index 43b3b67bdf3b..92da36137270 100644
--- a/Documentation/devicetree/bindings/sound/mediatek,mt8188-mt6359.yaml
+++ b/Documentation/devicetree/bindings/sound/mediatek,mt8188-mt6359.yaml
@@ -17,6 +17,7 @@ properties:
     enum:
       - mediatek,mt8188-mt6359-evb
       - mediatek,mt8188-nau8825
+      - mediatek,mt8188-rt5682
 
   audio-routing:
     description:
-- 
2.17.1


