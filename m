Return-Path: <devicetree+bounces-30358-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A6682790C
	for <lists+devicetree@lfdr.de>; Mon,  8 Jan 2024 21:17:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 301381C23087
	for <lists+devicetree@lfdr.de>; Mon,  8 Jan 2024 20:17:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE61E5577B;
	Mon,  8 Jan 2024 20:16:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="OcU+N4K8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A1F256441
	for <devicetree@vger.kernel.org>; Mon,  8 Jan 2024 20:16:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-557dcb0f870so910564a12.2
        for <devicetree@vger.kernel.org>; Mon, 08 Jan 2024 12:16:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1704744988; x=1705349788; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uPj6dK4Y6vsktwHdkLF/o85MNUXF5Ogkk69ytI2SuLg=;
        b=OcU+N4K8XQ9L8CBeZd7kbLR0weNxCjMlJx7hxPGbG3Y5yAS0+s0/xWcs/hsKtQnzHu
         cisH8c7sEXdunEKTxcH/zJYpGCHG8+HgbQcItNRE8LmdfBGQPIBC5A123+ZqbLdApLlb
         kgA/idQAMGn13SmvAAJD4Hc+aOOQW8EQdJBIs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704744988; x=1705349788;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uPj6dK4Y6vsktwHdkLF/o85MNUXF5Ogkk69ytI2SuLg=;
        b=GwSopRnvk2u9d+nPhUdSs2yLDyVcGViaK6MjjGv7rOr7OkSPK52xpUd44aVZ3aJU5K
         Js6NPJk3SLa/G5mHzCZxFDX/wlm2tNzUdJoBIoUmervggO7YVpgiqUAAZa2SmVqEF5FL
         XIFTrsQTo6X1aa+yuq7tiBIfqk23kT88op246tdXWNZpMV34IkZCNTuhs4VqdzAnMiLQ
         UlGSnlRfztX9OxNZZNPOHYI3YSgJWgCrN8qPP4O8TEKmA6Ie9MWk2uhjQHJHp6Zq55i2
         PHvrBDA5GD8oG8jhQO8fzD7sM/WVVniPgTKhofo+384hrF7OT/qwvcCKJMD/vmvxFtKL
         V/Fg==
X-Gm-Message-State: AOJu0Yz2Y66hQ3TGSvGh7N5YtMQDw7EZyPPxRgoR9udy6AJAQM9KoLCa
	aBUEthV39jvPVunqds97wCMiZqL6etUcyw==
X-Google-Smtp-Source: AGHT+IGrVO/mj2lDXlfdaxVxV7Vk6MkhS7TNruVIj2gBo7vMSKctLqbruq6TfuxXv46NP1kfhsXTgQ==
X-Received: by 2002:a50:d55b:0:b0:557:6401:e7c with SMTP id f27-20020a50d55b000000b0055764010e7cmr2320287edj.18.1704744988646;
        Mon, 08 Jan 2024 12:16:28 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-87-2-38-81.retail.telecomitalia.it. [87.2.38.81])
        by smtp.gmail.com with ESMTPSA id by26-20020a0564021b1a00b00555fd008741sm173699edb.95.2024.01.08.12.16.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jan 2024 12:16:28 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Sam Ravnborg <sam@ravnborg.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v5 5/8] dt-bindings: nt35510: add compatible for FRIDA FRD400B25025-A-CTK
Date: Mon,  8 Jan 2024 21:15:50 +0100
Message-ID: <20240108201618.2798649-6-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240108201618.2798649-1-dario.binacchi@amarulasolutions.com>
References: <20240108201618.2798649-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The patch adds the FRIDA FRD400B25025-A-CTK panel, which belongs to the
Novatek NT35510-based panel family.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

---

Changes in v5:
- Add Acked-by tag of Krzysztof Kozlowski
- Add Reviewed-by tag of Linus Walleij

Changes in v4:
- Put the "enum" list in alphabetical order

Changes in v3:
- Use "enum" to have less code changed

Changes in v2:
- Add a dash in front of each "items:"

 .../devicetree/bindings/display/panel/novatek,nt35510.yaml    | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/panel/novatek,nt35510.yaml b/Documentation/devicetree/bindings/display/panel/novatek,nt35510.yaml
index bc92928c805b..a4afaff483b7 100644
--- a/Documentation/devicetree/bindings/display/panel/novatek,nt35510.yaml
+++ b/Documentation/devicetree/bindings/display/panel/novatek,nt35510.yaml
@@ -15,7 +15,9 @@ allOf:
 properties:
   compatible:
     items:
-      - const: hydis,hva40wv1
+      - enum:
+          - frida,frd400b25025
+          - hydis,hva40wv1
       - const: novatek,nt35510
     description: This indicates the panel manufacturer of the panel
       that is in turn using the NT35510 panel driver. The compatible
-- 
2.43.0


