Return-Path: <devicetree+bounces-5629-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 679817B6E97
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 18:34:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 11CE3281391
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 16:34:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFA6F30CF2;
	Tue,  3 Oct 2023 16:34:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 727AA273F6
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 16:34:04 +0000 (UTC)
Received: from mail-oa1-x32.google.com (mail-oa1-x32.google.com [IPv6:2001:4860:4864:20::32])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57DCF91
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 09:34:03 -0700 (PDT)
Received: by mail-oa1-x32.google.com with SMTP id 586e51a60fabf-1dd54aca17cso771225fac.3
        for <devicetree@vger.kernel.org>; Tue, 03 Oct 2023 09:34:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696350842; x=1696955642; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qkSQMV5DOXzEuPzZAkyJmDQmhsgIBtNj/QL5D2gyLgo=;
        b=metf4zBTlqJ4J9TUf1Huwfi6sbdYcZjLDiuK0rXB9fHBKE5aiO5wnSn3rkaemd5sXs
         VMsO8//qtmX3JmSapvZH+baW0oQdAPfQN4oc0n9JEAEYxPChIssoIJlH+4dpfwC9rQzC
         H5lTdhMYiA8q5HGEEcY5SzAgbqTU3lH7uJ4znWW8Y6UuiSQ0mDel20Z23+08JLtaI4QK
         qTJTbz4cVCszCe+zfsvZLo6s8fRnef+XScQUnm+5QriupwatwRIa2J4gLEnf9tCS4Gkd
         8a533Xra2lWSJ7GRQa3oxhokDVGuARMSdlozby3yOTMNcR7PmvdZ8IzT1BsYqYZ7WTSe
         tRKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696350842; x=1696955642;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qkSQMV5DOXzEuPzZAkyJmDQmhsgIBtNj/QL5D2gyLgo=;
        b=EFNIjaGgDHJLjMVRw562MJf6ke8zP2BBZXiIKM4jNCFrCrYmq4FGEfHxIo3eShnNwq
         /egcpU7z4qgQ1k7ahNULwY8afWTi22KBtrga6lxUpC/cdj11HNk0klFSwkWbuNUlAnrZ
         n+XUJXlgqWvj5gJgx0CJmsHJB4GotcStXY21iFnU2FCURYAuYxG5oCuATK2R/odu2AUM
         R46bf2Btqjd/sMvTISGMRwKikyv5XCrJPqTjNqpbrFdEul+MtTA6Ps3ncOPzP/WKbp06
         z1pHzF1Pyq015MA7Ayr5n94nfhmgviorSFsnCfWo/XmFm31dFFd1DEV+1pDbuwbY+cqT
         C99w==
X-Gm-Message-State: AOJu0YzpCsu6INI4tzk6TAu20BL/8aBBdmVq/FzmDALDW7NBYYaysyoM
	Xbp9QkWghDeFapxUPyowyctXA8Fdbr4=
X-Google-Smtp-Source: AGHT+IGz6tiIp4sfz51Ai/HmYnZnC5ywaM9M/Efm8xudL0UkYP1dfVu6ftBUjCpW8qG6NSE3iKY/MQ==
X-Received: by 2002:a05:6870:958b:b0:1bb:509a:824f with SMTP id k11-20020a056870958b00b001bb509a824fmr64092oao.55.1696350842018;
        Tue, 03 Oct 2023 09:34:02 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id k6-20020a056830150600b006b74bea76c0sm198567otp.47.2023.10.03.09.34.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Oct 2023 09:34:01 -0700 (PDT)
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
	Chris Morgan <macromorgan@hotmail.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH V4 1/2] dt-bindings: display: newvision,nv3051d: Add Anbernic  351V
Date: Tue,  3 Oct 2023 11:33:54 -0500
Message-Id: <20231003163355.143704-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231003163355.143704-1-macroalpha82@gmail.com>
References: <20231003163355.143704-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
	TVD_SUBJ_ACC_NUM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Chris Morgan <macromorgan@hotmail.com>

Document the Anbernic RG351V panel, which is identical to the panel
used in their 353 series except for in inclusion of an additional DSI
format flag.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
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


