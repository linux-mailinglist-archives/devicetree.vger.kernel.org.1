Return-Path: <devicetree+bounces-29274-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BAA2F822313
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 22:12:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 54DDB284654
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 21:12:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53F7318E0D;
	Tue,  2 Jan 2024 21:08:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="G/dP0i3f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com [209.85.166.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E247018C01
	for <devicetree@vger.kernel.org>; Tue,  2 Jan 2024 21:08:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-io1-f42.google.com with SMTP id ca18e2360f4ac-7b7d65d4eecso508549439f.0
        for <devicetree@vger.kernel.org>; Tue, 02 Jan 2024 13:08:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1704229737; x=1704834537; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=17sTLQMT2wthv6A1NoR1+c8v3q9aB7n6ZqwH4HJJEV0=;
        b=G/dP0i3fJD0GauZiZhHTIMDLCqWdj0PmuwNf+pRtfpGVkOOxze1QGiQHgR8CJXkzQ0
         M1eOOs20S4ff2isiJd9MsA1GwnWU0ZaMmDK6mVPekj7tWiRLCYxMiGDsFQg1tacsJCqK
         7IJ10o14ZlZJ7KSVfc6p/qi8iz7hntt+wkNKM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704229737; x=1704834537;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=17sTLQMT2wthv6A1NoR1+c8v3q9aB7n6ZqwH4HJJEV0=;
        b=SjRHz55J0c3pUxgC5Y59/W4tQE5/tPlvRGECuavNpzvpQqkcqdxuNHfQONWlR4GqMv
         hxqeU315xiTvx6ShJmZnbDxGe1mrNKKyTtyuaec1LANRCG4ItDYIviy1VbYzvT9BhDaB
         CUPTzBIcuNCPH8bwswavyFoJpUy6Zu20phmumaFL8wCpmfllbftTT4E4Fcx/9b0SCW4Y
         JKK21cD9JBTqWLDGORRCCRy++yAPSn1EoX5RMWItUnl8Wnpf2kFhUp7AhPcQ/PWOfs6F
         t/bt1cRmCzIKlzCoESjqasCywN1a495psSnRmrHmiyy5hORKWGI/WEdJbP2ul/RN8Jhc
         JMTw==
X-Gm-Message-State: AOJu0YySi2XgV/s07MONaQlF8S9JHcDHIoCgtUvkkTMfYmkXx3qJrZVC
	Tc3B9+ZOjk3Wk2tXIFbahrw4fKPCHhus
X-Google-Smtp-Source: AGHT+IG15JicEnj5m9+AYHheVx6jq8nHGYdtkF3GHDFBR8wkn+8r3oGMHOzGhdudxknyHLeWlKuuSA==
X-Received: by 2002:a05:6602:19cf:b0:7ba:8706:3413 with SMTP id ba15-20020a05660219cf00b007ba87063413mr23570133iob.41.1704229737084;
        Tue, 02 Jan 2024 13:08:57 -0800 (PST)
Received: from markhas1.lan (71-218-50-136.hlrn.qwest.net. [71.218.50.136])
        by smtp.gmail.com with ESMTPSA id bo18-20020a056638439200b0046993034c91sm6956978jab.77.2024.01.02.13.08.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jan 2024 13:08:56 -0800 (PST)
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
Subject: [PATCH v4 15/24] arm64: dts: qcom: sc7280: Enable cros-ec-spi as wake source
Date: Tue,  2 Jan 2024 14:07:39 -0700
Message-ID: <20240102140734.v4.15.I7ea3f53272c9b7cd77633adfd18058ba443eed96@changeid>
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

 arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi | 1 +
 arch/arm64/boot/dts/qcom/sc7280-idp-ec-h1.dtsi | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
index 9ea6636125ad9..2ba4ea60cb147 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
@@ -548,6 +548,7 @@ cros_ec: ec@0 {
 		pinctrl-names = "default";
 		pinctrl-0 = <&ap_ec_int_l>;
 		spi-max-frequency = <3000000>;
+		wakeup-source;
 
 		cros_ec_pwm: pwm {
 			compatible = "google,cros-ec-pwm";
diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp-ec-h1.dtsi b/arch/arm64/boot/dts/qcom/sc7280-idp-ec-h1.dtsi
index ebae545c587c4..fbfac7534d3c6 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-idp-ec-h1.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280-idp-ec-h1.dtsi
@@ -19,6 +19,7 @@ cros_ec: ec@0 {
 		pinctrl-names = "default";
 		pinctrl-0 = <&ap_ec_int_l>;
 		spi-max-frequency = <3000000>;
+		wakeup-source;
 
 		cros_ec_pwm: pwm {
 			compatible = "google,cros-ec-pwm";
-- 
2.43.0.472.g3155946c3a-goog


