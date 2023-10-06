Return-Path: <devicetree+bounces-6427-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 376367BB558
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 12:35:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 59A061C20A3E
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 10:35:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7BC3F9D7;
	Fri,  6 Oct 2023 10:35:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="3bTDWfMJ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F5AA79D7
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 10:35:11 +0000 (UTC)
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18087BE
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 03:35:08 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-406619b53caso17360325e9.1
        for <devicetree@vger.kernel.org>; Fri, 06 Oct 2023 03:35:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1696588506; x=1697193306; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V91cYRIt8yJYSOx2f4FKH7CFK9UttvFj+gUpHbgWKyw=;
        b=3bTDWfMJ/ZA1h0aVqI0+KMnfnzjc+HodY+Tx7A1e+zWuIhAR/G/6kNUGpnK4RJYVCh
         bMCmBrxUSinIuGYebS0O1PsMJMryDzni9JfQabvDvK1bgTWjKwiuplv+ZU0+B20wDYjW
         Ywex8LRVP4rLOVEuGk6SdNLit0clQ23xa+cPV17mCi+uWwd+scAOW4Yw0QKeG0VRSHrv
         n3pBGUZQ4g6Gtb5Di0W8k8MVMF+A9cP1Y/PIZrda1CIWForQ9OaadpG92S2wGnM09nSz
         fE7sOw7hZc0bKbIW15bi0L4GaZkfFyokVoWIbWe501zUl2sPO8x3Rob/V46SgeqhgxM1
         OXLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696588506; x=1697193306;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V91cYRIt8yJYSOx2f4FKH7CFK9UttvFj+gUpHbgWKyw=;
        b=vj+B+wuatYnwfoqGvCqONjNJVXmXwf54x2qRdV90kCQd6l67O0qLVckkhQUgcBml5V
         2OEP0DxQChv2k0UJrD4S+TP09UNU3W33hpb2LXXL+L8vJgLmZiWrDhFta4KrFCPQ/m7H
         EYYJNb27g1UoMUPDefyZUdGwiNykpHaDZ3JTlqO5omcpX9bUuzJT+jm4xVdvjpFzf75/
         ZgFEFKuZbb9Q7uqMj0SvGJok7mE8MvkebuiOqNv9VfrWqPqWo2PHo74aS4f4aIaQzbfM
         5jmWgqi9MMaEka3DFY1OmuRkusXYzZxEIwlDMgic6gK866n/ciyLDOhkn67qU7x9x/g+
         zHnQ==
X-Gm-Message-State: AOJu0Yz+iNhf4/oq6eUVIM/qPPy/iRUTcyJcZTjfrLSMCAi9j9RTBJKz
	aVEB4ZHSjwdPuThGtcaKnuOCKw==
X-Google-Smtp-Source: AGHT+IEQKHQgyycikSC7e7mcqZlld91WP9kvs3yOFJCB+Q8m/eHcWr/vhaYkfmAAiW9jIkih+kTaaw==
X-Received: by 2002:a05:600c:224a:b0:3fe:dcd0:2e32 with SMTP id a10-20020a05600c224a00b003fedcd02e32mr7104492wmm.19.1696588506308;
        Fri, 06 Oct 2023 03:35:06 -0700 (PDT)
Received: from toaster.lan ([2a01:e0a:3c5:5fb1:8f44:72b3:5bcb:6c6b])
        by smtp.googlemail.com with ESMTPSA id l9-20020a1c7909000000b00401b242e2e6sm5664963wme.47.2023.10.06.03.35.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Oct 2023 03:35:05 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Jerome Brunet <jbrunet@baylibre.com>,
	Kevin Hilman <khilman@baylibre.com>,
	Da Xue <da.xue@libretech.co>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-amlogic@lists.infradead.org
Subject: [PATCH v2 1/2] dt-bindings: arm: amlogic: add libretech cottonwood support
Date: Fri,  6 Oct 2023 12:34:59 +0200
Message-Id: <20231006103500.2015183-2-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231006103500.2015183-1-jbrunet@baylibre.com>
References: <20231006103500.2015183-1-jbrunet@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add compatibles for the Libretech cottonwood board family

Co-developed-by: Da Xue <da.xue@libretech.co>
Signed-off-by: Da Xue <da.xue@libretech.co>
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 Documentation/devicetree/bindings/arm/amlogic.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index b7b0eda4164a..caab7ceeda45 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -155,6 +155,7 @@ properties:
           - enum:
               - bananapi,bpi-m2s
               - khadas,vim3
+              - libretech,aml-a311d-cc
               - radxa,zero2
           - const: amlogic,a311d
           - const: amlogic,g12b
@@ -196,6 +197,7 @@ properties:
               - hardkernel,odroid-hc4
               - haochuangyi,h96-max
               - khadas,vim3l
+              - libretech,aml-s905d3-cc
               - seirobotics,sei610
           - const: amlogic,sm1
 
-- 
2.40.1


