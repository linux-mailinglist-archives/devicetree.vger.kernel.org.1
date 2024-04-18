Return-Path: <devicetree+bounces-60615-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 42BF38A9CB9
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 16:20:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C4B611F21422
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 14:20:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8563D16F273;
	Thu, 18 Apr 2024 14:17:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="MeIJd2aB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B977316EBF9
	for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 14:17:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713449850; cv=none; b=rwmcZXdGlS1BhESsYckhox2EX/oE6I7soTHCcw61ZK0AsNaApUG11GORQQdFxb6InVaSG/7SNIblgs+fUuGHwNkfv9q8/hgv3W5g1Z569SieLLUnlbgGGit+8SAD5G2q8CQnyIsAFHLJwZD9aiZdbh1XuE9fimFou6ypphq6blM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713449850; c=relaxed/simple;
	bh=FZE4p38am23Wbba4sdDEsuVyWoBZbiLCeYBCcNU5TdA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FQv9OhRGaLuDJwuO78kI17tVQbFh3EJxbiUYRty+VbUZq+z2GnR2ZNxf4b/SIlyPiN/mfHvBYsfxQcPGIgGDr28BM5faPKp7V41JNHgYkeDk9Op/lm9uTTBoH6EvnQRH8OPzFW/A1eqpWfwTHCpzTtjflZXqV3iX3IpnB/WbGCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=MeIJd2aB; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-418c0d83d18so6903535e9.0
        for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 07:17:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1713449846; x=1714054646; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Xyh9I+7RDjmoXx6ibmqfU5YmUk8cuDqOZ30bQAqDPzU=;
        b=MeIJd2aBc20FVm2eISaOtMi70Rk+/y8Dql/zdScD+174QD+bH99ADCEwz6fxWpGoED
         jCZYYYcLrWKD61D8m+Q76ux0PjlAx8gyW8ldIqDJbgeR5fdnXVAaOBmnMuww2u5ehFfz
         dyLqShGEZFBfZA8/c2joGqlmHl6TgzgBAAFeb42m3rvsMpJr1RzHB/BD0StTbo80I6T7
         CXpC2stemWz9nnKzv1V+r39c9fDOQRlnLfzhw0UstjVfOJiaiPpgxwwNALbo2hwvMk03
         XtdeV82zBh2umOOu8WZUuRXISXZ1G9k/1jKvGF/rCs/qz6i+GYXMdx1/1bAlRiMlrpMb
         BVlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713449846; x=1714054646;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xyh9I+7RDjmoXx6ibmqfU5YmUk8cuDqOZ30bQAqDPzU=;
        b=nVYjXFEvQs17SUOeYWEvaehqz4sHtUE2mgNDcXMCz1lPKg83bWIstTXJCwTIfsK1zN
         DZOy9qilrLg3Bu3CNvnSYQlg0hXkHrIMtu1uhcRTYMltt/YD2X2pa6XFwslw/A76H6rp
         3s58mxuQ+hswrdQ9+Zj80RyKymPc3SfITF7F6UP0HGvSUUGa3ABOxKGrQCDsiRYSqdLB
         7+F7FuKG3rp2xKJApDIqMY62mw+fIeAdP8eVxqIKNZ0Z7d1fpe6vFLo9iJ30pXXBkivh
         NSam49YNz0YUy8NALznsHOifVO9rbaoCqf9kABEqgNm3Z/Gz39F4ddDIfpI8QJzTMFvf
         xMvw==
X-Forwarded-Encrypted: i=1; AJvYcCXvHXfa2zjwVAo2fCF37e9SnD/PSkE/CNU31Xs6H0m0R+6XQjtNyqI/9nryO43BYoRQxZcR2qH5JedZF8QGEj18sx0NFEXr620Bnw==
X-Gm-Message-State: AOJu0YzUbiFZN2w2/QDquCP//UuUemJcQegfxNPSJ0RzNJz+NPBGDACe
	izSti6r/7vN2RbBuA4hEE1h08Lhi1/4csVZvwDx50m4bTqGbkcHJFXu1+NpPWtA=
