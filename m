Return-Path: <devicetree+bounces-14776-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id AFB6E7E675B
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 11:07:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4B52DB20CFA
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 10:07:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A32B5156C1;
	Thu,  9 Nov 2023 10:07:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ajmVrbMG"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158CB14285
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 10:07:00 +0000 (UTC)
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3BDA30C1
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 02:06:59 -0800 (PST)
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-1cc29f39e7aso5403665ad.0
        for <devicetree@vger.kernel.org>; Thu, 09 Nov 2023 02:06:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1699524419; x=1700129219; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SXvBziOOzPoe9p06qPekw9ojRyDCzXj55skHWBeOemE=;
        b=ajmVrbMGWgyVyN6sBJtEnLZk7H61ypCu7jyPZaS89xXqfP5U34t67op+dEhLmB3pAH
         007llL49pH3ehzyG5i3/XhebxnJI7LYoNX1Byno1opPax8DsmQVHeHX/ck1UhdOAWcxd
         IwHUrN8sp6/H1F527JzVl795gW+6snJ6h9FQE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699524419; x=1700129219;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SXvBziOOzPoe9p06qPekw9ojRyDCzXj55skHWBeOemE=;
        b=J6cjLymqZ/jsfcAbjbL096yuI18pGgS0nh2K6eenwjjCxZUHQNLFkrmYvaMUNWd04N
         xReGIeNZd4+2++0Yz/VdknpOBwWZgBPg445JXtWACy6rFa5fP59fmLjhrJCE5tJGNXQd
         bW97MTm28wSz8uv5MZJPGLJIR0zo9rggvtXccdR3qFkq6nJBEVN4U6keBSLQt7tE/RQs
         O3JxymYSjrG5tuFia4i0fGL7EouwTY04J4PD+DZ1qa5U66UBWgLyNuOO3NkMxt+ySnr2
         69PdBRXKKXbgB5bIQrH3c85GTxpSeXd5mGg60DrtqbelXJugOKBwpMBs88JH+xQk9IZa
         MhNQ==
X-Gm-Message-State: AOJu0YwS/xsNGpviwYc/HeANLkjN3AM3YUvvS/uG/YIAIhRjCx1zq5sM
	SZTBWHoMZYRwgf8RvQ50LMOkeg==
X-Google-Smtp-Source: AGHT+IGjXFbBjSHLl5U/ebTbDrumNW0v2EVWcvyySgzvtZFdToUF1oRe0pnconHbHlzrFnCRFotkOA==
X-Received: by 2002:a17:903:234e:b0:1cc:50f6:7fcc with SMTP id c14-20020a170903234e00b001cc50f67fccmr5370038plh.55.1699524419209;
        Thu, 09 Nov 2023 02:06:59 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:6f57:d4c:468c:5daf])
        by smtp.gmail.com with ESMTPSA id c13-20020a170902d48d00b001c60ba709b7sm3127511plg.125.2023.11.09.02.06.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Nov 2023 02:06:58 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Rob Herring <robh+dt@kernel.org>,
	Frank Rowand <frowand.list@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Hsin-Yi Wang <hsinyi@chromium.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	andriy.shevchenko@linux.intel.com,
	Jiri Kosina <jikos@kernel.org>,
	linus.walleij@linaro.org,
	broonie@kernel.org,
	gregkh@linuxfoundation.org,
	hdegoede@redhat.com,
	james.clark@arm.com,
	james@equiv.tech,
	keescook@chromium.org,
	petr.tesarik.ext@huawei.com,
	rafael@kernel.org,
	tglx@linutronix.de,
	Jeff LaBundy <jeff@labundy.com>,
	linux-input@vger.kernel.org,
	Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Douglas Anderson <dianders@chromium.org>,
	Johan Hovold <johan@kernel.org>
Subject: [RFC PATCH v2 4/7] arm64: dts: mediatek: mt8173-elm-hana: Add G2touch G7500 touchscreen
Date: Thu,  9 Nov 2023 18:06:01 +0800
Message-ID: <20231109100606.1245545-5-wenst@chromium.org>
X-Mailer: git-send-email 2.42.0.869.gea05f2083d-goog
In-Reply-To: <20231109100606.1245545-1-wenst@chromium.org>
References: <20231109100606.1245545-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This introduces yet another second-source touchscreen found on Hana.
This is a G2touch G7500 touchscreen, which is compatible with HID over
I2C.

Add a device node for it. In keeping with the new scheme for second
source components, mark it as "failed-needs-probe-touchscreen".

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi b/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
index 052109b0fa3b..d3f1277ac9b2 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
@@ -31,6 +31,15 @@ touchscreen3: touchscreen@20 {
 		interrupts = <88 IRQ_TYPE_LEVEL_LOW>;
 		status = "fail-needs-probe-touchscreen";
 	};
+
+	touchscreen4: touchscreen@40 {
+		compatible = "hid-over-i2c";
+		reg = <0x40>;
+		hid-descr-addr = <0x0001>;
+		interrupt-parent = <&pio>;
+		interrupts = <88 IRQ_TYPE_LEVEL_LOW>;
+		status = "fail-needs-probe-touchscreen";
+	};
 };
 
 &i2c4 {
-- 
2.42.0.869.gea05f2083d-goog


