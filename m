Return-Path: <devicetree+bounces-3139-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D53C67AD6CC
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 13:12:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 638E31F24A4A
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 11:12:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E11818E08;
	Mon, 25 Sep 2023 11:12:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD4C118AE7
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 11:12:48 +0000 (UTC)
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com [IPv6:2607:f8b0:4864:20::42a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6350C0;
	Mon, 25 Sep 2023 04:12:43 -0700 (PDT)
Received: by mail-pf1-x42a.google.com with SMTP id d2e1a72fcca58-6927528c01dso965159b3a.0;
        Mon, 25 Sep 2023 04:12:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695640363; x=1696245163; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Uq4NPhSzxqypY2uN0jYUqe7Hvuv2Db/rhjFJPE8U29M=;
        b=M42mMMBdEpLrdIQIcrEmKxbcmoSY3gAKhpI8SCr8J0ludBbpM/bVDpMf70kr34T0Y9
         PeC5sPWuU5aLpf0uGt6qg8/9mpNcInFdb3aIm2QqXBW4fbqIAFI7d3kJQtdte1pNtAsP
         M+H0egXVO833PLrYNVM9iueKW2Vsyf2X/de61gCZ8XUEkZ8ftlwyn24wY30RpcnuuxHg
         Kp/igCPZAmGk4T1NR1Gg6Y37lxzdmQD46cSUg9RTlfffmJzIn9lV/hNF5FKkYFADdkX+
         xKHV430kKs83amyqKv4l6vkkTx6mgxvTsygGY2Mi+vQpYoo5mFuUtBok+WrhvHHjDpJP
         fKgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695640363; x=1696245163;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Uq4NPhSzxqypY2uN0jYUqe7Hvuv2Db/rhjFJPE8U29M=;
        b=aMv2i+sS1k+zpkdEWNehaldpFA9vbcvz6Albaj5zJtGXA5tO/aavEyjBDRhRdYVUFG
         61bC5V3I4Bu4zjYuTd0UlbXfpFBRx+ict/Vxn9Iupf2p/4tdNWoSyz9jOMHYVid0u5LN
         bsnpPpRkB69hDO0JiyjbUiLnl4r2Foquos5Eq7xvGBqRuekpAt6LAAlCbWyJunfgvg4o
         eAUp9JGq/y342BqqKema7z/3Fx/kYGMip8pJXrXgsbabRGvp8qqY0B+9xNr9iOnhvluh
         a1xLxr098p/E3KQRE01vVsX9Yogk+yi65vEEtMMs9VW6w7thZnC7pMwlAP0J6ar/ZklY
         633A==
X-Gm-Message-State: AOJu0YwRTMXyARQAhFeck853JMOyGEXjpyBav5pYXKtF9fKB1srOXJD1
	kM4Uzhs1MOHjj/xC2HRIppw=
X-Google-Smtp-Source: AGHT+IEQXmRz8MMHegXa6LToyXN0/clS+jq/kPQf5mZ09Gu5T9cXw4V+pF7fqgUsi7HaZJQHV0bS0g==
X-Received: by 2002:a05:6a00:2f4d:b0:68f:c9f6:f366 with SMTP id ff13-20020a056a002f4d00b0068fc9f6f366mr7621167pfb.0.1695640363052;
        Mon, 25 Sep 2023 04:12:43 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:fbad:220b:bad3:838c])
        by smtp.gmail.com with ESMTPSA id 131-20020a630289000000b00528db73ed70sm7832772pgc.3.2023.09.25.04.12.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Sep 2023 04:12:42 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: herbert@gondor.apana.org.au
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linux-crypto@vger.kernel.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH v2 1/3] dt-bindings: crypto: fsl-imx-sahara: Shorten the title
Date: Mon, 25 Sep 2023 08:12:18 -0300
Message-Id: <20230925111220.924090-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Fabio Estevam <festevam@denx.de>

In the title, there is no need to mention "included in some i.MX chips"
as it is too vague.

Remove it to make it simpler.

While at it, also remove the extra space in the first reg entry.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v1:
- Squash the removal of leading space. (Krzysztof)

 Documentation/devicetree/bindings/crypto/fsl-imx-sahara.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/crypto/fsl-imx-sahara.yaml b/Documentation/devicetree/bindings/crypto/fsl-imx-sahara.yaml
index d531f3af3ea4..bad82491cd6a 100644
--- a/Documentation/devicetree/bindings/crypto/fsl-imx-sahara.yaml
+++ b/Documentation/devicetree/bindings/crypto/fsl-imx-sahara.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/crypto/fsl-imx-sahara.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Freescale SAHARA Cryptographic Accelerator included in some i.MX chips
+title: Freescale SAHARA Cryptographic Accelerator
 
 maintainers:
   - Steffen Trumtrar <s.trumtrar@pengutronix.de>
@@ -32,6 +32,6 @@ examples:
   - |
     crypto@10025000 {
         compatible = "fsl,imx27-sahara";
-        reg = < 0x10025000 0x800>;
+        reg = <0x10025000 0x800>;
         interrupts = <75>;
     };
-- 
2.34.1


