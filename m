Return-Path: <devicetree+bounces-8241-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2901E7C755A
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 19:58:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D2B7D282A1B
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 17:58:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BCD6374E4;
	Thu, 12 Oct 2023 17:58:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GZgP84BA"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA7713714C
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 17:58:47 +0000 (UTC)
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BEEADD;
	Thu, 12 Oct 2023 10:58:45 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-533d31a8523so2241482a12.1;
        Thu, 12 Oct 2023 10:58:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697133523; x=1697738323; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rzfQcNKj9bFAhiJUmlpF+2fxTSAfgcm+jA7Xbn+UotE=;
        b=GZgP84BAMHBUCuyVy7UPztMjRSFQRh0NVBaZCHLuTu/j83A823G17Cs3fPcvNRyK54
         0DTEviAsE03lX+MZak1zVJUoGwWUnf0q5ar3A/SHWu7RGVoEza0nJkQ582YeHe0uX7lV
         E5UZbx0+BHIV4pLBs05FcIkR/y2u/jxa+RAvLTWJHzH4xTdPfD8jc7SUZckwGYdjlAUt
         i8ZqjsffFhZf3NFmaPddXNy8Q2DFtkxRDZSJwjoGZW9huijAHCUCXkGHBTS62DZcVZ4m
         QZTAzv0bJ2OI061iaqyJNDHl7pGPT16LBOwWI5VwAelXNBeGzsxB3ba59d0+gQ1Kb/Xm
         /aEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697133523; x=1697738323;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rzfQcNKj9bFAhiJUmlpF+2fxTSAfgcm+jA7Xbn+UotE=;
        b=g7fpWagXc+ZajaLQEVueHnzbL03ilm+A+h6unufy2XPleXFtkJwxToOZwl5ycS5e4u
         J681xJ06YfWrMQGbxkkAb8kVMca4KUL6o/6KaZEws3pVRlRdR4r+1Tg1jCSWuP++Mqaw
         O/92rLDiu8TYjQaN5jyaf2aRsSDQHHbItZ0E3AUKY21psmsDfvLoGS0Yc0Yw6JBoF/mr
         ANqzj+amqLXT2vFOLXr29KQL2CaeHMPCH3yMpbSCWE8Qq2Y5rprICHVReqgIa797gJ5c
         atxhk5Be+XfcjVZRHYz6McA1WhQ6CRzKRnQLUHxwDgjZN450EsqgamGWmImLY5MIWUA2
         YPZA==
X-Gm-Message-State: AOJu0YwQDeoI1c1EUqXQn4u2XTN9ig29VFMu6alohkieLIlWyDNUCufe
	3KerCMXZqC2xDHVr/F6EFuU=
X-Google-Smtp-Source: AGHT+IEua/WFR915wZmoKm8hk19cT/0O73wXX5UGg5ABN0p51b0mmwjhzlXpiVlTLsQMoPYPDDV4TA==
X-Received: by 2002:a05:6402:50c7:b0:53d:ed7a:11f2 with SMTP id h7-20020a05640250c700b0053ded7a11f2mr4792289edb.38.1697133523129;
        Thu, 12 Oct 2023 10:58:43 -0700 (PDT)
Received: from localhost (p200300e41f3f4900f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f3f:4900:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id ee48-20020a056402293000b0053120f313cbsm3652326edb.39.2023.10.12.10.58.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Oct 2023 10:58:42 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Amit Kucheria <amitk@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Jon Hunter <jonathanh@nvidia.com>,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org
Subject: [PATCH v2 01/13] thermal: Store device tree node for thermal zone devices
Date: Thu, 12 Oct 2023 19:58:22 +0200
Message-ID: <20231012175836.3408077-2-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231012175836.3408077-1-thierry.reding@gmail.com>
References: <20231012175836.3408077-1-thierry.reding@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Thierry Reding <treding@nvidia.com>

Store the device tree node for each thermal zone device to allow it to
be referenced.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
Changes in v2:
- new patch to track thermal zone device tree nodes

 drivers/thermal/thermal_of.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/thermal/thermal_of.c b/drivers/thermal/thermal_of.c
index db83596ea105..2acb65e97090 100644
--- a/drivers/thermal/thermal_of.c
+++ b/drivers/thermal/thermal_of.c
@@ -443,6 +443,7 @@ static void thermal_of_zone_unregister(struct thermal_zone_device *tz)
 	struct thermal_zone_device_ops *ops = tz->ops;
 
 	thermal_zone_device_disable(tz);
+	of_node_put(tz->device.of_node);
 	thermal_zone_device_unregister(tz);
 	kfree(trips);
 	kfree(ops);
@@ -521,6 +522,8 @@ static struct thermal_zone_device *thermal_of_zone_register(struct device_node *
 		goto out_kfree_trips;
 	}
 
+	tz->device.of_node = np;
+
 	ret = thermal_zone_device_enable(tz);
 	if (ret) {
 		pr_err("Failed to enabled thermal zone '%s', id=%d: %d\n",
-- 
2.42.0