X-Google-Smtp-Source: AGHT+IEToY2RaHfp8/SGhr+SzxRU5xE6X46yItp1fzn/NmRrntSYP3f0mFM/gMKeI8XS0GnztZrbrg==
X-Received: by 2002:a05:600c:3d92:b0:418:bdee:d58 with SMTP id bi18-20020a05600c3d9200b00418bdee0d58mr2125448wmb.12.1713449846274;
        Thu, 18 Apr 2024 07:17:26 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id i9-20020a05600c354900b004180c6a26b4sm6267510wmq.1.2024.04.18.07.17.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Apr 2024 07:17:25 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Thu, 18 Apr 2024 16:16:58 +0200
Subject: [PATCH v3 10/17] dt-bindings: display: mediatek: rdma: add
 compatible for MT8365 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-display-support-v3-10-53388f3ed34b@baylibre.com>
References: <20231023-display-support-v3-0-53388f3ed34b@baylibre.com>
In-Reply-To: <20231023-display-support-v3-0-53388f3ed34b@baylibre.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Jitao Shi <jitao.shi@mediatek.com>, CK Hu <ck.hu@mediatek.com>, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Fabien Parent <fparent@baylibre.com>, 
 Markus Schneider-Pargmann <msp@baylibre.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-pwm@vger.kernel.org, 
 linux-clk@vger.kernel.org, Alexandre Mergnat <amergnat@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1014; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=FZE4p38am23Wbba4sdDEsuVyWoBZbiLCeYBCcNU5TdA=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBmIStjb/g6WWWPTVLJUfpwBGujfY5yXZ146n2j/DZr
 MvPY23uJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZiErYwAKCRArRkmdfjHUReRND/
 9YQd5KWvjqnnV42cCyJN+vg12K+UwcFK9Rqo+3q0ESv9jvSgt8Dsv4UtzVW1uX+WisefO/wnHatJF7
 zmq/rIHOBgG0QUE3W48x/w7n7grwQbevcTrp3Ob+WdR6huTGfLIZNJtaYPzRfQrwJ29iPZS4+vFjyS
 EehxV87xYf4zKrcZzqIv/MiJL4YE4DgHyb50p9iRHfHqk3ckmNP5DYih9BCPMg0M9F0aEFmnHvIHV/
 J0VHAwMNctlR15SuKaxx603N5YhNwSGake9NtRGU9yR+EhVwZd3ekYKWH3hpQKcNoWCOw3zDz9xLd3
 uxggMjXj3E98lG6sfnVMGyQBqd+FWL6oGD1+Q5A47BQmaDQ+UCmZzKhTr8PPAyIUoyizJgXlreYXfU
 BAzAHe8Oiri/BtY4WAiGk6E++oY5VRR9Q1itentGNWiFJcrRqwjE52EVRbQ50WglmkFQ6If24plmxX
 5ndkqBsorM0ZOh6Qwado9dAe8FPWQtCux2D23eajIOzbqWp9EqP1k9/JNVUKkwOAtNX9jf8HMyBWBj
 VqAhCrYJfqblrISh0Q+iWgRKeKXGTFpBpneWVrfGqwMO4k1M0vWqi+Zu7aRoiAr60qf5cLKBPDH09+
 SBTNBjmjJBIRW8CV4F9gOKqoPW0hgoaz8D/jPji/HoRoudHa1889JQqqCOmw==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

Document the display Data Path Read DMA on MT8365, which is compatible
with that of the MT8183.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 Documentation/devicetree/bindings/display/mediatek/mediatek,rdma.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,rdma.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,rdma.yaml
index 39dbb5c8bcf8..4cadb245d028 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,rdma.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,rdma.yaml
@@ -45,6 +45,7 @@ properties:
           - enum:
               - mediatek,mt8186-disp-rdma
               - mediatek,mt8192-disp-rdma
+              - mediatek,mt8365-disp-rdma
           - const: mediatek,mt8183-disp-rdma
 
   reg:

-- 
2.25.1


