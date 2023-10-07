Return-Path: <devicetree+bounces-6640-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3627D7BC4B6
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 06:36:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EF222282190
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 04:36:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81D9A622;
	Sat,  7 Oct 2023 04:36:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="E6oak2ZV"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 785FC1FAE
	for <devicetree@vger.kernel.org>; Sat,  7 Oct 2023 04:36:37 +0000 (UTC)
Received: from mail-io1-xd29.google.com (mail-io1-xd29.google.com [IPv6:2607:f8b0:4864:20::d29])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64399C2;
	Fri,  6 Oct 2023 21:36:35 -0700 (PDT)
Received: by mail-io1-xd29.google.com with SMTP id ca18e2360f4ac-7a2bfd584f0so124320439f.0;
        Fri, 06 Oct 2023 21:36:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696653394; x=1697258194; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pRyXfw6oDnrYF/zDNW5wWAwbCqim2kPOLkomEzubNKA=;
        b=E6oak2ZVHHbz4HTfET1AUKgyRJMHfzNF22qKRQT5M65QCLw6/yFKLOJDRf2UlOoeSx
         jYL/zSQIl4v8nkBkmU4uieyCQ2GikjkSHCA5e6xHheo3xGy4xEbmgydkPkKR3Z0PZvrn
         qPvv54rbLWBcZ8ZBumrhqA3dWGOIJxZWQP9YdHmppkKb2uLmUzaQbOXy4BtgmOxUiRQm
         0YfhDlBb6NvgwmcNXblIx8wAdMo0oICxK/PGW2OfQvCMFpMGuzHZvN3D7an7dcgKK3hl
         tdL9BUCI5zuszGqBhqte1SCuLzprhhrcPtgP9+VxsUpBrc9l2uTtWvmcWAXKUnyNzZ9P
         xlwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696653394; x=1697258194;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pRyXfw6oDnrYF/zDNW5wWAwbCqim2kPOLkomEzubNKA=;
        b=C6MrhyZg/BztTjLwu+9xLfyonVOJuLHDFBsMugIIzVhiwLPuAByQp9wcQ3r34qk0eI
         W6BFdc31+xb5tDgp4nQ+ybEmZcYYT26M+QdgSEVmCx3W+3sFNgPC33xlCnAB336jhE66
         DAwfbuGq1AEiGfATnm7uOxQF1EbaaFYbvuWmE7kRkjlKZvj85HhpMOnPMoweZ5uxARX4
         QzxKRp48nGDT+WkZMcCImHraT49QPBVeDCpqMCY3BF7suTCsQ8iT30bhh2RNATge8Hho
         zXrL6jvV3gB/sVow2BZ4qcBOWt35/4XhIU1sf2bfGvBgTPhdF2usm82MIjuj8VpM3D8q
         v+gg==
X-Gm-Message-State: AOJu0Yy6gsFBoiNKi39YBdYrS+xY3jyGKCGwuZS1Q+vnXdir45g0TYNV
	dgkTBbp8EVzoEcrjzpzI4ao=
X-Google-Smtp-Source: AGHT+IFcdlj5Uc7tbSh/b6P3JobPCS/EtHm4kq71q6Lzmx2BgDgiBwymfKV3CaRNZIiWBN4W3viNWQ==
X-Received: by 2002:a05:6e02:c62:b0:34f:a4c5:8eca with SMTP id f2-20020a056e020c6200b0034fa4c58ecamr9033785ilj.27.1696653394719;
        Fri, 06 Oct 2023 21:36:34 -0700 (PDT)
Received: from celestia.nettie.lan ([2001:470:42c4:101:8a60:ad5:1051:21e3])
        by smtp.gmail.com with ESMTPSA id x7-20020a92de07000000b0035129b9c61bsm1520910ilm.45.2023.10.06.21.36.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Oct 2023 21:36:34 -0700 (PDT)
From: Sam Edwards <cfsworks@gmail.com>
X-Google-Original-From: Sam Edwards <CFSworks@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	=?UTF-8?q?Daniel=20Kukie=C5=82a?= <daniel@kukiela.pl>,
	Sven Rademakers <sven.rademakers@gmail.com>,
	Lokesh Poovaragan <loki@gimmeapis.com>,
	Sam Edwards <CFSworks@gmail.com>
Subject: [PATCH 2/3] dt-bindings: arm: rockchip: Add Turing RK1
Date: Fri,  6 Oct 2023 22:35:59 -0600
Message-ID: <20231007043600.151908-3-CFSworks@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231007043600.151908-1-CFSworks@gmail.com>
References: <20231007043600.151908-1-CFSworks@gmail.com>
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

Add the Turing RK1, a Jetson-compatible system-on-module (SoM)
powered by RK3588, from Turing Machines, Inc.

Signed-off-by: Sam Edwards <CFSworks@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ca5389862887..13b6cdc5ef82 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -870,6 +870,11 @@ properties:
           - const: tronsmart,orion-r68-meta
           - const: rockchip,rk3368
 
+      - description: Turing RK1
+        items:
+          - const: turing,rk1
+          - const: rockchip,rk3588
+
       - description: Xunlong Orange Pi R1 Plus / LTS
         items:
           - enum:
-- 
2.41.0


