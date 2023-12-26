Return-Path: <devicetree+bounces-28535-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8774781E95D
	for <lists+devicetree@lfdr.de>; Tue, 26 Dec 2023 20:25:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1A70CB22206
	for <lists+devicetree@lfdr.de>; Tue, 26 Dec 2023 19:25:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0379D18AE8;
	Tue, 26 Dec 2023 19:22:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="MS6sJGkx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com [209.85.166.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A063517747
	for <devicetree@vger.kernel.org>; Tue, 26 Dec 2023 19:22:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-io1-f45.google.com with SMTP id ca18e2360f4ac-7ba8e33dd0cso199197039f.0
        for <devicetree@vger.kernel.org>; Tue, 26 Dec 2023 11:22:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1703618536; x=1704223336; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jqUYIaw9tUo9kdqHB2Dv3IsUt9S6YDu3MfPzCVXpIHY=;
        b=MS6sJGkxdkX0z7x2nxw0xkPNbqiOWCdIBhd26tonRLpr/51eXdzUTj/bhZu2e27vof
         o2T7mvqG1fV1Ca2kVvHIxLSdzUA/oABGzAXyyA1fMOcY32bHgVt5BwVo6lHbyCHeXelM
         ZyTij5OUkYf0Hp2bal67qE+yxghYTbSwmnAoM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703618536; x=1704223336;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jqUYIaw9tUo9kdqHB2Dv3IsUt9S6YDu3MfPzCVXpIHY=;
        b=vDAt1f4KQsfby+g5quf4e6UWiFtXpMaB1NPbxFrPE6SjFQflQARoO7fNLFIidwKFnh
         ij+2ax8lg9U9rOECsN/DGJSo860PJQTEsLPvpFveqBr1g5sw/RbTNInftdI7UA/sFA3m
         tLLkTbWFUsBOCzcTfgL0k+vzxL5K1SqXx6YyeEdU6ShDtO9VnetTFtjCU6CCQTJVmkMe
         8nMgR2kFfNbaisSYFalBdtO7h2zG05G1nLnQpNxusJa7mZI+Zm9yKIXUSdPdbLs0yiZu
         P0x0uEK2G1WoqKTCZkK5nsTaV76VUZvTFxUFqNV53H/bN6JOqAiXLeFovW+IdzkQmwfR
         zuAQ==
X-Gm-Message-State: AOJu0YyBah77d3FRKHAY60iY+v+oPJPZYO9k/P93pVmbC2VbtzoRAIn6
	e/fyLFyzLWW9NUjyHROJ8BLYDzJgdC3R
X-Google-Smtp-Source: AGHT+IFj1KB5D+02jkLiHmvX5p2wx9e8GF6AOssDMMgP9jAk68kfSL3ub0MUuBke1AgTXDiucynj9A==
X-Received: by 2002:a5d:9557:0:b0:7ba:f96f:8c76 with SMTP id a23-20020a5d9557000000b007baf96f8c76mr1245177ios.35.1703618535947;
        Tue, 26 Dec 2023 11:22:15 -0800 (PST)
Received: from markhas1.lan (71-218-50-136.hlrn.qwest.net. [71.218.50.136])
        by smtp.gmail.com with ESMTPSA id gw3-20020a0566381ee300b0046b692e719esm3207609jab.150.2023.12.26.11.22.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Dec 2023 11:22:15 -0800 (PST)
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
	Bjorn Andersson <andersson@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	cros-qcom-dts-watchers@chromium.org,
	devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Subject: [PATCH v3 16/24] arm64: dts: qcom: sdm845: Enable cros-ec-spi as wake source
Date: Tue, 26 Dec 2023 12:21:20 -0700
Message-ID: <20231226122113.v3.16.I870e2c3490e7fc27a8f6bc41dba23b3dfacd2d13@changeid>
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

 arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi b/arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi
index 0ab5e8f53ac9f..e8276db9eabb2 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi
@@ -852,6 +852,7 @@ cros_ec: ec@0 {
 		pinctrl-names = "default";
 		pinctrl-0 = <&ec_ap_int_l>;
 		spi-max-frequency = <3000000>;
+		wakeup-source;
 
 		cros_ec_pwm: pwm {
 			compatible = "google,cros-ec-pwm";
-- 
2.43.0.472.g3155946c3a-goog


