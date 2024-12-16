Return-Path: <devicetree+bounces-131547-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC639F3C32
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 22:07:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C873D189120E
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 21:05:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF1031DE3D9;
	Mon, 16 Dec 2024 20:51:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="XGZnfwfw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B20901D6DDD
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 20:51:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734382278; cv=none; b=F31II9EzRCgHNdo3VAZbXAQ/CMQuD6DXVRo0tcTEfkmKL2T1G+L+wnfoyKBjcwoUBJfERvDci5W7uz3GSTwzzM0SXatYEkOje2k2V71Sq4ohBbZz5CY2f446vDkzBOYG07tkawz3Lg+ucH/OA711vfVCS7j3gHozsCLlhXnmpTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734382278; c=relaxed/simple;
	bh=isHw0ite5JlatyQHO72XqgSTdGngKj29ojD1OiqbJNE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LytnDl6Z/Gvlgv7i0CsjTb9OPB0v+JAruEVl/jNKLl1sTxMg3YizndEKJS1F31rVN504lJtR9wefdWRZZOahPW0Kf4ACR980tAzvrSX5VbrArI5cjYYur+jHsvhELLAzif3Hv0Okhwzdokpw8Q20VhqAFR4xbismnEN8Fak84A8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=XGZnfwfw; arc=none smtp.client-ip=209.85.167.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f182.google.com with SMTP id 5614622812f47-3eb7ecc3c54so2551347b6e.0
        for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 12:51:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1734382276; x=1734987076; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Py2D0wervPIISRW98FoJi7A+7b16UWm4ihveQpPZjpM=;
        b=XGZnfwfwX/xSzLdXodzV+TP2UHjEz9QwEa/MyAMSL3pX/eHY+HPWZNI0IK2gMLR4fD
         6ViP0UQBL10VeR54dV1LN1BiD7PBLMBtEkiZQZzCM648OPzI7yCZdg02W8UBkPHFSHk5
         u7GYsO30ZIme4TZfC6ElEwg2ER6zNc4o/VhQfqjtCHF7LI3VNcCWiOnAk6jf2sYjj1on
         tZ7GI2BxnNl+loIBojLuTYgkW1NnkbMRN9bPAaeR9Iw8SQBDq9bna/4EZgQeOPC5hyQf
         ffa0vspxp9lvFtGyev91WHoQZcAMLpngRujhUGHbSFrQPWSqv2DZP2vJAhzZ0/4w7Sv6
         jI6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734382276; x=1734987076;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Py2D0wervPIISRW98FoJi7A+7b16UWm4ihveQpPZjpM=;
        b=nuQtn/ZTkwTBbOo9CITxF357t35rnHzXqtPu4EGoFp2hPXvOoh3uIRtur0kswfpK88
         TLzVS386CPFMbYZNZLquuiPHBToRbkY35DyBAFEzsdBa0uzVqLVYhpiFH+Mobjyo3DB+
         2vbre3T8t9F5Vlow33R0BNKCY6EMpXa66H8rkK9vIZmv9b1ci43Sdhxv/CVp8vpnPUl1
         3m0XiJR1aysm6C8/dxqSTnbzw9zkbNwgGjrFEdllIe2ucbrrAoBDHszRMfWidQUrcxhp
         06cO0YFzOApsjbGiCf2zYqkeXzIEGums9ZGHdM3n88VWz7MkBn8mYj8wFYojDtQf9fLX
         paFA==
X-Forwarded-Encrypted: i=1; AJvYcCWhct77wqIY4WIUqI5x4Poj17vmkC1PP4ikGkBK3oq/HhjuSSROJUz70xF+Z0xFbyQucdY7o0ufPwWV@vger.kernel.org
X-Gm-Message-State: AOJu0YyiV7CQ1bt1nq1LMmU7VzYCSZTAyanpScMP39ChfLYolLjNOzIU
	03MrOngFksZodYqenfdspQSG5IGWXRy+9sf9hyd4Rcp10P5cHGqjErfj7s2yDZg=
