Return-Path: <devicetree+bounces-75746-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 038D6908829
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 11:49:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 41715B25F5B
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 09:48:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EBDD196C7B;
	Fri, 14 Jun 2024 09:46:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DmbKDmIE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB5FC195980
	for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 09:46:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718358405; cv=none; b=JcoLf5bFhEPv7ksiXXBHXVfV/+On8nzEsJ8rwFYKECgni9p4omoRi3NGUVnvhOYiJT2unM2hS/zlWBfgl2h2XFpcujDLA1/207KypqEUu8XVaselsfWgHPqDf2wD8aqmJGtTIWWvZ34nkBFV3ZyOzSdo8tX4erjv74GvUKyG/WQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718358405; c=relaxed/simple;
	bh=4nD7nbG+x/aHIG3b41jcsj1A8FaFZMdyxJIm6u3+UCQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Ubguqlu6Kc7r+WfYWAGSdCl4fSC6A2NQ/25x2LJ92uuhPGPcY3YWyRuUeS+dEkl9ydEral0/hrkSJGW9Na4NqafE0241ORBL03zT1xn0vae5JK8rb9nPMui+PiK7csn+hCm4KR6Sa9bl2xUKOQXbs/qB1SLjZUYVz4IcIJwi6DU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DmbKDmIE; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a6ef46d25efso256757266b.0
        for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 02:46:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718358400; x=1718963200; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F6wsm8Xx/pf44IU0fA2MjvK7doD5kwmYUud3XBVXDbs=;
        b=DmbKDmIEO2Xpcacaa1TkjNmeKnK4GQy8CeTo31tIsdI7BID95TmVT0vDLhnkWHarK2
         dNQix37E2vwgrgDjcXBcSmMfM0K4sRLeTN2rt+4Yb8sUE4P1b6/aU3IkN/qBa/ywBkOV
         fdqDaOyoUpIwydr4O9tBiQ5NbSyuWrYieYJuLvUrb77hdmPkAv5g6TryzzW05wulKSrO
         KFf2J8FAj6pIJGcELE46j+po1/Z4k9tD+ZuSl0PuoAjWdcDnzls1Zz3gve8eNHe5KaSv
         6aSTjkJlKjCPCPqx58sIIG4/Q6wCkCw5UqYwV+Ox8lLfqaITB6WPPwpYB+aRAyET2n+Q
         dkBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718358400; x=1718963200;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F6wsm8Xx/pf44IU0fA2MjvK7doD5kwmYUud3XBVXDbs=;
        b=DF7UMWexSkHIoBwA0yDLErJ+UovRKUFPThbUmLrXUWgPzkIXEIaNtUxroCFB603gCM
         rfX6ajyMsUaxKuxaU3tTtAOuHtr8hemIpGWB4aOTsKMTt8UXTlGQUmMhPAEVpitwrxyT
         Bpf7eJIWA24drziKSQwHCyfD6WAHb1pXsTMvXpnUxh9sut2B5/R+oWb/bdXp1i8c2m2o
         1ArxSwo86ntDCA6n4+h8at0C9s3evdx7EV8on/KVdi5t7Z9IjZVTWBlhgE34jXViAGrb
         EHiZBY7JEFu6K8gKrIDRA4LFI42swcnw6iYHX37fohQ1d22CwGnTXDhUzbR3FVz+fD/g
         bwmw==
X-Forwarded-Encrypted: i=1; AJvYcCUk04IfjBwjXndvoRu03bdiTHuW4mZ1Slmj+HhdPKpboqfrKEgDSVsC0rIeXmqnLnUTvG3xxMyjJ6wDD/9vbdpE0lN3vvygfeSjFA==
X-Gm-Message-State: AOJu0Yy/STs86qT6nxBAOvwcoo4W7bUhOl1l+Ee5827ssn2N6jI3Cy/r
	9VO9UXlPQqemO+7Pn9NeoHxtR0mGsg/Eszb1Hg1zNSLXHUpAJIRCBk9KqlkI0DU=
X-Google-Smtp-Source: AGHT+IEiXb3yGV64TEB9dXMpsLr2AVSRMLYNMjccShQyJiKLUI2XAj/tHwYBQihryGriZP6pQI+tWw==
X-Received: by 2002:a17:906:1754:b0:a6f:593f:d336 with SMTP id a640c23a62f3a-a6f60ced441mr137234066b.11.1718358400263;
        Fri, 14 Jun 2024 02:46:40 -0700 (PDT)
