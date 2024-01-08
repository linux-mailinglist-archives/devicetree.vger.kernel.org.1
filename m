Return-Path: <devicetree+bounces-30219-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 41CD8826F5F
	for <lists+devicetree@lfdr.de>; Mon,  8 Jan 2024 14:12:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D4603283C9C
	for <lists+devicetree@lfdr.de>; Mon,  8 Jan 2024 13:12:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E06841232;
	Mon,  8 Jan 2024 13:12:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eCJTWy3l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FFEE4174B
	for <devicetree@vger.kernel.org>; Mon,  8 Jan 2024 13:12:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-557bfc7f7b4so957635a12.0
        for <devicetree@vger.kernel.org>; Mon, 08 Jan 2024 05:12:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704719547; x=1705324347; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9fWlLW9JR4Djl8Tla7EpamvMDTw59uaIUP0UDK+OfAY=;
        b=eCJTWy3l4T+VpDQh9nIzNZVhKYvbebBIPa+KyADduj6COwMgEHici/YPWjCXuy0I+v
         ox5K8vd7yuIOctrtJZEMFTTQZNb3Fyh8LHBQZhmI3VE7z5JnBmrxfVhoFRcywgC0MVwF
         nVa/Q8fOXT/YD/z/JK52eV2ewYkWQ5LeE83032Kkqy80v6YyND15U4jc8X7+bhScSN+V
         KoB7gGXFVP7mB7DxJ5OY4XvNHA+1fAKeAxmvZsMEwhnOMkZSmbhNpykqXMRE8RblMQTU
         2EIhtNgFxsaojkLQ/bZVQM6vrIHIumZUgmw+22vAh0qDQESI291vf4YxjXCY3K5Nva+K
         J7/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704719547; x=1705324347;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9fWlLW9JR4Djl8Tla7EpamvMDTw59uaIUP0UDK+OfAY=;
        b=aJKbhL0ZmxMXYjp39UlHS5VDEDUE3OgZpacuiCHrQ8WgJalT1KE8b7wNP0/dsUuOJz
         lUR1v4Bu7m1OXH3MBmU+3eMNjhT5FDNH4nQXVD1yEmdflBS0HtLPqW7jcWYXF/tLJcj6
         9p+bXwE1lZ9zRkj5xCNeD/ZyLaCoaVM+XCLXlB3PLsLMA2leQcSgzPNsbtFFaD2BbsvH
         rIVGZXyg03s/IfHgk0CyP7aMdOVXmoMicIC7rysWaym8OhoGBqdetTbxx+Qx9OYMHkra
         /Tw8QUEe9TfjJegqAmLOBoo95WLm6xWfgOI80yiwXBEQYlbMMEBUOoIbq1v9xZhnHAMe
         RRKA==
X-Gm-Message-State: AOJu0YxNWk6DZKduonNvNaUTrtfrY+jFv+IrSlpQF8Lofxewmp/INkxU
	QM8gqUNtNv5Ei5fSFePHcAYtIh5ljYyCKA==
X-Google-Smtp-Source: AGHT+IEO/RFXpKTomKipURk/1vkP7mY8xin/LTgL5fkloaqYgYphxRS0NtNQOvlUKDet2Aa0KRD+cA==
X-Received: by 2002:a17:906:28cf:b0:a26:db5e:1f2f with SMTP id p15-20020a17090628cf00b00a26db5e1f2fmr5323983ejd.35.1704719546806;
        Mon, 08 Jan 2024 05:12:26 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.112])
        by smtp.gmail.com with ESMTPSA id w23-20020a1709062f9700b009fc576e26e6sm3902828eji.80.2024.01.08.05.12.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jan 2024 05:12:26 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Bhupesh Sharma <bhupesh.sharma@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] arm64: dts: qcom: sdm845-db845c: correct PCIe wake-gpios
Date: Mon,  8 Jan 2024 14:12:15 +0100
Message-Id: <20240108131216.53867-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Bindings allow a "wake", not "enable", GPIO.  Schematics also use WAKE
name for the pin:

  sdm845-db845c.dtb: pcie@1c00000: Unevaluated properties are not allowed ('enable-gpio' was unexpected)

Fixes: 4a657c264b78 ("arm64: dts: qcom: db845c: Enable PCIe controllers")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845-db845c.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
index ab6220456513..1f517328199b 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
@@ -580,7 +580,7 @@ &mss_pil {
 &pcie0 {
 	status = "okay";
 	perst-gpios = <&tlmm 35 GPIO_ACTIVE_LOW>;
-	enable-gpio = <&tlmm 134 GPIO_ACTIVE_HIGH>;
+	wake-gpios = <&tlmm 134 GPIO_ACTIVE_HIGH>;
 
 	vddpe-3v3-supply = <&pcie0_3p3v_dual>;
 
-- 
2.34.1


