Return-Path: <devicetree+bounces-8578-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 63F1A7C8D25
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 20:39:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 140A4282EBB
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 18:39:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B29D01BDE4;
	Fri, 13 Oct 2023 18:39:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="URgC7WeT"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3265215E85
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 18:39:29 +0000 (UTC)
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com [IPv6:2607:f8b0:4864:20::22c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27AACBE
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 11:39:27 -0700 (PDT)
Received: by mail-oi1-x22c.google.com with SMTP id 5614622812f47-3b2b1ae4c21so500001b6e.0
        for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 11:39:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697222366; x=1697827166; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F1wTDexLYvM5LHX90F6rxGOJ9LXZcSYzdsLh84YqciA=;
        b=URgC7WeT147tzGCKEL9N8nAJIQ3Fd7vLLOF5QE6lOtCMWmtAQXAlg91H5PNyCpx3aA
         DUh+eHTHMPXU+5mvLHCPnWheJBygbvTVeKUWTpM7HpyKaaVxK3rfdtKBFXdTNDYKL5SE
         e2po/LzxRdLERfr9MlRsjQq2D0k/UlYfJaZKef5ObtVo8Bvkf8iSngc/+3Dwref/olGh
         EiP8ZcfDLmIpKiXnfiZbLJn7NS94d0VzxMp1zAdbkqxsVww3BaHsF702sYcxiUZpxOCA
         ernEwAXy9Jgv5kS1TUmnMjXxJMe4pAleLOk4VSwpVLof5HTHfiaBbvxz6WcII5hi68vr
         vXYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697222366; x=1697827166;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F1wTDexLYvM5LHX90F6rxGOJ9LXZcSYzdsLh84YqciA=;
        b=W069bubi7xZ0obd0rDn/IbuV+OezSwW3t2Fv57BrQL/K/vpBoskm1Am4p8XOvdRWXq
         j94Vc6KRutIacptM/vLSyiRbUl45u+4sM7TmlDPaPwKJ95/UR5zV8BBwMGCnfksGx4f2
         ZbkgK+6EEW2OPNbySTef6hNKcfeeBdn5MWFoctgeydBkOIZ74aaRGjRrNbFi1ZxrWQq/
         lS3ESsGqzOfvgARTwhfxUbajvLpLl87EzD2KehmHZX+IbyQdkzo1uBvVh5DwQgTq4MwV
         b+HqYhWSe8RQWCxJ6/o6pkvRN5II1YWWfdcznVQx1RvbfZxMWuhoCzss7AznTS6XLtld
         h32g==
X-Gm-Message-State: AOJu0Yy1d/9+4fD4JjM/XU7ENWVDsMpAs6InpijECarpcAkUkNpj52/7
	zbTFoLilbwYImplHia1FVYk=
X-Google-Smtp-Source: AGHT+IHdkztdQit8wuetjEnY18VnhEAH1GKxj23Osp/28dvXk64uW/pxMEBq7iAjlCbL8hSHMTdQhw==
X-Received: by 2002:a05:6808:1994:b0:3a7:366f:3b01 with SMTP id bj20-20020a056808199400b003a7366f3b01mr37101888oib.33.1697222366461;
        Fri, 13 Oct 2023 11:39:26 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id bx19-20020a0568081b1300b003afe584ed4fsm842159oib.42.2023.10.13.11.39.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Oct 2023 11:39:26 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	andyshrk@163.com,
	jagan@edgeble.ai,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	neil.armstrong@linaro.org,
	megous@megous.com,
	kernel@puri.sm,
	agx@sigxcpu.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/5] dt-bindings: panel: Add Powkiddy RGB30 panel compatible
Date: Fri, 13 Oct 2023 13:39:15 -0500
Message-Id: <20231013183918.225666-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231013183918.225666-1-macroalpha82@gmail.com>
References: <20231013183918.225666-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Chris Morgan <macromorgan@hotmail.com>

The Powkiddy RGB30 panel is a 4 inch 720x720 MIPI-DSI LCD panel. It
appears to be based on the ST7703 LCD controller (this is assumed from
the init sequence similarity between this and other displays). Powkiddy
would not share the part number or name for the display from the bill
of materials and there were no obvious external markings, so name the
panel for the device (Powkiddy RGB30).

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../devicetree/bindings/display/panel/rocktech,jh057n00900.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml b/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml
index 5ea74426b1d5..97cccd8a8479 100644
--- a/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml
+++ b/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml
@@ -22,6 +22,8 @@ properties:
     enum:
       # Anberic RG353V-V2 5.0" 640x480 TFT LCD panel
       - anbernic,rg353v-panel-v2
+      # Powkiddy RGB30 3.0" 720x720 TFT LCD panel
+      - powkiddy,rgb30-panel
       # Rocktech JH057N00900 5.5" 720x1440 TFT LCD panel
       - rocktech,jh057n00900
       # Xingbangda XBD599 5.99" 720x1440 TFT LCD panel
-- 
2.34.1


