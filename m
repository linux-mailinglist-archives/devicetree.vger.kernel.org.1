Return-Path: <devicetree+bounces-107573-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A765B98F0A2
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 15:40:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CA8761C2145A
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 13:40:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 086721A0BCC;
	Thu,  3 Oct 2024 13:39:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dLRYK08T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4F019E961
	for <devicetree@vger.kernel.org>; Thu,  3 Oct 2024 13:39:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727962752; cv=none; b=fwnUs+3UrS35cBE0Owmzar6HiQmW9X0pHpEkDZP7bwOUlWfnFKhOg+1lvjqA9BnHNxGY1/BMKa9bGothnNhNnjBijZLAwheHYiNPqnCIBzCnRjvZqjZTgv9K7+BRAwDsYIdjKgIOEAYG6Gh8Q6T4xyhtIlVEklDhBorvVqNNfk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727962752; c=relaxed/simple;
	bh=VzSta9V5C1cqiK42cJwI2HKs9wbQjH5T/cwIeM4OMfY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=j4Ik4KT9AlKbqOWisxQe/L1pFxT9wmYhtH4rxsYsqHvxlvnvAkSf+Ze5NufUGKlcxo+Q3FWmi3x6SiTyrBSqbg5I3r+3M6gSHM5/00kkFKk74Iyyx68Ogbwxhmip3nMHIcYM26xYZhlyvQjzVV/msL7n49Me+udbacRivW+K9IE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dLRYK08T; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-42ee66c2c49so1451545e9.0
        for <devicetree@vger.kernel.org>; Thu, 03 Oct 2024 06:39:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727962749; x=1728567549; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LpHq/J3IDjcJ8gOiWjTgx9yKmnZmG2Gq7uWBdxkjTTQ=;
        b=dLRYK08TsaAaksLExxJTMLDTM+/MN+K4E0IozlLp5aGewPfHgk6lu+dBrBlNdycA8b
         MgYl+Yq/SN50mBNmHw0b79fV6Rp8R6orks9ZIA0br3PlOz6SrBieWEBzAEBX5viCwLeo
         zQjWkjXHtD5MEPbdsgeFm4aFABsyOkgK1H5K9xhF31I0qQS3SyATba1JMiS7Ko4cax/V
         fH8Gfo1D8asZIR8JPzlchmfIy8xSr829JfQPwaWkfnQnq6owrJd8PF8fyIIX0pWTNRJm
         fr2lIr+g91zTXIFk2jd0Nw+/UgeYLUdK3h1ESM1lX28YdKQBE96sNywrewow0P4zmMj4
         69jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727962749; x=1728567549;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LpHq/J3IDjcJ8gOiWjTgx9yKmnZmG2Gq7uWBdxkjTTQ=;
        b=VabBp+ZmwFm7jST7SrmLp7FBTo/uM2Xd4ZQWH151Cw1V+Um40zM/r7lWzLe0cPuH7C
         p+g2WDp2FoHTW+xhS0hEPNXRZJB/0FJH4o+zzTfKkdUC52I9PglhMMjccoTJEkD8W/AE
         xPd/Vtqo5mrcygCidki4dNu7lV5+8HNJUNbGdb03afKoDu2YWYSRXd0cz6caPM6SwRlO
         G2BBy/rsDUECGZKVcSxP7NgDyf3nSA1ElqD8Sa6GBSWADMsvHhHsK5W2ze6s4O6bKjDA
         0zS9DctTGN+8X1W3v1CLxhrpvRAPxx3OuIupfiJNVdn2C8RG7Lw6oKfkt/etSUgI4nV0
         2pGQ==
X-Forwarded-Encrypted: i=1; AJvYcCWhlohbYfhsDjkxmy0bXPCb6Qs7KPLeqRew0q2pnn1yKNq+MvvrVkYDZwTbRZhJec/K2B0+86GMOmaw@vger.kernel.org
X-Gm-Message-State: AOJu0YwUJgVauPCijJ/qgZeRWxlEgfIirXZjGcf2wCnWpamW3LvotiRq
	8X8Ld0OUNbBhW0YOjHjPPU9OqgETtAPJMrOY1dkF5BQ2fne3hPDqNPV8AZUYWrY=
X-Google-Smtp-Source: AGHT+IFWTXK0ViIYWsLrZXvGf6PeZh68dHrkAm4tox/WVbjEwPOH8BVhinIYArqYc8wFTmujgq+B0Q==
X-Received: by 2002:a05:600c:4f06:b0:42c:aeee:e603 with SMTP id 5b1f17b1804b1-42f778f3858mr24685985e9.7.1727962749567;
        Thu, 03 Oct 2024 06:39:09 -0700 (PDT)
Received: from krzk-bin.. ([178.197.211.167])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42f8025b583sm15906875e9.12.2024.10.03.06.39.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Oct 2024 06:39:09 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Peter Ujfalusi <peter.ujfalusi@ti.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] drm/bridge: tc358768: switch to bus-width
Date: Thu,  3 Oct 2024 15:39:04 +0200
Message-ID: <20241003133904.69244-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241003133904.69244-1-krzysztof.kozlowski@linaro.org>
References: <20241003133904.69244-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

"data-lines" property is way too similar to "data-lanes".  It is also
duplicating "bus-width" from video-interfaces.yaml schema.  "data-lines"
was deprecated in the bindings and "bus-width" is preferred, so parse it
instead while keeping things backwards compatible.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/gpu/drm/bridge/tc358768.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/tc358768.c b/drivers/gpu/drm/bridge/tc358768.c
index 0e8813278a2f..fc96fa5aab54 100644
--- a/drivers/gpu/drm/bridge/tc358768.c
+++ b/drivers/gpu/drm/bridge/tc358768.c
@@ -443,7 +443,9 @@ static int tc358768_dsi_host_attach(struct mipi_dsi_host *host,
 	ret = -EINVAL;
 	ep = of_graph_get_endpoint_by_regs(host->dev->of_node, 0, 0);
 	if (ep) {
-		ret = of_property_read_u32(ep, "data-lines", &priv->pd_lines);
+		ret = of_property_read_u32(ep, "bus-width", &priv->pd_lines);
+		if (ret)
+			ret = of_property_read_u32(ep, "data-lines", &priv->pd_lines);
 
 		of_node_put(ep);
 	}
-- 
2.43.0


