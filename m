Return-Path: <devicetree+bounces-70783-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C916D8D4739
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 10:36:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2893B2842CF
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 08:36:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3698F6F2E8;
	Thu, 30 May 2024 08:35:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="mb7kFP4k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C18473DAC06
	for <devicetree@vger.kernel.org>; Thu, 30 May 2024 08:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717058136; cv=none; b=H7rIc95hCsVGpPIqV8NY+G3sZnu0CTmyabx+1WH7dnaeKnXVooxl9Pyp7q/nOazGCJPkpd+GzZIeK+LWKWp3NLVKM3dr/jbjYRlM75QQXU2TwccxeS3b71qeFmmqcNMBP3hWs7sB9dquphHrqGAx8aWTeRK51+mH500TaIrIrw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717058136; c=relaxed/simple;
	bh=2jqS2JCggZmT/Bgw5cZ1HuqlhOXJkBLK/dNVeJwD90I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Rv/IXwt4G0lmBWaz4PKQh+ZV4nxcz3+gkRsrCQcewrkDiI46ct5ySvsxJUh5LzpV5goLeIGlb2Cx8cmk9LZHBwl30H7luozBmvJm29aoKx6tlfXqlW83xNsFW2VAyIo7iw4KcPsLVNuoYFsdy0tkz9qkzUCzyOLR+XIU2/pTU/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=mb7kFP4k; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-1f480624d04so5934285ad.2
        for <devicetree@vger.kernel.org>; Thu, 30 May 2024 01:35:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1717058134; x=1717662934; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IHkwqtBAKIh1FT18Wf08tYxtDsD9mBo3yYE6cpTa5lo=;
        b=mb7kFP4k07RT+0hqjti94eOC+fepMqNXnLQDy6aPVIElQIzcv6GHqSAijgaBmZp1ak
         pxepHxhfiA7gG3LQAZfh/Dc/VDsTSQzrsqYtP036OYsswtaO/JQbdLLsE8uqt4miEeXc
         Gl0AEhXWLLMOdQwroO55iN2TI68cL5VELo8Hk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717058134; x=1717662934;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IHkwqtBAKIh1FT18Wf08tYxtDsD9mBo3yYE6cpTa5lo=;
        b=lN6XlQbQALQtxjU6p8DKNFy5NCTHYC3xe5L7BKl1+akow98vN8+b6nCJVe+W9ddLyu
         m1xOSZdH2G2lLCyyU8m7P1Cxk6o8xQzu4ta1+uyuoCODiXSFgI0MVCNF71T7fkFSYjsS
         JDtHs8rywspePKy+X9d3wVPLsn/T7mSw5tWWkaejAcnLOSu5V2y1Po4eYcItSQRZc3Vg
         67QAiu+sV+rMB+Udk4zenrL1t0qoH17F/Eo4+tEmYFbttkBx+pIz34rZoNEaNwhkxbof
         MC8Vyine6NPIW0Wh8Yd1qZ05mo0C3DfBRsxTO17OpQQNCsAaaBpLEgCeJnj83Y8fWwv8
         2BvA==
X-Forwarded-Encrypted: i=1; AJvYcCUpLBtPAEwjbLIGLCH+JO4KV+KH+DbFCDBgXQ3wbJqodauV9HMpRmwK+NBi5Ybbgmb4D4bEIckOPxqTj00dheWAxoISASRtwSPqXQ==
X-Gm-Message-State: AOJu0Yy003ZWE3Ngt6DdYnB5FMJt6MAbj+S2P9UItqy6XoxpYk23thYm
	JxgSPk3vQi8dnnZ9nxj4NRf+/NIyM590C5xo5ACmrR0ENDqUlUhlRULzG00L1Q==
X-Google-Smtp-Source: AGHT+IGaMXKlAuHj3tKDXFrEymwDvO07A1BRFroXZlN02EvX5mN7HsOfQHvylgHcYJoSPTNjRI9s+A==
X-Received: by 2002:a17:903:2095:b0:1f4:768b:445e with SMTP id d9443c01a7336-1f619605ee4mr11933665ad.24.1717058134222;
        Thu, 30 May 2024 01:35:34 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:65f0:63a9:90bb:50b8])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f617390fe7sm10950635ad.146.2024.05.30.01.35.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 May 2024 01:35:33 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Frank Binns <frank.binns@imgtec.com>,
	Matt Coster <matt.coster@imgtec.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	dri-devel@lists.freedesktop.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 4/6] drm/imagination: Add compatible string entry for Series6XT
Date: Thu, 30 May 2024 16:35:03 +0800
Message-ID: <20240530083513.4135052-5-wenst@chromium.org>
X-Mailer: git-send-email 2.45.1.288.g0e0cd299f1-goog
In-Reply-To: <20240530083513.4135052-1-wenst@chromium.org>
References: <20240530083513.4135052-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The MediaTek MT8173 comes with a PowerVR Rogue GX6250, which is part
of the Series6XT, another variation of the Rogue family of GPUs.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 drivers/gpu/drm/imagination/pvr_drv.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/imagination/pvr_drv.c b/drivers/gpu/drm/imagination/pvr_drv.c
index 5c3b2d58d766..3d1a933c8303 100644
--- a/drivers/gpu/drm/imagination/pvr_drv.c
+++ b/drivers/gpu/drm/imagination/pvr_drv.c
@@ -1475,6 +1475,7 @@ pvr_remove(struct platform_device *plat_dev)
 
 static const struct of_device_id dt_match[] = {
 	{ .compatible = "img,img-axe", .data = NULL },
+	{ .compatible = "img,powervr-6xt", .data = NULL },
 	{}
 };
 MODULE_DEVICE_TABLE(of, dt_match);
-- 
2.45.1.288.g0e0cd299f1-goog


