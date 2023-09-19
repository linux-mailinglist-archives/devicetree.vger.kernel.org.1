Return-Path: <devicetree+bounces-1299-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F40A67A5CB6
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 10:36:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2FA051C21160
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 08:36:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F381638BCB;
	Tue, 19 Sep 2023 08:36:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DCE0882F
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 08:36:15 +0000 (UTC)
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2416F120
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 01:36:14 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2b962535808so85910911fa.0
        for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 01:36:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695112572; x=1695717372; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=N5NhVCKkYOu64uwVPHARrnvpzesl8pDt3ArYQZAwDH4=;
        b=drjtuIXbt2n7btXnuOgTmVa7lFnI/E5Vmflc9CTznAPKpMiQMJRPTjnsYI4ehW7o5m
         i4AHmwP+i4bUe3ZWK40O4TWJ7lK7jbRQKHI7sy9kh4UrYhbNmgW289Ac3Ajn0fJlAIZ9
         ucvH9jf5a3Wp2mYbm5wjj7j5afKT2YS2iM2+8V5TZjofCyw5rj4BDVgIGlU9B3x2vZjF
         yefc/A6LC92Un887SIdzQCugoIFom4Nzt151qp459AodD65bFh03NzarE9/zM23uUXyl
         ugzT4PHqRWsW1effxjBkOY0p6zRP9t/QTX1lV7s3qwbS4tizJwsn4xdTb2ck6vsacbmh
         uI/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695112572; x=1695717372;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N5NhVCKkYOu64uwVPHARrnvpzesl8pDt3ArYQZAwDH4=;
        b=XkOU6S57pVS0uTp1bxTs/er9sEwmas49PvXrvTrlOTckIohZUIDQ//pASBpKpBwveL
         D2yPAfHj4DFvzaM1w96eN+5GK5Et3Tr/3BKzHhFHKDJ+eOK5+5fnDQ6QLJAGtyTEzmKN
         C4ePrGwWLsqvWoh+HPO2BGZ1MurEFOa+ITI0lepL8XDklT8cW7tRx86aImk/I8ubWaro
         JvMB12GzBG4siCbJ5dErGNxVdQ9V9gowDEH1eqlAYn2TeIE1SR4itvlxcAXG92dbvccx
         Fgn2gBU+Myh9udGHjZE2r9xOTpBbLouQ20Pdz3EWfddJN/fi0Yuz+46xZ/CghlrM+Xhg
         VrEg==
X-Gm-Message-State: AOJu0YzTFzwzVxWR1GR+UkWVkCPlXC+3rrRUfnnrST8VFDUxnvjwk8P7
	UyNGj3IPaQ78u+h9Gf7zy2s=
X-Google-Smtp-Source: AGHT+IHdGGsaZuZKGb51rVUdXj/Ben++8s/lC0j6WlJ58HaRtIyBR8ilVWoP+LrufSQJ2BIcaBFRcg==
X-Received: by 2002:a2e:781a:0:b0:2bb:985f:8479 with SMTP id t26-20020a2e781a000000b002bb985f8479mr8944877ljc.48.1695112572019;
        Tue, 19 Sep 2023 01:36:12 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id f22-20020a2ea0d6000000b002bcd992d006sm2502774ljm.87.2023.09.19.01.36.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Sep 2023 01:36:11 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Cc: linux-stm32@st-md-mailman.stormreply.com,
	devicetree@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Alexander Shiyan <eagle.alexander923@gmail.com>
Subject: [PATCH v3 1/2] dt-bindings: stm32: document MYD-YA151C-T development board
Date: Tue, 19 Sep 2023 11:35:52 +0300
Message-Id: <20230919083553.35981-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
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

Add new entry for MYD-YA151C-T development board.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 Documentation/devicetree/bindings/arm/stm32/stm32.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
index 4bf28e717a56..5252b9108ddc 100644
--- a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
+++ b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
@@ -140,6 +140,11 @@ properties:
           - const: engicam,microgea-stm32mp1
           - const: st,stm32mp157
 
+      - description: MyirTech MYD-YA15XC-T SoM based Boards
+        items:
+          - const: myir,myd-ya151c-t   # MYIR MYD-YA151C-T STM32MP151C
+          - const: st,stm32mp151
+
       - description: Octavo OSD32MP15x System-in-Package based boards
         items:
           - enum:
-- 
2.39.1


