Return-Path: <devicetree+bounces-28536-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C55181E960
	for <lists+devicetree@lfdr.de>; Tue, 26 Dec 2023 20:26:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B1764B22330
	for <lists+devicetree@lfdr.de>; Tue, 26 Dec 2023 19:26:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03BC42F3F;
	Tue, 26 Dec 2023 19:22:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Tdy72+mN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com [209.85.166.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D816182C3
	for <devicetree@vger.kernel.org>; Tue, 26 Dec 2023 19:22:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-io1-f41.google.com with SMTP id ca18e2360f4ac-7bb0ab8e79fso5334639f.1
        for <devicetree@vger.kernel.org>; Tue, 26 Dec 2023 11:22:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1703618537; x=1704223337; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JesGzUfVYG0N52lEpA2lp9jd0GztoHz5e+Bd1oSHbfw=;
        b=Tdy72+mNcqjluS9WcMC1i/EDk19WIdQij/W521KpvjXHDYVvZH+U7mctE8mUgRSKLS
         yE0qXAtT40SP7RQwhw8zFbuW0eNyjKIia45BnsXTtsZ9SxogRwwMsB26mGQzpD5u8SvY
         6JgKQU7sZ4mzWdmd0m1oxa0OrTgrfjEQYLJS4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703618537; x=1704223337;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JesGzUfVYG0N52lEpA2lp9jd0GztoHz5e+Bd1oSHbfw=;
        b=ge34yqRPqfBvK7ymmGcGfzJUTUXClSwssblW/Jd7Llc8yXRc4m5O2LmP3ZquPTXHKy
         2NzOUnN8tnufXBLmeoUm69ugjY/mi/ZImHxKhiQ9paTGlE/MsCVk1oTkOFPFgjOUB8Vi
         uhbtlTwdyMoiALKWxf2Edr7lA4WpPJ1tm7B++/1G0TZbrMnl+/iU66hXMj4ZH3RO/Omw
         pvEnbofDcMSSeZQJExvBJsShZQzv99CZSy5M4dzwlhPCWgEoxhKHlaMTLgb1ep40xOxh
         HDIw4hAd0rQeZw+2TRm85srHpizbqVxQxB3nfNTwc6/JncOPWMvVygY5xJozVA9Q4TZr
         lB9A==
X-Gm-Message-State: AOJu0YzHRRMZwVap3Wxj/neutybn7fbmPLzQgyKZMESHswsYCzUyCB0l
	KB/YU3dPx4MfOmA4i9qZYEc1HghrDDiR
X-Google-Smtp-Source: AGHT+IFnfa01wzCJ7D5u8Art1oX5WIoaHFxESiLKFBDqaU10ovAtJY7dB+V8ZDbbIOFqYtTxSN7xWQ==
X-Received: by 2002:a5d:9718:0:b0:7ba:b7da:3cd8 with SMTP id h24-20020a5d9718000000b007bab7da3cd8mr8956064iol.17.1703618536940;
        Tue, 26 Dec 2023 11:22:16 -0800 (PST)
Received: from markhas1.lan (71-218-50-136.hlrn.qwest.net. [71.218.50.136])
        by smtp.gmail.com with ESMTPSA id gw3-20020a0566381ee300b0046b692e719esm3207609jab.150.2023.12.26.11.22.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Dec 2023 11:22:16 -0800 (PST)
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
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v3 17/24] arm64: dts: rockchip: rk3399: Enable cros-ec-spi as wake source
Date: Tue, 26 Dec 2023 12:21:21 -0700
Message-ID: <20231226122113.v3.17.Ice617703aded22ad4c806459129e1ae693eb57af@changeid>
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

 arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
index 789fd0dcc88ba..b5734e056aef1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
@@ -603,6 +603,7 @@ cros_ec: ec@0 {
 		pinctrl-names = "default";
 		pinctrl-0 = <&ec_ap_int_l>;
 		spi-max-frequency = <3000000>;
+		wakeup-source;
 
 		i2c_tunnel: i2c-tunnel {
 			compatible = "google,cros-ec-i2c-tunnel";
-- 
2.43.0.472.g3155946c3a-goog


