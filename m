Return-Path: <devicetree+bounces-66784-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AB2C58C4B04
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2024 03:53:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4AE171F21B0B
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2024 01:53:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9612937E;
	Tue, 14 May 2024 01:53:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PFP4Dutu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E598417FF
	for <devicetree@vger.kernel.org>; Tue, 14 May 2024 01:53:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715651609; cv=none; b=OfB4V0+L8Ux9AC85m3mf8ID2ZqrdiyRtT3007gAu/ye3NGH61YEyUDWdX5Z0Lx9wt/YNjRFtS5Rn9U3EX6RhFPqtpNDPnczyAEYG/A0Kwa5VlWf7AkASToQ2egup/2WEjwmOEjN28uT0MBVj8N0R5r5ixEaJw22Br1wb0YPLfnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715651609; c=relaxed/simple;
	bh=ZcG95Ppo/uFx+aND0nK3ER6D57tfSvXBNGBOdn691Fg=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=AQLXay4FeMrME6i1MiBtTm5yEvdP4dAIjtgjUyOR5H5i6OfHspetRKJTiFhiomE1ea6PE9JGbMIGj9wQTJ/jHPOu0vybYPsQQqwB+Bla2G3DJuL3QsUqmKDGSR3bzG0aS7umNEgg+dv16ZSA1osj1n1BYHpZHPeftR1qTCu8VeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PFP4Dutu; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a59ad344f7dso1026560066b.0
        for <devicetree@vger.kernel.org>; Mon, 13 May 2024 18:53:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715651606; x=1716256406; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fChpoExeFzd2Az+Su556Ffsvq3JBbvZA6mRiE3/6qbE=;
        b=PFP4Dutuoyy50mU4jP0IOwF1K8NZ1FKvXhaXHLx33/apmhrS0hmOtR3ZiFyO1bY7hL
         NhBpTaoB/VTUq1phMlu5CWrZz9JxEnpcw4xEkBYoZVRJgWSJD4JcyftuT0xNovBNHCjv
         0kCkTSDOejUqz5ocho2sjEae5RoQ3rLU3qlzs5SDznujr38liJu8WrsRU9AuDGhOiMDk
         voCgPWpM+1TFFJCZfol5uake1ThUn89sKXm7MCuB+Vsc/fqcI9kHjQ/Geq4uT5ifiiAz
         hcKOdXasWnBXcXgRsfJwBpQba3TnssmZE8URiSpQl/D5/y3GPTnDXx8hBSwvIYAxw23E
         Z+cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715651606; x=1716256406;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fChpoExeFzd2Az+Su556Ffsvq3JBbvZA6mRiE3/6qbE=;
        b=OiUjA0TLm7hhP3aEFLCmqGAXuwJL7IxrvRcTP28ofdWBXPKtDLOXUDxscsqX2ZLvK7
         YGfsb9icoISmJQYq6DJPpZqQgQejLHNtSTJPFDCSWQukJvh1Go3odJ3pQy3YJxf9X5Dd
         P7bOqxcBYFyOAkyFv5xq/raHnO7Wb4sRzSYeadddVXw4MFV9jYCsjeqHtkO9lyYZJ1Gn
         hPkqgXnaeU/huPB7lcxiKIXwt2tQth1h7XanOFa86PxYYNNtCCs4PrwcCwSelK2BHfUt
         bNfItHarjS5Cxtw3BYGS/TykhqUz6UJGxqWg+Nf+MRulxt446bAde/myw+Mr5jq26DoR
         t/JQ==
X-Forwarded-Encrypted: i=1; AJvYcCUyuMsnOjplAW1OADH/NSDm4DMGsISj+xT0RgRxEZrC/u1+7C1dJTUZUibUvlj5lA4WBfcgtwWDas9m5B6cSumzxGsF2lND3YD3MA==
X-Gm-Message-State: AOJu0YyivbFJPrHPDEoaxEro7+eqAH6u7KajovoxZF/qWEx8UpbJuaMx
	dbiMarfyhh5n4gACJizY4aR+nQYT7u3t84kx25MQ8Xe4p6ZJ+JN7
X-Google-Smtp-Source: AGHT+IEq75Ot9SYG0z3IC3m2UdmZpVoWZknjsilYqX60VGzRKZRAz2xfjnSBvmr44ctRbHZ8aQgmWA==
X-Received: by 2002:a17:906:594e:b0:a59:cd18:92f5 with SMTP id a640c23a62f3a-a5a2d54c699mr725052066b.11.1715651606075;
        Mon, 13 May 2024 18:53:26 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a179c7ddfsm663377066b.121.2024.05.13.18.53.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 May 2024 18:53:25 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
	Lala Lin <lala.lin@mediatek.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH V2 1/2] dt-bindings: nvmem: mediatek: efuse: add support for MT7981
Date: Tue, 14 May 2024 03:51:53 +0200
Message-Id: <20240514015154.11206-1-zajec5@gmail.com>
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

Add compatible for MT7981 SoC.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
V2: Use new compatible instead of MT7986's one

 Documentation/devicetree/bindings/nvmem/mediatek,efuse.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/nvmem/mediatek,efuse.yaml b/Documentation/devicetree/bindings/nvmem/mediatek,efuse.yaml
index cf5f9e22bb7e..a773101d8538 100644
--- a/Documentation/devicetree/bindings/nvmem/mediatek,efuse.yaml
+++ b/Documentation/devicetree/bindings/nvmem/mediatek,efuse.yaml
@@ -28,6 +28,7 @@ properties:
           - enum:
               - mediatek,mt7622-efuse
               - mediatek,mt7623-efuse
+              - mediatek,mt7981-efuse
               - mediatek,mt7986-efuse
               - mediatek,mt8173-efuse
               - mediatek,mt8183-efuse
-- 
2.35.3


