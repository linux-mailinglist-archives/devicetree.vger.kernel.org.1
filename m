Return-Path: <devicetree+bounces-15125-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D1C67E8A11
	for <lists+devicetree@lfdr.de>; Sat, 11 Nov 2023 10:46:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0710EB20AD9
	for <lists+devicetree@lfdr.de>; Sat, 11 Nov 2023 09:46:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 269AB11714;
	Sat, 11 Nov 2023 09:46:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="P4jLphEk"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3E671170F
	for <devicetree@vger.kernel.org>; Sat, 11 Nov 2023 09:46:50 +0000 (UTC)
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 939A83ABF
	for <devicetree@vger.kernel.org>; Sat, 11 Nov 2023 01:46:49 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-40a4d04af5cso1449575e9.0
        for <devicetree@vger.kernel.org>; Sat, 11 Nov 2023 01:46:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699696008; x=1700300808; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ELU8BWj3UezYO30gLQwRtm3c+Jv6QFB8wi14JfcKk5c=;
        b=P4jLphEk4Lj3ppQqHd7bkf2piWTTOo6KtPGaFdhTR+eJhrr53So2d73aXrJtOEP3/J
         y1KHM1eVbUCJeB86je4+4lFPARwXk2dD6Ik/3hsb9qM9u9f8s2DXE/NPtakWfrqo79wK
         I877/3dk0wPrfJRDwrpecIeGI/ukr5h3Rnmmfv/P1aOOfKC2LlrP3cOc2X0QvBCK19Rm
         F8zDAFCLD0SuXUrO7R1Zd4Up2VMiGdE+qYd0A5Yyk6RUapjNreVbBtap++bXe91r0/HG
         xUZM/GlsoiCcmojY9YrGHaQpFtVfP4oabzDKfW3vXlmfWtJmmI6rggsaLaMt40y6ej18
         MLbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699696008; x=1700300808;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ELU8BWj3UezYO30gLQwRtm3c+Jv6QFB8wi14JfcKk5c=;
        b=bOHMYuriKNlnzUv+LkW+5ONYWU8lxxIlLmDa8Nv/nz0Lvrr9W2gX07Wdb+DrQa9TWZ
         hVsaHp8Hkk3bNiJqxFRjh4Q9Ij9Dhxo6+02DfeNeVtvTmUQoZwRworfUbOD7knMfIzGO
         jJgnC8Mc8CbpnCnOxy/wMw6qa+4SxA9fIFAQLJk8WYJperYv1oWphfO0kRQKwOea5rDb
         lfCDd90q+Zxtr5LJq5o+WvIlxwNJ4qR7I4a9T2K6UP7VV6PaJbGKVQ9wmnRlNjCQEafB
         RwrUs7htc/G33In1MpJx3+DvgcrAcmJ41g9kmg4ZPx48r32G9/SOujme+FtwM535IJmH
         cQqA==
X-Gm-Message-State: AOJu0YyPjlQYrx/eYtG64aPylcFlFeIeOtDf/Rp4OU4n5DHsAH7Qk9XS
	++Fkb5sOoZTLQT77PM8kq3mcWg==
X-Google-Smtp-Source: AGHT+IEs7kwlts3D777qvrvpDrhlx4qvK/RLFwowrBUUFMfroCNyBGamwukZFSYmFjh9ADJoZCBZYw==
X-Received: by 2002:a05:600c:34d6:b0:409:703c:b9b1 with SMTP id d22-20020a05600c34d600b00409703cb9b1mr1405900wmq.40.1699696007560;
        Sat, 11 Nov 2023 01:46:47 -0800 (PST)
Received: from krzk-bin.monzoon.net (46-253-189-43.dynamic.monzoon.net. [46.253.189.43])
        by smtp.gmail.com with ESMTPSA id i10-20020a05600c354a00b004053e9276easm7568533wmq.32.2023.11.11.01.46.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Nov 2023 01:46:47 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: qcom: Revert "arm64: dts: qcom: qrb5165-rb5: enable DP altmode"
Date: Sat, 11 Nov 2023 10:46:45 +0100
Message-Id: <20231111094645.12520-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This reverts commit b3dea914127e9065df003002ed13a2ef40d19877.

The commit introduced unsupported and undocumented properties:

  qrb5165-rb5.dtb: pmic@2: typec@1500:connector: 'altmodes' does not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
index c8cd40a462a3..3bd0c06e7315 100644
--- a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
+++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
@@ -1423,13 +1423,6 @@ PDO_FIXED_DUAL_ROLE |
 					 PDO_FIXED_USB_COMM |
 					 PDO_FIXED_DATA_SWAP)>;
 
-		altmodes {
-			displayport {
-				svid = <0xff01>;
-				vdo = <0x00001c46>;
-			};
-		};
-
 		ports {
 			#address-cells = <1>;
 			#size-cells = <0>;
-- 
2.34.1


