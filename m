Return-Path: <devicetree+bounces-5803-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E157B7F1C
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 14:30:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 7F05F1F22442
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 12:30:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34B723D64;
	Wed,  4 Oct 2023 12:30:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE8A013FE0
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 12:30:04 +0000 (UTC)
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com [IPv6:2607:f8b0:4864:20::429])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6729FA9
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 05:30:02 -0700 (PDT)
Received: by mail-pf1-x429.google.com with SMTP id d2e1a72fcca58-692af7b641cso279772b3a.1
        for <devicetree@vger.kernel.org>; Wed, 04 Oct 2023 05:30:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696422602; x=1697027402; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qqogagIVQK4Hvl5PXKLkI1QUrc0BeTTIHfTFQDllF/U=;
        b=LQcSvqbb2RuiOxpdNWz7697c+kbvNDU3Tewym5B1LKl3rrk8JFNnSlVntu6lxKllLb
         hbW7qNnqR2WTJVOjInuw28gYHC/LgRFLK+1Lm4OVcs74JN3UFTTSUYz5pW7L5ebs+MUP
         9/Ne9bdLavsx5pQ9JA7bFc0UavFJINoJtj+Xy0dE7pHVTMatIY+tOtCpTyW4bhF0ovXT
         DeoMlzSMInL5btA0nBTVAzZWUF4nBkkbL/MJip23qsdh7HNB7OFhFLBMmATzCEko5qxp
         pnRBJ5Ec6W3sfSW7QQcW3lt84dvlTkUGqXTx4HPCvuHy+5m00spAtnXf4R9A9+r+1lHo
         s8OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696422602; x=1697027402;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qqogagIVQK4Hvl5PXKLkI1QUrc0BeTTIHfTFQDllF/U=;
        b=EP5wa5PZRe8HpW9CT7lDfKsHcVl4Mz2pJlYkePwgmDSAsBgOPvh65oXLJSwIm98VFA
         6h6WcNQVsVksQ9NWN1YLnOUU2ILJH5/JDBFNeoS/1RA+XCkLs9It0P4lO2eXTTc1zY7p
         wovoHki5jGJ8AA+sVS+D93sYwTZGWC8PNyTGkpcAULxhHZDRDiQdiLud7n8XSvGuyIj+
         wi68z396cz8zQ9SIjMvVHbLF3BWgvJ6QvunmpSI5JWqS163MobkBDXuY+29r8KRTzWb/
         liHaImpA8CvR0wU2PcZA98uH1Eb6UiRCyYsoBz4xG93Dc2gTkYTPw8DcakoqqU6gIo6w
         gpMw==
X-Gm-Message-State: AOJu0Yz2/pgcHMei+OcjEKpExgaEeXcAr9iusjhmU8f9m+Q1mOwB7B7y
	F0M2iEH26HRwVCLiWQmaxO8=
X-Google-Smtp-Source: AGHT+IH3k3edhJlkn+t2g3LCoLGyPVCNhz2pyYu1LJmGzhbJOcj8x798/FUy/iByXRsWI4a+KdhHHg==
X-Received: by 2002:a05:6a21:a588:b0:163:ab09:196d with SMTP id gd8-20020a056a21a58800b00163ab09196dmr2562313pzc.1.1696422601794;
        Wed, 04 Oct 2023 05:30:01 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:cb87:d6f:eb43:afca])
        by smtp.gmail.com with ESMTPSA id fm18-20020a056a002f9200b00684ca1b45b9sm3217502pfb.149.2023.10.04.05.29.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Oct 2023 05:30:01 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: broonie@kernel.org
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	shengjiu.wang@nxp.com,
	alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org,
	aford173@gmail.com,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH] ASoC: dt-bindings: fsl,micfil: Document #sound-dai-cells
Date: Wed,  4 Oct 2023 09:29:35 -0300
Message-Id: <20231004122935.2250889-1-festevam@gmail.com>
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
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Fabio Estevam <festevam@denx.de>

imx8mp.dtsi passes #sound-dai-cells = <0> in the micfil node.

Document #sound-dai-cells to fix the following schema warning:

audio-controller@30ca0000: '#sound-dai-cells' does not match any of the regexes: 'pinctrl-[0-9]+'
from schema $id: http://devicetree.org/schemas/sound/fsl,micfil.yaml#

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 Documentation/devicetree/bindings/sound/fsl,micfil.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/fsl,micfil.yaml b/Documentation/devicetree/bindings/sound/fsl,micfil.yaml
index 4b99a18c79a0..b7e605835639 100644
--- a/Documentation/devicetree/bindings/sound/fsl,micfil.yaml
+++ b/Documentation/devicetree/bindings/sound/fsl,micfil.yaml
@@ -56,6 +56,9 @@ properties:
       - const: clkext3
     minItems: 2
 
+  "#sound-dai-cells":
+    const: 0
+
 required:
   - compatible
   - reg
-- 
2.34.1