Received: from [127.0.1.1] ([78.10.206.163])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6f56f9c84csm164966366b.222.2024.06.14.02.46.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 02:46:39 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 14 Jun 2024 11:46:03 +0200
Subject: [PATCH 04/22] dt-bindings: thermal: brcm,avs-ro: reference
 thermal-sensor schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240614-dt-bindings-thermal-allof-v1-4-30b25a6ae24e@linaro.org>
References: <20240614-dt-bindings-thermal-allof-v1-0-30b25a6ae24e@linaro.org>
In-Reply-To: <20240614-dt-bindings-thermal-allof-v1-0-30b25a6ae24e@linaro.org>
To: Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Guillaume La Roque <glaroque@baylibre.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Vasily Khoruzhick <anarsoul@gmail.com>, Chen-Yu Tsai <wens@csie.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Anson Huang <Anson.Huang@nxp.com>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Amit Kucheria <amitk@kernel.org>, 
 =?utf-8?q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>, 
 Heiko Stuebner <heiko@sntech.de>, Biju Das <biju.das.jz@bp.renesas.com>, 
 Orson Zhai <orsonzhai@gmail.com>, 
 Baolin Wang <baolin.wang@linux.alibaba.com>, 
 Chunyan Zhang <zhang.lyra@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Pascal Paillet <p.paillet@foss.st.com>, Keerthy <j-keerthy@ti.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Scott Branden <sbranden@broadcom.com>, 
 zhanghongchen <zhanghongchen@loongson.cn>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>
Cc: linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, imx@lists.linux.dev, 
 linux-tegra@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 Florian Fainelli <f.fainelli@gmail.com>, 
 linux-rpi-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1263;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=4nD7nbG+x/aHIG3b41jcsj1A8FaFZMdyxJIm6u3+UCQ=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmbBFjXVOnPfxENiYSEd3PegskhPdMdIBD/C50x
 gmcTpA2YC2JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZmwRYwAKCRDBN2bmhouD
 17PBD/9uYmV8ARyZjA4ebD50QHOJeOLukSI+7nYfdM7JguKmOozwbkqqMEEm4Y0hsTy4FKxfSQ6
 aX9Jlt2b4Eu8v6bt2h7qgbs5dwjMto/c9km1pndTva/76T6LheOsVIys7rKqu9I4WFycJAl9Z+R
 ITA4nfhIqHKcc5lMGo63EYIymwpGpRg0xPfhHMeBacHmuEO8+Ga19DYhegyzfmz/1IIfsMeIQyN
 /e/qMoh23oP0pX6rx1s4A5g2LrZXct4S3ThE3MAiFEwmLU8v517DS818NXn3ZkoiMZqddZUUuMQ
 73N7kWxS4DRg4tjiS2ySxTm+NrIh/EJs+xfeY3vfqprS8+JiDw2bstTnfTgpqtcK25xrKOAUKkA
 VQI2F4dPkZJGMgWSHgmrytDYs2AnwgO8IErRXB2cxcOMgSLA7ec8ERAg81qOC+YZk1BLqLkAoJC
 ie05pevMxHxxEnGk0eYwn42+Z4l3C4AjWGeU8AvPb7SVd91uFpLoxVbKLQ+pmo8WomhTlt6FQAS
 kzZl4sy/enWnW7jJcfB0L3NzCT4cpsXK1eWhHWk9wZ4SkbLTkCVjw9p+YF1GH+F1961ziJwtkXV
 XZXgbQItXtV6BKXx5DSa3sfi+vpztQdEOHa9eDA7BtuT4Z+8K7liyhWcIiwnW8+j/OQ21Q9tMWX
 LO1gAouP7lLNF1g==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Device is a thermal sensor and it requires '#thermal-sensor-cells', so
reference the thermal-sensor.yaml to simplify it and bring the
common definition of '#thermal-sensor-cells' property.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/thermal/brcm,avs-ro-thermal.yaml | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/thermal/brcm,avs-ro-thermal.yaml b/Documentation/devicetree/bindings/thermal/brcm,avs-ro-thermal.yaml
index 89a2c32c0ab2..0271a0bc1843 100644
--- a/Documentation/devicetree/bindings/thermal/brcm,avs-ro-thermal.yaml
+++ b/Documentation/devicetree/bindings/thermal/brcm,avs-ro-thermal.yaml
@@ -19,19 +19,19 @@ description: |+
   Refer to the bindings described in
   Documentation/devicetree/bindings/mfd/syscon.yaml
 
+$ref: thermal-sensor.yaml#
+
 properties:
   compatible:
     const: brcm,bcm2711-thermal
 
-  # See Documentation/devicetree/bindings/thermal/thermal-sensor.yaml for details
   "#thermal-sensor-cells":
     const: 0
 
 required:
   - compatible
-  - '#thermal-sensor-cells'
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |

-- 
2.43.0


