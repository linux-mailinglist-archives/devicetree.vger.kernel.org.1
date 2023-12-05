Return-Path: <devicetree+bounces-21786-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E4CA98052B8
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 12:25:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2028E1C20E83
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 11:25:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8719456B70;
	Tue,  5 Dec 2023 11:24:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="F/jjh+2S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F05711985
	for <devicetree@vger.kernel.org>; Tue,  5 Dec 2023 03:23:54 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-3333fbbeab9so2415342f8f.2
        for <devicetree@vger.kernel.org>; Tue, 05 Dec 2023 03:23:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1701775404; x=1702380204; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ws3CIsjXWSfN6YwtDvaoTEO5x+PGXRNs+10Uc6B7SBs=;
        b=F/jjh+2SbO/nDuRw1+DNL3qRyJRMZ3O5jVHjnl5qxYS5mmWW1cSBYQSuFSQpTE/JSG
         5se6XGHYQKxxlv6LLCNYGie/UcbaY5LerxWvqP+2sI4Wp0dd0aw7q2F07Wo25L6O4VfJ
         o5+BlHSW01mV5a21rLj2ksIY5so3Uuy6wVPYDleL9IjJqqnXrqhmZKksz3W5S84MxVsv
         4+WrHEDTgiK2E0Jmz69woawQO4t16gW9M1fknalqFcXIOnHapKNsycda5MY659lBYCEb
         +kdWQg0giqnFidPdHtZHPxA3cYHnAvRQl4wSa0D1xJb/Q1HADjg4RN48TfGnGJRe22s0
         siOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701775404; x=1702380204;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ws3CIsjXWSfN6YwtDvaoTEO5x+PGXRNs+10Uc6B7SBs=;
        b=r7moWhrvD96s60uRjiSoMuxG9OAslefLsir59N1QQaUnLRajHBKxetcJYiQ7QxFYWG
         JkDwhi+YvLCDTx/Edh0vNJZ7/TRRr/BbZbIAoJGwC9ZpovaiiEzSyEPiKAoDO9bPdwrw
         r4W+KkiQyUfbXZmDY6HfsjNfL3Pn0S76XcXd1gM+OccNVIu6Mzcovp6/3d63DpVXacE7
         cYtQNnlF90BhOLOQhYdLmFjIiySRApVowac9KezSd2dZK6/3JGJ0M8NgBU1lAd9Pz8V/
         SQfoout0sRU0XBSqAYnsunu1NloimX3gVa7lmMMVGvncu7dLX2sgWWNOmfrEkfVoq0Aa
         vXWw==
X-Gm-Message-State: AOJu0YwoSp/VR0O58ZaZpCDv5PKqIJwoa822OiLwQK+GSSiX7WxgODLw
	VQjcldDChxsTw+SzKw4zWj7vAg==
X-Google-Smtp-Source: AGHT+IGZrmoqP+nMIa/3cBLgBOq9hwyxZg/PZmzJay6finlPfcxRqwVG7R5axg0/t55/zRkDaEQxBw==
X-Received: by 2002:a5d:66c1:0:b0:333:a27:2326 with SMTP id k1-20020a5d66c1000000b003330a272326mr3908774wrw.25.1701775404274;
        Tue, 05 Dec 2023 03:23:24 -0800 (PST)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:2dd9:dce:96c5:9e9a])
        by smtp.gmail.com with ESMTPSA id p8-20020a5d59a8000000b003333ed23356sm8127775wrr.4.2023.12.05.03.23.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Dec 2023 03:23:23 -0800 (PST)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Alex Elder <elder@linaro.org>,
	Srini Kandagatla <srinivas.kandagatla@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH 3/3] arm64: dts: qcom: qrb5165-rb5: add the Bluetooth node
Date: Tue,  5 Dec 2023 12:23:11 +0100
Message-Id: <20231205112311.16391-3-brgl@bgdev.pl>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231205112311.16391-1-brgl@bgdev.pl>
References: <20231205112311.16391-1-brgl@bgdev.pl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Add the Bluetooth node for RB5.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
index ead0c45ba60c..fbdf8fdb532c 100644
--- a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
+++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
@@ -1308,6 +1308,26 @@ sdc2_card_det_n: sd-card-det-n-state {
 	};
 };
 
+&uart6 {
+	status = "okay";
+
+	bluetooth {
+		compatible = "qcom,qca6390-bt";
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_en_state>;
+
+		enable-gpios = <&tlmm 21 GPIO_ACTIVE_HIGH>;
+
+		vddio-supply = <&vreg_s4a_1p8>;
+		vddpmu-supply = <&vreg_s2f_0p95>;
+		vddaon-supply = <&vreg_s6a_0p95>;
+		vddrfa1-supply = <&vreg_s2f_0p95>;
+		vddrfa2-supply = <&vreg_s8c_1p3>;
+		vddrfa3-supply = <&vreg_s5a_1p9>;
+	};
+};
+
 &uart12 {
 	status = "okay";
 };
-- 
2.40.1


