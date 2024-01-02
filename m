Return-Path: <devicetree+bounces-29268-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CC911822304
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 22:11:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CBA8C1C212C3
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 21:11:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C23B6168A7;
	Tue,  2 Jan 2024 21:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="PyeXmrBb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com [209.85.166.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6321C1802D
	for <devicetree@vger.kernel.org>; Tue,  2 Jan 2024 21:08:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-io1-f51.google.com with SMTP id ca18e2360f4ac-7bb5fda069bso168108839f.0
        for <devicetree@vger.kernel.org>; Tue, 02 Jan 2024 13:08:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1704229731; x=1704834531; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LeATnxPiO37XaEtB4eQZXrEcgW0prfgDBCAc6VotlMc=;
        b=PyeXmrBbvHD0JEpLy/toV24mUPQXkcKEsrP2CPsbMBEuvug9xWLv23V0nsM8kdoo+w
         WiNM0e8Bz8Vhbweqg+l3plE1Jsa2Bm2ria9NHeYlnAevYO58QE8mLuVCm0bs77KA8ZOq
         W+IkdzfVuDsf48UFKrOG1IaC5HM+92ztPIzww=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704229731; x=1704834531;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LeATnxPiO37XaEtB4eQZXrEcgW0prfgDBCAc6VotlMc=;
        b=VUltyHi6++4jcV1cDATwW1t153o9EeVtOuQyGxe5Bp4BV38VdZZ2ZdciAYEdG0XdcP
         a1DUpT0WsA25BmSXh7/Xfu+DYqxdY7hHzD8FauBUgFtBCweR2yNUlKO1jAXiUNRFgXvo
         RyDWZdPbZBHr8/zX8KMrXFRJf5d1vNR0m29WPWHPrhp2WgIkStnMp1uJBIC2y3SwZZ+h
         CAq9S1jbWCpADlGlRR2uMNk/SinjO6atvbNSOTFCpbYDK0c8yzdGj3v8mxDpdTv8UDZ/
         iXmYpb28/sNy0nEuNuNs5LzKoq3ByxaO+zRlATI5GUXSYheBreizhT4vl6reNhK93/4N
         Tt/Q==
X-Gm-Message-State: AOJu0Yyf8nPqbXodLMnnENDNpmJ5nXbS1ppmHCiNcn0Bd48xBBJhaAM5
	wt/BC0fkTLkYnwPabg1j/NGORo7MDpc0
X-Google-Smtp-Source: AGHT+IEq/nXkNhcxVKQTcs7pZQy/wi+fDhhMJ7dsO0o+UvKjnInsDMjSKm1DUuQtSSG5kZZEdWWxwA==
X-Received: by 2002:a6b:f008:0:b0:7b7:4c36:f295 with SMTP id w8-20020a6bf008000000b007b74c36f295mr20729710ioc.40.1704229731497;
        Tue, 02 Jan 2024 13:08:51 -0800 (PST)
Received: from markhas1.lan (71-218-50-136.hlrn.qwest.net. [71.218.50.136])
        by smtp.gmail.com with ESMTPSA id bo18-20020a056638439200b0046993034c91sm6956978jab.77.2024.01.02.13.08.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jan 2024 13:08:51 -0800 (PST)
From: Mark Hasemeyer <markhas@chromium.org>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Sudeep Holla <sudeep.holla@arm.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Andy Shevchenko <andriy.shevchenko@intel.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
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
Subject: [PATCH v4 09/24] arm64: dts: mediatek: mt8173: Enable cros-ec-spi as wake source
Date: Tue,  2 Jan 2024 14:07:33 -0700
Message-ID: <20240102140734.v4.9.Ic09ebe116c18e83cc1161f4bb073fea8043f03f3@changeid>
X-Mailer: git-send-email 2.43.0.472.g3155946c3a-goog
In-Reply-To: <20240102210820.2604667-1-markhas@chromium.org>
References: <20240102210820.2604667-1-markhas@chromium.org>
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

Signed-off-by: Mark Hasemeyer <markhas@chromium.org>
---

(no changes since v3)

Changes in v3:
-Update commit message to provide details of the motivation behind the
change

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


