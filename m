Return-Path: <devicetree+bounces-73137-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 038358FE180
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 10:49:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 65ECE1F21E1D
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 08:49:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8C9513F436;
	Thu,  6 Jun 2024 08:48:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aKjc8SNd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9042913DDD2
	for <devicetree@vger.kernel.org>; Thu,  6 Jun 2024 08:48:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717663706; cv=none; b=fpLypZgLHtw7vdypOYchKauQXQ2MJScKlK2WOI4Q9NzyGqmiNmzYDKXSZNCAfgLQnhhR/E77XGzAO3/g8rMYb56WsaCLvCT9mfhIDsxyTCPnb04btHaA12chQzBRUTfqw/BvlW1++VVc67alX/TyNygPndHn8UhO0pkq6xXWlO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717663706; c=relaxed/simple;
	bh=23uf+y06e6zrelJODSL+O1c7OCV/TWnd4Br3Dn6tpoE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fhw9O+5tyDv0X01jDoy4o9u0wwkc5xrbbL0wRQekHHf+ewAmaPoTsei6S1WSveOkGSZu0P6r94bQMrt6Ouqu4vkZrBXG0coCg7q8FnPX9fMbb7va9agmA0nSo77kR5MqgF3CGGRSH+5NcmVPIon1nlmHWJgnlAStW1KbAbcXOOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aKjc8SNd; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-52b90038cf7so1082916e87.0
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2024 01:48:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717663703; x=1718268503; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=27gmnNsoJ6HXtUPU106pR+r/c1X658WZeUED3nGHh/Y=;
        b=aKjc8SNd6aYEIcPR+NNEbQ5g5S0YMVuhITVJ8tuDcFykypkuyy8qxr+oJrnyOw57r0
         vDr1sqWyFmjdPqy6R/DgMgOl/E5ShrK3npvKosLxCiI2121OjT1QbJ+7vtg8yZxoTPp3
         NhAvQt12Od8RE5De7ZK8//bisPQodrSMUIfNPkW0tf8eyKFtwW7qFO4Yp3fU9U1zYhZr
         p8XOl/v2oDH7k8pY67TWXg3GA/xMxhZaQSS3VD6q2HleQBiIV9o2GNIuLCo5f6qgkGdm
         1udgpeUiMkDJG1VU+NJ1oHbbjmw8X6CpRilCwhyV+xgawgcayTEQCiZ0wy1q7loz3LSj
         gjQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717663703; x=1718268503;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=27gmnNsoJ6HXtUPU106pR+r/c1X658WZeUED3nGHh/Y=;
        b=kBEkN7pPlybm+sS1w1ok6kggUhs4kgiFYRD70RgT7hn1wC6BCX0tF6nHZxv77QQrsW
         xwzpqeu+jZ6B6mxRQhETKuNbJkcUl9U5JRoKH+5O5ogQbt3NOexg4uttFZTFWPhGcGuA
         KA3SwdjjIvT9ZR1eGg6S61+kCyxO/3Z9J9FT3dRoCQzQeKhXOaL9rJXiXdx0K5A7CA9v
         Jo5pXG2U8tIRQvYDFxdz+FzfDx0cekpS9pa3tX42dXbjd42PcZrNs3HFFA5nJYCN64yc
         1JS2igyxLvbS7nSYWCM2zgnYavuww+T+QFSJw2nav148PCikLVMS7+VOxAM7s1dAxBM4
         ScXQ==
X-Gm-Message-State: AOJu0YwGG1whGYLkgkP5FbYiKU7AJfcaMt9u4iA6jby2PdldCW3GVMlA
	OPcuSz6dNaGy6mHjDMCGV4QaYDrr2nFY6XDFOg8tSLqvpB4koroikQyVr//OW3g=
X-Google-Smtp-Source: AGHT+IGXDaDltuNvg0lnLePu7p+2cIQ5/S3LaYhvqarTkyBrf/S+D5/CYg6sscw7EIkStVWmrItywg==
X-Received: by 2002:a05:6512:2255:b0:52b:7a10:4690 with SMTP id 2adb3069b0e04-52bab4f94abmr3324133e87.61.1717663702699;
        Thu, 06 Jun 2024 01:48:22 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4215c2c690dsm14227445e9.34.2024.06.06.01.48.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jun 2024 01:48:22 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 06 Jun 2024 10:48:15 +0200
