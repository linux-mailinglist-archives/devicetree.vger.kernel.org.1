Return-Path: <devicetree+bounces-28529-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 90B7781E94E
	for <lists+devicetree@lfdr.de>; Tue, 26 Dec 2023 20:24:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B5E2A1C2140D
	for <lists+devicetree@lfdr.de>; Tue, 26 Dec 2023 19:24:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57DB1134D1;
	Tue, 26 Dec 2023 19:22:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="BRVMLh/5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com [209.85.166.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B75A2111A6
	for <devicetree@vger.kernel.org>; Tue, 26 Dec 2023 19:22:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-io1-f50.google.com with SMTP id ca18e2360f4ac-7ba834684abso248667039f.2
        for <devicetree@vger.kernel.org>; Tue, 26 Dec 2023 11:22:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1703618530; x=1704223330; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=72Y9hKrM6wg7C/dkdJ1azVBKmo9vO5yjLJYb3Lbo8g8=;
        b=BRVMLh/5XH6oixuKamI/PIb5hC/lBLPhi6BkEogj5+8EKQdVa9IXllD7ZynnPt7ozp
         AcL1QPGuVoIJd59bU51BnN33FVw/1qMSgjnl1JueHW+F66qVjRKkxBuiQ2Lj0pR+t/iC
         RQsv8MRSJdxkyyHNgEcjIIJQu6vDH9d3Yp/A8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703618530; x=1704223330;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=72Y9hKrM6wg7C/dkdJ1azVBKmo9vO5yjLJYb3Lbo8g8=;
        b=KxP/3Ro9SKm9nkQaq6Xjv6Y0ofjoV20esPvW/FX4zzG8Rf+BcXFwTHHZS1egXujPu5
         yaTARo4V2wRSlE5AvD3lb5LQoYT7AEJjsYryItBHW3cAnN6DxWcQkobQQS69PxnhNfb9
         W9tLG9TW56tMl52tKtVHAFoqvZUogfDXDZRZ8Tqn6EYMMZtayx7ANAAvxuYHMtEmaFZ/
         OrR03s9S+cSIRLckf7cp14AeUrhucQCgehWAiQF5bkZ6WFt+BQl7VzpKo7ePBNUB0xLH
         pKUDhbBlLCNGK9bKmTNICDT3VTfPfbLxRDtx1wWlQ3zNMdEZJWOLPY7FE+NTEVTNtZtq
         1vnQ==
X-Gm-Message-State: AOJu0YznD8ED2y+9AUrrloZZna6vaC+wJd2DLpwfOIhLlXlEU1789mZ+
	Y3GEHaV3X5rihCm4RfrSCVRQZU4KHnzX
X-Google-Smtp-Source: AGHT+IF6JaIjJ+4nkw3XKAI7b2qhT+RLQRJF93my4pWqagV6xX2LpANA+cbIE30OOMeWGip9I5fCQg==
X-Received: by 2002:a6b:d807:0:b0:7ba:9ad0:657f with SMTP id y7-20020a6bd807000000b007ba9ad0657fmr10906914iob.0.1703618529969;
        Tue, 26 Dec 2023 11:22:09 -0800 (PST)
Received: from markhas1.lan (71-218-50-136.hlrn.qwest.net. [71.218.50.136])
        by smtp.gmail.com with ESMTPSA id gw3-20020a0566381ee300b0046b692e719esm3207609jab.150.2023.12.26.11.22.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Dec 2023 11:22:09 -0800 (PST)
From: Mark Hasemeyer <markhas@chromium.org>
To: LKML <linux-kernel@vger.kernel.org>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Andy Shevchenko <andriy.shevchenko@intel.com>,
	Raul Rangel <rrangel@chromium.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	Mark Hasemeyer <markhas@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v3 09/24] arm64: dts: mediatek: mt8173: Enable cros-ec-spi as wake source
Date: Tue, 26 Dec 2023 12:21:13 -0700
Message-ID: <20231226122113.v3.9.Ic09ebe116c18e83cc1161f4bb073fea8043f03f3@changeid>
X-Mailer: git-send-email 2.43.0.472.g3155946c3a-goog
In-Reply-To: <20231226192149.1830592-1-markhas@chromium.org>
References: <20231226192149.1830592-1-markhas@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The cros_ec driver currently assumes that cros-ec-spi compatible device
nodes are a wakeup-source even though the wakeup-source property is not
defined.

Some Chromebooks use a separate wake pin, while others overload the
interrupt for wake and IO. With the current assumption, spurious wakes
can occur on systems that use a separate wake pin. It is planned to
update the driver to no longer assume that the EC interrupt pin should
be enabled for wake.

Add the wakeup-source property to all cros-ec-spi compatible device
nodes to signify to the driver that they should still be a valid wakeup
source.

-Commit-changes: 3
-Update commit message to provide details of the motivation behind the
change

Signed-off-by: Mark Hasemeyer <markhas@chromium.org>
---

(no changes since v2)

Changes in v2:
-Split by arch/soc

 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
index 8d614ac2c58ed..335aed42dc9e3 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
@@ -1155,6 +1155,7 @@ cros_ec: ec@0 {
 		spi-max-frequency = <12000000>;
 		interrupts-extended = <&pio 0 IRQ_TYPE_LEVEL_LOW>;
 		google,cros-ec-spi-msg-delay = <500>;
+		wakeup-source;
 
 		i2c_tunnel: i2c-tunnel0 {
 			compatible = "google,cros-ec-i2c-tunnel";
-- 
2.43.0.472.g3155946c3a-goog