X-Gm-Gg: ASbGncth1ko9SMzA8Ccy8wfifHk2RkLbF39TXFwfCEBGjPw9mUXQPTC2KeQsv1K1tWK
	Wn2muJ55zoO+vx4lfVXpmaVowjJjhLy/Oim/W6GQ7d0b9gSGzrBJvpPCQLORamyEuiWHosLY1oV
	s47Na5V1SSbcHDLJ3LC2Kl/r86BSAawNIQVclO2V5c5CG0k6i5FXU6JZoNWuAYDNq1jUnZ3ep/b
	CnG4YBAxBFrnaY5hWbwhDXiBsD4tl4xJ16sTfL44UaT63UiGJW20dGrMmOg1jIbWsNHR9p1ipHf
	LLANeo/MvwZd
X-Google-Smtp-Source: AGHT+IE7X+nUDMlIJJp0XMjYhi35arAe0SORBM36Z5jpEQmusepUdkQp1J6sS6FZhGvxwaQtYKEf8g==
X-Received: by 2002:a05:6808:138a:b0:3e6:6203:fb5e with SMTP id 5614622812f47-3ebcb258830mr158477b6e.2.1734382275832;
        Mon, 16 Dec 2024 12:51:15 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-71e48355dc0sm1649022a34.25.2024.12.16.12.51.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Dec 2024 12:51:15 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 16 Dec 2024 14:51:02 -0600
Subject: [PATCH RESEND v3 2/2] dt-bindings: dma: adi,axi-dmac: deprecate
 adi,channels node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241216-axi-dma-dt-yaml-v3-2-7b994710c43f@baylibre.com>
References: <20241216-axi-dma-dt-yaml-v3-0-7b994710c43f@baylibre.com>
In-Reply-To: <20241216-axi-dma-dt-yaml-v3-0-7b994710c43f@baylibre.com>
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Nuno Sa <nuno.sa@analog.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, dmaengine@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.2

Deprecate the adi,channels node in the adi,axi-dmac binding. Prior to
IP version 4.3.a, this information was required. Since then, there are
memory-mapped registers that can be read to get the same information.

Acked-by: Nuno Sa <nuno.sa@analog.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: David Lechner <dlechner@baylibre.com>
---

For context, the adi,channels node has not been required in the Linux
kernel since [1].

[1]: https://lore.kernel.org/all/20200825151950.57605-7-alexandru.ardelean@analog.com/
---
 .../devicetree/bindings/dma/adi,axi-dmac.yaml        | 20 +++++---------------
 1 file changed, 5 insertions(+), 15 deletions(-)

diff --git a/Documentation/devicetree/bindings/dma/adi,axi-dmac.yaml b/Documentation/devicetree/bindings/dma/adi,axi-dmac.yaml
index b1f4bdcab4fd373b6ad7bfae763f70209eb1b65b..63b6fb0423c2052c32d188353abbdfd7c0711a7b 100644
--- a/Documentation/devicetree/bindings/dma/adi,axi-dmac.yaml
+++ b/Documentation/devicetree/bindings/dma/adi,axi-dmac.yaml
@@ -33,8 +33,12 @@ properties:
     const: 1
 
   adi,channels:
+    deprecated: true
     type: object
-    description: This sub-node must contain a sub-node for each DMA channel.
+    description:
+      This sub-node must contain a sub-node for each DMA channel. This node is
+      only required for IP versions older than 4.3.a and should otherwise be
+      omitted.
     additionalProperties: false
 
     properties:
@@ -113,7 +117,6 @@ required:
   - interrupts
   - clocks
   - "#dma-cells"
-  - adi,channels
 
 examples:
   - |
@@ -123,17 +126,4 @@ examples:
         interrupts = <0 57 0>;
         clocks = <&clkc 16>;
         #dma-cells = <1>;
-
-        adi,channels {
-            #size-cells = <0>;
-            #address-cells = <1>;
-
-            dma-channel@0 {
-                reg = <0>;
-                adi,source-bus-width = <32>;
-                adi,source-bus-type = <0>; /* Memory mapped */
-                adi,destination-bus-width = <64>;
-                adi,destination-bus-type = <2>; /* FIFO */
-            };
-        };
     };

-- 
2.43.0


