Return-Path: <devicetree+bounces-69873-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EFE88D1D17
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 15:33:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 330371C230DB
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 13:33:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72AEF16F902;
	Tue, 28 May 2024 13:33:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="fd3kvgt1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312AD16F83F
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 13:33:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716903182; cv=none; b=PaWUlHmRxWJFRS+d9acmhjmJOw9S0FCKBc6Z5lD1/4mqyGsfcIoPmtKuIKIVZLCujNF+nNFkpb5R6JTN9sTzc4GAit6dPYlXp45jTHHHfx4M70Txgt21rlJiZEwoEzs45rJKUEd7efQqIq88XHeW5/mEAcMg6CGJqTZ8P71mxqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716903182; c=relaxed/simple;
	bh=9k25ZsPTf+WrTiK8qVLkskl+r232la4YhtO+5MWY/Sk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ISEegfvrz5UFYAWCeLFXWxPTltzy+wsgoc0YewEFWVuAqp3m3xPYHh8pdYFIdB56h56HN3/7TUa3OSwUEOPoWLrDapHEJUAxvnKG/vFy6KHwZL1CC/3evFCl0idDfIGglg3phfdf2PkagZSF3JDe9B3piZTaOfz/60CbZwsR3a8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=fd3kvgt1; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2e95a1d5ee2so16086661fa.0
        for <devicetree@vger.kernel.org>; Tue, 28 May 2024 06:32:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1716903178; x=1717507978; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sE1zrpU4sY3RHfj/RfOgVZHYb52D/eP6ho+94PIl9YU=;
        b=fd3kvgt1mB7F98/c+nrDsIQR1aPE4xbrVgnvejOCN6hP3kuSPyfhEyyrYWdUhQP+yx
         PD7SB2F00cCkS3g6GU99TVCjj4dfEKgYsYg5zarhgv5Fb14wuVvgWs1DI0LOCXibAJYJ
         ER4glnZdMNkoK9gIkxA7nQSQput9arVSB9fhWSsOZukFSA/TUStU+wcO8yL6wJbQs8Ag
         YWWrxCzsMW6sjIESkQ9Lg9c6WtSowCJclFsw4lboywn/rBe67chVm+rwiM4IhfVMwAy8
         J4EobSszR40irUj/nvGflzNpHOiDz9hlYtno+R6bwYZeKKjwtHRGaeiC612+o4lT9bEH
         pIqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716903178; x=1717507978;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sE1zrpU4sY3RHfj/RfOgVZHYb52D/eP6ho+94PIl9YU=;
        b=eixm+wrFZjCWnURagW6p/xi/wR612oY8JaLkOv2tjFwEAwz/etsz+dU0syJIq+riKw
         Gs1ymQ5Gql3An278a7KLUstt9mnpumz4n0LXjiVbBIvhAkZSYK7yaBmkGdQciV2iQbHT
         jPCRv3N7gg/BOH2DxUgpx5+EJgxo60F5rdl1DT4yOUjsoaBtuUOCBxhfm8EA2rDhax3h
         04DrAw1R72cgolu/138LEbYDCGJm/6v5roWRnsMmvsRIETadEOGyaa0aWf9BRSCYMyva
         mt9aE607PvxQt6EZBAGOiTGO8CsRp7QDe4kIYW4XMsUvX1gvI8845AOHE+IDG/kcQ6SF
         1O6w==
X-Forwarded-Encrypted: i=1; AJvYcCXa7u/FxVqqOyB1VOm8Pad4Zvyxb9tkS7oTvH1gSvwoZuMaE7WTCfwtdi5BdDJTi7H7w513nLl0RZ1HKlz8Mc4jHJgUZjaNm2891A==
X-Gm-Message-State: AOJu0YxQ+lSutOsIXm+nkEx5EESarwCUIn7yv/SqEvi6FbPtA3j0Tn/j
	b7pMN9wb/biTFLEpbP57Ul0GdBp2mazSMnZo+9HFlQ//oRL05uWF18bK8RNcpOk=
X-Google-Smtp-Source: AGHT+IHEXl3H52Dmzhq+38r5mv+t/FOvPtQ+YYhX+r6nXpLxsLtRN0zdfqcZDN5fXmZhSF3uHYSdMA==
X-Received: by 2002:a2e:a403:0:b0:2e9:8852:3d16 with SMTP id 38308e7fff4ca-2e9885242f1mr14453351fa.35.1716903178395;
        Tue, 28 May 2024 06:32:58 -0700 (PDT)
Received: from localhost (host-87-16-233-11.retail.telecomitalia.it. [87.16.233.11])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a626cda60bdsm615456466b.207.2024.05.28.06.32.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 May 2024 06:32:58 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Kamal Dasu <kamal.dasu@broadcom.com>,
	Al Cooper <alcooperx@gmail.com>,
	Stefan Wahren <wahrenst@gmx.net>,
	devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mmc@vger.kernel.org
Cc: Andrea della Porta <andrea.porta@suse.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 1/4] dt-bindings: arm: bcm: Add BCM2712 SoC support
Date: Tue, 28 May 2024 15:32:38 +0200
Message-ID: <cfc4db17981ef946a71d40d522118a560aa0f15b.1716899600.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1716899600.git.andrea.porta@suse.com>
References: <cover.1716899600.git.andrea.porta@suse.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The BCM2712 SoC is found on Raspberry Pi 5. Add compatible string to
acknowledge its new chipset.

Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
Reviewed-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml b/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
index 162a39dab218..e4ff71f006b8 100644
--- a/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
+++ b/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
@@ -23,6 +23,12 @@ properties:
               - raspberrypi,4-model-b
           - const: brcm,bcm2711
 
+      - description: BCM2712 based Boards
+        items:
+          - enum:
+              - raspberrypi,5-model-b
+          - const: brcm,bcm2712
+
       - description: BCM2835 based Boards
         items:
           - enum:
-- 
2.35.3


