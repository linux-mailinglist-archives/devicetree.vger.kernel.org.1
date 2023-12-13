Return-Path: <devicetree+bounces-24862-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 207A9811844
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 16:50:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A3F6E1F21378
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 15:50:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5206933CC3;
	Wed, 13 Dec 2023 15:47:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FMCToy1l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A06DB110;
	Wed, 13 Dec 2023 07:47:32 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-50bf26b677dso6803007e87.2;
        Wed, 13 Dec 2023 07:47:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702482451; x=1703087251; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xIWhGTiO6IreVCPqf6sdV9Yh0S4ilyzxwc53Fb/1j7o=;
        b=FMCToy1l3eYm8kJEgewCav4UsOch2bhO1sPZnDTF0Xhs/zODL894bQIXrd9h4+Ti3B
         NuDKPyzrjRP9gxFpoBlhdcMMMEEyK6bh63OZRwfF/KN83CX2fscZDEWaVfh6AOft3eMI
         2Vc+byFcr6p38P3jOd/4hUXzJcY9snCK9GXnD/qTQdCzJ24eQ80rRaJCe1Q9945NnZm4
         FeTCbADxbm2l3+0X1DlXVlkhCFrt0N1DEXsmRhvrUcwvS5emW0r2wURe5z3Amzms2E2q
         Zd4gpDkCe9HnTK9Xz6F6EtSpq0mfyvLDDcxrz93F/s7rrrtsJSlvAK5SzZJeeDLl0ml6
         ZB2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702482451; x=1703087251;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xIWhGTiO6IreVCPqf6sdV9Yh0S4ilyzxwc53Fb/1j7o=;
        b=b0viB8b4Yfg72ShhRzHei08uxRqz1Lf0RurXnf4nPdvI70G9/YrOFJJtjtQbk1LiWi
         DiGe0KaT6lx1LN7tiroefUVNKNN1NKRdnGhRSBcL3iPQ6mIOevY/TjAqzOfTRM6cGlDR
         pKlPbwp03X562nJm/hGmlb9Gn93vya574D+z/QvYFSbAUUE0Bp6cKvoRXqkMGr27MVUt
         Q8/XJC8oG/0xRa4CwTlKzwJds1BGrydCjN+Rc3IBY3hGtuY/mxOnTJgII5c4NKMENELR
         sFMqFcEOeiCbvbfehv8G5mdRrghFxO4kdZH3UoT+FT/w53HO9e6fRmc516+Oq0dKOGqV
         k7mg==
X-Gm-Message-State: AOJu0YzLS2viuzYZoGoDsZ+1H7u7/8sCaYbpEsLgVn4DUOzqvzW14i9g
	JJeleUQkSE3I5xvhgtvkIiY=
X-Google-Smtp-Source: AGHT+IFrMT+u8qQaDQTwx3+NlXxfeelFAxVsphLHBdElGrEIev2ru44NUGDr5dvFrt6ZhLh5ybjxdg==
X-Received: by 2002:a05:6512:ea3:b0:50b:fc06:7a2b with SMTP id bi35-20020a0565120ea300b0050bfc067a2bmr2974785lfb.110.1702482450523;
        Wed, 13 Dec 2023 07:47:30 -0800 (PST)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id 28-20020a508e5c000000b0054b686e5b3bsm5972810edx.68.2023.12.13.07.47.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 07:47:30 -0800 (PST)
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
Subject: [PATCH 1/2] dt-bindings: nvmem: add "data-size" property
Date: Wed, 13 Dec 2023 16:47:20 +0100
Message-Id: <20231213154721.5037-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Rafał Miłecki <rafal@milecki.pl>

Allow specifying NVMEM device content size in case it differs from
device total size.

Cc: Christian Marangi <ansuelsmth@gmail.com>
Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 Documentation/devicetree/bindings/nvmem/nvmem.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/nvmem/nvmem.yaml b/Documentation/devicetree/bindings/nvmem/nvmem.yaml
index 4fd015d402ce..095aed4250de 100644
--- a/Documentation/devicetree/bindings/nvmem/nvmem.yaml
+++ b/Documentation/devicetree/bindings/nvmem/nvmem.yaml
@@ -26,6 +26,13 @@ properties:
   "#size-cells":
     const: 1
 
+  data-size:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      NVMEM device actual data (content) size. It may be need to be specified
+      if it differs by design from the total NVMEM device size and it's
+      impossible to determine it on runtime.
+
   read-only:
     $ref: /schemas/types.yaml#/definitions/flag
     description:
-- 
2.35.3


