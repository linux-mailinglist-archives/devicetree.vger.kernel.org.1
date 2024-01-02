Return-Path: <devicetree+bounces-29275-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B4FBE822315
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 22:12:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 530FF1F23675
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 21:12:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0ECA5168B9;
	Tue,  2 Jan 2024 21:09:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="gPGOZCPV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com [209.85.166.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABDF118C32
	for <devicetree@vger.kernel.org>; Tue,  2 Jan 2024 21:08:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-io1-f46.google.com with SMTP id ca18e2360f4ac-7ba834684abso506386239f.2
        for <devicetree@vger.kernel.org>; Tue, 02 Jan 2024 13:08:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1704229738; x=1704834538; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YBXG8fkqI4E9TDywbJQDVQlGARTRe1Vl9dne1ILm/18=;
        b=gPGOZCPVl2IIrjDodIynds27pMs1g9tjyI6RUW8c4K5irQ1QWFY02ZdmSp9dw1xXuD
         lVXArgUDrQ1w0wwrIRF2JSKyrb2MoJmnK0jQdeXA9XfriG2gO5eaIKLgFI/l0UfGKoUS
         ImvMVxBWqgtbgpsE3ief97V6bU0JucG9PvaZY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704229738; x=1704834538;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YBXG8fkqI4E9TDywbJQDVQlGARTRe1Vl9dne1ILm/18=;
        b=fqzkC4vzgYNyeG3Cjpgqyn5oYvErHclWa3cA51Zlosd7uaqxE7UDwwpVtnAg7DU7b8
         P00WzG2UpIMa0panlH+yeT7The+b7AxBzzk28mQRGKrMgG5iYtPAM7URaMPqF3A1Xjnc
         zqud62sauTxWDKfuvTJjtw6nOQ1ORz6GuV4tu/uXNPDQcj9AI2AZLgUxLJSQGLDl8r4O
         LTYsDrDWvb0n3jGHyRx7fZiWPu4ZOUhwPgzznxt8/4XzciLYEiXKCnsMdnadupJU5+D5
         zdn3ZAzFP+wuFqIFMRDvqCZL+fheKYF6AHuWAvE8JJna5uUDoNtmBvrmPamkVXQLUO6Q
         5WmA==
X-Gm-Message-State: AOJu0YxHZ0g1rEz9QlwivAYie52PYBU7VoM99aN0Jtx9RqjXz5Tf+6S/
	7cyqBKC1SYCrAl5KRVpOq8s6fI6JGh3y
X-Google-Smtp-Source: AGHT+IFDiPa9pElKMxmX/lH+gQE+ZfY9viPPALh0NbNdlcQ8hMR9S/3o4NKAXs823EmCxtbJutVSRw==
X-Received: by 2002:a5d:974b:0:b0:7b7:4b32:7986 with SMTP id c11-20020a5d974b000000b007b74b327986mr22772171ioo.27.1704229738043;
        Tue, 02 Jan 2024 13:08:58 -0800 (PST)
Received: from markhas1.lan (71-218-50-136.hlrn.qwest.net. [71.218.50.136])
        by smtp.gmail.com with ESMTPSA id bo18-20020a056638439200b0046993034c91sm6956978jab.77.2024.01.02.13.08.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jan 2024 13:08:57 -0800 (PST)
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
Subject: [PATCH v4 16/24] arm64: dts: qcom: sdm845: Enable cros-ec-spi as wake source
Date: Tue,  2 Jan 2024 14:07:40 -0700
Message-ID: <20240102140734.v4.16.I870e2c3490e7fc27a8f6bc41dba23b3dfacd2d13@changeid>
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


