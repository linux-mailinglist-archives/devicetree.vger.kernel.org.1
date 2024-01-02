Return-Path: <devicetree+bounces-29273-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E84382230D
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 22:12:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1CD112845E7
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 21:12:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4581D18041;
	Tue,  2 Jan 2024 21:08:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="DqgZYr4s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com [209.85.166.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D904E18AF0
	for <devicetree@vger.kernel.org>; Tue,  2 Jan 2024 21:08:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-io1-f48.google.com with SMTP id ca18e2360f4ac-7ba9f24acf8so453019139f.2
        for <devicetree@vger.kernel.org>; Tue, 02 Jan 2024 13:08:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1704229736; x=1704834536; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ASVoJVcd+TT62Fgbp6rK6yB+IeWHJc5zYIDcydTnCh8=;
        b=DqgZYr4s3hSliN6FFFZaaGj74rg0u+PKQ1gTCVl99wqo4J+y870TQTIqaDrLDd/TzA
         IybtfT638ChuMEOSvh8m1OL/HOeSwCZUVK0vYTxkluiEZDWtcCcavssrYXdS7znuMpop
         e48pWg80Kd4vg6POS7V8Vk2nIpVzTckgE1a+c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704229736; x=1704834536;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ASVoJVcd+TT62Fgbp6rK6yB+IeWHJc5zYIDcydTnCh8=;
        b=Gbqbi+LdQ5iiVe/rTRMcxDlx/e7Reakcu1ilKsjTpT/7zEep3HL5rl2/VNniILJX0K
         Qwi4d1dW8vhJLAngCyE+4ld/T9ApDn0HnYkVeMz3og0DDPb+u3GfbOyeoyNq+buW6OxF
         0QIgyeMQwcfXAHGnJkILLXGSu4/QZsvraYUJYOrn8WnOUXP+Fs6bGhXeVzXHtWzm+s1g
         6PYczo8H+ut4l1VJfM+lBQ64Oi2HobxMzloPkGiBVogfBqoRrwR+kJEXto/9io8TGLgo
         An8Lh9X4zEmqTKSlLtF8iVvZmZEjP7JCu064ale+jj0b1kO3ZKtidhS7ob8h5w73n+BS
         3Hww==
X-Gm-Message-State: AOJu0YzE9hqCIj3zWym3vgSfaRHWaMXTGFwoBuRGGC3Sezt5wMqHeyn7
	RsHzNZDP6RySVNNDyLCDSVkTqPHhcNgG
X-Google-Smtp-Source: AGHT+IFfB2E9EzwO+I1teXfZzVOtZVKaH/8eX07388HbCZbdRd+yWGht2HftqPyzTSf0/1SlFl/Oyg==
X-Received: by 2002:a5d:9358:0:b0:7ba:e1c5:7b47 with SMTP id i24-20020a5d9358000000b007bae1c57b47mr15402309ioo.33.1704229736202;
        Tue, 02 Jan 2024 13:08:56 -0800 (PST)
Received: from markhas1.lan (71-218-50-136.hlrn.qwest.net. [71.218.50.136])
        by smtp.gmail.com with ESMTPSA id bo18-20020a056638439200b0046993034c91sm6956978jab.77.2024.01.02.13.08.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jan 2024 13:08:55 -0800 (PST)
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
	Douglas Anderson <dianders@chromium.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	cros-qcom-dts-watchers@chromium.org,
	devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Subject: [PATCH v4 14/24] arm64: dts: qcom: sc7180: Enable cros-ec-spi as wake source
Date: Tue,  2 Jan 2024 14:07:38 -0700
Message-ID: <20240102140734.v4.14.I2ee94aede9e25932f656c2bdb832be3199fa1291@changeid>
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

Reviewed-by: Douglas Anderson <dianders@chromium.org>
Signed-off-by: Mark Hasemeyer <markhas@chromium.org>
---

Changes in v4:
-Add Douglas's Reviewed-by tag from v2 review

Changes in v3:
-Update commit message to provide details of the motivation behind the
change

Changes in v2:
-Split by arch/soc

 arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
index 46aaeba286047..f3a6da8b28901 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
@@ -649,6 +649,7 @@ cros_ec: ec@0 {
 		pinctrl-names = "default";
 		pinctrl-0 = <&ap_ec_int_l>;
 		spi-max-frequency = <3000000>;
+		wakeup-source;
 
 		cros_ec_pwm: pwm {
 			compatible = "google,cros-ec-pwm";
-- 
2.43.0.472.g3155946c3a-goog


