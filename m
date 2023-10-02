Return-Path: <devicetree+bounces-5256-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DC5507B5B4A
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 21:30:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 39D4CB20DD1
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 19:30:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BBF91F94E;
	Mon,  2 Oct 2023 19:30:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E90CE1F946
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 19:30:24 +0000 (UTC)
Received: from mail-oa1-x36.google.com (mail-oa1-x36.google.com [IPv6:2001:4860:4864:20::36])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 369D3B4
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 12:30:22 -0700 (PDT)
Received: by mail-oa1-x36.google.com with SMTP id 586e51a60fabf-1e10507a4d6so61565fac.1
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 12:30:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696275021; x=1696879821; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9iDaa4X1Y5jbfjT705OCLqkQocAlwvZHx6AeV5vDqY4=;
        b=ipuwDMeMPF5g/lo8U/jHCAMGIMXZ9kXlHQzQTWTwT7DwxbVqEcWfSRylwR3ztqdle4
         D5fpLQmwf2FLGLz7Ju4iEeT9AGKEyy0YNpwt0HlJQ210S3iMsj+VDFI82cMpnSDn5PpG
         nOrq3Ij3q7kVTB+TNkwk680yNpJEpQCIwlnw1FI8HJLoAEbCTD54NN3tHL4Hq3sdG2rd
         ehFoxDeF1ichC7EsSaEDkRESCxzhLZGWeZE/oNuBMWjaNWqePEpdvSwOH9z1Q5Dd5mGh
         oty8Dfklxj65sHxml4Cn3RTzYxg1XOiDDJpIy03nhmI5bfwTrSlouBv+B5uTVc2HwjXY
         cBLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696275021; x=1696879821;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9iDaa4X1Y5jbfjT705OCLqkQocAlwvZHx6AeV5vDqY4=;
        b=Nm7wzcxkmbcEVgDATgRi+lrCkbgILEX7/SQjgH6mtVS2PwXG91lkeTf/6LOVHyL3ih
         3t9pU/x7pBIsuWsJKRzW+jrsjlz6+ZnOwxBvxUD0Vuq96QIcL0QyCD7tmk1FRDYVC4kb
         3ZWGNkYS2HNb8v4mTy59z84Z8exty4HytSq2IMoDSnmn/BxUT3tma920EsO6tl/dB3cq
         c3lpfzoe6GXihXyrbPshiU/JHG2qtIUD62lYhYXtKg7fzrMti5q2iC9sQ0uox1y9UByE
         4/L/JSVj/eJnba7w6M6l+zyzimHptgsnq8DsXC/nMoPO9BwRybmgIglW0DRkh63TUPSe
         DI2g==
X-Gm-Message-State: AOJu0YzZCTFDkgX+8AIUQyhPK8If8tn5Ag/p2vNY1jaxP8Hh1AqV24Wa
	8C6MK13y29XKog7OrFIQ68ckBDMg51s=
X-Google-Smtp-Source: AGHT+IFQ14kyhnh9jyNXU1XNyvfZ+NtqgSeetcqSg/d4XXhYF/3quwOPM/3WxnwJ+k+UEdPTTre9rQ==
X-Received: by 2002:a05:6870:a10d:b0:1be:d3a1:fd9 with SMTP id m13-20020a056870a10d00b001bed3a10fd9mr15934272oae.9.1696275021208;
        Mon, 02 Oct 2023 12:30:21 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id ep35-20020a056870a9a300b001dc8b2f06a1sm4846398oab.55.2023.10.02.12.30.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 12:30:21 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	neil.armstrong@linaro.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V3 1/2] dt-bindings: display: newvision,nv3051d: Add Anbernic 351V
Date: Mon,  2 Oct 2023 14:30:15 -0500
Message-Id: <20231002193016.139452-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231002193016.139452-1-macroalpha82@gmail.com>
References: <20231002193016.139452-1-macroalpha82@gmail.com>
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

Document the Anbernic RG351V panel, which is identical to the panel
used in their 353 series except for in inclusion of an additional DSI
format flag.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../devicetree/bindings/display/panel/newvision,nv3051d.yaml | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml b/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
index 116c1b6030a2..cce775a87f87 100644
--- a/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
+++ b/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
@@ -7,9 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: NewVision NV3051D based LCD panel
 
 description: |
-  The NewVision NV3051D is a driver chip used to drive DSI panels. For now,
-  this driver only supports the 640x480 panels found in the Anbernic RG353
-  based devices.
+  The NewVision NV3051D is a driver chip used to drive DSI panels.
 
 maintainers:
   - Chris Morgan <macromorgan@hotmail.com>
@@ -21,6 +19,7 @@ properties:
   compatible:
     items:
       - enum:
+          - anbernic,rg351v-panel
           - anbernic,rg353p-panel
           - anbernic,rg353v-panel
       - const: newvision,nv3051d
-- 
2.34.1


