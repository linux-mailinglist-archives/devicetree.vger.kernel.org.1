Return-Path: <devicetree+bounces-11171-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A55E7D49F5
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 10:26:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 99AAA281410
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 08:26:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7ADEE1CA98;
	Tue, 24 Oct 2023 08:26:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YowOKPpu"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE40125CA
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 08:26:35 +0000 (UTC)
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com [IPv6:2607:f8b0:4864:20::535])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32574D68;
	Tue, 24 Oct 2023 01:26:34 -0700 (PDT)
Received: by mail-pg1-x535.google.com with SMTP id 41be03b00d2f7-564b6276941so3303274a12.3;
        Tue, 24 Oct 2023 01:26:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698135993; x=1698740793; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F5HsDJmJwnWYwNcgba3tsjKA0OTu3Q7BjazBfQxf4vY=;
        b=YowOKPpu/2dzJT4S1oB9+IM6g3Ga8pViN3ekXgbhF9a/znIwiktpq8bncpUHiHy7c4
         AXuTt+AT6heXl6D9w78PxnBTdX6IgqqTvGBnQ50/IP8XQKKRobf0EYsnlo9WJg3OUJmP
         uc+QQW8PIpv3kvqkuOZ171Bm3pfxRxt8FrVwCHI9I2mfKmtfYzP3pUFuzLM79UbdrPqT
         j5G2UnhISUpnlOKfFAadYX8hMAJJxPJwp7VJDt0RxvYygRZRm0cz3t5rXlyGdAX3RfU0
         r5BaZzVdLHNjDJRPs5O5R0JODwmha12OfKGexxk5702WMMKYqq87vcE4IVxP25/E3ZY1
         TRUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698135993; x=1698740793;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F5HsDJmJwnWYwNcgba3tsjKA0OTu3Q7BjazBfQxf4vY=;
        b=veOxpx0k+X1BNelr+LrhDDdC1Mk4TlkHfWeGerdU27xQQJ7+siozAnCLLEr+CLGoc/
         6wJjAbibErcD5FEbT8Ej16geP4FY6SM4qREc9R+bIoBtrSB+0cY5mD+Oo0PXx5nfoMWX
         ibF7awPL8VKSHSAZt/1zQ9IR6JZU/66+VtOKS1r/wBIZerCtnT3av1gBoRpcvFrAYUpU
         rXHQyBsqjmVBxJuQjyxZoeMfTnyO2J99PgOvxfO3nnq+1elxZXolhJ85HWChp/Fd3uR1
         c+e06rXAu/pupyHmkEKr4EwnqQvEpClPyF0XGFi6A3wuXOtLJgFywufaIOtnNpdqLEmy
         VsDw==
X-Gm-Message-State: AOJu0Yxc7L6LOZaog/WrUC6WaFfRibg0lDVq+IUzJ3AysUwLIFPx04cs
	qg+UVUJSWB42ML5W1sljrhM=
X-Google-Smtp-Source: AGHT+IGyzh/DfOCSkLkHkMMuir+TVP/xzaShJOMkwYLNlIBfZedRdzGVU/6JPkRfnesZ2ORkWiWnXg==
X-Received: by 2002:a05:6a20:8e12:b0:141:69d:8041 with SMTP id y18-20020a056a208e1200b00141069d8041mr2499437pzj.48.1698135993637;
        Tue, 24 Oct 2023 01:26:33 -0700 (PDT)
Received: from peter-bmc.dhcpserver.bu9bmc.local (1-34-21-66.hinet-ip.hinet.net. [1.34.21.66])
        by smtp.gmail.com with ESMTPSA id q9-20020a170902dac900b001b9c960ffeasm7010665plx.47.2023.10.24.01.26.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 01:26:32 -0700 (PDT)
From: Peter Yin <peteryin.openbmc@gmail.com>
To: patrick@stwcx.xyz,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@aj.id.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Cc: Peter Yin <peteryin.openbmc@gmail.com>
Subject: [PATCH v1 1/2] dt-bindings: arm: aspeed: add Meta Minerva Harma board
Date: Tue, 24 Oct 2023 16:24:02 +0800
Message-Id: <20231024082404.735843-2-peteryin.openbmc@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231024082404.735843-1-peteryin.openbmc@gmail.com>
References: <20231024082404.735843-1-peteryin.openbmc@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document the new compatibles used on Meta Minerva Harma.

Signed-off-by: Peter Yin <peteryin.openbmc@gmail.com>
---
 Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
index e17b3d66d6e5..20e3be8d8c78 100644
--- a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
+++ b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
@@ -79,6 +79,7 @@ properties:
               - facebook,elbert-bmc
               - facebook,fuji-bmc
               - facebook,greatlakes-bmc
+              - facebook,minerva-harma
               - facebook,yosemite4-bmc
               - ibm,everest-bmc
               - ibm,rainier-bmc
-- 
2.25.1


