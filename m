Return-Path: <devicetree+bounces-116419-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id F030D9B2CDB
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 11:27:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 61B47B23060
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 10:27:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62D851D9334;
	Mon, 28 Oct 2024 10:26:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="HcJO4w9c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70FC31D89F7
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 10:26:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730111184; cv=none; b=Al6opJCaal26YEGNJTVgIXaemBmH0CGmuI9bueH9vDjP4huIpdl85PaWB6AZ8IAVjroBOa0G0DjA2ZIiehHWrk5Lp6k23UFiuYDT1eH6eK81Mrrg9ZpG2+RbXl/9CbaQxPt/KKNcGkuCPvWd5KK3u+MDr/r8okrIPMjP/fFFeUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730111184; c=relaxed/simple;
	bh=Vu9YzuIAIwoP+4gLmF6pDw8tNbaMFSbq7jA1Qh9tO4I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JSOyUnAKggMCVnh0MqZINasykbt/msL0JW38RF62jbUyXwK+Tdx667xRn0sBh2P8+W+rGY24TqsGhFW8H8meLwl+vAUrz1okVTWE7Z4YKY9URGHRIVaSWtiyQJrQgIgkq9BK0IlYuyD+EIQVhwPVgnt8LcUQRJAilNqjxYVmf/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=HcJO4w9c; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a9abe139088so606351266b.1
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 03:26:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1730111181; x=1730715981; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ub+YOxTaEj8h3/OEhQEBYuD58+vmy3bTawAxFBvQf9I=;
        b=HcJO4w9cWrQA/EJcWcmZ61Ho39MlZQKxPsCmAJN/uD1Pn0NZytvf7euciE8pBfHuiO
         4YQP7fHaRkD2Q96QTQNDi2+7PzxK6zXupMWQrF974TGFWk+Oj6zN5BAwxhJz+uXd9MjL
         m/oLS92rT7JTGznoiox3VAvLfHylhK+g+BSpM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730111181; x=1730715981;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ub+YOxTaEj8h3/OEhQEBYuD58+vmy3bTawAxFBvQf9I=;
        b=VxfutGHYsKJWJelGYWOYbEzNRMMc0Vc9z//JWWTg+a+EQsnbHJkvEt9Y0VtQwFbVhT
         O9YDaBiA7mAqhpjObO/I83gHQBZ1knuH3ubfvXUp41DP7UAFYME7S6GJ4TOb2e4rSfzW
         YNCP9u7wKKH7vBDT42+II+OelFcKT6Bn/YMtS/Ki+4qKkTNo7Sc4Nqr5PbMC2HgKbtBn
         jkBVcjw8ceaadKQ5aLc50oGEXAKUmNk5gS6/PG0h7rdlTVQOizRZgenJUn/5ZAnjUgYW
         znMJeM1s6dKMqlUCT4A9BeCmx6N++SvkO/MPiDidn0pxtDdBraxs2s+MgKH2HXBfq7sa
         UXGA==
X-Forwarded-Encrypted: i=1; AJvYcCUrJEtXJjTrZHnDhcv1dUboCElb8xnZCm/WpoN0s8xMh4X6A2WwI/Y8oDplocUZ+QkA2UHgMBetAhOY@vger.kernel.org
X-Gm-Message-State: AOJu0YzEPOaHTh69Ta+7h3CDg9cUm/ZJ0QNsJSmxdOOxZ1vbIih23jUO
	U9jMdmMa5F9iDtbhjCzbbGnm++NQexewDcqtqg027JKF6vbo33Q59QIY/0xpQHE=
X-Google-Smtp-Source: AGHT+IFjWfGueG7DeWkg63IGIF3kssQUY3V3Yt1YYtp6Z+uW3KJqsSXoNAzX7zrD1vHGbOebgF05zQ==
X-Received: by 2002:a17:907:3f9d:b0:a9a:1160:993 with SMTP id a640c23a62f3a-a9de5c91c9dmr860387966b.8.1730111180788;
        Mon, 28 Oct 2024 03:26:20 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com ([2.196.41.121])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9b1f297b04sm363613966b.134.2024.10.28.03.26.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2024 03:26:20 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Inki Dae <inki.dae@samsung.com>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Maxime Ripard <mripard@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Robert Foss <rfoss@kernel.org>,
	Simona Vetter <simona@ffwll.ch>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Subject: [RFC PATCH 07/10] dt-bindings: bridge: samsung-dsim: add 'samsung,boot-on' property
Date: Mon, 28 Oct 2024 11:25:30 +0100
Message-ID: <20241028102559.1451383-8-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241028102559.1451383-1-dario.binacchi@amarulasolutions.com>
References: <20241028102559.1451383-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The property states that the bridge controller has been initialized and
left on by the bootloader. This information becomes relevant in the case
of supporting the simple framebuffer.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

 .../bindings/display/bridge/samsung,mipi-dsim.yaml           | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml b/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
index 4ed7a799ba26..34cd93bc41f9 100644
--- a/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
@@ -132,6 +132,11 @@ properties:
             dependencies:
               lane-polarities: [data-lanes]
 
+  samsung,boot-on:
+    description:
+      The bridge has been initialized and left on by the bootloader/firmware.
+    type: boolean
+
 required:
   - clock-names
   - clocks
-- 
2.43.0


