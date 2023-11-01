Return-Path: <devicetree+bounces-13469-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 809CE7DE2CE
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 16:16:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ABA2D1C20BB4
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 15:16:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B44BA14010;
	Wed,  1 Nov 2023 15:15:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=hefring-com.20230601.gappssmtp.com header.i=@hefring-com.20230601.gappssmtp.com header.b="1sGFFcCX"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8FA14008
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 15:15:56 +0000 (UTC)
Received: from mail-qt1-x830.google.com (mail-qt1-x830.google.com [IPv6:2607:f8b0:4864:20::830])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA0FEFD
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 08:15:51 -0700 (PDT)
Received: by mail-qt1-x830.google.com with SMTP id d75a77b69052e-41ccd38eaa5so8642631cf.0
        for <devicetree@vger.kernel.org>; Wed, 01 Nov 2023 08:15:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=hefring-com.20230601.gappssmtp.com; s=20230601; t=1698851751; x=1699456551; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i2SsA8lNfsfo5blKrfyRF4NmHE0kd2YJvslu6dle/wI=;
        b=1sGFFcCXbB9/gAP3EvpDzqAFLTcPAd2nV84cr9E3kgAVKPA9/5Avvs9MD8g7qvrkei
         F3jkHfO33cvX2mWSmm7kqImrelTV3PBtFFOEPyrUQ83ORRa8hNxEy57tVFwDsE0BfOI6
         Y31fxEfASpqRhxD8xX0qwSxnXanrdZ53Yp1cHdmKpHYq7z6l0s/n+OtgkQNiBZmLiqE8
         DYxVBZKn1nGAOe1kZ4TTkG8EV/w/uCd0HqvFyxmh6v4uh+Dy9jrTONauSaNoMAN2sw1z
         kHBA7BxH05LdUWXHCbLvEe1PVzx8FoOUfquawdUtYHJVc1gkFLRu4ucud5t4CIXxl/iF
         wqtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698851751; x=1699456551;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i2SsA8lNfsfo5blKrfyRF4NmHE0kd2YJvslu6dle/wI=;
        b=F94c1sjUwuHL2Weyva1SUv+4NPIX08Y29PzEkNQHwiyMzRUd5ULrwnupZQFc2TVV1M
         eLH4j7e3AbAJ6XnE/6tvNwWJPv1k7Ni36TIVjYCq6WZJojJgvwswUDFf5yvkUCBXr3Iu
         iw8ZkRGhBNSebRwD/08K+ziIF5IjdApvtgIImvvzLxWe8BOSGeiCOo1kH1O0HalEPAzz
         QsYWUGAn7rDFVIgBBmGZBksZLizqMtJOHug82ky7FB9+ecuGEB4/94XkaUZRvoXVjIAg
         w43lAJ2Gx7zamY5di79/7526MA/K6hSFxpBANZFqAihhMkpkUUl2+LFdVCiXJkNHolUU
         HcmA==
X-Gm-Message-State: AOJu0YyJjcLg5rHZP33IUgI14LtTTAMDyvJurdAHrw7KRQa5u+0s+OQd
	LKlL22e/6nM6HfCTZnqWgQRh1w==
X-Google-Smtp-Source: AGHT+IHWjvouG9vf5NVO719ZlWW+XphlMNTuSp/67HW9qXaA2To6e351tMMqwrLG7eC9q42SOgiDZQ==
X-Received: by 2002:a05:622a:110:b0:400:9f2c:1211 with SMTP id u16-20020a05622a011000b004009f2c1211mr8947000qtw.29.1698851750784;
        Wed, 01 Nov 2023 08:15:50 -0700 (PDT)
Received: from localhost.localdomain ([50.212.55.89])
        by smtp.gmail.com with ESMTPSA id dn5-20020a05622a470500b004181a8a3e2dsm1477165qtb.41.2023.11.01.08.15.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Nov 2023 08:15:50 -0700 (PDT)
From: Ben Wolsieffer <ben.wolsieffer@hefring.com>
To: linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Alain Volmat <alain.volmat@foss.st.com>,
	Erwan Leray <erwan.leray@foss.st.com>,
	Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
	Ben Wolsieffer <ben.wolsieffer@hefring.com>
Subject: [PATCH 3/5] dt-bindings: spi: add stm32f7-spi compatible
Date: Wed,  1 Nov 2023 11:08:08 -0400
Message-ID: <20231101150811.2747455-4-ben.wolsieffer@hefring.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231101150811.2747455-1-ben.wolsieffer@hefring.com>
References: <20231101150811.2747455-1-ben.wolsieffer@hefring.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Ben Wolsieffer <ben.wolsieffer@hefring.com>
---
 Documentation/devicetree/bindings/spi/st,stm32-spi.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/spi/st,stm32-spi.yaml b/Documentation/devicetree/bindings/spi/st,stm32-spi.yaml
index ae0f082bd377..5754d603f34f 100644
--- a/Documentation/devicetree/bindings/spi/st,stm32-spi.yaml
+++ b/Documentation/devicetree/bindings/spi/st,stm32-spi.yaml
@@ -23,6 +23,7 @@ properties:
   compatible:
     enum:
       - st,stm32f4-spi
+      - st,stm32f7-spi
       - st,stm32h7-spi
 
   reg:
-- 
2.42.0


