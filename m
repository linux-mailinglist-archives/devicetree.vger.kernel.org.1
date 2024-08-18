Return-Path: <devicetree+bounces-94563-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ADD67955E3D
	for <lists+devicetree@lfdr.de>; Sun, 18 Aug 2024 19:33:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E18341C20D63
	for <lists+devicetree@lfdr.de>; Sun, 18 Aug 2024 17:33:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB97E15B119;
	Sun, 18 Aug 2024 17:30:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sfNMScWj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0033E15ADB3
	for <devicetree@vger.kernel.org>; Sun, 18 Aug 2024 17:30:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724002227; cv=none; b=etStXPyl+ADXsyywkXe6PXpYHMwwXCswuJnN+ZUkwF8gVEJyTl/b6YoV5GV+RGIiQVDJWF627unAWLmF/y4VYN7Ll+UnD8YhzsZu8odcWR9HC3y/j+bxPWql3TfJb7zEsagxUUarOFK7ZjTX+G58j43pAvprK7zBTAUpPQcUFPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724002227; c=relaxed/simple;
	bh=U6S5tfFiL27fmhyJLQdFRdd1Wz5/I61DAlDxqq5TzA4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cNC8Njmwuj/noSmSTGJKvzQiq/CC/E0WPR5+IHuSV/VUEnTMBIG8V05rT6gXbSMQKOe5Mj01vqfOPw/jUEfuvc/0QlEYX71l6fY9qii4OfMSMQN1Ch6BPacC9vQNOCm74DCQtC4iQMDvZIyzWShTDRHqGRJvvSN+LVlHywUiw+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sfNMScWj; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4281c164408so27236785e9.1
        for <devicetree@vger.kernel.org>; Sun, 18 Aug 2024 10:30:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724002224; x=1724607024; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4LJzGmSDXl8HNs+ZJgf58xM3uvdTJPYEdQtiLGgE/Vo=;
        b=sfNMScWjJlwkS+KjEYdsS1rrn9ZXLEhZYBnLaQGthZyQh8x6cZHa4Z4LYg9yDbLGb5
         xfZh3KzTc+c3bAthC23QnkUEd1ALJ9dyoQNNjVNc8+fyCX8kNPEqIjrrA/D538/rAA7v
         7ggFPJeVwGL3Aa6WHDaYFB2VNZdsRFPBJJhtcAPaFZRcGJI8O1wUAUKSFjzj558yIx0x
         /RwV6dCTQRXKrULKQ0AqFPwhithQkyA3q8503N0LMoynNGrx8sTv8c8ls6dTntE1LfdA
         AkkHRLYGpzIapNtmYI2mvYi6mRWYGxaRCCzuReE1BOLi3YotVEg9qwpiI/L4QoDheKh+
         k43g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724002224; x=1724607024;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4LJzGmSDXl8HNs+ZJgf58xM3uvdTJPYEdQtiLGgE/Vo=;
        b=OBSNEMlwAINJVHvYpiUR84QXdfMJsVATh5d24Ou0ecrNAnVgy6A1Z7Cx6mNqSdZzhU
         UMDZNPSmNrV/UeRQfU5JrNSAcb4s2hYyE/QXBQx8VW/DgbCR/cBGF62uQZ98vTCpjBpu
         yByjKr3RZs1Ck8DxT9m851SCs+RrTwOVdMpQ4aWJsRONkxGjJxLLSiVlsJvfz4Wp2ncX
         J+PXk9oYXoVfENPhZhKXyIb4ssZZAGsSbu8wZlXRisLmjtwdMBg/NtCyKSm7c3jl65q0
         WOGF/DDG55AtYNBTzT2JCzlgHX0+1c9I5X1H+rHA6o0LJsk1XZJvgdveaBXl3vmNsFy4
         l3Zw==
X-Forwarded-Encrypted: i=1; AJvYcCXWQ6Ca8swuHWVL5BfhlrofKyOWVtKF08ejBlTJN/ehb0uh7WY95R1ZSZuL+ajuGtioCq2NZuewCHPu@vger.kernel.org
X-Gm-Message-State: AOJu0Ywa55h5WZ5dtSqPPPJmTdwxE+XISvy+En1FJASIlt2AzZUFCAaJ
	3IuG2wIBoiXJC56gCf0Q1XbSvZ73rSfbvDwOx6V2H7p0vHqtL9hQsFjkOhH1200=
X-Google-Smtp-Source: AGHT+IGekL2+ttve0hynRqEEzbgRWcWynLHa1J/EMMNb3eGD6VlpT3jMglNMhKBlzMDg3B561e5RkQ==
X-Received: by 2002:a05:600c:5254:b0:429:d43e:dbb9 with SMTP id 5b1f17b1804b1-429ed7cc4d4mr55016825e9.23.1724002224225;
        Sun, 18 Aug 2024 10:30:24 -0700 (PDT)
Received: from krzk-bin.. ([178.197.215.209])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-429ded7d5a9sm134999915e9.43.2024.08.18.10.30.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Aug 2024 10:30:23 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Serge Semin <fancer.lancer@gmail.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Charles Keepax <ckeepax@opensource.cirrus.com>,
	Richard Fitzgerald <rf@opensource.cirrus.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Heiko Stuebner <heiko@sntech.de>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Magnus Damm <magnus.damm@gmail.com>,
	patches@opensource.cirrus.com,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Gabriel Fernandez <gabriel.fernandez@foss.st.com>,
	linux-mips@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 4/5] dt-bindings: clock: rockchip,rk3588-cru: drop unneeded assigned-clocks
Date: Sun, 18 Aug 2024 19:30:13 +0200
Message-ID: <20240818173014.122073-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240818173014.122073-1-krzysztof.kozlowski@linaro.org>
References: <20240818173014.122073-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

assigned-clocks property is redundant, because core dtschema allows them
if clocks are provided.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/clock/rockchip,rk3588-cru.yaml        | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3588-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3588-cru.yaml
index 74cd3f3f229a..4ff175c4992b 100644
--- a/Documentation/devicetree/bindings/clock/rockchip,rk3588-cru.yaml
+++ b/Documentation/devicetree/bindings/clock/rockchip,rk3588-cru.yaml
@@ -42,10 +42,6 @@ properties:
       - const: xin24m
       - const: xin32k
 
-  assigned-clocks: true
-
-  assigned-clock-rates: true
-
   rockchip,grf:
     $ref: /schemas/types.yaml#/definitions/phandle
     description: >
-- 
2.43.0


