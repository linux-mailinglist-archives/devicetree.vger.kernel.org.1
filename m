Return-Path: <devicetree+bounces-2157-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4307A9CBF
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 21:24:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 34A6CB21BC9
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:17:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD95F4B202;
	Thu, 21 Sep 2023 18:11:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4FFE4B208
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 18:11:01 +0000 (UTC)
Received: from mail-yb1-xb34.google.com (mail-yb1-xb34.google.com [IPv6:2607:f8b0:4864:20::b34])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23BFCA75E6
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 11:01:12 -0700 (PDT)
Received: by mail-yb1-xb34.google.com with SMTP id 3f1490d57ef6-d84d883c1b6so3517604276.0
        for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 11:01:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695319272; x=1695924072; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gGhQthT64pdSxzZ5aTBXuH64J4biaW8ztdfRr2G2cDM=;
        b=T8IkynlTNS3kruKVDftrXKxmsJXWPFO46F7Sh/PlOOqZvdFDYEDGOipL6BgfHW1VUN
         /d1uW9yXitBmseBG/697D2smEp0V9VzNAp8nmU85bKtqtlxYQzf37ugCZajXKPqeba+g
         jz1PaEXzYF4GJRQer0hGcO+44+ZjTjLiUJIzTcTi8Lv14ZO4bTq7hL8xKl+3dk1EgEm4
         iVP0glIYlq/AtJyLS5GvbNI7AOUet4vLNtaixZRAWW2YWokA5sm8kRkQUaBgir4E3gHC
         BU27vUq5PtP9vdZ8SMrvpos9+6ijYBdGiHnyK8Nhz1pSGv5C5fSZhEPEbFktpmK2FmSs
         StMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695319272; x=1695924072;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gGhQthT64pdSxzZ5aTBXuH64J4biaW8ztdfRr2G2cDM=;
        b=ATGAsAvkwoFTTstRs2j3VZhMo8/AYv5GlH2RQShzY7Shg12Ub71wGgJ+d3gD06Qgzi
         Oh2LztJQ/S2GzYU3R1UQO0pafzgCoEoBJTi2+EG5cMHhFTk/FUsHkqi2SccANlk2u9I0
         xd4/Pg5jWGMcSOjR/mNpK9IcI8A9m843NoN+5uq0LCtaMSI5gLLjbzhQzuNSiS8Ap+b8
         EJ9V8w7H0eogmhEJQCzddv8MJTrBWgm4efzBcaZtgrqitsUO4NFyMItVY+pdUiHfqu26
         D3Mwelxpdi3wZx5ky1FpuY1ClmPp8SjGQMCx/o1WfR5WXcBDhNX6UgOXRGjQBiuOQ3NJ
         L5PA==
X-Gm-Message-State: AOJu0YwNMgIPiOWiZMFbQgHrkeP2UNyCE3LPntQARsml5d4//wCNHIqP
	rlETqVQhe8VNeIy0Sy1buyNmgN68JtM=
X-Google-Smtp-Source: AGHT+IFQVVG38WqZPkPmlbr3yI27dO0u1qCiqzelHFDwYcdOfrEBXKSAnbit25UR1O5vmrNYQEj09w==
X-Received: by 2002:a05:6871:282:b0:1bf:42a8:2cd2 with SMTP id i2-20020a056871028200b001bf42a82cd2mr5550149oae.25.1695304303940;
        Thu, 21 Sep 2023 06:51:43 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id z19-20020a056870e15300b001d7034bc222sm547064oaa.15.2023.09.21.06.51.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Sep 2023 06:51:43 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sunxi@lists.linux.dev
Cc: devicetree@vger.kernel.org,
	mripard@kernel.org,
	uwu@icenowy.me,
	samuel@sholland.org,
	jernej.skrabec@gmail.com,
	wens@csie.org,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	andre.przywara@arm.com,
	Chris Morgan <macromorgan@hotmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH V5 3/4] dt-bindings: arm: sunxi: add Anbernic RG-Nano
Date: Thu, 21 Sep 2023 08:51:35 -0500
Message-Id: <20230921135136.97491-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230921135136.97491-1-macroalpha82@gmail.com>
References: <20230921135136.97491-1-macroalpha82@gmail.com>
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

The Anbernic RG-Nano is a portable handheld console from Anbernic which
uses the Allwinner V3s SoC.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Andre Przywara <andre.przywara@arm.com>
---
 Documentation/devicetree/bindings/arm/sunxi.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index e4dd678f4212..1929a0a475fd 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -51,6 +51,11 @@ properties:
           - const: allwinner,parrot
           - const: allwinner,sun8i-a33
 
+      - description: Anbernic RG-Nano
+        items:
+          - const: anbernic,rg-nano
+          - const: allwinner,sun8i-v3s
+
       - description: Amarula A64 Relic
         items:
           - const: amarula,a64-relic
-- 
2.34.1