Subject: [PATCH 08/12] arm64: dts: amlogic: axg: fix tdm audio-controller
 clock order
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240606-topic-amlogic-upstream-bindings-fixes-dts-v1-8-62e812729541@linaro.org>
References: <20240606-topic-amlogic-upstream-bindings-fixes-dts-v1-0-62e812729541@linaro.org>
In-Reply-To: <20240606-topic-amlogic-upstream-bindings-fixes-dts-v1-0-62e812729541@linaro.org>
To: Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3277;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=23uf+y06e6zrelJODSL+O1c7OCV/TWnd4Br3Dn6tpoE=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmYXfNU8ucarOPkFh8o6TGaQoMaB26+xAPHT38nBTg
 Rbm/AjuJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZmF3zQAKCRB33NvayMhJ0Q3CEA
 Ckw9qqht8eI238qxR5P1bCG3tBQVZ0hC4gZzckFjYm6TJLzPl96awB59aa7kt8FWbTPVe5qVW3udqy
 tsgd1aH8Q1GTlNe8264ESOtPHHZq1XF0VbTicSVj41ZAgurVbquyo2rkboJzWOQOn8VoBUQIJ+vzCf
 UKpSmpTe6xBdnJnYkyZn7bKFlqJS9wFpEmTZQb64/seSm7Dk9h+Eh3pd/pSHjtblCY0zDsKtoxNRvq
 u/P74ZSsIbp2W2hPleyoICoDek+DpzkoJsdpJUfTioLLLzY82xoskn280TyXHgGqPRTdLz0y5QOT+g
 v6Y9IRzaOr+nv/qQe1bm60S7tezZktoUnm8ZySrXjVpf/TYnvAFjbHh+SMXpD1/0YVcX0Fn5R6uG+v
 bu5u08e2QtTVConfEsXOfYEZsPi2J08mLSwOoZfrxge7BrgIQSr3ZIiRX6n4n6R1VGlbUtyNri0SJ6
 f5eX8lxYvq44yH1jRKJ289IxNCd9R1upvE9IsvXS1mdMC6zlW6bSgiyLQs50mSIwG9aBZeAmHL5bYd
 S7cRU9FatM2XX67118sXNYaJl2wUBDY6mVThirWBkaKliCg4QacmRdoFJdULbjPrWoLF9V7q7s+hCn
 ygBodb8/DQh9Q+FpOkU96+6ewosL6jNsk1Dk6YZ5NXEfeMqMdD7GKbZIbFzQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

This fixes the following:
audio-controller-0: clock-names:0: 'sclk' was expected
	from schema $id: http://devicetree.org/schemas/sound/amlogic,axg-tdm-iface.yaml#
audio-controller-0: clock-names:1: 'lrclk' was expected
	from schema $id: http://devicetree.org/schemas/sound/amlogic,axg-tdm-iface.yaml#
audio-controller-0: clock-names:2: 'mclk' was expected
	from schema $id: http://devicetree.org/schemas/sound/amlogic,axg-tdm-iface.yaml#
audio-controller-1: clock-names:0: 'sclk' was expected
	from schema $id: http://devicetree.org/schemas/sound/amlogic,axg-tdm-iface.yaml#
audio-controller-1: clock-names:1: 'lrclk' was expected
	from schema $id: http://devicetree.org/schemas/sound/amlogic,axg-tdm-iface.yaml#
audio-controller-1: clock-names:2: 'mclk' was expected
	from schema $id: http://devicetree.org/schemas/sound/amlogic,axg-tdm-iface.yaml#
audio-controller-2: clock-names:0: 'sclk' was expected
	from schema $id: http://devicetree.org/schemas/sound/amlogic,axg-tdm-iface.yaml#
audio-controller-2: clock-names:1: 'lrclk' was expected
	from schema $id: http://devicetree.org/schemas/sound/amlogic,axg-tdm-iface.yaml#
audio-controller-2: clock-names:2: 'mclk' was expected

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/amlogic/meson-axg.dtsi | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
index 6d12b760b90f..e9b22868983d 100644
--- a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
@@ -25,10 +25,10 @@ tdmif_a: audio-controller-0 {
 		compatible = "amlogic,axg-tdm-iface";
 		#sound-dai-cells = <0>;
 		sound-name-prefix = "TDM_A";
-		clocks = <&clkc_audio AUD_CLKID_MST_A_MCLK>,
-			 <&clkc_audio AUD_CLKID_MST_A_SCLK>,
-			 <&clkc_audio AUD_CLKID_MST_A_LRCLK>;
-		clock-names = "mclk", "sclk", "lrclk";
+		clocks = <&clkc_audio AUD_CLKID_MST_A_SCLK>,
+			 <&clkc_audio AUD_CLKID_MST_A_LRCLK>,
+			 <&clkc_audio AUD_CLKID_MST_A_MCLK>;
+		clock-names = "sclk", "lrclk", "mclk";
 		status = "disabled";
 	};
 
@@ -36,10 +36,10 @@ tdmif_b: audio-controller-1 {
 		compatible = "amlogic,axg-tdm-iface";
 		#sound-dai-cells = <0>;
 		sound-name-prefix = "TDM_B";
-		clocks = <&clkc_audio AUD_CLKID_MST_B_MCLK>,
-			 <&clkc_audio AUD_CLKID_MST_B_SCLK>,
-			 <&clkc_audio AUD_CLKID_MST_B_LRCLK>;
-		clock-names = "mclk", "sclk", "lrclk";
+		clocks = <&clkc_audio AUD_CLKID_MST_B_SCLK>,
+			 <&clkc_audio AUD_CLKID_MST_B_LRCLK>,
+			 <&clkc_audio AUD_CLKID_MST_B_MCLK>;
+		clock-names = "sclk", "lrclk", "mclk";
 		status = "disabled";
 	};
 
@@ -47,10 +47,10 @@ tdmif_c: audio-controller-2 {
 		compatible = "amlogic,axg-tdm-iface";
 		#sound-dai-cells = <0>;
 		sound-name-prefix = "TDM_C";
-		clocks = <&clkc_audio AUD_CLKID_MST_C_MCLK>,
-			 <&clkc_audio AUD_CLKID_MST_C_SCLK>,
-			 <&clkc_audio AUD_CLKID_MST_C_LRCLK>;
-		clock-names = "mclk", "sclk", "lrclk";
+		clocks = <&clkc_audio AUD_CLKID_MST_C_SCLK>,
+			 <&clkc_audio AUD_CLKID_MST_C_LRCLK>,
+			 <&clkc_audio AUD_CLKID_MST_C_MCLK>;
+		clock-names = "sclk", "lrclk", "mclk";
 		status = "disabled";
 	};
 

-- 
2.34.1


