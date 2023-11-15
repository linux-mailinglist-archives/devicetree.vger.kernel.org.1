Return-Path: <devicetree+bounces-15799-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CBF87EBCA1
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 05:35:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5AF07B20A4D
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 04:35:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1FE17F5;
	Wed, 15 Nov 2023 04:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="PA7ze/vL"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7079479
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 04:35:21 +0000 (UTC)
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C97FD9
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 20:35:19 -0800 (PST)
Received: by mail-pj1-x1034.google.com with SMTP id 98e67ed59e1d1-28003daaaa6so133386a91.0
        for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 20:35:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1700022919; x=1700627719; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JKE2Z3rIdCP16EvnaCbTQcF6cETDsiXZjgYQFVaGzsY=;
        b=PA7ze/vLK/n0DCl+piO4LVDdXt4uQIgscs9vqxrC0mMHoFGfAdrWaKPWsAzmdWUX/D
         WzPTAMy311JyYZUJjQj2S86klcV3Fcp0B1HENsz9CZAXTmb1033zvrvGhGJRdLo3HhlC
         U/EUuncoQiJu/dhrqw4UW7zkEXD3PvpoVLwf0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700022919; x=1700627719;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JKE2Z3rIdCP16EvnaCbTQcF6cETDsiXZjgYQFVaGzsY=;
        b=OCJ6+PLPdEyO4cNfyT3Rrr5WWEFE5XCv7eE4bNbwt/wH2LLKFY4SHPJ4YNrTmUT95h
         D2TUkmj4WIZ+J9++TpbrU+We+Q/XeOclGVpLw2YLUcn5gJdMVk+G+MzbHJGx2d7lKodP
         5E/fD8p10M4c/GGK0KzmeUogfuA3caqE8n3dgXS2A5KlAXjSw8uW4XdB5g88x3EXChKV
         LtC7w70NiVLtqL0ioT0rk6rIAbaVMOrDSfI7170E+gdjA8fDOx7RllwikHcOrjb1xzH5
         +FlFgYSvUVR2hc5iannKlHdKq6AMJFELjiJBrkLJNisEn1zqHlW6/SUvQG2T+ufWLkUa
         yVyg==
X-Gm-Message-State: AOJu0YwB164WJVzk3jwocYmHz4Tv+AjwY9WEZ35I0BRcZKg/PZ0pLOU8
	+bl4af5jy/ipMkgMaVJl8+Ru4w==
X-Google-Smtp-Source: AGHT+IHPWARszrcyKURojq7sjdFRg5WZJqBWm7TVHsyJF6yVoEHDN9wnAQBKnHHZ3jWQAFQoYBIT5Q==
X-Received: by 2002:a17:90b:1c0c:b0:27f:fce3:2266 with SMTP id oc12-20020a17090b1c0c00b0027ffce32266mr11651424pjb.24.1700022918786;
        Tue, 14 Nov 2023 20:35:18 -0800 (PST)
Received: from treapking.tpe.corp.google.com ([2401:fa00:1:10:b51f:fb1c:5e29:cfc8])
        by smtp.gmail.com with ESMTPSA id gp16-20020a17090adf1000b00280cd4fbd83sm7879425pjb.55.2023.11.14.20.35.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Nov 2023 20:35:18 -0800 (PST)
From: Pin-yen Lin <treapking@chromium.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	Chen-Yu Tsai <wenst@chromium.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Pin-yen Lin <treapking@chromium.org>
Subject: [PATCH v2] arm64: dts: mt8173: Add G2Touch touchscreen node
Date: Wed, 15 Nov 2023 12:35:01 +0800
Message-ID: <20231115043511.2670477-1-treapking@chromium.org>
X-Mailer: git-send-email 2.43.0.rc0.421.g78406f8d94-goog
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
Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
---

Changes in v2:
- Remove the label for the node

 arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi b/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
index bdcd35cecad9..8836ac3c4233 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
@@ -29,6 +29,14 @@ touchscreen3: touchscreen@20 {
 		interrupt-parent = <&pio>;
 		interrupts = <88 IRQ_TYPE_LEVEL_LOW>;
 	};
+
+	touchscreen@40 {
+		compatible = "hid-over-i2c";
+		reg = <0x40>;
+		hid-descr-addr = <0x0001>;
+		interrupt-parent = <&pio>;
+		interrupts = <88 IRQ_TYPE_LEVEL_LOW>;
+	};
 };
 
 &i2c4 {
-- 
2.43.0.rc0.421.g78406f8d94-goog


