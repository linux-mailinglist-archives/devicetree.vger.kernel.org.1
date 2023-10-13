Return-Path: <devicetree+bounces-8580-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DF4E7C8D28
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 20:39:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 191B3282E2D
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 18:39:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74A091C29F;
	Fri, 13 Oct 2023 18:39:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SfnuHlAV"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 088A11B296
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 18:39:30 +0000 (UTC)
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com [IPv6:2607:f8b0:4864:20::22c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8308ECC
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 11:39:28 -0700 (PDT)
Received: by mail-oi1-x22c.google.com with SMTP id 5614622812f47-3af6cd01323so1426755b6e.3
        for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 11:39:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697222368; x=1697827168; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GXvtOEtJnfXimkkSuTA6yQu+NLR704L5IFi4fq/Sctw=;
        b=SfnuHlAVDyfnRYDJAQaSwIEc/5wSuqICpJVg/DtkZDH2iSP+VJDx2VFS4duoWCA6Bv
         wezUYYyroy+huEGIfLS9KobRazpAxAN88EXhSVgBcayieROffWcoYdwUyBqSugT/56lD
         s9+9LJUm/sH+V62+Quae9ADf8h3K+xpw4IOWiE2Ma6iILUD+Sa7IXydUBVCvjtGXF0LY
         phf4pIY+TSCvOTjybRy8e3uCtDDDKaHEbR1z6GkeidtV5kscDp4y4FV+1G1submUP8nx
         r8JmeUTjNBT+xQL8JkSMRrKMd15Of2McOO8CgKuY+TqwNoctr5w2IT60R2xNOJO2EbBa
         ZpgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697222368; x=1697827168;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GXvtOEtJnfXimkkSuTA6yQu+NLR704L5IFi4fq/Sctw=;
        b=WTzzX3nxRHrGYXhvbBTtcUd7Vk+k+xSdA3Fv264Kw0Fglo1rb9do32Tq/7oUWFMHYR
         rAJc5YXQ1FxT3HDWzVx6dSnrAaBAF+QQHFe4bzg1gcVpFGUDGgu4Xsxv9zoMxxzbKpkN
         prI9h84i8lUleWyc8I31yLqpPPArQTJp1D5SvVWJM1By5J5BzgC8hmrJvxoN4MkQHu4U
         qbNS67kNDIG0pWrFtCfKsggRFK7PZZO5hyZNX10FWMzOf0sb62eMXuJQZX5cqpkenbTd
         wTpsBKZZ7yTb0M4Wzw26JmS7RmLGGtpT2o0Wj4+FdClU7LFFlsULiGjclZdmOA6cWGDv
         HKeA==
X-Gm-Message-State: AOJu0YyhcPaaCFG8lpe35gHF7EG5H0qqQFAPhzbebPNFV7F7RqXLfExl
	uCEI+oiMB0q7mfJQ78eNHTQ=
X-Google-Smtp-Source: AGHT+IHLCQbzkeoiVhX2wJ/317UY9cBFnl7g/HRg+swF0MvMpIM8vSagJfZ0IQEo3cfxpthCYJQz7g==
X-Received: by 2002:a05:6808:10ce:b0:3af:66ef:3566 with SMTP id s14-20020a05680810ce00b003af66ef3566mr37525952ois.33.1697222367844;
        Fri, 13 Oct 2023 11:39:27 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id bx19-20020a0568081b1300b003afe584ed4fsm842159oib.42.2023.10.13.11.39.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Oct 2023 11:39:27 -0700 (PDT)
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
Subject: [PATCH 4/5] dt-bindings: arm64: rockchip: add Powkiddy RGB30
Date: Fri, 13 Oct 2023 13:39:17 -0500
Message-Id: <20231013183918.225666-5-macroalpha82@gmail.com>
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

The Powkiddy RGB30 is a portable handheld console from Powkiddy which
uses the Rockchip RK3566 SoC.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ca5389862887..a349bf4da6bc 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -669,6 +669,11 @@ properties:
           - const: pine64,soquartz
           - const: rockchip,rk3566
 
+      - description: Powkiddy RGB30
+        items:
+          - const: powkiddy,rgb30
+          - const: rockchip,rk3566
+
       - description: Radxa Compute Module 3(CM3)
         items:
           - enum:
-- 
2.34.1


