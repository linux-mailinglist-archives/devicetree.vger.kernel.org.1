Return-Path: <devicetree+bounces-6689-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8767BC76E
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 14:15:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0E1FF2820E6
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 12:15:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E21A1C6B3;
	Sat,  7 Oct 2023 12:15:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PtzF8iHW"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF86E168DE
	for <devicetree@vger.kernel.org>; Sat,  7 Oct 2023 12:15:19 +0000 (UTC)
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ECC37BD
	for <devicetree@vger.kernel.org>; Sat,  7 Oct 2023 05:15:17 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-5068dab8c00so1102621e87.0
        for <devicetree@vger.kernel.org>; Sat, 07 Oct 2023 05:15:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696680916; x=1697285716; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=euGeYs/V9G7sRmh00PsrqxHcq0X+pdn1p5CppewPIZc=;
        b=PtzF8iHWOkyWAxwuizI7uIPqp42R5N+Zuwo2tfrjqQDUN4Wo8mWrfvYUo4q4LL43rn
         xcHYBhMtX5vkyKpL3lte6w0TDo9H+G9np/XfSxdGNCAyc1Tx8Gd8AFc+HT2Y33/61sjI
         auinIgacFcrTY+rGh2REp32Dl3AEbQbg5C+9C7SK8uilkDEQBUFEznmYsGJArQCTouvq
         wjiX0FL4+1fxrMWHbJYKG2e8qUViGaxs6xF9ZYYzNd1R83vM/9OMQrCUajES8rKIKrIh
         ohUqLZOjlaQWJttXNc12WEgpENH9FgP6eSApFKgaIcrwStihUKRjmr6NhvZBg/QewtoK
         6KUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696680916; x=1697285716;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=euGeYs/V9G7sRmh00PsrqxHcq0X+pdn1p5CppewPIZc=;
        b=vHWhA/wxu63MERBWU3Njcs8+7iXKPHv9OU0WdtKYIyn7lHdkrBCUA0JFMyPpYMgq1m
         wzeATVESSAC8VauZ17M2PeZFg5SX67+FBpWGsNEo1So/jXOOCDqk79ntMYJ9H7FE615O
         Thdh3CKSf+aDmuW9RzUUQx7uwNgFH2rPkRWJ/XrlLg0jUJmELIZoxLfopSh5CQ7x6C4e
         cGGfD00Qw2SEbdnEb/0UZDLHTM8q+72W3FABW3+PabuAY3TlVmoePFYuK0wufYCFfLAK
         /nEQyPCkbSDNiA1PlBOeBBCS1xhvW15voQquR0Dj/Xgsg4kOC2PWvJSn1PXa1O67nneh
         6Y0A==
X-Gm-Message-State: AOJu0Yw4e87oO0ngAArEoudP6ulRwbvGRbE+4Y/oAvytID1ZLOm9eKNZ
	2HSlBjn2/Y77vopHf/sJfHXO5A==
X-Google-Smtp-Source: AGHT+IEoHeqP4k56KBK4Pxm3kCsXi0gftsayerjz7GV+3zmFFvAQSWrlEKmqfz+3TaPqkEM3GwknIQ==
X-Received: by 2002:ac2:5fae:0:b0:503:1998:b48a with SMTP id s14-20020ac25fae000000b005031998b48amr7958810lfe.62.1696680916142;
        Sat, 07 Oct 2023 05:15:16 -0700 (PDT)
Received: from [192.168.1.2] (c-21d3225c.014-348-6c756e10.bbcust.telenor.se. [92.34.211.33])
        by smtp.gmail.com with ESMTPSA id v3-20020a197403000000b00502fe164ce6sm667819lfe.204.2023.10.07.05.15.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Oct 2023 05:15:15 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 07 Oct 2023 14:15:13 +0200
Subject: [PATCH v3 3/3] ARM: dts: Use only the Linksys compatible for now
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231007-ixp4xx-usr8200-v3-3-ec46edd1ff0e@linaro.org>
References: <20231007-ixp4xx-usr8200-v3-0-ec46edd1ff0e@linaro.org>
In-Reply-To: <20231007-ixp4xx-usr8200-v3-0-ec46edd1ff0e@linaro.org>
To: Peter Denison <openwrt@marshadder.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Linus Walleij <linusw@kernel.org>, 
 Krzysztof Halasa <khalasa@piap.pl>
Cc: Imre Kaloz <kaloz@openwrt.org>, Ted Hess <thess@kitschensync.net>, 
 Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The Gemtek users can just use the Linksys device tree,
triplet compatible is overdoing it.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/intel/ixp/intel-ixp42x-linksys-wrv54g.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/intel/ixp/intel-ixp42x-linksys-wrv54g.dts b/arch/arm/boot/dts/intel/ixp/intel-ixp42x-linksys-wrv54g.dts
index 4aba9e0214a0..98275a363c57 100644
--- a/arch/arm/boot/dts/intel/ixp/intel-ixp42x-linksys-wrv54g.dts
+++ b/arch/arm/boot/dts/intel/ixp/intel-ixp42x-linksys-wrv54g.dts
@@ -13,7 +13,7 @@
 
 / {
 	model = "Linksys WRV54G / Gemtek GTWX5715";
-	compatible = "linksys,wrv54g", "gemtek,gtwx5715", "intel,ixp42x";
+	compatible = "linksys,wrv54g", "intel,ixp42x";
 	#address-cells = <1>;
 	#size-cells = <1>;
 

-- 
2.41.0


