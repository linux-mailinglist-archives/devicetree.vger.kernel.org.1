Return-Path: <devicetree+bounces-24863-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F26B811845
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 16:50:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8CCA21C212AE
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 15:50:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C185533CCA;
	Wed, 13 Dec 2023 15:47:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="F+crtb+i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A346A6;
	Wed, 13 Dec 2023 07:47:33 -0800 (PST)
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-54c9116d05fso9449034a12.3;
        Wed, 13 Dec 2023 07:47:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702482452; x=1703087252; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mc743gSKV5l8g3BJNGJgDTP6ynD6tEmGecWgB19Lq0s=;
        b=F+crtb+i2KKmaSikNfYtr/pepS/WwPWLNEQSWp37cFSfxoB2GBVNHz085ioM8flzjG
         BG9KdJ+mJDVzh+J+3GBgWXlLDAPQpReO/IwbXoztpXApk2yPcZqNpJEJ2QU+YNM9/9nj
         YKTuzhYauoRiEM1fVzLJwLQEUMQ6v1yVMN0oVIhSt7HYvGxH87LBTvspWLXvpyh8jd2r
         CfyXfcpOqh9XJ2X2N2KEXeNNlC15Wu8XkHAQNIp7rLENOSPVHZ+ApBNYRKcAihDVgb/U
         H4UNMObkn34gQJU+syjXCxDwL+/K5yhpm6nGr84pOMzB9jwtPXDf4r9HBVjcovs7L7QU
         gB8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702482452; x=1703087252;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mc743gSKV5l8g3BJNGJgDTP6ynD6tEmGecWgB19Lq0s=;
        b=TFh7GjiKBGJd+sSJ2dd87liSUiWgWvL2JHQtL/h6LNwrox+nDgcSWCIAYESVH0sWmS
         VOdUrTrqWtgEz/KetrxXrGMdSiBYieUICe99lmrGyZ2tGly7Ixw0e4Ex2cR/rcOvsq/u
         XwdvcEye9IwvtOIcRZxzLXov8vUTlSlcttasvykXBPwUwcCRlWuRmjn1RUDrdmLZ79u7
         ogkxw6kYzaX8g6MkcPmlT8PP2fHsmprURtgJVm9UWSUGTLtmzK2aCWQ5fFvC3a6+9Oe/
         312zOc6qoPU8pzSoyzzW4X1PxlqPJm8LJ8fpIUIR4IyVePHoSLeM7r7a/mVHow+ZMIlf
         ltFw==
X-Gm-Message-State: AOJu0YwSknoAUgQlTAuSoifIHrygtqKHsRMz6UFBusyFDB1O7nVtLpKq
	UAmTdU7J4KP7wCAKjs/yEjU=
X-Google-Smtp-Source: AGHT+IGCU2djaB5uBgtYDAXhZ+c2JU0gc4uz8t34fOeLNj93VffqKG4unjLh88AT+nseKv3EtNdcng==
X-Received: by 2002:a05:6402:f8d:b0:54c:4fec:f0 with SMTP id eh13-20020a0564020f8d00b0054c4fec00f0mr2308546edb.127.1702482452111;
        Wed, 13 Dec 2023 07:47:32 -0800 (PST)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id 28-20020a508e5c000000b0054b686e5b3bsm5972810edx.68.2023.12.13.07.47.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 07:47:31 -0800 (PST)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
	Christian Marangi <ansuelsmth@gmail.com>
Subject: [PATCH 2/2] dt-bindings: nvmem: u-boot,env: describe "data-size" property
Date: Wed, 13 Dec 2023 16:47:21 +0100
Message-Id: <20231213154721.5037-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20231213154721.5037-1-zajec5@gmail.com>
References: <20231213154721.5037-1-zajec5@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Rafał Miłecki <rafal@milecki.pl>

Describe what "data-size" means in U-Boot env context and why it may be
needed. It's a generic property but giving it some extra meaning in
U-Boot context may be helpful.

Cc: Christian Marangi <ansuelsmth@gmail.com>
Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 .../devicetree/bindings/nvmem/u-boot,env.yaml          | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/nvmem/u-boot,env.yaml b/Documentation/devicetree/bindings/nvmem/u-boot,env.yaml
index 9c36afc7084b..0006f022d0af 100644
--- a/Documentation/devicetree/bindings/nvmem/u-boot,env.yaml
+++ b/Documentation/devicetree/bindings/nvmem/u-boot,env.yaml
@@ -44,6 +44,15 @@ properties:
   reg:
     maxItems: 1
 
+  data-size:
+    description:
+      U-Boot environment data size is set and hardcoded during compilation using
+      CONFIG_ENV_SIZE. Knowing it is critical for CRC32 checksum calculation.
+
+      This property allows specifying it in case it differs from NVMEM device
+      size. It may happen if device partitioning was designed with different
+      concepts in mind (like block alignment or future-proof size).
+
   bootcmd:
     type: object
     description: Command to use for automatic booting
@@ -76,6 +85,7 @@ examples:
         env: partition@40000 {
             compatible = "u-boot,env";
             reg = <0x40000 0x10000>;
+            data-size = <0x4000>;
 
             mac: ethaddr {
                 #nvmem-cell-cells = <1>;
-- 
2.35.3


