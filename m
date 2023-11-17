Return-Path: <devicetree+bounces-16755-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 617C47EF8A0
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 21:25:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B5108B20A19
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 20:25:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C099845BE2;
	Fri, 17 Nov 2023 20:25:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JY+Q3yhd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-x33.google.com (mail-oa1-x33.google.com [IPv6:2001:4860:4864:20::33])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6253CE5
	for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 12:25:42 -0800 (PST)
Received: by mail-oa1-x33.google.com with SMTP id 586e51a60fabf-1f00b95dc43so1269292fac.3
        for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 12:25:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700252741; x=1700857541; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zdohJSSxu6R2IQkqngPHjD/jgRugE1Q5UgLSO6dMmUE=;
        b=JY+Q3yhd5NKnb3QQTiOou2+U6z6bRDddKAX3riGSOLJTMXuPjY0rvwlgvLrw1DXkZf
         kpK4mGel5e33PLg4DQd76nDQBuXYyOv23QSMs5naX5zT58j6BTbtzJE/Lh2AOojxKm0X
         6XJlVoH/xDS0c78CjH4oLL72eZEh+a5186jvUnAuEHkJ0LwBvCzP8ztoI7TonYoIyAV1
         joGTEHl5EDI5l5r7MjXjH2vCLxRTnrCkqvy8prYBKLV+gq4tydtpAcRZ9R9qP6HxnAS8
         2uc9jUPXCr22kyUqsnyrVNBzJTwdlx7PtySrFZlSyDJh2GCG7DxiDBB/tD6UhxhP6cj7
         69Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700252741; x=1700857541;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zdohJSSxu6R2IQkqngPHjD/jgRugE1Q5UgLSO6dMmUE=;
        b=HQc0gbYshJalczysJq3ycsC+BH9ChYPIxmbxF3f8xw7uWFKOkYnvvYHV2TKVpJB22p
         KKycnrO/IYEwiLIebAKG0kCHyEa8gJ/3sm0EUfXYmewQaRr6++YaVq4jaML/HBbGgkN0
         riSP97GOSOzYBSh8+aC3qkiJGUMm/F0933dvYWZg/ykbwqYtnsPTrmeiUWb+dChs0dHv
         s2r9lE4hUbhkbzHNQZjM5qq7ydgjzzClcIqPYvg7kgrj2qxOJIxv7INuX8uE86LJOECa
         PX3pN4xZijwkdL3S72ZUE+aMK4MlljEzLpmMW49x9DZ643QIXyjVM1lH9Zke5kyKm92P
         YKMg==
X-Gm-Message-State: AOJu0YyNRrV0pg7iJaIPq/ugb7oRCQfLYXRfc8sHrqcVcvpJWIAk7AYX
	5cxeZ4xTMDD7z50tDvN9cuTA72WdrTM=
X-Google-Smtp-Source: AGHT+IF/yt9dEaZWhi4mZicImR1N5hTEhB+CzKcWKeOzEjkanoOQZ9pV2ESy2ImEevPX82DHfviYSw==
X-Received: by 2002:a05:6870:9c8a:b0:1dd:4271:3a88 with SMTP id pq10-20020a0568709c8a00b001dd42713a88mr267739oab.58.1700252741658;
        Fri, 17 Nov 2023 12:25:41 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id zf15-20020a0568716a8f00b001f224cbbde1sm390543oab.41.2023.11.17.12.25.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Nov 2023 12:25:41 -0800 (PST)
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
	Chris Morgan <macromorgan@hotmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH V4 1/6] dt-bindings: display: nv3051d: Update NewVision NV3051D compatibles
Date: Fri, 17 Nov 2023 14:25:31 -0600
Message-Id: <20231117202536.1387815-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231117202536.1387815-1-macroalpha82@gmail.com>
References: <20231117202536.1387815-1-macroalpha82@gmail.com>
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
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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


