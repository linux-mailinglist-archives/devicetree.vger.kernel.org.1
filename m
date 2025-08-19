Return-Path: <devicetree+bounces-206449-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 70AE6B2C541
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 15:22:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8C49D2420E5
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 13:17:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE1A425E814;
	Tue, 19 Aug 2025 13:16:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Czx+qDBG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B86233EB09
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 13:16:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755609407; cv=none; b=AITKiWIWT/ozGSwOQT3DHmRdDl49ofOOWxGTLyE9D2CAnQsF6vpzfbsKl39PPXyJi3/7sjblfbZ5DZAWk9WECSX7w37t0f4iQycdgDbExcZ9q6I4bZrWnmqnhrVO/RXmZL3dRjdHquPGLjJgdWsIq36HmLze0l83kyJky9rwiI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755609407; c=relaxed/simple;
	bh=GuIpDTrIKMYk3WhNZGOiGrIbDEbFiSVL0yY6nh1sxyo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Q+id27SxoQ1rlkMIZZwVQVUHRWGSrKUWCZfDn3pdjDocXMqoydaoTxEn8kN4HoSxc83Wn/LjLERC0AQBGiEtE7y1W9L7AURzAhGyFCYlJ27ia5F0NjORce+AGyKnGA8fpnSLrKyRK+d9lLWFdkYJJQ0YV6O0SPCdO2w0NN4eqY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Czx+qDBG; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-afcb78d1695so69637966b.1
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 06:16:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755609404; x=1756214204; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eNcHUwUSUoXG/NU5XWsU2yLUiTQdEs7s2EmvbkhBOOs=;
        b=Czx+qDBGMPvMpENM09UvM9TjNF5h+m1IxyPOZpTF0lQzYQGmAPMnlqMF2LjF/KbT6x
         gcOT3qOTFK36WCkxkBl1t6/1NI9tvZIl6yUivkdDMZL2mz4qhgwwK7+8pEMfwYxNadge
         S5NhRliBUmLiMPXBojaiQBVYwtbfZlAKycDpbvTmOrJ2kqe1gNulHq2Esjv2h2+GWrpT
         +lp+RGTPakY86fYniHuT3hb/f/kZJeUv9eCM3yTQ+0UPxLHOL7qP4In6Kj6tI/f+OpBq
         q+PGHZfO/MT69g3vMtZ6/RupwxLSr/h9aZZuuwju3kpIWM8UqmSkLtnW1jNPZqdKZVic
         mgUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755609404; x=1756214204;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eNcHUwUSUoXG/NU5XWsU2yLUiTQdEs7s2EmvbkhBOOs=;
        b=Ao2xh531oMX+nuuhcrfA7Rr2HG+by+U6b/It+CFmSip5c5yM8SiEXYEoQNnIV+RCik
         IICxDhD9kwLxQrkrVS17Fk4pOz24L+65brSSJlGHm5eKrUW5JY0Rj/O1eDfi8pTG4QwU
         kEgOErwKh/VihddM32B3TJ8Flf3hsXQuHY2pMd/DzSPRWQ+imi9TOdxaPVuCgyq4RSO8
         8wdiIlZBz5SBisjeHTbH7O+81ZGqEi4tCY6YFPk5FUqwvoStffenaKYZ39yvkyd3gO1h
         XLJqQKUW+a7uWOv45cKT28zQ80KKd0qsD+QowzC5b/tF4hFjem/gdikAGDk9dltcLht3
         UmSQ==
X-Forwarded-Encrypted: i=1; AJvYcCVh46r+ntGF9ibeHBxtJW1agCKgM/XwTzvHqIvpi90xfEGuVUssV0yPkBIaApnxvwO/25OqMGXeLL7Q@vger.kernel.org
X-Gm-Message-State: AOJu0YyC30r6sSfNgBKnQmO66i0eE/xTkaaPyS92ozF5teehOCOYKx3d
	AjwIffZE95YQSKv8JgF81CGSK2U1hfAJc2Xkz03J5ujtpPo+H2NWnx3kOnMXgmjnzd4=
