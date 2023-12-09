Return-Path: <devicetree+bounces-23415-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id AF96780B3BA
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 11:44:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A8AB3B20AF0
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 10:44:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F1B9134B5;
	Sat,  9 Dec 2023 10:44:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HzTpzIGR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1904BC
	for <devicetree@vger.kernel.org>; Sat,  9 Dec 2023 02:44:17 -0800 (PST)
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-54cfb03f1a8so3837053a12.2
        for <devicetree@vger.kernel.org>; Sat, 09 Dec 2023 02:44:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702118656; x=1702723456; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jtN/02LS5E97y/eNJTai0WYBoLVbIzeuypbCd6U1aWQ=;
        b=HzTpzIGReSk+wd1TqYSbH8f5bY7LQiWH1NTNZVXdjMHGIyTTdVH3cmWWHiu2xT58qW
         ND9+KsxIM0eUjdp62eIxNNxsck7MJNFn/QQO7+Fw8fO6EVY7IBU+MMdJmPzmvU0hjyW+
         U0TKYj8gs28ovSepXjVrNC3QyadYjDUnOnSUSCcJBAjUP7/dm53wVaGYzPuqaciXumHD
         UUM/G1nnx0QHsc8l1cKJ+uJmgLYhcyocTKqg2wxsP6Tj3fXpLfHJKeaFYu85n171ie2k
         4M6UTmTUprHfoFj46QnN/i8dGvYQYJVvvmDBUF6yO8I8P6CrBeaDuJKT6oF39sgaYHpB
         aegA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702118656; x=1702723456;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jtN/02LS5E97y/eNJTai0WYBoLVbIzeuypbCd6U1aWQ=;
        b=kne87eGC58ikrz4SE1HyF2689wlJOJs+akrV560xV8FspHNZyNlH47tSGzbsZrkQSU
         CylYrB6tvJhc4gKQulCliFew+6KNsW6m9LWZVTvJj/3ut9/JBgq3TgsG2hf8/qdFMwP8
         bRSASbYH9tbswRFbCj7SvLA1dsyaYHn/R0B4d1O4YSu3wsb6ZZ8jejUmWMyCNDeacDLM
         uad/X71cTERERc1oJ0wynnZnmsnIHzNNfPSos8HYf4+4lx3sbQ4HDxZHx6lTbiezCWDN
         BDDSs1OSsEYPhqe7jixrbZ+y9JY5wK28MGmTizfIL93+M4OFriA6l6BHOGO9Z1Oa7hA1
         aHFw==
X-Gm-Message-State: AOJu0Yzzk3Yjdsqg2Q0cgBTuhXp6H0+65W98a8HgeYJqcXaHaLvmcYK6
	z9k9sdw3qoZgNXcu5Ho5rp/FCw==
X-Google-Smtp-Source: AGHT+IG0NrZS0c4C0ix0b3pjL98TjBc1sefC79SI5ddIN36Yx4a1EYmrZ64aGRIjRluE67nicf7OAw==
X-Received: by 2002:a50:aa8f:0:b0:54c:4837:7587 with SMTP id q15-20020a50aa8f000000b0054c48377587mr948749edc.51.1702118656099;
        Sat, 09 Dec 2023 02:44:16 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id eh12-20020a0564020f8c00b00550e21a4f76sm349604edb.8.2023.12.09.02.44.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Dec 2023 02:44:15 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/4] ARM: dts: aspeed: greatlakes: correct Mellanox multi-host property
Date: Sat,  9 Dec 2023 11:44:09 +0100
Message-Id: <20231209104412.12916-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

"mlx,multi-host" is using incorrect vendor prefix and is not documented.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-greatlakes.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-greatlakes.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-greatlakes.dts
index 7a53f54833a0..9a6757dd203f 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-greatlakes.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-greatlakes.dts
@@ -66,7 +66,7 @@ &mac3 {
 	pinctrl-0 = <&pinctrl_rmii4_default>;
 	no-hw-checksum;
 	use-ncsi;
-	mlx,multi-host;
+	mellanox,multi-host;
 	ncsi-ctrl,start-redo-probe;
 	ncsi-ctrl,no-channel-monitor;
 	ncsi-package = <1>;
-- 
2.34.1


