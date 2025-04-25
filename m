Return-Path: <devicetree+bounces-171071-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BC6D0A9D244
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 21:49:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 88E1C7B1AD3
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 19:48:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BFB42165E4;
	Fri, 25 Apr 2025 19:48:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PeA7DlZH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C44B22258B
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 19:48:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745610530; cv=none; b=gB9xydT5j1I9SDUHIzLbQiNl9nyofpOdhVBATG1OHdftWOY+WoDpE34slylBAUlhClkq32UfTINbnzoBHUlTHEZh0zMWd6FOOsKfnBeWQUL6WhmWant8lYbEB3u6Q9QoiBEH3LhpTkWS4IgBxeK0q4Hq0kHsxE0QyAM0pyjql78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745610530; c=relaxed/simple;
	bh=+HtaD1MMcC10nD909Zao9y6H0hANNmhyPMSU9hKMrJ8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=U8TwbpU6MAto+C5052KXlHZsqwMvyBjunHXGT1bqYYDaH6Ojhq1PW15u2EXOAfhcNMEFRksdWXgwDHCXwzG20+INPGGlsetxE9xCOpA8VMLTgnTy7n4bFvrrwt9K9DoXR9cZ5gYggM2zju2cJJB1bClA+SxDSK+ivE4Elqag0lQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PeA7DlZH; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-43cf89f81c5so2493015e9.2
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 12:48:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745610527; x=1746215327; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hhhHYs4KoUp1Dmqe4WieRh0AOyBX59ZVEuUqlgb/Xa8=;
        b=PeA7DlZHvJHVYtZVzn2SV7eGzAvrhvVIDq+qNieK4ZeZK8T7+OkLoTj2JDzzM29056
         WpnpSa1OjflAC7ky3vRPDnEC+//uVt3Cfssw6jOY5IU5e+KdqmERSy9+pzO8OWnAJwOt
         TlmiirshlEyR5Zqsz8Hdv4g4tCXe4Ed9kMkvrtosSBve4yQBjA3Y3gFutWlW+372R3AE
         DBQFXdfR8/+uHH/sgQS554EnJpatvtzw9nkZ+X1D+nddQCo/S5dDKfbF3tQ96mAdrlvx
         c/wzWnFuRiIq90+uG71TyTipsWgvUftb9cg/sSA5Vt5OtIJyPYmsix3b0RkGOJDb2jel
         epnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745610527; x=1746215327;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hhhHYs4KoUp1Dmqe4WieRh0AOyBX59ZVEuUqlgb/Xa8=;
        b=rhOxmPoLVIhXRDZaJFA/P8pFpwIr6BFpmdd3I2GTepMZISCXFk1jDbNtZ58pLcu4Le
         PID3HMiBIloXT+CrzldynhuDYh6PMTxXFF5VjnvTNRWRB+nZhi9028YVgZ9JqW0XxNTT
         XZ9us5GJGRjVIhW6Asrv3a8miEM73+k4LadyK1BrrnA3xgzToe0Ks0iS30owk+1AaIqP
         KZ0nkB3MSYO9Z5FNhuTq5GbmEB+F7PltmUYGzIlrOJoD20rEwl6Dxpl50grtAJlCO5kU
         KILJ3G7ECix/fqCcSB8Cm0fXXMba7uP8AQ9HR2NmiPe5Yr/K/nu2wDdIDOV4bPqijanM
         draQ==
X-Forwarded-Encrypted: i=1; AJvYcCXHCs39bM+BdXKLfaC4ekgdSng1fO+nkMUuAor02eC+begCuxRUtNYln8K7c09AQeeiLlfeZKSSEox2@vger.kernel.org
X-Gm-Message-State: AOJu0YxgNs7q+Y04qF5RPZgEzNh9IOaCMpm9QECjgc8JDVvD3oEvstCX
	kgHf7kyFS6VreQcA0YDbY9D6gh7UorV4fmH5/nAQXEgIPqqbJ/6XFB57nBNR78s=
X-Gm-Gg: ASbGncujKqm4IRmtiGvN7T/7HunGZ6HAVgcdej6Z7P+J8/iZ0ZdORkohnIMDIXRgA9e
	DO6vKvVjc3Pm4IzpKWtweJJ76b+KVpQvoDZuqKThPlDS49eBzwoKifE2dL92prAE/iBxRHohhcw
	IMQL1sHC3OWXKRLVL4y8uhbPUax3jLJtjaNFU6efwEisNLuZqLTxyRyXTKr5oMOyA8VFC3KwcFX
	k4urHzfwuprCzytrSXxbSGFwY1cwo4I5fcrPUVaveB5ub2LLXHjmqOERhebsVwTQaVpPXx4+Jx6
	scobUqvIUP5cODL09B/3m9atHBcfCkuCRM4AerlN7vrAPAOCsyHH3UGiCb8=
X-Google-Smtp-Source: AGHT+IFLaTSeRSUUGpyQQF47LNee1uEGXqbvZf8eFCoZYl+D6T7aT4sNdv5ZKx6ouKFqA9TQ2uy0OA==
X-Received: by 2002:a05:600c:4e16:b0:439:9a5a:d3bb with SMTP id 5b1f17b1804b1-440a65bb214mr12389145e9.2.1745610526742;
        Fri, 25 Apr 2025 12:48:46 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4409d2a2e59sm65922335e9.16.2025.04.25.12.48.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 12:48:46 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 25 Apr 2025 21:48:29 +0200
