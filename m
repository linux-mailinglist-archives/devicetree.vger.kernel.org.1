Return-Path: <devicetree+bounces-15584-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A2247EAE41
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 11:44:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9ACE61C20A33
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 10:44:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E92B218E0B;
	Tue, 14 Nov 2023 10:44:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="UYA4KFCp"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1E0E171DC
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 10:44:15 +0000 (UTC)
Received: from mail-oa1-x33.google.com (mail-oa1-x33.google.com [IPv6:2001:4860:4864:20::33])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 327FC185
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 02:44:14 -0800 (PST)
Received: by mail-oa1-x33.google.com with SMTP id 586e51a60fabf-1f066fc2a28so3313942fac.0
        for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 02:44:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1699958652; x=1700563452; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=EtGo2PbI4VhfFCzLF5CTcHmhJXxS0YiF4GH0b4RYzjc=;
        b=UYA4KFCpaFaA5Vb6lsM8FVWQ/+HU0Oxtm8zhCbwf57Szg8Kf8UA4QAi8m/VmONY/LH
         BJJwhQDKnQR1yuZaxSc+AYgO6nbdc0bhoiwEV7x0V7v+jDyoTYZdQmk9Fs1Lv0LZTQjY
         fb/hfeokqDJsF9duBwa4fbIEGH4ncoF4g4L3I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699958652; x=1700563452;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EtGo2PbI4VhfFCzLF5CTcHmhJXxS0YiF4GH0b4RYzjc=;
        b=XJai/BoZnHQxPSJw8hpBLv36MwZMq74aiv55YthAasQ58HyUFiz6IhebLmcnANxPrX
         b1dNQuIdbdzl35+LAhXz/KKWwT1HfFvRM7NCwzMSIY9bD3Zvz/L5+59YNdPbSM3Xwjcv
         Oj5dDCeyk9g7rWj103d12BHp4mXtzcR3t4LN2DcQeKgtjZ0X/86jQ8OcbDDDL8SIcIyy
         GDmMUKL9ZFnUR3w6wgOMi3gmeZuO3F8xxHmEY/JmfB/rqjl+CG08WSybN3i9cf3Tf488
         WNbv+J5RXT9vLKGB7RDkdikZHXzbPa1Q9qrtdgjEK5Mda4FXr0Uv3wDoyasc9XL/V1HR
         qDBA==
X-Gm-Message-State: AOJu0YyE5oPIIvlRJabtuBFJqSlam92zWPZHIfuilgXZe5Azg/RjXsGB
	E3cvMe4EZTB5S4s6+XGzmLcPsw==
X-Google-Smtp-Source: AGHT+IHxmgUlMEBieMM61gtbnmLAhVuEAHgMl6ycbPU13IOxBVkaJ+NHHsqbyyZtI6i0GsUzVhD6Ig==
X-Received: by 2002:a05:6870:81b:b0:1e9:b550:c05a with SMTP id fw27-20020a056870081b00b001e9b550c05amr12708195oab.53.1699958652536;
        Tue, 14 Nov 2023 02:44:12 -0800 (PST)
Received: from treapking.tpe.corp.google.com ([2401:fa00:1:10:b51f:fb1c:5e29:cfc8])
        by smtp.gmail.com with ESMTPSA id m4-20020aa78a04000000b006c33311965esm926136pfa.68.2023.11.14.02.44.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Nov 2023 02:44:12 -0800 (PST)
From: Pin-yen Lin <treapking@chromium.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Pin-yen Lin <treapking@chromium.org>
Subject: [PATCH] arm64: dts: mt8173: Add G2Touch touchscreen node
Date: Tue, 14 Nov 2023 18:43:23 +0800
Message-ID: <20231114104353.1693966-1-treapking@chromium.org>
X-Mailer: git-send-email 2.42.0.869.gea05f2083d-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Lenovo Ideapad C330 Chromebook (MTK) uses G2Touch touchscreen as a
second source component.

Signed-off-by: Pin-yen Lin <treapking@chromium.org>
---

 arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi b/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
index bdcd35cecad9..0d6dbc36c352 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
@@ -29,6 +29,14 @@ touchscreen3: touchscreen@20 {
 		interrupt-parent = <&pio>;
 		interrupts = <88 IRQ_TYPE_LEVEL_LOW>;
 	};
+
+	touchscreen4: touchscreen@40 {
+		compatible = "hid-over-i2c";
+		reg = <0x40>;
+		hid-descr-addr = <0x0001>;
+		interrupt-parent = <&pio>;
+		interrupts = <88 IRQ_TYPE_LEVEL_LOW>;
+	};
 };
 
 &i2c4 {
-- 
2.42.0.869.gea05f2083d-goog


