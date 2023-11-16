Return-Path: <devicetree+bounces-16100-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CFEB7ED86B
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 01:17:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D2D871F22BB1
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 00:17:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01F4B656;
	Thu, 16 Nov 2023 00:17:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JwTB5/cM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com [IPv6:2607:f8b0:4864:20::32a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42452187
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 16:17:49 -0800 (PST)
Received: by mail-ot1-x32a.google.com with SMTP id 46e09a7af769-6ce327458a6so131492a34.1
        for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 16:17:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700093868; x=1700698668; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U0mEsiNdPfHU/4JTiWw+15A4V1CJWyMXbRELX83ScM4=;
        b=JwTB5/cMXFKSoEgaXAfWqhkUQIj/j97yrruW8YvC/nMRECPMWf1CcMMykHCyeH+g0P
         6f1ONulwWkmcJEvicrjVLZeM6HunxgxQXyacMcQ7hRpFJnD9Fz1TvJb2OdvZjfpGOQl2
         IUNo4WTRbNa7+sOQd2HqBt9XVnRquBHW4vKpayBw5/fekPjEjOqzjR9T/ZumGQFGApdA
         WHh9LmDXvIg6mTlE7iZMJ/8Ka2l+X2w9k9dmBgLF48dLarbP2rCU7258IScccQJcWE1T
         708VbfEAKg0V0l7WuXo8+j2SqS169yjQiNUX6eqremPfboogrLDoSCIzZaWCRwCNEmZY
         X+Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700093868; x=1700698668;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U0mEsiNdPfHU/4JTiWw+15A4V1CJWyMXbRELX83ScM4=;
        b=AHN0t4vPPtGABafBUK2LWxjtCX6zqsKJr4eMOpiegpn7EZkzyt7rzjYdbo7l2uTpQT
         ixNgX/i4v2Prfqsx+3zEB3l4lfKPVe+G7KlU6dYzMhBorqHvqEi0KqgU+/m6p+XebdXo
         jE0dSdhIzqgg0My6BpC03vSpDrTCsdVOWhu3eyrIqg+SyWf14HfZYc0f3+orH5CQQj6n
         ruSGJ8gXwp66hOUFxLvqllKPUli8eK6Z4ExhNkxWrRQHK00thEpCnC2zvbxRd6PVw8jF
         tJsCXb30TWtGRHCdghTdP4MK/ybV7PsmRXHIpk6h8Sn84iFkoxNTF2G+CmGSjt90z37T
         +cJA==
X-Gm-Message-State: AOJu0Yx1R2TZaVLTR5/f8EroHWgzvMdI6fdOJn9y23qWkvO/ih6IFTK0
	US8qydPWsU5ooy05wzuebF0=
X-Google-Smtp-Source: AGHT+IEWe51vXJ2DhIHJ7URCfodlJcoGklKewxeM5wtzw2YWENnAh582QPOTBc2Ex3kEBpeQszEIcw==
X-Received: by 2002:a05:6830:43a4:b0:6bd:335e:1eda with SMTP id s36-20020a05683043a400b006bd335e1edamr66302otv.11.1700093868511;
        Wed, 15 Nov 2023 16:17:48 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id j18-20020a9d7d92000000b006c619f17669sm727117otn.74.2023.11.15.16.17.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Nov 2023 16:17:48 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V3 1/6] dt-bindings: display: panel: Update NewVision NV3051D  compatibles
Date: Wed, 15 Nov 2023 18:17:37 -0600
Message-Id: <20231116001742.2340646-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231116001742.2340646-1-macroalpha82@gmail.com>
References: <20231116001742.2340646-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Update the NewVision NV3051D compatible strings by adding a new panel,
the powkiddy,rk2023-panel, and removing another entry, the
anbernic,rg353v-panel.

The rk2023-panel is similar to the rg353p-panel but has slightly
different timings so it needs a new string.

The rg353v-panel is duplicate to the rg353p-panel, so remove it. No
current devices use it and changes to the driver mean it is no longer
valid as a compatible string.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../devicetree/bindings/display/panel/newvision,nv3051d.yaml    | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml b/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
index cce775a87f87..7a634fbc465e 100644
--- a/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
+++ b/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
@@ -21,7 +21,7 @@ properties:
       - enum:
           - anbernic,rg351v-panel
           - anbernic,rg353p-panel
-          - anbernic,rg353v-panel
+          - powkiddy,rk2023-panel
       - const: newvision,nv3051d
 
   reg: true
-- 
2.34.1


