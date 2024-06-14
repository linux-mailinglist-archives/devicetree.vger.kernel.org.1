Return-Path: <devicetree+bounces-75756-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5939B908870
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 11:52:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7162C1C20C2E
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 09:52:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2391919E7FB;
	Fri, 14 Jun 2024 09:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LGY+KQ7x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E195D19E7D0
	for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 09:47:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718358428; cv=none; b=mDFzF0Tk13xhsUUNtfpB+E3dZ4c7tdUhjsC99FTAAOk8cD4RyuZGsDuVrd4QC273MCn4ijq0Nlp2gnxWVaaQEEhxUm5VN22h6JfTUnuSytODo1UcZaGiSBx7VL/FZVX7gVfnWA18B4NMbpCGFOtL2iKmVE+sj4aZWEsyicR6GZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718358428; c=relaxed/simple;
	bh=6a1ezUMQBbtM3uBevrHObXqlW1KAkGO0em2HgJT7Ukk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YwXNAW+dEsytHYLrAtnTS73fGAQd79mTvo9/xEBRxRew+/QsQ8MR96+CwLNdTTjIr3xhbRuviQvO0BxKSBOS4Q0LhSGi1jg8SLDS3eeqzGZcItDCkIsWvW1TyhIQ35Iam9d+gaz+ls+X7k+Ha7qw3J+d/y7SULe00iYKWBDcbh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LGY+KQ7x; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a6f3efa1cc7so522591166b.0
        for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 02:47:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718358424; x=1718963224; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Iwmc7YyUOm4xBDbjnVE/cLl9RXPcTzMFZ8fnvjc/kFM=;
        b=LGY+KQ7xIrWXrUEU0sIoKbFMDiHTQhQn/IMCiY02Cy+jBzTlY8jupS77zp0iJLhI70
         NU+i/qo6K6Arkugp82ScJWEcY8n53qzcB++ZdwbaJXl+lYrE2Yq9zSTARmf4nKg3BhKG
         m5VNP8ZH18EwVKk17l2ADpVMa7add41G28LaCXZ74YO/qa0uyeVLTezCL3W9UBWeJ8ud
         Cs4RmRDM7vxmEdbGd1aGX5cqM0SJL4Z7NVgW8JP52GeuVVos6stFJR5AK00I9dVKa5gA
         s8i1b4qIn/A5AkDioo5IJvTG0w1gM2oagAaV/iUj8lnG6sVldRxHLau+FqbSXPCblTTG
         ex/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718358424; x=1718963224;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Iwmc7YyUOm4xBDbjnVE/cLl9RXPcTzMFZ8fnvjc/kFM=;
        b=odjxes4Gg3RgAaoJ1keuxaFa9Y2qlLJMLfEbpgqr2tGAGmpZMoebENZsXXvGRRwK+M
         a+f5UqiHMbmZJuyfd+PNdT5TPN0+qUFLrnM2/sOLLvsMQBv+k/E1yJLaFS6BwLPCXiGf
         znX6T+R/uBdESvx+HrTydcAolixfBq2hNfoZxMDkCtOsFGWq/l3EpLoA/zR7BmFUfJ5G
         LemTqw01ATezd2oweEzkrlE5/9t92ml5CqjQQV3He0hy38gDG48WgEBf5lfqm8Us20dc
         bNg/GgFcqc+B+B36p3AfcbU7h1KX3Rz4ImqjjGljYzF0fBF5LLMqEvJmZaIw0sjSMSkd
         xZgw==
X-Forwarded-Encrypted: i=1; AJvYcCUi8Aw2BnlLklHxXTdqYeD7Kl9V8N/SsaOAV8iubylmn4EHcddwH7uawU9zq3aqvdXWkSVoOvlD4BKfkPZzJHVKku24UwO/Wf4h6g==
X-Gm-Message-State: AOJu0YzJ/lsazaeOgqI3GolA5FzO41Kbibpu8I7Eb4nNXgXW1mm8ixE1
	JQs8S6tMEB7kLJViC23R6lx6oVfMKOwX917iGPAzdY/u5/QGgT2IQtpZ6xPdZ5U=
