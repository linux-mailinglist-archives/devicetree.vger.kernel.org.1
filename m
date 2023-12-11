Return-Path: <devicetree+bounces-24059-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A26F280DBCF
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 21:41:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5E37928196A
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 20:41:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FCD853E1C;
	Mon, 11 Dec 2023 20:41:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iACN0mF4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6C8F9F
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 12:41:46 -0800 (PST)
Received: by mail-pj1-x102b.google.com with SMTP id 98e67ed59e1d1-286f3e0d010so1485737a91.0
        for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 12:41:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702327306; x=1702932106; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=StSaVFlGCo/Vj/verM8F+5UMgXGzA29ZE2bsPlt2dRM=;
        b=iACN0mF4W5QPJqr/C8aby2GhXgpAcZR1OaqOgrp/7mCEBKn4+PeY11JkwJGiGqeIv0
         bln+ixZGt5dlIIL6NIlfgaqGVxr3r+t89UDw2xEDm+ya8a25x6fdn4PtnbKVW7dQtIyI
         FyaAK84AVdAxrtbADuhSnsQpT999FLNUpYlTY/xea+u5vSpDk62PVviS1l14h8bLc4pQ
         qAQKAuJbFndLjgvh2QbYVhFhwTRPH/phAy3yVKKnaaNqCKDaq1pmfbPYxq5TgU1LO43I
         XC4ZAAfh+A5pi8TG3Ir3skI28TJ6M3yAjQ6am+dGQ8XCRxPjCE5+d2T60k84YMOwrDZR
         UYoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702327306; x=1702932106;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=StSaVFlGCo/Vj/verM8F+5UMgXGzA29ZE2bsPlt2dRM=;
        b=XaJscglBJEy1egAwI97Ap95HoF3HFdn5QXzlyKsTHApxnpw8FHYtzRe6B4sryib5wl
         I1vshX12dmmeCNjFN4WrZx6ujM94Y3BQSnTXLEADlOL/hBCpHs4sA2vLeNuNDHID7ANr
         LQhrtkyh2U6lZ4usUAQFXjqB/TEy41Mu2IO4+z0irji5kRX8B8/mnFcdJniRvL7ykFHN
         2eVZ4giE5ikk0ZnAR2qhlZdbXiUZVAzR7MdSO/F5wzXFYcZ6MvjJ/v303L4txycmM3iC
         8iiCesFZf7enc5tbYFmnoDlKP2ihrZWgqgxwIjymIGEDbybUS/i+H9TWZ8vc6dpffGG6
         xJkA==
X-Gm-Message-State: AOJu0Yxr+ROTO+INeq0EItAbLf7Gi9O7rdBiSCk+hXow+nTKQviVyssk
	D6HCch6/EuJi+TDCPexCGqM=
X-Google-Smtp-Source: AGHT+IGOh8Sn6IwFAIyLL33Ud8dcdOeXPZF9GpbVfASspw8GJ/jw2ilY9XZtNp9p2nIzJINTomJ29Q==
X-Received: by 2002:a17:90a:c285:b0:286:bf9e:a6 with SMTP id f5-20020a17090ac28500b00286bf9e00a6mr8687075pjt.4.1702327306123;
        Mon, 11 Dec 2023 12:41:46 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:1d51:eaf7:9aaa:d7c])
        by smtp.gmail.com with ESMTPSA id w14-20020a1709027b8e00b001cfc4d8ede5sm7124809pll.301.2023.12.11.12.41.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Dec 2023 12:41:45 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: marex@denx.de
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	martink@posteo.de,
	kernel@puri.sm,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH 1/3] drm/mxsfb: Add an entry for "fsl,imx8mq-lcdif"
Date: Mon, 11 Dec 2023 17:41:36 -0300
Message-Id: <20231211204138.553141-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

On i.MX6SX, the LCDIF has an associated power domain.

However, i.MX8MQ does not have an LCDIF power domain.

imx8mq.dtsi has the following compatible string:

compatible = "fsl,imx8mq-lcdif", "fsl,imx6sx-lcdif";

which causes the following dt-schema warning:

imx8mq-evk.dtb: lcd-controller@30320000: 'power-domains' is a required property
	from schema $id: http://devicetree.org/schemas/display/fsl,lcdif.yaml#

To prevent this problem, add a specific fsl,imx8mq-lcdif entry in
the driver to properly handle such a power-domain requirement difference.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 drivers/gpu/drm/mxsfb/mxsfb_drv.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/mxsfb/mxsfb_drv.c b/drivers/gpu/drm/mxsfb/mxsfb_drv.c
index b483ef48216a..ac9ce3b45b38 100644
--- a/drivers/gpu/drm/mxsfb/mxsfb_drv.c
+++ b/drivers/gpu/drm/mxsfb/mxsfb_drv.c
@@ -340,6 +340,7 @@ static const struct of_device_id mxsfb_dt_ids[] = {
 	{ .compatible = "fsl,imx23-lcdif", .data = &mxsfb_devdata[MXSFB_V3], },
 	{ .compatible = "fsl,imx28-lcdif", .data = &mxsfb_devdata[MXSFB_V4], },
 	{ .compatible = "fsl,imx6sx-lcdif", .data = &mxsfb_devdata[MXSFB_V6], },
+	{ .compatible = "fsl,imx8mq-lcdif", .data = &mxsfb_devdata[MXSFB_V6], },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, mxsfb_dt_ids);
-- 
2.34.1