Subject: [PATCH 6/6] arm64: dts: imx8qm: Add Ethernet aliases
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250425-dts-imx-aliases-ethernet-v1-6-15b9d5cca611@linaro.org>
References: <20250425-dts-imx-aliases-ethernet-v1-0-15b9d5cca611@linaro.org>
In-Reply-To: <20250425-dts-imx-aliases-ethernet-v1-0-15b9d5cca611@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>
Cc: Francesco Dolcini <francesco@dolcini.it>, devicetree@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux@ew.tq-group.com, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2479;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=+HtaD1MMcC10nD909Zao9y6H0hANNmhyPMSU9hKMrJ8=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoC+cT4fIlFtHdioeWVc2xOwVr9yZQOrIxjezPT
 BqQvIyvneCJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaAvnEwAKCRDBN2bmhouD
 10o+D/9wX+DtmPtvlcmDr/mCEaqmlp0wvwGsyDcSTM9w60nfSI5reGe0MqXrtxsvZrs8lKFxznN
 3PjNwe+ZxecVp/9kOaAe6EVlhj3Q3aFouo02F6cM/kLI6W2mVqMj38LgcYgZWbl6ZvP1LxCRXhL
 ezNXFaxF2/0Xhn04nJK22kvW3YgWWwJRyuobDQCd+ihOmaIf2NoOv5xWD58TnjCcsCjNlrbnaPH
 7xRfa4/5zH9LS3YMHTJ8ha9Q0Zh0nDZhoox4fFnFKIr2B2l02aBp2udtZAbaHG0hdjv5LhLp3p+
 ffbw/A5KcrbbJpA/VibMR4w4g9gJtTtRltZ4RJ/bOEGfFM+rzRc9uN+SLTodvJyyE2PJIjRUDB7
 Q3bj0You2XJ7zg/URj/sAbVZzEzAVm8A+4nvAY1E8w4Ib93yWrdWK6C8ns2JSFtu/tAt0D4rUyS
 4Q0Yn2eUr5XEru36ARlvLY5/bMIZIv3t5YBmK7zO/I6i82ILF8eJU1LTqUg0GXl+tddS+8iVn55
 2l74XGR2x7nM+kIr6Lie5OxOZu7h+ncENhB3hj/ZgSmMFSKEQiBTotGYgThX/0q3YrLwLAim3QK
 iHgqpgfu1my2QweV+ZXDV6RpemOo2CZi1XjMpkiDxi1xC8UjjnI/lMI8Mms7NK9J+1ewKm/AHxO
 56TGfJW6cEQJtHg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Add Ethernet aliases for predictable names and for firmware or
bootloader to fill up MAC address.

Suggested-by: Francesco Dolcini <francesco@dolcini.it>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/freescale/imx8-apalis-eval.dtsi       | 2 ++
 arch/arm64/boot/dts/freescale/imx8-apalis-ixora-v1.1.dtsi | 1 +
 arch/arm64/boot/dts/freescale/imx8-apalis-ixora-v1.2.dtsi | 1 +
 arch/arm64/boot/dts/freescale/imx8qm-mek.dts              | 5 +++++
 4 files changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8-apalis-eval.dtsi b/arch/arm64/boot/dts/freescale/imx8-apalis-eval.dtsi
index dc127298715b3cf73ad93d25aff7b7b56e4049ab..8f976124053e196a556cb9ddf8ff8768ca332099 100644
--- a/arch/arm64/boot/dts/freescale/imx8-apalis-eval.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-apalis-eval.dtsi
@@ -5,6 +5,8 @@
 
 / {
 	aliases {
+		ethernet0 = &fec1;
+		ethernet1 = &fec2;
 		rtc0 = &rtc_i2c;
 		rtc1 = &rtc;
 	};
diff --git a/arch/arm64/boot/dts/freescale/imx8-apalis-ixora-v1.1.dtsi b/arch/arm64/boot/dts/freescale/imx8-apalis-ixora-v1.1.dtsi
index d4a1ad528f650d16e9de22e2e21d2e2cc684163e..28e64cc63e644f249b16c37d4a555667bea2f5c2 100644
--- a/arch/arm64/boot/dts/freescale/imx8-apalis-ixora-v1.1.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-apalis-ixora-v1.1.dtsi
@@ -7,6 +7,7 @@
 
 / {
 	aliases {
+		ethernet0 = &fec1;
 		rtc0 = &rtc_i2c;
 		rtc1 = &rtc;
 	};
diff --git a/arch/arm64/boot/dts/freescale/imx8-apalis-ixora-v1.2.dtsi b/arch/arm64/boot/dts/freescale/imx8-apalis-ixora-v1.2.dtsi
index 5e132c83e1b26b19840aac12d2c1014811c75c78..1f10f31e1e4d40d489e41cc8e65e8673330af07e 100644
--- a/arch/arm64/boot/dts/freescale/imx8-apalis-ixora-v1.2.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-apalis-ixora-v1.2.dtsi
@@ -7,6 +7,7 @@
 
 / {
 	aliases {
+		ethernet0 = &fec1;
 		rtc0 = &rtc_i2c;
 		rtc1 = &rtc;
 	};
diff --git a/arch/arm64/boot/dts/freescale/imx8qm-mek.dts b/arch/arm64/boot/dts/freescale/imx8qm-mek.dts
index 353f825a8ac5db1ac70d1560318c134d188ae7ef..f0bc77cf07b7da73cbb7b438a045fd56ca921d9b 100644
--- a/arch/arm64/boot/dts/freescale/imx8qm-mek.dts
+++ b/arch/arm64/boot/dts/freescale/imx8qm-mek.dts
@@ -13,6 +13,11 @@ / {
 	model = "Freescale i.MX8QM MEK";
 	compatible = "fsl,imx8qm-mek", "fsl,imx8qm";
 
+	aliases {
+		ethernet0 = &fec1;
+		ethernet1 = &fec2;
+	};
+
 	chosen {
 		stdout-path = &lpuart0;
 	};

-- 
2.45.2