X-Google-Smtp-Source: AGHT+IFGHX4cF4M1r2y8AHK5kgGVnBSOah5PGU+We1I9mKi7qiDqk6ZzvLWJM+Qwin1N8Vfc/vcJnQ==
X-Received: by 2002:a17:906:c0c5:b0:a6e:f53c:8da0 with SMTP id a640c23a62f3a-a6f6080c781mr154203666b.8.1718358424287;
        Fri, 14 Jun 2024 02:47:04 -0700 (PDT)
Received: from [127.0.1.1] ([78.10.206.163])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6f56f9c84csm164966366b.222.2024.06.14.02.47.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 02:47:03 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 14 Jun 2024 11:46:13 +0200
Subject: [PATCH 14/22] dt-bindings: thermal: rockchip: reference
 thermal-sensor schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240614-dt-bindings-thermal-allof-v1-14-30b25a6ae24e@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1131;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=6a1ezUMQBbtM3uBevrHObXqlW1KAkGO0em2HgJT7Ukk=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmbBFsTvtf1ULZrtH6GWJrZWn/jbBu50Y0K1VTc
 0Wt6oeUybGJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZmwRbAAKCRDBN2bmhouD
 1/NwD/9O4ot8cobnhA94V3eGyRXw9zI5iESIUEkI1Mbbo7u21Zss4doBkhIDxJVQPLibQlpPDKs
 vl14uXutFJcltQlm/A30q7/jGYqin8KK+/fxS+lF14J7Fm+3oR2w5nhGXJq/9eptPEvk3xiH1p0
 6sQMjw0nuX+vqvIdVI0HSIGysiYW9eHWrwjfT2H0x2AI4eSjoOjqRw8BCVG1NOXkiOcWojysyie
 6Pe/a65m99arhY72cNG5XsPMldFzUjctBN5RFrE6OKZdohirpSSKFR4ui2PdxAp5GhEkcvlApXu
 JTKC1SMMHbFFDPVGHC4z0FdwyT7hbxBnR4zeVza8HeF7gY1NwvdMte/ICkBOm4nLC9XiXxBh8Ox
 gRb5WbhTZMcA2D/BRpTHEH8cJRx9l++VITdFXDh2DKM1zJBSyTXZLBp2T/nznU4UCoZvGVo8L/6
 SL6E6301KeFidlqEV72QLyq6H/+0idmujB7H/OwDlIz3rWlt8WAbKmtD8gwZWJAconS5R/wzo0q
 qwhIyGQup+u9pvI87775gFYyWIrMSKJUCjFFjCt+azCgzvgFIR1RFwzl+4Um4RPBXjtpfLa8Sv+
 qUC1e3KXvqeGpd2hDPVFEIJxO/3TRP8QqO5N7KwNG1PZSSDA/LKALNPT6of5MqC/u13zepj07zJ
 tHBm3LjcR8x8A1Q==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Device is a thermal sensor and it requires '#thermal-sensor-cells', so
reference the thermal-sensor.yaml to simplify it and bring the
common definition of '#thermal-sensor-cells' property.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml b/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml
index 55f8ec0bec01..b717ea8261ca 100644
--- a/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml
+++ b/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml
@@ -9,6 +9,8 @@ title: Temperature Sensor ADC (TSADC) on Rockchip SoCs
 maintainers:
   - Heiko Stuebner <heiko@sntech.de>
 
+$ref: thermal-sensor.yaml#
+
 properties:
   compatible:
     enum:
@@ -76,9 +78,8 @@ required:
   - clocks
   - clock-names
   - resets
-  - "#thermal-sensor-cells"
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |

-- 
2.43.0


