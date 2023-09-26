Return-Path: <devicetree+bounces-3426-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E0FC17AECDD
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 14:30:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 6EBBC1F25B17
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 12:30:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A15463BC;
	Tue, 26 Sep 2023 12:30:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09E4D27EE3
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 12:30:31 +0000 (UTC)
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFF10EB
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 05:30:30 -0700 (PDT)
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-1c4456d595cso14628685ad.1
        for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 05:30:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695731430; x=1696336230; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zRT8yMoatv1co8l1fWYWZV7KxUjPKLPaxQpC1iAdU8A=;
        b=mFH4BayuZV/wMKeaER2QyJ54ULF6DIFJJb60s3E5kY2sQvo5bKmoh7WnW/IA1pe6h9
         3AAu/RuwpzfxC+tsLEG3cbq/KVgbSvaWrFK6dI0a0kUdat+uuj2mis/xj72IVXyNnGw7
         /vFHyfa7ML9Gnzvxaeuh/5zx9I1DhNfEvuX40RaLdn6bdbb4s+MqS12e1u7b7svEIw8I
         qXwKxrntQHM8LmxdkrXdg/UHT7abe5mrD5AU45hsV2MsjJJlwt+oKQm+Jq+4qYiJRg+V
         g7sn017/4WUsLonrsiJVq6bjH2Th8inY3zvMLHRi+j1Fd1cqKTZjfwSq7HkjRY+fy8QO
         7B1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695731430; x=1696336230;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zRT8yMoatv1co8l1fWYWZV7KxUjPKLPaxQpC1iAdU8A=;
        b=Yi9A2YPr3SIGipeCCXp53QmCjlXbLiXk5B5pDoSJINB+sERmSH42EQ0ZqWTVdtz49k
         pkUHpHVQ7it8MPNyLmiWUmmF+jtHHi6v+KkgRIUgbVLGhcL1444c7k/ULsHw9RMl4qu9
         xqj4JWWTnjdEbvVuJArqWPtchsMcpI3EnrHX5n7EXNzMlQiKkyN+GLrHtNUPMQ9/UFHr
         gLsqlsdBBR0aoYyPwKnPWRK6rYMcNkhrCuFix2ZBOcA2ATmRTSwU0+E8prr/pR57OX1M
         4OYwnmGWz6FlVFhHFutENw1dAbXkdg8W5HymlqrJCTYSvxaFDi9YDcUKFYmcIDT9EUJq
         QplA==
X-Gm-Message-State: AOJu0YyiFC9i9tWiA1RelqYcmnpEgov78r8tQuMblfgysat5I9Ap68xM
	QvYfSegmoKkSkxV19odqM8DnOsQskPY=
X-Google-Smtp-Source: AGHT+IH5dfGRNtUdFMHQQZEn+qLZjI9h/pJkXgX4qtmJtO/uAv3jW2vb17RcbZmtzmWk3VuIrCcMug==
X-Received: by 2002:a17:903:110d:b0:1c5:cd01:d846 with SMTP id n13-20020a170903110d00b001c5cd01d846mr11689489plh.3.1695731430373;
        Tue, 26 Sep 2023 05:30:30 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:87f:ba12:de84:998e])
        by smtp.gmail.com with ESMTPSA id e19-20020a170902ed9300b001c61afa7009sm4227309plj.114.2023.09.26.05.30.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Sep 2023 05:30:29 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linux-imx@nxp.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Amit Kucheria <amitk@kernel.org>
Subject: [PATCH 5/8] dt-bindings: thermal: fsl,scu-thermal: Document imx8dl
Date: Tue, 26 Sep 2023 09:29:54 -0300
Message-Id: <20230926122957.341094-5-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230926122957.341094-1-festevam@gmail.com>
References: <20230926122957.341094-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Fabio Estevam <festevam@denx.de>

imx8dxl also contains the SCU thermal block.

Add an entry for 'fsl,imx8dxl-sc-thermal'.

Cc: Rafael J. Wysocki <rafael@kernel.org>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Amit Kucheria <amitk@kernel.org>
Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 .../devicetree/bindings/thermal/fsl,scu-thermal.yaml          | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/thermal/fsl,scu-thermal.yaml b/Documentation/devicetree/bindings/thermal/fsl,scu-thermal.yaml
index 3721c8c8ec64..e02d04d4f71e 100644
--- a/Documentation/devicetree/bindings/thermal/fsl,scu-thermal.yaml
+++ b/Documentation/devicetree/bindings/thermal/fsl,scu-thermal.yaml
@@ -18,7 +18,9 @@ allOf:
 properties:
   compatible:
     items:
-      - const: fsl,imx8qxp-sc-thermal
+      - enum:
+          - fsl,imx8dxl-sc-thermal
+          - fsl,imx8qxp-sc-thermal
       - const: fsl,imx-sc-thermal
 
   '#thermal-sensor-cells':
-- 
2.34.1