X-Gm-Gg: ASbGncsjDK3G2eVTWTNpnMZSZB+nOSbh6DjjQn4vnX+/rym7MsOnW6GV7WlTbsu/5rE
	+QlFKCh4FE3hCNCxCQY+ulFGNPpEnuiRjzGf138qzJvZb+IjeJkfsYPTQ8HFkugggRVmV+/PdUL
	q1XKRqzpUm9tp493Q6WZc/SKl8WNS8pvNndCWc2fY7bFhlrjI70IdSrgYxrtl63ir71qM1pTgVK
	YkAcg3QI75/DbnHYh5OWoQj+abtZSXCXKYTSFbtGb6fLwJT/nZEW77BlhIAbRLB6j+/D+HLZ04+
	5NWm6mvb4RUQ+c4xnlnIxgF0wtqSo/rWf0c/I+jEZL7PZF4CtVAI84DEr/ZzHsY7JHiD5RfugMD
	XpKMCUJkLCL5GzuoLVeY5vptyPAWmR6XJEg==
X-Google-Smtp-Source: AGHT+IHr5vEYmlpLTI1y4MLxEE80BWKAd2JViKb4VuSRUFyaMN9Jgc15AWVrSJjvQAIQU/3UzhdxPw==
X-Received: by 2002:a05:6402:42c6:b0:615:7ba6:4876 with SMTP id 4fb4d7f45d1cf-61a7e7840ccmr1220925a12.8.1755609404319;
        Tue, 19 Aug 2025 06:16:44 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61a75774623sm1703971a12.32.2025.08.19.06.16.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 06:16:43 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: exynos8895: Minor whitespace cleanup
Date: Tue, 19 Aug 2025 15:16:42 +0200
Message-ID: <20250819131641.86520-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=836; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=GuIpDTrIKMYk3WhNZGOiGrIbDEbFiSVL0yY6nh1sxyo=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBopHk5GI3dFwiPjFb3vzq4sGFQJINn7QVqknaof
 HKsp/nfVamJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKR5OQAKCRDBN2bmhouD
 1yh9EACVAlFJ4VV2G2Szbi+YZvBSwEYs61YuY/gO1MbCCw5YImO/uPqlyWu5egLzhRHgR0fMqK3
 BKHYIqmiOQUVJzEl8BqP4otG8zdAklN6VJie3yszDwqjl4QqpgkUsjC2j9ylY16v4AWpQJ91DdS
 2Z0ikvnkKE5VMzqY+E/FhcgEyGZhSpjBEUxXPUHDCX4H5lKXuqLgDmxjBYw9wuTaY8tup8fxam8
 oIHIUbwYWWh+FRPbSzt7xfjxAO0dVyBcJtWa2r26PxUd6k77AnPVr4QUyI5gv8fohLgSfbojkP4
 gpGcHS+dQx28fTpy5MD+/Br8cNUosTBljYooPZielv3n48xoSgJudgA15MhN/Wwndu3AEzQMhAC
 qif8Uj2OOMOq3ZF/4I3TTw0KpMXhqPqueQk2Mc8HM6CzI6QlvkIW2I30/qOZNtXC7aF/SbOupE5
 Bg+gG7nt0TpqzdCHzvoSe/OOCpspHNsjy25lTwzG2+SJf/p/bq+XgrGBPzOmUhUVU8KSaOMTiC2
 cGCAot35vTYkWjMU12ouZMA98jPoiI+yYeKKmKPmCt0n2jme5+zu8qIHZgTizRz9J3h5nPXj2IN
 RzNTTVS87Twn0Tqycbha3ynfoQ74XdCAG21f7vZcnwRJnrcPhYL/sQiNOwG4x4O8pFkj9DQ4EZe 39VgAC5NVW3cjPg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

The DTS code coding style expects exactly one space around '='
character.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/exynos/exynos8895-pinctrl.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/exynos/exynos8895-pinctrl.dtsi b/arch/arm64/boot/dts/exynos/exynos8895-pinctrl.dtsi
index 51e9c9c4b166..16903ce63a32 100644
--- a/arch/arm64/boot/dts/exynos/exynos8895-pinctrl.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos8895-pinctrl.dtsi
@@ -202,7 +202,7 @@ bt_btwake: bt-btwake-pins {
 	};
 
 	bt_en: bt-en-pins {
-		samsung,pins ="gpj1-7";
+		samsung,pins = "gpj1-7";
 		samsung,pin-function = <EXYNOS_PIN_FUNC_OUTPUT>;
 		samsung,pin-pud = <EXYNOS_PIN_PULL_NONE>;
 		samsung,pin-con-pdn = <EXYNOS_PIN_PDN_PREV>;
-- 
2.48.1


