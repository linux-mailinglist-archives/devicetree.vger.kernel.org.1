Return-Path: <devicetree+bounces-15435-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F32867EA173
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 17:44:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2B9161C2085A
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 16:44:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D002722313;
	Mon, 13 Nov 2023 16:44:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ragnatech-se.20230601.gappssmtp.com header.i=@ragnatech-se.20230601.gappssmtp.com header.b="DUKo/RSm"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8E082134A
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 16:44:46 +0000 (UTC)
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB8AF171F
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 08:44:42 -0800 (PST)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-9e62f903e88so478360666b.2
        for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 08:44:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech-se.20230601.gappssmtp.com; s=20230601; t=1699893881; x=1700498681; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VgsY0E8FO3fh5yKJiKNC1hyDJiyScrO0HTp/YO5tOjU=;
        b=DUKo/RSmF8kOxE+ZYaIDKkaXxvtY+UcA38o0w6vB//2tl919EmHNwV15iNoGAJcme6
         89ChQLuRg7UaPvvs2lpYuq4zxjfOZKKEZtdufHCFoqefY8yTtr+dKvjrVgvdhBIXSeSc
         Oe6whMg3EAmYyhtNTzM6xMy1ZpaKtIPC+i99ivXZTFARfoS43kduw8157/3p/5tMnJ9C
         D+fv0QyKsgTSf58p+JZdhvSepPZHWDsqSD5F3DzxOLPYZzkejShkCKqVJ4ZN8aCk53YL
         nJBjFurnUPUg4mLh25deTCx92EiIu+xirhyQfY1Ex6AZe/9/wRK6i4Gkvw3pk+5RT4/G
         MnPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699893881; x=1700498681;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VgsY0E8FO3fh5yKJiKNC1hyDJiyScrO0HTp/YO5tOjU=;
        b=aIVk5z/0FVJRL5nB5KqzH7QbMV0XT9MTyZETnoKRmXn6SNA/3fxoHCc1K/VJZl13Ui
         +S3ai1VX/XgLYzTayXNlWUNbNRr+jKG6D8f/TJZt0Xrn8wM69WCkrpmdJmmHa11RHlG4
         7IGH3NKrMixF+Plq0X06PlLU1bRy4eQ+cMqexSpq1gGcrnlFWslsZYE5TxZ2fnNHGGs8
         KNatXdS+X4FFQlwlVuV478My27Xdcc0DUSVJ6PdX6ioxUZvS8Pnn1CkjPAYWEQikFP5F
         vdvBZSEgOQRlJLfkUESyXKZoDPEhwcC5RvhQsXdlaGpHuAhbDR7fLJ2MBAO9krslWgcr
         fEYw==
X-Gm-Message-State: AOJu0YzX8HzCaKESxNtvymm0whR3Mi0oZTFKHt5+Bw8EbR022Z37DzlF
	NnqQFt7UlG9rqhPgAO/d9fEkIw==
X-Google-Smtp-Source: AGHT+IF0/oq07H15BhIrlnU5Chnldqw+Vlb5lrdFsjiIO9ZdYJfOokY0kiWvYGP1pBxv+wB9RKx4jQ==
X-Received: by 2002:a17:906:34cc:b0:9e0:2319:16f2 with SMTP id h12-20020a17090634cc00b009e0231916f2mr5174214ejb.43.1699893881309;
        Mon, 13 Nov 2023 08:44:41 -0800 (PST)
Received: from sleipner.berto.se (p54ac5f7d.dip0.t-ipconnect.de. [84.172.95.125])
        by smtp.googlemail.com with ESMTPSA id y26-20020a170906471a00b009dd8debf9d8sm4262334ejq.157.2023.11.13.08.44.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Nov 2023 08:44:40 -0800 (PST)
From: =?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Prasanna Vengateshan <prasanna.vengateshan@microchip.com>,
	devicetree@vger.kernel.org
Cc: netdev@vger.kernel.org,
	=?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
Subject: [PATCH] dt-bindings: net: ethernet-controller: Fix formatting error
Date: Mon, 13 Nov 2023 17:44:12 +0100
Message-ID: <20231113164412.945365-1-niklas.soderlund+renesas@ragnatech.se>
X-Mailer: git-send-email 2.42.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

When moving the *-internal-delay-ps properties to only apply for RGMII
interface modes there where a typo in the text formatting.

Signed-off-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>
---
 .../devicetree/bindings/net/ethernet-controller.yaml          | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/ethernet-controller.yaml b/Documentation/devicetree/bindings/net/ethernet-controller.yaml
index 9f6a5ccbcefe..d14d123ad7a0 100644
--- a/Documentation/devicetree/bindings/net/ethernet-controller.yaml
+++ b/Documentation/devicetree/bindings/net/ethernet-controller.yaml
@@ -275,12 +275,12 @@ allOf:
       properties:
         rx-internal-delay-ps:
           description:
-            RGMII Receive Clock Delay defined in pico seconds.This is used for
+            RGMII Receive Clock Delay defined in pico seconds. This is used for
             controllers that have configurable RX internal delays. If this
             property is present then the MAC applies the RX delay.
         tx-internal-delay-ps:
           description:
-            RGMII Transmit Clock Delay defined in pico seconds.This is used for
+            RGMII Transmit Clock Delay defined in pico seconds. This is used for
             controllers that have configurable TX internal delays. If this
             property is present then the MAC applies the TX delay.
 
-- 
2.42.1


